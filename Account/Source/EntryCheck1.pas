unit EntryCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh, EhlibBDE, dateutils, iniFiles;

type
  TEntryCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button3: TButton;
    DBGrid1: TDBGridEh;
    DataSource1: TDataSource;
    Edit5: TEdit;
    Label2: TLabel;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    CBX3: TComboBox;
    Matsite: TQuery;
    Label11: TLabel;
    Label12: TLabel;
    CBX4: TComboBox;
    Label13: TLabel;
    CBX5: TComboBox;
    Label14: TLabel;
    cbInvoice: TComboBox;
    Label15: TLabel;
    Edit8: TEdit;
    Label16: TLabel;
    CBX6: TComboBox;
    Label17: TLabel;
    Edit9: TEdit;
    Label18: TLabel;
    cbYN: TComboBox;
    Query1: TQuery;
    Query1GSBH: TStringField;
    Query1RKNO: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSNO: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CFMDATE: TDateTimeField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1CWHL: TCurrencyField;
    Query1ExchACC: TFloatField;
    Query1CGBH: TStringField;
    Query1RKSB: TStringField;
    Query1CostID: TStringField;
    Query1CKBH: TStringField;
    Query1DOCNO: TStringField;
    Query1invno: TStringField;
    Query1CNO: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    Query1HQName: TStringField;
    Query1Declaretion: TStringField;
    Query1PaQty: TFloatField;
    Query1HGLB: TStringField;
    Query1Export: TStringField;
    Query1RKMEMO: TStringField;
    Query1ZSBH: TStringField;
    Query1FKBH: TStringField;
    Query1DOCDATE: TDateTimeField;
    Button4: TButton;
    Query1CNO1: TStringField;
    Label19: TLabel;
    edtFKBH: TEdit;
    Label20: TLabel;
    edtCGBH: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  //  procedure Query1CalcFields(DataSet: TDataSet);
  private
    AppDir:string;
    { Private declarations }
    procedure ExportDefaultExcel();
    procedure ExportFormatExcel();
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
    IsHide_Warehouse_XT:String;
  end;

var
  EntryCheck: TEntryCheck;

implementation

