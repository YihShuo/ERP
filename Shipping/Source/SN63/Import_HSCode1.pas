unit Import_HSCode1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,ComObj, DB, DBTables,StrUtils,NumberToWords, Menus, ZLib, shellAPI,
  ExtCtrls,  Winsock, Registry;

type
  TImport_HSCode = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Query1: TQuery;
    OpenDialog1: TOpenDialog;
    btnImport: TButton;
    SaveDialog1: TSaveDialog;
    Pop_Upload: TPopupMenu;
    UploadSampleFiles1: TMenuItem;
    procedure btnImportClick(Sender: TObject);
    procedure SampleFilessClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Import_HSCode: TImport_HSCode;

implementation
    uses Main1, DoczCO1;
{$R *.dfm}

(*==============================================================================
     import from file  BaoCaoHangChiTiet.xls
==============================================================================*)
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

procedure TImport_HSCode.btnImportClick(Sender: TObject);
 var i,k,COUNT,Rows:Integer;
    GO: boolean;
    Excel,arrData:Variant;
    FileName,RYNO:string;
begin

  if not OpenDialog1.Execute then
    abort;

  Excel:=CreateOleObject('Excel.Application');
  Excel.WorkBooks.Open(OpenDialog1.FileName);
  Excel.WorkSheets[1].Activate;
  Rows := Excel.WorkSheets[1].UsedRange.EntireRow.count;
  Excel.Columns[2].NumberFormat := '@';
  Excel.Columns[7].NumberFormat := '@';
  Excel.Columns[8].NumberFormat := '@';
  Excel.Columns[27].NumberFormat :='@';
  arrData:= Excel.WorkSheets[1].UsedRange.Value;
  try

        GO:=false;
        COUNT:=1;
        i:=11-1; //Row(1) null
        k:=0;

        memo1.Clear;
        while (count < 2)and(i<=Rows) do
        begin
          try
            if (trim(arrData[i,8])='')or(trim(arrData[i,27])='') then
            begin
                inc(COUNT);
                Go:=false;
            end else
            begin
              COUNT:=1;
              Go:=true;
            end; 
            if Go=true then
            begin
                RYNO:=trim(arrData[i,8]);
                query1.Active:=false;
                query1.SQL.Clear;
                query1.SQL.Add(' SELECT id.INV_NO FROM INVOICE_D id WHERE id.RYNO='''+RYNO+''' ');
                query1.SQL.Add('   AND( id.INV_NO='''+trim(arrData[i,27])+'''');
                if trim(arrData[i,2])<>'' then
                begin
                          query1.SQL.Add('OR EXISTS( SELECT INV_NO FROM ship_booking ');
                          query1.SQL.Add('		    WHERE Customs_No='''+trim(arrData[i,2])+''' AND INV_NO=id.INV_NO)');
                end;
                query1.SQL.Add(')');
                //query1.SQL.Add('UNION ');
                //query1.SQL.Add(' SELECT is1.Inv_No FROM INVOICE_SAMPLE is1 WHERE is1.Inv_No ='''+trim(arrData[i,27])+''' ');
                query1.Active:=true;
                if trim(query1.FieldByName('INV_NO').AsString)<>'' then
                begin
                    query1.Active:=false;
                    query1.SQL.Clear;
                    query1.SQL.Add('Update id set');
                    query1.SQL.Add('      CO_HSCode = '''+trim(arrData[i,7]) +''' ');
                    query1.SQL.Add('FROM INVOICE_D id');
                    query1.SQL.Add('WHERE id.RYNO='''+RYNO+''' ');  //Mass Production
                    query1.SQL.Add('  AND( id.INV_NO='''+trim(arrData[i,27])+'''  ');
                    if trim(arrData[i,2])<>'' then
                    begin
                              query1.SQL.Add('OR EXISTS( SELECT INV_NO FROM ship_booking');
                              query1.SQL.Add('		    WHERE Customs_No='''+trim(arrData[i,2])+''' AND INV_NO=id.INV_NO )');
                    end;
                    query1.SQL.Add(')');

                    //query1.SQL.Add('UPDATE INVOICE_SAMPLE SET CO_HSCode ='''+trim(arrData[i,7]) +''' ');   //Sample
                    //query1.SQL.Add('WHERE Inv_No='''+trim(arrData[i,27])+''' ');
                    query1.execsql;  

                    query1.sql.clear;
                    query1.sql.add('SELECT INV_NO FROM Ship_Booking WHERE INV_NO='''+trim(arrData[i,27])+'''');
                    query1.sql.add(' AND Sailing_Date IS NOT NULL AND ISNULL(Customs_No,'''')<>'''' AND ISNULL(CO_Provide_Org,'''')=''No need''');
                    query1.active:=True;
                    If query1.FieldByName('INV_NO').AsString<>'' then
                    begin
                        query1.active:=false;
                        query1.sql.Clear;
                        query1.sql.Add('update Ship_Booking set CO_CFMID='''+Main.edit1.text+''',Co_CFMDate=getdate()');
                        query1.sql.Add('where Inv_no='''+trim(arrData[i,27])+''' ');
                        query1.execsql;
                    end;
                    inc(k);
                    memo1.Lines.Add('HS Code: ' +trim(arrData[i,7]));
                end ;
            end;
            inc(i);
          except
            showmessage('Error for invoice no. : ' + trim(arrData[i,27])+' RYNO :'+trim(arrData[i,8]));
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
   DoczCO.Button1.Click;
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

procedure TImport_HSCode.SampleFilessClick(Sender: TObject);
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
        sql.Add('SELECT [File_Name] FROM Support_SampleFile WHERE Module=''Shipping'' AND FormID=''SN53'' AND Names=''Import HS Code'' ');
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
          ShowMessage('Pls, Call IT check Folder "'+FileAddress+'" on server fisrt (Error 0.96) !');
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
