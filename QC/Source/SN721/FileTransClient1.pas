unit FileTransClient1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Forms, Dialogs,
  IniFiles, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, StdCtrls, IdMultipartFormData,DBTables;

const
  B64Table = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';
type
  TFileTransClient = class
  private
    function Base64Decode(const S: string): string;
    function Base64Encode(const S: string): string;
  public
    iniPath: string;
    serverhost, serverport: string;
  published
    constructor Create(inipath:string='C:\');
    function List(fp: string = ''): string;
    function down(fn: string; fp: string = ''; downfp: string = ''): TMemoryStream;
    function put(fn: string; savefn:string; fp: string = ''; refresh: boolean = False): string;
    function delete(fn: string; fp: string = ''; refresh: boolean = False): string;
  end;

implementation

uses DM3,FunUnit;

constructor TFileTransClient.Create(inipath:string='C:\');
var BDElist:TStringList;
    BDE_SERVER:string;
begin
  BDEList := TStringList.Create ;
  try
    Session.GetAliasParams(DM2.DBshipping.AliasName, BDEList);
    BDE_SERVER  := BDEList.Values['SERVER NAME'];
  finally
    BDEList.Free;
  end;
  serverhost:=BDE_SERVER;//'192.168.23.9';
  serverport:='9978';
end;

function TFileTransClient.List(fp: string = ''): string;
var
  ss: TStringStream;
  http: TIdHttp;
  str: string;
  i: integer;
begin
  ss := TStringStream.Create('');
  http := TIdHttp.Create(nil);

  try
    if fp <> '' then
      http.Get(Format('Http://%s:%s/?f=list&fp=%s', [serverhost, serverport, fp]), ss)
    else
      http.Get(Format('Http://%s:%s/?f=list', [serverhost, serverport]), ss);
    str := ss.DataString;
  except
    str := 'list error';
  end;
  Result := str;
  ss.Free;
  http.Free;
end;

function TFileTransClient.down(fn: string; fp: string = ''; downfp: string = ''): TMemoryStream;
var
  http: TIdHttp;
  ms, rms: TMemoryStream;
  str: string;
  hWnd: integer;
begin

  if fp <> '' then
    str := Format('&fp=%s', [fp]);

  if downfp <> '' then
    begin
      http := TIdHttp.Create(nil);
      ms := TMemoryStream.Create;
      rms := TMemoryStream.Create;

      try
        hWnd := FileCreate(downfp);
        FileClose(hWnd);

        http.Get(Format('Http://%s:%s/?f=get%s&fn=%s', [serverhost, serverport, str, Base64Encode(fn)]), ms);
        funcObj.WriteErrorLog(Format('Http://%s:%s/?f=get%s&fn=%s', [serverhost, serverport, str, Base64Encode(fn)]));
        ms.Position := 0;
        rms.CopyFrom(ms, ms.Size);

        ms.SaveToFile(downfp);

        rms.Position := 0;
        Result := rms;
      except
        Result := nil;
      end;

      ms.Free;
      http.Free;
    end;
end;

function TFileTransClient.put(fn: string; savefn:string ; fp: string = ''; refresh: boolean = False): string;
var
  http: TIdHttp;
  ds: TIdMultipartFormDataStream;
  ms: TMemoryStream;
  ss: TStringStream;
  ls: TStringList;
  op: TOpenDialog;
  str: string;
begin
  op := TOpenDialog.Create(nil);
  op.Filter := 'All file|*.*';

  if fn = '' then
    begin
      if op.Execute then
        str := op.FileName;
    end
  else
    str := fn;

  try
    http := TIdHttp.Create(nil);

    fn := ExtractFileName(savefn);
    ds := TIdMultiPartFormDataStream.Create;
    ms := TMemoryStream.Create;
    ms.LoadFromFile(str);
    ss := TStringStream.Create('');
    str := '';

    ms.Position := 0;
    http.Request.Referer := Format('Http://%s:%s/?f=put&fn=%s', [serverhost, serverport, Base64Encode(fn)]);
    http.Request.ContentType := 'application/octet-stream';

    ds.AddObject('upload_file', 'application/octet-stream', ms, fn);
    ds.Position := 0;
    //http.Connect(7000);

    if fp <> '' then
      str := Format('&fp=%s', [fp]);

    if refresh then
      http.Post(Format('Http://%s:%s/?f=put%s&op=y&fn=%s', [serverhost, serverport, str, Base64Encode(fn)]), ds, ss)
    else
      http.Post(Format('Http://%s:%s/?f=put%s&fn=%s', [serverhost, serverport, str, Base64Encode(fn)]), ds, ss);

    Result := ss.DataString;

    ss.Free;
    ds.Free;
    ms.Free;
    http.Free;
  except
    Result := 'put error';
  end;

end;

function TFileTransClient.delete(fn: string; fp: string = ''; refresh: boolean = False): string;
var
  http: TIdHttp;
  ss: TStringStream;
  str: string;
begin
  if fn <> '' then
    begin
      ss := TStringStream.Create('');
      http := TIdHttp.Create(nil);
      str := '';

      if fp <> '' then
        str := Format('&fp=%s', [fp]);

      if refresh then
        http.Get(Format('Http://%s:%s/?f=delete%s&op=y&fn=%s', [serverhost, serverport, str, Base64Encode(fn)]), ss)
      else
        http.Get(Format('Http://%s:%s/?f=delete%s&fn=%s', [serverhost, serverport, str, Base64Encode(fn)]), ss);

      Result := ss.DataString;
      ss.Free;
      http.Free;
    end
  else
    Result := 'error : No file';
end;

function TFileTransClient.Base64Encode(const S: string): string;
var
  InBuf : array[0..2] of Byte;
  OutBuf: array[0..3] of Char;
  iI, iJ: Integer;
begin
  SetLength(Result, ((Length(S) + 2) div 3) * 4);
  for iI := 1 to ((Length(S) + 2) div 3) do begin
    if Length(S) < (iI * 3) then
      Move(S[(iI - 1) * 3 + 1], InBuf, Length(S) - (iI - 1) * 3)
    else
      Move(S[(iI - 1) * 3 + 1], InBuf, 3);
    OutBuf[0] := B64Table[((InBuf[0] and $FC) shr 2) + 1];
    OutBuf[1] := B64Table[(((InBuf[0] and $3) shl 4) or ((InBuf[1] and $F0) shr 4)) + 1];
    OutBuf[2] := B64Table[(((InBuf[1] and $F) shl 2) or ((InBuf[2] and $C0) shr 6)) + 1];
    OutBuf[3] := B64Table[(InBuf[2] and $3F) + 1];
    Move(OutBuf, Result[(iI - 1) * 4 + 1], 4);
  end;
  if Length(S) mod 3 = 1 then begin
    Result[Length(Result) - 1] := '=';
    Result[Length(Result)] := '=';
  end else if Length(S) mod 3 = 2 then
    Result[Length(Result)] := '=';
end;

function TFileTransClient.Base64Decode(const S: string): string;
var
  OutBuf: array[0..2] of Byte;
  InBuf : array[0..3] of Byte;
  iI, iJ: Integer;
begin
  if Length(S) mod 4 <> 0 then
    raise Exception.Create('Base64: Incorrect string format');
  SetLength(Result, ((Length(S) div 4) - 1) * 3);
  for iI := 1 to (Length(S) div 4) - 1 do begin
   Move(S[(iI - 1) * 4 + 1], InBuf, 4);
    for iJ := 0 to 3 do
      case InBuf[iJ] of
        43: InBuf[iJ] := 62;
        48..57: Inc(InBuf[iJ], 4);
        65..90: Dec(InBuf[iJ], 65);
        97..122: Dec(InBuf[iJ], 71);
      else
        InBuf[iJ] := 63;
      end;
    OutBuf[0] := (InBuf[0] shl 2) or ((InBuf[1] shr 4) and $3);
    OutBuf[1] := (InBuf[1] shl 4) or ((InBuf[2] shr 2) and $F);
    OutBuf[2] := (InBuf[2] shl 6) or (InBuf[3] and $3F);
    Move(OutBuf, Result[(iI - 1) * 3 + 1], 3);
  end;
  if Length(S) <> 0 then begin
    Move(S[Length(S) - 3], InBuf, 4);
    if InBuf[2] = 61 then begin
      for iJ := 0 to 1 do
        case InBuf[iJ] of
          43: InBuf[iJ] := 62;
          48..57: Inc(InBuf[iJ], 4);
          65..90: Dec(InBuf[iJ], 65);
          97..122: Dec(InBuf[iJ], 71);
        else
          InBuf[iJ] := 63;
        end;
      OutBuf[0] := (InBuf[0] shl 2) or ((InBuf[1] shr 4) and $3);
      Result := Result + Char(OutBuf[0]);
    end else if InBuf[3] = 61 then begin
      for iJ := 0 to 2 do
        case InBuf[iJ] of
          43: InBuf[iJ] := 62;
          48..57: Inc(InBuf[iJ], 4);
          65..90: Dec(InBuf[iJ], 65);
          97..122: Dec(InBuf[iJ], 71);
        else
          InBuf[iJ] := 63;
        end;
      OutBuf[0] := (InBuf[0] shl 2) or ((InBuf[1] shr 4) and $3);
      OutBuf[1] := (InBuf[1] shl 4) or ((InBuf[2] shr 2) and $F);
      Result := Result + Char(OutBuf[0]) + Char(OutBuf[1]);
    end else begin
      for iJ := 0 to 3 do
        case InBuf[iJ] of
          43: InBuf[iJ] := 62;
          48..57: Inc(InBuf[iJ], 4);
          65..90: Dec(InBuf[iJ], 65);
          97..122: Dec(InBuf[iJ], 71);
        else
          InBuf[iJ] := 63;
        end;
      OutBuf[0] := (InBuf[0] shl 2) or ((InBuf[1] shr 4) and $3);
      OutBuf[1] := (InBuf[1] shl 4) or ((InBuf[2] shr 2) and $F);
      OutBuf[2] := (InBuf[2] shl 6) or (InBuf[3] and $3F);
      Result := Result + Char(OutBuf[0]) + Char(OutBuf[1]) + Char(OutBuf[2]);
    end;
  end;
end;

end.