uses EntryCheck_Print1, main1,fununit;

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TEntryCheck.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  IsHide_Warehouse_XT:='N';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    CBX6.Items.Clear;
    CBX6.Items.Add('ALL');
    CBX6.Items.Add('NK');
    CBX6.Items.Add('TC');
    CBX6.Items.Add('HD');
    CBX6.Items.Add('KD');
    CBX6.Items.Add('GC');
    CBX6.Items.Add('NK1');
    CBX6.Items.Add('TC1');
    CBX6.Items.Add('HD1');
    CBX6.Items.Add('KD1');
    CBX6.Items.Add('H11');
    CBX6.Items.Add('NQ');
    CBX6.Items.Add('NKNQ');
    CBX6.Items.Add('NK+TC+HD+KD');
    CBX6.Items.Add('NK1+TC1+KD1+NQ+NKNQ');
    CBX6.Items.Add('NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.Items.Add('NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.ItemIndex:=0;
  end;
  //
end;
//
procedure TEntryCheck.Button1Click(Sender: TObject);
var sDate,eDate:Tdate;
    i,iYear,iMonth:integer;
    tmpList:TStringlist;
    HGLBSQL:String;
begin
  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  iYear:=strtoint(CBX1.Text);
  iMonth:=strtoint(CBX2.Text);
  if (iYear>2999) or (iYear<1900) then
  begin
    Showmessage('Pls key in right year');
    abort;
  end;
  if (iMonth=0) or (iMonth>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select KCRK.GSBH,KCRK.RKNO,ZSZL.ZSYWJC,KCRK.ZSNO,KCRK.USERDATE,KCRK.CFMDATE,KCRKS.CLBH, ');
    sql.add('       CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,KCRKS.PaQty,KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.CWHL,KCRKS.ExchACC, ');
    sql.add('       KCRKS.CGBH,KCRKS.RKSB,KCRKS.CostID,KCRK.CKBH,KCRK.HGLB,KCRK.DOCNO,KCRKS.invno,KCRKS.CNO, ');
    sql.Add('       Case when KCRK.HGLB =''NK'' then CLHG.UnitC when KCRK.HGLB =''TC'' then CLTC.UnitC when KCRK.HGLB=''HD'' then  CLHD.UnitC');
    sql.Add('            when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.UnitC ');
    sql.Add('            when KCRK.HGLB =''NK1'' then CLHG1.UnitC when KCRK.HGLB =''TC1'' then CLTC1.UnitC when KCRK.HGLB=''HD1'' then  CLHD1.UnitC ');
    sql.Add('            when (KCRK.HGLB=''KD1'' and isnull(kcrks.CNO,'''') <>'''') then CLKD1.UnitC  when KCRK.HGLB =''NQ'' then CLNQ.UnitC ');
    sql.Add('            when KCRK.HGLB=''NKNQ'' then CLNKNQ.UnitC else  NULL end as UnitC, ');
    sql.Add('       Case when KCRK.HGLB =''NK'' then CLHG.RateC when KCRK.HGLB =''TC'' then CLTC.RateC when KCRK.HGLB=''HD'' then  CLHD.RateC');
    sql.Add('            when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.RateC ');
    sql.Add('            when KCRK.HGLB =''NK1'' then CLHG1.RateC when KCRK.HGLB =''TC1'' then CLTC1.RateC when KCRK.HGLB=''HD1'' then  CLHD1.RateC ');
    sql.Add('            when (KCRK.HGLB=''KD1'' and isnull(kcrks.CNO,'''') <>'''') then CLKD1.RateC when KCRK.HGLB=''NQ'' then  CLNQ.RateC ');
    sql.Add('            when KCRK.HGLB=''NKNQ'' then  CLNKNQ.RateC else  NULL end as RateC,');
    sql.Add('       Case when KCRK.HGLB =''NK'' then CLHG.HGPM when KCRK.HGLB =''TC'' then CLTC.HGPM when KCRK.HGLB =''HD''then  CLHD.HGPM');
    sql.Add('            when (KCRK.HGLB =''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.HGPM  ');
    sql.Add('            when KCRK.HGLB =''NK1'' then CLHG1.HGPM when KCRK.HGLB =''TC1'' then CLTC1.HGPM when KCRK.HGLB =''HD1'' then  CLHD1.HGPM');
    sql.Add('            when (KCRK.HGLB =''KD1'' and isnull(kcrks.CNO,'''') <>'''') then CLKD1.HGPM when KCRK.HGLB =''NQ'' then  CLNQ.HGPM ');
    sql.Add('            when KCRK.HGLB =''NKNQ'' then  CLNKNQ.HGPM else  NULL end as HQName,');
    sql.Add('       KCPK.Declaretion,KCPK.Export,KCRKS.RKMemo,KCRK.ZSBH,CWFK.FKBH,KCRK.DOCDATE,KCRKS.CNO1');
    sql.add('from (select * from KCRKS union all select * from KCRKS_2014) KCRKS');
    sql.add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    //sql.Add('left join CLHG on CLHG.CLBH=KCRKS.CLBH and CLHG.HGBH=KCRKS.CNO ');
    sql.Add('left join CLHG on CLHG.CLBH=KCRKS.CLBH and KCRK.HGLB =''NK''');
    sql.Add('left join CLTC on CLTC.CLBH=KCRKS.CLBH and KCRK.HGLB =''TC''');
    sql.Add('left join CLHD on CLHD.CLBH=KCRKS.CLBH and KCRK.HGLB =''HD''');
    sql.Add('left join CLKD on CLKD.CLBH=KCRKS.CLBH and KCRK.HGLB =''KD''');
    sql.Add('left join CLHG1 on CLHG1.CLBH=KCRKS.CLBH and KCRK.HGLB =''NK1''');
    sql.Add('left join CLTC1 on CLTC1.CLBH=KCRKS.CLBH and KCRK.HGLB =''TC1''');
    sql.Add('left join CLHD1 on CLHD1.CLBH=KCRKS.CLBH and KCRK.HGLB =''HD1''');
    sql.Add('left join CLKD1 on CLKD1.CLBH=KCRKS.CLBH and KCRK.HGLB =''KD1''');
    sql.Add('left join CLNQ on CLNQ.CLBH=KCRKS.CLBH and KCRK.HGLB =''NQ''');
    sql.Add('left join CLNKNQ on CLNKNQ.CLBH=KCRKS.CLBH and KCRK.HGLB =''NKNQ''');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH ');
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('left join KCPK on KCPK.PKNO=KCRK.RKNO ');
    sql.Add('left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB ');
    sql.Add('left join CWFK ON CWFK.FKBH=CWYF.FKBH ');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if CBX3.Text<>'' then
    begin
      sql.Add('and KCCK.CKBH ='''+CBX3.text+'''');
    end;
    if edit1.text<>'' then
      sql.add('      and KCRKS.CLBH like '''+edit1.text+'%''');
    if edit2.text<>'' then
      sql.add('      and CLZL.YWPM like ''%'+edit2.text+'%''');
    if edit3.text<>'' then
      sql.add('      and CLZL.YWPM like ''%'+edit3.text+'%'+'''');
    if edit4.text<>'' then
      sql.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%''');
    if Edit9.Text<>'' then
      sql.Add('and KCPK.Export  like '''+Edit9.Text+'%''');
    if edit7.text<>'' then
      sql.add('      and KCRKS.CostID like '''+edit7.text+'%''');
    if edit5.text<>'' then
      sql.add('      and KCRKS.RKNO like '''+edit5.text+'%''');
    if edit6.text<>'' then
      sql.add('      and ZSZL.ZSYWJC like ''%'+edit6.Text+'%''');
    if Edit8.Text<>'' then
      sql.Add('    and KCPK.Declaretion like '''+edit8.text+'%''');
    if edtFKBH.Text <> '' then
      sql.Add('    and CWFK.FKBH like '''+edtFKBH.Text+'%''');
    if edtCGBH.Text <> '' then
      sql.Add('    and KCRKS.CGBH like '''+edtCGBH.Text+'%''');
    //20220312
    if cbYN.Text<> 'ALL' then
    begin
      sql.Add('   and KCRK.YN='''+cbYN.Text+'''');
    end;
    //
    sql.add('      and KCCK.GSBH='''+main.edit2.Text+'''');
    if cbInvoice.Text<>'' then
    begin
      sql.Add('and KCRK.DOCNO like '''+cbInvoice.text+'%''');
    end;
    if CBX6.ItemIndex>0 then
    begin
      if CBX6.ItemIndex>0 then
      begin
        if Pos('+',CBX6.Text)<0 then
        begin
          sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
        end else
        begin
          tmpList:=TStringlist.Create;
          tmpList:=FuncObj.SplitString(CBX6.Text,'+');
          for i:=0 to tmpList.Count-1 do
          begin
            HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
          end;
          HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
          sql.add(' and KCRK.HGLB in '+HGLBSQL+' ');
          tmpList.Free;
        end;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and KCRK.HGLB<>''XT'' ');
   sql.Add('ORDER BY KCRK.RKNO');   
   //funcobj.WriteErrorLog(sql.Text);
   active:=true;
  end;
  // load  combo Invoice
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct DOCNO from KCRK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.Add('and Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    //20220312
    if cbYN.Text<> 'ALL' then
    begin
      //sql.add('      and KCRK.YN='+''''+'5'+'''');
      sql.Add('   and KCRK.YN='''+cbYN.Text+'''');
    end;
    //
    sql.add('order by DOCNO');
    active:=true;
    cbInvoice.Items.Clear;
    while not eof do
    begin
      cbInvoice.Items.Add(fieldbyname('DOCNO').AsString);
      next;
    end;
    active:=false;
  end;
  
end;

procedure TEntryCheck.Button3Click(Sender: TObject);
var i:integer;
begin
  EntryCheck_Print:=TEntryCheck_Print.create(self);
  EntryCheck_Print.quickrep1.prepare;
  i:=EntryCheck_Print.quickrep1.qrprinter.pagecount;
  EntryCheck_Print.page1.caption:=inttostr(i);
  EntryCheck_Print.quickrep1.preview;
  EntryCheck_Print.free;
end;

procedure TEntryCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntryCheck.ExportDefaultExcel();
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for i:=0 to DBGrid1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGrid1.Columns[i].Title.Caption;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGrid1.Columns.Count-1 do
      begin
        eclApp.Cells[j,i+8].NumberFormatLocal:='@';
        eclApp.Cells(j,i+2):=DBGrid1.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+2].font.size:='8';
      end;
      query1.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TEntryCheck.ExportFormatExcel();
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN172.xls'),Pchar(AppDir+'Additional\Account_SN172.xls'),false);
   if FileExists(AppDir+'Additional\Account_SN172.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        eclApp.DisplayAlerts := False;
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN172.xls');
        eclApp.WorkSheets[1].Activate;
        eclApp.Cells(2,10):=cbInvoice.Text;
        eclApp.Cells(1,12):=query1.FieldByName('USERDATE').Value;
        eclApp.Cells(7,12):=query1.FieldByName('CWHL').Value;

        Query1.First;
        j:=10;
        for i:=1 to Query1.RecordCount do
        begin
          eclApp.Cells(j,1):=inttostr(i);
          eclApp.Cells(j,2):=Query1.FieldByName('CKBH').Value;
          eclApp.Cells(j,3):=Query1.FieldByName('RKNO').Value;
          eclApp.Cells(j,4):=Query1.FieldByName('CLBH').Value;
          eclApp.Cells(j,5):=Query1.FieldByName('YWPM').Value;
          eclApp.Cells(j,6):=Query1.FieldByName('CNO').Value;
          eclApp.Cells(j,9):=Query1.FieldByName('DWBH').Value;
          eclApp.Cells(j,10):=Query1.FieldByName('PaQty').Value;
          eclApp.Cells(j,11):=Query1.FieldByName('Qty').Value;
          eclApp.Cells(j,12):=Query1.FieldByName('USPrice').Value;
          eclApp.Cells(j,13):=Query1.FieldByName('USACC').Value;
          Query1.Next;
          inc(j);
        end;
        eclApp.Cells(i+9,5):= 'TOTAL TONG CONG';
        eclApp.Cells[i+9,10].Formula:='=SUM(J10:J'+inttostr(i+8)+')';
        eclApp.Cells[i+9,11].Formula:='=SUM(K10:K'+inttostr(i+8)+')';
        eclApp.Cells[i+9,13].Formula:='=SUM(M10:M'+inttostr(i+8)+')';

        eclApp.Cells(i+11,1):= 'GIAM DOC XUONG';
        eclApp.Cells(i+11,5):= 'CQ THU MUA                                        NV THU MUA';
        eclApp.Cells(i+11,6):= 'CQ KHO';
        eclApp.Cells(i+11,9):= 'NV KHO';
        eclApp.Cells(i+11,12):= 'LAP BIEU';

        eclApp.Cells(i+12,1):= '廠經理';
        eclApp.Cells(i+12,5):= '     採購主管                                               採購職員';
        eclApp.Cells(i+12,6):= '倉庫主管';
        eclApp.Cells(i+12,9):= '倉庫職員';
        eclApp.Cells(i+12,12):= '製表';

        eclApp.Range[eclApp.Cells[i+11,1],eclApp.Cells[i+11,3]].merge;
        eclApp.Range[eclApp.Cells[i+11,6],eclApp.Cells[i+11,7]].merge;
        eclApp.Range[eclApp.Cells[i+11,9],eclApp.Cells[i+11,10]].merge;
        eclApp.Range[eclApp.Cells[i+11,12],eclApp.Cells[i+11,13]].merge;

        eclApp.Range[eclApp.Cells[i+12,1],eclApp.Cells[i+12,3]].merge;
        eclApp.Range[eclApp.Cells[i+12,6],eclApp.Cells[i+12,7]].merge;
        eclApp.Range[eclApp.Cells[i+12,9],eclApp.Cells[i+12,10]].merge;
        eclApp.Range[eclApp.Cells[i+12,12],eclApp.Cells[i+12,13]].merge;
        eclApp.Range[eclApp.Cells[i+9,1],eclApp.Cells[i+12,13]].font.Bold:=true;
        // add outline
        for k:=1 to 4 do
        begin
           eclApp.range[eclApp.cells[10,1],eclApp.cells[i+9,13]].borders[k].linestyle:=1;
        end;
          //
        //eclapp.columns.autofit;
        showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
        showmessage(F.Message);
      end;
   end;
end;


procedure TEntryCheck.Button2Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     ExportFormatExcel();
  end else
  begin
    ExportDefaultExcel();
  end;
end;

procedure TEntryCheck.FormDestroy(Sender: TObject);
begin
  EntryCheck:=nil;
end;

procedure TEntryCheck.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX3.Items.Clear;
    while not eof do
      begin
        CBX3.Items.Add(fieldbyname('CKBH').AsString);
        next;
      end;
    active:=false;
  end;
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      CBX4.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i-1;
      CBX5.ItemIndex:=i-1;
      break;
    end;
  end;
  AppDir:=ExtractFilePath(Application.ExeName);
  readini();
end;

procedure TEntryCheck.CBX1Change(Sender: TObject);
begin
  CBX4.Text:=CBX1.Text;
end;

procedure TEntryCheck.CBX2Change(Sender: TObject);
begin
  CBX5.Text:=CBX2.Text;
end;

procedure TEntryCheck.Button4Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
  sDate,eDate:Tdate;
  tmpList:TStringlist;
  HGLBSQL:String;
begin
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));
  with Matsite do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select KCRK.GSBH,Convert(date,convert(varchar,KCRK.USERDate,111)) as UserDate,KCRK.ZSBH,KCRKS.CWHL,sum(KCRKS.USACC) as USACC,sum(KCRKS.VNACC) as VNACC,KCRK.RKNO ');
    sql.Add('		,case when KCRK.HGLB in (''NK'',''TC'',''KD'') then KCPK.Declaretion else KCRK.DOCNO end as ''SO TK/HD'',KCRK.HGLB,ZSZL.ZSYWJC ');
    sql.add('from (select * from KCRKS union all select * from KCRKS_2014) KCRKS');
    sql.add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH ');
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('left join KCPK on KCPK.PKNO=KCRK.RKNO ');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if CBX3.Text<>'' then
    begin
      sql.Add('and KCCK.CKBH ='''+CBX3.text+'''');
    end;
    if edit1.text<>'' then
      sql.add('      and KCRKS.CLBH like '''+edit1.text+'%''');
    if edit2.text<>'' then
      sql.add('      and CLZL.YWPM like ''%'+edit2.text+'%''');
    if edit3.text<>'' then
      sql.add('      and CLZL.YWPM like ''%'+edit3.text+'%'+'''');
    if edit4.text<>'' then
      sql.add('      and isnull(KCZLS.CWBH,'''') like '''+edit4.text+'%''');
    if Edit9.Text<>'' then
      sql.Add('and KCPK.Export  like '''+Edit9.Text+'%''');
    if edit7.text<>'' then
      sql.add('      and KCRKS.CostID like '''+edit7.text+'%''');
    if edit5.text<>'' then
      sql.add('      and KCRKS.RKNO like '''+edit5.text+'%''');
    if edit6.text<>'' then
      sql.add('      and ZSZL.ZSYWJC like ''%'+edit6.Text+'%''');
    if Edit8.Text<>'' then
      sql.Add('    and KCPK.Declaretion like '''+edit8.text+'%''');
    //20220312
    if cbYN.Text<> 'ALL' then
    begin
      sql.Add('   and KCRK.YN='''+cbYN.Text+'''');
    end;
    //
    sql.add('      and KCCK.GSBH='''+main.edit2.Text+'''');
    if cbInvoice.Text<>'' then
    begin
      sql.Add('and KCRK.DOCNO like '''+cbInvoice.text+'%''');
    end;
    if CBX6.ItemIndex>0 then
    begin
      if CBX6.ItemIndex>0 then
      begin
        if Pos('+',CBX6.Text)<0 then
        begin
          sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
        end else
        begin
          tmpList:=TStringlist.Create;
          tmpList:=FuncObj.SplitString(CBX6.Text,'+');
          for i:=0 to tmpList.Count-1 do
          begin
            HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
          end;
          HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
          sql.add(' and KCRK.HGLB in '+HGLBSQL+' ');
          tmpList.Free;
        end;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and KCRK.HGLB<>''XT'' ');
   sql.Add('GROUP BY KCRK.GSBH,Convert(date,convert(varchar,KCRK.USERDate,111)),KCRK.ZSBH,KCRKS.CWHL,KCRK.RKNO ');
   sql.Add('		    ,case when KCRK.HGLB in (''NK'',''TC'',''KD'') then KCPK.Declaretion else KCRK.DOCNO end,KCRK.HGLB,ZSZL.ZSYWJC');
   sql.Add('ORDER BY KCRK.RKNO');
   //funcobj.WriteErrorLog(sql.Text);
   active:=true;
  end;
  if Matsite.Active then
  begin
    if Matsite.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    for   i:=0   to   Matsite.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=Matsite.fields[i].FieldName;
    end;
    Matsite.First;
    j:=2;
    while   not  Matsite.Eof   do
    begin
      for   i:=0   to   Matsite.fieldcount-1   do
      begin
        eclApp.Cells(j,i+1):=Matsite.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
      end;
      Matsite.Next;
      inc(j);
    end;
    eclapp.columns.autofit;   
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

end.
