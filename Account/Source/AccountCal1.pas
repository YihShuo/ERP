unit AccountCal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, DBTables, Mask, DBCtrls ,
  dateutils,comobj, PrnDbgeh, GridsEh, DBGridEh, EhlibBDE ,iniFiles;

type
  TAccountCal = class(TForm)
    Panel1: TPanel;
    BT2: TButton;
    BT5: TButton;
    BT6: TButton;
    BT7: TButton;
    BT8: TButton;
    BT9: TButton;
    DBGrid1: TDBGridEh;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Entry: TQuery;
    EntryRKNO: TStringField;
    EntryUSERDATE: TDateTimeField;
    EntryCLBH: TStringField;
    EntryYWPM: TStringField;
    EntryDWBH: TStringField;
    EntryQty: TCurrencyField;
    EntryUSPrice: TCurrencyField;
    DS2: TDataSource;
    BT3: TButton;
    BT4: TButton;
    BT10: TButton;
    BT1: TButton;
    Stock: TQuery;
    DS1: TDataSource;
    StockCLDH: TStringField;
    StockCLLB: TStringField;
    StockYWPM: TStringField;
    StockDWBH: TStringField;
    StockLastRem: TFloatField;
    StockRKQty: TFloatField;
    StockQty: TFloatField;
    StockLLQty: TFloatField;
    StockJGRK: TFloatField;
    StockJGCK: TFloatField;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Extra: TQuery;
    DS3: TDataSource;
    ExtraJGNO: TStringField;
    ExtraCFMDATE1: TDateTimeField;
    ExtraCLBH: TStringField;
    ExtraYWPM: TStringField;
    ExtraDWBH: TStringField;
    ExtraQty: TCurrencyField;
    ExtraUSPrice: TCurrencyField;
    Deliver: TQuery;
    DS4: TDataSource;
    DeliverLLNO: TStringField;
    DeliverCFMDATE: TDateTimeField;
    DeliverCLBH: TStringField;
    DeliverYWPM: TStringField;
    DeliverDWBH: TStringField;
    DeliverQty: TCurrencyField;
    DeliverSCBH: TStringField;
    DeliverCostID: TStringField;
    EntryCostID: TStringField;
    DS5: TDataSource;
    VNPrice: TQuery;
    DS7: TDataSource;
    Extraprice: TQuery;
    DS8: TDataSource;
    ExtrapriceJGNO: TStringField;
    ExtrapriceCFMDate1: TDateTimeField;
    ExtrapriceCLBH: TStringField;
    ExtrapriceQty: TCurrencyField;
    ExtrapriceUSPrice: TCurrencyField;
    ExtrapriceYWPM: TStringField;
    ExtrapriceDWBH: TStringField;
    DelPrice: TQuery;
    Ptemp: TQuery;
    DelPrice2: TQuery;
    DS9: TDataSource;
    Write: TQuery;
    DS10: TDataSource;
    ExtraCFMDATE2: TDateTimeField;
    Button4: TButton;
    EntryVNPrice: TFloatField;
    EntryUSACC: TCurrencyField;
    EntryVNACC: TFloatField;
    ExtraUSACC: TCurrencyField;
    ExtraVNPrice: TFloatField;
    ExtraVNACC: TFloatField;
    DelPriceCLBH: TStringField;
    DelPriceYWPM: TStringField;
    DelPriceDWBH: TStringField;
    ExtrapriceVNPrice: TFloatField;
    ExtrapriceCLPrice: TCurrencyField;
    DelPrice2CLBH: TStringField;
    DelPrice2YWPM: TStringField;
    DelPrice2DWBH: TStringField;
    WriteKCYEAR: TStringField;
    WriteKCMONTH: TStringField;
    WriteCLBH: TStringField;
    WriteQTY: TCurrencyField;
    WriteUSPrice: TCurrencyField;
    WriteYWPM: TStringField;
    WriteDWBH: TStringField;
    CWHL_old: TTable;
    EntryYN: TStringField;
    EntryCFMDate: TDateTimeField;
    ExtraYN: TStringField;
    DeliverYN: TStringField;
    ExtrapriceCLACC: TFloatField;
    StockCKBH: TStringField;
    EntryCKBH: TStringField;
    ExtraCKBH: TStringField;
    DeliverCKBH: TStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    WriteCKBH: TStringField;
    ExtrapriceCKBH: TStringField;
    DelPrice2CKBH: TStringField;
    DelPriceCKBH: TStringField;
    DelPriceLastQty: TCurrencyField;
    DelPriceLastACC: TFloatField;
    DelPriceRKQty: TCurrencyField;
    DelPriceRKACC: TFloatField;
    DelPriceTotQty: TCurrencyField;
    DelPriceTotACC: TFloatField;
    DelPriceJGQty: TCurrencyField;
    DelPriceJGACC: TFloatField;
    DelPriceJGCKQty: TCurrencyField;
    DelPriceJGCKACC: TFloatField;
    DelPriceCKQty: TCurrencyField;
    DelPriceCKACC: TFloatField;
    DelPriceTotPrice: TCurrencyField;
    DelPrice2LastQty: TCurrencyField;
    DelPrice2LastACC: TFloatField;
    DelPrice2RKQty: TCurrencyField;
    DelPrice2RKACC: TFloatField;
    DelPrice2TotQty: TCurrencyField;
    DelPrice2TotACC: TFloatField;
    DelPrice2JGQty: TCurrencyField;
    DelPrice2JGACC: TFloatField;
    DelPrice2JGCKQty: TCurrencyField;
    DelPrice2JGCKACC: TFloatField;
    DelPrice2CKQty: TCurrencyField;
    DelPrice2CKACC: TFloatField;
    DelPrice2TotPrice: TCurrencyField;
    DelPrice2RemQty: TFloatField;
    DelPrice2RemACC: TFloatField;
    CLHG: TQuery;
    BT11: TButton;
    DS11: TDataSource;
    WriteHG: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    StringField6: TStringField;
    WriteHGHGLB: TStringField;
    BT12: TButton;
    KCCLHGBH: TQuery;
    DS12: TDataSource;
    KCCLHGBH_CK: TQuery;
    DS13: TDataSource;
    KCCLHGBHKCYEAR: TStringField;
    KCCLHGBHKCMONTH: TStringField;
    KCCLHGBHCKBH: TStringField;
    KCCLHGBHCLBH: TStringField;
    KCCLHGBHHGLB: TStringField;
    KCCLHGBHCNO: TStringField;
    KCCLHGBHQty: TFloatField;
    KCCLHGBHYWPM: TStringField;
    KCCLHGBHDWBH: TStringField;
    WriteHGCWHL: TCurrencyField;
    WriteHGVNPrice: TCurrencyField;
    WriteHGVNACC: TCurrencyField;
    WriteCWHL: TCurrencyField;
    WriteVNPrice: TCurrencyField;
    WriteVNACC: TCurrencyField;
    CWHL_oldHLYEAR: TStringField;
    CWHL_oldHLMONTH: TStringField;
    CWHL_oldCWHL: TCurrencyField;
    CWHL_oldUSERDATE: TDateTimeField;
    CWHL_oldUSERID: TStringField;
    CWHL_oldYN: TStringField;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit5: TEdit;
    Button2: TButton;
    Button3: TButton;
    edtCWHL: TEdit;
    CWHL: TQuery;
    ToKhaiBtn: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BT2Click(Sender: TObject);
    procedure BT1Click(Sender: TObject);
    procedure BT3Click(Sender: TObject);
    procedure BT4Click(Sender: TObject);
    procedure BT5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BT6Click(Sender: TObject);
    procedure BT7Click(Sender: TObject);
    procedure BT8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BT9Click(Sender: TObject);
    procedure BT10Click(Sender: TObject);
    procedure WriteCalcFields(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BT11Click(Sender: TObject);
    procedure BT12Click(Sender: TObject);
    procedure ToKhaiBtnClick(Sender: TObject);
  private
    ToKhaiBtn_CKBH:String;
    { Private declarations }
    procedure BT7_CLHG();
    procedure BT8_CLHG();
    procedure BT9_CLHG();
    procedure BT10_CLHG();
    //
    procedure BT7_CLHG_V2();
    procedure BT8_CLHG_V2();
    procedure BT9_CLHG_V2();
    procedure BT10_CLHG_V2();
    //
    procedure CalCulate_HG();
    //
    function CheckKCCLHGBH_CK():boolean;
    procedure readini();
    procedure Cal_KCPKLL();
    procedure Cal_KCPKLL_HGLB(HGLB:string);
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  AccountCal: TAccountCal;
  sdate,edate,NDate:Tdate;
  exchange,i:integer;
  ayear,amonth:string;


implementation

uses AccountCal_entry1, main1, AccountStock_print1, FunUnit;

{$R *.dfm}
procedure TAccountCal.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0.00';
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
      //
      ToKhaiBtn_CKBH:=MyIni.ReadString('ERP','Account_N16_ToKhai_CKBH','''CDC'',''CDT'',''BYC'',''BYT'',''CBY'',''SDC'',''SDT'',''SRC'',''VA12'',''VTXW''');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Write.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Write.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Write.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(WriteHG.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(WriteHG.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(WriteHG.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  //TCurrencyField(CWHL.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Stock.FieldByName('LastRem')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Stock.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Stock.FieldByName('LLQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Stock.FieldByName('JGRK')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Stock.FieldByName('JGCK')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Stock.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Stock.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Entry.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Extra.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Deliver.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice.FieldByName('LastQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice.FieldByName('JGQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice.FieldByName('TotQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice.FieldByName('CKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice.FieldByName('JGCKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice2.FieldByName('LastQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice2.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice2.FieldByName('JGQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice2.FieldByName('TotQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice2.FieldByName('CKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelPrice2.FieldByName('JGCKQty')).DisplayFormat:=WH_DiplayFormat;
  //
  TCurrencyField(Extraprice.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Write.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(WriteHG.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  //
end;

procedure TAccountCal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  free;
end;

procedure TAccountCal.BT2Click(Sender: TObject);
var y,m:word;
begin
  try
    if (CBX1.text='')or (CBX2.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
    y:=strtoint(CBX1.Text);
    m:=strtoint(CBX2.Text);
    if (y>2999) or (y<1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (y<2008) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (m=0) or (m>12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
    sdate:=encodedate(y,m,1);
    edate:=endofthemonth(sdate);
   
    DBGrid1.DataSource:=DS2;
    with entry do
    begin
      active:=false;
      sql.Clear;
      {sql.add('update KCRK ');     //將沒有入庫明細的表格處理掉，以免影響後續問題
      sql.add('set YN=''5'',CFMID='''+main.Edit1.Text+''',CFMDATE=GetDate() ');
      sql.add('where not exists(select KCRKS.RKNO from KCRKS where KCRK.RKNO=KCRKS.RKNO) ');
      sql.add('                        and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      sql.add('                        '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+'''');  }    //20221019 account department request
      sql.add('select KCRK.CKBH,KCRK.RKNO,KCRK.USERDATE,KCRKS.CLBH,KCRK.YN,KCRK.CFMDate,');
      sql.add('       CLZL.YWPM,CLZL.DWBH,KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.CostID');
      sql.add('from KCRK,KCRKS');
      sql.add('left join CLZL on CLZl.CLDH=KCRKS.CLBH');
      sql.add('where KCRK.RKNO=KCRKS.RKNO');
      sql.add('      and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('      and KCRK.YN<>''5'' ');
      sql.add('order by KCRK.CKBH,KCRk.RKNO');
      active:=true;
      DBGrid1.columns[0].width:=75;
      DBGrid1.columns[1].width:=75;
      DBGrid1.columns[2].width:=80;
      DBGrid1.columns[3].width:=350;
      DBGrid1.columns[4].width:=35;
      DBGrid1.columns[5].width:=50;
      DBGrid1.columns[6].width:=50;
      DBGrid1.columns[7].width:=50;
      DBGrid1.columns[8].width:=60;
      DBGrid1.columns[9].width:=70;
      DBGrid1.columns[10].width:=40;
      DBGrid1.columns[11].width:=20;
      DBGrid1.columns[12].width:=75;
      DBGrid1.columns[13].width:=40;
      if recordcount=0 then
      begin
        edit2.Text:='1';
      end;
      //button1.Enabled:=false;
    end;
  except
    showmessage('Have wrong.')
  end;
  CBX1.Enabled:=false;
  CBX2.Enabled:=false;
end;

procedure TAccountCal.BT1Click(Sender: TObject);
var  y,m:word;
begin
  try
    if (CBX1.text='')or (CBX2.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
    y:=strtoint(CBX1.Text);
    m:=strtoint(CBX2.Text);
    // don't allow calculate  < 2017/06
    if (y<=2017) and (m<=6) then
    begin
      showmessage('Do not allow calculate < 2017/06');
      abort;
    end;
    if (y>2999) or (y<1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (y<2008) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (m=0) or (m>12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
    sdate:=encodedate(y,m,1);
    edate:=endofthemonth(sdate);


    if strtoint(CBX2.Text)>1  then
    begin
      amonth:=inttostr(strtoint(CBX2.Text)-1);
      ayear:=CBX1.Text;
    end else
    begin
        amonth:='12';
        ayear:=inttostr(strtoint(CBX1.Text)-1);
    end;
    if  length(amonth)<2  then
    begin
      amonth:='0'+amonth;
    end;
    DBGrid1.DataSource:=DS1;
    with stock do
    begin
      active:=false;
      sql.Clear;
      sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
      sql.add('begin   drop table #CLZLKC end   ');

      sql.Add('select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.DWBH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,KCZLS.CKBH');
      sql.add(' into #CLZLKC from CLZL  ');

      sql.add('left join KCZLS on KCZLS.CLBH=CLZl.CLDH ');

      sql.add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
      sql.add('           from KCCLMONTH  where KCCLMONTH.KCYEAR='+''''+ayear+'''');
      sql.add('                                 and KCMONTH='+''''+amonth+'''');
      sql.add('           ) LastKC on LastKC.CLBH=CLZL.CLDH and LastKC.CKBH=KCZLS.CKBH');

      sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS');
      sql.add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ') ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+'and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('           group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH and RK.CKBH=KCZLS.CKBH ');

      sql.add('left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
      sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ')   ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('           and KCLL.CFMDATE is not null');
      sql.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' '); //20170822 khong bao gom xuat vat tu gia cong
      sql.add('           group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH and LL.CKBH=KCZLS.CKBH');

      sql.add('left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS');
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                 and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('                 and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH and JGRK.CKBH=KCZLS.CKBH');

      sql.add('left join (select JGZl.CKBH,JGZLS.ZMLB,sum(JGZLS.Qty*JGZLM.Qty) as JGCK from JGZLS');
      sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
      sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
      sql.add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('                            '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'' and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('                            and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('                      )JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
      sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'' and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('                 and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
      sql.add('           group by JGZL.CKBH,JGZLS.ZMLB ');
      //20170822 sua xuat vat tu gia cong
      sql.Add('           union all');
      sql.Add('           Select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
      sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      sql.add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ')   ;
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
      sql.add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01'' and KCLL.CFMDATE is not null');
      sql.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' ');
      sql.add('           group by KCLL.CKBH,KCLLS.CLBH ) JGCK on JGCK.ZMLB=CLZL.CLDH and JGCK.CKBH=KCZLS.CKBH');
      //

      sql.add('select #CLZLKC.CLDH,#CLZLKC.CLLB,#CLZLKC.YWPM,#CLZLKC.DWBH,isnull(#CLZLKC.LastRem,0) as LastRem,');
      sql.add('       isnull(#CLZLKC.RKQty,0) as RKQty,isnull(#CLZLKC.LLQty,0) as LLQty,');
      sql.add('       isnull(#CLZLKC.JGRK,0) as JGRK,isnull(#CLZLKC.JGCK,0) as JGCK,');
      sql.add('       isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0) as Qty');
      sql.add('       ,#CLZLKC.CKBH ');
      sql.add(' from #CLZLKC ');
      sql.add(' where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null)');
      sql.add('       and (isnull(#CLZLKC.LastRem,0)+isnull(#CLZLKC.RKQty,0)-isnull(#CLZLKC.LLQty,0)+isnull(#CLZLKC.JGRK,0)-isnull(#CLZLKC.JGCK,0))<0  ');
      sql.add('order by #CLZLKC.CKBH,#CLZLKC.CLDH  ');
      active:=true;
      DBGrid1.columns[0].width:=75;
      DBGrid1.columns[1].width:=30;
      DBGrid1.columns[2].width:=350;
      DBGrid1.columns[3].width:=35;
      DBGrid1.columns[4].width:=50;
      DBGrid1.columns[5].width:=50;
      DBGrid1.columns[6].width:=50;
      DBGrid1.columns[7].width:=50;
      DBGrid1.columns[8].width:=50;
      DBGrid1.columns[9].width:=50;
      DBGrid1.columns[10].width:=40;
      if recordcount=0 then
      begin
        edit1.Text:='1';
      end;
    end;
    
    //button1.Enabled:=true;
  except
   showmessage('Have wrong.');
  end;
  CBX1.Enabled:=false;
  CBX2.Enabled:=false;
  button4.Enabled:=true;
  BT11.Enabled:=true;
  BT12.Enabled:=true;
end;

procedure TAccountCal.BT3Click(Sender: TObject);
var y,m:word;
begin
  try
    if (CBX1.text='')or (CBX2.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
    y:=strtoint(CBX1.Text);
    m:=strtoint(CBX2.Text);
    if (y>2999) or (y<1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (y<2008) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (m=0) or (m>12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
    sdate:=encodedate(y,m,1);
    edate:=endofthemonth(sdate);

    DBGrid1.DataSource:=DS3;
    with Extra do
    begin
      active:=false;
      sql.Clear;
      sql.add('update JGZL ');            //將沒有加工明細的表格處理掉，以免影響後續問題
      sql.add('set YN=''5'',CFMID1='''+main.Edit1.Text+''',CFMDATE1=GetDate() ');
      sql.add('where not exists(select JGZLS.JGNO from JGZLS where JGZL.JGNO=JGZLS.JGNO) ');
      sql.add('      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+'''');
      //廠內加工的部分也要處理為確認狀態
      {sql.add('update JGZL ');
      sql.add('set CFMID2='+''''+main.Edit1.Text+'''');
      sql.add(',CFMDate2='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
      sql.add(',YN='+''''+'5'+'''');
      sql.add('where JGZL.JGLX='+''''+'1'+'''');
      sql.add('and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
      sql.add(''''+formatdatetime('yyyy/mm/dd',sdate)+'''');
      sql.add(' and '+''''+ formatdatetime('yyyy/mm/dd',edate)+'''');  }

      sql.add('select JGZL.CKBH,JGZL.JGNO,JGZL.CFMDATE1,JGZL.CFMDATE2,JGZLS.CLBH,CLZL.YWPM,CLZL.DWBH');
      sql.add('       ,JGZLS.Qty,JGZLS.USPrice,JGZLS.USACC,JGZLS.VNPrice,JGZLS.VNACC,JGZL.YN');
      sql.add('from JGZL,JGZLS');
      sql.add('left join CLZL on CLZl.CLDH=JGZLS.CLBH');
      sql.add('where JGZL.JGNO=JGZLS.JGNO');
      sql.add('      and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('      and JGZL.YN<>''5'' ');
      //sql.add('      and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('      and JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
      sql.add('order by JGZL.CKBH,JGZL.JGNO');
      active:=true;
      DBGrid1.columns[0].width:=75;
      DBGrid1.columns[1].width:=75; 
      DBGrid1.columns[2].width:=75;
      DBGrid1.columns[3].width:=80;
      DBGrid1.columns[4].width:=350;
      DBGrid1.columns[5].width:=35;
      DBGrid1.columns[6].width:=50;
      DBGrid1.columns[7].width:=50;
      DBGrid1.columns[8].width:=50;
      DBGrid1.columns[9].width:=60;
      DBGrid1.columns[10].width:=70;
      DBGrid1.columns[11].width:=20;
      DBGrid1.columns[12].width:=40;
      if recordcount=0 then
      begin
        edit3.Text:='1';
      end;
      //button1.Enabled:=false;
    end;
  except
    showmessage('Have wrong.')
  end;
  CBX1.Enabled:=false;
  CBX2.Enabled:=false;
end;

procedure TAccountCal.BT4Click(Sender: TObject);
var y,m:word;
begin
  try
    if (CBX1.text='')or (CBX2.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
    y:=strtoint(CBX1.Text);
    m:=strtoint(CBX2.Text);
    if (y>2999) or (y<1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end; 
    if (y<2008) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (m=0) or (m>12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
    sdate:=encodedate(y,m,1);
    edate:=endofthemonth(sdate);
           
    DBGrid1.DataSource:=DS4;
    with deliver do
    begin
      active:=false;
      sql.Clear;  
      {sql.add('update KCLL ');            //將沒有加工明細的表格處理掉，以免影響後續問題
      sql.add('set YN=''5'',CFMID='''+main.Edit1.Text+''',CFMDATE=GetDate() ');
      sql.add('where not exists(select KCLLS.LLNO from KCLLS where KCLL.LLNO=KCLLS.LLNO) ');
      sql.add('      and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''''); } //20221019 account department request

      sql.add('select KCLL.CKBH,KCLL.LLNO,KCLL.CFMDATE,KCLLS.CLBH,KCLL.YN,');
      sql.add('       CLZL.YWPM,CLZL.DWBH,KCLLS.Qty,KCLLS.SCBH,KCLLS.CostID');
      sql.add('from KCLL,KCLLS');
      sql.add('left join CLZL on CLZl.CLDH=KCLLS.CLBH');
      sql.add('where KCLL.LLNO=KCLLS.LLNO');
      sql.add('      and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
      sql.add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('      and KCLL.YN<>''5'' ');
      //sql.add('      and KCLL.CFMID<>'+''''+'NO'+'''');
      sql.add('order by KCLL.CKBH,KCLL.LLNO');
      active:=true;
      DBGrid1.columns[0].width:=75;
      DBGrid1.columns[1].width:=75;
      DBGrid1.columns[2].width:=80;
      DBGrid1.columns[3].width:=350;
      DBGrid1.columns[4].width:=35;
      DBGrid1.columns[5].width:=50;
      DBGrid1.columns[6].width:=75;
      DBGrid1.columns[7].width:=40;
      DBGrid1.columns[8].width:=20;
      DBGrid1.columns[9].width:=40;
      if recordcount=0 then
      begin
        edit4.Text:='1';
      end;
      //button1.Enabled:=false;
    end;
  except
    showmessage('Have wrong.')
  end;
  CBX1.Enabled:=false;
  CBX2.Enabled:=false;
end;

procedure TAccountCal.BT5Click(Sender: TObject);
begin
  if (edit1.text<>'1')  then
  begin
    showmessage('Pls check Stock first.');
    abort;
  end;  
  if  (edit2.text<>'1')  then
  begin
    showmessage('Pls check Entry first.');
    abort;
  end;
  if  (edit3.text<>'1')  then
  begin
    showmessage('Pls check Extra first.');
    abort;
  end;
  if  (edit4.text<>'1') then
  begin
    showmessage('Pls check Deliver first.');
    abort;
  end;
  Stock.Active:=false;
  entry.Active:=false;
  extra.Active:=false;
  deliver.Active:=false;
  with ptemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CWHLS ');
    sql.add('where HLYEAR='+''''+CBX1.Text+'''');
    sql.add('      and HLMONTH='+''''+CBX2.Text+'''');
    active:=true;
    TCurrencyField(FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
    if recordcount<>daysinmonth(sdate) then
    begin
        showmessage('Your quantity of exchange rate is not enough. Pls check !');
        abort;
    end;
    active:=false;
    sql.Clear;
    sql.Add('select  CLBH from CWCLZL');
    sql.add('where KCYEAR='+''''+CBX1.Text+'''');
    sql.add('      and KCMONTH='+''''+CBX2.Text+'''');
    //sql.add(' order by  DESC');
    active:=true;
    if (recordcount>0)  then
    begin
       if messagedlg('Already done '+CBX1.text+'/'+CBX2.text+#13+'Do you want to calculate this month again?',mtconfirmation,[mbYes,mbNo],0)=mryes then
       begin
            active:=false;
            sql.Clear;
            sql.add('update KCLLS ');        //交當月的出庫單價恢復為空值，進行運算
            sql.add('set VNPrice=null ');
            sql.add('where exists(select KCLL.LLNO from KCLL ');
            sql.add('             where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
            sql.add('                   '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
            sql.add('                   and KCLLS.LLNO=KCLL.LLNO ) ');
            sql.add('update JGZLS ');
            sql.add('set CLPrice=null ');   //交當月的加工材料單價恢復為空值，進行運算
            sql.add('where exists(select JGZL.JGNO from JGZL ');
            sql.add('             where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
            sql.add('                   '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
            sql.add('                   and JGZLS.JGNO=JGZL.JGNO ) ');
                                             //刪除因單價引起的有金額無數量的出庫單
            sql.add('delete KCLL where LLNO like'+''''+CBX1.Text+CBX2.Text+'999%'+'''');
            sql.add('delete KCLLS where LLNO like'+''''+CBX1.Text+CBX2.Text+'999%'+'''');
            sql.add('select * from KCLLS  where LLNO like'+''''+CBX1.Text+CBX2.Text+'999%'+'''');
            active:=true;
       end else
       begin
           showmessage('Abort.');
           abort;
       end;
    end;
  end;
  Stock.Active:=false;
  entry.Active:=false;
  extra.Active:=false;
  deliver.Active:=false;
  if (edit1.text='1') and (edit2.text='1') and (edit3.text='1') and (edit4.text='1') then
  begin
    {CWHL.Active:=true;
    if not CWHL.Locate('HLYEAR;HLMONTH',vararrayof([CBX1.text,CBX2.Text]),[]) then
    begin
      CWHL.Insert;
    end else
    begin
      BT5.Enabled:=false;
      BT6.Enabled:=true;
    end; }
    with CWHL do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT HLYEAR, HLMONTH, CWHL, USERDATE, USERID, YN FROM CWHL WHERE HLYEAR=''' + CBX1.Text + ''' AND HLMONTH=''' + CBX2.Text + '''');
      Open;
      if not Eof then
      begin
        edtCWHL.Text := FieldByName('CWHL').AsString;
        BT5.Enabled := False;
        BT6.Enabled := True;
      end
      else
        edtCWHL.Text := '';
      //
      Close;
      SQL.Clear;
      SQL.Add('SELECT HLYEAR, HLMONTH, CWHL, USERDATE, USERID, YN FROM CWHL order by HLYEAR desc');
      Open;
    end;
    TCurrencyField(CWHL.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
    CWHL.Locate('HLYEAR;HLMONTH', vararrayof([CBX1.text, CBX2.Text]), []);
    DBGrid1.Datasource:=DS5;
    DBGrid1.Enabled:=false;
    DBGrid1.Font.size:=12;
    DBGrid1.columns[0].width:=50;
    DBGrid1.columns[1].width:=60;
    DBGrid1.columns[2].width:=100;
    DBGrid1.columns[3].width:=100;
    DBGrid1.columns[4].width:=80;
    DBGrid1.columns[5].width:=20;
    Panel3.Visible := True;
    panel3.Top:=DBGrid1.Top+23;
    panel3.Left:=DBGrid1.left+dbgrid1.width-333;
    panel3.BringToFront;
  end else
  begin
      showmessage('Pls deal with the basic data first.');
      DBGrid1.Datasource:=DS5;
  end;
end;

procedure TAccountCal.Button2Click(Sender: TObject);
begin
  {try
    with CWHL do
    begin
      if state in [dsedit] then
          begin
            edit;
            FieldByName('USERDATE').Value:=Ndate;
            FieldByName('USERID').Value:=main.edit1.text;
            FieldByName('YN').Value:='1';
            post;
          end;
      if state in [dsinsert] then
          begin
            FieldByName('HLYEAR').Value:=CBX1.Text;
            FieldByName('HLMONTH').Value:=CBX2.Text;
            FieldByName('USERDATE').Value:=Ndate;
            FieldByName('USERID').Value:=main.edit1.text;
            FieldByName('YN').Value:='1';
            post;
          end;
      end;
    DBGrid1.Enabled:=true;
    Panel3.SendToBack;
    BT5.Enabled:=false;
    BT6.Enabled:=true;
  except
    showmessage('Have wrong.');
  end; }
  try
    with Ptemp do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT HLYEAR, HLMONTH, CWHL, USERDATE, USERID, YN FROM CWHL WHERE HLYEAR=''' + CBX1.Text + ''' AND HLMONTH=''' + CBX2.Text + '''');
      Open;
      if Eof then
      begin
        Close;
        SQL.Clear;
        SQL.Add('INSERT INTO CWHL(HLYEAR,HLMONTH,CWHL,USERDATE,USERID,YN) VALUES');
        SQL.Add('(''' + CBX1.Text + ''',''' + CBX2.Text + ''',' + edtCWHL.Text + ',GETDATE(),''' + main.Edit1.Text + ''',''1'')');
        ExecSQL;
      end else
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE CWHL SET CWHL=' + edtCWHL.Text + ',USERDATE=GETDATE(),USERID=''' + main.Edit1.Text + ''' WHERE HLYEAR=''' + CBX1.Text + ''' AND HLMONTH=''' + CBX2.Text + '''');
        ExecSQL;
      end;
    end;
    CWHL.Close;
    CWHL.Open;
    CWHL.Locate('HLYEAR;HLMONTH', vararrayof([CBX1.text, CBX2.Text]), []);
    TCurrencyField(CWHL.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
    DBGrid1.Enabled := True;
    DBGrid1.Font.Size := 12;
    DBGrid1.FieldColumns['HLYEAR'].Width := 100;
    DBGrid1.FieldColumns['HLMONTH'].Width := 100;
    DBGrid1.FieldColumns['CWHL'].Width := 100;
    DBGrid1.FieldColumns['USERDATE'].Width := 80;
    DBGrid1.FieldColumns['USERID'].Width := 80;
    DBGrid1.FieldColumns['YN'].Width := 30;
    Panel3.Visible := False;
    BT5.Enabled := False;
    BT6.Enabled := True;
  except
    on E: Exception do
      ShowMessage('Have wrong.' + #13 + E.Message);
  end;
end;

procedure TAccountCal.Button3Click(Sender: TObject);
begin
  if CWHL.state in [dsinsert] then
  begin
    showmessage('No exchange rate, stop all.');
  end;
  CWHL.cancel;
  Panel3.SendToBack;
  DBGrid1.Enabled:=true;
  DBGrid1.SetFocus;
end;

procedure TAccountCal.BT6Click(Sender: TObject);
begin
  try
    DBGrid1.DataSource:=DS2;
    with VNPrice do
    begin
      active:=false;
      sql.Clear;
      //部分沒有美金總價的部分計算總價
      sql.add('update KCRKS ');                 //更新匯率   入庫單
      sql.add('set CWHL=(select CWHL from');
      sql.add('   (select KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB, ');
      sql.add('           convert(varchar,KCRK.USERDate,111) as RKDate, CWHLS.CWHL');
      sql.add('    from KCRKS');
      sql.add('    left join KCRK on KCRK.RKNO=KCRKS.RKNO');
      sql.add('    left join CWHLS on  CWHLS.HLYEAR+'+''''+'/'+''''+'+CWHLS.HLMONTH+'+''''+'/'+''''+'+CWHLS.HLDAY=convert(varchar,KCRK.USERDate,111)');
      sql.add('    where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''''+' )  CWHLS');
      sql.add('          where CWHLS.RKNO=KCRKS.RKNO and CWHLS.CLBH=KCRKS.CLBH');
      sql.add('                and CWHLS.CGBH=KCRKS.CGBH and CWHLS.RKSB=KCRKS.RKSB ) ');
      sql.add('where  exists(select RKNO from KCRK');
      sql.add('       where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between  ');
      sql.add('             '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('            and KCRK.RKNO=KCRKS.RKNO)');
      execsql;
      active:=false;
      sql.Clear;


      sql.add('update JGZLS ');                 //更新匯率   加工單
      sql.add('set CWHL=(select CWHL from');
      sql.add('   (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB');
      sql.add('           ,convert(varchar,JGZL.CFMDate1,111) as JGDate, CWHLS.CWHL');
      sql.add('    from JGZLS');
      sql.add('    left join JGZL on JGZL.JGNO=JGZLS.JGNO');
      sql.add('    left join CWHLS on  CWHLS.HLYEAR+'+''''+'/'+''''+'+CWHLS.HLMONTH+'+''''+'/'+''''+'+CWHLS.HLDAY=convert(varchar,JGZL.CFMDate1,111)');
      sql.add('    where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''''+' )  CWHLS');
      sql.add('          where CWHLS.JGNO=JGZLS.JGNO and CWHLS.CLBH=JGZLS.CLBH and CWHLS.ZMLB=JGZLS.ZMLB  ) ');
      sql.add('where  exists(select JGNO from JGZL');
      sql.add('       where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between  ');
      sql.add('                '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('             and JGZL.JGNO=JGZLS.JGNO)');
      sql.add('             and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      execsql;
      active:=false;
      sql.clear;


      sql.add('declare @exchange int');
      sql.add('set @exchange=(select CWHL from CWHL ');
      sql.add('               where HLYEAR='+''''+CBX1.Text+'''');
      sql.add('                     and HLMONTH= '+''''+CBX2.Text+''''+')');
      sql.add('update KCRKS  ');                                       //更新可能匯率為0的情況為月標准利率
      sql.add('set CWHL=@exchange ')   ;
      sql.add('where CWHL is null');
      sql.add('      and exists(select RKNO from KCRK ');
      sql.add('                where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      sql.add('                          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('                      and KCRK.RKNO=KCRKS.RKNO)');

      {sql.add('set @exchange=(select CWHL from CWHL ');
      sql.add('               where HLYEAR='+''''+CBX1.Text+'''');
      sql.add('                     and HLMONTH= '+''''+CBX2.Text+''''+')');   }
      sql.add('update JGZLS  ');                                       //更新可能匯率為0的情況為月標准利率
      sql.add('set CWHL=@exchange ')   ;
      sql.add('where CWHL is null');
      sql.add('      and exists(select JGNO from JGZL  ');
      sql.add('                 where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
      sql.add('                             '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('                       and JGZL.JGNO=JGZLS.JGNO )');
      sql.add('      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      execsql;
      active:=false;
      sql.Clear;


      sql.add('update KCRKS  ');                                       //更新入庫明細表的價格 為越幣
      sql.add('set VNACC=round(USACC*CWHL,'+inttostr(VNPrice_Decimal)+'),' );
      sql.add('    VNPrice=round(USPrice*CWHL,'+inttostr(VNPrice_Decimal)+')');
      //sql.add('USACC=round(USPrice*Qty,2)');
      sql.add('where USPrice is not null');
      sql.add('      and USPrice<>0');
      sql.add('      and Qty<>0');
      sql.add('      and VNACC is null');    //20220329
      sql.add('      and exists(select RKNO from KCRK ');
      sql.add('                 where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      sql.add('                          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('                       and KCRK.RKNO=KCRKS.RKNO)');



      sql.add('update JGZLS ');                        //更新加工資料表的單價為越幣
      sql.add('set VNACC=round(USACC*CWHL,'+inttostr(VNPrice_Decimal)+') ,' );
      sql.add('    VNPrice=round(USPrice*CWHL,'+inttostr(VNPrice_Decimal)+') ');
      sql.add('where USPrice<>0  ');
      sql.add('      and USPrice is not null');
      sql.add('      and Qty<>0 ');
      sql.add('      and ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('      and exists(select JGNO from JGZL ');
      sql.add('                 where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
      sql.add('                         '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      //sql.add('       and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('      and JGZL.JGNO=JGZLS.JGNO)');
      execsql;
      active:=false;
      sql.Clear;

      sql.add('update KCRKS');                 //更新單價為空的值，以防有問題不帶入下一運行過程
      sql.add('set VNPrice=0, ');
      sql.add('    VNACC=0 ');
      sql.add('where VNPrice is null');
      sql.add('      and exists(select RKNO from KCRK ');
      sql.add('                 where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      sql.add('                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('                       and KCRKS.RKNO=KCRK.RKNO)');

      sql.add('update JGZLS ');
      sql.add('set VNPrice=0 ,');
      sql.add('    VNACC=0 ');
      sql.add('where VNPrice is null ');
      sql.add('      and ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('      and exists(select JGNO from JGZL  ');
      sql.add('                 where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
      sql.add('                         '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('                       and JGZL.JGNO=JGZLS.JGNO)');
      execsql;
    end;
    with entry do
    begin
      active:=false;
      sql.Clear;
      sql.add('select JGZL.JGNO as RKNO,JGZL.CFMDATE1 as USERDATE,JGZLS.CLBH,JGZL.YN,JGZL.CFMDate2 as CFMDate,CLZL.YWPM,CLZL.DWBH,');
      sql.add('       JGZLS.Qty,JGZLS.USPrice,JGZLS.USACC,JGZLS.VNPrice,JGZLS.VNACC,'+''''+'JG'+'''' +' as CostID ,JGZL.CKBH' );
      sql.add('from JGZL,JGZLS');
      sql.add('left join CLZL on CLZl.CLDH=JGZLS.CLBH');
      sql.add('where JGZL.JGNO=JGZLS.JGNO');
      sql.add('      and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('      and JGZL.CFMID1<>'+''''+'NO'+'''');
      sql.add('      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('union all');
      sql.add('select KCRK.RKNO,KCRK.USERDATE,KCRKS.CLBH,KCRK.YN,KCRK.CFMDate,CLZL.YWPM,CLZL.DWBH,');
      sql.add('       KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.CostID,KCRK.CKBH ');
      sql.add('from KCRK,KCRKS');
      sql.add('left join CLZL on CLZl.CLDH=KCRKS.CLBH');
      sql.add('where KCRK.RKNO=KCRKS.RKNO');
      sql.add('      and KCRK.CFMID<>'+''''+'NO'+'''');
      sql.add('      and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      sql.add('           '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('order by RKNO');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
      DBGrid1.Font.Size:=8;

      DBGrid1.columns[0].width:=75;
      DBGrid1.columns[1].width:=75;
      DBGrid1.columns[2].width:=80;
      DBGrid1.columns[3].width:=350;
      DBGrid1.columns[4].width:=35;
      DBGrid1.columns[5].width:=50;
      DBGrid1.columns[6].width:=50;
      DBGrid1.columns[7].width:=50;
      DBGrid1.columns[8].width:=60;
      DBGrid1.columns[9].width:=70;
      DBGrid1.columns[10].width:=40;
      DBGrid1.columns[11].width:=20;
      DBGrid1.columns[12].width:=75;
      DBGrid1.columns[13].width:=40;
    end;
    showmessage('Succeed.');
    BT6.Enabled:=false;
    BT7.Enabled:=true;
  except
    showmessage('Have wrong.')
  end;

end;
//20170802材料入庫分類
procedure TAccountCal.BT7_CLHG();
begin
  //20170825刪除KCRKCX調整領料單
  with Ptemp do
  begin
    Active:=false;
    sql.Clear;
    sql.add('delete KCRKCX where LLNO like'+''''+CBX1.Text+CBX2.Text+'999%'+'''');
    execsql;
  end;
  //
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#CLHG'') is not null  ');
    SQL.Add('begin   drop table #CLHG end   ');
    SQL.Add('select KCZLS.CKBH,KCZLS.CLBH,KCZLS.HGLB,');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as LastQty, isnull(KCCLMONTH.VNACC,0) as LastACC, ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as RKQty,isnull(KCCLMONTH.VNACC,0) as RKACC ,  ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as TotQty, round(KCCLMONTH.VNACC,'+inttostr(VNPrice_Decimal)+') as TotACC, ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as JGQty,isnull(KCCLMONTH.VNACC,0) as JGACC ,  ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as JGCKQty,isnull(KCCLMONTH.VNACC,0) as JGCKACC ,  ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as CKQty,isnull(KCCLMONTH.VNACC,0) as CKACC ,  ');
    SQL.Add('       isnull(KCCLMONTH.Qty*KCCLMONTH.VNPrice,0) as TotPrice');
    SQL.Add('into  #CLHG  from (select * from KCZLS  CROSS JOIN');
    SQL.Add('  (select ''NK'' as HGLB union all select ''HD'' union all select ''KD'' union all select ''XT'' union all select ''GC'' union all select ''ZZZZ'' ) LOAI ) KCZLS');
    SQL.Add('left join KCCLMONTH_HG KCCLMONTH on KCCLMONTH.CLBH=KCZLS.CLBH and KCCLMONTH.CKBH=KCZLS.CKBH and KCCLMONTH.HGLB=KCZLS.HGLB ');
    SQL.Add('                       and KCCLMONTH.CLBH=''ABCDEFG''');
    SQL.Add('where  exists(select KCCLMONTH.CLBH from KCCLMONTH_HG KCCLMONTH');
    SQL.Add('              where KCCLMONTH.CLBH=KCZLS.CLBH and KCCLMONTH.CKBH=KCZLS.CKBH  and KCYEAR='''+ayear+''' and KCMONTH='''+amonth+''')');
    SQL.Add('       ');
    SQL.Add('       or exists (select KCRKS.CLBH,KCRK.HGLB from KCRKS');
    SQL.Add('                  left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('                  where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('                        and KCRKS.CLBH=KCZLS.CLBH and KCRK.CKBH=KCZLS.CKBH ) ');
    SQL.Add('       or exists (select JGZLS.CLBH from JGZLS ');
    SQL.Add('                  left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('                  where  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('                        and JGZLS.CLBH=KCZLS.CLBH and JGZL.CKBH=KCZLS.CKBH)');
    SQL.Add('       or exists (select JGZLS.ZMLB from JGZLS ');
    SQL.Add('                  left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('                  where  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('                        and JGZLS.ZMLB=KCZLS.CLBH and JGZL.CKBH=KCZLS.CKBH)');
    SQL.Add('order by KCZLS.CKBH,KCZLS.CLBH');
    SQL.Add('');
    SQL.Add('update #CLHG');
    SQL.Add('Set LastQty=RKList.Qty,LastAcc=RKList.ACCVN');
    SQL.Add('      from  (');
    SQL.Add('      select CKBH,CLBH,HGLB,Qty,convert(bigint,isnull(VNACC,0)) as ACCVN ');
    SQL.Add('             from KCCLMONTH_HG KCCLMONTH ');
    SQL.Add('             where KCYEAR='''+ayear+''' ');
    SQL.Add('                   and KCMONTH ='''+amonth+''' ) RKList where RKList.CKBH=#CLHG.CKBH and RKList.HGLB=#CLHG.HGLB and RKList.CLBH=#CLHG.CLBH                      ');
    SQL.Add('update #CLHG');
    SQL.Add('Set RKQty=RKList.Qty,RKACC=RKList.ACCVN');
    SQL.Add('      from  (');
    SQL.Add('      select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,round(sum(KCRKS.Qty),'+WH_Decimal+') as Qty,sum(isnull(KCRKS.VNACC,0)+isnull(KCRKS.ExchACC,0)) as ACCVN ');
    SQL.Add('                        from KCRKS ');
    SQL.Add('                        left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('                        where  convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                                 '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('                        group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB ) RKList where RKList.CKBH=#CLHG.CKBH and RKList.HGLB=#CLHG.HGLB and RKList.CLBH=#CLHG.CLBH');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotACC=LastACC+RKACC,');
    SQL.Add('TotQty=LastQty+RKQty');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 where TotQty=0');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+') ');
    SQL.Add('where TotQty<>0');
    //SQL.Add('--第一次更新加工子材料單價，根據期初+入庫平均單價');
    SQL.Add('update KCRKCX ');
    SQL.Add('set VNPrice=JGZL.TotPrice');
    SQL.Add('from (');
    SQL.Add('  select #CLHG.TotPrice,#CLHG.HGLB,#CLHG.CKBH,JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB from JGZL');
    SQL.Add('  inner join JGZLS on JGZLS.JGNO=JGZL.JGNO');
    SQL.Add('  inner join #CLHG on JGZL.CKBH=#CLHG.CKBH and #CLHG.CLBH=JGZLS.ZMLB ');
    SQL.Add('             where  JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
    SQL.Add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('             Group by #CLHG.TotPrice,#CLHG.HGLB,#CLHG.CKBH,JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('  ) JGZL where JGZL.JGNO=KCRKCX.LLNO and JGZL.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZL.ZMLB=KCRKCX.SCBH  and JGZL.HGLB=KCRKCX.HGLB                 ');
    SQL.Add('');
    SQL.Add('update KCRKCX ');
    SQL.Add('set VNPrice=0');
    SQL.Add('from (');
    SQL.Add('  select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB from JGZL');
    SQL.Add('  inner join JGZLS on JGZLS.JGNO=JGZL.JGNO');
    SQL.Add('             where  JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
    SQL.Add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('             Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('  ) JGZL where JGZL.JGNO=KCRKCX.LLNO and JGZL.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZL.ZMLB=KCRKCX.SCBH   ');
    SQL.Add('    and KCRKCX.VNPrice is null    ');
    SQL.Add('                    ');
    SQL.Add('update KCRKCX ');
    SQL.Add('set VNACC=RKQty*VNPrice');
    SQL.Add('from (');
    SQL.Add('  select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB from JGZL');
    SQL.Add('  inner join JGZLS on JGZLS.JGNO=JGZL.JGNO');
    SQL.Add('             where  JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
    SQL.Add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('             Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('  ) JGZL where JGZL.JGNO=KCRKCX.LLNO and JGZL.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZL.ZMLB=KCRKCX.SCBH   ');
    execsql;
  end;
end;
//
procedure TAccountCal.BT7Click(Sender: TObject);
begin
  try
      with DelPrice do
      begin
        active:=false;               //選擇出材料清單
        sql.Clear;
        sql.add('if object_id('+''''+'tempdb..#CL'+''''+') is not null  ');
        sql.add('begin   drop table #CL end   ');
        sql.add('select KCZLS.CKBH,KCZLS.CLBH,');
        //sql.add('       CLZL.YWPM,CLZL.DWBH,');
        sql.add('       isnull(KCCLMONTH.Qty,0) as LastQty, isnull(KCCLMONTH.VNACC,0) as LastACC, ');
        sql.add('       isnull(KCCLMONTH.Qty,0) as RKQty,isnull(KCCLMONTH.VNACC,0) as RKACC ,  ');
        sql.add('       isnull(KCCLMONTH.Qty,0) as TotQty, round(KCCLMONTH.VNACC,'+inttostr(VNPrice_Decimal)+') as TotACC, ');
        sql.add('       isnull(KCCLMONTH.Qty,0) as JGQty,isnull(KCCLMONTH.VNACC,0) as JGACC ,  ');
        sql.add('       isnull(KCCLMONTH.Qty,0) as JGCKQty,isnull(KCCLMONTH.VNACC,0) as JGCKACC ,  ');
        sql.add('       isnull(KCCLMONTH.Qty,0) as CKQty,isnull(KCCLMONTH.VNACC,0) as CKACC ,  ');
        sql.add('       isnull(KCCLMONTH.Qty*KCCLMONTH.VNPrice,0) as TotPrice');
        sql.add('into  #CL  from KCZLS');
        //sql.add('left join CLZL on CLZl.CLDH=KCZLS.CLBH ');
        sql.add('left join KCCLMONTH on KCCLMONTH.CLBH=KCZLS.CLBH and KCCLMONTH.CKBH=KCZLS.CKBH ');
        sql.add('                       and KCCLMONTH.CLBH='+''''+'ABCDEFG'+'''');
        sql.add('where  exists(select KCCLMONTH.CLBH from KCCLMONTH');
        sql.add('              where KCCLMONTH.CLBH=KCZLS.CLBH and KCCLMONTH.CKBH=KCZLS.CKBH and KCYEAR='+''''+ayear+''''+' and KCMONTH='+''''+amonth+''''+')');
        sql.add('       or exists (select KCRKS.CLBH from KCRKS');
        sql.add('                  left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        sql.add('                  where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
        sql.add('                          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                        and KCRKS.CLBH=KCZLS.CLBH and KCRK.CKBH=KCZLS.CKBH ) ');
        sql.add('       or exists (select JGZLS.CLBH from JGZLS ');
        sql.add('                  left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                  where  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
        sql.add('                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                        and JGZLS.CLBH=KCZLS.CLBH and JGZL.CKBH=KCZLS.CKBH)');
        sql.add('       or exists (select JGZLS.ZMLB from JGZLS ');
        sql.add('                  left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                  where  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
        sql.add('                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                        and JGZLS.ZMLB=KCZLS.CLBH and JGZL.CKBH=KCZLS.CKBH)');
        sql.add('order by KCZLS.CKBH,KCZLS.CLBH ');
        //memo1.Text:=sql.Text;
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        active:=false;
        sql.Clear;
        sql.add('update #CL');
        sql.add('set LastQty=isnull((select  Qty from (select CKBH,CLBH,Qty,convert(bigint,isnull(VNACC,0)) as ACCVN ');
        sql.add('             from KCCLMONTH ');
        sql.add('             where KCYEAR='+''''+ayear+'''');
        sql.add('                   and KCMONTH ='+''''+amonth+'''');
        sql.add('             ) KCList where #CL.CLBH=KCList.CLBH and #CL.CKBH=KCList.CKBH),0),');
        sql.add('LastAcc=isnull( (select ACCVN from (select CKBH,CLBH,Qty,isnull(VNACC,0) as ACCVN ');
        sql.add('                             from KCCLMONTH ');
        sql.add('                             where KCYEAR='+''''+ayear+'''');
        sql.add('                                   and KCMONTH ='+''''+amonth+'''');
        sql.add('                            ) KCList where #CL.CLBH=KCList.CLBH and #CL.CKBH=KCList.CKBH),0),');
        sql.add('RKQty=isnull((select Qty from (select KCRK.CKBH,KCRKS.CLBH,round(sum(KCRKS.Qty),'+WH_Decimal+') as Qty,isnull(sum(KCRKS.VNACC),0) as ACCVN ');
        sql.add('                        from KCRKS ');
        sql.add('                        left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        sql.add('                        where  convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
        sql.add('                                 '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                        group by KCRK.CKBH,KCRKS.CLBH ) RKList ');
        sql.add('      where RKList.CLBH=#CL.CLBH and RKList.CKBH=#CL.CKBH),0),');
        sql.add('RKACC=isnull((select ACCVN as ACCVN ');
        sql.add('                  from (select KCRK.CKBH,KCRKS.CLBH,round(sum(KCRKS.Qty),'+WH_Decimal+') as Qty,sum(isnull(KCRKS.VNACC,0)+isnull(KCRKS.ExchACC,0)) as ACCVN ');
        sql.add('                       from KCRKS ');
        sql.add('                       left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        sql.add('                       where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
        sql.add('                             '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                       group by KCRK.CKBH,KCRKS.CLBH ) RKList ');
        sql.add('      where RKList.CLBH=#CL.CLBH and RKList.CKBH=#CL.CKBH),0),TotACC=0');
        sql.add('update #CL ');
        sql.add('set TotACC=LastACC+RKACC,');
        sql.add('TotQty=LastQty+RKQty');
        sql.add('update #CL ');
        sql.add('set TotPrice=0 where TotQty=0');
        sql.add('update #CL ');
        sql.add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+') where TotQty<>0');
        //memo1.Text:=sql.Text;
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        active:=false;
        sql.Clear;
        sql.add(' select #CL.*,CLZL.YWPM,CLZL.DWBH ');
        sql.add('from #CL ');
        sql.add('left join CLZL on CLZL.CLDH=#CL.CLBH');
        sql.add('order by CKBH,CLBH');
        active:=true;
      end;
    DBGrid1.DataSource:=DS7;
    DBGrid1.Font.Size:=8;
    DBGrid1.columns[0].width:=70;
    DBGrid1.columns[1].width:=350;
    DBGrid1.columns[2].width:=40;
    DBGrid1.columns[3].width:=50;
    DBGrid1.columns[4].width:=70;
    DBGrid1.columns[5].width:=50;
    DBGrid1.columns[6].width:=70;
    DBGrid1.columns[7].width:=50;
    DBGrid1.columns[8].width:=70;
    DBGrid1.columns[9].width:=50;
    DBGrid1.columns[10].width:=70;
    DBGrid1.columns[11].width:=50;
    DBGrid1.columns[12].width:=70;
    DBGrid1.columns[13].width:=50;
    DBGrid1.columns[14].width:=70;
    DBGrid1.columns[15].width:=70;
    DBGrid1.columns[16].width:=40;
    showmessage('Write the VNPrice to deliver list.');
    with Ptemp do
    begin
        active:=false;
        sql.Clear;
        sql.add('update JGZLS ');    //加工子材料單價寫入
        sql.add('set VNPrice=(select #CL.TotPrice from #CL');
        sql.add('             left join JGZL on JGZL.CKBH=#CL.CKBH ');
        sql.add('             where #CL.CLBH=JGZLS.ZMLB  ');
        sql.add('                   and  JGZLS.JGNO=JGZl.JGNO ') ;
        sql.add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
        sql.add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''''+')');
        sql.add('where exists(select JGZL.JGNO from JGZL ');
        sql.add('             where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
        sql.add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                   and JGZLS.JGNO=JGZL.JGNO ) ');
        sql.add('      and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
    end;
    showmessage('Succeed.');
    BT7.Enabled:=false;
    BT8.Enabled:=true;
  except
    showmessage('Have wrong.');
  end;

end;
//20170802材料入庫分類
procedure TAccountCal.BT8_CLHG();
begin
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update JGZLS Set JGZLS.CLACC_HG=JGZL.VNACC');
    SQL.Add('from (');
    SQL.Add('select JGZLS.JGNO,JGZLS.CLBH,Sum(KCRKCX.VNACC) as VNACC from KCRKCX');
    SQL.Add('inner join JGZLS on JGZLS.JGNO=KCRKCX.LLNO and JGZLS.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZLS.ZMLB=KCRKCX.SCBH');
    SQL.Add('inner join JGZL on JGZL.JGNO=JGZLS.JGNO');
    SQL.Add('where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                                                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('Group by JGZLS.JGNO,JGZLS.CLBH  ) JGZL where  JGZLS.ZMLB=''ZZZZZZZZZZ''  and JGZL.JGNO=JGZLS.JGNO and JGZL.CLBH=JGZLS.CLBH        ');
    SQL.Add('');
    SQL.Add('update JGZLS ');
    SQL.Add('set CLPrice_HG=round(CLACC_HG/Qty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('      and Qty<>0');
    SQL.Add('      and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');
    ExecSQL;
  end;
end;
procedure TAccountCal.BT8Click(Sender: TObject);
begin
  try
    DBGrid1.DataSource:=DS8;
    with Extraprice do
    begin
      active:=false;
      sql.Clear;
      sql.add('update JGZLS ');     //更新加工材料母材料總金額
      sql.add('set JGZLS.CLACC=(select CLACC from');
      sql.add('                      (select JGZLS.CLBH,JGZLS.JGNO,sum(round(round(JGZLS.Qty*JGZLM.Qty,'+WH_Decimal+')*JGZLS.VNprice,'+inttostr(VNPrice_Decimal)+')) as CLACC'); //20170822 round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty)+0.049,1)
      sql.add('                       from JGZLS');
      sql.add('                       left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty ');
      sql.add('                                  from JGZLS ');
      sql.add('                                  where  exists(select JGZL.JGNO ');
      sql.add('                                                from JGZL');
      sql.Add('                                                where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ' );
      sql.add('                                                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('                                                      and JGZLS.JGNO=JGZL.JGNO)  ');
      sql.add('                                         and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('                                  ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH ')  ;
      sql.add('                       where  exists(select JGZL.JGNO from JGZL');
      sql.Add('                                     where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ' );
      sql.add('                                           '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('                                           and JGZLS.JGNO=JGZL.JGNO)  ');
      sql.add('                              and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
      sql.add('                      group by JGZLS.CLBH,JGZLS.JGNO)  SunPrice where  SunPrice.CLBH=JGZLS.CLBH and SunPrice.JGNO=JGZLS.JGNO)');
      sql.add('where ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('      and exists(select JGZL.JGNO from JGZL');
      sql.add('                where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
      sql.add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('                      and JGZL.JGNO=JGZLS.JGNO)');
      //列出新的加工材料清單
      sql.add('select JGZL.JGNO,JGZL.CFMDate1,JGZLS.CLBH,JGZLS.Qty,JGZLS.USPrice,');
      sql.add('       JGZLS.VNPrice,JGZLS.CLPrice,JGZLS.CLACC,CLZL.YWPM,CLZL.DWBH,JGZL.CKBH  ');
      sql.add('from JGZLS');
      sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      sql.add('left join CLZl on CLZL.CLDH=JGZLS.CLBH');
      sql.add('where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
      sql.add(       ''''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
      sql.add('      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('order by JGZL.JGNO,JGZLS.CLBH');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
    DBGrid1.Font.Size:=8;
    DBGrid1.columns[0].width:=75;
    DBGrid1.columns[1].width:=75;
    DBGrid1.columns[2].width:=80;
    DBGrid1.columns[3].width:=350;
    DBGrid1.columns[4].width:=35;
    DBGrid1.columns[5].width:=50;
    DBGrid1.columns[6].width:=50;
    DBGrid1.columns[7].width:=60;
    DBGrid1.columns[8].width:=60;
    DBGrid1.columns[9].width:=60;
    DBGrid1.columns[10].width:=40;
    BT8.Enabled:=false;
    BT9.Enabled:=true;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;

end;

procedure TAccountCal.Button1Click(Sender: TObject);
begin
  PrintDBGrideh1.Preview;
end;
//20170802材料入庫分類
procedure TAccountCal.BT9_CLHG();
begin
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    //SQL.Add('--第一次月加工數量和金額 (期初+入庫 原材料平均單價，計算母材料單價)');
    SQL.Add('Update  #CLHG Set JGQty=JGZL.Qty, JGACC=JGZL.JGACC');
    SQL.Add('from (                           ');
    SQL.Add('   select ''GC'' as HGLB,JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(case when JGZLS.CLPrice_HG is not null then JGZLS.CLACC_HG else 0 end ),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
    SQL.Add('   from JGZLS ');
    SQL.Add('   left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('   where JGZL.CFMID1<>''NO''');
    SQL.Add('        and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
    SQL.Add('           '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('        and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('        and CLACC is not null ');
    SQL.Add('   Group by JGZL.CKBH,JGZLS.CLBH  ) JGZL where JGZL.CKBH=#CLHG.CKBH and JGZL.HGLB=#CLHG.HGLB and JGZL.CLBH=#CLHG.CLBH ');
    SQL.Add('');
    SQL.Add('update #CLHG');
    SQL.Add('set TotQty=LastQty+RKQty+JGQty,');
    SQL.Add('    TotACC=LastACC+RKACC+JGACC');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where TotQty<>0 ');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 ');
    SQL.Add('where TotQty=0');
    //SQL.Add('select #CLHG.*,CLZL.YWPM,CLZL.DWBH ,');
    //SQL.Add('       isnull(LastQty,0)+isnull(RKQty,0)+isnull(JGQty,0)-isnull(JGCKQty,0)-isnull(CKQty,0) as RemQty ');
    //SQL.Add('       ,isnull(LastACC,0)+isnull(RKACC,0)+isnull(JGACC,0)-isnull(JGCKACC,0)-isnull(CKACC,0) as RemACC ');
    //SQL.Add('from #CLHG');
    //SQL.Add('left join CLZL on CLZL.CLDH=#CLHG.CLBH');
    //SQL.Add('order by CKBH,CLBH');
    SQL.Add('');
    //SQL.Add('--第二次計算加工子材料單價，根據期初+入庫+加工入庫 平均單價');
    SQL.Add('update KCRKCX ');
    SQL.Add('set VNPrice=JGZL.TotPrice');
    SQL.Add('from (');
    SQL.Add('  select #CLHG.TotPrice,#CLHG.HGLB,#CLHG.CKBH,JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB from JGZL');
    SQL.Add('  inner join JGZLS on JGZLS.JGNO=JGZL.JGNO');
    SQL.Add('  inner join #CLHG on JGZL.CKBH=#CLHG.CKBH and #CLHG.CLBH=JGZLS.ZMLB ');
    SQL.Add('             where  JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
    SQL.Add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('             Group by #CLHG.TotPrice,#CLHG.HGLB,#CLHG.CKBH,JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('  ) JGZL where JGZL.JGNO=KCRKCX.LLNO and JGZL.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZL.ZMLB=KCRKCX.SCBH  and JGZL.HGLB=KCRKCX.HGLB                 ');
    SQL.Add('');
    SQL.Add('update KCRKCX ');
    SQL.Add('set VNACC=RKQty*VNPrice');
    SQL.Add('from (');
    SQL.Add('  select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB from JGZL');
    SQL.Add('  inner join JGZLS on JGZLS.JGNO=JGZL.JGNO');
    SQL.Add('             where  JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
    SQL.Add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('             Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('  ) JGZL where JGZL.JGNO=KCRKCX.LLNO and JGZL.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZL.ZMLB=KCRKCX.SCBH   ');
    SQL.Add('');
    //SQL.Add('--第二次計算母材料平均單價(期初+入庫+加工 原材料平均單價，計算母材料單價)');
    SQL.Add('Update JGZLS Set JGZLS.CLACC_HG=JGZL.VNACC');
    SQL.Add('from (');
    SQL.Add('select JGZLS.JGNO,JGZLS.CLBH,Sum(KCRKCX.VNACC) as VNACC from KCRKCX');
    SQL.Add('inner join JGZLS on JGZLS.JGNO=KCRKCX.LLNO and JGZLS.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZLS.ZMLB=KCRKCX.SCBH');
    SQL.Add('inner join JGZL on JGZL.JGNO=JGZLS.JGNO');
    SQL.Add('where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                                                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('Group by JGZLS.JGNO,JGZLS.CLBH  ) JGZL where  JGZLS.ZMLB=''ZZZZZZZZZZ''  and JGZL.JGNO=JGZLS.JGNO and JGZL.CLBH=JGZLS.CLBH        ');
    SQL.Add('');
    SQL.Add('update JGZLS ');
    SQL.Add('set CLPrice_HG=round(CLACC_HG/Qty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('      and Qty<>0');
    SQL.Add('      and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');
    SQL.Add('');
    //SQL.Add('--第二次月加工數量和金額');
    SQL.Add('Update  #CLHG Set JGQty=JGZL.Qty, JGACC=JGZL.JGACC');
    SQL.Add('from (                           ');
    SQL.Add('   select ''GC'' as HGLB,JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(case when JGZLS.CLPrice_HG is not null then JGZLS.CLACC_HG else 0 end ),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
    SQL.Add('   from JGZLS ');
    SQL.Add('   left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('   where JGZL.CFMID1<>''NO''');
    SQL.Add('        and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
    SQL.Add('           '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('        and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('        and CLACC is not null ');
    SQL.Add('   Group by JGZL.CKBH,JGZLS.CLBH  ) JGZL where JGZL.CKBH=#CLHG.CKBH and JGZL.HGLB=#CLHG.HGLB and JGZL.CLBH=#CLHG.CLBH ');
    SQL.Add('');
    SQL.Add('update #CLHG');
    SQL.Add('set TotQty=LastQty+RKQty+JGQty,');
    SQL.Add('    TotACC=LastACC+RKACC+JGACC');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where TotQty<>0 ');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 ');
    SQL.Add('where TotQty=0  ');
    SQL.Add('');
    //SQL.Add('-----第三次計算加工子材料單價，根據期初+入庫+加工入庫 ?? 平均單價');
    SQL.Add('update KCRKCX ');
    SQL.Add('set VNPrice=JGZL.TotPrice');
    SQL.Add('from (');
    SQL.Add('  select #CLHG.TotPrice,#CLHG.HGLB,#CLHG.CKBH,JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB from JGZL');
    SQL.Add('  inner join JGZLS on JGZLS.JGNO=JGZL.JGNO');
    SQL.Add('  inner join #CLHG on JGZL.CKBH=#CLHG.CKBH and #CLHG.CLBH=JGZLS.ZMLB ');
    SQL.Add('             where  JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
    SQL.Add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('             Group by #CLHG.TotPrice,#CLHG.HGLB,#CLHG.CKBH,JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('  ) JGZL where JGZL.JGNO=KCRKCX.LLNO and JGZL.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZL.ZMLB=KCRKCX.SCBH  and JGZL.HGLB=KCRKCX.HGLB                 ');
    SQL.Add('');
    SQL.Add('update KCRKCX ');
    SQL.Add('set VNACC=RKQty*VNPrice');
    SQL.Add('from (');
    SQL.Add('  select JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB from JGZL');
    SQL.Add('  inner join JGZLS on JGZLS.JGNO=JGZL.JGNO');
    SQL.Add('             where  JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
    SQL.Add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('             Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('  ) JGZL where JGZL.JGNO=KCRKCX.LLNO and JGZL.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZL.ZMLB=KCRKCX.SCBH  ');
    SQL.Add(' ');
    //SQL.Add('--第三次計算母材料平均單價(期初+入庫+加工 原材料平均單價，計算母材料單價)');
    SQL.Add('Update JGZLS Set JGZLS.CLACC_HG=JGZL.VNACC');
    SQL.Add('from (');
    SQL.Add('select JGZLS.JGNO,JGZLS.CLBH,Sum(KCRKCX.VNACC) as VNACC from KCRKCX');
    SQL.Add('inner join JGZLS on JGZLS.JGNO=KCRKCX.LLNO and JGZLS.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZLS.ZMLB=KCRKCX.SCBH');
    SQL.Add('inner join JGZL on JGZL.JGNO=JGZLS.JGNO');
    SQL.Add('where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                                                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('Group by JGZLS.JGNO,JGZLS.CLBH  ) JGZL where  JGZLS.ZMLB=''ZZZZZZZZZZ''  and JGZL.JGNO=JGZLS.JGNO and JGZL.CLBH=JGZLS.CLBH        ');
    SQL.Add('');
    SQL.Add('update JGZLS ');
    SQL.Add('set CLPrice_HG=round(CLACC_HG/Qty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('      and Qty<>0');
    SQL.Add('      and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)  ');
    SQL.Add('update JGZLS ');
    SQL.Add('set CLPrice=0');
    SQL.Add('where ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('      and Qty=0');
    SQL.Add('      and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');
    SQL.Add('                                              ');
    //SQL.Add('---第三次月加工數量和金額');
    SQL.Add('Update  #CLHG Set JGQty=JGZL.Qty, JGACC=JGZL.JGACC');
    SQL.Add('from (                           ');
    SQL.Add('   select ''GC'' as HGLB,JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(case when JGZLS.CLPrice_HG is not null then JGZLS.CLACC_HG else 0 end ),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
    SQL.Add('   from JGZLS ');
    SQL.Add('   left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('   where JGZL.CFMID1<>''NO''');
    SQL.Add('        and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('        and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('        and CLACC is not null ');
    SQL.Add('   Group by JGZL.CKBH,JGZLS.CLBH  ) JGZL where JGZL.CKBH=#CLHG.CKBH and JGZL.HGLB=#CLHG.HGLB and JGZL.CLBH=#CLHG.CLBH ');
    SQL.Add('');
    SQL.Add('update #CLHG');
    SQL.Add('set TotQty=LastQty+RKQty+JGQty,');
    SQL.Add('    TotACC=LastACC+RKACC+JGACC');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where TotQty<>0 ');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 ');
    SQL.Add('where TotQty=0   ');
    SQL.Add('');
    //SQL.Add('---月加工發料金額和單價');
    SQL.Add('update #CLHG ');
    SQL.Add('  set JGCKQty=JGZL.Qty, JGCKACC=JGZL.VNACC');
    SQL.Add('from (');
    SQL.Add('Select JGZL.CKBH,JGZLS.ZMLB as CLBH,KCRKCX.HGLB,Sum(KCRKCX.RKQty) as Qty,Sum(KCRKCX.VNACC) as VNACC ');
    SQL.Add('from KCRKCX');
    SQL.Add('inner join JGZLS on JGZLS.JGNO=KCRKCX.LLNO and JGZLS.CLBH=KCRKCX.CLBH and KCRKCX.DFL=''JGCK'' and JGZLS.ZMLB=KCRKCX.SCBH');
    SQL.Add('inner join JGZL on JGZL.JGNO=JGZLS.JGNO');
    SQL.Add('where  convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
    SQL.Add('       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('Group by   JGZL.CKBH,JGZLS.ZMLB,KCRKCX.HGLB  ) JGZL where JGZL.CKBH=#CLHG.CKBH and JGZL.HGLB=#CLHG.HGLB and JGZL.CLBH=#CLHG.CLBH   ');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round((LastACC+RKACC+JGACC)/(LastQty+RKQty+JGQty),'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where LastQty+RKQty+JGQty<>0');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 ');
    SQL.Add('where TotPrice is null');
    //SQL.Add('------更新領料單價');
    SQL.Add('');
    SQL.Add('update KCRKCX Set VNPrice=KCLLS.TotPrice');
    SQL.Add('from ( ');
    SQL.Add('select KCLLS.*,#CLHG.TotPrice from (');
    SQL.Add('select KCLLS.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCRKCX.HGLB from (');
    SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH from  KCLLS');
    SQL.Add('       inner Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
    SQL.Add('       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('       Group by KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH');
    SQL.Add(') KCLLS ');
    SQL.Add('left join  KCRKCX on KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH      ');
    SQL.Add('Group by KCLLS.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCRKCX.HGLB ) KCLLS');
    SQL.Add('left join #CLHG on #CLHG.CKBH=KCLLS.CKBH and #CLHG.CLBH=KCLLS.CLBH and #CLHG.HGLB=KCLLS.HGLB )KCLLS');
    SQL.Add('where KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH and KCLLS.HGLB=KCRKCX.HGLB  ');
    SQL.Add('');
    SQL.Add('update KCRKCX Set VNPrice=0');
    SQL.Add('from ( ');
    SQL.Add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH from  KCLLS');
    SQL.Add('       inner Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
    SQL.Add('       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('       Group by KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH');
    SQL.Add(') KCLLS ');
    SQL.Add('where KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH ');
    SQL.Add('      and KCRKCX.VNPrice is null');
    SQL.Add('');
    SQL.Add('update KCRKCX Set VNACC=RKQty*VNPrice');
    SQL.Add('from ( ');
    SQL.Add('select KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH from  KCLLS');
    SQL.Add('       inner Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
    SQL.Add('       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('       Group by KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH');
    SQL.Add(') KCLLS ');
    SQL.Add('where KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH ');
    SQL.Add('             ');
    SQL.Add('update #CLHG ');
    SQL.Add('  set CKQty=KCLLS.Qty, CKACC=KCLLS.VNACC');
    SQL.Add('from  (select  KCRKCX.HGLB,KCLL.CKBH,KCLLS.CLBH,Sum(KCRKCX.RKQty) as Qty,Sum(KCRKCX.VNACC) as VNACC from  KCRKCX');
    SQL.Add('       inner join KCLLS on KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH');
    SQL.Add('       inner Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('       where  convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
    SQL.Add('       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('       Group by KCRKCX.HGLB,KCLL.CKBH,KCLLS.CLBH ) KCLLS');
    SQL.Add('where KCLLS.CKBH=#CLHG.CKBH and KCLLS.HGLB=#CLHG.HGLB and KCLLS.CLBH=#CLHG.CLBH           ');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set CKQty=0 ');
    SQL.Add('where CKQty is null ');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set CKACC=0 ');
    SQL.Add('where CKACC is null      ');
    ExecSQL();
  end;
end;
procedure TAccountCal.BT9Click(Sender: TObject);
begin
  try
    DBGrid1.DataSource:=DS9;
    with DelPrice2 do
    begin
        active:=false;
        sql.Clear;
        sql.add('update #CL ');     //計算加工數量與材料價值
        sql.add('set JGQty=isnull((select Qty from (select JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(JGZLS.CLACC),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
        sql.add('                            from JGZLS ');
        sql.add('                            left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                            where JGZL.CFMID1<>'+''''+'NO'+'''');
        sql.add('                                  and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
        sql.add('                                         '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                                  and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                            and CLACC is not null ');
        sql.add('                            group by JGZL.CKBH,JGZLS.CLBH ) JGList where JGList.CLBH=#CL.CLBH and JGList.CKBH=#CL.CKBH ),0),');
        sql.add('  JGACC=isnull((select JGACC from (select JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(JGZLS.CLACC),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
        sql.add('                            from JGZLS ');
        sql.add('                            left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                            where JGZL.CFMID1<>'+''''+'NO'+'''');
        sql.add('                                  and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
        sql.add('                                          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                                  and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                                  and CLACC is not null ');
        sql.add('                            group by JGZL.CKBH,JGZLS.CLBH ) JGList where JGList.CLBH=#CL.CLBH and JGList.CKBH=#CL.CKBH ),0)');

        sql.add('update #CL');
        sql.add('set TotQty=LastQty+RKQty+JGQty,');
        sql.add('    TotACC=LastACC+RKACC+JGACC');

        sql.add('update #CL ');
        sql.add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+')');
        sql.add('where TotQty<>0 ');

        sql.add('update #CL ');
        sql.add('set TotPrice=0 ');
        sql.add('where TotQty=0 ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        active:=false;
        sql.Clear;

        sql.add('select #CL.*,CLZL.YWPM,CLZL.DWBH ,');
        sql.add('       isnull(LastQty,0)+isnull(RKQty,0)+isnull(JGQty,0)-isnull(JGCKQty,0)-isnull(CKQty,0) as RemQty ');
        sql.add('       ,isnull(LastACC,0)+isnull(RKACC,0)+isnull(JGACC,0)-isnull(JGCKACC,0)-isnull(CKACC,0) as RemACC ');
        sql.add('from #CL');
        sql.add('left join CLZL on CLZL.CLDH=#CL.CLBH');
        sql.add('order by CKBH,CLBH');
        //funcObj.WriteErrorLog(sql.Text);
        active:=true;
    end;
    DBGrid1.Font.Size:=8;
    DBGrid1.columns[0].width:=70;
    DBGrid1.columns[1].width:=350;
    DBGrid1.columns[2].width:=40;
    DBGrid1.columns[3].width:=60;
    DBGrid1.columns[4].width:=70;
    DBGrid1.columns[5].width:=60;
    DBGrid1.columns[6].width:=70;
    DBGrid1.columns[7].width:=60;
    DBGrid1.columns[8].width:=70;
    DBGrid1.columns[9].width:=60;
    DBGrid1.columns[10].width:=70;
    DBGrid1.columns[11].width:=60;
    DBGrid1.columns[12].width:=60;
    DBGrid1.columns[13].width:=70;
    DBGrid1.columns[14].width:=60;
    DBGrid1.columns[15].width:=70;
    DBGrid1.columns[16].width:=60;
    DBGrid1.columns[17].width:=70;
    DBGrid1.columns[18].width:=40;
    for i:=0 to DelPrice2.fieldcount-1 do
    begin
      DBGrid1.columns[i].title.titlebutton:=enabled;
    end;

    showmessage('Rewrite the VNPrice to deliver list.');
    with Ptemp do
    begin
        active:=false;
        sql.Clear;
        sql.add('update JGZLS ');    //加工子材料單價寫入
        sql.add('set VNPrice=(select #CL.TotPrice ');
        sql.add('             from #CL');
        sql.add('             left join JGZL on JGZL.CKBH=#CL.CKBH ');
        sql.add('             where #CL.CLBH=JGZLS.ZMLB ');
        sql.add('                   and  JGZLS.JGNO=JGZl.JGNO ')  ;
        sql.add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
        sql.add('                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''''+')');
        sql.add('where exists(select JGZL.JGNO from JGZL ');
        sql.add('             where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
        sql.add('                    '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                   and JGZLS.JGNO=JGZL.JGNO ) ');
        sql.add('      and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
        //sql.add('      and (JGZLS.VNPrice is null or JGZLS.VNPrice=0) ');   //是否需要限定為只對空值二資寫入
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        // 為防止重復加工，將整個過程重來一次，如果還有問題，則歸價格為0。
        active:=false;
        sql.Clear;
        sql.add('update JGZLS ');     //更新加工材料母材料總金額
        sql.add('set JGZLS.CLACC=(select CLACC from');
        sql.add('                      (select JGZLS.CLBH,JGZLS.JGNO,sum(round(round(JGZLS.Qty*JGZLM.Qty,'+WH_Decimal+')*JGZLS.VNprice,'+inttostr(VNPrice_Decimal)+')) as CLACC');
        sql.add('                       from JGZLS');
        sql.add('                       left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
        sql.add('                                  where  exists(select JGZL.JGNO from JGZL');
        sql.Add('                                                where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ' );
        sql.add('                                                '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                                                and JGZLS.JGNO=JGZL.JGNO)  ');
        sql.add('                                                and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                                 ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH ')  ;
        sql.add('                       where  exists(select JGZL.JGNO from JGZL');
        sql.Add('                                     where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ' );
        sql.add('                                    '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                      and JGZLS.JGNO=JGZL.JGNO)  ');
        sql.add('                      and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                      group by JGZLS.CLBH,JGZLS.JGNO)  SunPrice where  SunPrice.CLBH=JGZLS.CLBH and SunPrice.JGNO=JGZLS.JGNO)');
        sql.add('where ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('and exists(select JGZL.JGNO from JGZL');
        sql.add('           where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
        sql.add(     ''''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('and JGZL.JGNO=JGZLS.JGNO)');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        active:=false;
        sql.Clear;
        sql.add('update #CL ');     //重新計算月平均單價
        sql.add('set JGQty=isnull((select Qty from (select JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(JGZLS.CLACC),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
        sql.add('                            from JGZLS ');
        sql.add('                            left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                            where exists(select JGZL.JGNO from JGZL ');
        sql.add('                                         where JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                                               and JGZL.CFMID1<>'+''''+'NO'+'''');
        sql.add('                                               and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
        sql.add('                                                    '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''''+')');
        sql.add('                            and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                            and CLACC is not null ');
        sql.add('                            group by JGZL.CKBH,JGZLS.CLBH ) JGList where JGList.CLBH=#CL.CLBH  and JGList.CKBH=#CL.CKBH),0),');
        sql.add('  JGACC=isnull((select JGACC from (select JGZL.CKBH,JGZLS.CLBH,round(sum(Qty),'+WH_Decimal+') as Qty,isnull(round(sum(JGZLS.CLACC),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
        sql.add('                            from JGZLS ');
        sql.add('                            left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                            where exists(select JGZL.JGNO from JGZL ');
        sql.add('                                         where JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                                               and JGZL.CFMID1<>'+''''+'NO'+'''');
        sql.add('                                               and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
        sql.add('                                                   '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''''+')');
        sql.add('                            and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                            and CLACC is not null ');
        sql.add('                            group by JGZL.CKBH,JGZLS.CLBH ) JGList where JGList.CLBH=#CL.CLBH  and JGList.CKBH=#CL.CKBH),0)');
        sql.add('update #CL');
        sql.add('set TotQty=LastQty+RKQty+JGQty,');
        sql.add('    TotACC=LastACC+RKACC+JGACC');

        sql.add('update #CL ');
        sql.add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+')');
        sql.add('where TotQty<>0 ');

        sql.add('update #CL ');
        sql.add('set TotPrice=0 ');
        sql.add('where TotQty=0 ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        active:=false;
        sql.Clear;
        sql.add('update JGZLS ');    //加工子材料單價寫入
        sql.add('set VNPrice=(select #CL.TotPrice from #CL');
        sql.add('             left join JGZL on JGZL.CKBH=#CL.CKBH ');
        sql.add('             where #CL.CLBH=JGZLS.ZMLB and JGZL.JGNO=JGZLS.JGNO  ');
        sql.add('                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
        sql.add('                   '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''''+' )');
        sql.add('where exists(select JGZL.JGNO from JGZL ');
        sql.add('             where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between');
        sql.add('                   '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                   and JGZLS.JGNO=JGZL.JGNO ) ');
        sql.add('      and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
        sql.add('and (JGZLS.VNPrice is null or JGZLS.VNPrice=0)');   //是否需要限定為只對空值再次寫入

        sql.add(' Update JGZLS ');
        sql.add(' set VNPrice=0 ');     //將加工子材料單價如有空值，則歸為0，以免再次重算計算。
        sql.add(' where JGZLS.VNPrice is null ');
        sql.add('       and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
        sql.add('       and exists(select JGZL.JGNO from JGZL where convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
        sql.add('            '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('       and JGZL.JGNO=JGZLS.JGNO)');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        active:=false;
        sql.Clear;
        //計算母材料單價
        sql.add('update JGZLS ');     //更新加工材料母材料總金額
        sql.add('set JGZLS.CLACC=(select CLACC from');
        sql.add('                      (select JGZLS.CLBH,JGZLS.JGNO,sum(round(round(JGZLS.Qty*JGZLM.Qty,'+WH_Decimal+')*JGZLS.VNprice,'+inttostr(VNPrice_Decimal)+')) as CLACC');
        sql.add('                       from JGZLS');
        sql.add('                       left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
        sql.add('                                  where  exists(select JGZL.JGNO from JGZL');
        sql.Add('                                                where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ' );
        sql.add('                                                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                                                and JGZLS.JGNO=JGZL.JGNO)  ');
        sql.add('                                                and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                                 ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH ') ;
        sql.add('                       where  exists(select JGZL.JGNO from JGZL');
        sql.Add('                                     where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ' );
        sql.add('                                           '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                                           and JGZLS.JGNO=JGZL.JGNO)  ');
        sql.add('                                           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                       group by JGZLS.CLBH,JGZLS.JGNO)  SunPrice where  SunPrice.CLBH=JGZLS.CLBH and SunPrice.JGNO=JGZLS.JGNO)');
        sql.add('where ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('      and exists(select JGZL.JGNO from JGZL');
        sql.add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
        sql.add('                          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                 and JGZL.JGNO=JGZLS.JGNO)');
        sql.add('update JGZLS ');
        sql.add('set CLACC=0');
        sql.add('where ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('      and CLACC is null');
        sql.add('      and exists(select JGZL.JGNO from JGZL');
        sql.add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
        sql.add(                           ''''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                       and JGZL.JGNO=JGZLS.JGNO)');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        active:=false;
        sql.Clear;
        sql.add('update JGZLS ');     //更新加工材料母材料價格 0,如果價格為空值，最後一次講算結束整個循環
        sql.add('set CLPrice=round(CLACC/Qty,'+inttostr(VNPrice_Decimal)+')');
        sql.add('where ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('      and Qty<>0');
        sql.add('      and exists(select JGZL.JGNO from JGZL');
        sql.add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
        sql.add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                       and JGZL.JGNO=JGZLS.JGNO)');
        sql.add('update JGZLS ');     //更新加工材料母材料價格
        sql.add('set CLPrice=0');
        sql.add('where ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('      and Qty=0');
        sql.add('      and exists(select JGZL.JGNO from JGZL');
        sql.add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
        sql.add('                         '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                       and JGZL.JGNO=JGZLS.JGNO)');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
       // showmessage('Revise the VNPrice of month .');
        active:=false;
        sql.Clear;
        sql.add('update #CL ');     //重新計算月平均單價
        sql.add('set JGQty=isnull((select Qty from (select JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(JGZLS.CLACC),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
        sql.add('                            from JGZLS ');
        sql.add('                            left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                            where  JGZL.CFMID1<>'+''''+'NO'+'''');
        sql.add('                                   and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
        sql.add('                                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                                   and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                                   and CLACC is not null ');
        sql.add('                            group by JGZL.CKBH,JGZLS.CLBH ) JGList where JGList.CLBH=#CL.CLBH and JGList.CKBH=#CL.CKBH),0),');
        sql.add('  JGACC=isnull((select JGACC from (select JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(JGZLS.CLACC),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
        sql.add('                            from JGZLS ');
        sql.add('                            left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
        sql.add('                            where JGZL.CFMID1<>'+''''+'NO'+'''');
        sql.add('                                  and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
        sql.add('                                      '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                                  and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('                                  and CLACC is not null ');
        sql.add('                            group by JGZl.CKBH,JGZLS.CLBH ) JGList where JGList.CLBH=#CL.CLBH and JGList.CKBH=#CL.CKBH),0)');
        sql.add('update #CL');
        sql.add('set TotQty=LastQty+RKQty+JGQty,');
        sql.add('    TotACC=LastACC+RKACC+JGACC');
        sql.add('update #CL ');
        sql.add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+')');
        sql.add('where TotQty<>0 ');

        sql.add('update #CL ');
        sql.add('set TotPrice=0 ');
        sql.add('where TotQty=0 ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
       // showmessage('update LLQty ,LLACC and JGCKQty ,JGCKACC.');
        //將＃CL表加工出庫，最後庫存金額及數量計算一次，並計算出本月結余庫存金額，為寫入本月庫存金額作准備
        // 所有入庫，加工入庫，上月庫存， 數量及金額不動
        active:=false;
        sql.Clear;
        sql.add('if object_id('+''''+'tempdb..#JGList'+''''+') is not null  ');
        sql.add('begin   drop table #JGList end   ');
        //20160505 convert money to float for JGCKQty
        sql.add('select JGZL.CKBH,JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),'+WH_Decimal+')) as JGCKQty,');
        sql.add('       convert(bigint,sum(round(round(JGZLS.Qty*JGZLM.Qty,'+WH_Decimal+')*JGZLS.VNPrice,'+inttostr(VNPrice_Decimal)+'))) as JGCKACC ');
        sql.add('into #JGList from JGZLS');
        sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
        sql.add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
        sql.add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
        sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
        sql.add('                  '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
        sql.add('                 and JGZL.CFMID1 <>'+''''+'NO'+'''');
        sql.add('                 and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
        sql.add('           ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
        sql.add('where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
        sql.add('      and JGZL.CFMID1 <>'+''''+'NO'+'''');
        sql.add('and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'' ');
        sql.add('      and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
        sql.add('group by JGZl.CKBH,JGZLS.ZMLB  ');
        sql.add('order by  JGZl.CKBH,JGZLS.ZMLB');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        active:=false;
        sql.Clear;

        sql.add('update #CL ');
        sql.add('set JGCKQty =isnull((select JGCKQty as JGCKQty ');
        sql.add('              from #JGList where #CL.CLBH=#JGList.ZMLB and #JGList.CKBH=#CL.CKBH),0),');

        sql.add('     JGCKACC=isnull((select round(JGCKACC,'+inttostr(VNPrice_Decimal)+') as JGCKACC ');
        sql.add('              from #JGList where #CL.CLBH=#JGList.ZMLB and #JGList.CKBH=#CL.CKBH),0)');
        sql.add('if object_id('+''''+'tempdb..#JGList'+''''+') is not null  ');
        sql.add('begin   drop table #JGList end   ');
        //funcObj.WriteErrorLog(sql.Text);
        //更改之計算新的出庫單價，可能與加工子材料單價不同。
        execsql;
        active:=false;
        sql.Clear;

        sql.add('update #CL ');
        sql.add('set RKQty=0 ');
        sql.add('where RKQty is null ');

        sql.add('update #CL ');
        sql.add('set RKACC=0 ');
        sql.add('where JGACC is null ');

        sql.add('update #CL ');
        sql.add('set JGQty=0 ');
        sql.add('where JGQty is null ');

        sql.add('update #CL ');
        sql.add('set JGACC=0 ');
        sql.add('where JGACC is null ');

        sql.add('update #CL ');
        sql.add('set JGCKQty=0 ');
        sql.add('where JGCKQty is null ');

        sql.add('update #CL ');
        sql.add('set JGCKACC=0 ');
        sql.add('where JGCKACC is null ');

        sql.add('update #CL ');
        sql.add('set TotPrice=round((LastACC+RKACC+JGACC)/(LastQty+RKQty+JGQty),'+inttostr(VNPrice_Decimal)+')');
        sql.add('where LastQty+RKQty+JGQty<>0 ');

        sql.add('update #CL ');
        sql.add('set TotPrice=0 ');
        sql.add('where TotPrice is null ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        active:=false;
        sql.Clear;

        //更新材料出庫之新單價，作最近計算
        sql.add('update KCLLS ');      //出庫單價寫入
        sql.add('set VNPrice=(select #CL.TotPrice from #CL');
        sql.add('             left join KCLL on KCLL.CKBH=#CL.CKBH ');
        sql.add('             where #CL.CLBH=KCLLS.CLBH ');
        sql.add('                   and KCLLS.LLNO=KCLL.LLNO');
        sql.add('                   and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
        sql.add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''''+')');
        sql.add('where exists(select KCLL.LLNO from KCLL ');
        sql.add('             where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
        sql.add('                   '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                   and KCLLS.LLNO=KCLL.LLNO ) ');
        sql.add('update KCLLS ');      //出庫單價寫入
        sql.add('set VNPrice=0');
        sql.add('where exists(select KCLL.LLNO from KCLL ');
        sql.add('             where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between');
        sql.add('                   '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
        sql.add('                   and KCLLS.LLNO=KCLL.LLNO ) ');
        sql.add('      and VNPrice is null ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;

        active:=false;       //計算出庫金額
        sql.Clear;
        sql.add('update KCLLS ');
        sql.add('set KCLLS.VNACC=round(round(KCLLS.Qty,'+WH_Decimal+')*KCLLS.VNPrice,'+inttostr(VNPrice_Decimal)+') ');
        sql.add('where exists(select KCLL.LLNO from KCLL');
        sql.add('             where KCLL.LLNO=KCLLS.LLNO ');
        sql.add('             and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
        sql.add('             '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''+')');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;

        active:=false;
        sql.Clear;
        sql.add('update #CL ');
        sql.add('set CKQty=isnull((select LLQty as LLQty ');
        sql.add('           from (select KCLL.CKBH,KCLLS.CLBH,sum(round(KCLLS.Qty,'+WH_Decimal+')) as LLQty,sum(KCLLS.VNACC) as LLACC ');
        sql.add('                 from KCLLS ');
        sql.add('                 left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
        sql.add('                 where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between')   ;
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
        sql.add('                       and KCLL.CFMID<>'+''''+'NO'+'''');
        sql.add('                 group by KCLL.CKBH,KCLLS.CLBH) LLList where #CL.CLBH=LLList.CLBH and #CL.CKBH=LLList.CKBH),0),');
        sql.add('   CKACC= isnull((select LLACC as LLACC ');
        sql.add('           from (select KCLL.CKBH,KCLLS.CLBH,sum(round(KCLLS.Qty,'+WH_Decimal+')) as LLQty,sum(KCLLS.VNACC) as LLACC ');
        sql.add('                 from KCLLS ');
        sql.add('                 left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
        sql.add('                 where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between')   ;
        sql.add('                          '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+''''  );
        sql.add('                       and KCLL.CFMID<>'+''''+'NO'+'''');
        sql.add('                 group by KCLL.CKBH,KCLLS.CLBH) LLList where #CL.CLBH=LLList.CLBH and #CL.CKBH=LLList.CKBH),0)');

        sql.add('update #CL ');
        sql.add('set CKQty=0 ');
        sql.add('where CKQty is null ');

        sql.add('update #CL ');
        sql.add('set CKACC=0 ');
        sql.add('where CKACC is null ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
      end;
    with DelPrice2 do
    begin
        active:=false;
        sql.clear;
        sql.add('select #CL.*,CLZL.YWPM,CLZL.DWBH,LastQty+RKQty+JGQty-JGCKQty-CKQty as RemQty ');
        sql.add('         ,LastACC+RKACC+JGACC-JGCKACC-CKACC as RemACC ');
        sql.add('from #CL');
        sql.add('left join CLZL on CLZL.CLDH=#CL.CLBH');
        sql.add('order by CKBH,CLBH');
        //funcObj.WriteErrorLog(sql.Text);
        active:=true;
    end;
    DBGrid1.Font.Size:=8;
    DBGrid1.columns[0].width:=70;
    DBGrid1.columns[1].width:=350;
    DBGrid1.columns[2].width:=40;
    DBGrid1.columns[3].width:=50;
    DBGrid1.columns[4].width:=70;
    DBGrid1.columns[5].width:=50;
    DBGrid1.columns[6].width:=70;
    DBGrid1.columns[7].width:=50;
    DBGrid1.columns[8].width:=70;
    DBGrid1.columns[9].width:=50;
    DBGrid1.columns[10].width:=70;
    DBGrid1.columns[11].width:=50;
    DBGrid1.columns[12].width:=50;
    DBGrid1.columns[13].width:=70;
    DBGrid1.columns[14].width:=50;
    DBGrid1.columns[15].width:=70;
    DBGrid1.columns[16].width:=50;
    DBGrid1.columns[17].width:=70;
    DBGrid1.columns[18].width:=40;

    showmessage('Succeed.');
    BT9.Enabled:=false;
    BT10.Enabled:=true;
  except
    showmessage('Have wrong.');
  end;
end;
//20170802材料入庫分類
procedure TAccountCal.BT10_CLHG();
begin
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('declare @exchange int');
    SQL.Add('set @exchange=(select CWHL from CWHL ');
    SQL.Add('               where HLYEAR='''+CBX1.text+'''');
    SQL.Add('                     and HLMONTH= '''+CBX2.text+''')');
    SQL.Add('             ');
    SQL.Add('delete CWCLCOUNT_HG ');
    SQL.Add('where KCYEAR='''+CBX1.text+'''');
    SQL.Add('      and KCMONTH='''+CBX2.text+''' ');
    SQL.Add('insert CWCLCOUNT_HG       ');
    SQL.Add('select '''+CBX1.text+''' as KCYEAR , '''+CBX2.text+'''');
    SQL.Add('       as KCMONTH,CKBH,HGLB,CLBH,LastQty+RKQty+JGQty-CKQty-JGCKQty as Qty,');
    SQL.Add('       round((LastACC+RKACC+JGACC-JGCKACC-CKACC),'+inttostr(VNPrice_Decimal)+') as VNACC,');
    SQL.Add('       convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE,');
    SQL.Add('       '''+main.Edit1.Text+''' as USERID,''1'' as YN,''621PB'' as CostID');
    SQL.Add('from #CLHG ');
    SQL.Add('where ((LastQty+RKQty+JGQty-CKQty-JGCKQty<0.0001 ');
    SQL.Add('           and LastACC+RKACC+JGACC-JGCKACC-CKACC<>0)');
    SQL.Add('   or (LastQty+RKQty+JGQty-CKQty-JGCKQty>=0.0001  ');
    SQL.Add('           and LastACC+RKACC+JGACC-JGCKACC-CKACC<0 ))');
    SQL.Add('order by CKBH,CLBH');

    SQL.Add('delete KCCLMONTH_HG ');
    SQL.Add('where KCYEAR='''+CBX1.text+'''');
    SQL.Add('      and KCMONTH='''+CBX2.text+'''');
    SQL.Add('insert KCCLMONTH_HG ');
    SQL.Add('select '''+CBX1.text+''' as KCYEAR , '''+CBX2.text+'''');
    SQL.Add('       as KCMONTH, #CLHG.CKBH,#CLHG.CLBH,#CLHG.HGLB,LastQty+RKQty+JGQty-CKQty-JGCKQty as Qty,');
    SQL.Add('       null as USPRice,@Exchange as CWHL,');
    SQL.Add('       case when LastACC+RKACC+JGACC-JGCKACC-CKACC<0 then 0  ');
    SQL.Add('            else  round((LastACC+RKACC+JGACC-JGCKACC-CKACC)/(LastQty+RKQty+JGQty-CKQty-JGCKQty),'+inttostr(VNPrice_Decimal)+') end as VNPrice, ');
    SQL.Add('       case when LastACC+RKACC+JGACC-JGCKACC-CKACC<0 then 0 ');
    SQL.Add('            else round((LastACC+RKACC+JGACC-JGCKACC-CKACC),'+inttostr(VNPrice_Decimal)+')end  as VNACC,CLLBFLS.LBBH,');
    SQL.Add('       convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE,');
    SQL.Add('       '''+main.Edit1.Text+''' as USERID,''1'' as YN');
    SQL.Add('from #CLHG ');
    SQL.Add('left join KCCK on KCCK.CKBH=#CLHG.CKBH ');
    SQL.Add('left join CLLBFLS on CLLBFLS.CLBH=#CLHG.CLBH and CLLBFLS.GSBH=KCCK.GSBH ');
    SQL.Add('where LastQty+RKQty+JGQty-CKQty-JGCKQty>=0.0001  ');
    SQL.Add('');
    SQL.Add('delete CWCLZL_HG ');
    SQL.Add('where KCYEAR='''+CBX1.text+'''');
    SQL.Add('      and KCMONTH='''+CBX2.text+'''');
    SQL.Add('insert CWCLZL_HG ');
    SQL.Add('select '''+CBX1.text+''' as KCYEAR, '''+CBX2.text+''' as KCMONTH,CKBH,CLBH,HGLB,LastQty,LastACC,');
    SQL.Add('       RKQty,RKACC, JGQty,JGACC,TotQty,TotACC,TotPrice,JGCKQty,JGCKACC,CKQty,CKACC');
    SQL.Add('      ,LastQty+RKQty+JGQty-JGCKQty-CKQty as RemQty ,LastACC+RKACC+JGACC-JGCKACC-CKACC as RemACC, ');
    SQL.Add('       convert(smalldatetime,convert(varchar,getdate(),111)) as USERDate, '''+main.Edit1.Text+''' as USERID,''1'' as YN');
    SQL.Add(' from #CLHG ');
    SQL.Add(' where (LastQty>0 or RKQty>0 or JGQty>0 or JGCKQty>0 or CKQty>0)');
    SQL.Add(' order by CKBH,CLBH');
    ExecSQL();
  end;
end;
procedure TAccountCal.BT10Click(Sender: TObject);
begin
  try
    with write do
    begin
        //將有余額無數量的材料清單列出以備查詢調帳
        active:=false;
        sql.Clear;
        sql.Add('delete CWCLCOUNT ');
        sql.add('where KCYEAR='+''''+ CBX1.Text+'''');
        sql.add('      and KCMONTH='+''''+CBX2.Text+'''');
        sql.add('insert CWCLCOUNT ');
        sql.add('select '+''''+CBX1.text+''''+' as KCYEAR , '+''''+CBX2.text+'''');
        sql.add('       as KCMONTH,CKBH,CLBH,LastQty+RKQty+JGQty-CKQty-JGCKQty as Qty,');
        sql.add('       round((LastACC+RKACC+JGACC-JGCKACC-CKACC),'+inttostr(VNPrice_Decimal)+') as VNACC,');
        sql.add('       convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE,');
        sql.add('       '''+main.Edit1.Text+''''+' as USERID,'+''''+'1'+''''+' as YN,'+''''+'621PB'+''''+' as CostID');
        sql.add('from #CL ');
        sql.add('where (LastQty+RKQty+JGQty-CKQty-JGCKQty<=0 ');
        sql.add('           and LastACC+RKACC+JGACC-JGCKACC-CKACC<>0)');
        sql.add('   or (LastQty+RKQty+JGQty-CKQty-JGCKQty>0  ');
        sql.add('           and LastACC+RKACC+JGACC-JGCKACC-CKACC<0 )');
        sql.add('order by CKBH,CLBH ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;

        active:=false;
        sql.Clear;          //更新月底庫存清單表
        sql.add('declare @exchange int');
        sql.add('set @exchange=(select CWHL from CWHL ');
        sql.add('               where HLYEAR='+''''+CBX1.Text+'''');
        sql.add('                     and HLMONTH= '+''''+CBX2.Text+''''+')');
        sql.Add('delete KCCLMONTH ');
        sql.add('where KCYEAR='+''''+ CBX1.Text+'''');
        sql.add('      and KCMONTH='+''''+CBX2.Text+'''');
        sql.add('insert KCCLMONTH ');
        sql.add('select '+''''+CBX1.text+''''+' as KCYEAR , '+''''+CBX2.text+'''');
        sql.add('       as KCMONTH, #CL.CKBH,#CL.CLBH,LastQty+RKQty+JGQty-CKQty-JGCKQty as Qty,');
        sql.add('       null as USPRice,@Exchange as CWHL,');
        sql.add('       case when LastACC+RKACC+JGACC-JGCKACC-CKACC<0 then 0  ');
        sql.add('            else  round((LastACC+RKACC+JGACC-JGCKACC-CKACC)/(LastQty+RKQty+JGQty-CKQty-JGCKQty),'+inttostr(VNPrice_Decimal)+') end as VNPrice, ');
        sql.add('       case when LastACC+RKACC+JGACC-JGCKACC-CKACC<0 then 0 ');
        sql.add('            else round((LastACC+RKACC+JGACC-JGCKACC-CKACC),'+inttostr(VNPrice_Decimal)+')end  as VNACC,CLLBFLS.LBBH,');
        sql.add('       convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE,');
        sql.add('       '''+main.Edit1.Text+''''+' as USERID,'+''''+'1'+''''+' as YN');
        sql.add('from #CL ');
        sql.add('left join KCCK on KCCK.CKBH=#CL.CKBH ');
        sql.add('left join CLLBFLS on CLLBFLS.CLBH=#CL.CLBH and CLLBFLS.GSBH=KCCK.GSBH ');
        sql.add('where LastQty+RKQty+JGQty-CKQty-JGCKQty>0 ');
        //sql.add('      and LastACC+RKACC+JGACC-JGCKACC-CKACC>=0 ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;

        //更新月份材料進出總賬，包括上月庫存，當月材料入庫，當月加工母材料，當月單價資料，當月出庫，當月子材料
        active:=false;
        sql.clear;
        sql.add('delete CWCLZL ');
        sql.add('where KCYEAR='+''''+CBX1.Text+'''');
        sql.add('      and KCMONTH='+''''+CBX2.Text+'''');
        sql.add('insert CWCLZL ');
        sql.add('select '+''''+CBX1.Text+''''+' as KCYEAR, '+''''+CBX2.Text+''''+' as KCMONTH,CKBH,CLBH,LastQty,LastACC,');
        sql.add('       RKQty,RKACC, JGQty,JGACC,TotQty,TotACC,TotPrice,JGCKQty,JGCKACC,CKQty,CKACC');
        sql.add('      ,LastQty+RKQty+JGQty-JGCKQty-CKQty as RemQty ,LastACC+RKACC+JGACC-JGCKACC-CKACC as RemACC, ');
        sql.add('       '''+ formatdatetime('yyyy/mm/dd',date)+'''' +' as USERDate, '+''''+main.Edit1.Text+''''+' as USERID,'+''''+'1'+''''+' as YN');
        sql.add(' from #CL order by CKBH,CLBH ');
        //funcObj.WriteErrorLog(sql.Text);
        execsql;
        {
        //寫入新的計算日常單價
        active:=false;
        sql.Clear;
        //刪除臨時表
        sql.add('if object_id('+''''+'tempdb..#CL'+''''+') is not null  ');
        sql.add('begin   drop table #CL end   ');
        }


        active:=false;
        sql.Clear;
        sql.add('select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH ');
        sql.add('from KCCLMONTH ');
        sql.add('left join CLZL on KCCLMONTH.CLBH=CLZL.CLDH ');
        sql.add('where KCCLMONTH.KCYear='+''''+CBX1.Text+'''');
        sql.add('      and KCCLMONTH.KCMONTH='+''''+CBX2.Text+'''');
        sql.add('order by KCCLMONTH.CLBH ');
        //funcObj.WriteErrorLog(sql.Text);
        active:=true;
      end;
    DBGrid1.datasource:=DS10;
    DBGrid1.Font.Size:=8;
    DBGrid1.columns[0].width:=30;
    DBGrid1.columns[1].width:=20;
    DBGrid1.columns[2].width:=70;
    DBGrid1.columns[3].width:=350;
    DBGrid1.columns[4].width:=35;
    DBGrid1.columns[5].width:=50;
    DBGrid1.columns[6].width:=50;
    DBGrid1.columns[7].width:=50;
    DBGrid1.columns[8].width:=60;
    DBGrid1.columns[9].width:=70;
    DBGrid1.columns[10].width:=40;
    BT10.Enabled:=false;
    BT11.Enabled:=true;
    showmessage('Succeed.');
    showmessage('Finished.');

  except
    showmessage('Have wrong.');
  end;
end;

procedure TAccountCal.WriteCalcFields(DataSet: TDataSet);
begin
with write do
  begin
    fieldbyname('ACCVN').value:=fieldbyname('VNPrice').value*fieldbyname('Qty').value;
  end;
end;

procedure TAccountCal.Button4Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

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
  for   i:=1   to   DBGrid1.DataSource.dataset.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=DBGrid1.DataSource.dataset.fields[i-1].FieldName;
    end;
  DBGrid1.DataSource.dataset.First;
  j:=2;
  while   not  DBGrid1.DataSource.dataset.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   DBGrid1.DataSource.dataset.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=DBGrid1.DataSource.dataset.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      DBGrid1.DataSource.dataset.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  eclApp.Visible:=True;
except
  on   F:Exception   do
    showmessage(F.Message);
end;

end;

procedure TAccountCal.FormDestroy(Sender: TObject);
begin
  AccountCal:=nil;
end;

procedure TAccountCal.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',CBX1.text+'/'+CBX2.text+'  '+DBGrid1.DataSource.dataset.Name+':']);
end;

procedure TAccountCal.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
 // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i-1;
      break;
    end;
  end;
  with Ptemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  Readini();
  
end;
procedure TAccountCal.CalCulate_HG();
var iYear,iMonth:Word;
begin
    iYear:=strtoint(CBX1.Text);
    iMonth:=strtoint(CBX2.Text);
    // don't allow calculate  < 2017/06
    if (iYear<=2017) and (iMonth<=09) then
    begin
      //Version 20170830
      BT7_CLHG();
      Showmessage('Calculate Deliver Price OK');
      BT8_CLHG();
      Showmessage('Calculate Mother Material OK');
      BT9_CLHG();
      Showmessage('Calculate Deliver price2 OK');
      BT10_CLHG();
      Showmessage('Write to database OK');
    end else
    begin
      //Version 20171017
      BT7_CLHG_V2();
      Showmessage('Calculate Deliver  Price V2 OK');
      BT8_CLHG_V2();
      Showmessage('Calculate Mother Material V2 OK');
      BT9_CLHG_V2();
      Showmessage('Calculate Deliver price2 V2 OK');
      BT10_CLHG_V2();
      Showmessage('Write to database V2 OK');
    end;
  BT11.Enabled:=false;
  write.Active:=false;
  with WriteHG do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCCLMONTH.*,CLZL.YWPM,CLZL.DWBH ');
    sql.add('from KCCLMONTH_HG KCCLMONTH ');
    sql.add('left join CLZL on KCCLMONTH.CLBH=CLZL.CLDH ');
    sql.add('where KCCLMONTH.KCYear='+''''+CBX1.Text+'''');
    sql.add('      and KCCLMONTH.KCMONTH='+''''+CBX2.Text+'''');
    sql.add('order by KCCLMONTH.CLBH ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  DBGrid1.datasource:=DS11;
  DBGrid1.Font.Size:=8;
  DBGrid1.columns[0].width:=30;
  DBGrid1.columns[1].width:=20;
  DBGrid1.columns[2].width:=70;
  DBGrid1.columns[3].width:=350;
  DBGrid1.columns[4].width:=35;
  DBGrid1.columns[5].width:=50;
  DBGrid1.columns[6].width:=50;
  DBGrid1.columns[7].width:=50;
  DBGrid1.columns[8].width:=60;
  DBGrid1.columns[9].width:=70;
  DBGrid1.columns[10].width:=40;
  DBGrid1.columns[11].width:=40;
end;

procedure TAccountCal.BT11Click(Sender: TObject);
begin
  CalCulate_HG();
end;
//
function TAccountCal.CheckKCCLHGBH_CK():boolean;
var iRes:boolean;
begin
  iRes:=true;
  //檢查負數和入庫或領料 HGLB=NK 但CNO is null或空值
  with KCCLHGBH_CK do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select '''+CBX1.text+''' as KCYEAR,'''+CBX2.text+''' as KCMONTH,CKBH,CLBH,HGLB,CNO,Qty,CLZL.YWPM from (');
    SQL.Add('select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,');
    SQL.Add('       Round(isnull(round(Sum(LastRem),'+WH_Decimal+'),0)+isnull(round(Sum(RKQty),'+WH_Decimal+'),0)-isnull(round(Sum(LLQty),'+WH_Decimal+'),0)+isnull(round(Sum(JGRK),'+WH_Decimal+'),0)-isnull(round(Sum(JGCK),'+WH_Decimal+'),0),'+WH_Decimal+')  as Qty');
    SQL.Add(' from (');
    SQL.Add('select * from (');
    SQL.Add('select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CNO,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK');
    SQL.Add('           from KCCLMONTH_HGBH KCCLMONTH  where KCCLMONTH.KCYEAR='''+ayear+'''');
    SQL.Add('                                 and KCMONTH='''+amonth+''' and CLBH like ''%'' ');
    SQL.Add('                                 ) LastKC');
    SQL.Add('Union all   ');
    SQL.Add('select * from (');
    SQL.Add('select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCRKS.CNO end  as CNO ');
    SQL.Add('           ,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 as JGCK from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('                 and KCRKS.CLBH like ''%''    ');
    SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCRKS.CNO end ) RK        ');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCLLS.CNO end as CNO  ');
    SQL.Add('           ,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0 as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like ''%''   ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCLLS.CNO end ) LL    ');
    SQL.Add('union all ');
    SQL.Add('select * from (                                         ');
    SQL.Add('select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZ'' as CNO,0 as LastRem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from JGZLS');
    SQL.Add('          left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('                and JGZL.CFMID1<>''NO''');
    SQL.Add('                and JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0  and JGZLS.CLBH like ''%''  ');
    SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCLLS.CNO end as CNO ');
    SQL.Add('           ,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,sum(KCLLS.Qty) as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLLS.Qty>0 and KCLL.CFMID<>''NO''   and KCLLS.CLBH like ''%''  ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCLLS.CNO end ) JGCK');
    SQL.Add(') KCZLS');
    SQL.Add('where 1=1 and CLBH like ''%''  ');
    SQL.Add('Group by CKBH,CLBH,HGLB,CNO   ) KCZLS  ');
    SQL.Add('Left join CLZL on CLZL.CLDH=KCZLS.CLBH ');
    SQL.Add('where Qty<0');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    if RecordCount>0 then
    begin
      DBGrid1.datasource:=DS13;

      DBGrid1.columns[0].width:=64;
      DBGrid1.columns[1].width:=70;
      DBGrid1.columns[2].width:=45;
      DBGrid1.columns[3].width:=80;
      DBGrid1.columns[4].width:=46;
      DBGrid1.columns[5].width:=70;
      DBGrid1.columns[6].DisPlayFormat:='##,#0.00';
      DBGrid1.columns[6].width:=50;
      DBGrid1.columns[7].width:=300;
      if messagedlg('du lieu co Qty<0 ,tiep tuc khong?',mtCustom, [mbYes,mbNo], 0)=mrNo then
      begin
        iRes:=false;
        abort();
      end;
    end;
  end;
  with  KCCLHGBH_CK do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRK.CKBH,KCRK.HGLB,KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRKS.Qty,CLZL.YWPM,KCRK.MEMO,KCRK.USERDATE,KCRK.USERID from KCRKS');
    SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('      and KCRKS.CLBH like ''%''  ');
    SQL.Add('      and KCRK.HGLB in (''NK'',''TC'',''HD'',''NK1'',''TC1'',''HD1'',''NQ'',''NKNQ'') and IsNull(KCRKS.CNO,'''')='''' ');
    SQL.Add('order by KCRK.CKBH,KCRKS.CLBH');
    Active:=true;
    if RecordCount>0 then
    begin
      DBGrid1.datasource:=DS13;
      DBGrid1.columns[0].width:=45;
      DBGrid1.columns[1].width:=45;
      DBGrid1.columns[2].width:=80;
      DBGrid1.columns[3].width:=80;
      DBGrid1.columns[4].width:=80;
      DBGrid1.columns[5].width:=45;
      DBGrid1.columns[6].width:=50;
      DBGrid1.columns[7].width:=50;
      DBGrid1.columns[7].DisPlayFormat:='##,#0.00';
      DBGrid1.columns[8].width:=300;
      DBGrid1.columns[9].width:=100;
      DBGrid1.columns[10].width:=50;
      DBGrid1.columns[11].width:=40;
      if messagedlg('phieu nhap kho, NK va CNO is khong? ,tiep tuc khong?',mtCustom, [mbYes,mbNo], 0)=mrNo then
      begin
        iRes:=false;
        abort();
      end;
    end;
  end;
  //
  with  KCCLHGBH_CK do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCLL.CKBH,KCLLS.HGLB,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.CNO,KCLLS.Qty,CLZL.YWPM,KCLL.CFMDATE,KCLL.CFMID  from KCLLS ');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('      '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('      and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like ''%''   ');
    SQL.Add('      and KCLLS.HGLB in (''NK'',''TC'',''HD'',''NK1'',''TC1'',''HD1'',''NQ'',''NKNQ'') and IsNull(KCLLS.CNO,'''')=''''');
    SQL.Add('      order by KCLL.CKBH,KCLLS.CLBH');
    Active:=true;
    if RecordCount>0 then
    begin
      DBGrid1.datasource:=DS13;
      DBGrid1.columns[0].width:=45;
      DBGrid1.columns[1].width:=45;
      DBGrid1.columns[2].width:=80;
      DBGrid1.columns[3].width:=80;
      DBGrid1.columns[4].width:=30;
      DBGrid1.columns[5].width:=80;
      DBGrid1.columns[6].width:=50;
      DBGrid1.columns[7].width:=50;
      DBGrid1.columns[7].DisPlayFormat:='##,#0.00';
      DBGrid1.columns[8].width:=300;
      DBGrid1.columns[9].width:=50;
      DBGrid1.columns[10].width:=50;
      if messagedlg('Phieu xuat vat tu ,NK va CNO is khong? ,tiep tuc khong?',mtCustom, [mbYes,mbNo], 0)=mrNo then
      begin
        iRes:=false;
        abort();
      end;
    end;
  end;  
  result:=iRes;
end;

procedure TAccountCal.BT12Click(Sender: TObject);
var iYear,iMonth:Word;
begin
  iYear:=strtoint(CBX1.Text);
  iMonth:=strtoint(CBX2.Text);
    // don't allow calculate  < 2017/06
  if (iYear<=2017) and (iMonth<=12) then
  begin
    Showmessage('Khong the tinh lai < thang 12 nam 2017');
    abort;
  end;
  if CheckKCCLHGBH_CK()=false then
  begin
    abort();
  end;
  //
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Delete from KCCLMONTH_HGBH where KCYEAR='''+CBX1.text+''' and KCMONTH='''+CBX2.text+''' ');
    SQL.Add('insert into KCCLMONTH_HGBH ');
    SQL.Add('select '''+CBX1.text+''' as KCYEAR,'''+CBX2.text+''' as KCMONTH,CKBH,CLBH,HGLB,CNO,Qty,GetDate() as USERDATE,'''+main.Edit1.Text+''' as USERID,''1'' as YN from (');
    SQL.Add('select CKBH,CLBH,HGLB,CNO,Sum(LastRem) as LastRem,Sum(RKQty) as RKQty,Sum(LLQty) as LLQty,Sum(JGRK) as JGRK, Sum(JGCK) as JGCK,');
    SQL.Add('       Round(isnull(round(Sum(LastRem),'+WH_Decimal+'),0)+isnull(round(Sum(RKQty),'+WH_Decimal+'),0)-isnull(round(Sum(LLQty),'+WH_Decimal+'),0)+isnull(round(Sum(JGRK),'+WH_Decimal+'),0)-isnull(round(Sum(JGCK),'+WH_Decimal+'),0),'+WH_Decimal+')  as Qty');
    SQL.Add(' from (');
    SQL.Add('select * from (');
    SQL.Add('select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.CNO,KCCLMONTH.Qty as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,0 as JGCK');
    SQL.Add('           from KCCLMONTH_HGBH KCCLMONTH  where KCCLMONTH.KCYEAR='''+ayear+'''');
    SQL.Add('                                 and KCMONTH='''+amonth+''' and CLBH like ''%''  ');
    SQL.Add('                                 ) LastKC');
    SQL.Add('Union all   ');
    SQL.Add('select * from (');
    SQL.Add('select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCRKS.CNO end  as CNO ');
    SQL.Add('           ,0 as LastRem,sum(KCRKS.Qty) as RKQty,0 as LLQty,0 as JGRK,0 as JGCK from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('                 and KCRKS.CLBH like ''%''    ');
    SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,case when (IsNull(KCRKS.CNO,'''')='''' or KCRK.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCRKS.CNO end ) RK        ');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCLLS.CNO end as CNO ');
    SQL.Add('           ,0 as LastRem,0 as RKQty,sum(KCLLS.Qty) as LLQty,0 as JGRK,0 as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like ''%''  ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCLLS.CNO end ) LL    ');
    SQL.Add('union all ');
    SQL.Add('select * from (                                         ');
    SQL.Add('select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZ'' as CNO,0 as LastRem,0 as RKQty,0 as LLQty,sum(JGZLS.Qty) as JGRK,0 as JGCK from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('                and JGZL.CFMID1<>''NO''');
    SQL.Add('                and JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0  and JGZLS.CLBH like ''%''  ');
    SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK');
    SQL.Add('union all');
    SQL.Add('select * from (');
    SQL.Add('select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCLLS.CNO end as CNO ');
    SQL.Add('           ,0 as LastRem,0 as RKQty,0 as LLQty,0 as JGRK,sum(KCLLS.Qty) as JGCK from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
    SQL.Add('                 '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLLS.Qty>0 and KCLL.CFMID<>''NO''   and KCLLS.CLBH like ''%''  ');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,case when (IsNull(KCLLS.CNO,'''')='''' or KCLLS.HGLB not in (''NK'',''TC'',''HD'',''KD'',''NK1'',''TC1'',''HD1'',''KD1'',''NQ'',''NKNQ'')) then ''ZZZZ'' else KCLLS.CNO end ) JGCK');
    SQL.Add(') KCZLS');
    SQL.Add('where 1=1 and CLBH like ''%''  ');
    SQL.Add('Group by CKBH,CLBH,HGLB,CNO   ) KCZLS  ');
    //SQL.Add('where Qty>=0.0001 ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  with KCCLHGBH do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB');
    sql.add('      ,case when KCCLMONTH.CNO=''ZZZZ'' then '''' else CNO end as CNO,KCCLMONTH.Qty,CLZL.YWPM,CLZL.DWBH ');
    sql.add('from KCCLMONTH_HGBH KCCLMONTH ');
    sql.add('left join CLZL on KCCLMONTH.CLBH=CLZL.CLDH ');
    sql.add('where KCCLMONTH.KCYear='+''''+CBX1.Text+'''');
    sql.add('      and KCCLMONTH.KCMONTH='+''''+CBX2.Text+'''');
    sql.add('order by KCCLMONTH.CLBH ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  DBGrid1.datasource:=DS12;
  DBGrid1.Font.Size:=8;
  DBGrid1.columns[0].width:=64;
  DBGrid1.columns[1].width:=70;
  DBGrid1.columns[2].width:=45;
  DBGrid1.columns[3].width:=80;
  DBGrid1.columns[4].width:=46;
  DBGrid1.columns[5].width:=70;
  DBGrid1.columns[6].width:=50;
  DBGrid1.columns[7].width:=300;
  DBGrid1.columns[8].width:=50;
  BT12.Enabled:=false;
  Showmessage('Finish');

end;

//20170802材料入庫分類
procedure TAccountCal.BT7_CLHG_V2();
begin
  //
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#CLHG'') is not null  ');
    SQL.Add('begin   drop table #CLHG end   ');
    SQL.Add('select KCZLS.CKBH,KCZLS.CLBH,KCZLS.HGLB,');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as LastQty, isnull(KCCLMONTH.VNACC,0) as LastACC, ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as RKQty,isnull(KCCLMONTH.VNACC,0) as RKACC ,  ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as TotQty, round(KCCLMONTH.VNACC,'+inttostr(VNPrice_Decimal)+') as TotACC, ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as JGQty,isnull(KCCLMONTH.VNACC,0) as JGACC ,  ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as JGCKQty,isnull(KCCLMONTH.VNACC,0) as JGCKACC ,  ');
    SQL.Add('       isnull(KCCLMONTH.Qty,0) as CKQty,isnull(KCCLMONTH.VNACC,0) as CKACC ,  ');
    SQL.Add('       isnull(KCCLMONTH.Qty*KCCLMONTH.VNPrice,0) as TotPrice');
    SQL.Add('into  #CLHG  from (select * from KCZLS  CROSS JOIN');
    SQL.Add('  (select ''NK'' as HGLB union all select ''TC'' as HGLB union all select ''HD'' union all select ''KD'' union all select ''XT'' union all select ''GC'' union all select ''ZZZZ''  ');
    SQL.Add('       union all select ''NK1'' as HGLB union all select ''TC1'' as HGLB union all select ''HD1'' union all select ''KD1'' union all select ''H11'' union all select ''NQ'' union all select ''NKNQ'' ) LOAI ) KCZLS');
    SQL.Add('left join KCCLMONTH_HG KCCLMONTH on KCCLMONTH.CLBH=KCZLS.CLBH and KCCLMONTH.CKBH=KCZLS.CKBH and KCCLMONTH.HGLB=KCZLS.HGLB ');
    SQL.Add('                       and KCCLMONTH.CLBH=''ABCDEFG''');
    SQL.Add('where  exists(select KCCLMONTH.CLBH from KCCLMONTH_HG KCCLMONTH');
    SQL.Add('              where KCCLMONTH.CLBH=KCZLS.CLBH and KCCLMONTH.CKBH=KCZLS.CKBH  and KCYEAR='''+ayear+''' and KCMONTH='''+amonth+''')');
    SQL.Add('       ');
    SQL.Add('       or exists (select KCRKS.CLBH,KCRK.HGLB from KCRKS');
    SQL.Add('                  left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('                  where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                          '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('                        and KCRKS.CLBH=KCZLS.CLBH and KCRK.CKBH=KCZLS.CKBH ) ');
    SQL.Add('       or exists (select JGZLS.CLBH from JGZLS ');
    SQL.Add('                  left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('                  where  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('                        and JGZLS.CLBH=KCZLS.CLBH and JGZL.CKBH=KCZLS.CKBH)');
    SQL.Add('       or exists (select JGZLS.ZMLB from JGZLS ');
    SQL.Add('                  left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('                  where  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    SQL.Add('                        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('                        and JGZLS.ZMLB=KCZLS.CLBH and JGZL.CKBH=KCZLS.CKBH)');
    SQL.Add('order by KCZLS.CKBH,KCZLS.CLBH');
    SQL.Add('');
    SQL.Add('update #CLHG');
    SQL.Add('Set LastQty=RKList.Qty,LastAcc=RKList.ACCVN');
    SQL.Add('      from  (');
    SQL.Add('      select CKBH,CLBH,HGLB,Qty,convert(bigint,isnull(VNACC,0)) as ACCVN ');
    SQL.Add('             from KCCLMONTH_HG KCCLMONTH ');
    SQL.Add('             where KCYEAR='''+ayear+''' ');
    SQL.Add('                   and KCMONTH ='''+amonth+''' ) RKList where RKList.CKBH=#CLHG.CKBH and RKList.HGLB=#CLHG.HGLB and RKList.CLBH=#CLHG.CLBH                      ');
    SQL.Add('update #CLHG');
    SQL.Add('Set RKQty=RKList.Qty,RKACC=RKList.ACCVN');
    SQL.Add('      from  (');
    SQL.Add('      select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,round(sum(KCRKS.Qty),'+WH_Decimal+') as Qty,sum(isnull(KCRKS.VNACC,0)+isnull(KCRKS.ExchACC,0)) as ACCVN ');
    SQL.Add('                        from KCRKS ');
    SQL.Add('                        left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('                        where  convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    SQL.Add('                                 '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('                        group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB ) RKList where RKList.CKBH=#CLHG.CKBH and RKList.HGLB=#CLHG.HGLB and RKList.CLBH=#CLHG.CLBH');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotACC=LastACC+RKACC,');
    SQL.Add('TotQty=LastQty+RKQty');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 where TotQty=0');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+') ');
    SQL.Add('where TotQty<>0');
    //SQL.Add('--第一次更新加工子材料單價，根據期初+入庫平均單價');
    SQL.Add('Update KCLLS');
    SQL.Add('Set VNPrice_HG=KC.TotPrice');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB,#CLHG.TotPrice from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    //SQL.Add('  inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH ');
    SQL.Add('  inner join #CLHG on KCLL.CKBH=#CLHG.CKBH and #CLHG.CLBH=KCLLS.CLBH and #CLHG.HGLB=KCLLS.HGLB  ');
    SQL.Add('  where 1=1 and KCLL.SCBH=''JJJJJJJJJJ'' ');//KCLL.JGNO=JGZLS.JGNO;
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('        and KCLLS.Qty>0 ');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');
    SQL.Add('Update KCLLS');
    SQL.Add('Set VNPrice_HG=0');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH   ');
    SQL.Add('  where KCLL.JGNO=JGZLS.JGNO and KCLL.SCBH=''JJJJJJJJJJ'' ');
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('      and KCLLS.VNPrice_HG is null');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');
    SQL.Add('Update KCLLS');
    SQL.Add('Set VNAcc_HG=round(Qty*VNPrice_HG,'+inttostr(VNPrice_Decimal)+')  ');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  --inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH   ');
    SQL.Add('  where /* KCLL.JGNO=JGZLS.JGNO and */ KCLL.SCBH=''JJJJJJJJJJ'' ');
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');
    //funcObj.WriteErrorLog(sql.Text);
    execsql;
  end;
end;
//20170802材料入庫分類
procedure TAccountCal.BT8_CLHG_V2();
begin
  //
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('update JGZLS ');
    SQL.Add('set CLACC_HG=null,CLPrice_HG=null ');
    SQL.Add('where ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('      and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL;
  end;
  //
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Update JGZLS Set JGZLS.CLACC_HG=JGZL.VNACC');
    SQL.Add('from (   ');
    SQL.Add('  select KCLL.JGNO as JGNO,KCLLS.DFL as CLBH,Sum(IsNull(KCLLS.VNACC_HG,0)) as VNACC from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH   ');
    SQL.Add('  inner join JGZL  on JGZL.JGNO=JGZLS.JGNO  ');
    SQL.Add('  where KCLL.JGNO=JGZLS.JGNO and KCLL.SCBH=''JJJJJJJJJJ'' ');
    SQL.Add('      and  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('      and JGZLS.Qty>0 ');
    SQL.Add('      Group by KCLL.JGNO,KCLLS.DFL');
    SQL.Add(') JGZL where   JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0 and JGZL.JGNO=JGZLS.JGNO and JGZL.CLBH=JGZLS.CLBH ');
    SQL.Add('               and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');
    SQL.Add('update JGZLS ');
    SQL.Add('set CLPrice_HG=round(CLACC_HG/Qty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('      and Qty<>0');
    SQL.Add('      and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL;
  end;
end;
//
//20170802材料入庫分類
procedure TAccountCal.BT9_CLHG_V2();
begin
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    //SQL.Add('--第一次月加工數量和金額 (期初+入庫 原材料平均單價，計算母材料單價)');
    SQL.Add('Update  #CLHG Set JGQty=JGZL.Qty, JGACC=0');//20171202 會計長需求修改JGACC=JGZL.JGACC
    SQL.Add('from (                           ');
    SQL.Add('   select ''GC'' as HGLB,JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(case when JGZLS.CLPrice_HG is not null then JGZLS.CLACC_HG else 0 end ),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
    SQL.Add('   from JGZLS ');
    SQL.Add('   left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('   where JGZL.CFMID1<>''NO''');
    SQL.Add('        and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
    SQL.Add('           '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('        and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('        and CLACC is not null ');
    SQL.Add('   Group by JGZL.CKBH,JGZLS.CLBH  ) JGZL where JGZL.CKBH=#CLHG.CKBH and JGZL.HGLB=#CLHG.HGLB and JGZL.CLBH=#CLHG.CLBH ');
    SQL.Add('');
    SQL.Add('update #CLHG');
    SQL.Add('set TotQty=LastQty+RKQty+JGQty,');
    SQL.Add('    TotACC=LastACC+RKACC+JGACC');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where TotQty<>0 ');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 ');
    SQL.Add('where TotQty=0');
    SQL.Add('');
    //SQL.Add('--第二次計算加工子材料單價，根據期初+入庫+加工入庫 平均單價');
    SQL.Add('Update KCLLS');
    SQL.Add('Set VNPrice_HG=round(KC.TotPrice,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB,#CLHG.TotPrice from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    //SQL.Add('  inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH ');
    SQL.Add('  inner join #CLHG on KCLL.CKBH=#CLHG.CKBH and #CLHG.CLBH=KCLLS.CLBH and #CLHG.HGLB=KCLLS.HGLB  ');
    SQL.Add('  where 1=1 and KCLL.SCBH=''JJJJJJJJJJ'' '); //KCLL.JGNO=JGZLS.JGNO
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('        and KCLLS.Qty>0 ');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');
    SQL.Add('Update KCLLS');
    SQL.Add('Set VNAcc_HG=round(Qty*VNPrice_HG,'+inttostr(VNPrice_Decimal)+') ');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  --inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH   ');
    SQL.Add('  where /*KCLL.JGNO=JGZLS.JGNO and*/ KCLL.SCBH=''JJJJJJJJJJ'' ');
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');
    //SQL.Add('--第二次計算母材料平均單價(期初+入庫+加工 原材料平均單價，計算母材料單價)');
    SQL.Add('Update JGZLS Set JGZLS.CLACC_HG=JGZL.VNACC');
    SQL.Add('from (   ');
    SQL.Add('  select KCLL.JGNO as JGNO,KCLLS.DFL as CLBH,Sum(IsNull(KCLLS.VNACC_HG,0)) as VNACC from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH   ');
    SQL.Add('  inner join JGZL  on JGZL.JGNO=JGZLS.JGNO  ');
    SQL.Add('  where KCLL.JGNO=JGZLS.JGNO and KCLL.SCBH=''JJJJJJJJJJ'' ');
    SQL.Add('      and  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQl.Add('      and  JGZLS.Qty>0 ');
    SQL.Add('      Group by KCLL.JGNO,KCLLS.DFL');
    SQL.Add(') JGZL where   JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0 and JGZL.JGNO=JGZLS.JGNO and JGZL.CLBH=JGZLS.CLBH ');
    SQL.Add('               and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');

    SQL.Add('update JGZLS ');
    SQL.Add('set CLPrice_HG=round(CLACC_HG/Qty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('      and Qty<>0');
    SQL.Add('      and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');
    SQL.Add('');
    //SQL.Add('--第二次月加工數量和金額');
    SQL.Add('Update  #CLHG Set JGQty=JGZL.Qty, JGACC=0');  //20171202 會計長需求修改JGACC=JGZL.JGACC
    SQL.Add('from (                           ');
    SQL.Add('   select ''GC'' as HGLB,JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(case when JGZLS.CLPrice_HG is not null then JGZLS.CLACC_HG else 0 end ),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
    SQL.Add('   from JGZLS ');
    SQL.Add('   left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('   where JGZL.CFMID1<>''NO''');
    SQL.Add('        and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
    SQL.Add('           '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('        and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('        and CLACC is not null ');
    SQL.Add('   Group by JGZL.CKBH,JGZLS.CLBH  ) JGZL where JGZL.CKBH=#CLHG.CKBH and JGZL.HGLB=#CLHG.HGLB and JGZL.CLBH=#CLHG.CLBH ');
    SQL.Add('');
    SQL.Add('update #CLHG');
    SQL.Add('set TotQty=LastQty+RKQty+JGQty,');
    SQL.Add('    TotACC=LastACC+RKACC+JGACC');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where TotQty<>0 ');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 ');
    SQL.Add('where TotQty=0  ');
    SQL.Add('');
    //SQL.Add('-----第三次計算加工子材料單價，根據期初+入庫+加工入庫 ?? 平均單價');
    SQL.Add('Update KCLLS');
    SQL.Add('Set VNPrice_HG=round(KC.TotPrice,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB,#CLHG.TotPrice from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    //SQL.Add('  inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH ');
    SQL.Add('  inner join #CLHG on KCLL.CKBH=#CLHG.CKBH and #CLHG.CLBH=KCLLS.CLBH and #CLHG.HGLB=KCLLS.HGLB  ');
    SQL.Add('  where 1=1 and KCLL.SCBH=''JJJJJJJJJJ'' '); //KCLL.JGNO=JGZLS.JGNO
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('        and KCLLS.Qty>0 ');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');

    SQL.Add('Update KCLLS');
    SQL.Add('Set VNAcc_HG=round(Qty*VNPrice_HG,'+inttostr(VNPrice_Decimal)+') ');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  --inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH   ');
    SQL.Add('  where /*KCLL.JGNO=JGZLS.JGNO and*/ KCLL.SCBH=''JJJJJJJJJJ'' ');
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');

    //SQL.Add('--第三次計算母材料平均單價(期初+入庫+加工 原材料平均單價，計算母材料單價)');
    SQL.Add('Update JGZLS Set JGZLS.CLACC_HG=JGZL.VNACC');
    SQL.Add('from (   ');
    SQL.Add('  select KCLL.JGNO as JGNO,KCLLS.DFL as CLBH,Sum(IsNull(KCLLS.VNACC_HG,0)) as VNACC from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH   ');
    SQL.Add('  inner join JGZL  on JGZL.JGNO=JGZLS.JGNO  ');
    SQL.Add('  where KCLL.JGNO=JGZLS.JGNO and KCLL.SCBH=''JJJJJJJJJJ'' ');
    SQL.Add('      and  convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+formatdatetime('yyyy/mm/dd',sdate)+''' and '''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('      and  JGZLS.Qty>0 ');
    SQL.Add('      Group by KCLL.JGNO,KCLLS.DFL');
    SQL.Add(') JGZL where   JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZLS.Qty>0  and JGZL.JGNO=JGZLS.JGNO and JGZL.CLBH=JGZLS.CLBH ');
    SQL.Add('               and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');

    SQL.Add('update JGZLS ');
    SQL.Add('set CLPrice_HG=round(CLACC_HG/Qty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('      and Qty<>0');
    SQL.Add('      and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''  ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)  ');
    SQL.Add('update JGZLS ');
    SQL.Add('set CLPrice=0');
    SQL.Add('where ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('      and Qty=0');
    SQL.Add('      and exists(select JGZL.JGNO from JGZL');
    SQL.Add('                 where convert(smalldatetime,convert(varchar,JGZl.CFMDate1,111)) between ');
    SQL.Add('                       '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('                       and JGZL.JGNO=JGZLS.JGNO)');
    //SQL.Add('                                              ');
    //SQL.Add('---第三次月加工數量和金額');
    SQL.Add('Update  #CLHG Set JGQty=JGZL.Qty, JGACC=0');   //20171202 會計長需求修改JGACC=JGZL.JGACC
    SQL.Add('from (                           ');
    SQL.Add('   select ''GC'' as HGLB,JGZL.CKBH,JGZLS.CLBH,round(sum(JGZLS.Qty),'+WH_Decimal+') as Qty,isnull(round(sum(case when JGZLS.CLPrice_HG is not null then JGZLS.CLACC_HG else 0 end ),'+inttostr(VNPrice_Decimal)+'),0) as JGACC ');
    SQL.Add('   from JGZLS ');
    SQL.Add('   left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('   where JGZL.CFMID1<>''NO''');
    SQL.Add('        and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('        and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('        and CLACC is not null ');
    SQL.Add('   Group by JGZL.CKBH,JGZLS.CLBH  ) JGZL where JGZL.CKBH=#CLHG.CKBH and JGZL.HGLB=#CLHG.HGLB and JGZL.CLBH=#CLHG.CLBH ');
    SQL.Add('');
    SQL.Add('update #CLHG');
    SQL.Add('set TotQty=LastQty+RKQty+JGQty,');
    SQL.Add('    TotACC=LastACC+RKACC+JGACC');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round(TotACC/TotQty,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where TotQty<>0 ');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 ');
    SQL.Add('where TotQty=0   ');
    SQL.Add('');
    //20171011

    //更新KCRKCX VNPrice
    SQL.Add('Update KCLLS');
    SQL.Add('Set VNPrice_HG=round(KC.TotPrice,'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB,#CLHG.TotPrice from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  inner join #CLHG on KCLL.CKBH=#CLHG.CKBH and #CLHG.CLBH=KCLLS.CLBH and #CLHG.HGLB=KCLLS.HGLB  ');
    SQL.Add('  where KCLL.SCBH<>''JJJJJJJJJJ'' ');
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('        and KCLLS.Qty>0 ');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');

    SQL.Add('Update KCLLS');
    SQL.Add('Set VNPrice_HG=0');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  where KCLL.SCBH<>''JJJJJJJJJJ'' ');
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('      and KCLLS.VNPrice_HG is null');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');

    SQL.Add('Update KCLLS');
    SQL.Add('Set VNAcc_HG=round(Qty*VNPrice_HG,'+inttostr(VNPrice_Decimal)+') ');
    SQL.Add('from (');
    SQL.Add('  select KCLL.CKBH,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,KCLLS.HGLB from KCLLS');
    SQL.Add('  inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('  where KCLL.SCBH<>''JJJJJJJJJJ'' ');
    SQL.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    SQL.Add('        '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add(')  KC  where KC.LLNO=KCLLS.LLNO and KC.CLBH=KCLLS.CLBH and KC.DFL=KCLLS.DFL and KC.SCBH=KCLLS.SCBH ');

    //SQL.Add('---月加工發料金額和單價');
    //10 月份之後沒有JGCKQty
    SQL.Add('update #CLHG ');
    SQL.Add('  set JGCKQty=JGZL.Qty, JGCKACC=JGZL.VNACC');
    SQL.Add('from (');
    SQL.Add('select KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH,Sum(KCLLS.Qty) as Qty,Sum(IsNull(KCLLS.VNACC_HG,0)) as VNACC from KCLLS');
    SQL.Add('inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('inner join JGZLS on KCLLS.CLBH=JGZLS.ZMLB and KCLLS.DFL=JGZLS.CLBH');
    SQL.Add('where 1=2 and KCLL.JGNO=JGZLS.JGNO and KCLL.SCBH=''JJJJJJJJJJ''');
    SQL.Add('      and  convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+''' ');
    SQL.Add('      and  KCLLS.Qty>0');
    SQL.Add('      Group by KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH');

    SQL.Add(' ) JGZL where JGZL.CKBH=#CLHG.CKBH and JGZL.HGLB=#CLHG.HGLB and JGZL.CLBH=#CLHG.CLBH   ');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=round((LastACC+RKACC+JGACC)/(LastQty+RKQty+JGQty),'+inttostr(VNPrice_Decimal)+')');
    SQL.Add('where LastQty+RKQty+JGQty<>0');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set TotPrice=0 ');
    SQL.Add('where TotPrice is null');
    //SQL.Add('------更新領料單價');
    //SQL.Add('');
    //10月份開始只剩下領料單
    SQL.Add('update #CLHG ');
    SQL.Add('  set CKQty=KCLLS.Qty, CKACC=KCLLS.VNACC');
    SQL.Add('from  (select KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH,Sum(KCLLS.Qty) as Qty,Sum(IsNull(KCLLS.VNACC_HG,0)) as VNACC from KCLLS');
    SQL.Add('inner join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('where 1=1 --and KCLL.SCBH<>''JJJJJJJJJJ''');
    SQL.Add('      and  convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    SQL.Add('      and  KCLLS.Qty>0');
    SQL.Add('      Group by KCLL.CKBH,KCLLS.HGLB,KCLLS.CLBH  ) KCLLS ');

    SQL.Add('where KCLLS.CKBH=#CLHG.CKBH and KCLLS.HGLB=#CLHG.HGLB and KCLLS.CLBH=#CLHG.CLBH           ');
    SQL.Add('');

    SQL.Add('update #CLHG ');
    SQL.Add('set CKQty=0 ');
    SQL.Add('where CKQty is null ');
    SQL.Add('');
    SQL.Add('update #CLHG ');
    SQL.Add('set CKACC=0 ');
    SQL.Add('where CKACC is null      ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
end;
//20170802材料入庫分類
procedure TAccountCal.BT10_CLHG_V2();
begin
  with CLHG do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('declare @exchange int');
    SQL.Add('set @exchange=(select CWHL from CWHL ');
    SQL.Add('               where HLYEAR='''+CBX1.text+'''');
    SQL.Add('                     and HLMONTH= '''+CBX2.text+''')');
    SQL.Add('             ');
    SQL.Add('delete CWCLCOUNT_HG ');
    SQL.Add('where KCYEAR='''+CBX1.text+'''');
    SQL.Add('      and KCMONTH='''+CBX2.text+''' ');
    SQL.Add('insert CWCLCOUNT_HG       ');
    SQL.Add('select '''+CBX1.text+''' as KCYEAR , '''+CBX2.text+'''');
    SQL.Add('       as KCMONTH,CKBH,HGLB,CLBH,LastQty+RKQty+JGQty-CKQty-JGCKQty as Qty,');
    SQL.Add('       round((LastACC+RKACC+JGACC-JGCKACC-CKACC),'+inttostr(VNPrice_Decimal)+') as VNACC,');
    SQL.Add('       convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE,');
    SQL.Add('       '''+main.Edit1.Text+''' as USERID,''1'' as YN,''621PB'' as CostID');
    SQL.Add('from #CLHG ');
    SQL.Add('where ((LastQty+RKQty+JGQty-CKQty-JGCKQty<=0 ');
    SQL.Add('           and LastACC+RKACC+JGACC-JGCKACC-CKACC<>0)');
    SQL.Add('   or (LastQty+RKQty+JGQty-CKQty-JGCKQty>0  ');
    SQL.Add('           and LastACC+RKACC+JGACC-JGCKACC-CKACC<0 ))');
    SQL.Add('order by CKBH,CLBH');

    SQL.Add('delete KCCLMONTH_HG ');
    SQL.Add('where KCYEAR='''+CBX1.text+'''');
    SQL.Add('      and KCMONTH='''+CBX2.text+'''');
    SQL.Add('insert KCCLMONTH_HG ');
    SQL.Add('select '''+CBX1.text+''' as KCYEAR , '''+CBX2.text+'''');
    SQL.Add('       as KCMONTH, #CLHG.CKBH,#CLHG.CLBH,#CLHG.HGLB,LastQty+RKQty+JGQty-CKQty-JGCKQty as Qty,');
    SQL.Add('       null as USPRice,@Exchange as CWHL,');
    SQL.Add('       case when LastACC+RKACC+JGACC-JGCKACC-CKACC<0 then 0  ');
    SQL.Add('            else  round((LastACC+RKACC+JGACC-JGCKACC-CKACC)/(LastQty+RKQty+JGQty-CKQty-JGCKQty),'+inttostr(VNPrice_Decimal)+') end as VNPrice, ');
    SQL.Add('       case when LastACC+RKACC+JGACC-JGCKACC-CKACC<0 then 0 ');
    SQL.Add('            else round((LastACC+RKACC+JGACC-JGCKACC-CKACC),'+inttostr(VNPrice_Decimal)+')end  as VNACC,CLLBFLS.LBBH,');
    SQL.Add('       convert(smalldatetime,convert(varchar,getdate(),111)) as USERDATE,');
    SQL.Add('       '''+main.Edit1.Text+''' as USERID,''1'' as YN');
    SQL.Add('from #CLHG ');
    SQL.Add('left join KCCK on KCCK.CKBH=#CLHG.CKBH ');
    SQL.Add('left join CLLBFLS on CLLBFLS.CLBH=#CLHG.CLBH and CLLBFLS.GSBH=KCCK.GSBH ');
    SQL.Add('where LastQty+RKQty+JGQty-CKQty-JGCKQty>0  ');
    SQL.Add('');
    SQL.Add('delete CWCLZL_HG ');
    SQL.Add('where KCYEAR='''+CBX1.text+'''');
    SQL.Add('      and KCMONTH='''+CBX2.text+'''');
    SQL.Add('insert CWCLZL_HG ');
    SQL.Add('select '''+CBX1.text+''' as KCYEAR, '''+CBX2.text+''' as KCMONTH,CKBH,CLBH,HGLB,LastQty,LastACC,');
    SQL.Add('       RKQty,RKACC, JGQty,JGACC,TotQty,TotACC,TotPrice,JGCKQty,JGCKACC,CKQty,CKACC');
    SQL.Add('      ,LastQty+RKQty+JGQty-JGCKQty-CKQty as RemQty ,LastACC+RKACC+JGACC-JGCKACC-CKACC as RemACC, ');
    SQL.Add('       convert(smalldatetime,convert(varchar,getdate(),111)) as USERDate, '''+main.Edit1.Text+''' as USERID,''1'' as YN');
    SQL.Add(' from #CLHG ');
    SQL.Add(' where (LastQty>0 or RKQty>0 or JGQty>0 or JGCKQty>0 or CKQty>0)');
    SQL.Add(' order by CKBH,CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
end;
//20210527 領料單對照入庫單TC倉
procedure TAccountCal.Cal_KCPKLL();
var iYear,iMonth:integer;
begin
    if (CBX1.text='')or (CBX2.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
    iYear:=strtoint(CBX1.Text);
    iMonth:=strtoint(CBX2.Text);
    // don't allow calculate  < 2017/06
    if (iYear<=2017) and (iMonth<=6) then
    begin
      showmessage('Do not allow calculate < 2017/06');
      abort;
    end;
    if (iYear>2999) or (iYear<1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (iYear<2008) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (iMonth=0) or (iMonth>12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
    sdate:=encodedate(iYear,iMonth,1);
    edate:=endofthemonth(sdate);

    if strtoint(CBX2.Text)>1  then
    begin
      amonth:=inttostr(strtoint(CBX2.Text)-1);
      ayear:=CBX1.Text;
    end else
    begin
        amonth:='12';
        ayear:=inttostr(strtoint(CBX1.Text)-1);
    end;
    if  length(amonth)<2  then
    begin
      amonth:='0'+amonth;
    end;
    //刪除當月KCPKLL領料單號
    with Ptemp do
    begin
      Active:=false;
      SQL.CLear;
      SQL.Add('Delete from KCPKLL');
      SQL.Add('where LLNO in (');
      SQL.Add('	 Select KCLL.LLNO ');
      SQL.Add('	 From KCLL');
      SQL.Add('	 Left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('	 where KCLLS.HGLB in (''NK'',''KD'',''TC'',''HD'')   and KCLL.CFMID<>''NO''  and KCLLS.CLBH like ''%'' ');
       SQL.Add('     and KCLL.CKBH in ('+ToKhaiBtn_CKBH+') ');
      SQL.Add('		    and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('	 Group by KCLL.LLNO ) ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //TC倉入庫剩餘數量
    with Ptemp do
    begin
      Active:=false;
      SQL.CLear;
      SQL.Add('if object_id(''tempdb..#tmpInvoiceRK'') is not null');
      SQL.Add('  begin drop table #tmpInvoiceRK end ');
      SQL.Add('if object_id(''tempdb..#tmpInvoiceRKAll'') is not null');
      SQL.Add('  begin drop table #tmpInvoiceRKAll end ');
      SQL.Add('Select * into #tmpInvoiceRK from (');
      SQL.Add('	Select KCRK.*,IsNull(KCLL.LLQty,0) as LLOkQty,KCRK.RKQty-IsNull(KCLL.LLQty,0) as RemQty,ROW_NUMBER() over (PARTITION BY KCRK.CKBH,KCRK.CLBH,KCRK.HGLB ORDER BY KCRK.RKDate asc,KCRK.RKNO asc) as RKRN  from (');
      SQL.Add('	select RKNO,CKBH,HGLB,CLBH,Sum(RKQty) as RKQty,Max(RKDate) as RKDate from (');
      SQL.Add('	Select KCPKRK.RKNO,KCRK.CKBH,KCRK.HGLB,KCPKRK.CLBH,KCPKRK.Qty as RKQty,KCRK.UserDate as RKDate ');
      SQL.Add('	from KCPKRK');
      SQL.Add('	Left join KCRK on KCRK.RKNO=KCPKRK.RKNO');
      SQL.Add('	where KCRK.HGLB in (''NK'',''KD'',''TC'',''HD'')  and KCRK.SFL<>''THU HOI'' and KCPKRK.KCYEAR='''+ayear+''' and KCPKRK.KCMONTH='''+amonth+'''');
      SQL.Add('       and KCRK.CKBH in ('+ToKhaiBtn_CKBH+') ');
      SQL.Add('	union all');
      SQL.Add('	Select KCRK.RKNO,KCRK.CKBH,KCRK.HGLB,KCRKS.CLBH,Sum(KCRKS.Qty) as RKQty,Max(KCRK.UserDate) as RKDate from KCRK');
      SQL.Add('	Left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('	where KCRK.HGLB in (''NK'',''KD'',''TC'',''HD'')  and KCRK.SFL<>''THU HOI'' and KCRKS.CLBH is not null');
      SQL.Add('	      and convert(smalldatetime,convert(varchar,KCRK.UserDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('	Group by KCRK.RKNO,KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB ) KCRK');
      SQL.Add('	Group by RKNO,CKBH,HGLB,CLBH');
      SQL.Add(') KCRK');
      SQL.Add('left join (');
      SQL.Add('	select KCLL.CKBH,KCRK.HGLB,KCPKLL.PKNO,KCPKLL.CLBH,Sum(KCPKLL.Qty) as LLQty ');
      SQL.Add('	from KCPKLL');
      SQL.Add('	left join KCRK on KCRK.RKNO=KCPKLL.PKNO');
      SQL.Add('	Left join KCLL on KCLL.LLNO=KCPKLL.LLNO');
      SQL.Add('	where KCLL.CFMID<>''NO'' and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('	Group by KCLL.CKBH,KCRK.HGLB,KCPKLL.PKNO,KCPKLL.CLBH');
      SQL.Add(') KCLL on KCLL.CKBH=KCRK.CKBH and KCLL.HGLB=KCRK.HGLB and KCLL.PKNO=KCRK.RKNO and KCLL.CLBH=KCRK.CLBH');
      SQL.Add('where 1=1 and KCRK.CLBH like  ''%'' ) KCRK ');
      SQL.Add('where RemQty>0');
      SQL.Add('Select *,(select SUM(RKQty) from #tmpInvoiceRK B where B.RKRN<=A.RKRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as RKSumQty   into #tmpInvoiceRKAll ');
      SQL.Add('from #tmpInvoiceRK A');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //TC當月領料單號
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('if object_id(''tempdb..#tmpInvoiceLL'') is not null');
      SQL.Add('begin drop table #tmpInvoiceLL end ');
      SQL.Add('Select KCLL.*,ROW_NUMBER() over (PARTITION BY CKBH,CLBH,HGLB ORDER BY LLDate asc) as LLRN into #tmpInvoiceLL  from ( ');
      SQL.Add('Select KCLL.LLNO,KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,KCLL.CKBH,KCLLS.HGLB,Sum(KCLLS.Qty) as LLQty,Max(KCLL.CFMDate) as LLDate ');
      SQL.Add('From KCLL ');
      SQL.Add('Left join KCLLS on KCLLS.LLNO=KCLL.LLNO ');
      SQL.Add('where KCLLS.HGLB in (''NK'',''KD'',''TC'',''HD'')   and KCLL.CFMID<>''NO'' and KCLLS.Qty>0  and KCLLS.CLBH like ''%''');
      SQL.Add('      and KCLL.CKBH in ('+ToKhaiBtn_CKBH+') ');
      SQL.Add('	     and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('Group by KCLL.LLNO,KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,KCLL.CKBH,KCLLS.HGLB');
      SQL.Add(') KCLL');
      SQL.Add('Order by CKBH,CLBH,LLDate');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //新增KCPKLL =>這一筆入庫單數量不夠， 使用上一筆入庫單號多少數量
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into KCPKLL (LLNO,CLBH,DFL,SCBH,PKNO,Qty,UserID,UserDate,YN)');
      SQL.Add('Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,RKNO');
      SQL.Add('       ,case when GroupId=1 then  RKSumQty-(LLSumQty-LLQty) else RemQty end as PriorQty');
      SQL.Add('       ,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('from (');
      SQL.Add('select KCLL.*,ROW_NUMBER() over (PARTITION BY LLNO,CLBH,DFL,SCBH ORDER BY RKRN asc) as GroupId from (');
      SQL.Add('Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,KCLL.LLSumQty,KCLL.LLQty');
      SQL.Add('       ,#tmpInvoiceRKAll.RKNO,#tmpInvoiceRKAll.RemQty,#tmpInvoiceRKAll.RKSumQty,#tmpInvoiceRKAll.RKRN');
      SQL.Add('from (');
      SQL.Add('Select KCLL.*');
      SQL.Add('            ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKNO');
      SQL.Add('            ,(select top 1 RKRN from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKRN');
      SQL.Add('            ,(select top 1 RKSumQty from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKSumQty');
      SQL.Add('from (');
      SQL.Add('Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as LLSumQty  ');
      SQL.Add('from  #tmpInvoiceLL A');
      SQL.Add('where 1=1 and A.CLBH like ''%''  ) KCLL ) KCLL');
      SQL.Add('inner join  #tmpInvoiceRKAll on KCLL.CKBH=#tmpInvoiceRKAll.CKBH and KCLL.HGLB=#tmpInvoiceRKAll.HGLB and KCLL.CLBH=#tmpInvoiceRKAll.CLBH and KCLL.LL_RKRN>#tmpInvoiceRKAll.RKRN and #tmpInvoiceRKAll.RKSumQty>(KCLL.LLSumQty-KCLL.LLQty)');
      SQL.Add('where KCLL.LL_RKRN>1  ) KCLL ) KCLL');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //這一筆入庫單數量不夠 使用這一筆入庫單號的數量
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into KCPKLL (LLNO,CLBH,DFL,SCBH,PKNO,Qty,UserID,UserDate,YN)');
      SQL.Add('Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH');
      SQL.Add('       ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKNO');
      SQL.Add('	      ,KCLL.LLQty-Prior_KCRK.PrirorQty as NowQty');
      SQL.Add('       ,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('from (');
      SQL.Add('Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB  ) as LLSumQty  ');
      SQL.Add('from  #tmpInvoiceLL A');
      SQL.Add('where 1=1 and A.CLBH like ''%''  ) KCLL');
      SQL.Add('inner join (');
      SQL.Add('	select LLNO,SCBH,DFL,CLBH,Sum(PriorQty) as PrirorQty from (');
      SQL.Add('		Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,RKNO');
      SQL.Add('			   ,case when GroupId=1 then  RKSumQty-(LLSumQty-LLQty) else RemQty end as PriorQty');
      SQL.Add('		from (');
      SQL.Add('		select KCLL.*,ROW_NUMBER() over (PARTITION BY LLNO,CLBH,DFL,SCBH ORDER BY RKRN asc) as GroupId from (');
      SQL.Add('		Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,KCLL.LLSumQty,KCLL.LLQty');
      SQL.Add('			   ,#tmpInvoiceRKAll.RKNO,#tmpInvoiceRKAll.RemQty,#tmpInvoiceRKAll.RKSumQty,#tmpInvoiceRKAll.RKRN');
      SQL.Add('		from (');
      SQL.Add('		Select KCLL.*');
      SQL.Add('			   ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKNO');
      SQL.Add('			   ,(select top 1 RKRN from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKRN');
      SQL.Add('			   ,(select top 1 RKSumQty from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKSumQty');
      SQL.Add('		from (');
      SQL.Add('		Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as LLSumQty  ');
      SQL.Add('		from  #tmpInvoiceLL A');
      SQL.Add('		where 1=1 and A.CLBH like ''%''  ) KCLL ) KCLL');
      SQL.Add('		inner join  #tmpInvoiceRKAll on KCLL.CKBH=#tmpInvoiceRKAll.CKBH and KCLL.HGLB=#tmpInvoiceRKAll.HGLB and KCLL.CLBH=#tmpInvoiceRKAll.CLBH and KCLL.LL_RKRN>#tmpInvoiceRKAll.RKRN and #tmpInvoiceRKAll.RKSumQty>(KCLL.LLSumQty-KCLL.LLQty)');
      SQL.Add('		where KCLL.LL_RKRN>1  ) KCLL ) KCLL ) FinallData');
      SQL.Add('	Group by LLNO,SCBH,DFL,CLBH');
      SQL.Add(') Prior_KCRK on Prior_KCRK.LLNO=KCLL.LLNO and Prior_KCRK.SCBH=KCLL.SCBH and Prior_KCRK.DFL=KCLL.DFL and Prior_KCRK.CLBH=KCLL.CLBH');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    // 這一筆入庫單數量足夠
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into KCPKLL (LLNO,CLBH,DFL,SCBH,PKNO,Qty,UserID,UserDate,YN)');
      sql.Add('select * from (');
      SQL.Add('Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH');
      SQL.Add('       ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as RKNO');
      SQL.Add('	      ,KCLL.LLQty as Qty');
      SQL.Add('       ,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('from (');
      SQL.Add('Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as LLSumQty  ');
      SQL.Add('from  #tmpInvoiceLL A');
      SQL.Add('where 1=1 and A.CLBH like ''%'' ) KCLL');
      SQL.Add('where not exists (');
      SQL.Add('    select * from (');
      SQL.Add('	      select LLNO,SCBH,DFL,CLBH,Sum(PriorQty) as PrirorQty from (');
      SQL.Add('		Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,RKNO');
      SQL.Add('			   ,case when GroupId=1 then  RKSumQty-(LLSumQty-LLQty) else RemQty end as PriorQty');
      SQL.Add('		from (');
      SQL.Add('		select KCLL.*,ROW_NUMBER() over (PARTITION BY LLNO,CLBH,DFL,SCBH ORDER BY RKRN asc) as GroupId from (');
      SQL.Add('		Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,KCLL.LLSumQty,KCLL.LLQty');
      SQL.Add('			   ,#tmpInvoiceRKAll.RKNO,#tmpInvoiceRKAll.RemQty,#tmpInvoiceRKAll.RKSumQty,#tmpInvoiceRKAll.RKRN');
      SQL.Add('		from (');
      SQL.Add('		Select KCLL.*');
      SQL.Add('			   ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH  and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKNO');
      SQL.Add('			   ,(select top 1 RKRN from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH  and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKRN');
      SQL.Add('			   ,(select top 1 RKSumQty from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH  and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKSumQty');
      SQL.Add('		from (');
      SQL.Add('		Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as LLSumQty  ');
      SQL.Add('		from  #tmpInvoiceLL A');
      SQL.Add('		where 1=1 and A.CLBH like ''%''  ) KCLL ) KCLL');
      SQL.Add('		inner join  #tmpInvoiceRKAll on KCLL.CKBH=#tmpInvoiceRKAll.CKBH and KCLL.HGLB=#tmpInvoiceRKAll.HGLB and KCLL.CLBH=#tmpInvoiceRKAll.CLBH and KCLL.LL_RKRN>#tmpInvoiceRKAll.RKRN and #tmpInvoiceRKAll.RKSumQty>(KCLL.LLSumQty-KCLL.LLQty)');
      SQL.Add('		where KCLL.LL_RKRN>1  ) KCLL ) KCLL ) FinallData');
      SQL.Add('	    Group by LLNO,SCBH,DFL,CLBH ) A  ');
      SQL.Add('   where A.LLNO=KCLL.LLNO and A.DFL=KCLL.DFL and A.SCBH=KCLL.SCBH and A.CLBH=KCLL.CLBH )');
      sql.Add('   ) B where RKNO is not null');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //月結剩餘入庫單數量
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from KCPKRK where KCPKRK.KCYEAR='''+CBX1.Text+''' and KCPKRK.KCMONTH='''+CBX2.Text+'''');
      SQL.Add('Insert into KCPKRK (KCYEAR,KCMONTH,RKNO,CLBH,Qty,UserID,UserDate,YN)');
      SQL.Add('Select '''+CBX1.Text+''' as KCYEAR,'''+CBX2.Text+''' as KCMONTH,RKNO,CLBH, RemQty,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate,1 as YN from (');
      SQL.Add('	Select KCRK.*,IsNull(KCLL.LLQty,0) as LLOkQty,KCRK.RKQty-IsNull(KCLL.LLQty,0) as RemQty,ROW_NUMBER() over (PARTITION BY KCRK.CKBH,KCRK.CLBH,KCRK.HGLB ORDER BY KCRK.RKDate asc,KCRK.RKNO asc) as RKRN  from (');
      SQL.Add('	select RKNO,CKBH,HGLB,CLBH,Sum(RKQty) as RKQty,Max(RKDate) as RKDate from (');
      SQL.Add('	Select KCPKRK.RKNO,KCRK.CKBH,KCRK.HGLB,KCPKRK.CLBH,KCPKRK.Qty as RKQty,KCRK.UserDate as RKDate ');
      SQL.Add('	from KCPKRK');
      SQL.Add('	Left join KCRK on KCRK.RKNO=KCPKRK.RKNO');
      SQL.Add('	where KCRK.HGLB in (''NK'',''KD'',''TC'',''HD'')  and KCRK.SFL<>''THU HOI'' and KCPKRK.KCYEAR='''+ayear+''' and KCPKRK.KCMONTH='''+amonth+'''');
      SQL.Add('	union all');
      SQL.Add('	Select KCRK.RKNO,KCRK.CKBH,KCRK.HGLB,KCRKS.CLBH,Sum(KCRKS.Qty) as RKQty,Max(KCRK.UserDate) as RKDate from KCRK');
      SQL.Add('	Left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('	where KCRK.HGLB in (''NK'',''KD'',''TC'',''HD'')  and KCRK.SFL<>''THU HOI'' and KCRKS.CLBH is not null');
      SQL.Add('      and KCRK.CKBH in ('+ToKhaiBtn_CKBH+') ');
      SQL.Add('	      and convert(smalldatetime,convert(varchar,KCRK.UserDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('	Group by KCRK.RKNO,KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB ) KCRK');
      SQL.Add('	Group by RKNO,CKBH,HGLB,CLBH');
      SQL.Add(') KCRK');
      SQL.Add('left join (');
      SQL.Add('	select KCLL.CKBH,KCRK.HGLB,KCPKLL.PKNO,KCPKLL.CLBH,Sum(KCPKLL.Qty) as LLQty ');
      SQL.Add('	from KCPKLL');
      SQL.Add('	left join KCRK on KCRK.RKNO=KCPKLL.PKNO');
      SQL.Add('	Left join KCLL on KCLL.LLNO=KCPKLL.LLNO');
      SQL.Add('	where KCLL.CFMID<>''NO'' and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('	Group by KCLL.CKBH,KCRK.HGLB,KCPKLL.PKNO,KCPKLL.CLBH');
      SQL.Add(') KCLL on KCLL.CKBH=KCRK.CKBH and KCLL.HGLB=KCRK.HGLB and KCLL.PKNO=KCRK.RKNO and KCLL.CLBH=KCRK.CLBH');
      SQL.Add('where 1=1 and KCRK.CLBH like  ''%'' ) KCRK ');
      SQL.Add('where RemQty>0');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    Showmessage('Succeed.');
end;
procedure TAccountCal.Cal_KCPKLL_HGLB(HGLB:string);
var iYear,iMonth:integer;
begin
    if (CBX1.text='')or (CBX2.text='')  then
    begin
      showmessage('You have to select the year and month first.');
      abort;
    end;
    iYear:=strtoint(CBX1.Text);
    iMonth:=strtoint(CBX2.Text);
    // don't allow calculate  < 2017/06
    if (iYear<=2017) and (iMonth<=6) then
    begin
      showmessage('Do not allow calculate < 2017/06');
      abort;
    end;
    if (iYear>2999) or (iYear<1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (iYear<2008) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (iMonth=0) or (iMonth>12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
    sdate:=encodedate(iYear,iMonth,1);
    edate:=endofthemonth(sdate);

    if strtoint(CBX2.Text)>1  then
    begin
      amonth:=inttostr(strtoint(CBX2.Text)-1);
      ayear:=CBX1.Text;
    end else
    begin
        amonth:='12';
        ayear:=inttostr(strtoint(CBX1.Text)-1);
    end;
    if  length(amonth)<2  then
    begin
      amonth:='0'+amonth;
    end;
    //刪除當月KCPKLL領料單號
    with Ptemp do
    begin
      Active:=false;
      SQL.CLear;
      SQL.Add(' Delete from KCPKLL');
      SQL.Add(' From KCPKLL Left join KCLLS ');
      SQL.Add(' on KCPKLL.LLNO=KCLLS.LLNO  ');
      SQL.Add(' and KCPKLL.SCBH=KCLLS.SCBH and KCPKLL.CLBH=KCLLS.CLBH and KCPKLL.DFL=KCLLS.DFL   ');
      SQL.Add(' Left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
      SQL.Add(' Where left(KCLLS.HGLB,2)= '''+HGLB+''' and KCLL.CFMID<>''NO''  and KCLLS.CLBH like ''%'' ');
      SQL.Add(' and KCLL.CKBH in ('+ToKhaiBtn_CKBH+') ');
      SQL.Add(' and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between  ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //TC倉入庫剩餘數量
    with Ptemp do
    begin
      Active:=false;
      SQL.CLear;
      SQL.Add('if object_id(''tempdb..#tmpInvoiceRK'') is not null');
      SQL.Add('  begin drop table #tmpInvoiceRK end ');
      SQL.Add('if object_id(''tempdb..#tmpInvoiceRKAll'') is not null');
      SQL.Add('  begin drop table #tmpInvoiceRKAll end ');
      SQL.Add('Select * into #tmpInvoiceRK from (');
      SQL.Add('	Select KCRK.*,IsNull(KCLL.LLQty,0) as LLOkQty,KCRK.RKQty-IsNull(KCLL.LLQty,0) as RemQty,ROW_NUMBER() over (PARTITION BY KCRK.CKBH,KCRK.CLBH,KCRK.HGLB ORDER BY KCRK.RKDate asc,KCRK.RKNO asc) as RKRN  from (');
      SQL.Add('	select RKNO,CKBH,HGLB,CLBH,Sum(RKQty) as RKQty,Max(RKDate) as RKDate from (');
      SQL.Add('	Select KCPKRK.RKNO,KCRK.CKBH,KCRK.HGLB,KCPKRK.CLBH,KCPKRK.Qty as RKQty,KCRK.UserDate as RKDate ');
      SQL.Add('	from KCPKRK');
      SQL.Add('	Left join KCRK on KCRK.RKNO=KCPKRK.RKNO');
      SQL.Add('	where left(KCRK.HGLB,2)= '''+HGLB+''' and KCPKRK.KCYEAR='''+ayear+''' and KCPKRK.KCMONTH='''+amonth+'''');
      SQL.Add('       and KCRK.CKBH in ('+ToKhaiBtn_CKBH+') ');
      SQL.Add('	union all');
      SQL.Add('	Select KCRK.RKNO,KCRK.CKBH,KCRK.HGLB,KCRKS.CLBH,Sum(KCRKS.Qty) as RKQty,Max(KCRK.UserDate) as RKDate from KCRK');
      SQL.Add('	Left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('	where left(KCRK.HGLB,2)= '''+HGLB+'''  and KCRKS.CLBH is not null');
      SQL.Add('	      and convert(smalldatetime,convert(varchar,KCRK.UserDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('	Group by KCRK.RKNO,KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB ) KCRK');
      SQL.Add('	Group by RKNO,CKBH,HGLB,CLBH');
      SQL.Add(') KCRK');
      SQL.Add('left join (');
      SQL.Add('	select KCLL.CKBH,KCRK.HGLB,KCPKLL.PKNO,KCPKLL.CLBH,Sum(KCPKLL.Qty) as LLQty ');
      SQL.Add('	from KCPKLL');
      SQL.Add('	left join KCRK on KCRK.RKNO=KCPKLL.PKNO');
      SQL.Add('	Left join KCLL on KCLL.LLNO=KCPKLL.LLNO');
      SQL.Add('	where KCLL.CFMID<>''NO'' and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('	Group by KCLL.CKBH,KCRK.HGLB,KCPKLL.PKNO,KCPKLL.CLBH');
      SQL.Add(') KCLL on KCLL.CKBH=KCRK.CKBH and KCLL.HGLB=KCRK.HGLB and KCLL.PKNO=KCRK.RKNO and KCLL.CLBH=KCRK.CLBH');
      SQL.Add('where 1=1 and KCRK.CLBH like  ''%'' ) KCRK ');
      SQL.Add('where RemQty>0');
      SQL.Add('Select *,(select SUM(RKQty) from #tmpInvoiceRK B where B.RKRN<=A.RKRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as RKSumQty   into #tmpInvoiceRKAll ');
      SQL.Add('from #tmpInvoiceRK A');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //TC當月領料單號
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('if object_id(''tempdb..#tmpInvoiceLL'') is not null');
      SQL.Add('begin drop table #tmpInvoiceLL end ');
      SQL.Add('Select KCLL.*,ROW_NUMBER() over (PARTITION BY CKBH,CLBH,HGLB ORDER BY LLDate asc) as LLRN into #tmpInvoiceLL  from ( ');
      SQL.Add('Select KCLL.LLNO,KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,KCLL.CKBH,KCLLS.HGLB,Sum(KCLLS.Qty) as LLQty,Max(KCLL.CFMDate) as LLDate ');
      SQL.Add('From KCLL ');
      SQL.Add('Left join KCLLS on KCLLS.LLNO=KCLL.LLNO ');
      SQL.Add('where left(KCLLS.HGLB,2)='''+HGLB+'''   and KCLL.CFMID<>''NO'' and KCLLS.Qty>0  and KCLLS.CLBH like ''%''');
      SQL.Add('      and KCLL.CKBH in ('+ToKhaiBtn_CKBH+') ');
      SQL.Add('	     and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('Group by KCLL.LLNO,KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH,KCLL.CKBH,KCLLS.HGLB');
      SQL.Add(') KCLL');
      SQL.Add('Order by CKBH,CLBH,LLDate');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //新增KCPKLL =>這一筆入庫單數量不夠， 使用上一筆入庫單號多少數量
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into KCPKLL (LLNO,CLBH,DFL,SCBH,PKNO,Qty,UserID,UserDate,YN)');
      SQL.Add('Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,RKNO');
      SQL.Add('       ,case when GroupId=1 then  RKSumQty-(LLSumQty-LLQty) else RemQty end as PriorQty');
      SQL.Add('       ,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('from (');
      SQL.Add('select KCLL.*,ROW_NUMBER() over (PARTITION BY LLNO,CLBH,DFL,SCBH ORDER BY RKRN asc) as GroupId from (');
      SQL.Add('Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,KCLL.LLSumQty,KCLL.LLQty');
      SQL.Add('       ,#tmpInvoiceRKAll.RKNO,#tmpInvoiceRKAll.RemQty,#tmpInvoiceRKAll.RKSumQty,#tmpInvoiceRKAll.RKRN');
      SQL.Add('from (');
      SQL.Add('Select KCLL.*');
      SQL.Add('            ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKNO');
      SQL.Add('            ,(select top 1 RKRN from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKRN');
      SQL.Add('            ,(select top 1 RKSumQty from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKSumQty');
      SQL.Add('from (');
      SQL.Add('Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as LLSumQty  ');
      SQL.Add('from  #tmpInvoiceLL A');
      SQL.Add('where 1=1 and A.CLBH like ''%''  ) KCLL ) KCLL');
      SQL.Add('inner join  #tmpInvoiceRKAll on KCLL.CKBH=#tmpInvoiceRKAll.CKBH and KCLL.HGLB=#tmpInvoiceRKAll.HGLB and KCLL.CLBH=#tmpInvoiceRKAll.CLBH and KCLL.LL_RKRN>#tmpInvoiceRKAll.RKRN and #tmpInvoiceRKAll.RKSumQty>(KCLL.LLSumQty-KCLL.LLQty)');
      SQL.Add('where KCLL.LL_RKRN>1  ) KCLL ) KCLL');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //這一筆入庫單數量不夠 使用這一筆入庫單號的數量
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into KCPKLL (LLNO,CLBH,DFL,SCBH,PKNO,Qty,UserID,UserDate,YN)');
      SQL.Add('Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH');
      SQL.Add('       ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKNO');
      SQL.Add('	      ,KCLL.LLQty-Prior_KCRK.PrirorQty as NowQty');
      SQL.Add('       ,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('from (');
      SQL.Add('Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB  ) as LLSumQty  ');
      SQL.Add('from  #tmpInvoiceLL A');
      SQL.Add('where 1=1 and A.CLBH like ''%''  ) KCLL');
      SQL.Add('inner join (');
      SQL.Add('	select LLNO,SCBH,DFL,CLBH,Sum(PriorQty) as PrirorQty from (');
      SQL.Add('		Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,RKNO');
      SQL.Add('			   ,case when GroupId=1 then  RKSumQty-(LLSumQty-LLQty) else RemQty end as PriorQty');
      SQL.Add('		from (');
      SQL.Add('		select KCLL.*,ROW_NUMBER() over (PARTITION BY LLNO,CLBH,DFL,SCBH ORDER BY RKRN asc) as GroupId from (');
      SQL.Add('		Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,KCLL.LLSumQty,KCLL.LLQty');
      SQL.Add('			   ,#tmpInvoiceRKAll.RKNO,#tmpInvoiceRKAll.RemQty,#tmpInvoiceRKAll.RKSumQty,#tmpInvoiceRKAll.RKRN');
      SQL.Add('		from (');
      SQL.Add('		Select KCLL.*');
      SQL.Add('			   ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKNO');
      SQL.Add('			   ,(select top 1 RKRN from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKRN');
      SQL.Add('			   ,(select top 1 RKSumQty from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKSumQty');
      SQL.Add('		from (');
      SQL.Add('		Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as LLSumQty  ');
      SQL.Add('		from  #tmpInvoiceLL A');
      SQL.Add('		where 1=1 and A.CLBH like ''%''  ) KCLL ) KCLL');
      SQL.Add('		inner join  #tmpInvoiceRKAll on KCLL.CKBH=#tmpInvoiceRKAll.CKBH and KCLL.HGLB=#tmpInvoiceRKAll.HGLB and KCLL.CLBH=#tmpInvoiceRKAll.CLBH and KCLL.LL_RKRN>#tmpInvoiceRKAll.RKRN and #tmpInvoiceRKAll.RKSumQty>(KCLL.LLSumQty-KCLL.LLQty)');
      SQL.Add('		where KCLL.LL_RKRN>1  ) KCLL ) KCLL ) FinallData');
      SQL.Add('	Group by LLNO,SCBH,DFL,CLBH');
      SQL.Add(') Prior_KCRK on Prior_KCRK.LLNO=KCLL.LLNO and Prior_KCRK.SCBH=KCLL.SCBH and Prior_KCRK.DFL=KCLL.DFL and Prior_KCRK.CLBH=KCLL.CLBH');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    // 這一筆入庫單數量足夠
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into KCPKLL (LLNO,CLBH,DFL,SCBH,PKNO,Qty,UserID,UserDate,YN)');
      sql.Add('select * from (');
      SQL.Add('Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH');
      SQL.Add('       ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH and KCLL.HGLB=RK.HGLB order by RKRN asc) as RKNO');
      SQL.Add('	      ,KCLL.LLQty as Qty');
      SQL.Add('       ,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate,1 as YN ');
      SQL.Add('from (');
      SQL.Add('Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as LLSumQty  ');
      SQL.Add('from  #tmpInvoiceLL A');
      SQL.Add('where 1=1 and A.CLBH like ''%'' ) KCLL');
      SQL.Add('where not exists (');
      SQL.Add('    select * from (');
      SQL.Add('	      select LLNO,SCBH,DFL,CLBH,Sum(PriorQty) as PrirorQty from (');
      SQL.Add('		Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,RKNO');
      SQL.Add('			   ,case when GroupId=1 then  RKSumQty-(LLSumQty-LLQty) else RemQty end as PriorQty');
      SQL.Add('		from (');
      SQL.Add('		select KCLL.*,ROW_NUMBER() over (PARTITION BY LLNO,CLBH,DFL,SCBH ORDER BY RKRN asc) as GroupId from (');
      SQL.Add('		Select KCLL.LLNO,KCLL.CLBH,KCLL.DFL,KCLL.SCBH,KCLL.LLSumQty,KCLL.LLQty');
      SQL.Add('			   ,#tmpInvoiceRKAll.RKNO,#tmpInvoiceRKAll.RemQty,#tmpInvoiceRKAll.RKSumQty,#tmpInvoiceRKAll.RKRN');
      SQL.Add('		from (');
      SQL.Add('		Select KCLL.*');
      SQL.Add('			   ,(select top 1 RKNO from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH  and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKNO');
      SQL.Add('			   ,(select top 1 RKRN from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH  and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKRN');
      SQL.Add('			   ,(select top 1 RKSumQty from  #tmpInvoiceRKAll RK where KCLL.LLSumQty<=RK.RKSumQty and KCLL.CLBH=RK.CLBH and KCLL.CKBH=RK.CKBH  and KCLL.HGLB=RK.HGLB order by RKRN asc) as LL_RKSumQty');
      SQL.Add('		from (');
      SQL.Add('		Select A.* ,(select SUM(LLQty) from #tmpInvoiceLL B where B.LLRN<=A.LLRN and B.CLBH=A.CLBH and B.CKBH=A.CKBH and B.HGLB=A.HGLB ) as LLSumQty  ');
      SQL.Add('		from  #tmpInvoiceLL A');
      SQL.Add('		where 1=1 and A.CLBH like ''%''  ) KCLL ) KCLL');
      SQL.Add('		inner join  #tmpInvoiceRKAll on KCLL.CKBH=#tmpInvoiceRKAll.CKBH and KCLL.HGLB=#tmpInvoiceRKAll.HGLB and KCLL.CLBH=#tmpInvoiceRKAll.CLBH and KCLL.LL_RKRN>#tmpInvoiceRKAll.RKRN and #tmpInvoiceRKAll.RKSumQty>(KCLL.LLSumQty-KCLL.LLQty)');
      SQL.Add('		where KCLL.LL_RKRN>1  ) KCLL ) KCLL ) FinallData');
      SQL.Add('	    Group by LLNO,SCBH,DFL,CLBH ) A  ');
      SQL.Add('   where A.LLNO=KCLL.LLNO and A.DFL=KCLL.DFL and A.SCBH=KCLL.SCBH and A.CLBH=KCLL.CLBH )');
      sql.Add('   ) B where RKNO is not null');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //月結剩餘入庫單數量
    with Ptemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete  KCPKRK from KCPKRK  ');
      SQL.Add('Left join KCRK on KCPKRK.RKNO=kcrk.RKNO ');
      SQL.Add('where KCPKRK.KCYEAR='''+CBX1.Text+''' and KCPKRK.KCMONTH='''+CBX2.Text+'''  and left(KCRK.HGLB,2)= '''+HGLB+''' ');
      
      SQL.Add('Insert into KCPKRK (KCYEAR,KCMONTH,RKNO,CLBH,Qty,UserID,UserDate,YN)');
      SQL.Add('Select '''+CBX1.Text+''' as KCYEAR,'''+CBX2.Text+''' as KCMONTH,RKNO,CLBH, RemQty,'''+main.Edit1.Text+''' as UserID,GetDate() as UserDate,1 as YN from (');
      SQL.Add('	Select KCRK.*,IsNull(KCLL.LLQty,0) as LLOkQty,KCRK.RKQty-IsNull(KCLL.LLQty,0) as RemQty,ROW_NUMBER() over (PARTITION BY KCRK.CKBH,KCRK.CLBH,KCRK.HGLB ORDER BY KCRK.RKDate asc,KCRK.RKNO asc) as RKRN  from (');
      SQL.Add('	select RKNO,CKBH,HGLB,CLBH,Sum(RKQty) as RKQty,Max(RKDate) as RKDate from (');
      SQL.Add('	Select KCPKRK.RKNO,KCRK.CKBH,KCRK.HGLB,KCPKRK.CLBH,KCPKRK.Qty as RKQty,KCRK.UserDate as RKDate ');
      SQL.Add('	from KCPKRK');
      SQL.Add('	Left join KCRK on KCRK.RKNO=KCPKRK.RKNO');
      SQL.Add('	where left(KCRK.HGLB,2)= '''+HGLB+'''  and KCPKRK.KCYEAR='''+ayear+''' and KCPKRK.KCMONTH='''+amonth+'''');
      SQL.Add('	union all');
      SQL.Add('	Select KCRK.RKNO,KCRK.CKBH,KCRK.HGLB,KCRKS.CLBH,Sum(KCRKS.Qty) as RKQty,Max(KCRK.UserDate) as RKDate from KCRK');
      SQL.Add('	Left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('	where left(KCRK.HGLB,2)= '''+HGLB+'''  and KCRKS.CLBH is not null');
      SQL.Add('      and KCRK.CKBH in ('+ToKhaiBtn_CKBH+') ');
      SQL.Add('	      and convert(smalldatetime,convert(varchar,KCRK.UserDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('	Group by KCRK.RKNO,KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB ) KCRK');
      SQL.Add('	Group by RKNO,CKBH,HGLB,CLBH');
      SQL.Add(') KCRK');
      SQL.Add('left join (');
      SQL.Add('	select KCLL.CKBH,KCRK.HGLB,KCPKLL.PKNO,KCPKLL.CLBH,Sum(KCPKLL.Qty) as LLQty ');
      SQL.Add('	from KCPKLL');
      SQL.Add('	left join KCRK on KCRK.RKNO=KCPKLL.PKNO');
      SQL.Add('	Left join KCLL on KCLL.LLNO=KCPKLL.LLNO');
      SQL.Add('	where KCLL.CFMID<>''NO'' and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      SQL.Add('  '''+formatdatetime('yyyy/MM/dd',sDate)+''' and '''+formatdatetime('yyyy/MM/dd',eDate)+''' ');
      SQL.Add('	Group by KCLL.CKBH,KCRK.HGLB,KCPKLL.PKNO,KCPKLL.CLBH');
      SQL.Add(') KCLL on KCLL.CKBH=KCRK.CKBH and KCLL.HGLB=KCRK.HGLB and KCLL.PKNO=KCRK.RKNO and KCLL.CLBH=KCRK.CLBH');
      SQL.Add('where 1=1 and KCRK.CLBH like  ''%'' ) KCRK ');
      SQL.Add('where RemQty>0');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
   // Showmessage('Succeed.');
end;

procedure TAccountCal.ToKhaiBtnClick(Sender: TObject);
begin
 // Cal_KCPKLL(); //20210527 更新KCRKLL領料對照入庫單號
 Cal_KCPKLL_HGLB('NK');
 Showmessage('Success NK/NK1/NKNQ');

 Cal_KCPKLL_HGLB('TC');
 Showmessage('Success TC/TC1');

 Cal_KCPKLL_HGLB('HD');
 Showmessage('Success HD/HD1');

 Cal_KCPKLL_HGLB('KD');
 Showmessage('Success KD/KD1');

 Cal_KCPKLL_HGLB('NQ');
 Showmessage('Success NQ');

end;

end.
