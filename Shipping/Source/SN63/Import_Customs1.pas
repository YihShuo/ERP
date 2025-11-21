unit Import_Customs1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils,NumberToWords, Menus, ZLib, shellAPI,
  ExtCtrls,  Winsock, Registry;

type
  TImport_Customs = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Query1: TQuery;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Pop_Upload: TPopupMenu;
    UploadSampleFiles1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Label6: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure SampleFilessClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Import_Customs: TImport_Customs;

implementation
  uses Main1, DoczCO1;
{$R *.dfm}

procedure TImport_Customs.FormDestroy(Sender: TObject);
begin
    Import_Customs:=nil;
end;

procedure TImport_Customs.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action:=cafree;
end;


//------------------------------------------------------------------------------
Function PortTCP_IsOpen(dwPort:Word; ipAddressStr:AnsiString):boolean;
var
  client: sockaddr_in;
  sock: Integer;
  ret: Integer;
  wsdata: WSAData;
begin
 Result:=False;
 ret := WSAStartup($0002, wsdata);
  if ret<>0 then exit;
  try
    client.sin_family      := AF_INET;
    client.sin_port        := htons(dwPort);
    client.sin_addr.s_addr := inet_addr(PAnsiChar(ipAddressStr));
    sock  :=socket(AF_INET, SOCK_STREAM, 0);
    Result:=connect(sock,client,SizeOf(client))=0;
  finally
    WSACleanup;
  end;
end;

procedure DisconnectShare(DriveLetter : String);
begin
   WNetCancelConnection2(PChar(DriveLetter), 0, false);
end;

function MakeDriveMapping(DriveLetter: string; DirectoryPath: string;
  Username: string; Password: string; RestoreAtLogon: Boolean): DWORD;
var
  NetResource: TNetResource;
  dwFlags: DWORD;
  Reg: TRegistry;
  driveBinValue: integer;
  Letter : string;
begin
  Letter:=trim(DriveLetter);
  Reg := TRegistry.Create(KEY_SET_VALUE);
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\', true) then
    try
          driveBinValue := (1 shl (Ord(UpCase(Letter[1])) - Ord('A')));
          Reg.WriteInteger('NoDrives', driveBinValue);
    finally
       Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  with NetResource do
  begin
    dwType := RESOURCETYPE_DISK;
    lpLocalName := PChar(DriveLetter);
    lpRemoteName := PChar(DirectoryPath);
    lpProvider := nil;
  end;
  if (RestoreAtLogon) then
    dwFlags := CONNECT_UPDATE_PROFILE
  else
    dwFlags := 0;
  WNetAddConnection2(NetResource, PChar(Password), PChar(UserName), 0); //Connect first
  Result := WNetAddConnection2(NetResource, PChar(Password),PChar(Username), dwFlags); // check connect ok or no
end;

function GetPart(const part, input, format: string): string;
var
  I: Integer;
begin
  for I := 1 to Length(format) do
    if Uppercase(format[I]) = Uppercase(part) then
      Result := Result + input[I];
end;
function GetDay(const input, format: string): string;
begin
  Result := GetPart('d', input, format);
  if Length(Result) = 1 then Result := SysUtils.Format('0%0:s', [Result]);
end;

function GetMonth(const input, format: string): string;
begin
  Result := GetPart('m', input, format);
  if Length(Result) = 1 then Result := SysUtils.Format('0%0:s', [Result]);
end;

function GetYear(const input, format: string): string;
begin
  Result := GetPart('y', input, format);
end;

function ConvertToMyLocalSettings(const input, format: string): string;
begin
  Result := SysUtils.Format('%0:s/%1:s/%2:s', [GetDay(input, format), GetMonth(input, format), GetYear(input, format)]);
end;

(*==============================================================================
     import from file  BaoCaoToKhai.xls
==============================================================================*)

procedure TImport_Customs.Button1Click(Sender: TObject);
var i,k,COUNT,Rows:Integer;
    GO: boolean;
    Excel,arrData:Variant;
    FileName:string;
