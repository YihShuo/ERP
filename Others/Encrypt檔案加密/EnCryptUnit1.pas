unit EnCryptUnit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, Vcl.ExtCtrls, Vcl.Buttons;

type
  TEnDecrpt = class(TForm)
    OpenDialog1: TOpenDialog;
    Memo1: TMemo;
    Panel1: TPanel;
    DecryptBtn: TBitBtn;
    EncryptBtn: TBitBtn;
    DecryptFBtn: TBitBtn;
    EncryptFBtn: TBitBtn;
    OpenDialog2: TOpenDialog;
    procedure FormCreate(Sender: TObject);
    procedure EncryptBtnClick(Sender: TObject);
    procedure DecryptBtnClick(Sender: TObject);
    procedure EncryptFBtnClick(Sender: TObject);
    procedure DecryptFBtnClick(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure Encryption_Folder(PathDir:string);
    procedure Decryption_Folder(PathDir:string);
    Function Encryption_FileName(SourceFile:string;DestFile:String):Boolean;
    Function Decryption_FileName(SourceFile:string;DestFile:String):Boolean;
  public
    { Public declarations }
  end;

var
  EnDecrpt: TEnDecrpt;
const
  BufSize=4096;
implementation

{$R *.dfm}

//¥[±K
procedure TEnDecrpt.EncryptBtnClick(Sender: TObject);
var iRes:boolean;
begin
  if OpenDialog1.Execute()=true then
  begin
    Memo1.Clear;
    iRes:=Encryption_FileName(OpenDialog1.FileName,OpenDialog1.FileName+'.lyn');
    if iRes=true then
    begin
      Memo1.Lines.Add(OpenDialog1.FileName+'Encrypt Success');
    end else
    begin
      Memo1.Lines.Add(OpenDialog1.FileName+'Encrypt Fail');
    end;
  end;
end;
//¸Ñ±K
procedure TEnDecrpt.DecryptBtnClick(Sender: TObject);
var iRes:boolean;
begin
  if OpenDialog2.Execute()=true then
  begin
    Memo1.Clear;
    iRes:=Decryption_FileName(OpenDialog2.FileName,StringReplace(OpenDialog2.FileName, '.lyn', '',[rfReplaceAll, rfIgnoreCase]) );
    if iRes=true then
    begin
      Memo1.Lines.Add(OpenDialog2.FileName+'Decrypt Success');
    end else
    begin
      Memo1.Lines.Add(OpenDialog2.FileName+'Decrypt Fail');
    end;
  end;
end;
procedure TEnDecrpt.EncryptFBtnClick(Sender: TObject);
var sDir:string;
begin
  SelectDirectory('Please choice Folder','',sDir);
  if sDir<>'' then
  begin
    Encryption_Folder(sDir);
  end;
end;

procedure TEnDecrpt.DecryptFBtnClick(Sender: TObject);
var sDir:string;
begin
  SelectDirectory('Please choice Folder','',sDir);
  if sDir<>'' then
  begin
    Decryption_Folder(sDir);
  end;
end;

Function TEnDecrpt.Encryption_FileName(SourceFile:string;DestFile:String):Boolean;
const
  ConstBuf: array[0..6] of char =('@','t','y','x','u','a','n');
var
  Source,Dest:TFileStream;
  Buf: array[0..BufSize] of byte;
  tmpBuf: array[0..6] of char ;
  i:integer;
  iRes:Boolean;
  //
begin
  try
    //
    Source:=TFileStream.Create(SourceFile,fmOpenRead or fmShareDenyNone);
    //
    Source.Seek(-sizeof(tmpBuf),soFromEnd);
    Source.ReadBuffer(tmpBuf, sizeof(tmpBuf));
    if ((tmpBuf[0]='@') and (tmpBuf[1]='t') and (tmpBuf[2]='y') and (tmpBuf[3]='x') and (tmpBuf[4]='u') and (tmpBuf[5]='a') and (tmpBuf[6]='n')) then
    begin
      iRes:=false;
      abort();
    end else
    begin

    end;
    //
    Source.Seek(0,soFromBeginning);
    if FileExists(DestFile) then DeleteFile(DestFile);
    Dest := TFileStream.Create(DestFile, fmCreate OR fmShareDenyWrite);
    for i := 1 to (Source.Size div BufSize) do
    begin
        Source.ReadBuffer(Buf, BufSize);
        Buf[0]:=Buf[0] XOR  1;
        Dest.Write(Buf, BufSize);
    end;
    i := Source.Size mod BufSize;
    if (i > 0) then
    begin
        Source.ReadBuffer(Buf, i);
        Buf[0]:=Buf[0] XOR  1;
        Dest.Write(Buf, i);
    End;
    //Finally Tyxuan
    Dest.Write(ConstBuf, sizeof(ConstBuf));
    //
    Source.free;
    Dest.free;
    Source:=nil;
    Dest:=nil;
    iRes:=true;
  except
    on E:Exception do
    begin
      iRes:=false;
      Showmessage(E.Message);
    end;
  end;
  result:=iRes;
end;


Function TEnDecrpt.Decryption_FileName(SourceFile:string;DestFile:String):Boolean;
var
  Source,Dest:TFileStream;
  Buf: array[0..BufSize] of byte;
  tmpBuf: array[0..6] of char ;
  i:integer;
  iRes:Boolean;
begin
  try
    Source:=TFileStream.Create(SourceFile,fmOpenRead or fmShareDenyNone);
    //
    Source.Seek(-sizeof(tmpBuf),soFromEnd);
    Source.ReadBuffer(tmpBuf, sizeof(tmpBuf));
    if ((tmpBuf[0]='@') and (tmpBuf[1]='t') and (tmpBuf[2]='y') and (tmpBuf[3]='x') and (tmpBuf[4]='u') and (tmpBuf[5]='a') and (tmpBuf[6]='n')) then
    begin
    end else
    begin
      iRes:=false;
      abort();
    end;
    //
    Source.Seek(0,soFromBeginning);
    if FileExists(DestFile) then
    begin
     DestFile:=ExtractFilePath(DestFile)+ChangeFileExt(ExtractFileName(DestFile),'')+'-Copy'+ExtractFileExt(DestFile);
    end;
    Dest := TFileStream.Create(DestFile, fmCreate OR fmShareDenyWrite);
    for i := 1 to ((Source.Size-sizeof(tmpBuf)) div BufSize) do
    begin
        Source.ReadBuffer(Buf, BufSize);
        Buf[0]:=Buf[0] XOR  1;
        Dest.Write(Buf, BufSize);
    end;
    i := (Source.Size-sizeof(tmpBuf)) mod BufSize;
    if (i > 0) then
    begin
        Source.ReadBuffer(Buf, i);
        Buf[0]:=Buf[0] XOR  1;
        Dest.Write(Buf, i);
    End;
    //
    Source.free;
    Dest.free;
    Source:=nil;
    Dest:=nil;
    iRes:=true;
  except
    on E:Exception do
    begin
      iRes:=false;
      Showmessage(E.Message);
    end;
  end;
  result:=iRes;
end;

procedure TEnDecrpt.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
end;

//
procedure TEnDecrpt.Encryption_Folder(PathDir:string);
var SR:TSearchRec;
    iRes:boolean;
begin
  try
    if FindFirst(PathDir + '\*.*', faArchive, SR) = 0 then
    begin
      Memo1.Clear;
      Repeat
        if ExtractFileExt(SR.Name)<>'.lyn' then
        begin
          iRes:=Encryption_FileName(PathDir+'\'+SR.Name,PathDir+'\'+SR.Name+'.lyn');
          if iRes=true then
          begin
            Memo1.Lines.Add(PathDir+'\'+SR.Name+' Encrypt Success');
          end else
          begin
            Memo1.Lines.Add(PathDir+'\'+SR.Name+' Encrypt Fail');
          end;
        end;
      until FindNext(SR)<> 0;
      FindClose(SR);
    end;
    //do your stuff
  finally
  end;
end;
//
procedure TEnDecrpt.Decryption_Folder(PathDir:string);
var SR:TSearchRec;
    iRes:boolean;
begin
  try
    if FindFirst(PathDir + '\*.lyn', faArchive, SR) = 0 then
    begin
      Memo1.Clear;
      Repeat
        iRes:=Decryption_FileName(PathDir+'\'+SR.Name,Copy(PathDir+'\'+SR.Name,1,length(PathDir+'\'+SR.Name)-4));
        if iRes=true then
        begin
          Memo1.Lines.Add(PathDir+'\'+SR.Name+' Decrypt Success');
        end else
        begin
          Memo1.Lines.Add(PathDir+'\'+SR.Name+' Decrypt Fail');
        end;
      until FindNext(SR)<> 0;
      FindClose(SR);
    end;
    //do your stuff
  finally
  end;
end;
//

end.
