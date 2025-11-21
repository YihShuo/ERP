unit QpInvoice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB,DBTables,NumberToWords, QuickRpt, QRCtrls,
  QRExport, QRPDFFilt, StdCtrls, Registry;

type
  TQpInvoiceF = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabel17: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRRTFFilter1: TQRRTFFilter;
    DetailBand1: TQRBand;
    QRDBText7: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    Qry_Title: TQuery;
    Qry_Detail: TQuery;
    DS_Title: TDataSource;
    Qry_DetailPACK_NO: TStringField;
    Qry_DetailRYNO: TStringField;
    Qry_DetailSTYLE_NAME: TStringField;
    Qry_DetailPO: TStringField;
    Qry_DetailCUSTORDNO: TStringField;
    Qry_DetailARTICLE: TStringField;
    Qry_DetailSIZE_RUN: TStringField;
    Qry_DetailPAIRS: TIntegerField;
    Qry_DetailUNIT_PRICE: TCurrencyField;
    Qry_DetailAMOUNT: TCurrencyField;
    Qry_TitleINV_DATE: TDateTimeField;
    Qry_TitleFROM_WHERE: TStringField;
    Qry_TitleTO_WHERE: TStringField;
    Qry_TitleTOTAL_PAIRS: TIntegerField;
    Qry_TitleTOTAL_AMOUNT: TCurrencyField;
    Qry_TitleTOTAL_AMOUNT_WORD: TStringField;
    Qry_TitleSHIP_BY: TStringField;
    QRLabel37: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel33: TQRLabel;
    Qry_TitleManager_Name: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    Qry_TitleCOMID: TStringField;
    QRDBText3: TQRDBText;
    Qry_TitlePosition: TStringField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    Qry_TitleAddress: TStringField;
    Qry_TitleINV_NO: TStringField;
    Qry_TitleRISK: TStringField;
    Qry_Temp: TQuery;
    Qry_TitleSIGN_Image: TStringField;
    QRImage1: TQRImage;
    Qry_TitleREF: TStringField;
    lb_REF: TQRLabel;
    REF: TQRDBText;
    Query_Temp: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRLabel7Print(sender: TObject; var Value: String);
    procedure FormDestroy(Sender: TObject);
    procedure lb_REFPrint(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QpInvoiceF: TQpInvoiceF;
  Inv_No:string;
  Merge,CO,SizUS:boolean;
  IPFile,UserLog,PassLog,FileAddress,File_s: String;

implementation

uses Main;
{$R *.dfm}

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

procedure Check_Error();
begin
  DisconnectShare('W:');
  if (MakeDriveMapping('W:',Copy(FileAddress,0,Length(FileAddress)-1), UserLog, PassLog,False) = 0) then
  begin
    ShowMessage('Pls, Call IT check Folder "'+FileAddress+'" on server fisrt (Error 0.96) !');
    Abort;
  end;
end;
procedure TQpInvoiceF.FormCreate(Sender: TObject);
begin
  with Qry_Temp do
  begin
    Close;
    sql.Clear;
    sql.add('SELECT IPFile,FileAddress, UserLog, PassLog');
    sql.add('FROM FileAddress WHERE Module=''Shipping'' AND FORMID=''N12'' AND Kind=''InvoicePL''');
    Open;
    IPFile:=fieldbyname('IPFile').AsString;
    FileAddress:=fieldbyname('FileAddress').AsString;
    UserLog:=fieldbyname('UserLog').AsString;
    PassLog:=fieldbyname('PassLog').AsString;
  end;

  with Qry_Title do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT im.INV_NO,im.FROM_WHERE,im.TO_WHERE,im.TOTAL_PAIRS,im.TOTAL_AMOUNT,sic.[Address] ');
    sql.Add('      ,im.TOTAL_AMOUNT_WORD,si.Company_Name RISK,im.SHIP_BY,sim.Manager_Name,sic.COMID,sim.Position');
    sql.Add('      ,(CASE WHEN  ISNULL(ShowSIGN,0)=1 THEN SIGN_Image ELSE '''' END)SIGN_Image,im.REF');
    if CO then
      sql.Add('   ,sb.CO_Inv_Date INV_DATE')
    else
      sql.Add('   ,im.INV_DATE');
    if Merge then
      sql.Add('FROM INVOICE_MSC im')
    else
      sql.Add('FROM INVOICE_M im');
    if CO then
      sql.Add('LEFT JOIN Ship_Booking sb ON sb.Inv_No =im.INV_NO');
    sql.Add('LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK');
    sql.Add('LEFT JOIN Ship_InfoManager sim ON ISNULL(sim.[Active],0)<>0');
    sql.Add('LEFT JOIN Ship_InfoCompany sic ON 1=1');
    sql.Add('WHERE im.INV_NO='''+Inv_No+''' ');
    active:=true;
  end;
  with Query_Temp do
  begin
     Close;
     sql.Clear;
     sql.Add('select max(siz_us) SIZ_US from PACKING where INV_NO='''+Inv_No+''' and right(SIZ_US,1)<>''K''');
     Open;
  end;
  with Qry_Detail do
  begin
    active:=false;
    sql.Clear;
    if SizUS then
    begin
        sql.Add('IF OBJECT_ID(''tempdb..#Packing_Print'') IS NOT NULL');
        sql.Add('BEGIN DROP TABLE #Packing_Print END');
        sql.Add('SELECT ROW_NUMBER() OVER(PARTITION BY RYNO ORDER BY CASE RIGHT(SIZ_US,1) WHEN ''K'' THEN 1 ELSE 2 END ASC');
        sql.Add('	,CAST(REPLACE(SIZ_US,''K'','''') AS NUMERIC(18,2)))ID ,RYNO,SIZ_US INTO #Packing_Print');
        if Merge then
            sql.Add('FROM PACKING_SC')
        else
            sql.Add('FROM PACKING');
        sql.Add('WHERE INV_NO=:INV_NO');
        sql.Add('GROUP BY RYNO,SIZ_US ');
        ExecSQL;
        sql.Clear;
    end;

    sql.Add('SELECT ID.PACK_NO, ID.RYNO, ID.STYLE_NAME, ID.PO, ID.CUSTORDNO, ID.ARTICLE,ID.PAIRS,ID.UNIT_PRICE, ID.AMOUNT,');
    if not SizUS then
      sql.Add('  ID.SIZE_RUN')
    else
    begin
      if (Query_Temp.FieldByName('SIZ_US').Value > 17) and (MainForm.Edit2.Text = 'LHG') then
        sql.Add('  a.mins+''-''+a.maxs SIZE_RUN ')
      else
        sql.Add('  Mins.SIZ_US+''-''+Maxs.SIZ_US SIZE_RUN ');
    end;
    if Merge then
      sql.Add('FROM INVOICE_DSC ID')
    else
      sql.Add('FROM INVOICE_D ID');
    if SizUS then
    begin
      sql.Add('LEFT JOIN(SELECT MAX(ID)IDMa,MIN(ID)IDMi,RYNO FROM #Packing_Print GROUP BY RYNO)Us ON Us.RYNO = ID.RYNO');
      if (Query_Temp.FieldByName('SIZ_US').Value > 17) and (MainForm.Edit2.Text = 'LHG') then
      begin
        SQL.Add('  left join(select b.maxs,b.mins,b.RYNO   ');
        SQL.Add('  from (select ryno,ltrim(min(c.siz_us)) mins, ltrim(max(c.siz_us)) maxs  ');
        SQL.Add('  from (select ryno,id,case when right(SIZ_US,1)=''K'' then '' ''+siz_us when convert(decimal,(substring(siz_us,1,4)))>=17 then '' ''+siz_us else siz_us end siz_us   ');
        SQL.Add('  from #Packing_Print) c  ');
        SQL.Add('  group by ryno) b) a on a.RYNO=id.RYNO   ');
      end
      else
      begin
        sql.Add('LEFT JOIN #Packing_Print Maxs ON Maxs.RYNO = Us.RYNO AND Maxs.ID = Us.IDMa');
        sql.Add('LEFT JOIN #Packing_Print Mins ON Mins.RYNO = Us.RYNO AND Mins.ID = Us.IDMi');
      end;
    end;
    sql.Add('WHERE ID.INV_NO=:INV_NO');
    sql.Add('ORDER BY CAST(ID.PACK_NO AS INT)');
    active:=true;
    
  end;

  Check_Error;
  QRImage1.Picture:=nil;
  try
    if (Qry_Title.FieldByName('SIGN_Image').AsString<>'') and (FileExists(FileAddress+Qry_Title.FieldByName('SIGN_Image').AsString)) then
      QRImage1.Picture.LoadFromFile(FileAddress+Qry_Title.FieldByName('SIGN_Image').AsString);
    DisconnectShare('W:');
   except
    begin
      QRImage1.Picture:=nil;
      DisconnectShare('W:');
    end;
  end;

end;

procedure TQpInvoiceF.QRDBText5Print(sender: TObject; var Value: String);
begin
  if (MainForm.Edit3.Text='192.168.60.9') or(MainForm.Edit3.Text='192.168.25.9') then
    Value:=Value
  else
    Value:='No: '+Value;
end;

procedure TQpInvoiceF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DisconnectShare('W:');
  QRImage1.Picture:=nil;
  action:=cafree;
end;

procedure TQpInvoiceF.QRLabel7Print(sender: TObject; var Value: String);
begin
  if (MainForm.Edit3.Text='192.168.60.9') or(MainForm.Edit3.Text='192.168.25.9') then
    Value:=Value+' FOOTWEAR';
end;

procedure TQpInvoiceF.FormDestroy(Sender: TObject);
begin
  QpInvoiceF:=nil;
end;

procedure TQpInvoiceF.lb_REFPrint(sender: TObject; var Value: String);
begin
  if trim(Qry_Title.FieldByName('REF').AsString)='' then
    Value:='';
end;

end.