begin

  if not OpenDialog1.Execute then
     abort;

  Excel:=CreateOleObject('Excel.Application');
  Excel.WorkBooks.Open(OpenDialog1.FileName);
  Excel.WorkSheets[1].Activate;
  Excel.Columns[2].NumberFormat := '@';
  Excel.Columns[3].NumberFormat := 'yyyy/mm/dd';
  Excel.Columns[7].NumberFormat := '@';
  Excel.Columns[8].NumberFormat := '###.###';
  Rows := Excel.WorkSheets[1].UsedRange.EntireRow.count;
  arrData:= Excel.WorkSheets[1].UsedRange.Value;

  try
        GO:=false;
        COUNT:=1;
        i:=11-1;  //Row(1) null
        k:=0;

        memo1.Clear;
        while (count < 2) and(i<=Rows) do
        begin
          try
            if trim(arrData[i,7])='' then
            begin
                inc(COUNT);
                Go:=false;
            end
            else
            begin
              COUNT:=1;
              Go:=true;
            end;

            if Go=true then
            begin
                query1.Active:=false;
                query1.SQL.Clear;
                query1.SQL.Add('SELECT sb.INV_NO FROM ship_booking sb WHERE sb.INV_NO='''+trim(arrData[i,7])+''' ');
                query1.SQL.Add(' OR EXISTS( SELECT im.Inv_No FROM INVOICE_MSC ims');
                query1.SQL.Add('		        LEFT JOIN INVOICE_MER im ON im.Inv_Sup = ims.INV_NO');
                query1.SQL.Add('		        WHERE ims.FuncRe=''Merge'' AND im.INV_NO=sb.INV_NO AND ims.INV_NO='''+trim(arrData[i,7])+''')');
                query1.Active:=true;
                if trim(query1.FieldByName('INV_NO').AsString)<>'' then
                begin
                    query1.Active:=false;
                    query1.SQL.Clear;
                    query1.SQL.Add('UPDATE sb SET');
                    query1.SQL.Add('   Customs_No = '''+trim(arrData[i,2]) +''' ');
                    query1.SQL.Add('  ,Customs_Date = '''+formatdatetime('yyyy/MM/dd',VarToDateTime(trim(arrData[i,3])))+'''');
                    query1.SQL.Add('  ,VND_USD = '''+formatfloat('####.####',arrData[i,8])+'''');
                    query1.SQL.Add('FROM ship_booking sb WHERE sb.INV_NO='''+trim(arrData[i,7])+''' ');
                    Query1.SQL.Add('  OR EXISTS( SELECT im.Inv_No FROM INVOICE_MSC ims');
                    Query1.SQL.Add('		         LEFT JOIN INVOICE_MER im ON im.Inv_Sup = ims.INV_NO');
                    Query1.SQL.Add('		         WHERE ims.FuncRe=''Merge'' AND im.INV_NO=sb.INV_NO AND ims.INV_NO='''+trim(arrData[i,7])+''')');
                    query1.execsql;
                    inc(k);
                    memo1.Lines.Add('Customs No: ' +trim(arrData[i,2])+ ' / Customs Date : ' + formatdatetime('yyyy/MM/dd',VarToDateTime(trim(arrData[i,3])))+ chr(10));
                end;
            end; 
            inc(i);
          except
            showmessage('Error for invoice no. : ' + trim(arrData[i,7]));
            Break;
          end;
        end;
        showmessage('Import '+inttostr(k)+' rows successful!!!');
    Finally
        Excel.ActiveWorkBook.Close(SaveChanges:= 0);
        Excel.Quit;
        Excel:=Unassigned;
        arrData:=Unassigned;
    end;  
end;

procedure CompressIt(var CompressedStream: TMemoryStream; const CompressionLevel: TCompressionLevel);
var
   SourceStream: TCompressionStream;
   DestStream: TMemoryStream;
   Count: int64;
begin
   Count := CompressedStream.Size;
   DestStream := TMemoryStream.Create;
   SourceStream := TCompressionStream.Create(CompressionLevel, DestStream);
   try
      CompressedStream.SaveToStream(SourceStream);
      SourceStream.Free;
      CompressedStream.Clear;
      CompressedStream.WriteBuffer(Count, SizeOf(Count));
      CompressedStream.CopyFrom(DestStream, 0);
   finally
      DestStream.Free;
   end;
end;

procedure UnCompressit(const CompressedStream: TMemoryStream; var UnCompressedStream: TMemoryStream);
var
   SourceStream: TDecompressionStream;
   DestStream: TMemoryStream;
   Buffer: PChar;
   Count: int64;
begin
   CompressedStream.ReadBuffer(Count, SizeOf(Count));      //doc so byte tu stream vao buffer Count
   GetMem(Buffer, Count);
   DestStream := TMemoryStream.Create;
   SourceStream := TDecompressionStream.Create(CompressedStream);
   try
      SourceStream.ReadBuffer(Buffer^, Count);
      DestStream.WriteBuffer(Buffer^, Count);
      DestStream.Position := 0;
      UnCompressedStream.LoadFromStream(DestStream);
   finally
      FreeMem(Buffer);
      DestStream.Free;
   end;
end;

procedure TImport_Customs.SampleFilessClick(Sender: TObject);
var File_s,IPFile,FileAddress,UserLog,PassLog:string;
begin
  with Query1 do
  begin
     Active:=False;
     sql.Clear;
     sql.add('SELECT IPFile, FileAddress, UserLog, PassLog');
     sql.add('FROM FileAddress WHERE Module=''All'' AND FORMID=''SampleFile'' AND Kind=''SampleFile''');
     Active:=true;
     if RecordCount=0 then
     begin
         ShowMessage('Pls, Call IT check FileAddress SampleFile !');
         Abort;
     end;
     IPFile:=fieldbyname('IPFile').AsString;
     FileAddress:=fieldbyname('FileAddress').AsString;
     UserLog:=fieldbyname('UserLog').AsString;
     PassLog:=fieldbyname('PassLog').AsString;
  end;
  with Query1 do
  begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT [File_Name] FROM Support_SampleFile WHERE Module=''Shipping'' AND FormID=''SN53'' AND Names=''Import Customs No'' ');
        active:=true;
  end;
  if trim(Query1.FieldByName('File_Name').AsString)='' then
  begin
      ShowMessage('No file !');
      abort;
  end;
  SaveDialog1.FileName := Query1.FieldByName('File_Name').AsString;
  if not SaveDialog1.Execute then
     abort;
  try
      File_s:=Query1.FieldByName('File_Name').AsString;
      File_s:=ReverseString(copy(ReverseString(File_s),1,Pos ('.', ReverseString(File_s))));
      {
      if not PortTCP_IsOpen(80, IPFile) then
      begin
         ShowMessage('Pls, check network to server first ! Can not connect server (Error 0.96) !');
         abort;
      end;
      }
      DisconnectShare('W:');
      if (MakeDriveMapping('W:',Copy(FileAddress,0,Length(FileAddress)-1),UserLog,PassLog,False) = 0) then
      begin
        ShowMessage('Pls, Call IT check Folder "'+FileAddress+'" on server fisrt !');
        abort;
      end;
      if not FileExists(FileAddress+Query1.FieldByName('File_Name').AsString) then
      begin
          DisconnectShare('W:');
          showmessage('Can not Download ! file not exists , pls check !');
          exit;
      end;
      if trim(SaveDialog1.FileName)='' then
          SaveDialog1.FileName := Query1.FieldByName('File_Name').AsString
      else if pos(File_s,SaveDialog1.FileName)=0 then
          SaveDialog1.FileName:=SaveDialog1.FileName+File_s;
      CopyFile(PChar(FileAddress+Query1.FieldByName('File_Name').AsString), PChar(SaveDialog1.FileName), False);
      if Application.MessageBox('DownLoad success ! Do you want to open the download file?','Open File',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      DisconnectShare('W:');
  except
      DisconnectShare('W:');
      showmessage('Can not Download ! Try again !');
  end;
end;



end.
