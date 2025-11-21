unit PurSizeTW_Print_VN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, Grids, DBGrids, QRCtrls,
  QRPDFFilt, StdCtrls, IniFiles, ADODB;

type
  TPurSizeTW_Print_VN = class(TForm)
    QuickRep1: TQuickRep;
    TempSize: TQuery;
    MasSize: TQuery;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    CGZLS: TQuery;
    DataSource2: TDataSource;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    DataSource1: TDataSource;
    ColumnHeaderBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    R1: TQRDBText;
    R2: TQRDBText;
    R3: TQRDBText;
    R4: TQRDBText;
    R5: TQRDBText;
    R6: TQRDBText;
    R7: TQRDBText;
    R8: TQRDBText;
    R9: TQRDBText;
    R10: TQRDBText;
    R11: TQRDBText;
    R12: TQRDBText;
    R13: TQRDBText;
    R14: TQRDBText;
    R15: TQRDBText;
    R16: TQRDBText;
    R17: TQRDBText;
    R18: TQRDBText;
    R19: TQRDBText;
    R21: TQRDBText;
    R20: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    Q28: TQRLabel;
    Q1: TQRLabel;
    Q2: TQRLabel;
    Q3: TQRLabel;
    Q4: TQRLabel;
    Q5: TQRLabel;
    Q6: TQRLabel;
    Q7: TQRLabel;
    Q8: TQRLabel;
    Q9: TQRLabel;
    Q10: TQRLabel;
    Q11: TQRLabel;
    Q12: TQRLabel;
    Q13: TQRLabel;
    Q14: TQRLabel;
    Q15: TQRLabel;
    Q16: TQRLabel;
    Q17: TQRLabel;
    Q18: TQRLabel;
    Q19: TQRLabel;
    Q20: TQRLabel;
    Q21: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape49: TQRShape;
    QRDBText7: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    R27: TQRDBText;
    Q27: TQRLabel;
    CGZLSCGNO: TStringField;
    CGZLSQty: TCurrencyField;
    CGZLSCLBH: TStringField;
    CGZLSYWPM: TStringField;
    CGZLSDWBH: TStringField;
    CGZLSArticle: TStringField;
    CGZLSXieMing: TStringField;
    QRShape48: TQRShape;
    QRShape51: TQRShape;
    Q22: TQRLabel;
    R22: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRShape52: TQRShape;
    QRDBText5: TQRDBText;
    QRShape50: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    L1: TQRLabel;
    L2: TQRLabel;
    L3: TQRLabel;
    L4: TQRLabel;
    L5: TQRLabel;
    L6: TQRLabel;
    L7: TQRLabel;
    L8: TQRLabel;
    QRDBText14: TQRDBText;
    R23: TQRDBText;
    QRShape53: TQRShape;
    R24: TQRDBText;
    QRShape54: TQRShape;
    R25: TQRDBText;
    QRShape55: TQRShape;
    R26: TQRDBText;
    QRShape56: TQRShape;
    Q23: TQRLabel;
    QRShape57: TQRShape;
    Q24: TQRLabel;
    QRShape58: TQRShape;
    Q25: TQRLabel;
    QRShape59: TQRShape;
    Q26: TQRLabel;
    QRShape60: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    L9: TQRLabel;
    L10: TQRLabel;
    CGZLSZWPM: TStringField;
    QRDBText16: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRShape61: TQRShape;
    QRShape63: TQRShape;
    QRShape62: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QTemp: TQuery;
    SumR1: TQRDBText;
    TempSize1: TQuery;
    SumR2: TQRDBText;
    SumR3: TQRDBText;
    SumR4: TQRDBText;
    SumR5: TQRDBText;
    SumR6: TQRDBText;
    SumR7: TQRDBText;
    SumR8: TQRDBText;
    SumR9: TQRDBText;
    SumR10: TQRDBText;
    SumR11: TQRDBText;
    SumR12: TQRDBText;
    SumR13: TQRDBText;
    SumR14: TQRDBText;
    SumR15: TQRDBText;
    SumR16: TQRDBText;
    SumR17: TQRDBText;
    SumR18: TQRDBText;
    SumR19: TQRDBText;
    SumR20: TQRDBText;
    SumR21: TQRDBText;
    SumR22: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel29: TQRLabel;
    SumR23: TQRDBText;
    SumR24: TQRDBText;
    SumR25: TQRDBText;
    SumR26: TQRDBText;
    TotalSum: TQRDBText;
    QRDBText15: TQRDBText;
    L11: TQRLabel;
    QRDBText17: TQRDBText;
    NoteInfo: TQRLabel;
    Mas: TQuery;
    MasCGNO: TStringField;
    MasCLBH: TStringField;
    MasXqQty: TCurrencyField;
    MasQty: TCurrencyField;
    MasUSPrice: TCurrencyField;
    MasVNPrice: TCurrencyField;
    MasMemo: TStringField;
    MasBJNO: TStringField;
    MasYQDate: TDateTimeField;
    MasCFMDate: TDateTimeField;
    MasUSERDate: TDateTimeField;
    MasUSERID: TStringField;
    MasYN: TStringField;
    MasYWPM: TStringField;
    MasDWBH: TStringField;
    MasZLNO: TMemoField;
    MasZWPM: TStringField;
    UpdateSQL1: TUpdateSQL;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRDBText18: TQRDBText;
    Query1: TQuery;
    Query1YQDate: TDateTimeField;
    L_address: TQRLabel;
    QRBand1: TQRBand;
    L20: TQRLabel;
    QRLabel46: TQRLabel;
    QRImage4: TQRImage;
    QRDBText19: TQRDBText;
    QRLabel47: TQRLabel;
    QRImage3: TQRImage;
    QRDBText20: TQRDBText;
    QRLabel48: TQRLabel;
    QRImage2: TQRImage;
    QRDBText21: TQRDBText;
    QRLabel49: TQRLabel;
    QRImage1: TQRImage;
    QR_ApplicantDate: TQRDBText;
    QRShape91: TQRShape;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QApprover: TADOQuery;
    QApproverApplicantID: TWideStringField;
    QApproverApplicant: TWideStringField;
    QApproverApplicantDate: TDateTimeField;
    QApproverWarehouseID: TWideStringField;
    QApproverWarehouse: TWideStringField;
    QApproverWarehouseDate: TDateTimeField;
    QApproverPurchaseID: TWideStringField;
    QApproverPurchase: TWideStringField;
    QApproverPurchaseDate: TDateTimeField;
    QApproverAPressidentID: TWideStringField;
    QApproverAPressident: TWideStringField;
    QApproverAPressidentDate: TDateTimeField;
    TmpQuery: TQuery;
    QRShape99: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    AppDir:String;
    ComName:String;
    Title:String;
    FileServerIP:string;
    IP,DBName,DBUser,DBPass,PW:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  PurSizeTW_Print_VN: TPurSizeTW_Print_VN;

