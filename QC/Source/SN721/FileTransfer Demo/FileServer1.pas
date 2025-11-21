unit FileServer1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, SvcMgr, Dialogs,
  IdBaseComponent, IdComponent, IdTCPServer, IdCustomHTTPServer,
  IdHTTPServer, IniFiles, IdMessageCoderMIME, IdMessageCoder, Jpeg, Forms;

const
  B64Table = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/';  
type
  TFileHttpServer = class(TService)
    server: TIdHTTPServer;
    procedure ServiceStart(Sender: TService; var Started: Boolean);
    procedure serverCommandGet(AThread: TIdPeerThread;
      ARequestInfo: TIdHTTPRequestInfo;
      AResponseInfo: TIdHTTPResponseInfo);
    procedure ServiceStop(Sender: TService; var Stopped: Boolean);
    procedure ServiceShutdown(Sender: TService);
    procedure ServiceExecute(Sender: TService);
  private
    { Private declarations }
    function Base64Decode(const S: string): string;
    function Base64Encode(const S: string): string;
  public
    function GetServiceController: TServiceController; override;
    { Public declarations }
  end;

var
  FileHttpServer: TFileHttpServer;

implementation

{$R *.DFM}

var
  port, root: string;

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  FileHttpServer.Controller(CtrlCode);
end;

function TFileHttpServer.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TFileHttpServer.ServiceStart(Sender: TService;
  var Started: Boolean);
var
  ini: TIniFile;
  sfn: string;
  hWnd: Integer;
begin
  sfn := ExtractFilePath(application.ExeName);
  if not FileExists(sfn + 'fileserver.ini') then
    begin
      hWnd := FileCreate(sfn + 'fileserver.ini');
      FileClose(hWnd);
      //---ºg§JINI¿…
      try
        ini := TIniFile.Create(sfn + 'fileserver.ini');
        ini.WriteString('server', 'root', 'F:\tmp');
        ini.WriteString('server', 'port', '9978');
      finally
        ini.Free;
      end;
    end;

  try
    ini := TIniFile.Create(sfn + 'fileserver.ini');
    root := ini.ReadString('server', 'root', 'F:\tmp');
    port := ini.ReadString('server', 'port', '9978');
  finally
    ini.Free;
  end;

  server.Bindings.Add.Port := StrToInt(port);
  server.Active := true;
  Started := true;
end;

