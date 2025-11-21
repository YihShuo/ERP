unit Payment1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh,EhlibBDE,dateutils, ComCtrls, TeEngine, TeeFunci,
  Series, TeeProcs, Chart, DbChart, Menus, Buttons;

type
  TPayment = class(TForm)
    Qry_Master: TQuery;
    DS_Master: TDataSource;
    Qry_MasterRKNO: TStringField;
    Qry_MasterUSERDATE: TDateTimeField;
    Qry_MasterCFMDATE: TDateTimeField;
    Qry_MasterZSYWJC: TStringField;
    Qry_MasterVNACC: TFloatField;
    Qry_MasterUSACC: TCurrencyField;
    Qry_MasterGSBH: TStringField;
    Qry_MasterCKBH: TStringField;
    Qry_MasterUSERID: TStringField;
    Qry_MasterDOCNO: TStringField;
    Qry_MasterPurConfirm: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DS_Detail: TDataSource;
    Qry_Detail: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    Qry_MasterAccountCFM: TStringField;
    Qry_MasterZSBH: TStringField;
    Qry_DetailAccountCFM: TStringField;
    Qry_DetailZSBH: TStringField;
    Qry_MasterSamplePurchaser: TStringField;
    Qry_MasterSamplePurchaser_Name: TStringField;
    Qry_DetailSEASON: TStringField;
    Qry_DetailPURPOSE: TStringField;
    Qry_zszlSamplePayment: TQuery;
    Qry_zszlSamplePaymentFreeQty: TCurrencyField;
    Qry_zszlSamplePaymentCharge: TCurrencyField;
    Qry_SamplePayment_Unit: TQuery;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    Qry_DetailFreeQty_: TCurrencyField;
    Qry_DetailCharge_: TCurrencyField;
    Qry_DetailQ_USPrice_: TCurrencyField;
    Qry_DetailQ_VNPrice_: TCurrencyField;
    Qry_MaterialPrice: TQuery;
    Qry_MaterialPriceSamplePrice: TCurrencyField;
    Qry_MaterialPriceSamplePriceVN: TCurrencyField;
    Qry_MaterialPriceEffectiveDate: TDateTimeField;
    Qry_DetailCGDate: TDateTimeField;
    Qry_DetailMZSDH: TStringField;
    Qry_DetailMZSYWJC: TStringField;
    TabSheet3: TTabSheet;
    DS_Monthly: TDataSource;
    Qry_Monthly: TQuery;
    Qry_MonthlyYM: TStringField;
    Qry_MonthlyUSamount: TCurrencyField;
    Qry_MasterUSamount: TCurrencyField;
    Query1: TQuery;
    Qry_MonthlyArticle_: TIntegerField;
    Panel4: TPanel;
    Button2: TButton;
    Qry_MonthlyEntry_: TIntegerField;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    CheckBox1: TCheckBox;
    Chk_PurAcc: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Chk_PurAccCfm: TCheckBox;
    Panel5: TPanel;
    DBGridEh3: TDBGridEh;
    Panel2: TPanel;
    DBChart1: TDBChart;
    Series2: TFastLineSeries;
    Splitter1: TSplitter;
    DBGrid2: TDBGridEh;
    DS_Season: TDataSource;
    Qry_Season: TQuery;
    strngfldQuery1jijie: TStringField;
    Qry_SeasonARTICLE: TIntegerField;
    Qry_SeasonCR1: TCurrencyField;
    Qry_SeasonCR2PSE: TCurrencyField;
    Qry_SeasonSMS: TCurrencyField;
    Qry_SeasonSMU: TCurrencyField;
    Qry_SeasonSEE: TCurrencyField;
    Qry_SeasonFES: TCurrencyField;
    Qry_SeasonPDT: TCurrencyField;
    Qry_SeasonOTHER: TCurrencyField;
    Qry_SeasonTOOL: TCurrencyField;
    Qry_SeasonSUM_: TCurrencyField;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    DS_Check: TDataSource;
    Qry_Check: TQuery;
    Qry_CheckSTAGE: TStringField;
    Splitter3: TSplitter;
    DBGridEh4: TDBGridEh;
    DS_Check2: TDataSource;
    Qry_Check2: TQuery;
    Qry_Check2season: TStringField;
    Qry_MasterRKSB: TStringField;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBGrid1: TDBGridEh;
    Splitter2: TSplitter;
    DS4: TDataSource;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetRKSB: TStringField;
    EnDetPaQty: TCurrencyField;
    EnDetQty: TCurrencyField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCWHL: TIntegerField;
    EnDetVNPrice: TFloatField;
    EnDetVNACC: TFloatField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetDOCNO: TStringField;
    EnDetCARTON_: TFloatField;
    EnDetLENGTH: TFloatField;
    EnDetWIDTH: TFloatField;
    EnDetHEIGHT: TFloatField;
    EnDetVNACC1: TFloatField;
    EnDetVNPriceCT: TFloatField;
    EnDetMEMO: TStringField;
    EnDetSeason: TStringField;
    EnDetPurpose: TStringField;
    EnDetFreeQty_: TCurrencyField;
    EnDetCharge_: TCurrencyField;
    EnDetQ_USPrice_: TCurrencyField;
    EnDetQ_VNPrice_: TCurrencyField;
    EnDetERP_USPrice_: TCurrencyField;
    EnDetERP_VNPrice_: TCurrencyField;
    EnDetCGDATE: TDateTimeField;
    DBGridEh_RD: TDBGridEh;
    Qry_MasterMZSDH: TStringField;
    Qry_MasterMZSYWJC: TStringField;
    Qry_MasterCFMID: TStringField;
    Query2: TQuery;
    Qry_MonthlyNoCfm_: TIntegerField;
    Qry_MonthlyNoCfm: TIntegerField;
    Qry_MonthlyEntry: TIntegerField;
    Qry_MonthlyArticle: TIntegerField;
    EnDetHandCarry_USPrice: TCurrencyField;
    EnDetHandCarry_USACC: TCurrencyField;
    Qry_DetailHandCarry_USPrice: TCurrencyField;
    Qry_DetailHandCarry_USACC: TCurrencyField;
    Qry_MonthlyTool: TCurrencyField;
    Qry_MonthlyMaterial: TCurrencyField;
    Qry_MonthlyFES: TCurrencyField;
    Qry_MonthlyPDT: TCurrencyField;
    DS_Supplier: TDataSource;
    Qry_Supplier: TQuery;
    StringField15: TStringField;
    CurrencyField6: TCurrencyField;
    FloatField3: TFloatField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    CurrencyField7: TCurrencyField;
    StringField25: TStringField;
    StringField26: TStringField;
    Panel6: TPanel;
    Button3: TButton;
    Qry_MonthlyHandCarry: TCurrencyField;
    Qry_MonthlyTransport: TCurrencyField;
    Pop_Monthly: TPopupMenu;
    Excel2: TMenuItem;
    Label8: TLabel;
    Edit8: TEdit;
    BBTT4: TBitBtn;
    Label9: TLabel;
    Edit4: TEdit;
    BBTT2: TBitBtn;
    Label10: TLabel;
    CheckBox5: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Panel7: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit7: TEdit;
    Edit9: TEdit;
    Cb_DevTP: TComboBox;
    CB_Category: TComboBox;
    Cb_Stage: TComboBox;
    Cb_Stage2: TComboBox;
    CheckBox4: TCheckBox;
    DBGridEh1: TDBGridEh;
    Splitter4: TSplitter;
    DBGridEh5: TDBGridEh;
    Qry_DetailUSamount: TCurrencyField;
    Label4: TLabel;
    Edit10: TEdit;
    BitBtn1: TBitBtn;
    Qry_DetailCountry: TStringField;
    Qry_Detaillocation: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Qry_DetailCalcFields(DataSet: TDataSet);
    procedure Qry_MonthlyCalcFields(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Qry_SeasonCalcFields(DataSet: TDataSet);
    procedure EnDetCalcFields(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Excel2Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BBTT4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  //  procedure Query1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Payment: TPayment;

implementation

uses  main1, TraceListSample_Style1, TraceListSample_Country1;

{$R *.dfm}

procedure TPayment.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
y,m:integer;
begin
//sdate:=encodedate(y,m,1);
//edate:=endofthemonth(sdate);

with Qry_Detail do
  begin
    active:=false;
    sql.Clear;
        sql.Add('select KCRK.ZSBH,KCRK.RKNO,KCRK.CKBH,KCRK.ZSBH,KCRK.DOCNO,KCRK.USERDATE');
        sql.Add(',case KCRK.CFMID when ''NO'' then NULL else KCRK.CFMDATE  end as CFMDATE ');
        sql.Add(',case KCRK.YN when ''5'' then ''Confirm'' else NULL  end as AccountCFM ');        
        sql.Add(',PurConfirm,KCRK.GSBH');
        sql.Add(',KCRKS.*,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC  ');
        sql.Add(',CGZL.SEASON,CGZL.PURPOSE,CGDate,ZSZL.MZSDH,(SELECT A.ZSYWJC FROM ZSZL A WHERE A.ZSDH=ZSZL.MZSDH) AS MZSYWJC');
        sql.add(',isnull(KCRKS.USACC,0)+isnull(KCRKS.HandCarry_USACC,0)+(isnull(case KCRKS.USACC when null then KCRKS.VNACC else 0 end ,0)/ISNULL(CGHLS.CWHL,0)) as USamount ,ZSZL.Country,MaterialMOQ.location  ');
        sql.add('from KCRKS');
        sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
        sql.add('left join CGZL on CGZL.CGNO=KCRKS.CGBH');
        sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
        sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
        sql.add('left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,KCRK.USERDate,111)');
        SQL.Add('left join MaterialMOQ on MaterialMOQ.CLBH=KCRKS.clbh and MaterialMOQ.Season=CGZL.SEASON');
        sql.Add('where KCRKS.RKSB<>''DL'' ');
        sql.add('      and KCRKS.CLBH like '+''''+edit1.text+'%'+'''');
        sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
        sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
        sql.add('      and KCRKS.RKNO like '+''''+edit5.text+'%'+'''');
        sql.add('      and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
        sql.add('      and KCRK.GSBH='+''''+main.edit2.text+''''  );
        if Edit7.Text<>'' then  //Article
           sql.add('  and exists (select cgno from CGZLSS where CGZLSS.CGNO=KCRKS.CGBH AND CGZLSS.CLBH=KCRKS.CLBH AND CGZLSS.ZLBH='+''''+Edit7.Text+''''+ ') ');
        if Edit4.Text<>'' then
           sql.add('   and ZSZL.style='''+Edit4.Text+'''');
        if edit8.Text<>'' then
           sql.add('   and ZSZL.Country='+''''+edit8.Text+'''');
        if edit10.Text<>'' then
           sql.add('   and MaterialMOQ.location ='+''''+edit10.Text+'''');
        if CheckBox5.Checked then
           begin
             sql.add(' and convert(smalldatetime,convert(varchar,KCRK.USERDate,111))  between ');
             sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
           end;
        if not CheckBox1.Checked then
           sql.add('  and KCRK.CKBH<>''PT'' ');
        if not CheckBox2.Checked then
           sql.add('  and left(KCRKS.CLBH,1)<>''V'' ');
        if not CheckBox3.Checked then
           sql.add('  and (left(KCRKS.CLBH,1)=''V'' or KCRK.CKBH=''PT'' )');
        if not Chk_PurAcc.Checked then
           sql.add('  and isnull(KCRK.CFMID,'''')<>''NO''  ');
        if not Chk_PurAccCfm.Checked then
           sql.add('  and isnull(KCRK.CFMID,'''')=''NO''  ');
        if length(CB_Category.Text) > 0 then
           BEGIN
             sql.add('and EXISTS ( SELECT CGZLSS.CGNO FROM CGZLSS  ');
             sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
             sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
             sql.add('              WHERE xxzlkf.category='+''''+CB_Category.Text+'''');
             sql.add('                    AND CGZLSS.CGNO=KCRKS.CGBH AND CGZLSS.CLBH=KCRKS.CLBH  ');
             sql.add('             )   ');
           END;
        if length(Cb_DevTP.Text) > 0 then
           BEGIN
             sql.add('and EXISTS ( SELECT CGZLSS.CGNO FROM CGZLSS  ');
             sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
             sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
             sql.add('              WHERE xxzlkf.DevType='+''''+Cb_DevTP.Text+'''');
             sql.add('                    AND CGZLSS.CGNO=KCRKS.CGBH AND CGZLSS.CLBH=KCRKS.CLBH  ');
             sql.add('             )   ');
           END;
        if Edit9.Text<>'' then
           sql.add('  and CGZL.SEASON='+''''+Edit9.Text+'''');
        if (Cb_Stage.Text<>'') or (Cb_Stage2.Text<>'') then
           begin
           sql.add('  and ( 1=2 ');
           if Cb_Stage.Text<>'' then
              sql.add('     or CGZL.PURPOSE='+''''+Cb_Stage.Text+'''');
           if Cb_Stage2.Text<>'' then
              sql.add('     or CGZL.PURPOSE='+''''+Cb_Stage2.Text+'''');
           sql.add('      ) ');
           end;

        active:=true;
  end;

with Qry_Master do
  begin
    active:=false;
    sql.Clear;
        sql.Add('select ZSZL.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name,KCRK.ZSBH,KCRK.GSBH,KCRK.RKNO,ZSYWJC,KCRK.USERID,KCRK.USERDATE');
        sql.Add('       ,case KCRK.CFMID when ''NO'' then NULL else KCRK.CFMDATE  end as CFMDATE ');
        sql.Add('       ,case KCRK.YN when ''5'' then ''Confirm'' else NULL  end as AccountCFM ');
        sql.Add('       ,KCRK.CKBH,KCRK.DOCNO,PurConfirm,SUM(USACC) AS USACC,SUM(VNACC) AS VNACC ');
        sql.add('       ,SUM(isnull(KCRKS.USACC,0)+(isnull(case KCRKS.USACC when null then KCRKS.VNACC else 0 end ,0)/ISNULL(CGHLS.CWHL,0))) as USamount  ');
        sql.add('       ,KCRKS.RKSB,ZSZL.MZSDH , (SELECT A.ZSYWJC FROM ZSZL A WHERE A.ZSDH=ZSZL.MZSDH) AS MZSYWJC,CFMID ');
        sql.add('from KCRKS');
        sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
        sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
        sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
        sql.add('left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser ');
        sql.add('left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,KCRK.USERDate,111)');
        sql.Add('where KCRKS.RKSB NOT IN (''DL'') ');
        sql.add('      and KCRK.GSBH='+''''+main.edit2.Text+'''');
//        sql.Add('      and Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
//        sql.add(''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
        if Edit4.Text<>'' then
           sql.add('  and ZSZL.style='''+Edit4.Text+'''');
        if edit8.Text<>'' then
           sql.add('  and ZSZL.Country='+''''+edit8.Text+'''');
        if CheckBox5.Checked then
           begin
             sql.add('and convert(smalldatetime,convert(varchar,KCRK.USERDate,111))  between ');
             sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
           end;
        if edit1.text<>'' then
           sql.add('   and KCRKS.CLBH like '+''''+edit1.text+'%'+'''');
        if edit2.text<>'' then
           sql.add('   and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
        if edit3.text<>'' then
           sql.add('   and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
        if edit5.text<>'' then
           sql.add('   and KCRKS.RKNO like '+''''+edit5.text+'%'+'''');
        if edit6.text<>'' then
           sql.add('   and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
        if not CheckBox1.Checked then
           sql.add('   and KCRK.CKBH<>''PT'' ');
        if not CheckBox2.Checked then
           sql.add('   and left(KCRKS.CLBH,1)<>''V'' ');
        if not CheckBox3.Checked then
           sql.add('   and (left(KCRKS.CLBH,1)=''V'' or KCRK.CKBH=''PT'' )');
        if not Chk_PurAcc.Checked then
           sql.add('   and isnull(KCRK.CFMID,'''')<>''NO''  ');
        if not Chk_PurAccCfm.Checked then
           sql.add('   and isnull(KCRK.CFMID,'''')=''NO''  ');
        sql.add(' GROUP BY ZSZL.SamplePurchaser,BUSERS.USERNAME,KCRK.ZSBH,KCRK.GSBH,KCRK.RKNO,ZSYWJC,KCRK.USERID,KCRK.USERDATE,KCRK.CFMID,KCRK.CFMDATE,KCRK.CKBH,KCRK.DOCNO,PurConfirm,KCRK.YN,KCRKS.RKSB,ZSZL.MZSDH,CFMID');
        active:=true;
  end;

with Qry_Supplier do
  begin
    active:=false;
    sql.Clear;
        sql.Add('select ZSZL.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name,KCRK.ZSBH,ZSYWJC');
        sql.Add('       ,SUM(USACC) AS USACC,SUM(VNACC) AS VNACC ');
        sql.add('       ,SUM(isnull(KCRKS.USACC,0)+(isnull(case KCRKS.USACC when null then KCRKS.VNACC else 0 end ,0)/ISNULL(CGHLS.CWHL,0))) as USamount  ');
        sql.add('       ,ZSZL.MZSDH ,(SELECT A.ZSYWJC FROM ZSZL A WHERE A.ZSDH=ZSZL.MZSDH) AS MZSYWJC ');
        sql.add('from KCRKS');
        sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
        sql.add('left join CGZL on CGZL.CGNO=KCRKS.CGBH');        
        sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
        sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
        sql.add('left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser ');
        sql.add('left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,KCRK.USERDate,111)');
        sql.Add('where (isnull(KCRKS.USACC,0)>0 or isnull(KCRKS.VNACC,0)>0) ');
        sql.add('      and KCRK.GSBH='+''''+main.edit2.Text+'''');
        if Edit7.Text<>'' then  //Article
           sql.add('   and exists (select cgno from CGZLSS where CGZLSS.CGNO=KCRKS.CGBH AND CGZLSS.CLBH=KCRKS.CLBH AND CGZLSS.ZLBH='+''''+Edit7.Text+''''+ ') ');
        if CheckBox2.Checked then
           begin
             sql.add(' and convert(smalldatetime,convert(varchar,KCRK.USERDate,111))  between ');
             sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
           end;
        if Edit4.Text<>'' then
           sql.add('   and ZSZL.style='''+Edit4.Text+'''');
        if edit8.Text<>'' then
           sql.add('   and ZSZL.Country='+''''+edit8.Text+'''');
        if edit1.text<>'' then
           sql.add('   and KCRKS.CLBH like '+''''+edit1.text+'%'+'''');
        if edit2.text<>'' then
           sql.add('   and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
        if edit3.text<>'' then
           sql.add('   and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
        if edit5.text<>'' then
           sql.add('   and KCRKS.RKNO like '+''''+edit5.text+'%'+'''');
        if edit6.text<>'' then
           sql.add('   and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
        if not CheckBox1.Checked then
           sql.add('   and KCRK.CKBH<>''PT'' ');
        if not CheckBox2.Checked then
           sql.add('   and left(KCRKS.CLBH,1)<>''V'' ');
        if not CheckBox3.Checked then
           sql.add('   and (left(KCRKS.CLBH,1)=''V'' or KCRK.CKBH=''PT'' )');
        if not Chk_PurAcc.Checked then
           sql.add('   and isnull(KCRK.CFMID,'''')<>''NO''  ');
        if not Chk_PurAccCfm.Checked then
           sql.add('   and isnull(KCRK.CFMID,'''')=''NO''  ');
        if length(CB_Category.Text) > 0 then
           BEGIN
             sql.add(' and EXISTS ( SELECT CGZLSS.CGNO FROM CGZLSS  ');
             sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
             sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
             sql.add('              WHERE xxzlkf.category='+''''+CB_Category.Text+'''');
             sql.add('                    AND CGZLSS.CGNO=KCRKS.CGBH AND CGZLSS.CLBH=KCRKS.CLBH  ');
             sql.add('             )   ');
           END;
        if length(Cb_DevTP.Text) > 0 then
           BEGIN
             sql.add(' and EXISTS ( SELECT CGZLSS.CGNO FROM CGZLSS  ');
             sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
             sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
             sql.add('              WHERE xxzlkf.DevType='+''''+Cb_DevTP.Text+'''');
             sql.add('                    AND CGZLSS.CGNO=KCRKS.CGBH AND CGZLSS.CLBH=KCRKS.CLBH  ');
             sql.add('             )   ');
           END;
        if Edit9.Text<>'' then
           sql.add('  and CGZL.SEASON='+''''+Edit9.Text+'''');
        if (Cb_Stage.Text<>'') or (Cb_Stage2.Text<>'') then
           begin
           sql.add('  and ( 1=2 ');
           if Cb_Stage.Text<>'' then
              sql.add('     or CGZL.PURPOSE='+''''+Cb_Stage.Text+'''');
           if Cb_Stage2.Text<>'' then
              sql.add('     or CGZL.PURPOSE='+''''+Cb_Stage2.Text+'''');
           sql.add('      ) ');
           end;

        sql.add(' GROUP BY ZSZL.SamplePurchaser,BUSERS.USERNAME,KCRK.ZSBH,ZSYWJC,ZSZL.MZSDH');
        sql.add('order by ZSYWJC');
        active:=true;
  end;


with EnDet do
  begin
    Active:=false;
    sql.Clear;
         sql.add('select  ');
         sql.add('KCRKS.RKNO ');
         sql.add(',KCRKS.CLBH    ');
         sql.add(',KCRKS.CGBH        ');
         sql.add(',KCRKS.RKSB ');
         sql.add(',KCRKS.Qty    ');
         sql.add(',KCRKS.PaQty   ');
         sql.add(',KCRKS.USPrice   ');
         sql.add(',KCRKS.USACC    ');
         sql.add(',KCRKS.HandCarry_USPrice   ');
         sql.add(',KCRKS.HandCarry_USACC    ');
         sql.add(',KCRKS.VNPrice   ');
         sql.add(',KCRKS.VNACC     ');
         sql.add(',KCRKS.CWHL     ');
         sql.add(',KCRKS.CostID    ');
         sql.add(',KCRKS.USERID     ');
         sql.add(',KCRKS.USERDATE   ');
         sql.add(',KCRKS.YN        ');
         sql.add(',KCRKS.FKZT      ');
         sql.add(',KCRKS.DOCNO      ');
         sql.add(',KCRKS.VNPriceCT   ');
         sql.add(',KCRKS.RKMEMO     ');
         sql.add(',KCRKS.CNO        ');
         sql.add(',KCRKS.MEMO       ');
         sql.add(',CLZL.YWPM,CLZL.DWBH,LENGTH,WIDTH,HEIGHT,CGZL.Season,CGZL.Purpose ,CGZL.CGDATE    ');
         sql.add('from KCRKS       ');
         sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH    ');
         sql.add('left join YWWX2 on YWWX2.CLBH=KCRKS.CLBH      ');
         sql.add('left join CGZL on CGZL.CGNO=KCRKS.CGBH      ');
         sql.add('where KCRKS.RKNO=:RKNO              ');
         sql.add('order by KCRKS.CGBH,KCRKS.CLBH       ');
    active:=true;
  end;

end;

procedure TPayment.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPayment.FormDestroy(Sender: TObject);
begin
Payment:=nil;
end;

procedure TPayment.FormCreate(Sender: TObject);
begin
  DTP2.Datetime:=Now();
  DTP1.Datetime:=Now()-30;
  PageControl1.ActivePageIndex:=0;
  PageControl2.ActivePageIndex:=0;
  Qry_Check.active:=true;
  Qry_Check2.active:=true;      
end;

procedure TPayment.Qry_DetailCalcFields(DataSet: TDataSet);
begin

if CheckBox4.Checked then
begin

  Qry_SamplePayment_Unit.Active:=false  ;
  Qry_SamplePayment_Unit.SQL.Clear;
  Qry_SamplePayment_Unit.sql.add('SELECT CR1_FreeQty as FreeQty,CR1_Charge as Charge from zszlSamplePayment ');
  Qry_SamplePayment_Unit.sql.add('where Season='+''''+Qry_Detail.FieldByName('SEASON').AsString+'''');
  Qry_SamplePayment_Unit.sql.add('      and zsdh='+''''+Qry_Detail.FieldByName('ZSBH').AsString+'''');
  Qry_SamplePayment_Unit.sql.add('      and Unit='+''''+Qry_Detail.FieldByName('DWBH').AsString+'''');
  Qry_SamplePayment_Unit.Active:=true;

  Qry_zszlSamplePayment.Active:=false  ;
  Qry_zszlSamplePayment.SQL.Clear;
  if (Qry_Detail.FieldByName('PURPOSE').Value='SEE')
      or (Qry_Detail.FieldByName('PURPOSE').Value='TRIAL')
      or (Qry_Detail.FieldByName('PURPOSE').Value='SMU')
      or (Qry_Detail.FieldByName('PURPOSE').Value='SU2')
      or (Qry_Detail.FieldByName('PURPOSE').Value='SU3')
      or (Qry_Detail.FieldByName('PURPOSE').Value='SU4')
      or (Qry_Detail.FieldByName('PURPOSE').Value='CR1')
      or (Qry_Detail.FieldByName('PURPOSE').Value='CR2')
      or (Qry_Detail.FieldByName('PURPOSE').Value='PSE')
      or (Qry_Detail.FieldByName('PURPOSE').Value='SMS')
      or (Qry_Detail.FieldByName('PURPOSE').Value='SM1')
      or (Qry_Detail.FieldByName('PURPOSE').Value='SM2')
      or (Qry_Detail.FieldByName('PURPOSE').Value='SM3')
      or (Qry_Detail.FieldByName('PURPOSE').Value='SM4')
      or (Qry_Detail.FieldByName('PURPOSE').Value='MCS')
      or (Qry_Detail.FieldByName('PURPOSE').Value='FES')
      or (Qry_Detail.FieldByName('PURPOSE').Value='PDT')
      then
     begin
       if (Qry_Detail.FieldByName('PURPOSE').Value='SEE') OR (Qry_Detail.FieldByName('PURPOSE').Value='TRIAL') then
          Qry_zszlSamplePayment.sql.add('select CR1_FreeQty as FreeQty,CR1_Charge as Charge ');
       if (Qry_Detail.FieldByName('PURPOSE').Value='CR1') OR (Qry_Detail.FieldByName('PURPOSE').Value='CR2') then
          Qry_zszlSamplePayment.sql.add('select CR2_FreeQty as FreeQty,CR2_Charge as Charge  ');
       if Qry_Detail.FieldByName('PURPOSE').Value='PSE' then
          Qry_zszlSamplePayment.sql.add('select Presell_FreeQty as FreeQty,Presell_Charge as Charge  ');
       if (Qry_Detail.FieldByName('PURPOSE').Value='SMS') OR (Qry_Detail.FieldByName('PURPOSE').Value='SM1')OR (Qry_Detail.FieldByName('PURPOSE').Value='SM2')OR (Qry_Detail.FieldByName('PURPOSE').Value='SM3')OR (Qry_Detail.FieldByName('PURPOSE').Value='SM4') then
          Qry_zszlSamplePayment.sql.add('select SMS_FreeQty as FreeQty,SMS_Charge as Charge  ');
       if Qry_Detail.FieldByName('PURPOSE').Value='PDT' then
          Qry_zszlSamplePayment.sql.add('select PT_FreeQty as FreeQty,PT_Charge as Charge  ');
       if (Qry_Detail.FieldByName('PURPOSE').Value='SMU')OR (Qry_Detail.FieldByName('PURPOSE').Value='SU2')OR (Qry_Detail.FieldByName('PURPOSE').Value='SU3')OR (Qry_Detail.FieldByName('PURPOSE').Value='SU4')OR (Qry_Detail.FieldByName('PURPOSE').Value='FES')OR (Qry_Detail.FieldByName('PURPOSE').Value='MCS')then
          Qry_zszlSamplePayment.sql.add('select MCS_FreeQty as FreeQty,MCS_Charge as Charge  ');
       Qry_zszlSamplePayment.sql.add('from  zszlSamplePayment ');
       Qry_zszlSamplePayment.sql.add('where Season='+''''+Qry_Detail.FieldByName('SEASON').AsString+'''');
       Qry_zszlSamplePayment.sql.add('      and zsdh='+''''+Qry_Detail.FieldByName('ZSBH').AsString+'''');
       if Qry_SamplePayment_Unit.RecordCount>0 then
          Qry_zszlSamplePayment.sql.add('   and Unit='+''''+Qry_Detail.FieldByName('DWBH').AsString+'''')
       else
          Qry_zszlSamplePayment.sql.add('   and Unit='''' ');

       Qry_zszlSamplePayment.Active:=true;
       Qry_zszlSamplePayment.first;
       if not Qry_zszlSamplePayment.eof then
          begin
            Qry_Detail.FieldByName('FreeQty_').value:=Qry_zszlSamplePayment.FieldByName('FreeQty').value;
            Qry_Detail.FieldByName('Charge_').value:=Qry_zszlSamplePayment.FieldByName('Charge').value;
          end;
       end;

 

end;

end;

procedure TPayment.Qry_MonthlyCalcFields(DataSet: TDataSet);
var A:integer;
begin
  {
  if CheckBox5.Checked then
  begin
  with Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add(' select count(AA.ZLBH) as Article FROM ( ');
      sql.add(' select ZLBH   ');
      sql.add(' from KCRK       ');
      sql.add(' INNER join KCRKS on KCRK.RKNO=KCRKS.RKNO');
      sql.add(' left join CGZLSS on CGZLSS.CGNO=KCRKS.CGBH AND CGZLSS.CLBH=KCRKS.CLBH ');
      sql.add(' left join KFXXZL  on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
      sql.add(' left join XXZLKF  on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
      sql.Add('where CGZLSS.Qty>0 and CGZLSS.ZLBH IS NOT NULL and XXZLKF.FD IS NOT NULL and isnull(xxzlkf.LookSee,0)=0 ');
      sql.Add('    AND KCRKS.RKSB NOT IN (''NG'',''DL'') ');
      sql.add('    and KCRK.GSBH='+''''+main.edit2.Text+'''');
      if not CheckBox1.Checked then
         sql.add(' and KCRK.CKBH<>''PT'' ');
      if not CheckBox2.Checked then
         sql.add(' and left(KCRKS.CLBH,1)<>''V'' ');
      if not CheckBox3.Checked then
         sql.add(' and (left(KCRKS.CLBH,1)=''V'' or KCRK.CKBH=''PT'' )');
      sql.add('    AND CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)='+''''+Qry_Monthly.FieldByName('YM').AsString+'''');
      sql.add(' group by CGZLSS.ZLBH ) AA ');
      active:=true;
    end;

    if not Query1.eof then
       begin
         Qry_Monthly.FieldByName('Article_').value:=Query1.FieldByName('Article').value;
       end;
  end;
  }
  {
  with Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add(' select count(AA.RKNO) as Entry FROM ( ');
      sql.add(' select KCRK.RKNO   ');
      sql.add(' from KCRK       ');
      sql.add(' INNER join KCRKS on KCRK.RKNO=KCRKS.RKNO');
      sql.add(' left join CLZL on CLZL.CLDH=KCRKS.CLBH');
      sql.Add('where KCRK.CFMID<>''NO'' ');
      sql.Add('    AND KCRKS.RKSB NOT IN (''NG'',''DL'')  ');
      sql.add('    and KCRK.GSBH='+''''+main.edit2.Text+'''');
      if not CheckBox8.Checked then
         sql.add(' and KCRK.CKBH<>''PT'' ');
      if not CheckBox7.Checked then
         sql.add(' and left(KCRKS.CLBH,1)<>''V'' ');
      if not CheckBox6.Checked then
         sql.add(' and (left(KCRKS.CLBH,1)=''V'' or KCRK.CKBH=''PT'' )');
      sql.add('    AND CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)='+''''+Qry_Monthly.FieldByName('YM').AsString+'''');
      sql.add(' group by KCRK.RKNO ) AA ');
      active:=true;
    end;
    if not Query1.eof then
       begin
         Qry_Monthly.FieldByName('Entry_').value:=Query1.FieldByName('Entry').value;
       end;
  }
 {
  with Query2 do
    begin
      active:=false;
      sql.Clear;
      sql.add(' select count(BB.RKNO) as NoCfm FROM ( ');
      sql.add(' select KCRK.RKNO   ');
      sql.add(' from KCRK       ');
      sql.add(' INNER join KCRKS on KCRK.RKNO=KCRKS.RKNO');
      sql.add(' left join CLZL on CLZL.CLDH=KCRKS.CLBH');
      sql.Add('where ISNULL(KCRK.CFMID,'''')=''NO'' ');
      sql.Add('    AND KCRKS.RKSB NOT IN (''NG'',''DL'')  ');
      sql.add('    and KCRK.GSBH='''+main.Edit2.Text+''' ');
      if not CheckBox8.Checked then
         sql.add(' and KCRK.CKBH<>''PT'' ');
      if not CheckBox7.Checked then
         sql.add(' and left(KCRKS.CLBH,1)<>''V'' ');
      if not CheckBox6.Checked then
         sql.add(' and (left(KCRKS.CLBH,1)=''V'' or KCRK.CKBH=''PT'' )');
      sql.add('    AND CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)='+''''+Qry_Monthly.FieldByName('YM').AsString+'''');
      sql.add(' group by KCRK.RKNO ) BB ');

      Memo1.Lines:=Query2.SQL;
      active:=true;
    end;
    //A:=Query2.FieldByName('NoCfm').value;
//    if not Query2.eof then
//       begin
         Qry_Monthly.FieldByName('NoCfm_').value:=Query2.FieldByName('NoCfm').value;
//       end;

 }

end;

procedure TPayment.Button2Click(Sender: TObject);
var sdate2,edate2,sdate3,edate3:Tdate;
    y:integer;
begin

if (ComboBox1.text='')  then
  begin
    showmessage('You have to select the year first.');
    abort;
  end;
y:=strtoint(ComboBox1.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;

sdate2:=encodedate(y,1,1);
edate2:=encodedate(y,12,31);

sdate3:=encodedate(y-1,1,1);
edate3:=encodedate(y-1,12,31);

with Qry_Monthly do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2) as YM  ');
    sql.add('        ,SUM(isnull(KCRKS.USACC,0)+(isnull(case KCRKS.USACC when null then KCRKS.VNACC else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as USamount  ');
    sql.add('        ,SUM(isnull(KCRKS.HandCarry_USACC,0)) as HandCarry  ');
    sql.add(' ,(select sum(TransportCharge.Actual_Amount) AS Transport  ');
    sql.add('   from TransportCharge       ');
    sql.add('   WHERE CAST(YEAR(TransportCharge.Date)as varchar)+right(''00''+CAST(MONTH(TransportCharge.Date)as varchar),2)=CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)');
    sql.add('  ) AS Transport ');
    sql.add(' ,(select COUNT(KK.RKNO) AS CNT  ');
    sql.add('   from KCRK KK      ');
    sql.add('   WHERE KK.CFMID=''NO'' ');
    sql.add('         and KK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('         and KK.CKBH<>''PT'' ');
    sql.add('         AND KK.RKNO IN (SELECT KCRKS.RKNO FROM KCRKS) ');
    sql.add('         AND CAST(YEAR(KK.USERDate)as varchar)+right(''00''+CAST(MONTH(KK.USERDate)as varchar),2)=CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)');
    sql.add('  ) AS NoCfm ');
    sql.add(' ,(select COUNT(KK.RKNO) AS CNT  ');
    sql.add('   from KCRK KK      ');
    sql.add('   WHERE KK.CFMID<>''NO'' ');
    sql.add('         and KK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('         and KK.CKBH<>''PT'' ');
    sql.add('         AND KK.RKNO IN (SELECT KCRKS.RKNO FROM KCRKS) ');
    sql.add('         AND CAST(YEAR(KK.USERDate)as varchar)+right(''00''+CAST(MONTH(KK.USERDate)as varchar),2)=CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)');
    sql.add('  ) AS Entry ');
    sql.add(' ,(select count(AA.ZLBH) as Article FROM  ');
    sql.add('     (select CAST(YEAR(KK.USERDate)as varchar)+right(''00''+CAST(MONTH(KK.USERDate)as varchar),2) AS YM,CGZLSS.ZLBH   ');
    sql.add('      from  KCRK KK       ');
    sql.add('      INNER join KCRKS on KK.RKNO=KCRKS.RKNO');
    sql.add('      INNER join CGZLSS on CGZLSS.CGNO=KCRKS.CGBH AND CGZLSS.CLBH=KCRKS.CLBH ');
    sql.Add('      where CGZLSS.Qty>0 and CGZLSS.ZLBH IS NOT NULL  ');
    sql.Add('            AND KCRKS.RKSB NOT IN (''DL'')  ');
    sql.add('            and KK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('            and KK.CKBH<>''PT'' ');
    sql.add('            and left(KCRKS.CLBH,1)<>''V'' ');
    sql.add('      group by CAST(YEAR(KK.USERDate)as varchar)+right(''00''+CAST(MONTH(KK.USERDate)as varchar),2),CGZLSS.ZLBH ');
    sql.add('     ) AA ');
    sql.add('   WHERE AA.YM=CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)');
    sql.add('   ) AS Article');
    sql.add(' ,(select SUM(isnull(KCRKS.USACC,0)+(isnull(case KCRKS.USACC when null then KCRKS.VNACC else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as USamount  ');
    sql.add('   from KCRK KK      ');
    sql.add('   left join KCRKS on KK.RKNO=KCRKS.RKNO');
    sql.add('   left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,KK.USERDate,111)');
    sql.Add('   where 1=1 ');
    sql.add('         and KK.CFMID<>''NO'' and KK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('         AND CAST(YEAR(KK.USERDate)as varchar)+right(''00''+CAST(MONTH(KK.USERDate)as varchar),2)=CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)');
    sql.add('         and KK.CKBH<>''PT'' AND KK.CKBH<>''FES'' ');
    sql.add('         and left(KCRKS.CLBH,1)<>''V'' ');
    sql.add('   ) AS Material ');
    sql.add(' ,(select SUM(isnull(KCRKS.USACC,0)+(isnull(case KCRKS.USACC when null then KCRKS.VNACC else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as USamount  ');
    sql.add('   from KCRK KK      ');
    sql.add('   left join KCRKS on KK.RKNO=KCRKS.RKNO');
    sql.add('   left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,KK.USERDate,111)');
    sql.Add('   where 1=1 ');
    sql.add('         and KK.CFMID<>''NO'' and KK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('         AND CAST(YEAR(KK.USERDate)as varchar)+right(''00''+CAST(MONTH(KK.USERDate)as varchar),2)=CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)');
    sql.add('         and KK.CKBH=''FES'' ');
    sql.add('         and left(KCRKS.CLBH,1)<>''V'' ');
    sql.add('   ) AS FES ');
    sql.add(' ,(select SUM(isnull(KCRKS.USACC,0)+(isnull(case KCRKS.USACC when null then KCRKS.VNACC else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as USamount  ');
    sql.add('   from KCRK KK      ');
    sql.add('   left join KCRKS on KK.RKNO=KCRKS.RKNO');
    sql.add('   left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,KK.USERDate,111)');
    sql.Add('   where 1=1 ');
    sql.add('         and KK.CFMID<>''NO'' and KK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('         AND CAST(YEAR(KK.USERDate)as varchar)+right(''00''+CAST(MONTH(KK.USERDate)as varchar),2)=CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)');
    sql.add('         and left(KCRKS.CLBH,1)=''V'' ');
    sql.add('   ) AS tool ');
    sql.add(' ,(select SUM(isnull(KCRKS.USACC,0)+(isnull(case KCRKS.USACC when null then KCRKS.VNACC else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as USamount  ');
    sql.add('   from KCRK KK      ');
    sql.add('   left join KCRKS on KK.RKNO=KCRKS.RKNO');
    sql.add('   left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,KK.USERDate,111)');
    sql.Add('   where 1=1 ');
    sql.add('         and KK.CFMID<>''NO'' and KK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('         AND CAST(YEAR(KK.USERDate)as varchar)+right(''00''+CAST(MONTH(KK.USERDate)as varchar),2)=CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)');
    sql.add('         and KK.CKBH=''PT'' ');
    sql.add('         and left(KCRKS.CLBH,1)<>''V'' ');
    sql.add('   ) AS PDT ');

    sql.add('from KCRK       ');
    sql.add('left join KCRKS on KCRK.RKNO=KCRKS.RKNO  ');
    sql.add('left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,KCRK.USERDate,111)');
    sql.Add('where 1=1 ');
    sql.Add('      and Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate2)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate2)+'''');
    sql.add('      and KCRK.CFMID<>''NO'' and KCRK.GSBH='+''''+main.edit2.Text+'''');
    sql.add('      and KCRK.CKBH<>''PT'' ');
    sql.add(' group by CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)   ');
    sql.add(' order by CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)   ');
    active:=true;
  end;
{
with Qry_Monthly_Old do
  begin
    active:=false;
    sql.Clear;
    sql.add(' select CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2) as YM  ');
    sql.add('        ,SUM(isnull(KCRKS.USACC,0)+(isnull(case KCRKS.USACC when null then KCRKS.VNACC else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as USamount  ');
    sql.add(' from KCRK       ');
    sql.add(' left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.add('left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,KCRK.USERDate,111)');
    sql.Add('where KCRKS.RKSB NOT IN (''NG'',''DL'') and Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sdate3)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate3)+'''');
    sql.add(' and KCRK.GSBH='+''''+main.edit2.Text+'''');
    if not CheckBox8.Checked then
       sql.add(' and KCRK.CKBH<>''PT'' ');
    if not CheckBox7.Checked then
       sql.add(' and left(KCRKS.CLBH,1)<>''V'' ');
    if not CheckBox6.Checked then
       sql.add(' and (left(KCRKS.CLBH,1)=''V'' or KCRK.CKBH=''PT'' )');
    sql.add(' group by CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)   ');
    sql.add(' order by CAST(YEAR(KCRK.USERDate)as varchar)+right(''00''+CAST(MONTH(KCRK.USERDate)as varchar),2)   ');
    active:=true;
  end;
}


end;

procedure TPayment.Qry_SeasonCalcFields(DataSet: TDataSet);
begin

  Qry_Season.FieldByName('SUM_').value:=Qry_Season.FieldByName('CR1').value
                                        +Qry_Season.FieldByName('CR2PSE').value
                                        +Qry_Season.FieldByName('SMS').value
                                        +Qry_Season.FieldByName('SEE').value
                                        +Qry_Season.FieldByName('FES').value
                                        +Qry_Season.FieldByName('PDT').value
                                        +Qry_Season.FieldByName('OTHER').value
                                        +Qry_Season.FieldByName('TOOL').value
                                        +Qry_Season.FieldByName('SMU').value                                        
                                        ;

end;

procedure TPayment.EnDetCalcFields(DataSet: TDataSet);
VAR   MYROUND : integer;
begin
with EnDet do
  begin
    if (FieldByName('LENGTH').value>0) AND (FieldByName('WIDTH').value>0) AND (FieldByName('HEIGHT').value>0) then
      begin
        FieldByName('CARTON_').value:=trunc((FieldByName('WIDTH').value+FieldByName('HEIGHT').value)*(((FieldByName('LENGTH').value+FieldByName('WIDTH').value)*2)+46)/1000000*100+0.5)/100;
       // IF FieldByName('VNPrice').value>0 THEN
       //    FieldByName('VNACC1').value:=trunc(FieldByName('VNPriceCT').value*FieldByName('CARTON_').value+0.5)  ;
      end;
  end;
  Qry_SamplePayment_Unit.Active:=false  ;
  Qry_SamplePayment_Unit.SQL.Clear;
  Qry_SamplePayment_Unit.sql.add('SELECT CR1_FreeQty as FreeQty,CR1_Charge as Charge from zszlSamplePayment ');
  Qry_SamplePayment_Unit.sql.add('where Season='+''''+EnDet.FieldByName('SEASON').AsString+'''');
  Qry_SamplePayment_Unit.sql.add('      and zsdh='+''''+Qry_Master.FieldByName('ZSBH').AsString+'''');
  Qry_SamplePayment_Unit.sql.add('      and Unit='+''''+EnDet.FieldByName('DWBH').AsString+'''');
  Qry_SamplePayment_Unit.Active:=true;
  Qry_zszlSamplePayment.Active:=false  ;
  Qry_zszlSamplePayment.SQL.Clear;
  if (EnDet.FieldByName('PURPOSE').Value='SEE')
      or (EnDet.FieldByName('PURPOSE').Value='TRIAL')
      or (EnDet.FieldByName('PURPOSE').Value='SMU')
      or (EnDet.FieldByName('PURPOSE').Value='SU2')
      or (EnDet.FieldByName('PURPOSE').Value='SU3')
      or (EnDet.FieldByName('PURPOSE').Value='SU4')
      or (EnDet.FieldByName('PURPOSE').Value='CR1')
      or (EnDet.FieldByName('PURPOSE').Value='CR2')
      or (EnDet.FieldByName('PURPOSE').Value='PSE')
      or (EnDet.FieldByName('PURPOSE').Value='SMS')
      or (EnDet.FieldByName('PURPOSE').Value='SM1')
      or (EnDet.FieldByName('PURPOSE').Value='SM2')
      or (EnDet.FieldByName('PURPOSE').Value='SM3')
      or (EnDet.FieldByName('PURPOSE').Value='SM4')            
      or (EnDet.FieldByName('PURPOSE').Value='MCS')
      or (EnDet.FieldByName('PURPOSE').Value='FES')
      or (EnDet.FieldByName('PURPOSE').Value='PDT')
      then
     begin

       if (EnDet.FieldByName('PURPOSE').Value='SEE') OR (EnDet.FieldByName('PURPOSE').Value='TRIAL') then
          Qry_zszlSamplePayment.sql.add('select CR1_FreeQty as FreeQty,CR1_Charge as Charge ');
       if (EnDet.FieldByName('PURPOSE').Value='CR1') OR (EnDet.FieldByName('PURPOSE').Value='CR2') then
          Qry_zszlSamplePayment.sql.add('select CR2_FreeQty as FreeQty,CR2_Charge as Charge  ');
       if EnDet.FieldByName('PURPOSE').Value='PSE' then
          Qry_zszlSamplePayment.sql.add('select Presell_FreeQty as FreeQty,Presell_Charge as Charge  ');
       if (EnDet.FieldByName('PURPOSE').Value='SMS') OR (EnDet.FieldByName('PURPOSE').Value='SM1')  OR (EnDet.FieldByName('PURPOSE').Value='SM2') OR (EnDet.FieldByName('PURPOSE').Value='SM3') OR (EnDet.FieldByName('PURPOSE').Value='SM4')  then
          Qry_zszlSamplePayment.sql.add('select SMS_FreeQty as FreeQty,SMS_Charge as Charge  ');
       if EnDet.FieldByName('PURPOSE').Value='PDT' then
          Qry_zszlSamplePayment.sql.add('select PT_FreeQty as FreeQty,PT_Charge as Charge  ');
       if (EnDet.FieldByName('PURPOSE').Value='SMU')OR (EnDet.FieldByName('PURPOSE').Value='SU2')OR (EnDet.FieldByName('PURPOSE').Value='SU3')OR (EnDet.FieldByName('PURPOSE').Value='SU4')OR (EnDet.FieldByName('PURPOSE').Value='FES')OR (EnDet.FieldByName('PURPOSE').Value='MCS')then
          Qry_zszlSamplePayment.sql.add('select MCS_FreeQty as FreeQty,MCS_Charge as Charge  ');
       Qry_zszlSamplePayment.sql.add('from  zszlSamplePayment ');
       Qry_zszlSamplePayment.sql.add('where Season='+''''+EnDet.FieldByName('SEASON').AsString+'''');
       Qry_zszlSamplePayment.sql.add('      and zsdh='+''''+Qry_Master.FieldByName('ZSBH').AsString+'''');
       if Qry_SamplePayment_Unit.RecordCount>0 then
          Qry_zszlSamplePayment.sql.add('   and Unit='+''''+EnDet.FieldByName('DWBH').AsString+'''')
       else
          Qry_zszlSamplePayment.sql.add('   and Unit='''' ');
       Qry_zszlSamplePayment.Active:=true;
       Qry_zszlSamplePayment.first;
       if not Qry_zszlSamplePayment.eof then
          begin
            EnDet.FieldByName('FreeQty_').value:=Qry_zszlSamplePayment.FieldByName('FreeQty').value;
            EnDet.FieldByName('Charge_').value:=Qry_zszlSamplePayment.FieldByName('Charge').value;
                 Qry_MaterialPrice.Active:=false  ;
                 Qry_MaterialPrice.SQL.Clear;
                 Qry_MaterialPrice.sql.add('select  top 1 SamplePrice,SamplePriceVN,EffectiveDate from  MaterialPrice ');
                 Qry_MaterialPrice.sql.add('where Season='+''''+EnDet.FieldByName('SEASON').Value+'''');
                 Qry_MaterialPrice.sql.add('      and ZSBH='+''''+Qry_Master.FieldByName('ZSBH').Value+'''');
                 Qry_MaterialPrice.sql.add('      and CLBH='+''''+EnDet.FieldByName('CLBH').Value+'''');
                 Qry_MaterialPrice.sql.add('      and EffectiveDate<='+''''+EnDet.FieldByName('CGDate').AsString+'''');
                 Qry_MaterialPrice.sql.add('    order by EffectiveDate ');
                 Qry_MaterialPrice.Active:=true;
                 Qry_MaterialPrice.first;
                 //Memo1.Lines:= Qry_MaterialPrice.sql ;
                 //SHOWMESSAGE('wait');
                 EnDet.FieldByName('Q_USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value ;
                 EnDet.FieldByName('Q_VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value ;
            
            if EnDet.FieldByName('Qty').value<=Qry_zszlSamplePayment.FieldByName('FreeQty').Value then
               begin
                 EnDet.FieldByName('ERP_USPrice_').value:=0;
                 EnDet.FieldByName('ERP_VNPrice_').value:=0;
               end;
            if EnDet.FieldByName('Qty').value>Qry_zszlSamplePayment.FieldByName('FreeQty').Value then
               begin
                 IF (Qry_MaterialPrice.FieldByName('SamplePrice').ASSTRING<>'')  AND (Qry_zszlSamplePayment.FieldByName('Charge').ASSTRING<>'') THEN
                    BEGIN
                 //SHOWMESSAGE(IntToStr( Length(Trim(Qry_MaterialPrice.FieldByName('SamplePrice').value) ) - Pos('.',Trim(Qry_MaterialPrice.FieldByName('SamplePrice').value)) ));
                      if Qry_zszlSamplePayment.FieldByName('Charge').ASSTRING='100' then
                      BEGIN
                         EnDet.FieldByName('ERP_USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value;
                         EnDet.FieldByName('ERP_VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value;
                      END
                      else
                      BEGIN
                        EnDet.FieldByName('ERP_VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100) ;
                        MYROUND:= (Length(Trim(Qry_MaterialPrice.FieldByName('SamplePrice').value) ) - Pos('.',Trim(Qry_MaterialPrice.FieldByName('SamplePrice').value)) );
                        if CheckBox1.Checked then
                        begin
                        //IF RadioGroup1.ItemIndex=0 THEN
                        //   EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100)+0.05)*10)/10 ;
                        //IF RadioGroup1.ItemIndex=1 THEN
                        //   EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100)+0.005)*100)/100 ;
                        //IF RadioGroup1.ItemIndex=2 THEN
                        //   EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100)+0.0005)*1000)/1000 ;
                        //IF RadioGroup1.ItemIndex=3 THEN
                           EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100)+0.00005)*10000)/10000 ;
                        end
                        else
                        begin
                        IF MYROUND=0 THEN
                           EnDet.FieldByName('ERP_USPrice_').value:=trunc(Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100)+0.5) ;
                        IF MYROUND=1 THEN
                           EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100)+0.05)*10)/10 ;
                        IF MYROUND=2 THEN
                           EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100)+0.005)*100)/100 ;
                        IF MYROUND=3 THEN
                           EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100)+0.0005)*1000)/1000 ;
                        IF MYROUND=4 THEN
                           EnDet.FieldByName('ERP_USPrice_').value:=trunc((Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100)+0.00005)*10000)/10000 ;
                        end;
                      END;
                    END;
                 //EnDet.FieldByName('ERP_USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100) ;
               end;
          end;
       end;


end;

procedure TPayment.Button3Click(Sender: TObject);
begin
//Qry_Season ----------------------------------------------------------
with Qry_Season do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#PaymentSeason'+''''+') is not null  ');
    sql.add('  begin   drop table #PaymentSeason end   ');
    sql.add('  select KFXXZL.jijie,CGZLSS.STAGE ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLSS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLSS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as Cost  ');
    sql.add('           into #PaymentSeason from CGZLSS');
    sql.add('           LEFT join KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.add('           LEFT join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlSS.cgno and RKACC.clbh=cgzlSS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6''  ');
    sql.add('                 and left(CGZLSS.CLBH,1)<>''V'' ');
    sql.add('           group by jijie,CGZLSS.STAGE ');




    
    sql.add('select B.jijie');
    sql.add('       ,B.ARTICLE');
//    sql.add('       ,ISNULL(CR1.CR1,0) AS CR1');
//    sql.add('       ,ISNULL(CR2PSE.CR2PSE,0) AS CR2PSE');
//    sql.add('       ,ISNULL(SMS.SMS,0) AS SMS');
//    sql.add('       ,ISNULL(SMU.SMU,0) AS SMU');
//    sql.add('       ,ISNULL(SEE.SEE,0) AS SEE');
//    sql.add('       ,ISNULL(FES.FES,0) AS FES');
//    sql.add('       ,ISNULL(PDT.PDT,0) AS PDT');
//    sql.add('       ,ISNULL(Other.Other,0) AS Other');

    sql.add('       ,(SELECT isnull(SUM(Cost),0)  from #PaymentSeason where #PaymentSeason.STAGE=''CR1'' AND  #PaymentSeason.jijie=B.jijie) as CR1');
    sql.add('       ,(SELECT isnull(SUM(Cost),0)  from #PaymentSeason where #PaymentSeason.STAGE IN (''CR2'',''PSE'') AND  #PaymentSeason.jijie=B.jijie) as CR2PSE');
    sql.add('       ,(SELECT isnull(SUM(Cost),0)  from #PaymentSeason where #PaymentSeason.STAGE IN (''SMS'',''SM2'',''MCS'') AND  #PaymentSeason.jijie=B.jijie) as SMS');
    sql.add('       ,(SELECT isnull(SUM(Cost),0)  from #PaymentSeason where #PaymentSeason.STAGE IN (''SMU'',''SU2'',''SU3'') AND  #PaymentSeason.jijie=B.jijie) as SMU');
    sql.add('       ,(SELECT isnull(SUM(Cost),0)  from #PaymentSeason where #PaymentSeason.STAGE IN (''SEE'') AND  #PaymentSeason.jijie=B.jijie) as SEE');
    sql.add('       ,(SELECT isnull(SUM(Cost),0)  from #PaymentSeason where #PaymentSeason.STAGE IN (''FES'') AND  #PaymentSeason.jijie=B.jijie) as FES');
    sql.add('       ,(SELECT isnull(SUM(Cost),0)  from #PaymentSeason where #PaymentSeason.STAGE IN (''PDT'') AND  #PaymentSeason.jijie=B.jijie) as PDT');
    sql.add('       ,(SELECT isnull(SUM(Cost),0)  from #PaymentSeason where #PaymentSeason.STAGE NOT IN (''CR1'',''CR2'',''PSE'',''SMS'',''SM2'',''MCS'',''SMU'',''SU2'',''SU3'',''SEE'',''FES'',''PDT'') AND  #PaymentSeason.jijie=B.jijie) as Other ');

    sql.add('       ,ISNULL(TOOL.TOOL,0) AS TOOL ');
//    sql.add('       ,Pairs.Pairs ');  銷樣雙數
    sql.add('from  ');
    //==算有效article
    sql.add('    (select count(*)as ARTICLE,');
    sql.add('            jijie ');
    sql.add('     from (select KFXXZL.ARTICLE ');
    sql.add('                  ,KFXXZL.jijie ');
    sql.add('           from KFXXZL');
    sql.add('           left join XXZLKF on XXZLKF.XieXing=KFXXZL.XieXing and XXZLKF.shehao=KFXXZL.shehao ');
    sql.add('           INNER join CGZLSS on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.add('           INNER join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.add('           WHERE CGZL.CGLX=''6'' ');
    sql.add('                 AND ISNULL(XXZLKF.Dropped,0)=0    ');
    sql.add('                 and ISNULL(XXZLKF.transfer,0)=0  ');
    sql.add('                 and ISNULL(XXZLKF.LookSee,0)=0   ');
    sql.add('                 and KFXXZL.jijie NOT IN (''SS08'',''FW08'',''SS09'',''FW09'') ');
    sql.add('           GROUP BY KFXXZL.ARTICLE,KFXXZL.jijie');
    sql.add('           )A ');
    sql.add('     group by jijie) B');
    //CR1
    {
    sql.add('left join ');
    sql.add('          (select KFXXZL.jijie ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLSS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLSS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as CR1  ');
    sql.add('           from CGZLSS');
    sql.add('           LEFT join KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.add('           LEFT join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlSS.cgno and RKACC.clbh=cgzlSS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6'' AND CGZLSS.STAGE=''CR1'' ');
    sql.add('                 and left(CGZLSS.CLBH,1)<>''V'' ');
    sql.add('           group by jijie) CR1 on CR1.jijie = B.jijie');

    //CR2PSE
    sql.add('left join ');
    sql.add('          (select KFXXZL.jijie ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLSS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLSS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as CR2PSE  ');
    sql.add('           from CGZLSS');
    sql.add('           LEFT join KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.add('           LEFT join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlSS.cgno and RKACC.clbh=cgzlSS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6'' AND CGZLSS.STAGE IN (''CR2'',''PSE'') ');
    sql.add('                 and left(CGZLSS.CLBH,1)<>''V'' ');
    sql.add('           group by jijie) CR2PSE on CR2PSE.jijie = B.jijie');
    //SMS
    sql.add('left join ');
    sql.add('          (select KFXXZL.jijie ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLSS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLSS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as SMS  ');
    sql.add('           from CGZLSS');
    sql.add('           LEFT join KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.add('           LEFT join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlSS.cgno and RKACC.clbh=cgzlSS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6'' AND CGZLSS.STAGE IN (''SMS'',''SM2'',''MCS'') ');
    sql.add('                 and left(CGZLSS.CLBH,1)<>''V'' ');
    sql.add('           group by jijie) SMS on SMS.jijie = B.jijie');
    //SMU
    sql.add('left join ');
    sql.add('          (select KFXXZL.jijie ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLSS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLSS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as SMU  ');
    sql.add('           from CGZLSS');
    sql.add('           LEFT join KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.add('           LEFT join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlSS.cgno and RKACC.clbh=cgzlSS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6'' AND CGZLSS.STAGE IN (''SMU'',''SU2'',''SU3'') ');
    sql.add('                 and left(CGZLSS.CLBH,1)<>''V'' ');
    sql.add('           group by jijie) SMU on SMU.jijie = B.jijie');
    //SEE
    sql.add('left join ');
    sql.add('          (select KFXXZL.jijie ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLSS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLSS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as SEE  ');
    sql.add('           from CGZLSS');
    sql.add('           LEFT join KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.add('           LEFT join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlSS.cgno and RKACC.clbh=cgzlSS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6'' AND CGZLSS.STAGE=''SEE''  ');
    sql.add('                 and left(CGZLSS.CLBH,1)<>''V'' ');
    sql.add('           group by jijie) SEE on SEE.jijie = B.jijie');
    //FES
    sql.add('left join ');
    sql.add('          (select KFXXZL.jijie ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLSS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLSS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as FES  ');
    sql.add('           from CGZLSS');
    sql.add('           LEFT join KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.add('           LEFT join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlSS.cgno and RKACC.clbh=cgzlSS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6'' AND CGZLSS.STAGE=''FES''  ');
    sql.add('                 and left(CGZLSS.CLBH,1)<>''V'' ');
    sql.add('           group by jijie) FES on FES.jijie = B.jijie');
    //PDT
    sql.add('left join ');
    sql.add('          (select KFXXZL.jijie ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLSS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLSS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as PDT  ');
    sql.add('           from CGZLSS');
    sql.add('           LEFT join KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
    sql.add('           LEFT join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlSS.cgno and RKACC.clbh=cgzlSS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6'' AND CGZLSS.STAGE=''PDT''  ');
    sql.add('                 and left(CGZLSS.CLBH,1)<>''V'' ');
    sql.add('           group by jijie) PDT on PDT.jijie = B.jijie');

    //Other
    sql.add('left join ');
    sql.add('          (select cgzl.season ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLSS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLSS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as Other  ');
    sql.add('           from CGZLSS');
    sql.add('           LEFT join CGZL on CGZLSS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlSS.cgno and RKACC.clbh=cgzlSS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6'' AND NOT EXISTS (SELECT ARTICLE FROM KFXXZL WHERE KFXXZL.ARTICLE=CGZLSS.ZLBH)  ');
    sql.add('                 and left(CGZLSS.CLBH,1)<>''V'' ');
    sql.add('           group by cgzl.season) Other on Other.season = B.jijie');
    }
    //TOOL
    sql.add('left join ');
    sql.add('          (select cgzl.season ');
    sql.add('           ,SUM(isnull(RKUSPrice*CGZLS.Qty,0)+(isnull(case RKUSPrice when null then RKVNPrice*CGZLS.Qty else 0 end,0)/ISNULL(CGHLS.CWHL,0))) as TOOL  ');
    sql.add('           from CGZLS');
    sql.add('           LEFT join CGZL on CGZLS.CGNO=CGZL.CGNO ');
    sql.Add('           Left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC ');
    sql.Add('                      on RKACC.zsno=cgzlS.cgno and RKACC.clbh=cgzlS.clbh ');
    sql.add('           left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.USERDate,111)');
    sql.add('           WHERE CGZL.CGLX=''6''    ');
    sql.add('                 and left(CGZLS.CLBH,1)=''V'' ');
    sql.add('           group by cgzl.season) TOOL on TOOL.season = B.jijie');
    sql.add('order by right(left(B.jijie,4),2),left(B.jijie,2) desc');
    Active := True;
  END;

end;

procedure TPayment.Excel2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  Qry_Monthly.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Qry_Monthly.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Qry_Monthly.fields[i].FieldName;
          end;

        Qry_Monthly.First;
        j:=2;
        while   not   Qry_Monthly.Eof   do
          begin
            for   i:=0   to  Qry_Monthly.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Qry_Monthly.Fields[i].Value;
            end;
          Qry_Monthly.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;


end;

procedure TPayment.BBTT2Click(Sender: TObject);
begin
  TraceListSample_Style:=TTraceListSample_Style.create(self);
  TraceListSample_Style.Label1.Caption:='Payment';
  TraceListSample_Style.show;
end;

procedure TPayment.BBTT4Click(Sender: TObject);
begin
  TraceListSample_Country:=TTraceListSample_Country.create(self);
  TraceListSample_Country.Label1.Caption:='Payment';
  TraceListSample_Country.Label2.Caption:='SupplierCountry';
  TraceListSample_Country.show;
end;

procedure TPayment.BitBtn1Click(Sender: TObject);
begin
  TraceListSample_Country:=TTraceListSample_Country.create(self);
  TraceListSample_Country.Label1.Caption:='Payment';
  TraceListSample_Country.Label2.Caption:='ProdLocation';
  TraceListSample_Country.show;
end;

end.
