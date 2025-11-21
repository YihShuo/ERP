unit StockShoeMonth1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Menus, DB, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  ExtCtrls,DateUtils,Comobj,fununit,IniFiles, Buttons;

type
  TStockShoeMonth = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    YSBHEdit: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    TempQry: TQuery;
    Button4: TButton;
    Button5: TButton;
    Label3: TLabel;
    ComboBox1: TComboBox;
    TS2: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Button6: TButton;
    DTP2: TDateTimePicker;
    Button7: TButton;
    CheckBox2: TCheckBox;
    Edit3: TEdit;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    Query2: TQuery;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    TS3: TTabSheet;
    Panel3: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Button11: TButton;
    DTP3: TDateTimePicker;
    Button12: TButton;
    CheckBox3: TCheckBox;
    Edit5: TEdit;
    DBGridEh3: TDBGridEh;
    DS3: TDataSource;
    Query3: TQuery;
    PopupMenu2: TPopupMenu;
    Detail2: TMenuItem;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Query3DDBH: TStringField;
    Query3CKBH: TStringField;
    Query3Pairs: TIntegerField;
    Query3LastRem: TFloatField;
    Query3RKQty: TIntegerField;
    Query3XHQty: TIntegerField;
    Query3Qty: TFloatField;
    Query3JHRQ: TDateTimeField;
    Query3TestNo: TStringField;
    Query3Article: TStringField;
    Query3DDZT: TStringField;
    Query3Memo: TStringField;
    Query2DDBH: TStringField;
    Query2CKBH: TStringField;
    Query2Pairs: TFloatField;
    Query2LastRem: TFloatField;
    Query2RKQty: TFloatField;
    Query2XHQty: TFloatField;
    Query2Qty: TFloatField;
    Query2JHRQ: TStringField;
    Query2TestNo: TStringField;
    Query2Article: TStringField;
    Query2DDZT: TStringField;
    Query2Memo: TStringField;
    Label10: TLabel;
    ComboBox2: TComboBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    Label11: TLabel;
    DDZTEdit: TEdit;
    Label12: TLabel;
    MergeCB: TCheckBox;
    TS4: TTabSheet;
    DBGridEh4: TDBGridEh;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Edit6: TEdit;
    Button16: TButton;
    DTP4: TDateTimePicker;
    Button17: TButton;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    DS4: TDataSource;
    Query4: TQuery;
    Query4DDBH: TStringField;
    Query4Pairs: TFloatField;
    Query4LastRem: TCurrencyField;
    Query4RKQty: TCurrencyField;
    Query4XHQty: TCurrencyField;
    Query4Qty: TCurrencyField;
    Query4CKBH: TStringField;
    Query4Article: TStringField;
    Query4DDZT: TStringField;
    Query4Memo: TStringField;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Label15: TLabel;
    MemoEdit: TEdit;
    Label16: TLabel;
    DDBHEdit: TEdit;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    TRQtyCK: TCheckBox;
    MergeYSBHCK: TCheckBox;
    Query1DDBH: TStringField;
    Query1YSBH: TStringField;
    Query1CKBH: TStringField;
    Query1Pairs: TFloatField;
    Query1LastRem: TIntegerField;
    Query1RKQty: TIntegerField;
    Query1XHQty: TIntegerField;
    Query1TRQty: TIntegerField;
    Query1Qty: TIntegerField;
    Query1ShipDate: TDateTimeField;
    Query1ARTICLE: TStringField;
    Query1DDZT: TStringField;
    Query1Memo: TStringField;
    chk_OrderSeperate: TCheckBox;
    Query1BDEDesigner30: TIntegerField;
    Query1BDEDesigner3160: TIntegerField;
    Query1BDEDesigner6190: TIntegerField;
    Query1BDEDesigner91120: TIntegerField;
    Query1BDEDesigner121180: TIntegerField;
    Query1BDEDesigner181360: TIntegerField;
    Query1BDEDesigner360: TIntegerField;
    Query2BDEDesigner30: TFloatField;
    Query2BDEDesigner3160: TFloatField;
    Query2BDEDesigner6190: TFloatField;
    Query2BDEDesigner91120: TFloatField;
    Query2BDEDesigner121180: TFloatField;
    Query2BDEDesigner181360: TFloatField;
    Query2BDEDesigner360: TFloatField;
    Query3BDEDesigner30: TFloatField;
    Query3BDEDesigner3160: TFloatField;
    Query3BDEDesigner6190: TFloatField;
    Query3BDEDesigner91120: TFloatField;
    Query3BDEDesigner121180: TFloatField;
    Query3BDEDesigner181360: TFloatField;
    Query3BDEDesigner360: TFloatField;
    B_ImportP3: TBitBtn;
    OpenDialog1: TOpenDialog;
    Query1UnitPrice: TFloatField;
    Query1Amount: TFloatField;
    Query2UnitPrice: TFloatField;
    Query2Amount: TFloatField;
    Query3UNITPRICE: TFloatField;
    Query3Amount: TFloatField;
    TS5: TTabSheet;
    Panel5: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edt_RY1: TEdit;
    btn_Query: TButton;
    btn_Excel: TButton;
    cbx_Year: TComboBox;
    cbx_Month: TComboBox;
    btn_Monthly: TButton;
    DBG_MonthStock: TDBGridEh;
    Qry_MonthStock: TQuery;
    Qry_MonthStockKCYEAR: TStringField;
    Qry_MonthStockKCMONTH: TStringField;
    Qry_MonthStockDDBH: TStringField;
    Qry_MonthStockRemQty: TIntegerField;
    Qry_MonthStockRemQty01T: TIntegerField;
    Qry_MonthStockRemQty02T: TIntegerField;
    Qry_MonthStockRemQty03T: TIntegerField;
    Qry_MonthStockRemQty04T: TIntegerField;
    Qry_MonthStockRemQty05T: TIntegerField;
    Qry_MonthStockRemQty06T: TIntegerField;
    Qry_MonthStockRemQty07T: TIntegerField;
    DS_MonthStock: TDataSource;
    Qry_MonthStockCKBH: TStringField;
    TS6: TTabSheet;
    Panel6: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit1: TEdit;
    btn_Sample: TButton;
    Button22: TButton;
    cbx_Year_Sample: TComboBox;
    cbx_Month_Sample: TComboBox;
    Button23: TButton;
    DBG_MonthStock_Sample: TDBGridEh;
    Qry_MonthStock_Sample: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DS_MonthStock_Sample: TDataSource;
    Qry_MonthStock_SampleRemQty: TFloatField;
    Qry_MonthStock_SampleRemQty01T: TFloatField;
    Qry_MonthStock_SampleRemQty02T: TFloatField;
    Qry_MonthStock_SampleRemQty03T: TFloatField;
    Qry_MonthStock_SampleRemQty04T: TFloatField;
    Qry_MonthStock_SampleRemQty05T: TFloatField;
    Qry_MonthStock_SampleRemQty06T: TFloatField;
    Qry_MonthStock_SampleRemQty07T: TFloatField;
    TS7: TTabSheet;
    Panel7: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit7: TEdit;
    btn_CBY: TButton;
    Button24: TButton;
    cbx_Year_CBY: TComboBox;
    cbx_Month_CBY: TComboBox;
    Button25: TButton;
    DBG_MonthStock_CBY: TDBGridEh;
    Qry_MonthStock_CBY: TQuery;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    DS_MonthStock_CBY: TDataSource;
    Qry_MonthStock_CBYRemQty: TFloatField;
    Qry_MonthStock_CBYRemQty01T: TFloatField;
    Qry_MonthStock_CBYRemQty02T: TFloatField;
    Qry_MonthStock_CBYRemQty03T: TFloatField;
    Qry_MonthStock_CBYRemQty04T: TFloatField;
    Qry_MonthStock_CBYRemQty05T: TFloatField;
    Qry_MonthStock_CBYRemQty06T: TFloatField;
    Qry_MonthStock_CBYRemQty07T: TFloatField;
    TS8: TTabSheet;
    Panel8: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Edit8: TEdit;
    btn_Out: TButton;
    Button26: TButton;
    cbx_Year_Out: TComboBox;
    cbx_Month_Out: TComboBox;
    Button27: TButton;
    DBG_MonthStock_Out: TDBGridEh;
    Qry_MonthStock_Out: TQuery;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    DS_MonthStock_Out: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Detail2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure B_ImportP3Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure Query3AfterOpen(DataSet: TDataSet);
    procedure Query4AfterOpen(DataSet: TDataSet);
    procedure btn_QueryClick(Sender: TObject);
    procedure btn_MonthlyClick(Sender: TObject);
    procedure btn_ExcelClick(Sender: TObject);
    procedure btn_SampleClick(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure btn_CBYClick(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure btn_OutClick(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
    procedure ExportDefaultExcel(Query:TQuery);
    procedure ExportFormatExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  StockShoeMonth: TStockShoeMonth;
  NDate: TDate;

implementation

uses main1,StockShoeMonth_Print1,SampleShoeStock_Detail1,CBYShoeStock_Detail1,SampleFinishShoeStock_Print1
    ,CBYFinishShoeStock_Print1, OutsoleStockMonth_Print1;

{$R *.dfm}

procedure TStockShoeMonth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TStockShoeMonth.FormDestroy(Sender: TObject);
begin
  StockShoeMonth:=nil;
end;

procedure TStockShoeMonth.FormCreate(Sender: TObject);
var i:integer;
begin
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;

    active:=false;
    sql.Clear;
    sql.add('Select gsdh from bgszl ');
    sql.add('where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''') ');
    sql.Add('order by gsdh ');
    active:=true;
    ComboBox1.Items.Clear;
    ComboBox1.Items.Add('ALL');
    while not eof do
    begin
      ComboBox1.Items.Add(fieldbyname('gsdh').AsString);
      Next;
    end;
    ComboBox1.ItemIndex:=0;
    active:=false;
  end;
  //
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select gsdh from bgszl ');
    sql.add('where YN=1 and SFL = ''DC'' order by gsdh ');
    active:=true;
    ComboBox2.Items.Clear;
    ComboBox2.Items.Add('ALL');
    while not eof do
    begin
      ComboBox2.Items.Add(fieldbyname('gsdh').AsString);
      Next;
    end;
    ComboBox2.ItemIndex:=0;
    active:=false;
  end;
  // Load year-month
  i:=strtoint(formatdatetime('yyyy',Ndate))-5;
  cbx_Year.Clear;
  cbx_Year_Sample.Clear;
  cbx_Year_CBY.Clear;
  cbx_Year_Out.Clear;
  while i<(strtoint(formatdatetime('yyyy',Ndate))+3) do
  begin
      cbx_Year.Items.Add(inttostr(i));
      cbx_Year_Sample.Items.Add(inttostr(i));
      cbx_Year_CBY.Items.Add(inttostr(i));
      cbx_Year_Out.Items.Add(inttostr(i));
      i:=i+1;
  end;
  cbx_Year.ItemIndex:=cbx_Year.Items.IndexOf(formatdatetime('yyyy',Ndate));
  cbx_Month.ItemIndex:=cbx_Month.Items.IndexOf(formatdatetime('mm',Ndate));
  cbx_Year_Sample.ItemIndex:=cbx_Year_Sample.Items.IndexOf(formatdatetime('yyyy',Ndate));
  cbx_Month_Sample.ItemIndex:=cbx_Month_Sample.Items.IndexOf(formatdatetime('mm',Ndate));
  cbx_Year_CBY.ItemIndex:=cbx_Year_CBY.Items.IndexOf(formatdatetime('yyyy',Ndate));
  cbx_Month_CBY.ItemIndex:=cbx_Month_CBY.Items.IndexOf(formatdatetime('mm',Ndate));
  cbx_Year_Out.ItemIndex:=cbx_Year_Out.Items.IndexOf(formatdatetime('yyyy',Ndate));
  cbx_Month_Out.ItemIndex:=cbx_Month_Out.Items.IndexOf(formatdatetime('mm',Ndate));

  AppDir:=ExtractFilePath(Application.ExeName);
  DTP1.Date:=Date();
  DTP2.Date:=Date();
  DTP3.Date:=Date();
  DTP4.Date:=Date();
  PC1.ActivePage:=TS1;
end;

procedure TStockShoeMonth.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
    YWCPMONTH_DDBH,YWCP_DDBH,YWCPMONTH,YWCP:string;

begin
  //20230605 order seperate
  if chk_OrderSeperate.Checked then           
  begin
//    YWCPMONTH_DDBH:='case when DDZLTR.DDBH is not null then DDZLTR.DDBH else  YWCPMONTH.DDBH end ' ;
//    YWCP_DDBH:='case when DDZLTR.DDBH is not null then DDZLTR.DDBH else  YWCP.DDBH end ' ;
//20240306 億柏月結缺少DH2310-114B這張訂單數量，如果將拆單改為拆單後的訂單編號，月結數量就會正確，可繼續觀察
    YWCPMONTH_DDBH:='case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCPMONTH.DDBH end ' ;
    YWCP_DDBH:='case when DDZLTR.DDBH1 is not null then DDZLTR.DDBH1 else  YWCP.DDBH end ' ;
    YWCPMONTH:='YWCPMONTH left join DDZLTR on YWCPMONTH.DDBH=DDZLTR.DDBH1';
    //加上條件 加快搜尋時間 20231122
    YWCP:='(select * from YWCP where 1=1 and IsNull(SB,'''')<>'''' '+
    'union all '+
    'select * from YWCPOld where 1=1 and IsNull(SB,'''')<>'''' ) YWCP left join DDZLTR on YWCP.DDBH=DDZLTR.DDBH1';
  end else
  begin
    YWCPMONTH_DDBH:='YWCPMONTH.DDBH';
    YWCP_DDBH:='YWCP.DDBH';
    YWCPMONTH:='YWCPMonth';
    //加上條件 加快搜尋時間 20231122
    YWCP:='(select * from YWCP where 1=1 and IsNull(SB,'''')<>'''' '+
    'union all '+
    'select * from YWCPOld where 1=1 and IsNull(SB,'''')<>'''') YWCP';
  end;
  //
  decodedate(DTP1.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  //
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' if object_id(''tempdb..#YWCPDDTR'') is not null');
    SQL.Add(' begin drop table #YWCPDDTR end');
    SQL.Add('Select DDBH,DDBH1,Qty into #YWCPDDTR');
    SQL.Add('From YWCPMONTH_DDZLTR   ');
    //加上USERDATE 加快搜尋時間 20231122
    SQL.Add('	where YWCPMONTH_DDZLTR.KCYEAR ='''+sYear+''' and YWCPMONTH_DDZLTR.KCMONTH = '''+sMonth+''' and YWCPMONTH_DDZLTR.DDBH in ');
    SQL.Add('	(');
    SQL.Add('	 Select DDBH from (');
    SQL.Add('   Select '+YWCPMONTH_DDBH+' as DDBH');
    SQL.Add('   From '+YWCPMONTH+'   ');
    SQL.Add('   where YWCPMONTH.KCYEAR='''+sYear+''' and YWCPMONTH.KCMONTH='''+sMonth+''' ');
    SQL.Add('	  Union all');
    SQL.Add('   Select '+YWCP_DDBH+' as DDBH ');
    SQL.Add('	  from '+YWCP+'');
    SQL.Add('	  where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and IsNull(SB,'''')<>'''' ');
    SQL.Add('	  Group by '+YWCP_DDBH+'  ) YWCP Group by DDBH');
    SQL.Add('  )');
    //FuncObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YWDDM.DDBH,YWDDM.YSBH,YWDDM.CKBH,IsNull(YWDD.Qty,DDZL.Pairs) as Pairs,YWDDM.LastRem,YWDDM.RKQty,YWDDM.XHQty,YWDDM.TRQty,YWDDM.Qty,');
    SQL.Add('       DDZL.ShipDate,DDZL.ARTICLE,DDZL.DDZT,YWCPMemo.Memo  ');
    SQL.Add(',case when (diffdate <=30) then YWDDM.Qty else 0 end as ''<=30'' ');
    SQL.Add(',case when (diffdate >30) and (diffdate <=60) then YWDDM.Qty else 0 end as ''31~60'' ');
    SQL.Add(',case when (diffdate >60) and (diffdate <=90) then YWDDM.Qty else 0 end as ''61~90'' ');
    SQL.Add(',case when (diffdate >90) and (diffdate <=120) then YWDDM.Qty else 0 end as ''91~120'' ');
    SQL.Add(',case when (diffdate >120) and (diffdate <=180) then YWDDM.Qty else 0 end as ''121~180'' ');
    SQL.Add(',case when (diffdate >180) and (diffdate <=360) then YWDDM.Qty else 0 end as ''181~360'' ');
    SQL.Add(',case when (diffdate >360) then YWDDM.Qty else 0 end as ''>360'' ');
    SQL.Add(',Mass_Cost.UnitPrice,isnull(YWDDM.Qty,0)*Mass_Cost.UnitPrice as Amount');
    SQL.Add('from (');
    if MergeYSBHCK.Checked=true then //Ty Bach use
    begin
    SQL.Add(' Select YSBH as DDBH,YSBH,CKBH,Sum(LastRem) as LastRem,Sum(RKQty) as RKQty,Sum(XHQty) as XHQty,Sum(TRQty) as TRQty,Sum(Qty) as Qty ');
    SQL.Add(' ,DATEDIFF(day, (select max(CFMDate) from KCRK left join KCRKS on KCRK.RKNO = KCRKS.RKNO where CGBH = YSBH) , CONVERT(VARCHAR(10), GETDATE(), 111) ) as diffdate from ( ');
    end;
    SQL.Add('  Select YWCP.DDBH,IsNull(YWDD.YSBH,YWCP.DDBH) as YSBH,Max(YWCP.CKBH) as CKBH,Sum(YWCPMonth.Qty) as LastRem,Sum(YWCPRK.Qty) as RKQty,');
    SQL.Add('         Sum(YWCPXH.Qty) as XHQty,SUM(YWCPMONTH_DDZLTR.Qty) as TRQty,Case when SUM(YWCP.Qty) is not null and SUM(YWCPMONTH_DDZLTR.Qty) is not null then SUM(YWCP.Qty)-SUM(YWCPMONTH_DDZLTR.Qty) else SUM(YWCP.Qty) end as Qty');
    SQL.Add('  from (');
    SQL.Add('	Select DDBH,Max(CKBH) as CKBH, Sum(Qty) as Qty from (');
    SQL.Add('    Select YWCPMONTH.CKBH,'+YWCPMONTH_DDBH+' as DDBH,YWCPMONTH.Qty,''1'' as SB ');
    SQL.Add('    From '+YWCPMONTH+'   ');
    SQL.Add('    where YWCPMONTH.KCYEAR='''+sYear+'''  ');
    SQL.Add('		and YWCPMONTH.KCMONTH='''+sMonth+''' ');
    SQL.Add('	union all');
    SQL.Add('	Select Max(YWCP.KCBH) as CKBH,'+YWCP_DDBH+' as DDBH,Sum(YWCP.Qty) as Qty,''2'' as SB');
    SQL.Add('	from '+YWCP+'');
    SQL.Add('	where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and IsNull(SB,'''')<>'''' ');
    SQL.Add('	Group by '+YWCP_DDBH+'');
    SQL.Add('	union all');
    SQL.Add('	Select Max(YWCP.KCBH) as CKBH,'+YWCP_DDBH+' as DDBH,-1*Sum( Case when SB=''3'' then YWCP.Qty else 0 end) as Qty,''3'' as SB');
    SQL.Add('	from '+YWCP+'');
    SQL.Add('	where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and IsNull(SB,'''')<>''''');
    SQL.Add('	Group by '+YWCP_DDBH+'  ');
    SQL.Add('	) YWCPMONTH');
    SQL.Add('	Group by DDBH  ) YWCP  ');
    SQL.Add('  Left join  (');
    SQL.Add('    Select YWCPMONTH.CKBH,'+YWCPMONTH_DDBH+' as DDBH,YWCPMONTH.Qty,''1'' as SB ');
    SQL.Add('	From '+YWCPMONTH+'   ');
    SQL.Add('	where YWCPMONTH.KCYEAR='''+sYear+'''  ');
    SQL.Add('		 and YWCPMONTH.KCMONTH='''+sMonth+'''  ) YWCPMonth on YWCP.DDBH=YWCPMonth.DDBH');
    SQL.Add('  Left join  (');
    SQL.Add('	Select Max(YWCP.KCBH) as CKBH,'+YWCP_DDBH+' as DDBH,Sum(YWCP.Qty) as Qty,''2'' as SB');
    SQL.Add('	from '+YWCP+'');
    SQL.Add('	where convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and IsNull(SB,'''')<>'''' ');
    SQL.Add('	Group by '+YWCP_DDBH+' ) YWCPRK on YWCP.DDBH=YWCPRK.DDBH');
    SQL.Add('  Left join  (');
    SQL.Add('	Select Max(YWCP.KCBH) as CKBH,'+YWCP_DDBH+' as DDBH,Sum( Case when SB=''3'' then YWCP.Qty else 0 end) as Qty,''5'' as SB');
    SQL.Add('	from '+YWCP+' ');
    SQL.Add('	where convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP1.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP1.date)+''' and IsNull(SB,'''')<>''''');
    SQL.Add('	Group by '+YWCP_DDBH+' ) YWCPXH on YWCP.DDBH=YWCPXH.DDBH');
    SQL.Add('   Left join (');
    //============
    SQL.Add(' Select YWCPDDTR.CKBH,YWCPDDTR.DDBH, Case when IsNull(YWCP.Qty,0)<YWCPDDTR.Qty then IsNull(YWCP.Qty,0) else YWCPDDTR.Qty end as  Qty,YWCPDDTR.SB from (');
    SQL.Add('      Select null as CKBH,#YWCPDDTR.DDBH,Sum(#YWCPDDTR.Qty) as Qty,''6'' as SB ');
    SQL.Add('	   From #YWCPDDTR  ');
    SQL.Add('	   Group by #YWCPDDTR.DDBH');
    SQL.Add(') YWCPDDTR ');
    SQL.Add('Left join (');
    SQL.Add('  Select #YWCPDDTR.DDBH,Sum(YWCP.Qty) as Qty');
    SQL.Add('  From YWCP');
    SQL.Add('  inner join #YWCPDDTR on #YWCPDDTR.DDBH1=YWCP.DDBH');
    SQL.Add('  where  IsNull(SB,'''')<>''''  and convert(smalldatetime,convert(varchar,YWCP.INDATE,111))<='''+Formatdatetime('yyyy/MM/dd',DTP1.date)+'''   ');
    SQL.Add('  Group by #YWCPDDTR.DDBH');
    SQL.Add(') YWCP on YWCPDDTR.DDBH=YWCP.DDBH');
    //============
    SQL.Add('  ) YWCPMONTH_DDZLTR on YWCP.DDBH=YWCPMONTH_DDZLTR.DDBH');
    SQL.Add('  Left join YWDD on YWDD.DDBH=YWCP.DDBH ');
    SQL.Add('  Group by YWDD.YSBH,YWCP.DDBH');
    if MergeYSBHCK.Checked=true then  //Ty Bach use
    begin
    SQL.Add(') YWDDM Group by YSBH,CKBH ');
    end;
    SQL.Add('   ) YWDDM');
    SQL.Add('Left join YWCPMemo on YWCPMemo.DDBH=YWDDM.YSBH ');
    SQL.Add('left join DDZL on YWDDM.YSBH=DDZL.DDBH ');
    SQL.Add('left join YWDD on YWDDM.DDBH=YWDD.DDBH ');
    SQL.Add('left join Mass_Cost on Mass_Cost.RY = YWDDM.DDBH and YM = '''+sYear+sMonth+'''');
    SQL.Add('where 1=1 ');
    if ComboBox1.Text <> 'ALL' then
      SQL.Add('and DDZL.GSBH='''+ComboBox1.Text+''' ');
    if DDBHEdit.Text<>'' then
      SQL.Add('   and YWDDM.DDBH like '''+DDBHEdit.Text+'%'' ');
    if YSBHEdit.Text<>'' then
      SQL.Add('   and YWDDM.YSBH like '''+YSBHEdit.Text+'%'' ');
    if CheckBox1.Checked=true then
      SQL.Add('   and YWDDM.Qty>0 ');
    if CheckBox9.Checked=true then
      SQL.Add('   and YWDDM.Qty<0 ');
    if CheckBox8.Checked=true then
      SQL.Add('   and YWDDM.Qty is null ');
    if TRQtyCK.Checked=true then
      SQL.Add('   and YWDDM.DDBH in (Select DDBH  from #YWCPDDTR union all Select DDBH1  from #YWCPDDTR ) ');
    if MemoEdit.Text<>'' then
      SQL.Add('   and YWCPMemo.Memo like ''%'+MemoEdit.Text+'%'' ');
    SQL.Add('Order by YWDDM.YSBH ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  
end;

procedure TStockShoeMonth.Button2Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query1);
  end else
  begin
    ExportDefaultExcel(Query1);
  end;
end;

procedure TStockShoeMonth.ExportDefaultExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query.Active then
  begin
    if Query.recordcount=0 then
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
    for   i:=1   to   Query.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
    end;
    Query.First;
    j:=2;
    while   not  Query.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
        end;
        Query.Next;
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

procedure TStockShoeMonth.ExportFormatExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j: integer;
    iYear,iMonth,iDay:word;
    sYear,sMonth:string;
    DTP:TDate;
    GSDH:String;
begin
  if PC1.ActivePageIndex=0 then
  begin
    DTP:=DTP1.Date;
    GSDH:=ComboBox1.Text;
  end else
  if PC1.ActivePageIndex=2 then
  begin
    DTP:=DTP2.Date;
    GSDH:=ComboBox2.Text;
  end else
  if PC1.ActivePageIndex=4 then
  begin
    DTP:=DTP3.Date;
    GSDH:='CBY';
  end else
  if PC1.ActivePageIndex=6 then
  begin
    DTP:=DTP4.Date;
    GSDH:='VR3';
  end;
  //
  decodedate(DTP,iYear,iMonth,iDay);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
  CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN179.xlsx'),Pchar(AppDir+'Additional\Account_SN179.xlsx'),false);
  if FileExists(AppDir+'Additional\Account_SN179.xlsx') then
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
      eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN179.xlsx');
      eclApp.WorkSheets[1].Activate;
      eclApp.Cells(3,1):='Thang '+sMonth+' Nam '+sYear+' 年 '+sMonth +' 月份';
      eclApp.Cells(4,1):='Xuong: '+GSDH+' 廠區';
      //
      Query.First;
      j:=7;
      for i:=1 to Query.RecordCount do
      begin
        eclApp.ActiveSheet.Rows[j].Insert(-4121);
        eclApp.ActiveSheet.Rows[j].RowHeight:=16;
        eclApp.Cells(j,1):=Query.FieldByName('DDBH').Value;
        eclApp.Cells(j,2):=Query.FieldByName('CKBH').Value;
        eclApp.Cells(j,3):=Query.FieldByName('Pairs').Value;
        eclApp.Cells(j,4):=Query.FieldByName('LastRem').Value;
        eclApp.Cells(j,5):=Query.FieldByName('RKQty').Value;
        eclApp.Cells(j,6):=Query.FieldByName('XHQty').Value;
        eclApp.Cells(j,7):=Query.FieldByName('Qty').Value;
        eclApp.Cells(j,8):=Query.FieldByName('ARTICLE').Value;
        eclApp.Cells(j,9):=Query.FieldByName('Memo').Value;
        Query.Next;
        inc(j);
      end;
      eclApp.Cells[j,3].Formula:='=SUM(C7:C'+inttostr(j-1)+')';
      eclApp.Cells[j,4].Formula:='=SUM(D7:D'+inttostr(j-1)+')';
      eclApp.Cells[j,5].Formula:='=SUM(E7:E'+inttostr(j-1)+')';
      eclApp.Cells[j,6].Formula:='=SUM(F7:F'+inttostr(j-1)+')';
      eclApp.Cells[j,7].Formula:='=SUM(G7:G'+inttostr(j-1)+')';
      eclApp.Range[eclApp.Cells[7,1],eclApp.Cells[j-1,10]].font.Bold:=false;
      //eclapp.columns.autofit;
      showmessage('Succeed.');
      eclApp.Visible:=True;
    except
      on   F:Exception   do
      showmessage(F.Message);
    end;
  end;
end;

procedure TStockShoeMonth.Button3Click(Sender: TObject);
begin
  StockShoeMonth_Print:=TStockShoeMonth_Print.Create(self);
  StockShoeMonth_Print.Quickrep1.prepare;
  StockShoeMonth_Print.PageN.caption:=inttostr(StockShoeMonth_Print.quickrep1.QRPrinter.pagecount);
  StockShoeMonth_Print.Quickrep1.preview;
  StockShoeMonth_Print.Free;
end;

procedure TStockShoeMonth.Button5Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP1.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query1.First;
    while not Query1.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update YWCPMONTH set YN=2');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and DDBH ='''+Query1.fieldbyname('DDBH').AsString+''' ');
        execsql;
      end;
      Query1.Next;
    end;
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('insert into BDelRec ');
      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
      sql.add('values (''YWCPMonth'',''Reset'','''+sYear+''' +''/''+ '''+sMonth+''' ');
      sql.add(','''+main.Edit1.Text+''' ,'''+main.Edit1.Text+''' ,getdate())');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage('Already unlock '+FormatDateTime('YYYY/MM',DTP1.Date)+' ');
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  query1.Active:=false;
  query1.Active:=true;
end;

procedure TStockShoeMonth.Button4Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP1.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query1.First;
    while not Query1.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update YWCPMONTH set YN=1');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and DDBH ='''+Query1.fieldbyname('DDBH').AsString+''' ');
        execsql;
      end;
      Query1.Next;
    end;
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('insert into BDelRec ');
      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
      sql.add('values (''YWCPMonth'',''Confirm'','''+sYear+''' +''/''+ '''+sMonth+''' ');
      sql.add(','''+main.Edit1.Text+''' ,'''+main.Edit1.Text+''' ,getdate())');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage('Already lock '+FormatDateTime('YYYY/MM',DTP1.Date)+' ');
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  query1.Active:=false;
  query1.Active:=true;
end;

procedure TStockShoeMonth.Button6Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP2.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * ');
    SQL.Add(',case when (diffdate <=30) then ShoeTestship.Qty else 0 end as ''<=30'' ');
    SQL.Add(',case when (diffdate >30) and (diffdate <=60) then ShoeTestship.Qty else 0 end as ''31~60'' ');
    SQL.Add(',case when (diffdate >60) and (diffdate <=90) then ShoeTestship.Qty else 0 end as ''61~90'' ');
    SQL.Add(',case when (diffdate >90) and (diffdate <=120) then ShoeTestship.Qty else 0 end as ''91~120'' ');
    SQL.Add(',case when (diffdate >120) and (diffdate <=180) then ShoeTestship.Qty else 0 end as ''121~180'' ');
    SQL.Add(',case when (diffdate >180) and (diffdate <=360) then ShoeTestship.Qty else 0 end as ''181~360'' ');
    SQL.Add(',case when (diffdate >360) then ShoeTestship.Qty else 0 end as ''>360'' ');
    SQL.Add('from (');
    SQL.Add('Select ShoeTest.YPDH as DDBH,YPZL.GSDH as CKBH,YPZL.Quantity as Pairs,ShoeTestMonth.Qty as LastRem,ShoeTestIn.Qty as RKQty,ShoeTestship.Qty as XHQty,ShoetestAll.Qty,YPZL.JHRQ,');
    SQL.Add('       Shoetest.TestNo, ShoeTest.Article,Case when ShoeTest.TBCancel=1 then ''C'' else ''Y'' end as DDZT,ShoeTestMonth_Memo.Memo');
    SQL.Add(' ,DATEDIFF(day, (select max(CFMDate) from KCRK left join KCRKS on KCRK.RKNO = KCRKS.RKNO where CGBH = ShoeTest.YPDH) , CONVERT(VARCHAR(10), GETDATE(), 111) ) as diffdate ');
    SQL.Add(',Mass_Cost.UnitPrice,isnull(ShoeTestship.Qty,0)*Mass_Cost.UnitPrice as Amount');
    SQL.Add('from (');
    SQL.Add('  Select  TestNo , Sum(Qty) as Qty');
    SQL.Add('  from (');
    SQL.Add('	Select TestNo,Qty,''1'' as SB');
    SQL.Add('	from ShoeTestMonth');
    SQL.Add('	where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('	   and ShoeTestMonth.KCMONTH='''+sMonth+''' ');
    SQL.Add('	   and IsNull(ShoeTestMonth.CKBH,'''')<>''CBY''');
    SQL.Add('	union all');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,''2'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP2.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    SQL.Add('		  and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo');
    SQL.Add('	union all ');
    SQL.Add('	Select  shoetest.TestNo,-1*Sum(shoetestshipping.qty) as Qty,''3'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetestshipping.shipdate_final, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP2.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP2.date)+'''   and shoetest.Complete is not null');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo  )  Shoetest  Group by TestNo )  ShoetestAll');
    SQL.Add('Left join (');
    SQL.Add('	Select TestNo,Qty,''1'' as SB');
    SQL.Add('	from ShoeTestMonth');
    SQL.Add('	where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('	   and ShoeTestMonth.KCMONTH='''+sMonth+''' ) ShoeTestMonth on ShoeTestMonth.TestNo=ShoetestAll.TestNo');
    SQL.Add('Left join (');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetest2.qty) as Qty,''2'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP2.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo ) ShoeTestIn on ShoeTestIn.TestNo=ShoetestAll.TestNo');
    SQL.Add('Left join (');
    SQL.Add('	Select  shoetest.TestNo,Sum(shoetestshipping.qty) as Qty,''3'' as SB');
    SQL.Add('	from shoetest');
    SQL.Add('	left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno');
    SQL.Add('	left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('	where Convert(varchar,shoetestshipping.shipdate_final, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP2.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP2.date)+'''  and shoetest.Complete is not null');
    SQL.Add('		    and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('	Group by shoetest.TestNo ) ShoeTestship on ShoeTestship.TestNo=ShoetestAll.TestNo');
    SQL.Add('left join ShoeTest on ShoeTest.TestNo=ShoetestAll.TestNo');
    SQL.Add('Left join YPZL on YPZL.YPDH=ShoeTest.YPDH');
    SQL.Add('left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=ShoetestAll.TestNo');
    SQL.Add('left join Mass_Cost on Mass_Cost.RY = shoetest.YPDH and YM = '''+sYear+sMonth+'''');
    SQL.Add('where 1=1 ');
    if ComboBox2.Text <> 'ALL' then
      SQL.Add('  and YPZL.GSDH='''+ComboBox2.Text+'''');
    if Edit2.Text<>'' then
      SQL.Add('  and ShoeTest.YPDH like '''+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      SQL.Add('  and ShoetestAll.TestNo like '''+Edit3.Text+'%'' ');
    if CheckBox2.Checked=true then
      SQL.Add('  and ShoetestAll.Qty>0 ');
    if CheckBox4.Checked=true then
      SQL.Add('  and ShoetestAll.Qty<0 ');
    SQL.Add('	) ShoeTestship ');
    SQL.Add('order by ShoeTestship.TestNo ');
    //FuncObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
  end;
end;

procedure TStockShoeMonth.Button7Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query2);
  end else
  begin
    ExportDefaultExcel(Query2);
  end;
end;

procedure TStockShoeMonth.Detail1Click(Sender: TObject);
begin
  SampleShoeStock_Detail:=TSampleShoeStock_Detail.Create(Self);
  SampleShoeStock_Detail.ShowModal();
end;

procedure TStockShoeMonth.Button11Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP3.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;

  with Query3 do
  begin
    Active:=false;
    SQL.Clear;
    if MergeCB.Checked=true then
    begin
    SQL.Add('Select CBY_Orders_Fin.DDBH, CBY_Orders_Fin.CKBH, (select Sum(total) as total from CBY_Orders where CBY_Orders_Fin.DDBH=CBY_Orders.MasterOrder) as Pairs,');
    SQL.Add('       CBY_Orders_Fin.LastRem,CBY_Orders_Fin.RKQty,CBY_Orders_Fin.XHQty,CBY_Orders_Fin.Qty,CBY_Orders_Fin.JHRQ,CBY_Orders_Fin.TestNo,CBY_Orders_Fin.Article,CBY_Orders_Fin.DDZT,CBY_Orders_Fin.Memo');
    SQL.Add(',case when (diffdate <=30) then CBY_Orders_Fin.Qty else 0 end as ''<=30'' ');
    SQL.Add(',case when (diffdate >30) and (diffdate <=60) then CBY_Orders_Fin.Qty else 0 end as ''31~60'' ');
    SQL.Add(',case when (diffdate >60) and (diffdate <=90) then CBY_Orders_Fin.Qty else 0 end as ''61~90'' ');
    SQL.Add(',case when (diffdate >90) and (diffdate <=120) then CBY_Orders_Fin.Qty else 0 end as ''91~120'' ');
    SQL.Add(',case when (diffdate >120) and (diffdate <=180) then CBY_Orders_Fin.Qty else 0 end as ''121~180'' ');
    SQL.Add(',case when (diffdate >180) and (diffdate <=360) then CBY_Orders_Fin.Qty else 0 end as ''181~360'' ');
    SQL.Add(',case when (diffdate >360) then CBY_Orders_Fin.Qty else 0 end as ''>360'' ');
    SQL.Add(',UNITPRICE,(Isnull(CBY_Orders_Fin.Qty,0) * UNITPRICE) as Amount');
    SQL.Add('from ( ');
    SQL.Add('Select DDBH,Max(CKBH) as CKBH,Sum(Pairs) as Pairs,Sum(IsNull(LastRem,0)) as LastRem,Sum(IsNull(RKQty,0)) as RKQty,');
    SQL.Add('       Sum(IsNull(XHQty,0)) as XHQty,Sum(Qty) as Qty,Max(JHRQ) as JHRQ,''ZZZZ'' as TestNo,Max(Article) as Article, Max(DDZT) as DDZT,Max(Memo) as Memo ');
    SQL.Add('  ,DATEDIFF(day, (select max(CFMDate) from KCRK left join KCRKS on KCRK.RKNO = KCRKS.RKNO where CGBH = DDBH) , CONVERT(VARCHAR(10), GETDATE(), 111)) as diffdate,UNITPRICE ');
    SQL.Add(' from ( ');
    end;
    SQL.Add('Select CBY_Orders.MasterOrder as DDBH,''CBY ''as CKBH,CBY_Orders.total as Pairs,ShoeTestMonth.Qty as LastRem, ShoeTestIn.Qty as RKQty, ShoeTestship.Qty as XHQty, CBYShoetestAll.Qty,CBY_Orders.requiredShipDate as JHRQ, ');
    SQL.Add('CBYShoetestAll.workOrderId as TestNo,CBY_Orders.style as Article,Case when CBY_Orders.Cancel=1 then ''C'' else ''Y'' end DDZT,ShoeTestMonth_Memo.Memo');
    SQL.Add(',Mass_Cost.UNITPRICE ');
    SQL.Add(' from ( ');
    SQL.Add('  Select  TestNo as workOrderId, Sum(Qty) as Qty from (');
    SQL.Add('    Select testNo,Qty,''1'' as SB from ShoeTestMonth');
    SQL.Add('    where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('    and ShoeTestMonth.KCMONTH='''+sMonth+''' ');
    SQL.Add('    and ShoeTestMonth.CKBH=''CBY''');
    SQL.Add('    union all');
    SQL.Add('    Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, ''2'' as SB From CBY_Orders');
    SQL.Add('    where Convert(varchar,CBY_Orders.StockDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP3.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    SQL.Add('    union all ');
    SQL.Add('    Select CBY_Orders.workOrderId,-1*CBY_Orders.total as Qty, ''3'' as SB From CBY_Orders');
    SQL.Add('    where Convert(varchar,CBY_Orders.ShipDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP3.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    SQL.Add('  ) AS Shoetest');
    SQL.Add('  Group by TestNo');
    SQL.Add(') AS CBYShoetestAll');
    SQL.Add('Left join (');
    SQL.Add('  Select TestNo as workOrderId,Qty,''1'' as SB from ShoeTestMonth');
    SQL.Add('  where ShoeTestMonth.KCYEAR='''+sYear+''' ');
    SQL.Add('  and ShoeTestMonth.KCMONTH='''+sMonth+''' ');
    SQL.Add('  and ShoeTestMonth.CKBH=''CBY''');
    SQL.Add(') AS ShoeTestMonth on ShoeTestMonth.workOrderId=CBYShoetestAll.workOrderId');
    SQL.Add('Left join (');
    SQL.Add('  Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, ''2'' as SB From CBY_Orders');
    SQL.Add('  where Convert(varchar,CBY_Orders.StockDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP3.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    SQL.Add(') AS ShoeTestIn on ShoeTestIn.workOrderId=CBYShoetestAll.workOrderId ');
    SQL.Add('Left join (');
    SQL.Add('  Select CBY_Orders.workOrderId,CBY_Orders.total as Qty, ''3'' as SB From CBY_Orders');
    SQL.Add('  where Convert(varchar,CBY_Orders.ShipDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP3.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP3.date)+'''');
    SQL.Add(') AS ShoeTestship on ShoeTestship.workOrderId=CBYShoetestAll.workOrderId');
    SQL.Add('left join CBY_Orders on CBY_Orders.workOrderId=CBYShoetestAll.workOrderId');
    SQL.Add('left join ShoeTestMonth_Memo on ShoeTestMonth_Memo.testNo=CBYShoetestAll.workOrderId');
    SQL.Add('left join Mass_Cost on Mass_Cost.RY = CBYShoetestAll.workOrderId and YM = '''+sYear+sMonth+'''');
    SQL.Add('where 1=1 ');
    if Edit4.Text<>'' then
      SQL.Add('and CBY_Orders.MasterOrder like '''+Edit4.Text+'%'' ');
    if Edit5.Text<>'' then
      SQL.Add('and CBYShoetestAll.workOrderId like '''+Edit5.Text+'%'' ');
    if CheckBox3.Checked=true then
      SQL.Add('and CBYShoetestAll.Qty>0');
    if CheckBox5.Checked=true then
      SQL.Add('and CBYShoetestAll.Qty<0');
    if DDZTEdit.Text<>'' then
      SQL.Add('and Case when CBY_Orders.Cancel=1 then ''C'' else ''Y'' end ='''+DDZTEdit.Text+''' ');
    if MergeCB.Checked=true then
    begin
      SQL.Add(') CBY_Orders Group by CBY_Orders.DDBH,UNITPRICE )  CBY_Orders_Fin  ');
    end;
    //FuncObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
  end;

end;

procedure TStockShoeMonth.Button12Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query3);
  end else
  begin
    ExportDefaultExcel(Query3);
  end;
end;

procedure TStockShoeMonth.Detail2Click(Sender: TObject);
begin
  CBYShoeStock_Detail:=TCBYShoeStock_Detail.Create(Self);
  CBYShoeStock_Detail.ShowModal();
end;

procedure TStockShoeMonth.Button9Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP2.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query2.First;
    while not Query2.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update ShoeTestMonth set YN=1');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and Testno ='''+Query2.fieldbyname('Testno').AsString+''' ');
        execsql;
      end;
      Query2.Next;
    end;
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('insert into BDelRec ');
      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
      sql.add('values (''ShoeTestMonth'',''Confirm_Sample'','''+sYear+''' +''/''+ '''+sMonth+''' ');
      sql.add(','''+main.Edit1.Text+''' ,'''+main.Edit1.Text+''' ,getdate())');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage('Already lock '+FormatDateTime('YYYY/MM',DTP2.Date)+' ');
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  query2.Active:=false;
  query2.Active:=true;
end;

procedure TStockShoeMonth.Button10Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP2.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query2.First;
    while not Query2.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update ShoeTestMonth set YN=2');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and Testno ='''+Query2.fieldbyname('Testno').AsString+''' ');
        execsql;
      end;
      Query2.Next;
    end;
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('insert into BDelRec ');
      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
      sql.add('values (''ShoeTestMonth'',''Reset_Sample'','''+sYear+''' +''/''+ '''+sMonth+''' ');
      sql.add(','''+main.Edit1.Text+''' ,'''+main.Edit1.Text+''' ,getdate())');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage('Already unlock '+FormatDateTime('YYYY/MM',DTP2.Date)+' ');
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  query2.Active:=false;
  query2.Active:=true;
end;

procedure TStockShoeMonth.Button14Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP3.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.Add('update ShoeTestMonth set YN=1');
      sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and CKBH=''CBY'' ');
      execsql;

      active:=false;
      sql.Clear;
      sql.add('insert into BDelRec ');
      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
      sql.add('values (''ShoeTestMonth'',''Confirm_CBY'','''+sYear+''' +''/''+ '''+sMonth+''' ');
      sql.add(','''+main.Edit1.Text+''' ,'''+main.Edit1.Text+''' ,getdate())');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage('Already lock '+FormatDateTime('YYYY/MM',DTP3.Date)+' ');
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  query3.Active:=false;
  query3.Active:=true;
end;

procedure TStockShoeMonth.Button15Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP3.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.Add('update ShoeTestMonth set YN=2');
      sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and CKBH=''CBY'' ');
      execsql;

      active:=false;
      sql.Clear;
      sql.add('insert into BDelRec ');
      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
      sql.add('values (''ShoeTestMonth'',''Reset_CBY'','''+sYear+''' +''/''+ '''+sMonth+''' ');
      sql.add(','''+main.Edit1.Text+''' ,'''+main.Edit1.Text+''' ,getdate())');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage('Already unlock '+FormatDateTime('YYYY/MM',DTP3.Date)+' ');
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  query3.Active:=false;
  query3.Active:=true;
end;

procedure TStockShoeMonth.Button8Click(Sender: TObject);
begin
  SampleFinishShoeStock_Print:=TSampleFinishShoeStock_Print.Create(self);
  SampleFinishShoeStock_Print.Quickrep1.prepare;
  SampleFinishShoeStock_Print.PageN.caption:=inttostr(SampleFinishShoeStock_Print.quickrep1.QRPrinter.pagecount);
  SampleFinishShoeStock_Print.Quickrep1.preview;
  SampleFinishShoeStock_Print.Free;
end;

procedure TStockShoeMonth.Button13Click(Sender: TObject);
begin
  CBYFinishShoeStock_Print:=TCBYFinishShoeStock_Print.Create(self);
  CBYFinishShoeStock_Print.Quickrep1.prepare;
  CBYFinishShoeStock_Print.PageN.caption:=inttostr(CBYFinishShoeStock_Print.quickrep1.QRPrinter.pagecount);
  CBYFinishShoeStock_Print.Quickrep1.preview;
  CBYFinishShoeStock_Print.Free;
end;

procedure TStockShoeMonth.Button16Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP4.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  with Query4 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add(' Select Outsole_MonthAll.DDBH,DDZL.Pairs,isnull(Outsole_Month.Qty,0) as LastRem, isnull(RK.Qty,0) as RKQty, isnull(LL.Qty,0) as XHQty, Outsole_MonthAll.Qty ');
    SQL.Add('        ,DDZL.CQDH as CKBH,DDZL.Article,DDZL.DDZT, '''' as Memo from ( ');
    SQL.Add(' Select DDBH, sum(Qty) as Qty from ( ');
    SQL.Add(' Select DDBH,Qty,''1'' as SB ');
    SQL.Add('   from LIY_DD.dbo.OUTSOLE_Month Outsole_Month ');
    SQL.Add('   where Outsole_Month.KCYEAR='''+sYear+''' ');
    SQL.Add('  	and Outsole_Month.KCMONTH='''+sMonth+''' ');
    SQL.Add(' union all ');
    SQL.Add(' Select RK.DDBH,sum(RK.Qty) as Qty,''2'' as SB ');
    SQL.Add('   from LIY_DD.dbo.OUTSOLE_RK RK ');
    SQL.Add('   where Convert(varchar,RK.InDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' ');
    SQL.Add('   Group by RK.DDBH ');
    SQL.Add(' union all  ');
    SQL.Add('   Select LL.DDBH,-1*sum(LL.Qty) as Qty,''3'' as SB ');
    SQL.Add('   from LIY_DD.dbo.OUTSOLE_LL LL ');
    SQL.Add('   where Convert(varchar,LL.LLDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' ');
    SQL.Add('   Group by LL.DDBH) Outsole_Month  Group by DDBH) Outsole_MonthAll ');
    SQL.Add(' Left join ( ');
    SQL.Add('   Select DDBH,Qty,''1'' as SB ');
    SQL.Add('   from LIY_DD.dbo.OUTSOLE_Month Outsole_Month  ');
    SQL.Add('   where Outsole_Month.KCYEAR='''+sYear+''' ');
    SQL.Add('  	and Outsole_Month.KCMONTH='''+sMonth+''' ) Outsole_Month on Outsole_Month.DDBH=Outsole_MonthAll.DDBH ');
    SQL.Add(' Left join ( ');
    SQL.Add('   Select RK.DDBH,sum(RK.Qty) as Qty,''2'' as SB ');
    SQL.Add('  	from LIY_DD.dbo.OUTSOLE_RK RK  ');
    SQL.Add('  	where Convert(varchar,RK.InDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' ');
    SQL.Add('  	Group by RK.DDBH) RK on RK.DDBH=Outsole_MonthAll.DDBH  ');
    SQL.Add(' Left join ( ');
    SQL.Add('  	Select LL.DDBH,sum(LL.Qty) as Qty,''3'' as SB ');
    SQL.Add('  	from LIY_DD.dbo.OUTSOLE_LL LL ');
    SQL.Add('  	where Convert(varchar,LL.LLDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' ');
    SQL.Add('  	Group by LL.DDBH) LL on LL.DDBH=Outsole_MonthAll.DDBH  ');
    SQL.Add(' Left join LIY_DD.dbo.DDZL DDZL on DDZL.DDBH=Outsole_MonthAll.DDBH  ');
    SQL.Add(' where 1=1 and DDZL.CQDH=''VR3'' ');
    if Edit6.Text<>'' then
      SQL.Add(' and DDZL.DDBH like '''+Edit6.Text+'%'' ');
    if CheckBox6.Checked=true then
      SQL.Add(' and Outsole_MonthAll.Qty>0 ');
    if CheckBox7.Checked=true then
      SQL.Add(' and Outsole_MonthAll.Qty<0 ');
    SQL.Add(' order by Outsole_MonthAll.DDBH ');
    //FuncObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TStockShoeMonth.Button17Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query4);
  end else
  begin
    ExportDefaultExcel(Query4);
  end;
end;

procedure TStockShoeMonth.Button19Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP4.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query4.First;
    while not Query4.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update LIY_DD.dbo.OUTSOLE_Month set YN=1');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and DDBH ='''+Query4.fieldbyname('DDBH').AsString+''' ');

        sql.Add('update LIY_DD.dbo.OUTSOLE_RK set YN=5');
        sql.Add('where Convert(varchar,InDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' ');

        sql.Add('update LIY_DD.dbo.OUTSOLE_LL  set YN=5');
        sql.Add('where Convert(varchar,LLDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' ');

        execsql;
      end;
      Query4.Next;
    end;
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('insert into BDelRec ');
      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
      sql.add('values (''OUTSOLE_Month'',''Confirm'','''+sYear+''' +''/''+ '''+sMonth+''' ');
      sql.add(','''+main.Edit1.Text+''' ,'''+main.Edit1.Text+''' ,getdate())');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage('Already lock '+FormatDateTime('YYYY/MM',DTP4.Date)+' ');
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  query4.Active:=false;
  query4.Active:=true;
end;

procedure TStockShoeMonth.Button20Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP4.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  //
  try
    Query4.First;
    while not Query4.Eof do
    begin
      with TempQry do
      begin
        active:=false;
        sql.Clear;
        sql.Add('update LIY_DD.dbo.OUTSOLE_Month set YN=2');
        sql.Add('where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and DDBH ='''+Query4.fieldbyname('DDBH').AsString+''' ');

        sql.Add('update LIY_DD.dbo.OUTSOLE_RK set YN=1');
        sql.Add('where Convert(varchar,InDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' ');

        sql.Add('update LIY_DD.dbo.OUTSOLE_LL set YN=1');
        sql.Add('where Convert(varchar,LLDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' ');
        
        execsql;
      end;
      Query4.Next;
    end;
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.add('insert into BDelRec ');
      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
      sql.add('values (''OUTSOLE_Month'',''Reset'','''+sYear+''' +''/''+ '''+sMonth+''' ');
      sql.add(','''+main.Edit1.Text+''' ,'''+main.Edit1.Text+''' ,getdate())');
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    showmessage('Already unlock '+sYear+'/'+sMonth);
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
  query4.Active:=false;
  query4.Active:=true;
end;

procedure TStockShoeMonth.Button18Click(Sender: TObject);
begin
  OutsoleStockMonth_Print:=TOutsoleStockMonth_Print.Create(self);
  OutsoleStockMonth_Print.Quickrep1.prepare;
  OutsoleStockMonth_Print.PageN.caption:=inttostr(OutsoleStockMonth_Print.quickrep1.QRPrinter.pagecount);
  OutsoleStockMonth_Print.Quickrep1.preview;
  OutsoleStockMonth_Print.Free;
end;

procedure TStockShoeMonth.B_ImportP3Click(Sender: TObject);
var
  i,j,n,rate,Person,Make:integer;
  flag:boolean;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  YM,unitprice,amount,qty,RY: String;
  amount1,Material,qty1: double;
begin

    if opendialog1.Execute then begin
      MsExcel:=CreateOleObject('Excel.Application');
      MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog1.FileName);
      j:=6;
      rate := msExcel.WorkBooks[1].WorkSheets[1].Cells[1,2];
      YM := msExcel.WorkBooks[1].WorkSheets[1].Cells[2,1];
      YM := Copy(YM, Length(YM) - 7 + 1, 7);
      YM := copy(YM,4,4)+copy(YM,1,2);
      TempQry.Active := false;
      TempQry.SQL.Clear;
      TempQry.SQL.Add('Delete from Mass_Cost where YM = '''+YM+'''');
      TempQry.ExecSQL;

      flag:=true;
   // for i := 1 to 6 do
      while(flag=true)  do
       begin

         if msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6].Value = '' then
           j:=j+1
         else begin
             amount := trim(msExcel.Cells[j,23].Text);
             qty := trim(msExcel.Cells[j,22].Text);
             if (qty <> '') and (amount <> '-') and (qty <> '-') then begin
               RY := msExcel.Cells[j,6];
//               if ry = 'YL2305-0002B' then
//                 showmessage('YL2305-0002B');
               qty1 := msExcel.Cells[j,22];
               amount1 := msExcel.Cells[j,23];
               Material := msExcel.Cells[j,24];
               Person := msExcel.Cells[j,25];
               Make := msExcel.Cells[j,26];
               unitprice := FormatFloat('#0.00', (amount1 / rate / qty1) )  ;
               TempQry.Active := false;
               TempQry.SQL.Clear;
               TempQry.SQL.Add('Insert into Mass_Cost(YM,RY,QTY,Material,Person,Make,Amount,UnitPrice)');
               TempQry.SQL.Add('Values ('''+YM+''','''+ RY +''','+ floattostr(qty1) +','+ floattostr(Material) +','+ inttostr(Person) +','+ inttostr(Make) +','+ floattostr(amount1) +','+ unitprice +')');
               TempQry.ExecSQL;
             end;                                                          
           j:=j+1;
         end;

         if (trim(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5].Value) = 'ADIDAS') or (Trim(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,30].Value) = 'B') then
           flag:=false;
       end;
       MsExcelWorkBook.Close;
       MsExcel.Quit;

    end;
    showmessage('Success!');
end;

procedure TStockShoeMonth.Query1AfterOpen(DataSet: TDataSet);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP1.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select top 1.* From YWCPMonth ');
    sql.Add(' Where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and YN=1 ');
    active:=true;
  end;
  if TempQry.RecordCount >0 then
  begin
     button4.Enabled:=false;
     button5.Enabled:=true;
  end else
  begin
    button4.Enabled:=true;
    button5.Enabled:=false;
  end;
end;

procedure TStockShoeMonth.Query2AfterOpen(DataSet: TDataSet);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP2.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select top 1.* From ShoetestMonth ');
    sql.Add(' Where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and CKBH<>''CBY'' and YN=1 ');
    active:=true;
  end;
  if TempQry.RecordCount >0 then
  begin
     button9.Enabled:=false;
     button10.Enabled:=true;
  end else
  begin
    button9.Enabled:=true;
    button10.Enabled:=false;
  end;
end;

procedure TStockShoeMonth.Query3AfterOpen(DataSet: TDataSet);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP3.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select top 1.* From ShoetestMonth ');
    sql.Add(' Where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and CKBH=''CBY'' and YN=1 ');
    active:=true;
  end;
  if TempQry.RecordCount >0 then
  begin
     button14.Enabled:=false;
     button15.Enabled:=true;
  end else
  begin
    button14.Enabled:=true;
    button15.Enabled:=false;
  end;
end;

procedure TStockShoeMonth.Query4AfterOpen(DataSet: TDataSet);
var iYear,iMonth,iDay:word;
    sYear,sMonth:string;
begin
  decodedate(DTP4.Date,iYear,iMonth,iDay);
  incAMonth(iYear,iMonth,iDay,-1);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select top 1 DDBH From LIY_DD.dbo.OUTSOLE_Month Outsole_Month ');
    sql.Add(' Where KCYEAR ='''+sYear+''' and KCMONTH ='''+sMonth+''' and YN=1 ');
    sql.Add(' Union all ');
    sql.Add(' Select top 1 DDBH From LIY_DD.dbo.OUTSOLE_RK RK ');
    sql.Add(' Where Convert(varchar,RK.InDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' and YN=5 ');
    sql.Add(' Union all ');
    sql.Add(' Select top 1 DDBH From LIY_DD.dbo.OUTSOLE_LL LL ');
    sql.Add(' Where Convert(varchar,LL.LLDate, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(DTP4.date))+''' and '''+Formatdatetime('yyyy/MM/dd',DTP4.date)+''' and YN=5 ');
    active:=true;
  end;
  if TempQry.RecordCount >0 then
  begin
     button19.Enabled:=false;
     button20.Enabled:=true;
  end else
  begin
    button19.Enabled:=true;
    button20.Enabled:=false;
  end;
end;

procedure TStockShoeMonth.btn_QueryClick(Sender: TObject);
begin
  With Qry_MonthStock do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SELECT KCYEAR,KCMONTH,DDBH,CKBH,RemQty,RemQty01T,RemQty02T,RemQty03T,RemQty04T,RemQty05T,RemQty06T,RemQty07T   ');
    SQL.Add('FROM YWCPMonth_Stock  ');
    SQL.Add('WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+'''  ');
    if edt_RY1.Text<>'' then
      SQL.Add('    AND DDBH LIKE '''+edt_RY1.Text+'%'' ');
    active:=true;
  end;
end;

procedure TStockShoeMonth.btn_MonthlyClick(Sender: TObject);
var STD:String;
begin
   STD:=cbx_Year.Text+'/'+cbx_Month.Text+'/01';
  //
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM YWCPMonth');
    sql.Add('WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+''' ');
    active:=true;
    if RecordCount=0 then
    begin
      showmessage('Vui long lien he sinh quan click Monthly '+cbx_Year.Text+' / '+cbx_Month.Text+' ');
      abort;
    end;
  end;

  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM YWCPMonth_Stock');
    sql.Add('WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+''' ');
    active:=true;
    if RecordCount>0 then
    begin
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with TempQry do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE YWCPMonth_Stock');
          sql.Add('WHERE KCYEAR='''+cbx_Year.Text+''' AND KCMONTH='''+cbx_Month.Text+''' ');
          ExecSQL;
        end;
      end;
    end;
  end;
  //
  With TempQry do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  if object_id(''tempdb..#EntryStockRY'') is not null  ');
    SQL.Add('  begin drop table #EntryStockRY end  ');
    SQL.Add('  select '''+cbx_Year.Text+''' KCYEAR,'''+cbx_Month.Text+''' KCMONTH,KC.DDBH,CKBH,isnull(RKQTY,0)RKQTY,isnull(QTY,0) RemQty  ');
    SQL.Add('        ,DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+''' ) [Month] into #EntryStockRY  ');
    SQL.Add('  from YWCPMONTH KC  ');
    SQL.Add('  LEFT JOIN (SELECT YEAR(Indate)IMYEAR,MONTH(Indate) IMMONTH,DDBH,SUM(QTY)RKQTY ');
    SQL.Add('  		        FROM (Select * from YWCP union all select * from YWCPOld) YWCP   ');
    SQL.Add('  		        GROUP BY YEAR(Indate),MONTH(Indate),DDBH)DD ON DD.DDBH=KC.DDBH AND DD.IMYEAR=KC.KCYEAR AND DD.IMMONTH=KC.KCMONTH  ');
    SQL.Add('  where DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''  )<13  and DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''  )>-1   ');
    SQL.Add('  --==================================================  ');
    SQL.Add('  Create INDEX #EntryStockRY_index on #EntryStockRY(DDBH,CKBH,[Month])  ');
    SQL.Add('  Insert into YWCPMonth_Stock (KCYEAR, KCMONTH, DDBH, CKBH, RemQty, RemQty01T, RemQty02T, RemQty03T, RemQty04T, RemQty05T, RemQty06T, RemQty07T, USERID, USERDATE, YN)   ');
    SQL.Add('  select d.KCYear,d.KCMonth,d.DDBH,d.CKBH,isnull(d.RemQty,0) as RemQty  ');
    SQL.Add('          ,isnull(Sum(d.c0),0) as RemQty01T -- [<30]   ');
    SQL.Add('          ,isnull(Sum(d.c1),0) as RemQty02T --[31~60]  ');
    SQL.Add('          ,isnull(Sum(d.c2),0) as RemQty03T --[61~90]  ');
    SQL.Add('          ,isnull(Sum(d.c3),0) as RemQty04T --[91~120]  ');
    SQL.Add('          ,isnull(Sum(d.c4),0)+isnull(Sum(d.c5),0) as RemQty05T --[121~180]  ');
    SQL.Add('          ,isnull(Sum(d.c6),0)+isnull(Sum(d.c7),0)+isnull(Sum(d.c8),0)+isnull(Sum(d.c9),0)+isnull(Sum(d.c10),0)+isnull(Sum(d.c11),0) as RemQty06T --[181~359]  ');
    SQL.Add('          ,isnull(Sum(d.c12),0) as RemQty07T--[>360]  ');
    SQL.Add('          ,'''+main.edit1.text+''' USERID,GetDate() UserDate,''1'' YN   ');
    SQL.Add('  from (  ');
    SQL.Add('  	select *,  ');
    SQL.Add('  	case when c.[Month]=0 then c.Qty end c0,   ');
    SQL.Add('  	case when c.[Month]=1 then c.Qty end c1,  ');
    SQL.Add('  	case when c.[Month]=2 then c.Qty end c2,  ');
    SQL.Add('  	case when c.[Month]=3 then c.Qty end c3,  ');
    SQL.Add('  	case when c.[Month]=4 then c.Qty end c4,  ');
    SQL.Add('  	case when c.[Month]=5 then c.Qty end c5,  ');
    SQL.Add('  	case when c.[Month]=6 then c.Qty end c6,  ');
    SQL.Add('  	case when c.[Month]=7 then c.Qty end c7,  ');
    SQL.Add('  	case when c.[Month]=8 then c.Qty end c8,  ');
    SQL.Add('  	case when c.[Month]=9 then c.Qty end c9,  ');
    SQL.Add('  	case when c.[Month]=10 then c.Qty end c10,  ');
    SQL.Add('  	case when c.[Month]=11 then c.Qty end c11,  ');
    SQL.Add('  	case when c.[Month]=12 then c.Qty end c12  ');
    SQL.Add('  	from (  ');
    SQL.Add('  	select b.*  ');
    SQL.Add('  	,case when b.month=b1.MaxMonth then (case when b.RemQty-b.SumRKqty>0 then   ');
    SQL.Add('  					   b.RemQty-b.SumRKqty else 0 end)   ');
    SQL.Add('  				   else (case when b.RemQty>(b.RKQty+b.SumRKqty) then   ');
    SQL.Add('  						       b.RKQty   ');
    SQL.Add('  					      else   ');
    SQL.Add('  					      	(case when b.RemQty-b.SumRKqty>0  then   ');
    SQL.Add('  							      b.RemQty-b.SumRKqty else 0 end)    ');
    SQL.Add('  						 end )   ');
    SQL.Add('  				  end Qty   ');
    SQL.Add('  	from (  ');
    SQL.Add('  	select a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month],sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.[Month]=0)then a1.RemQty end) RemQty  ');
    SQL.Add('  	from #EntryStockRY a1  ');
    SQL.Add('  	left join #EntryStockRY a2 on a2.DDBH=a1.DDBH and a2.CKBH=a1.CKBH   ');
    SQL.Add('  	where a2.[Month]>a1.[Month]  ');
    SQL.Add('  	group by a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month],a2.RKQTY  ');
    SQL.Add('  	union all  ');
    SQL.Add('  	select KCYEAR,KCMonth,DDBH,CKBH,[Month],0,RKQty,RemQty from #EntryStockRY  ');
    SQL.Add('  	where [Month]=0 ) b   ');
    SQL.Add('  	left join (  ');
    SQL.Add('  	  select KCYEAR,KCMONTH,DDBH,CKBH,MAX([Month]) as MaxMonth   ');
    SQL.Add('  	  from (  ');
    SQL.Add('  		    select a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month],sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.month=0)then a1.RemQty end) RemQty  ');
    SQL.Add('  		    from #EntryStockRY a1  ');
    SQL.Add('  		    left join #EntryStockRY a2 on a2.DDBH=a1.DDBH and a2.CKBH=a1.CKBH   ');
    SQL.Add('  		    where a2.[Month]>a1.[Month]  ');
    SQL.Add('  		    group by a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month],a2.RKQTY  ');
    SQL.Add('  		    union all  ');
    SQL.Add('  		    select KCYEAR,KCMonth,DDBH,CKBH,[Month],0,RKQty,RemQty from #EntryStockRY  ');
    SQL.Add('  		    where  [Month]=0 	)  Alldata  ');
    SQL.Add('  	Group by KCYEAR,KCMONTH,DDBH,CKBH  ');
    SQL.Add('  	) b1 on b1.KCYEAR=b.KCYEAR and b1.KCMONTH=b.KCMONTH and b1.DDBH=b.DDBH and b1.CKBH=b.CKBH   ');
    SQL.Add('   ) c  ) d  ');
    SQL.Add('  where d.RemQty>0  ');
    SQL.Add('  group by d.KCYear,d.KCMonth,d.DDBH,d.CKBH,d.RemQty  ');
    //funcobj.WriteErrorLog(sql.text);
    ExecSQL;
  end; 
  showmessage('Finish');
  btn_Query.Click;
end;

procedure TStockShoeMonth.btn_ExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Qry_MonthStock.Active then
  begin
    if Qry_MonthStock.recordcount=0 then
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
    eclApp.ActiveSheet.Rows[1].font.Bold:=true;
    for i := 0 to DBG_MonthStock.FieldCount-1 do
    begin
      eclApp.Cells(1, i + 2) :=DBG_MonthStock.Columns[i].Title.Caption
    end;

    Qry_MonthStock.First;
    j:=2;
    while   not  Qry_MonthStock.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=0   to   Qry_MonthStock.fieldcount-1  do
      begin
        eclApp.Cells(j,i+2):=Qry_MonthStock.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
      end;
      Qry_MonthStock.Next;
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

procedure TStockShoeMonth.btn_SampleClick(Sender: TObject);
begin
  With Qry_MonthStock_Sample do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SELECT KCYEAR,KCMONTH,YPZL.YPDH as DDBH,CKBH,RemQty,RemQty01T,RemQty02T,RemQty03T,RemQty04T,RemQty05T,RemQty06T,RemQty07T   ');
    SQL.Add('FROM ShoeTestMonth_Stock ');
    SQL.Add('Left join ShoeTest on ShoeTest.TestNo=ShoeTestMonth_Stock.TestNo');
    SQL.Add('Left join YPZL on YPZL.YPDH=ShoeTest.YPDH');
    SQL.Add('WHERE KCYEAR='''+cbx_Year_Sample.Text+''' AND KCMONTH='''+cbx_Month_Sample.Text+''' and CKBH<>''CBY''  ');
    if edit1.Text<>'' then
      SQL.Add('    AND YPZL.YPDH LIKE '''+edit1.Text+'%'' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TStockShoeMonth.Button22Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Qry_MonthStock_Sample.Active then
  begin
    if Qry_MonthStock_Sample.recordcount=0 then
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
    eclApp.ActiveSheet.Rows[1].font.Bold:=true;
    for i := 0 to DBG_MonthStock_Sample.FieldCount-1 do
    begin
      eclApp.Cells(1, i + 2) :=DBG_MonthStock_Sample.Columns[i].Title.Caption
    end;

    Qry_MonthStock_Sample.First;
    j:=2;
    while   not  Qry_MonthStock_Sample.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=0   to   Qry_MonthStock_Sample.fieldcount-1  do
      begin
        eclApp.Cells(j,i+2):=Qry_MonthStock_Sample.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
      end;
      Qry_MonthStock_Sample.Next;
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

procedure TStockShoeMonth.Button23Click(Sender: TObject);
var STD:String;
begin
  STD:=cbx_Year_Sample.Text+'/'+cbx_Month_Sample.Text+'/01';
  //
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM ShoeTestMonth');
    sql.Add('WHERE KCYEAR='''+cbx_Year_Sample.Text+''' AND KCMONTH='''+cbx_Month_Sample.Text+''' and CKBH<>''CBY'' ');
    active:=true;
    if RecordCount=0 then
    begin
      showmessage('Vui long lien he sinh quan click Monthly '+cbx_Year_Sample.Text+' / '+cbx_Month_Sample.Text+' ');
      abort;
    end;
  end;

  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM ShoeTestMonth_Stock');
    sql.Add('WHERE KCYEAR='''+cbx_Year_Sample.Text+''' AND KCMONTH='''+cbx_Month_Sample.Text+''' and CKBH<>''CBY'' ');
    active:=true;
    if RecordCount>0 then
    begin
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with TempQry do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE ShoeTestMonth_Stock');
          sql.Add('WHERE KCYEAR='''+cbx_Year_Sample.Text+''' AND KCMONTH='''+cbx_Month_Sample.Text+'''  and CKBH<>''CBY'' ');
          ExecSQL;
        end;
      end;
    end;
  end;
  //
  With TempQry do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  if object_id(''tempdb..#EntryStockRY'') is not null  ');
    SQL.Add('  begin drop table #EntryStockRY end  ');
    SQL.Add('  select '''+cbx_Year_Sample.Text+''' KCYEAR,'''+cbx_Month_Sample.Text+''' KCMONTH,KC.TestNo,CKBH,isnull(RKQTY,0)RKQTY,isnull(QTY,0) RemQty  ');
    SQL.Add('        ,DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+''' ) [Month] into #EntryStockRY  ');
    SQL.Add('  from ShoeTestMonth KC  ');
    SQL.Add('  LEFT JOIN ( SELECT YEAR(shoetest.complete) IMYEAR,MONTH(shoetest.complete) IMMONTH,shoetest.TestNo,SUM(QTY)RKQTY ');
    SQL.Add('       			 From shoetest ');
    SQL.Add('       			 Left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno ');
    SQL.Add('       			 WHERE SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('   		       GROUP BY YEAR(shoetest.complete),MONTH(shoetest.complete),shoetest.TestNo)DD ON DD.TestNo=KC.TestNo AND DD.IMYEAR=KC.KCYEAR AND DD.IMMONTH=KC.KCMONTH  ');
    SQL.Add('  where DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''  )<13  and DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''  )>-1   ');
    SQL.Add('  and CKBH<>''CBY'' ');
    SQL.Add('  --==================================================  ');
    SQL.Add('  Create INDEX #EntryStockRY_index on #EntryStockRY(TestNo,CKBH,[Month])  ');
    SQL.Add('  Insert into ShoeTestMonth_Stock (KCYEAR, KCMONTH, TestNo, CKBH, RemQty, RemQty01T, RemQty02T, RemQty03T, RemQty04T, RemQty05T, RemQty06T, RemQty07T, USERID, USERDATE, YN)   ');
    SQL.Add('  select d.KCYear,d.KCMonth,d.TestNo,d.CKBH,isnull(d.RemQty,0) as RemQty  ');
    SQL.Add('          ,isnull(Sum(d.c0),0) as RemQty01T -- [<30]   ');
    SQL.Add('          ,isnull(Sum(d.c1),0) as RemQty02T --[31~60]  ');
    SQL.Add('          ,isnull(Sum(d.c2),0) as RemQty03T --[61~90]  ');
    SQL.Add('          ,isnull(Sum(d.c3),0) as RemQty04T --[91~120]  ');
    SQL.Add('          ,isnull(Sum(d.c4),0)+isnull(Sum(d.c5),0) as RemQty05T --[121~180]  ');
    SQL.Add('          ,isnull(Sum(d.c6),0)+isnull(Sum(d.c7),0)+isnull(Sum(d.c8),0)+isnull(Sum(d.c9),0)+isnull(Sum(d.c10),0)+isnull(Sum(d.c11),0) as RemQty06T --[181~359]  ');
    SQL.Add('          ,isnull(Sum(d.c12),0) as RemQty07T--[>360]  ');
    SQL.Add('          ,'''+main.edit1.text+''' USERID,GetDate() UserDate,''1'' YN   ');
    SQL.Add('  from (  ');
    SQL.Add('  	select *,  ');
    SQL.Add('  	case when c.[Month]=0 then c.Qty end c0,   ');
    SQL.Add('  	case when c.[Month]=1 then c.Qty end c1,  ');
    SQL.Add('  	case when c.[Month]=2 then c.Qty end c2,  ');
    SQL.Add('  	case when c.[Month]=3 then c.Qty end c3,  ');
    SQL.Add('  	case when c.[Month]=4 then c.Qty end c4,  ');
    SQL.Add('  	case when c.[Month]=5 then c.Qty end c5,  ');
    SQL.Add('  	case when c.[Month]=6 then c.Qty end c6,  ');
    SQL.Add('  	case when c.[Month]=7 then c.Qty end c7,  ');
    SQL.Add('  	case when c.[Month]=8 then c.Qty end c8,  ');
    SQL.Add('  	case when c.[Month]=9 then c.Qty end c9,  ');
    SQL.Add('  	case when c.[Month]=10 then c.Qty end c10,  ');
    SQL.Add('  	case when c.[Month]=11 then c.Qty end c11,  ');
    SQL.Add('  	case when c.[Month]=12 then c.Qty end c12  ');
    SQL.Add('  	from (  ');
    SQL.Add('  	select b.*  ');
    SQL.Add('  	,case when b.month=b1.MaxMonth then (case when b.RemQty-b.SumRKqty>0 then   ');
    SQL.Add('  					   b.RemQty-b.SumRKqty else 0 end)   ');
    SQL.Add('  				   else (case when b.RemQty>(b.RKQty+b.SumRKqty) then   ');
    SQL.Add('  						       b.RKQty   ');
    SQL.Add('  					      else   ');
    SQL.Add('  					      	(case when b.RemQty-b.SumRKqty>0  then   ');
    SQL.Add('  							      b.RemQty-b.SumRKqty else 0 end)    ');
    SQL.Add('  						 end )   ');
    SQL.Add('  				  end Qty   ');
    SQL.Add('  	from (  ');
    SQL.Add('  	select a1.KCYEAR,a1.KCMonth,a1.TestNo,a1.CKBH,a2.[Month],sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.[Month]=0)then a1.RemQty end) RemQty  ');
    SQL.Add('  	from #EntryStockRY a1  ');
    SQL.Add('  	left join #EntryStockRY a2 on a2.TestNo=a1.TestNo and a2.CKBH=a1.CKBH   ');
    SQL.Add('  	where a2.[Month]>a1.[Month]  ');
    SQL.Add('  	group by a1.KCYEAR,a1.KCMonth,a1.TestNo,a1.CKBH,a2.[Month],a2.RKQTY  ');
    SQL.Add('  	union all  ');
    SQL.Add('  	select KCYEAR,KCMonth,TestNo,CKBH,[Month],0,RKQty,RemQty from #EntryStockRY  ');
    SQL.Add('  	where [Month]=0 ) b   ');
    SQL.Add('  	left join (  ');
    SQL.Add('  	  select KCYEAR,KCMONTH,TestNo,CKBH,MAX([Month]) as MaxMonth   ');
    SQL.Add('  	  from (  ');
    SQL.Add('  		    select a1.KCYEAR,a1.KCMonth,a1.TestNo,a1.CKBH,a2.[Month],sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.month=0)then a1.RemQty end) RemQty  ');
    SQL.Add('  		    from #EntryStockRY a1  ');
    SQL.Add('  		    left join #EntryStockRY a2 on a2.TestNo=a1.TestNo and a2.CKBH=a1.CKBH   ');
    SQL.Add('  		    where a2.[Month]>a1.[Month]  ');
    SQL.Add('  		    group by a1.KCYEAR,a1.KCMonth,a1.TestNo,a1.CKBH,a2.[Month],a2.RKQTY  ');
    SQL.Add('  		    union all  ');
    SQL.Add('  		    select KCYEAR,KCMonth,TestNo,CKBH,[Month],0,RKQty,RemQty from #EntryStockRY  ');
    SQL.Add('  		    where  [Month]=0 	)  Alldata  ');
    SQL.Add('  	Group by KCYEAR,KCMONTH,TestNo,CKBH  ');
    SQL.Add('  	) b1 on b1.KCYEAR=b.KCYEAR and b1.KCMONTH=b.KCMONTH and b1.TestNo=b.TestNo and b1.CKBH=b.CKBH   ');
    SQL.Add('   ) c  ) d  ');
    SQL.Add('  where d.RemQty>0  ');
    SQL.Add('  group by d.KCYear,d.KCMonth,d.TestNo,d.CKBH,d.RemQty  ');
    //funcobj.WriteErrorLog(sql.text);
    ExecSQL;
  end; 
  showmessage('Finish');
  btn_Sample.Click;
end;

procedure TStockShoeMonth.btn_CBYClick(Sender: TObject);
begin
  With Qry_MonthStock_CBY do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select ShoeTestMonth_stock.KCYEAR,ShoeTestMonth_stock.KCMONTH,CBY_Orders.MasterOrder as DDBH,ShoeTestMonth_stock.CKBH ');
    sql.Add('		    ,sum(RemQty) as RemQty,Sum(RemQty01T) as RemQty01T,Sum(RemQty02T) as RemQty02T,Sum(RemQty03T) as RemQty03T ');
    sql.Add('   		,Sum(RemQty04T) as RemQty04T,Sum(RemQty05T) as RemQty05T,Sum(RemQty06T) as RemQty06T,Sum(RemQty07T) as RemQty07T ');
    sql.Add('From ShoeTestMonth_stock left join CBY_Orders  ');
    sql.Add('on ShoeTestMonth_stock.Testno=cby_orders.workOrderId ');
    sql.Add('WHERE KCYEAR='''+cbx_Year_CBY.Text+''' AND KCMONTH='''+cbx_Month_CBY.Text+''' and ckbh=''CBY'' ');
    if edit7.Text<>'' then
      SQL.Add('    AND CBY_Orders.MasterOrder LIKE '''+edit7.Text+'%'' ');
    sql.Add('Group by ShoeTestMonth_stock.kcyear,ShoeTestMonth_stock.kcmonth,CBY_Orders.MasterOrder,ShoeTestMonth_stock.CKBH ');
    active:=true;
  end;
end;

procedure TStockShoeMonth.Button24Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Qry_MonthStock_CBY.Active then
  begin
    if Qry_MonthStock_CBY.recordcount=0 then
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
    eclApp.ActiveSheet.Rows[1].font.Bold:=true;
    for i := 0 to DBG_MonthStock_CBY.FieldCount-1 do
    begin
      eclApp.Cells(1, i + 2) :=DBG_MonthStock_CBY.Columns[i].Title.Caption
    end;

    Qry_MonthStock_CBY.First;
    j:=2;
    while   not  Qry_MonthStock_CBY.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=0   to   Qry_MonthStock_CBY.fieldcount-1  do
      begin
        eclApp.Cells(j,i+2):=Qry_MonthStock_CBY.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
      end;
      Qry_MonthStock_CBY.Next;
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

procedure TStockShoeMonth.Button25Click(Sender: TObject);
var STD:String;
begin
  STD:=cbx_Year_CBY.Text+'/'+cbx_Month_CBY.Text+'/01';
  //
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM ShoeTestMonth');
    sql.Add('WHERE KCYEAR='''+cbx_Year_CBY.Text+''' AND KCMONTH='''+cbx_Month_CBY.Text+''' and CKBH=''CBY'' ');
    active:=true;
    if RecordCount=0 then
    begin
      showmessage('Vui long lien he sinh quan click Monthly '+cbx_Year_CBY.Text+' / '+cbx_Month_CBY.Text+' ');
      abort;
    end;
  end;

  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM ShoeTestMonth_Stock');
    sql.Add('WHERE KCYEAR='''+cbx_Year_CBY.Text+''' AND KCMONTH='''+cbx_Month_CBY.Text+''' and CKBH=''CBY'' ');
    active:=true;
    if RecordCount>0 then
    begin
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with TempQry do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE ShoeTestMonth_Stock');
          sql.Add('WHERE KCYEAR='''+cbx_Year_CBY.Text+''' AND KCMONTH='''+cbx_Month_CBY.Text+'''  and CKBH=''CBY'' ');
          ExecSQL;
        end;
      end;
    end;
  end;
  //
  With TempQry do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  if object_id(''tempdb..#EntryStockRY'') is not null  ');
    SQL.Add('  begin drop table #EntryStockRY end  ');
    SQL.Add('  select '''+cbx_Year_CBY.Text+''' KCYEAR,'''+cbx_Month_CBY.Text+''' KCMONTH,KC.TestNo,CKBH,isnull(RKQTY,0)RKQTY,isnull(QTY,0) RemQty  ');
    SQL.Add('        ,DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+''' ) [Month] into #EntryStockRY  ');
    SQL.Add('  from ShoeTestMonth KC  ');
    SQL.Add('  LEFT JOIN ( SELECT YEAR(CBY_Orders.StockDate) IMYEAR,MONTH(CBY_Orders.StockDate) IMMONTH,CBY_Orders.workOrderId as TestNo,SUM(CBY_Orders.total) RKQTY ');
    SQL.Add('        			 From CBY_Orders  ');
    SQL.Add('       			 WHERE CBY_Orders.StockDate is not null  ');
    SQL.Add('   		       GROUP BY YEAR(CBY_Orders.StockDate),MONTH(CBY_Orders.StockDate),CBY_Orders.workOrderId)DD ON DD.TestNo=KC.TestNo AND DD.IMYEAR=KC.KCYEAR AND DD.IMMONTH=KC.KCMONTH ');
    SQL.Add('  where DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''  )<13  and DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''  )>-1   ');
    SQL.Add('  and CKBH=''CBY'' ');
    SQL.Add('  --==================================================  ');
    SQL.Add('  Create INDEX #EntryStockRY_index on #EntryStockRY(TestNo,CKBH,[Month])  ');
    SQL.Add('  Insert into ShoeTestMonth_Stock (KCYEAR, KCMONTH, TestNo, CKBH, RemQty, RemQty01T, RemQty02T, RemQty03T, RemQty04T, RemQty05T, RemQty06T, RemQty07T, USERID, USERDATE, YN)   ');
    SQL.Add('  select d.KCYear,d.KCMonth,d.TestNo,d.CKBH,isnull(d.RemQty,0) as RemQty  ');
    SQL.Add('          ,isnull(Sum(d.c0),0) as RemQty01T -- [<30]   ');
    SQL.Add('          ,isnull(Sum(d.c1),0) as RemQty02T --[31~60]  ');
    SQL.Add('          ,isnull(Sum(d.c2),0) as RemQty03T --[61~90]  ');
    SQL.Add('          ,isnull(Sum(d.c3),0) as RemQty04T --[91~120]  ');
    SQL.Add('          ,isnull(Sum(d.c4),0)+isnull(Sum(d.c5),0) as RemQty05T --[121~180]  ');
    SQL.Add('          ,isnull(Sum(d.c6),0)+isnull(Sum(d.c7),0)+isnull(Sum(d.c8),0)+isnull(Sum(d.c9),0)+isnull(Sum(d.c10),0)+isnull(Sum(d.c11),0) as RemQty06T --[181~359]  ');
    SQL.Add('          ,isnull(Sum(d.c12),0) as RemQty07T--[>360]  ');
    SQL.Add('          ,'''+main.edit1.text+''' USERID,GetDate() UserDate,''1'' YN   ');
    SQL.Add('  from (  ');
    SQL.Add('  	select *,  ');
    SQL.Add('  	case when c.[Month]=0 then c.Qty end c0,   ');
    SQL.Add('  	case when c.[Month]=1 then c.Qty end c1,  ');
    SQL.Add('  	case when c.[Month]=2 then c.Qty end c2,  ');
    SQL.Add('  	case when c.[Month]=3 then c.Qty end c3,  ');
    SQL.Add('  	case when c.[Month]=4 then c.Qty end c4,  ');
    SQL.Add('  	case when c.[Month]=5 then c.Qty end c5,  ');
    SQL.Add('  	case when c.[Month]=6 then c.Qty end c6,  ');
    SQL.Add('  	case when c.[Month]=7 then c.Qty end c7,  ');
    SQL.Add('  	case when c.[Month]=8 then c.Qty end c8,  ');
    SQL.Add('  	case when c.[Month]=9 then c.Qty end c9,  ');
    SQL.Add('  	case when c.[Month]=10 then c.Qty end c10,  ');
    SQL.Add('  	case when c.[Month]=11 then c.Qty end c11,  ');
    SQL.Add('  	case when c.[Month]=12 then c.Qty end c12  ');
    SQL.Add('  	from (  ');
    SQL.Add('  	select b.*  ');
    SQL.Add('  	,case when b.month=b1.MaxMonth then (case when b.RemQty-b.SumRKqty>0 then   ');
    SQL.Add('  					   b.RemQty-b.SumRKqty else 0 end)   ');
    SQL.Add('  				   else (case when b.RemQty>(b.RKQty+b.SumRKqty) then   ');
    SQL.Add('  						       b.RKQty   ');
    SQL.Add('  					      else   ');
    SQL.Add('  					      	(case when b.RemQty-b.SumRKqty>0  then   ');
    SQL.Add('  							      b.RemQty-b.SumRKqty else 0 end)    ');
    SQL.Add('  						 end )   ');
    SQL.Add('  				  end Qty   ');
    SQL.Add('  	from (  ');
    SQL.Add('  	select a1.KCYEAR,a1.KCMonth,a1.TestNo,a1.CKBH,a2.[Month],sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.[Month]=0)then a1.RemQty end) RemQty  ');
    SQL.Add('  	from #EntryStockRY a1  ');
    SQL.Add('  	left join #EntryStockRY a2 on a2.TestNo=a1.TestNo and a2.CKBH=a1.CKBH   ');
    SQL.Add('  	where a2.[Month]>a1.[Month]  ');
    SQL.Add('  	group by a1.KCYEAR,a1.KCMonth,a1.TestNo,a1.CKBH,a2.[Month],a2.RKQTY  ');
    SQL.Add('  	union all  ');
    SQL.Add('  	select KCYEAR,KCMonth,TestNo,CKBH,[Month],0,RKQty,RemQty from #EntryStockRY  ');
    SQL.Add('  	where [Month]=0 ) b   ');
    SQL.Add('  	left join (  ');
    SQL.Add('  	  select KCYEAR,KCMONTH,TestNo,CKBH,MAX([Month]) as MaxMonth   ');
    SQL.Add('  	  from (  ');
    SQL.Add('  		    select a1.KCYEAR,a1.KCMonth,a1.TestNo,a1.CKBH,a2.[Month],sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.month=0)then a1.RemQty end) RemQty  ');
    SQL.Add('  		    from #EntryStockRY a1  ');
    SQL.Add('  		    left join #EntryStockRY a2 on a2.TestNo=a1.TestNo and a2.CKBH=a1.CKBH   ');
    SQL.Add('  		    where a2.[Month]>a1.[Month]  ');
    SQL.Add('  		    group by a1.KCYEAR,a1.KCMonth,a1.TestNo,a1.CKBH,a2.[Month],a2.RKQTY  ');
    SQL.Add('  		    union all  ');
    SQL.Add('  		    select KCYEAR,KCMonth,TestNo,CKBH,[Month],0,RKQty,RemQty from #EntryStockRY  ');
    SQL.Add('  		    where  [Month]=0 	)  Alldata  ');
    SQL.Add('  	Group by KCYEAR,KCMONTH,TestNo,CKBH  ');
    SQL.Add('  	) b1 on b1.KCYEAR=b.KCYEAR and b1.KCMONTH=b.KCMONTH and b1.TestNo=b.TestNo and b1.CKBH=b.CKBH   ');
    SQL.Add('   ) c  ) d  ');
    SQL.Add('  where d.RemQty>0  ');
    SQL.Add('  group by d.KCYear,d.KCMonth,d.TestNo,d.CKBH,d.RemQty  ');
    //funcobj.WriteErrorLog(sql.text);
    ExecSQL;
  end; 
  showmessage('Finish');
  btn_Sample.Click;
end;

procedure TStockShoeMonth.btn_OutClick(Sender: TObject);
begin
  With Qry_MonthStock_Out do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SELECT KCYEAR,KCMONTH,DDBH,CKBH,RemQty,RemQty01T,RemQty02T,RemQty03T,RemQty04T,RemQty05T,RemQty06T,RemQty07T   ');
    SQL.Add('FROM LIY_DD.dbo.OUTSOLE_Month_Stock  ');
    SQL.Add('WHERE KCYEAR='''+cbx_Year_Out.Text+''' AND KCMONTH='''+cbx_Month_Out.Text+'''  ');
    if edit8.Text<>'' then
      SQL.Add('    AND DDBH LIKE '''+edit8.Text+'%'' ');
    active:=true;
  end;
end;

procedure TStockShoeMonth.Button27Click(Sender: TObject);
var STD:String;
begin
   STD:=cbx_Year_Out.Text+'/'+cbx_Month_Out.Text+'/01';
  //
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM LIY_DD.dbo.OUTSOLE_Month');
    sql.Add('WHERE KCYEAR='''+cbx_Year_Out.Text+''' AND KCMONTH='''+cbx_Month_Out.Text+''' ');
    active:=true;
    if RecordCount=0 then
    begin
      showmessage('Vui long lien he sinh quan click Monthly '+cbx_Year_Out.Text+' / '+cbx_Month_Out.Text+' ');
      abort;
    end;
  end;

  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM LIY_DD.dbo.OUTSOLE_Month_Stock ');
    sql.Add('WHERE KCYEAR='''+cbx_Year_Out.Text+''' AND KCMONTH='''+cbx_Month_Out.Text+''' ');
    active:=true;
    if RecordCount>0 then
    begin
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with TempQry do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE LIY_DD.dbo.OUTSOLE_Month_Stock ');
          sql.Add('WHERE KCYEAR='''+cbx_Year_Out.Text+''' AND KCMONTH='''+cbx_Month_Out.Text+''' ');
          ExecSQL;
        end;
      end;
    end;
  end;
  //
  With TempQry do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  if object_id(''tempdb..#EntryStockRY'') is not null  ');
    SQL.Add('  begin drop table #EntryStockRY end  ');
    SQL.Add('  select '''+cbx_Year_out.Text+''' KCYEAR,'''+cbx_Month_Out.Text+''' KCMONTH,KC.DDBH,CKBH,isnull(RKQTY,0)RKQTY,isnull(QTY,0) RemQty  ');
    SQL.Add('        ,DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+''' ) [Month] into #EntryStockRY  ');
    SQL.Add('  from LIY_DD.dbo.OUTSOLE_Month KC  ');
    SQL.Add('  LEFT JOIN (SELECT YEAR(Indate)IMYEAR,MONTH(Indate) IMMONTH,DDBH,SUM(QTY)RKQTY ');
    SQL.Add('  		        FROM LIY_DD.dbo.OUTSOLE_RK YWCP   ');
    SQL.Add('  		        GROUP BY YEAR(Indate),MONTH(Indate),DDBH)DD ON DD.DDBH=KC.DDBH AND DD.IMYEAR=KC.KCYEAR AND DD.IMMONTH=KC.KCMONTH  ');
    SQL.Add('  where DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''  )<13  and DATEDIFF(MONTH,KC.KCYEAR+''-''+KC.KCMONTH+''-01'','''+STD+'''  )>-1   ');
    SQL.Add('  --==================================================  ');
    SQL.Add('  Create INDEX #EntryStockRY_index on #EntryStockRY(DDBH,CKBH,[Month])  ');
    SQL.Add('  Insert into LIY_DD.dbo.OUTSOLE_Month_Stock (KCYEAR, KCMONTH, DDBH, CKBH, RemQty, RemQty01T, RemQty02T, RemQty03T, RemQty04T, RemQty05T, RemQty06T, RemQty07T, USERID, USERDATE, YN)   ');
    SQL.Add('  select d.KCYear,d.KCMonth,d.DDBH,d.CKBH,isnull(d.RemQty,0) as RemQty  ');
    SQL.Add('          ,isnull(Sum(d.c0),0) as RemQty01T -- [<30]   ');
    SQL.Add('          ,isnull(Sum(d.c1),0) as RemQty02T --[31~60]  ');
    SQL.Add('          ,isnull(Sum(d.c2),0) as RemQty03T --[61~90]  ');
    SQL.Add('          ,isnull(Sum(d.c3),0) as RemQty04T --[91~120]  ');
    SQL.Add('          ,isnull(Sum(d.c4),0)+isnull(Sum(d.c5),0) as RemQty05T --[121~180]  ');
    SQL.Add('          ,isnull(Sum(d.c6),0)+isnull(Sum(d.c7),0)+isnull(Sum(d.c8),0)+isnull(Sum(d.c9),0)+isnull(Sum(d.c10),0)+isnull(Sum(d.c11),0) as RemQty06T --[181~359]  ');
    SQL.Add('          ,isnull(Sum(d.c12),0) as RemQty07T--[>360]  ');
    SQL.Add('          ,'''+main.edit1.text+''' USERID,GetDate() UserDate,''1'' YN   ');
    SQL.Add('  from (  ');
    SQL.Add('  	select *,  ');
    SQL.Add('  	case when c.[Month]=0 then c.Qty end c0,   ');
    SQL.Add('  	case when c.[Month]=1 then c.Qty end c1,  ');
    SQL.Add('  	case when c.[Month]=2 then c.Qty end c2,  ');
    SQL.Add('  	case when c.[Month]=3 then c.Qty end c3,  ');
    SQL.Add('  	case when c.[Month]=4 then c.Qty end c4,  ');
    SQL.Add('  	case when c.[Month]=5 then c.Qty end c5,  ');
    SQL.Add('  	case when c.[Month]=6 then c.Qty end c6,  ');
    SQL.Add('  	case when c.[Month]=7 then c.Qty end c7,  ');
    SQL.Add('  	case when c.[Month]=8 then c.Qty end c8,  ');
    SQL.Add('  	case when c.[Month]=9 then c.Qty end c9,  ');
    SQL.Add('  	case when c.[Month]=10 then c.Qty end c10,  ');
    SQL.Add('  	case when c.[Month]=11 then c.Qty end c11,  ');
    SQL.Add('  	case when c.[Month]=12 then c.Qty end c12  ');
    SQL.Add('  	from (  ');
    SQL.Add('  	select b.*  ');
    SQL.Add('  	,case when b.month=b1.MaxMonth then (case when b.RemQty-b.SumRKqty>0 then   ');
    SQL.Add('  					   b.RemQty-b.SumRKqty else 0 end)   ');
    SQL.Add('  				   else (case when b.RemQty>(b.RKQty+b.SumRKqty) then   ');
    SQL.Add('  						       b.RKQty   ');
    SQL.Add('  					      else   ');
    SQL.Add('  					      	(case when b.RemQty-b.SumRKqty>0  then   ');
    SQL.Add('  							      b.RemQty-b.SumRKqty else 0 end)    ');
    SQL.Add('  						 end )   ');
    SQL.Add('  				  end Qty   ');
    SQL.Add('  	from (  ');
    SQL.Add('  	select a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month],sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.[Month]=0)then a1.RemQty end) RemQty  ');
    SQL.Add('  	from #EntryStockRY a1  ');
    SQL.Add('  	left join #EntryStockRY a2 on a2.DDBH=a1.DDBH and a2.CKBH=a1.CKBH   ');
    SQL.Add('  	where a2.[Month]>a1.[Month]  ');
    SQL.Add('  	group by a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month],a2.RKQTY  ');
    SQL.Add('  	union all  ');
    SQL.Add('  	select KCYEAR,KCMonth,DDBH,CKBH,[Month],0,RKQty,RemQty from #EntryStockRY  ');
    SQL.Add('  	where [Month]=0 ) b   ');
    SQL.Add('  	left join (  ');
    SQL.Add('  	  select KCYEAR,KCMONTH,DDBH,CKBH,MAX([Month]) as MaxMonth   ');
    SQL.Add('  	  from (  ');
    SQL.Add('  		    select a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month],sum(a1.RKQty) SumRKqty,a2.RKQty RKQty,sum(case when (a1.month=0)then a1.RemQty end) RemQty  ');
    SQL.Add('  		    from #EntryStockRY a1  ');
    SQL.Add('  		    left join #EntryStockRY a2 on a2.DDBH=a1.DDBH and a2.CKBH=a1.CKBH   ');
    SQL.Add('  		    where a2.[Month]>a1.[Month]  ');
    SQL.Add('  		    group by a1.KCYEAR,a1.KCMonth,a1.DDBH,a1.CKBH,a2.[Month],a2.RKQTY  ');
    SQL.Add('  		    union all  ');
    SQL.Add('  		    select KCYEAR,KCMonth,DDBH,CKBH,[Month],0,RKQty,RemQty from #EntryStockRY  ');
    SQL.Add('  		    where  [Month]=0 	)  Alldata  ');
    SQL.Add('  	Group by KCYEAR,KCMONTH,DDBH,CKBH  ');
    SQL.Add('  	) b1 on b1.KCYEAR=b.KCYEAR and b1.KCMONTH=b.KCMONTH and b1.DDBH=b.DDBH and b1.CKBH=b.CKBH   ');
    SQL.Add('   ) c  ) d  ');
    SQL.Add('  where d.RemQty>0  ');
    SQL.Add('  group by d.KCYear,d.KCMonth,d.DDBH,d.CKBH,d.RemQty  ');
    //funcobj.WriteErrorLog(sql.text);
    ExecSQL;
  end; 
  showmessage('Finish');
  btn_Out.Click;
end;

procedure TStockShoeMonth.Button26Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Qry_MonthStock_Out.Active then
  begin
    if Qry_MonthStock_Out.recordcount=0 then
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
    eclApp.ActiveSheet.Rows[1].font.Bold:=true;
    for i := 0 to DBG_MonthStock_Out.FieldCount-1 do
    begin
      eclApp.Cells(1, i + 2) :=DBG_MonthStock_Out.Columns[i].Title.Caption
    end;

    Qry_MonthStock_Out.First;
    j:=2;
    while   not  Qry_MonthStock_Out.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=0   to   Qry_MonthStock_Out.fieldcount-1  do
      begin
        eclApp.Cells(j,i+2):=Qry_MonthStock_Out.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
      end;
      Qry_MonthStock_Out.Next;
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