procedure TFileHttpServer.serverCommandGet(AThread: TIdPeerThread;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  fls, fs, fdir: TStringList;
  sr: TSearchRec;
  path, stmp, stmp2, s1, ddd: string;
  ms, fms: TMemoryStream;
  ff: TFileStream;
  i, err, hWnd, slen, t: integer;
  buf: PChar;
  decoder: TIdMessageDecoderMIME;
  lEndOfMessage: boolean;
begin
  fls := TStringList.Create;
  fls.CommaText := 'list,get,put,delete'; // only 4 functions

  if ARequestInfo.Params.Values['fp'] <> '' then
    begin
      s1 := ARequestInfo.Params.Values['fp'];
      if POS('\', s1) = 1 then
        s1 := Copy(s1, 2, Length(s1));
      if POS('\', s1) = Length(s1) then
        s1 := Copy(s1, 1, Length(s1) - 1);

      path := ExtractFilePath(Format('%s\%s\', [root, s1]));
    end
  else
    path := root;

  if not DirectoryExists(path) then
    begin
      stmp := ARequestInfo.Params.Values['fp'];
      fdir := TStringList.Create;
      fdir.Delimiter := '/';
      fdir.DelimitedText := stmp;
      for i := 0 to fdir.Count - 1 do
        begin
          stmp2 := stmp2 + fdir[i] + '\';
          ddd := ddd + stmp2 + '_';
          if not DirectoryExists(root + stmp2) then
            CreateDir(root + stmp2);
        end;
      path := root + stmp2;
      fdir.Clear;
      fdir.Free;
      stmp := '';
      stmp2 := '';
      i := 0;
    end;

  case fls.IndexOf(ARequestInfo.Params.Values['f']) of
    0: //----------------------------List
      try
        fs := TStringList.Create;
        if FindFirst(path + '*.*', faArchive, sr) = 0 then
          begin
            repeat
              fs.Add(sr.Name);
            until FindNext(sr) <> 0;
            FindClose(sr);
          end;
        if fs.Count > 0 then
          AResponseInfo.ContentText := fs.CommaText
        else
          AResponseInfo.ContentText := '' ;
        fs.Free;
      except
        AResponseInfo.ContentText := 'error : ' + ddd;
      end;
    1: //--------------------------Get
      begin
        try
          path := path + Base64Decode(ARequestInfo.Params.Values['fn']);
          if FileExists(path) then
            begin
              AResponseInfo.ContentType := server.MIMETable.GetFileMIMEType(path);
              server.ServeFile(AThread, AResponseInfo, path);
            end;
        finally
        end;
      end;
    2: //-------------------------Put
      begin
        if ARequestInfo.Command = 'POST' then //---only for POST
          begin
            err := 0;
            try
              stmp2 := path;
              path := path + Base64Decode(ARequestInfo.Params.Values['fn']);
              hWnd := FileCreate(path);
              FileClose(hWnd);
              err := 1;
              ms := TMemoryStream.Create;
              fms := TMemoryStream.Create;
              err := 2;
              stmp := ARequestInfo.FormParams;
              s1 := copy(stmp, pos('stream', stmp) + 10, Length(stmp));
              s1 := copy(s1, 1, pos('----------', s1) - 2);
              slen := Length(s1);
              err := 3;
              fms.Position := 0;
              for t := 1 to slen do
                begin
                  fms.Write(s1[t], 1);
                  err := 4;
                end;
              err := 5;
              fms.Position := 0;
              err := 6;
              ms.CopyFrom(fms, fms.Size);
              err := 7;
              ms.SaveToFile(path);
              err := 8;
              //---
              fs := TStringList.Create;
              if FindFirst(stmp2 + '*.*', faArchive, sr) = 0 then
                begin
                  err := 9;
                  repeat
                    fs.Add(sr.Name);
                    err := 10;
                  until FindNext(sr) <> 0;
                  err := 11;
                  FindClose(sr);
                  err := 0;
                end;
            except
              // i := -1;
            end;
            //---
            if err = 0 then
              begin
                if ARequestInfo.Params.Values['op'] = 'y' then
                  AResponseInfo.ContentText := fs.CommaText
                else
                  AResponseInfo.ContentText := 'success';
              end
            else
              AResponseInfo.ContentText := 'error : ' + IntToStr(err);
            //---
            fs.Free;
            ms.Free;
            fms.Free;
          end
        else
          AResponseInfo.ContentText := 'error : Must be POST.';
      end;
    3: //------------------------Delete
      begin
        try
          stmp2 := path;
          path := path + Base64Decode(ARequestInfo.Params.Values['fn']);
          if FileExists(path) then
            begin
              DeleteFile(path);
              if ARequestInfo.Params.Values['op'] = 'y' then
                begin
                  fs := TStringList.Create;
                  if FindFirst(stmp2 + '*.*', faArchive, sr) = 0 then
                    begin
                      repeat
                        fs.Add(sr.Name);
                      until FindNext(sr) <> 0;
                      FindClose(sr);
                    end;
                  AResponseInfo.ContentText := fs.CommaText;
                end
              else
                AResponseInfo.ContentText := 'success';
            end;
        except
          AResponseInfo.ContentText := 'delete error';
        end;
      end;
    else
      AResponseInfo.ContentText := 'No Command ';
  end;
  fls.Free;
end;

procedure TFileHttpServer.ServiceStop(Sender: TService;
  var Stopped: Boolean);
begin
  server.Active := false;
  Stopped := true;
end;

procedure TFileHttpServer.ServiceShutdown(Sender: TService);
begin
  server.Active := false;
end;

procedure TFileHttpServer.ServiceExecute(Sender: TService);
begin
  while not Terminated do
    begin
      Sleep(10);
      ServiceThread.ProcessRequests(false);
    end;
end;

function TFileHttpServer.Base64Encode(const S: string): string;
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

function TFileHttpServer.Base64Decode(const S: string): string;
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