implementation

uses PurSize1,FunUnit, main1;

{$R *.dfm}

procedure TPurSizeTW_Print_VN.ReadIni();
var MyIni :Tinifile;
    AppDir,SuperVisorID:string;
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  ComName:='CONG TY TNHH TY XUAN';
  Title:='PHIEU DAT MUA HANG';
  FileServerIP:=main.ServerIP;
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      FileServerIP:=MyIni.ReadString('ERP','FileServerIP',main.ServerIP);
      Title:=MyIni.ReadString('GSBH_'+main.Edit2.Text,'Purchase_N212_PrintTW','PHIEU DAT MUA HANG');
      IP := MyIni.ReadString('ERPServer','IP', '');
      DBName := MyIni.ReadString('ERPServer', 'Database', '');
      DBUser := MyIni.ReadString('ERPServer', 'User', '');
      DBPass := MyIni.ReadString('ERPServer', 'Pass', '');
      // dencrypt password
      sline_PW:='';
      ad_PW:=strtoint(copy(DBPass,0,1)); //取得解密字元
      for i:=2 to (length(DBPass)) do //解密迴圈
      begin
        tempstr_PW:=copy(DBPass,i,1);
        sline_PW:=sline_PW+chr(ord(tempstr_PW[1])-ad_PW);
      end;
      PW:=sline_PW;
    finally
      MyIni.Free;
    end;
  end;
  {SuperVisorID:='PurManager.bmp';
  with QTemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SupervisorID from BUsers where USERID='''+main.Edit1.Text+''' ');
    Active:=true;
    if FieldByName('SupervisorID').AsString<>''  then SuperVisorID:=FieldByName('SupervisorID').AsString+'.bmp';
    Active:=false;
  end;
  //簽名檔
  if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
  if FileExists(AppDir+'\Images\'+main.Edit1.Text+'.bmp')=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+main.Edit1.Text+'.bmp'),Pchar(AppDir+'Images\'+main.Edit1.Text+'.bmp'),false);
  if FileExists(AppDir+'\Images\'+SuperVisorID)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+SuperVisorID),Pchar(AppDir+'Images\'+SuperVisorID),false);

  if FileExists(AppDir+'\Images\'+main.Edit1.Text+'.bmp') then
  begin
    QRImage1.Picture.LoadFromFile(AppDir+'\Images\'+main.Edit1.Text+'.bmp');
  end;
  if FileExists(AppDir+'\Images\'+SuperVisorID) then
  begin
    QRImage2.Picture.LoadFromFile(AppDir+'\Images\'+SuperVisorID);
  end; }
end;

procedure TPurSizeTW_Print_VN.FormCreate(Sender: TObject);
var IsMark_Black: boolean;
begin
  ReadIni();
  Mas.Active:=true;
  Query1.Active:=true;
  IsMark_Black:=false;
  Mas.First;
  while not Mas.Eof   do
  begin
    if pos('BLACK',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
      IsMark_Black:=true;
    Mas.Next;
  end;
  if (main.edit2.Text = 'VA12') and (IsMark_Black=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/Black = 117-15-00';
  if NoteInfo.Caption<>'' then NoteInfo.Enabled:=true;
  if messagedlg('Just for Print not for Mail?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    L1.Caption:='';
    L2.Caption:='';
    L3.Caption:='';
    L4.Caption:='';
    L5.Caption:='';
    L6.Caption:='';
    L7.Caption:='';
    L8.Caption:='';
    L11.Caption:='';
    QRDBText17.Enabled:=false;
  end else
  begin
    ReadIni();
    L1.Caption:=ComName;
    L2.Caption:=Title;
  end;
  CGZLS.Active:=true;
  TempSize.Active:=true;
  if TempSize.recordcount>24 then
  begin
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
  end;
  with MasSize do
  begin
    active:=false;
    sql.Clear;
    sql.add('if   object_id('+''''+'tempdb..#CGQty'+''''+')   is  not null  ');
    sql.add('begin  drop table #CGQty end');
    sql.add('if   object_id('+''''+'tempdb..#TotQty'+''''+')   is  not null  ');
    sql.add('begin  drop table #TotQty end');

    sql.add('select CLBH,ZLBH,max(YQDate) as YQDate,convert(decimal(18,1),sum(Qty)) as TotQty ');
    sql.add('into #TotQty from CGZLSS where CGNO=:CGNO');
    sql.add('group by CLBH,ZLBH');

    sql.add('select CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC,DDZL.Shipdate,');
    sql.add('convert(decimal(18,1),CGZLSS.Qty) as Qty ');
    sql.add(',DDZL.Article,XXZL.XieMing,XXZL.YSSM,lbzls.ywsm');
    sql.add('into #CGQty');
    sql.add(' from CGZLSS ');
    sql.add('left join DDZL on DDZL.DDBH=CGZLSS.ZLBH') ;
    sql.add('left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.Add('left join lbzls on lbzls.lbdh=XXZL.xiegn and lbzls.lb=''03''');
    sql.add('where CGZLSS.CGNO='+''''+PurSize.CGMas.fieldbyname('CGNO').Value+'''');
    sql.add('order by CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC');

    sql.add('select #CGQty.CLBH,#CGQty.ZLBH,substring(convert(nvarchar,#TotQty.YQDate,111),6,10) as YQDate,');
    sql.add('#TotQty.TotQty,substring(convert(nvarchar,#CGQty.ShipDate,111),6,10) as ShipDate,#CGQty.Article,#CGQty.XieMing,#CGQty.YSSM,#CGQty.ywsm');
    while not TempSize.Eof do
      begin
        sql.add(',max(case when #CGQty.XXCC='+''''+tempSize.fieldbyname('XXCC').asstring+'''');
        sql.add(' then #CGQty.Qty  end ) as '+''''+tempSize.fieldbyname('XXCC').asstring+'''');
        TempSize.Next;
      end;
    sql.add('from #CGQty') ;
    sql.add('left join  #TotQty on #CGQty.CLBH=#TotQty.CLBH and #CGQty.ZLBH=#TotQty.ZLBH ');
    sql.add('where #CGQty.CLBH=:CLBH ');
    sql.add('group by #CGQty.CLBH,#CGQty.ZLBH,#TotQty.YQDate,#TotQty.TotQty,#CGQty.ShipDate,#CGQty.Article,#CGQty.XieMing,#CGQty.YSSM,#CGQty.ywsm');
    sql.add('order by #CGQty.CLBH,#CGQty.ZLBH');
   //funcObj.WriteErrorLog(sql.Text);
    active:=true;
    //fields.fields[2].displayformat:='mm/dd'
  end;


  with MasSize do
  begin
    if  Fieldcount>9 then
      begin
        Q1.caption:=Fields[9].fieldname;
        R1.datafield:=Fields[9].fieldname;
      end;
    if  Fieldcount>10 then
      begin
        Q2.caption:=Fields[10].fieldname;
        R2.datafield:=Fields[10].fieldname;
      end;
    if  Fieldcount>11 then
      begin
        Q3.caption:=Fields[11].fieldname;
        R3.datafield:=Fields[11].fieldname;
      end;
    if  Fieldcount>12 then
      begin
        Q4.caption:=Fields[12].fieldname;
        R4.datafield:=Fields[12].fieldname;
      end;
    if  Fieldcount>13 then
      begin
        Q5.caption:=Fields[13].fieldname;
        R5.datafield:=Fields[13].fieldname;
      end;
    if  Fieldcount>14 then
      begin
        Q6.caption:=Fields[14].fieldname;
        R6.datafield:=Fields[14].fieldname;
      end;
    if  Fieldcount>15 then
      begin
        Q7.caption:=Fields[15].fieldname;
        R7.datafield:=Fields[15].fieldname;
      end;
    if  Fieldcount>16 then
      begin
        Q8.caption:=Fields[16].fieldname;
        R8.datafield:=Fields[16].fieldname;
      end;
    if  Fieldcount>17 then
      begin
        Q9.caption:=Fields[17].fieldname;
        R9.datafield:=Fields[17].fieldname;
      end;
    if  Fieldcount>18 then
      begin
        Q10.caption:=Fields[18].fieldname;
        R10.datafield:=Fields[18].fieldname;
      end;
    if  Fieldcount>19 then
      begin
        Q11.caption:=Fields[19].fieldname;
        R11.datafield:=Fields[19].fieldname;
      end;
    if  Fieldcount>20 then
      begin
        Q12.caption:=Fields[20].fieldname;
        R12.datafield:=Fields[20].fieldname;
      end;
    if  Fieldcount>21 then
      begin
        Q13.caption:=Fields[21].fieldname;
        R13.datafield:=Fields[21].fieldname;
      end;
    if  Fieldcount>22 then
      begin
        Q14.caption:=Fields[22].fieldname;
        R14.datafield:=Fields[22].fieldname;
      end;
    if  Fieldcount>23 then
      begin
        Q15.caption:=Fields[23].fieldname;
        R15.datafield:=Fields[23].fieldname;
      end;
    if  Fieldcount>24 then
      begin
        Q16.caption:=Fields[24].fieldname;
        R16.datafield:=Fields[24].fieldname;
      end;
    if  Fieldcount>25 then
      begin
        Q17.caption:=Fields[25].fieldname;
        R17.datafield:=Fields[25].fieldname;
      end;
    if  Fieldcount>26 then
      begin
        Q18.caption:=Fields[26].fieldname;
        R18.datafield:=Fields[26].fieldname;
      end;
    if  Fieldcount>27 then
      begin
        Q19.caption:=Fields[27].fieldname;
        R19.datafield:=Fields[27].fieldname;
      end;
    if  Fieldcount>28 then
      begin
        Q20.caption:=Fields[28].fieldname;
        R20.datafield:=Fields[28].fieldname;
      end;
    if  Fieldcount>29 then
      begin
        Q21.caption:=Fields[29].fieldname;
        R21.datafield:=Fields[29].fieldname;
      end;
    if  Fieldcount>30 then
      begin
        Q22.caption:=Fields[30].fieldname;
        R22.datafield:=Fields[30].fieldname;
      end;
    if  Fieldcount>31 then
      begin
        Q23.caption:=Fields[31].fieldname;
        R23.datafield:=Fields[31].fieldname;
      end;
    if  Fieldcount>32 then
      begin
        Q24.caption:=Fields[32].fieldname;
        R24.datafield:=Fields[32].fieldname;
      end;
    if  Fieldcount>33 then
      begin
        Q25.caption:=Fields[33].fieldname;
        R25.datafield:=Fields[33].fieldname;
      end;
    if  Fieldcount>34 then
      begin
        Q26.caption:=Fields[34].fieldname;
        R26.datafield:=Fields[34].fieldname;
      end;
  end;
  //
  TempSize1.Active:=true;
   with QTemp do
   begin
     active:=false;
    sql.Clear;
    sql.add('if   object_id('+''''+'tempdb..#TotQty1'+''''+')   is  not null  ');
    sql.add('begin  drop table #TotQty1 end');

    sql.add('select * into #TotQty1  from ( ');
    sql.add('select CLBH,XXCC, convert(decimal(18,1),sum(Qty)) as TotQty1 ');
    sql.add('from CGZLSS where CGNO=:CGNO');
    sql.add('group by CLBH,XXCC');
    sql.add('Union all ');
    sql.add('select CLBH,''TotalSum'' as XXCC, convert(decimal(18,1),sum(Qty)) as TotQty1 ');
    sql.add('from CGZLSS where CGNO=:CGNO');
    sql.add('group by CLBH');
    sql.add(')  CGZLSS ');

    sql.add('select  #TotQty1.CLBH');
    sql.add(',max(case when #TotQty1.XXCC=''TotalSum'' ');
    sql.add(' then #TotQty1.TotQty1  end ) as ''TotalSum'' ');
    while not TempSize1.Eof do
      begin
        sql.add(',max(case when #TotQty1.XXCC='+''''+tempSize1.fieldbyname('XXCC').asstring+'''');
        sql.add(' then #TotQty1.TotQty1  end ) as '+''''+tempSize1.fieldbyname('XXCC').asstring+'''');
        TempSize1.Next;
      end;
    sql.add('from #TotQty1') ;
    sql.add('where #TotQty1.CLBH=:CLBH ');
    sql.add('group by #TotQty1.CLBH');
    sql.add('order by #TotQty1.CLBH');
    active:=true;
   end;

   with QTemp do
   begin
      if  Fieldcount>2 then
      begin
         SumR1.DataField:=Fields[2].fieldname;
      end;
      if  Fieldcount>3 then
      begin
         SumR2.DataField:=Fields[3].fieldname;
      end;
      if  Fieldcount>4 then
      begin
         SumR3.DataField:=Fields[4].fieldname;
      end;
      if  Fieldcount>5 then
      begin
         SumR4.DataField:=Fields[5].fieldname;
      end;
      if  Fieldcount>6 then
      begin
         SumR5.DataField:=Fields[6].fieldname;
      end;
      if  Fieldcount>7 then
      begin
         SumR6.DataField:=Fields[7].fieldname;
      end;
      if  Fieldcount>8 then
      begin
         SumR7.DataField:=Fields[8].fieldname;
      end;
      if  Fieldcount>9 then
      begin
         SumR8.DataField:=Fields[9].fieldname;
      end;
      if  Fieldcount>10 then
      begin
         SumR9.DataField:=Fields[10].fieldname;
      end;
      if  Fieldcount>11 then
      begin
         SumR10.DataField:=Fields[11].fieldname;
      end;
      if  Fieldcount>12 then
      begin
         SumR11.DataField:=Fields[12].fieldname;
      end;
      if  Fieldcount>13 then
      begin
         SumR12.DataField:=Fields[13].fieldname;
      end;
      if  Fieldcount>14 then
      begin
         SumR13.DataField:=Fields[14].fieldname;
      end;
      if  Fieldcount>15 then
      begin
         SumR14.DataField:=Fields[15].fieldname;
      end;
      if  Fieldcount>16 then
      begin
         SumR15.DataField:=Fields[16].fieldname;
      end;
      if  Fieldcount>17 then
      begin
         SumR16.DataField:=Fields[17].fieldname;
      end;
      if  Fieldcount>18 then
      begin
         SumR17.DataField:=Fields[18].fieldname;
      end;
      if  Fieldcount>19 then
      begin
         SumR18.DataField:=Fields[19].fieldname;
      end;
      if  Fieldcount>20 then
      begin
         SumR19.DataField:=Fields[20].fieldname;
      end;
      if  Fieldcount>21 then
      begin
         SumR20.DataField:=Fields[21].fieldname;
      end;
      if  Fieldcount>22 then
      begin
         SumR21.DataField:=Fields[22].fieldname;
      end;
      if  Fieldcount>23 then
      begin
         SumR22.DataField:=Fields[23].fieldname;
      end;
      if  Fieldcount>24 then
      begin
         SumR23.DataField:=Fields[24].fieldname;
      end;
      if  Fieldcount>25 then
      begin
         SumR24.DataField:=Fields[25].fieldname;
      end;
      if  Fieldcount>26 then
      begin
         SumR25.DataField:=Fields[26].fieldname;
      end;
      if  Fieldcount>27 then
      begin
         SumR26.DataField:=Fields[27].fieldname;
      end;
   end;

  //20240417
  with TmpQuery do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select LNO From WF_PurchaseList Where CGNO='''+PurSize.CGMas.fieldbyname('CGNO').AsString+''' and flowflag=''Z'' ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if TmpQuery.RecordCount>0 then
  begin
    QApprover.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
    with QApprover do
    begin
      Active := false;
      SQL.Clear;
      //
      SQL.Add('  SELECT MAX(CASE WHEN S_STEP_ID = ''制表'' THEN S_USER_ID END) AS ApplicantID,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''制表'' THEN USERNAME END) AS Applicant,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''制表'' THEN ApproveDate END) AS ApplicantDate,   ');
      SQL.Add('  				MAX(CASE WHEN S_STEP_ID Like ''資材主管%'' THEN S_USER_ID END) AS WarehouseID,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID Like ''資材主管%'' THEN USERNAME END) AS Warehouse,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID Like ''資材主管%'' THEN ApproveDate END) AS WarehouseDate,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''採購主管'' THEN S_USER_ID END) AS PurchaseID,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''採購主管'' THEN USERNAME END) AS Purchase,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''採購主管'' THEN ApproveDate END) AS PurchaseDate,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''協理''  THEN S_USER_ID END) AS APressidentID,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''協理''  THEN USERNAME END) AS APressident,    ');
      SQL.Add('         MAX(CASE WHEN S_STEP_ID = ''協理''  THEN ApproveDate END) AS APressidentDate FROM (    ');
      SQL.Add('             SELECT S_STEP_ID, REPLACE(S_USER_ID, '' '', '''') AS S_USER_ID, USERNAME, ApproveDate, ROW_NUMBER() OVER (ORDER BY ApproveDate) AS Seq   ');
      SQL.Add('  					  FROM (    ');
      SQL.Add('                          SELECT S_STEP_ID, S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) AS ApproveDate,    ');
      SQL.Add('                          ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) DESC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] SYS_TODOHIS  ');
      SQL.Add('                          WHERE FORM_TABLE = ''WF_PurchaseList'' AND FORM_PRESENTATION LIKE ''%'+TmpQuery.fieldbyname('LNO').AsString+'%'' AND STATUS IN (''N'', ''Z'')    ');
      SQL.Add('                          UNION ALL    ');
      SQL.Add('                          SELECT ''制表'', CGZL.UserID COLLATE Chinese_PRC_CI_AS AS UserID,    ');
      SQL.Add('                          BUsers.UserName COLLATE Chinese_PRC_CI_AS AS UserName,    ');
      SQL.Add('                          CGZL.UserDate, 1 FROM  WF_PurchaseList    ');
      SQL.Add('                          LEFT JOIN CGZL ON CGZL.CGNO = WF_PurchaseList.CGNO    ');
      SQL.Add('                          LEFT JOIN BUsers ON BUsers.UserID = CGZL.UserID    ');
      SQL.Add('                          WHERE LNO = '''+TmpQuery.fieldbyname('LNO').AsString+'''    ');
      SQL.Add('                        ) AS ApproveData    ');
      SQL.Add('                        WHERE RowID = 1    ');
      SQL.Add('                       ) AS ApproveData   ');

      //funcObj.WriteErrorLog(sql.Text);
      Active := true;
      if RecordCount>0 then
      begin
        if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ApplicantID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp') then
        begin
          QRImage1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp');
        end;
        //
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('WarehouseID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('WarehouseID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+FieldByName('WarehouseID').AsString+'.bmp') then
        begin
          QRImage2.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('WarehouseID').AsString+'.bmp');
        end;
        //
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('PurchaseID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('PurchaseID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+FieldByName('PurchaseID').AsString+'.bmp') then
        begin
          QRImage3.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('PurchaseID').AsString+'.bmp');
        end;
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\00056.bmp'),Pchar(AppDir+'Images\00056.bmp'),false);
        if FileExists(AppDir+'Images\00056.bmp') then
        begin
          if QApprover.FieldByName('PurchaseDate').AsString<>'' then
          begin
            QRImage4.Picture.LoadFromFile(AppDir+'Images\00056.bmp');
            QRDBText18.Enabled:=true;
          end else
          begin
            QRDBText18.Enabled:=false;
          end;
        end;

      end;
      //Active:=false;
    end;
  end else
  begin
    QR_ApplicantDate.Enabled:=false;
    QRDBText21.Enabled:=false;
    QRDBText20.Enabled:=false;
    QRDBText19.Enabled:=false;
  end;
end;

procedure TPurSizeTW_Print_VN.FormDestroy(Sender: TObject);
begin
  PurSizeTW_Print_VN:=nil;
end;

procedure TPurSizeTW_Print_VN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
