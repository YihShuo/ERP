unit KiemtraKCRKCX1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Dateutils,
  ADODB,Math, Menus;

type
  TKiemtraKCRKCX = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button1: TButton;
    Panel1: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    Query1HGBH: TStringField;
    Query1zsdh: TStringField;
    Query1zsqm: TStringField;
    Query1CLDH: TStringField;
    Query1LBBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1LastRem: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1LLQty: TCurrencyField;
    Query1JGRK: TCurrencyField;
    Query1JGCK: TFloatField;
    Query1JGCKTemp: TFloatField;
    Query1KCBH: TStringField;
    Query1CKBH: TStringField;
    Query1Qty: TFloatField;
    Query1CLDH_1: TStringField;
    Query1RemQty: TCurrencyField;
    Label4: TLabel;
    CKBox: TComboBox;
    TempQry: TQuery;
    iYear: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    iMonth: TEdit;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    KCLL_ST: TEdit;
    KCLL_ED: TEdit;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    KCRK_ST: TEdit;
    KCRK_ED: TEdit;
    Label11: TLabel;
    CKBH: TEdit;
    KCRKCX: TEdit;
    Button2: TButton;
    ADOConn: TADOConnection;
    KCLLS: TADOQuery;
    KCRKCXQry: TADOQuery;
    EXEQry: TADOQuery;
    Button3: TButton;
    Panel3: TPanel;
    DBGrid1: TDBGridEh;
    Panel4: TPanel;
    Panel5: TPanel;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    Query3: TQuery;
    DS3: TDataSource;
    Query2KCYEAR: TStringField;
    Query2KCMONTH: TStringField;
    Query2CLBH: TStringField;
    Query2Qty: TCurrencyField;
    Query2HG_Qty: TCurrencyField;
    Query3RKNO: TStringField;
    Query3CLDH: TStringField;
    Query3CGBH: TStringField;
    Query3RKSB: TStringField;
    Query3CNO: TIntegerField;
    Query3HGLB: TStringField;
    Query3RKQty: TCurrencyField;
    Query3UsdQty: TCurrencyField;
    Query3RemQty: TCurrencyField;
    MatNoEdit: TEdit;
    Label12: TLabel;
    DBGridEh3: TDBGridEh;
    Query4: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    DS4: TDataSource;
    Panel7: TPanel;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    DBGridEh4: TDBGridEh;
    Query5: TQuery;
    DS5: TDataSource;
    Query5LLNO: TStringField;
    Query5CLBH: TStringField;
    Query5DFL: TStringField;
    Query5SCBH: TStringField;
    Query5LLQty: TCurrencyField;
    Query5RKNO: TStringField;
    Query5CLDH: TStringField;
    Query5CGBH: TStringField;
    Query5RKSB: TStringField;
    Query5RKQty: TCurrencyField;
    Query5USERID: TStringField;
    Query5USERDATE: TDateTimeField;
    Query5YN: TStringField;
    Query5CKBH: TStringField;
    Query5VNPrice: TFloatField;
    Query5VNACC: TFloatField;
    Query5HGLB: TStringField;
    DBGridEh5: TDBGridEh;
    DBGridEh6: TDBGridEh;
    DBGridEh7: TDBGridEh;
    Query6: TQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    CurrencyField3: TCurrencyField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    CurrencyField4: TCurrencyField;
    StringField12: TStringField;
    DateTimeField1: TDateTimeField;
    StringField13: TStringField;
    StringField14: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField15: TStringField;
    DS6: TDataSource;
    Query7: TQuery;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    CurrencyField5: TCurrencyField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    CurrencyField6: TCurrencyField;
    StringField24: TStringField;
    DateTimeField2: TDateTimeField;
    StringField25: TStringField;
    StringField26: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField27: TStringField;
    DS7: TDataSource;
    Query8: TQuery;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    CurrencyField7: TCurrencyField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    CurrencyField8: TCurrencyField;
    StringField36: TStringField;
    DateTimeField3: TDateTimeField;
    StringField37: TStringField;
    StringField38: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField39: TStringField;
    DS8: TDataSource;
    Button4: TButton;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    Popup1: TPopupMenu;
    XoaKCRKCX1: TMenuItem;
    Popup2: TPopupMenu;
    MenuItem1: TMenuItem;
    Popup3: TPopupMenu;
    MenuItem2: TMenuItem;
    Popup4: TPopupMenu;
    MenuItem3: TMenuItem;
    Popup5: TPopupMenu;
    MenuItem4: TMenuItem;
    Popup6: TPopupMenu;
    MenuItem5: TMenuItem;
    SQLPrint1: TMenuItem;
    InSQL1: TMenuItem;
    InSQL2: TMenuItem;
    InSQL3: TMenuItem;
    InSQL4: TMenuItem;
    InSQL5: TMenuItem;
    Splitter6: TSplitter;
    DBGridEh8: TDBGridEh;
    Query9: TQuery;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    IntegerField1: TIntegerField;
    StringField44: TStringField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    CurrencyField11: TCurrencyField;
    DS9: TDataSource;
    Popup7: TPopupMenu;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure XoaKCRKCX1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure SQLPrint1Click(Sender: TObject);
    procedure InSQL1Click(Sender: TObject);
    procedure InSQL2Click(Sender: TObject);
    procedure InSQL3Click(Sender: TObject);
    procedure InSQL4Click(Sender: TObject);
    procedure InSQL5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
  private
    aYear,aMonth,STDATE,EDDATE:string;
    sdate,edate:Tdate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KiemtraKCRKCX: TKiemtraKCRKCX;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TKiemtraKCRKCX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;

end;

procedure TKiemtraKCRKCX.FormDestroy(Sender: TObject);
begin
  KiemtraKCRKCX:=nil;
end;

procedure TKiemtraKCRKCX.Button1Click(Sender: TObject);
var  y,m:word;
begin
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
  STDATE:=formatdatetime('yyyy/MM/dd',sdate);
  EDDATE:=formatdatetime('yyyy/MM/dd',edate);

  //
  if strtoint(CBX2.Text)>1  then
  begin
    aMonth:=inttostr(strtoint(CBX2.Text)-1);
    aYear:=CBX1.Text;
  end
  else
    begin
      aMonth:='12';
      aYear:=inttostr(strtoint(CBX1.Text)-1);
    end;
  if  length(amonth)<2  then
  begin
    aMonth:='0'+aMonth;
  end;
  KCLL_ST.Text:=STDATE;
  KCLL_ED.Text:=EDDATE;
  KCRK_ST.Text:=STDATE;
  KCRK_ED.Text:=EDDATE;
  CKBH.Text:=CKBox.Text;
  iYear.Text:=aYear;
  iMonth.Text:=aMonth;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#CLZLKC'') is not null  ');
    SQL.Add('begin   drop table #CLZLKC end   ');
    SQL.Add('select clzl.zsdh,CLZL.CLDH,LastKC.LBBH,CLZL.DWBH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp');
    SQL.Add('into #CLZLKC from CLZL with (nolock) ');
    SQL.Add('left join (select KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as LastRem ');
    SQL.Add('           from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR='''+aYear+'''');
    SQL.Add('           and KCMONTH='''+aMonth+'''');
    SQL.Add('           and KCCLMONTH.CLBH like ''%''');
    SQL.Add('           and KCCLMONTH.CKBH='''+CKBox.Text+'''');
    SQL.Add('           ) LastKC on LastKC.CLBH=CLZL.CLDH ');
    SQL.Add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS with (nolock)  ');
    SQL.Add('           left join KCRK with (nolock)   on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=');
    SQL.Add('           '''+STDATE+'''');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    SQL.Add('           '''+EDDATE+'''');
    SQL.Add('           and KCRKS.CLBH like ''%''');
    SQL.Add('           and KCRK.CKBH='''+CKBox.Text+'''');
    SQL.Add('           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH ');
    SQL.Add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS with (nolock)   ');
    SQL.Add('           left join KCLL with (nolock)    on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=');
    SQL.Add('           '''+STDATE+'''');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    SQL.Add('           '''+EDDATE+'''');
    SQL.Add('           and KCLLS.CLBH like ''%''');
    SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ''');
    SQL.Add('           and KCLL.CFMID<>''NO''');
    SQL.Add('           and KCLL.CKBH='''+CKBox.Text+'''');
    SQL.Add('           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH');
    SQL.Add('left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS with (nolock) ');
    SQL.Add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    SQL.Add('           '''+STDATE+'''');
    SQL.Add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    SQL.Add('           '''+EDDATE+'''');
    SQL.Add('           and JGZLS.CLBH like ''%''');
    SQL.Add('           and JGZL.CFMID1 <>''NO''');
    SQL.Add('           and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('           and JGZL.CKBH='''+CKBox.Text+'''');
    SQL.Add('           group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH');
    SQL.Add('left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) ');
    SQL.Add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    SQL.Add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    SQL.Add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    SQL.Add('                      '''+STDATE+'''');
    SQL.Add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    SQL.Add('                      '''+EDDATE+'''');
    SQL.Add('                      and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('                      and JGZL.CKBH='''+CKBox.Text+'''');
    SQL.Add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    SQL.Add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    SQL.Add('           '''+STDATE+'''');
    SQL.Add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    SQL.Add('           '''+EDDATE+'''');
    SQL.Add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    SQL.Add('           and JGZLS.ZMLB like ''%''');
    SQL.Add('           and JGZL.CFMID1 <>''NO''');
    SQL.Add('           and JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('           and JGZL.CKBH='''+CKBox.Text+'''');
    SQL.Add('           group by JGZLS.ZMLB ');
    SQL.Add('           union all');
    SQL.Add('           select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=');
    SQL.Add('           '''+STDATE+'''');
    SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    SQL.Add('           '''+EDDATE+'''');
    SQL.Add('           and KCLLS.CLBH like ''%''');
    SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ''');
    SQL.Add('           and KCLL.CFMID<>''NO''');
    SQL.Add('           and KCLL.CKBH='''+CKBox.Text+'''           ');
    SQL.Add('           group by KCLLS.CLBH');
    SQL.Add('           ) JGCK on JGCK.ZMLB=CLZL.CLDH');
    SQL.Add('left join (select JGZLS.ZMLB,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2)) as JGCK from JGZLS with (nolock) ');
    SQL.Add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    SQL.Add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    SQL.Add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('                      where  JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('                      and JGZL.CKBH='''+CKBox.Text+'''');
    SQL.Add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    SQL.Add('           where  JGZLS.ZMLB like ''%''');
    SQL.Add('           and JGZL.CFMID1 =''NO''');
    SQL.Add('           and JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('           and JGZL.CKBH='''+CKBox.Text+'''');
    SQL.Add('           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH');
    SQL.Add('');
    SQL.Add('');
    SQL.Add('select * from (');
    SQL.Add('');
    SQL.Add('select CLHG.HGBH,clzl.zsdh,zszl.zsqm,#CLZLKC.CLDH,IsNull(#CLZLKC.LBBH,CLLBFLS.LBBH) as LBBH,CLZL.YWPM,CLZL.ZWPM,#CLZLKC.DWBH,isnull(#CLZLKC.LastRem,0) as LastRem,');
    SQL.Add('       isnull(#CLZLKC.RKQty,0) as RKQty,isnull(#CLZLKC.LLQty,0) as LLQty,');
    SQL.Add('       isnull(round(#CLZLKC.JGRK,2),0) as JGRK,isnull(round(#CLZLKC.JGCK,2),0) as JGCK,');
    SQL.Add('       isnull(round(#CLZLKC.JGCKTemp,2),0) as JGCKTemp,KCZLS.KCBH,KCZLS.CKBH,');
    SQL.Add('       isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.RKQty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC.JGRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0) as Qty');
    SQL.Add('from #CLZLKC ');
    SQL.Add('left join CLZL on CLZL.CLDH=#CLZLKC.CLDH ');
    SQL.Add('left join zszl on zszl.zsdh=clzl.zsdh ');
    SQL.Add('left join (select * from KCZLS   where CKBH='''+CKBox.Text+'''');
    SQL.Add('                            ) KCZLS on KCZLS.CLBH=#CLZLKC.CLDH');
    SQL.Add('left join CLLBFLS on CLLBFLS.CLBH=CLZL.CLDH and CLLBFLS.GSBH='''+CKBox.Text+''' ');
    SQL.Add('left join CLHG on CLHG.CLBH=#CLZLKC.CLDH  ');
    SQL.Add('  where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null ');
    SQL.Add('               and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null and #CLZLKC.JGCKTemp is null)');
    SQL.Add('and KCZLS.CKBH like '''+CKBox.Text+'%''');
    SQL.Add('and #CLZLKC.CLDH like '''+MatNoEdit.Text+'%''');
    SQL.Add('and CLZL.YWPM like ''%%''');
    SQL.Add('and CLZL.YWPM like ''%%''');
    SQL.Add('and (isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.RKQty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC.JGRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0))>0');
    SQL.Add(') Warehouse');
    SQL.Add('left join (');
    SQL.Add('select CLDH,Sum(RemQty) as RemQty from (');
    SQL.Add('select KCCLMONTH.KCYEAR  as RKNO,KCCLMONTH.CLBH as CLDH,KCCLMONTH.KCMONTH as CGBH,KCCLMONTH.HGLB as RKSB ,null as CNO,Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty');
    SQL.Add('      ,Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from KCCLMONTH_HG as KCCLMONTH');
    SQL.Add('left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty from KCRKCX as  KCRKCX where KCRKCX.RKNO='''+aYear+'''  and KCRKCX.CGBH='''+aMonth+'''  and KCRKCX.CKBH='''+CKBox.Text+''' Group by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX on KCRKCX.RKNO=KCCLMONTH.KCYEAR ');
    SQL.Add('            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLMONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCLMONTH.CKBH ');
    SQL.Add('where KCCLMONTH.KCYEAR='''+aYear+''' and KCCLMONTH.KCMONTH='''+aMonth+''' and KCCLMONTH.CKBH='''+CKBox.Text+''' and KCCLMONTH.CLBH like '''+MatNoEdit.Text+'%'' ');
    SQL.Add('Group by KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.HGLB,KCCLMONTH.CLBH');
    SQL.Add('having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
    SQL.Add('union all');
    SQL.Add('Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,Sum(KCRKS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from KCRKS');
    SQL.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  KCRKCX as KCRKCX where KCRKCX.RKSB<>''JGRK'' and convert(smalldatetime,convert(varchar,KCRKCX.USERDate,111))<='''+EDDATE+'''  Group by RKNO,CLDH,CGBH,RKSB  )  ');
    SQL.Add('           KCRKCX on KCRKCX.RKNO=KCRKS.RKNO and KCRKCX.CLDH=KCRKS.CLBH and KCRKCX.CGBH=KCRKS.CGBH and KCRKCX.RKSB=KCRKS.RKSB');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between '''+STDATE+''' and '''+EDDATE+'''  and KCRK.CKBH='''+CKBox.Text+''' and KCRKS.CLBH like '''+MatNoEdit.Text+'%'' ');
    SQL.Add('Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO');
    SQL.Add('having Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
    SQL.Add('Union all');
    SQL.Add('select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB as CGBH,''JGRK'' as RKSB,null as CNO,Sum(JGZLS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from JGZLS');
    SQL.Add('inner join JGZL on JGZL.JGNO=JGZLS.JGNO');
    SQL.Add('left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from KCRKCX as  KCRKCX where KCRKCX.RKSB=''JGRK'' and convert(smalldatetime,convert(varchar,KCRKCX.USERDate,111))<='''+EDDATE+''' Group by RKNO,CLDH,CGBH,RKSB  )   ');
    SQL.Add('           KCRKCX on KCRKCX.RKNO=JGZLS.JGNO and KCRKCX.CLDH=JGZLS.CLBH and KCRKCX.CGBH=JGZLS.ZMLB and KCRKCX.RKSB=''JGRK''');
    SQL.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.CFMID1<>''NO'' and JGZL.CKBH='''+CKBox.Text+''' and JGZLS.CLBH like '''+MatNoEdit.Text+'%''  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+STDATE+''' and '''+EDDATE+'''  ');
    SQL.Add('Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('having Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0 ) KCRKS');
    SQL.Add('Group by CLDH ) KCRKS on KCRKS.CLDH=Warehouse.CLDH');
    SQL.Add('where Round(convert(float,KCRKS.RemQty),4)<>Round(convert(float,Warehouse.Qty),4)');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH ,KCCLMONTH.CLBH,KCCLMONTH.Qty ,KCCLMONTH_HG.Qty as HG_Qty from KCCLMONTH');
    SQL.Add('left join (');
    SQL.Add('  select KCYEAR,KCMONTH,CKBH,CLBH,Sum(Qty) as Qty from KCCLMONTH_HG');
    SQL.Add('  where KCYEAR='''+aYear+''' and KCMONTH='''+aMonth+'''  and CKBH='''+CKBox.Text+'''');
    SQL.Add('  Group by KCYEAR,KCMONTH,CKBH,CLBH )');
    SQL.Add(' KCCLMONTH_HG on KCCLMONTH_HG.KCYEAR=KCCLMONTH.KCYEAR and KCCLMONTH_HG.KCMONTH=KCCLMONTH.KCMONTH and KCCLMONTH_HG.CKBH=KCCLMONTH.CKBH and KCCLMONTH_HG.CLBH=KCCLMONTH.CLBH');
    SQL.Add('where KCCLMONTH.KCYEAR='''+aYear+''' and KCCLMONTH.KCMONTH='''+aMonth+'''  and KCCLMONTH.CKBH='''+CKBox.Text+'''');
    SQL.Add('      and (KCCLMONTH_HG.Qty<>KCCLMONTH.Qty or KCCLMONTH_HG.CLBH is null)');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  with Query4 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCCLMONTH_HG.KCYEAR,KCCLMONTH_HG.KCMONTH ,KCCLMONTH_HG.CLBH,KCCLMONTH.Qty ,KCCLMONTH_HG.Qty as HG_Qty from (');
    SQL.Add('  select KCYEAR,KCMONTH,CKBH,CLBH,Sum(Qty) as Qty from KCCLMONTH_HG');
    SQL.Add('  where KCYEAR='''+aYear+''' and KCMONTH='''+aMonth+'''  and CKBH='''+CKBox.Text+'''');
    SQL.Add('  Group by KCYEAR,KCMONTH,CKBH,CLBH ) KCCLMONTH_HG');
    SQL.Add('left join KCCLMONTH ');
    SQL.Add('  on KCCLMONTH_HG.KCYEAR=KCCLMONTH.KCYEAR and KCCLMONTH_HG.KCMONTH=KCCLMONTH.KCMONTH and KCCLMONTH_HG.CKBH=KCCLMONTH.CKBH and KCCLMONTH_HG.CLBH=KCCLMONTH.CLBH');
    SQL.Add('where KCCLMONTH_HG.KCYEAR='''+aYear+''' and KCCLMONTH_HG.KCMONTH='''+aMonth+'''  and KCCLMONTH_HG.CKBH='''+CKBox.Text+'''');
    SQL.Add('      and (KCCLMONTH_HG.Qty<>KCCLMONTH.Qty or KCCLMONTH.CLBH is null)');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with Query3 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCCLMONTH.KCYEAR as RKNO,KCCLMONTH.CLBH as CLDH,KCCLMONTH.KCMONTH as CGBH,KCCLMONTH.HGLB as RKSB,null as CNO,KCCLMONTH.HGLB ,Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty ');
    SQL.Add('from KCCLMONTH_HG as KCCLMONTH ');
    SQL.Add('left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty from  KCRKCX where KCRKCX.RKNO='''+aYear+'''   and KCRKCX.CGBH='''+aMonth+'''   Group by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX on KCRKCX.RKNO=KCCLMONTH.KCYEAR ');
    SQL.Add('            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLMONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCLMONTH.CKBH   ');
    SQL.Add('where KCCLMONTH.KCYEAR='''+aYear+''' and KCCLMONTH.KCMONTH='''+aMonth+''' and KCCLMONTH.CKBH='''+CKBox.Text+''' --and KCCLMONTH.CLBH=''H100001010'' ');
    SQL.Add('Group by KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.HGLB,KCCLMONTH.CLBH ');
    SQL.Add('having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0))<0 ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  with Query9 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRKCX.RKNO as RKNO,KCRKCX.CLDH,KCRKCX.CGBH,KCRKCX.RKSB,null as CNO ,KCCLMONTH.HGLB,Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(IsNull(KCCLMONTH.Qty,0))-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty  from ');
    SQL.Add('(select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty from  KCRKCX where KCRKCX.RKNO='''+aYear+'''   and KCRKCX.CGBH='''+aMonth+''' and KCRKCX.CKBH='''+CKBox.Text+'''  Group by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX ');
    SQL.Add('left join KCCLMONTH_HG as KCCLMONTH on KCRKCX.RKNO=KCCLMONTH.KCYEAR   and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLMONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCLMONTH.CKBH   ');
    SQL.Add('where KCRKCX.RKNO='''+aYear+''' and KCRKCX.CGBH='''+aMonth+''' and KCRKCX.CKBH='''+CKBox.Text+''' --and KCRKCX.CLDH=''A090000270''');
    SQL.Add('Group by KCRKCX.RKNO,KCRKCX.CGBH,KCRKCX.RKSB,KCRKCX.CLDH,KCCLMONTH.HGLB ');
    SQL.Add('having Sum(IsNull(KCCLMONTH.Qty,0))-Sum(IsNull(KCRKCX.RKQty,0))<0 ');
    Active:=true;
  end;
  //
  with Query5 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRKCX.* from KCRKCX ');
    SQL.Add('left join KCLLS on KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH ');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO and KCLL.CFMID<>''NO'' ');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)) between '''+STDATE+''' and '''+EDDATE+''' and KCRKCX.CKBH='''+CKBox.Text+''' ');
    SQL.Add('      and KCRKCX.DFL<>''JGCK'' ');
    SQL.Add('      and KCLL.LLNO is null ');
    SQL.Add('     ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with Query6 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KCRKCX.* from KCRKCX ');
    SQL.Add('left join JGZLS on JGZLS.JGNO=KCRKCX.LLNO and JGZLS.CLBH=KCRKCX.CLBH and ''JGCK''=KCRKCX.DFL and JGZLS.ZMLB=KCRKCX.SCBH');
    SQL.Add('left join JGZL on JGZL.JGNO=JGZLS.JGNO and JGZL.CFMID1<>''NO'' ');
    SQL.Add('where convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)) between '''+STDATE+''' and '''+EDDATE+''' and KCRKCX.CKBH='''+CKBox.Text+''' ');
    SQL.Add('      and KCRKCX.DFL=''JGCK'' ');
    SQL.Add('      and JGZLS.JGNO is null ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with Query7 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from KCRKCX where CLBH<>CLDH and DFL<>''JGCK''  ');
    SQL.Add('and convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)) between '''+STDATE+''' and '''+EDDATE+''' and CKBH='''+CKBox.Text+''' ');
    Active:=true;
  end;
  with Query8 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from KCRKCX where SCBH<>CLDH and DFL=''JGCK''   ');
    SQL.Add('and convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)) between '''+STDATE+''' and '''+EDDATE+''' and CKBH='''+CKBox.Text+''' ');
    Active:=true;
  end;
end;

procedure TKiemtraKCRKCX.FormCreate(Sender: TObject);
begin
  with TempQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CKBox.Items.Clear;
    while not eof do
    begin
      CKBox.Items.Add(fieldbyname('CKBH').AsString);
      Next;
    end;
    CKBox.ItemIndex:=0;
    active:=false;
  end;
end;

procedure TKiemtraKCRKCX.Button2Click(Sender: TObject);
var SQLStr:string;
    i,j:integer;
    LLQty,RemQty,UseQty:double;
    HGLBCBText:string;
begin
  //
  with KCLLS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select  KCLL.CKBH,KCLLS.LLNO, KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH, KCLLS.Qty, Max(KCLL.CFMID) as UserID, Max(KCLL.CFMDate) as UserDate ,Sum(KCRKCX.RKQty) as CXRKQty from KCLLS');
    SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    SQL.Add('left join '+KCRKCX.Text+' as KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH');
    SQL.Add('where KCLL.CFMID<>''NO'' and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+KCLL_ST.Text+''' and '''+KCLL_ED.Text+'''  and KCLLS.Qty>0  ');
    if CKBH.Text<>'' then
    SQL.Add('and KCLL.CKBH='''+CKBH.Text+''' ');
    SQL.Add('Group by KCLL.CKBH,KCLLS.LLNO, KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH, KCLLS.Qty having KCLLS.Qty>Sum(IsNull(KCRKCX.RKQty,0))');
    funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  funcObj.WriteErrorLog('');
  //
  try
  for i:=0 to KCLLS.RecordCount-1 do
  begin
    Application.ProcessMessages;
    Label1.Caption:=inttostr(i+1)+'/'+inttostr(KCLLS.RecordCount);
    if ( (Copy(KCLLS.FieldByName('SCBH').AsString,1,1)='Y') or (Copy(KCLLS.FieldByName('SCBH').AsString,1,1)='L') )then HGLBCBText:='NK' else HGLBCBText:='KD';
    with KCRKCXQry do
    begin
      Active:=false;
      SQL.Clear;
      if HGLBCBText='NK' then
      begin
        SQL.Add('select KCRKS.*,KCRKS.HGLB,case when KCRKS.HGLB=''NK'' then 1  ');
        SQL.Add('                              when KCRKS.HGLB=''HD'' then 2 ');
        SQL.Add('                              when KCRKS.HGLB=''GC'' then 3 ');
        SQL.Add('                              when IsNull(KCRKS.HGLB,''ZZZZ'')=''ZZZZ'' then 4 ');
        SQL.Add('                              when KCRKS.HGLB=''XT'' then 5 ');
        SQL.Add('                              when KCRKS.HGLB=''KD'' then 6 ');
        SQL.Add('                              else 7  end sort from ( ');
      end else if HGLBCBText='KD' then
      begin
        SQL.Add('select KCRKS.*,KCRKS.HGLB,case when KCRKS.HGLB=''KD'' then 1  ');
        SQL.Add('                              when KCRKS.HGLB=''HD'' then 2 ');
        SQL.Add('                              when KCRKS.HGLB=''GC'' then 3 ');
        SQL.Add('                              when KCRKS.HGLB=''XT'' then 4 ');
        SQL.Add('                              when IsNull(KCRKS.HGLB,''ZZZZ'')=''ZZZZ''  then 5 ');
        SQL.Add('                              when KCRKS.HGLB=''NK'' then 6 ');
        SQL.Add('                              else 7  end sort from ( ');
      end else
      begin
        SQL.Add('select KCRKS.*,KCRKS.HGLB,case KCRKS.HGLB='''+HGLBCBText+''' then 1  ');
        SQL.Add('                              when KCRKS.HGLB=''KD'' then 3 ');
        SQL.Add('                              when KCRKS.HGLB=''NK'' then 4 ');
        SQL.Add('                              else 2  end sort from ( ');
      end;

      SQL.Add('select * from (');
      SQL.Add('select  KCLLS.LLNO, KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH, KCLLS.Qty,Sum(IsNull(KCRKCX.RKQty,0)) as CXRKQty,Max(KCRKCX.USERID) as USERID,Max(KCRKCX.USERDATE) as USERDATE,Max(KCRKCX.YN) as YN from KCLLS');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('left join '+KCRKCX.Text+' as KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH');
      SQL.Add('where KCLL.CKBH='''+KCLLS.FieldByName('CKBH').AsString+''' and KCLL.CFMID<>''NO'' and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+KCLL_ST.Text+''' and '''+KCLL_ED.Text+''' and KCLLS.CLBH='''+KCLLS.FieldByName('CLBH').AsString+''' and KCLLS.LLNO='''+KCLLS.FieldByName('LLNO').AsString+''' and KCLLS.DFL='''+KCLLS.FieldByName('DFL').AsString+''' and KCLLS.SCBH='''+KCLLS.FieldByName('SCBH').AsString+''' ');
      SQL.Add('Group by KCLLS.LLNO, KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH, KCLLS.Qty having KCLLS.Qty>Sum(IsNull(KCRKCX.RKQty,0)) ) KCLLS');
      SQL.Add('left join (');

      SQL.Add('select KCCLMONTH.KCYEAR as RKNO,KCCLMONTH.CLBH as CLDH,KCCLMONTH.KCMONTH as CGBH,KCCLMONTH.HGLB as RKSB,null as CNO,KCCLMONTH.HGLB ,Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty, ');
      SQL.Add('       Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty,GetDate()-360 as RKDate ');
      SQL.Add('from KCCLMONTH_HG as KCCLMONTH ');
      SQL.Add('left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty from  '+KCRKCX.Text+' as KCRKCX where KCRKCX.RKNO='''+iYear.Text+''' and KCRKCX.CLDH='''+KCLLS.FieldByName('CLBH').AsString+'''  and KCRKCX.CGBH='''+iMonth.Text+'''   Group by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX on KCRKCX.RKNO=KCCLMONTH.KCYEAR ');
      SQL.Add('            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLMONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCLMONTH.CKBH   ');
      SQL.Add('where KCCLMONTH.KCYEAR='''+iYear.Text+''' and KCCLMONTH.KCMONTH='''+iMonth.Text+''' and KCCLMONTH.CKBH='''+KCLLS.FieldByName('CKBH').AsString+''' and KCCLMONTH.CLBH='''+KCLLS.FieldByName('CLBH').AsString+''' ');
      SQL.Add('Group by KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.HGLB,KCCLMONTH.CLBH having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0 ');

      SQL.Add('union all');
      SQL.Add('Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB,Sum(KCRKS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty,KCRK.USERDATE as RKDate from KCRKS');
      SQL.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  '+KCRKCX.Text+' as KCRKCX where KCRKCX.RKSB<>''JGRK'' and KCRKCX.CLDH='''+KCLLS.FieldByName('CLBH').AsString+'''  Group by RKNO,CLDH,CGBH,RKSB  ) KCRKCX  on KCRKCX.RKNO=KCRKS.RKNO and KCRKCX.CLDH=KCRKS.CLBH and KCRKCX.CGBH=KCRKS.CGBH and KCRKCX.RKSB=KCRKS.RKSB');
      SQL.Add('where   convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between '''+KCRK_ST.Text+''' and '''+KCRK_ED.Text+''' and KCRK.CKBH='''+KCLLS.FieldByName('CKBH').AsString+'''  and KCRKS.CLBH='''+KCLLS.FieldByName('CLBH').AsString+'''');
      SQL.Add('Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB,KCRK.USERDATE');
      SQL.Add('having Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
      SQL.Add('Union all');
      SQL.Add('select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB as CGBH,''JGRK'' as RKSB,null as CNO,''GC'' as HGLB,Sum(JGZLS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty,JGZL.CFMDate1 as RKDate from JGZLS');
      SQL.Add('inner join JGZL on JGZL.JGNO=JGZLS.JGNO');
      SQL.Add('left join  (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  '+KCRKCX.Text+' as KCRKCX where KCRKCX.RKSB=''JGRK'' and KCRKCX.CLDH='''+KCLLS.FieldByName('CLBH').AsString+'''  Group by RKNO,CLDH,CGBH,RKSB  ) KCRKCX  on KCRKCX.RKNO=JGZLS.JGNO and KCRKCX.CLDH=JGZLS.CLBH and KCRKCX.CGBH=JGZLS.ZMLB and KCRKCX.RKSB=''JGRK''');
      SQL.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.CFMID1<>''NO'' and JGZL.CKBH='''+KCLLS.FieldByName('CKBH').AsString+'''  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+KCLL_ST.Text+''' and '''+KCLL_ED.Text+''' and JGZLS.CLBH='''+KCLLS.FieldByName('CLBH').AsString+'''');
      SQL.Add('Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZL.CFMDate1 ');
      SQL.Add('having Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
      SQL.Add(') KCRKS on KCRKS.CLDH=KCLLS.CLBH and KCRKS.CGBH=KCLLS.SCBH');
      SQL.Add('where Qty>0  and RKNO is not null ');
      SQL.Add('Union all ');
      SQL.Add('select * from (');
      SQL.Add('select  KCLLS.LLNO, KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH, KCLLS.Qty,Sum(IsNull(KCRKCX.RKQty,0)) as CXRKQty,Max(KCRKCX.USERID) as USERID,Max(KCRKCX.USERDATE) as USERDATE,Max(KCRKCX.YN) as YN from KCLLS');
      SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('left join '+KCRKCX.Text+' as KCRKCX  on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH');
      SQL.Add('where KCLL.CKBH='''+KCLLS.FieldByName('CKBH').AsString+''' and KCLL.CFMID<>''NO'' and KCLL.CFMDate>='''+KCRK_ST.Text+''' and KCLLS.CLBH='''+KCLLS.FieldByName('CLBH').AsString+''' and KCLLS.LLNO='''+KCLLS.FieldByName('LLNO').AsString+''' and KCLLS.DFL='''+KCLLS.FieldByName('DFL').AsString+''' and KCLLS.SCBH='''+KCLLS.FieldByName('SCBH').AsString+''' ');
      SQL.Add('Group by KCLLS.LLNO, KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH, KCLLS.Qty having KCLLS.Qty>Sum(IsNull(KCRKCX.RKQty,0)) ) KCLLS');
      SQL.Add('left join (');

      SQL.Add('select KCCLMONTH.KCYEAR as RKNO,KCCLMONTH.CLBH as CLDH,KCCLMONTH.KCMONTH as CGBH,KCCLMONTH.HGLB as RKSB,null as CNO,KCCLMONTH.HGLB ,Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty, ');
      SQL.Add('       Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty,GetDate()-360 as RKDate ');
      SQL.Add('from KCCLMONTH_HG as KCCLMONTH ');
      SQL.Add('left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty from  '+KCRKCX.Text+' as KCRKCX where KCRKCX.RKNO='''+iYear.Text+''' and KCRKCX.CLDH='''+KCLLS.FieldByName('CLBH').AsString+'''  and KCRKCX.CGBH='''+iMonth.Text+'''   Group by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX on KCRKCX.RKNO=KCCLMONTH.KCYEAR ');
      SQL.Add('            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLMONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCLMONTH.CKBH   ');
      SQL.Add('where KCCLMONTH.KCYEAR='''+iYear.Text+''' and KCCLMONTH.KCMONTH='''+iMonth.Text+''' and KCCLMONTH.CKBH='''+KCLLS.FieldByName('CKBH').AsString+''' and KCCLMONTH.CLBH='''+KCLLS.FieldByName('CLBH').AsString+''' ');
      SQL.Add('Group by KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.HGLB,KCCLMONTH.CLBH having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0 ');

      SQL.Add('union all');
      SQL.Add('Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB,Sum(KCRKS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty,KCRK.USERDATE as RKDate from KCRKS');
      SQL.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  '+KCRKCX.Text+' as KCRKCX where KCRKCX.RKSB<>''JGRK'' and KCRKCX.CLDH='''+KCLLS.FieldByName('CLBH').AsString+'''  Group by RKNO,CLDH,CGBH,RKSB  ) KCRKCX  on KCRKCX.RKNO=KCRKS.RKNO and KCRKCX.CLDH=KCRKS.CLBH and KCRKCX.CGBH=KCRKS.CGBH and KCRKCX.RKSB=KCRKS.RKSB');
      SQL.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between '''+KCRK_ST.Text+''' and '''+KCRK_ED.Text+'''  and KCRK.CKBH='''+KCLLS.FieldByName('CKBH').AsString+'''  and KCRKS.CLBH='''+KCLLS.FieldByName('CLBH').AsString+'''');
      SQL.Add('Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB,KCRK.USERDATE');
      SQL.Add('having Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
      SQL.Add('Union all');
      SQL.Add('select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB as CGBH,''JGRK'' as RKSB,null as CNO,''GC'' as HGLB,Sum(JGZLS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty,JGZL.CFMDate1 as RKDate from JGZLS');
      SQL.Add('inner join JGZL on JGZL.JGNO=JGZLS.JGNO');
      SQL.Add('left join  (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  '+KCRKCX.Text+' as KCRKCX where KCRKCX.RKSB=''JGRK'' and KCRKCX.CLDH='''+KCLLS.FieldByName('CLBH').AsString+'''  Group by RKNO,CLDH,CGBH,RKSB  ) KCRKCX  on KCRKCX.RKNO=JGZLS.JGNO and KCRKCX.CLDH=JGZLS.CLBH and KCRKCX.CGBH=JGZLS.ZMLB and KCRKCX.RKSB=''JGRK''');
      SQL.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.CFMID1<>''NO'' and JGZL.CKBH='''+KCLLS.FieldByName('CKBH').AsString+''' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+KCLL_ST.Text+''' and '''+KCLL_ED.Text+'''  and JGZLS.CLBH='''+KCLLS.FieldByName('CLBH').AsString+'''');
      SQL.Add('Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZL.CFMDate1 ');
      SQL.Add('having Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
      SQL.Add(') KCRKS on KCRKS.CLDH=KCLLS.CLBH and KCRKS.CGBH<>KCLLS.SCBH');
      SQL.Add('where Qty>0  and RKNO is not null ');
      SQl.Add(')  KCRKS order by LLNO,CLBH,DFL,SCBH,Sort,RKDate,RKNO ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
      //
      
      if KCRKCXQry.RecordCount>0 then
        LLQty:=KCLLS.fieldbyname('Qty').Value-KCRKCXQry.FieldByName('CXRKQty').Value
      else
        LLQty:=KCLLS.fieldbyname('Qty').Value;
      //funcObj.WriteErrorLog(inttostr(i)+'.# '+KCLLS.fieldbyname('LLNO').AsString+' '+KCLLS.fieldbyname('CLBH').AsString+' '+KCLLS.fieldbyname('DFL').AsString+' '+KCLLS.fieldbyname('SCBH').AsString+' Qty:'+floattostr(LLQty));
      if  KCRKCXQry.fieldbyname('RKNO').AsString<>'' then
      begin
        if LLQty>0 then
        begin
          if KCRKCXQry.RecordCount>0 then
          begin
            for j:=0 to KCRKCXQry.RecordCount-1 do
            begin
              //funcObj.WriteErrorLog(' @'+KCRKCXQry.fieldbyname('RKNO').AsString+' '+KCRKCXQry.fieldbyname('CLDH').AsString+' '+KCRKCXQry.fieldbyname('CGBH').AsString+' '+KCRKCXQry.fieldbyname('RKSB').AsString+' RKQty:'+KCRKCXQry.FieldByName('RemQty').AsString+' RemQty:'+KCRKCXQry.FieldByName('RemQty').AsString);

              if  KCRKCXQry.FieldByName('RemQty').Value>=LLQty then
              begin
                UseQty:=LLQty;
                LLQty:=LLQty-UseQty;
              end
              else if  KCRKCXQry.FieldByName('RemQty').Value<LLQty then
              begin
                UseQty:=KCRKCXQry.FieldByName('RemQty').Value;
                LLQty:=LLQty-UseQty;
              end;
              if RoundTo(UseQty,-4)>0 then
              begin
                //funcObj.WriteErrorLog(' $$:'+floattostr(UseQty));
                with EXEQry do
                begin
                  Active:=false;
                  SQL.Clear;
                  SQL.Add('Insert into '+KCRKCX.Text+' ');
                  SQL.Add('  (LLNO ,CLBH ,DFL ,SCBH, LLQty, RKNO, CLDH, CGBH, RKSB, RKQty,HGLB, USERID, USERDATE, YN, CKBH) ');
                  SQL.Add('Values ');
                  SQL.Add('  ('''+KCRKCXQry.fieldbyname('LLNO').AsString+''' ,'''+KCRKCXQry.fieldbyname('CLBH').AsString+''' ,'''+KCRKCXQry.fieldbyname('DFL').AsString+''' ,'''+KCRKCXQry.fieldbyname('SCBH').AsString+''', '+KCRKCXQry.fieldbyname('Qty').AsString+', ');
                  SQL.Add(''''+KCRKCXQry.fieldbyname('RKNO').AsString+''', '''+KCRKCXQry.fieldbyname('CLDH').AsString+''','''+KCRKCXQry.fieldbyname('CGBH').AsString+''', '''+KCRKCXQry.fieldbyname('RKSB').AsString+''', '+floattostr(UseQty)+',');
                  SQL.Add(''''+KCRKCXQry.fieldbyname('HGLB').AsString+''','''+KCLLS.fieldbyname('USERID').AsString+''', '''+Copy(KCLLS.fieldbyname('USERDATE').AsString,1,10)+''', 1,'''+KCLLS.fieldbyname('CKBH').AsString+''') ');
                  //funcObj.WriteErrorLog(sql.Text);
                  EXEQry.ExecSQL();
                end;
              end;
              //if i=42 then funcObj.WriteErrorLog(KCRKCXQry.sql.Text);
              if LLQty<=0 then break;
              KCRKCXQry.Next;
            end;
          end;
        end;
      end;

      //
    end;
    //
    KCLLS.Next;
  end;
  //
  showmessage('ok');
  except
    on E:Exception do
    begin
       funcObj.WriteErrorLog(EXEQry.SQL.Text);
    end;
  end;
end;

procedure TKiemtraKCRKCX.Button3Click(Sender: TObject);
var SQLStr:string;
    i,j:integer;
    LLQty,RemQty,UseQty:double;
    HGLBCBText:String;
begin

  //=============
  with KCLLS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select JGZL.CKBH,JGZLS.JGNO ,JGZLS.CLBH,''JGCK'' as  DFL,JGZLS.ZMLB as  SCBH,round(convert(float,JGZLS.Qty)*convert(float,JGDet.Qty),2)  as Qty,Sum(KCRKCX.RKQty) as CXRKQty,');
    SQL.Add('      Max(JGZL.USERID) as USERID,Max(JGZL.CFMDate1) as USERDATE,Max(KCRKCX.YN) as YN from JGZLS ');
    SQL.Add('left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS,JGZL where JGZLS.JGNO=JGZL.JGNO and JGZL.CFMID1<>''NO'' and JGZL.CFMDate1>='''+KCLL_ST.Text+''' and JGZL.CFMDate1<='''+KCLL_ED.Text+'''  and   JGZLS.ZMLB=''ZZZZZZZZZZ'') JGDet on JGDet.JGNO=JGZLS.JGNO  and JGDet.CLBH=JGZLS.CLBH ');
    SQL.Add('left join '+KCRKCX.Text+' as KCRKCX on KCRKCX.LLNO=JGZLS.JGNO and KCRKCX.CLBH=JGZLS.CLBH and KCRKCX.DFL=''JGCK'' and KCRKCX.SCBH=JGZLS.ZMLB');
    SQL.Add('where JGZL.CFMID1<>''NO'' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+KCLL_ST.Text+''' and '''+KCLL_ED.Text+''' and JGZLS.ZMLB<>''ZZZZZZZZZZ'' ');   // --and JGZLS.JGNO=:JGNO and JGZLS.CLBH=:CLBH and   JGZLS.ZMLB=:ZMLB
    if CKBH.Text<>'' then
    SQL.Add('and JGZL.CKBH='''+CKBH.Text+''' ');
    SQL.Add('and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'' ');
    SQL.Add('Group by JGZL.CKBH,JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty,JGDet.Qty  having round(convert(float,JGZLS.Qty)*convert(float,JGDet.Qty),2)>Sum(IsNull(KCRKCX.RKQty,0))');
    funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  funcObj.WriteErrorLog('');

  //
  try
  for i:=0 to KCLLS.RecordCount-1 do
  begin
    Application.ProcessMessages;
    Label1.Caption:=inttostr(i+1)+'/'+inttostr(KCLLS.RecordCount);
    with EXEQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select top 1 ZLBH from JGZLSS where JGNO='''+KCLLS.FieldByName('JGNO').AsString+''' ');
      Active:=true;
      if Copy(EXEQry.FieldByName('ZLBH').AsString,1,1)='Y' then HGLBCBText:='NK' else HGLBCBText:='KD';
      Active:=false;
    end;
    //
    with KCRKCXQry do
    begin
      Active:=false;
      SQL.Clear;
      //===============================================
      if HGLBCBText='NK' then
      begin
        SQL.Add('select KCRKS.*,KCRKS.HGLB,case when KCRKS.HGLB=''NK'' then 1  ');
        SQL.Add('                              when KCRKS.HGLB=''HD'' then 2 ');
        SQL.Add('                              when KCRKS.HGLB=''GC'' then 3 ');
        SQL.Add('                              when IsNull(KCRKS.HGLB,''ZZZZ'')=''ZZZZ'' then 4 ');
        SQL.Add('                              when KCRKS.HGLB=''XT'' then 5 ');
        SQL.Add('                              when KCRKS.HGLB=''KD'' then 6 ');
        SQL.Add('                              else 7  end sort from ( ');
      end else if HGLBCBText='KD' then
      begin
        SQL.Add('select KCRKS.*,KCRKS.HGLB,case when KCRKS.HGLB=''KD'' then 1  ');
        SQL.Add('                              when KCRKS.HGLB=''HD'' then 2 ');
        SQL.Add('                              when KCRKS.HGLB=''GC'' then 3 ');
        SQL.Add('                              when KCRKS.HGLB=''XT'' then 4 ');
        SQL.Add('                              when IsNull(KCRKS.HGLB,''ZZZZ'')=''ZZZZ''  then 5 ');
        SQL.Add('                              when KCRKS.HGLB=''NK'' then 6 ');
        SQL.Add('                              else 7  end sort from ( ');
      end else
      begin
        SQL.Add('select KCRKS.*,KCRKS.HGLB,case KCRKS.HGLB='''+HGLBCBText+''' then 1  ');
        SQL.Add('                              when KCRKS.HGLB=''KD'' then 3 ');
        SQL.Add('                              when KCRKS.HGLB=''NK'' then 4 ');
        SQL.Add('                              else 2  end sort from ( ');
      end;
      SQL.Add('select * from (');
      SQL.Add('select JGZLS.JGNO ,JGZLS.CLBH,''JGCK'' as  DFL,JGZLS.ZMLB as  SCBH,round(convert(float,JGZLS.Qty)*convert(float,JGDet.Qty),2)   as Qty,Sum(IsNull(KCRKCX.RKQty,0)) as CXRKQty,');
      SQL.Add('       Max(KCRKCX.USERID) as USERID,Max(KCRKCX.USERDATE) as USERDATE,Max(KCRKCX.YN) as YN from JGZLS ');
      SQL.Add('left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      SQL.Add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS,JGZL where JGZLS.JGNO=JGZL.JGNO and JGZL.CFMID1<>''NO'' and JGZL.CFMDate1>=''2017/06/01''  and   JGZLS.ZMLB=''ZZZZZZZZZZ'') JGDet on JGDet.JGNO=JGZLS.JGNO  and JGDet.CLBH=JGZLS.CLBH ');
      SQL.Add('left join '+KCRKCX.Text+' as KCRKCX on KCRKCX.LLNO=JGZLS.JGNO and KCRKCX.CLBH=JGZLS.CLBH and KCRKCX.DFL=''JGCK'' and KCRKCX.SCBH=JGZLS.ZMLB');
      SQL.Add('where JGZL.CKBH='''+KCLLS.FieldByName('CKBH').AsString+'''  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+KCLL_ST.Text+''' and '''+KCLL_ED.Text+''' and JGZLS.ZMLB<>''ZZZZZZZZZZ'' and JGZLS.JGNO='''+KCLLS.FieldByName('JGNO').AsString+''' and JGZLS.CLBH='''+KCLLS.FieldByName('CLBH').AsString+''' and   JGZLS.ZMLB='''+KCLLS.FieldByName('SCBH').AsString+''' ');   // --
      //
      SQL.Add('Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB,JGZLS.Qty,JGDet.Qty  having (JGZLS.Qty*JGDet.Qty)>Sum(IsNull(KCRKCX.RKQty,0)) ) JGZLS');
      SQL.Add('left join (');

      SQL.Add('select KCCLMONTH.KCYEAR as RKNO,KCCLMONTH.CLBH as CLDH,KCCLMONTH.KCMONTH as CGBH,KCCLMONTH.HGLB as RKSB,null as CNO,KCCLMONTH.HGLB ,Sum(KCCLMONTH.QTY) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty ');
      SQL.Add('from KCCLMONTH_HG as KCCLMONTH ');
      SQL.Add('left join  (select RKNO,CLDH,CGBH,RKSB,CKBH,Sum(RKQty) as RKQty from  '+KCRKCX.Text+' as KCRKCX where KCRKCX.RKNO='''+iYear.Text+''' and KCRKCX.CLDH='''+KCLLS.FieldByName('SCBH').AsString+'''   and KCRKCX.CGBH='''+iMonth.Text+'''   Group by RKNO,CLDH,CGBH,RKSB,CKBH  ) KCRKCX on KCRKCX.RKNO=KCCLMONTH.KCYEAR ');
      SQL.Add('            and KCRKCX.CLDH=KCCLMONTH.CLBH and KCRKCX.CGBH=KCCLMONTH.KCMONTH and KCRKCX.RKSB=KCCLMONTH.HGLB and KCRKCX.CKBH=KCCLMONTH.CKBH   ');
      SQL.Add('where KCCLMONTH.KCYEAR='''+iYear.Text+''' and KCCLMONTH.KCMONTH='''+iMonth.Text+''' and KCCLMONTH.CKBH='''+KCLLS.FieldByName('CKBH').AsString+''' and KCCLMONTH.CLBH='''+KCLLS.FieldByName('SCBH').AsString+''' ');
      SQL.Add('Group by KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.HGLB,KCCLMONTH.CLBH having Sum(KCCLMONTH.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0 ');
      //
      SQL.Add('union all');
      SQL.Add('Select  KCRKS.RKNO,KCRKS.CLBH as CLDH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB,Sum(KCRKS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from KCRKS');
      SQL.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('left join (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  '+KCRKCX.Text+' as KCRKCX where KCRKCX.RKSB<>''JGRK'' and KCRKCX.CLDH='''+KCLLS.FieldByName('SCBH').AsString+'''  Group by RKNO,CLDH,CGBH,RKSB  ) KCRKCX  on KCRKCX.RKNO=KCRKS.RKNO and KCRKCX.CLDH=KCRKS.CLBH and KCRKCX.CGBH=KCRKS.CGBH and KCRKCX.RKSB=KCRKS.RKSB');
      SQL.Add('where KCRK.USERDATE>='''+KCRK_ST.Text+''' and KCRK.USERDATE<='''+KCRK_ED.Text+'''  and KCRK.CKBH='''+KCLLS.FieldByName('CKBH').AsString+'''  and KCRKS.CLBH='''+KCLLS.FieldByName('SCBH').AsString+'''');
      SQL.Add('Group by KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CNO,KCRK.HGLB');
      SQL.Add('having Sum(KCRKS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
      SQL.Add('Union all');
      SQL.Add('select JGZLS.JGNO,JGZLS.CLBH as CLDH,JGZLS.ZMLB as CGBH,''JGRK'' as RKSB,null as CNO,''GC'' as HGLB,Sum(JGZLS.Qty) as RKQty,Sum(IsNull(KCRKCX.RKQty,0)) as UsdQty,Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0)) as RemQty from JGZLS');
      SQL.Add('inner join JGZL on JGZL.JGNO=JGZLS.JGNO');
      SQL.Add('left join  (select RKNO,CLDH,CGBH,RKSB,Sum(RKQty) as RKQty from  '+KCRKCX.Text+' as KCRKCX where KCRKCX.RKSB=''JGRK'' and KCRKCX.CLDH='''+KCLLS.FieldByName('SCBH').AsString+'''  Group by RKNO,CLDH,CGBH,RKSB  ) KCRKCX  on KCRKCX.RKNO=JGZLS.JGNO and KCRKCX.CLDH=JGZLS.CLBH and KCRKCX.CGBH=JGZLS.ZMLB and KCRKCX.RKSB=''JGRK''');
      SQL.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' and JGZL.CFMID1<>''NO'' and JGZL.CKBH='''+KCLLS.FieldByName('CKBH').AsString+'''  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+KCLL_ST.Text+''' and '''+KCLL_ED.Text+''' and JGZLS.CLBH='''+KCLLS.FieldByName('SCBH').AsString+'''');
      SQL.Add('Group by JGZLS.JGNO,JGZLS.CLBH,JGZLS.ZMLB ');
      SQL.Add('having Sum(JGZLS.Qty)-Sum(IsNull(KCRKCX.RKQty,0))>0');
      SQL.Add(') KCRKS on KCRKS.CLDH=JGZLS.SCBH ');
      SQL.Add('where Qty>0  and JGNO is not null ');
      SQl.Add(')  KCRKS order by JGNO,CLBH,DFL,SCBH,Sort,RKNO ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
      //

      if KCRKCXQry.RecordCount>0 then
         LLQty:=KCLLS.fieldbyname('Qty').Value-KCRKCXQry.FieldByName('CXRKQty').Value
      else
         LLQty:=KCLLS.fieldbyname('Qty').Value;
      //funcObj.WriteErrorLog(inttostr(i)+'.# '+KCLLS.fieldbyname('LLNO').AsString+' '+KCLLS.fieldbyname('CLBH').AsString+' '+KCLLS.fieldbyname('DFL').AsString+' '+KCLLS.fieldbyname('SCBH').AsString+' Qty:'+floattostr(LLQty));
      if  KCRKCXQry.fieldbyname('RKNO').AsString<>'' then
      begin
        if LLQty>0 then
        begin
          for j:=0 to KCRKCXQry.RecordCount-1 do
          begin
            //funcObj.WriteErrorLog(' @'+KCRKCXQry.fieldbyname('RKNO').AsString+' '+KCRKCXQry.fieldbyname('CLDH').AsString+' '+KCRKCXQry.fieldbyname('CGBH').AsString+' '+KCRKCXQry.fieldbyname('RKSB').AsString+' RKQty:'+KCRKCXQry.FieldByName('RemQty').AsString+' RemQty:'+KCRKCXQry.FieldByName('RemQty').AsString);
            if  KCRKCXQry.FieldByName('RemQty').Value>=LLQty then
            begin
              UseQty:=LLQty;
              LLQty:=LLQty-UseQty;
            end
            else if  KCRKCXQry.FieldByName('RemQty').Value<LLQty then
            begin
              UseQty:=KCRKCXQry.FieldByName('RemQty').Value;
              LLQty:=LLQty-UseQty;
            end;
            if RoundTo(UseQty,-4)>0 then
            begin
              //funcObj.WriteErrorLog(' $$:'+floattostr(UseQty));
              with EXEQry do
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Insert into '+KCRKCX.Text+' ');
                SQL.Add('  (LLNO ,CLBH ,DFL ,SCBH, LLQty, RKNO, CLDH, CGBH, RKSB, RKQty, HGLB, USERID, USERDATE, YN, CKBH) ');
                SQL.Add('Values ');
                SQL.Add('  ('''+KCRKCXQry.fieldbyname('JGNO').AsString+''' ,'''+KCRKCXQry.fieldbyname('CLBH').AsString+''' ,'''+KCRKCXQry.fieldbyname('DFL').AsString+''' ,'''+KCRKCXQry.fieldbyname('SCBH').AsString+''', '+KCRKCXQry.fieldbyname('Qty').AsString+', ');
                SQL.Add(''''+KCRKCXQry.fieldbyname('RKNO').AsString+''', '''+KCRKCXQry.fieldbyname('CLDH').AsString+''','''+KCRKCXQry.fieldbyname('CGBH').AsString+''', '''+KCRKCXQry.fieldbyname('RKSB').AsString+''', '+floattostr(UseQty)+', ');
                SQL.Add(''''+KCRKCXQry.fieldbyname('HGLB').AsString+''','''+KCLLS.fieldbyname('USERID').AsString+''', '''+Copy(KCLLS.fieldbyname('USERDATE').AsString,1,10)+''', 1,'''+KCLLS.fieldbyname('CKBH').AsString+''') ');
                //funcObj.WriteErrorLog(sql.Text);
                EXEQry.ExecSQL();
              end;
            end;
            //if i=42 then funcObj.WriteErrorLog(KCRKCXQry.sql.Text);
            if LLQty<=0 then break;
            KCRKCXQry.Next;
          end;
        end;
      end;
       
      //
    end;
    //
    KCLLS.Next;
  end;
  //
  showmessage('ok');
  except
    on E:Exception do
    begin
       funcObj.WriteErrorLog(EXEQry.SQL.Text);
    end;
  end;
  //

end;


procedure TKiemtraKCRKCX.XoaKCRKCX1Click(Sender: TObject);
var i:integer;
begin

 if Query1.Active=false then exit;
 if messagedlg('Delete KCRKCX?',mtCustom, [mbYes,mbNO], 0)=mrYes then
 begin
   Query1.First;
   for i:=0 to Query1.RecordCount-1 do
   begin
     with TempQry do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Delete from KCRKCX');
       SQL.Add('where exists (');
       SQL.Add('select  KCLL.CKBH,KCLLS.LLNO, KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH from KCLLS');
       SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
       SQL.Add('where KCLL.CFMID<>''NO'' and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+STDATE+''' and '''+EDDATE+''' and KCLLS.Qty>0  ');
       SQL.Add('and KCLL.CKBH='''+CKBox.Text+''' and KCLLS.CLBH='''+Query1.FieldByName('CLDH').AsString+''' ');
       SQL.Add('and KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH');
       SQL.Add('Group by KCLL.CKBH,KCLLS.LLNO, KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH');
       SQL.Add(')');
       ExecSQL();
     end;
     Query1.Next;
   end;
   Showmessage('OK');
 end;

end;

procedure TKiemtraKCRKCX.MenuItem2Click(Sender: TObject);
begin
 if Query5.Active=false then exit;
 if messagedlg('Delete KCRKCX?',mtCustom, [mbYes,mbNO], 0)=mrYes then
 begin
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Delete from KCRKCX where LLNO in (');
     SQL.Add('select KCRKCX.LLNO from KCRKCX ');
     SQL.Add('left join KCLLS on KCLLS.LLNO=KCRKCX.LLNO and KCLLS.CLBH=KCRKCX.CLBH and KCLLS.DFL=KCRKCX.DFL and KCLLS.SCBH=KCRKCX.SCBH ');
     SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO and KCLL.CFMID<>''NO'' ');
     SQL.Add('where convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)) between '''+STDATE+''' and '''+EDDATE+''' and KCRKCX.CKBH='''+CKBox.Text+''' ');
     SQL.Add('      and KCRKCX.DFL<>''JGCK'' ');
     SQL.Add('      and KCLL.LLNO is null ');
     SQL.Add('     Group by KCRKCX.LLNO)');
     ExecSQL();
   end;
   Showmessage('OK');
 end;
end;

procedure TKiemtraKCRKCX.MenuItem3Click(Sender: TObject);
begin
 if Query6.Active=false then exit;
 if messagedlg('Delete KCRKCX?',mtCustom, [mbYes,mbNO], 0)=mrYes then
 begin
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Delete from KCRKCX where LLNO in (');
     SQL.Add('select KCRKCX.LLNO from KCRKCX ');
     SQL.Add('left join JGZLS on JGZLS.JGNO=KCRKCX.LLNO and JGZLS.CLBH=KCRKCX.CLBH and ''JGCK''=KCRKCX.DFL and JGZLS.ZMLB=KCRKCX.SCBH');
     SQL.Add('left join JGZL on JGZL.JGNO=JGZLS.JGNO and JGZL.CFMID1<>''NO'' ');
     SQL.Add('where convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)) between '''+STDATE+''' and '''+EDDATE+''' and KCRKCX.CKBH='''+CKBox.Text+''' ');
     SQL.Add('      and KCRKCX.DFL=''JGCK'' ');
     SQL.Add('      and JGZLS.JGNO is null ');
     SQL.Add('     Group by KCRKCX.LLNO)');
     ExecSQL();
   end;
   Showmessage('OK');
 end;
end;

procedure TKiemtraKCRKCX.MenuItem4Click(Sender: TObject);
begin
 if Query7.Active=false then exit;
 if messagedlg('Delete KCRKCX?',mtCustom, [mbYes,mbNO], 0)=mrYes then
 begin
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Delete from KCRKCX where CLBH<>CLDH and DFL<>''JGCK''  ');
     SQL.Add('and convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)) between '''+STDATE+''' and '''+EDDATE+''' and CKBH='''+CKBox.Text+''' ');
     ExecSQL();
   end;
   Showmessage('OK');
 end;
end;

procedure TKiemtraKCRKCX.MenuItem5Click(Sender: TObject);
begin
 if Query8.Active=false then exit;
 if messagedlg('Delete KCRKCX?',mtCustom, [mbYes,mbNO], 0)=mrYes then
 begin
   with TempQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Delete from KCRKCX where SCBH<>CLDH and DFL=''JGCK''   ');
     SQL.Add('and convert(smalldatetime,convert(varchar,KCRKCX.USERDATE,111)) between '''+STDATE+''' and '''+EDDATE+''' and CKBH='''+CKBox.Text+''' ');
     ExecSQL();
   end;
   Showmessage('OK');
 end;

end;

procedure TKiemtraKCRKCX.MenuItem1Click(Sender: TObject);
var i:integer;
begin

 if Query3.Active=false then exit;
 if messagedlg('Delete KCRKCX?',mtCustom, [mbYes,mbNO], 0)=mrYes then
 begin
   Query3.First;
   for i:=0 to Query3.RecordCount-1 do
   begin
     with TempQry do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Delete from KCRKCX');
       SQL.Add('where RKNO='''+Query3.fieldByName('RKNO').AsString+''' and CLDH='''+Query3.fieldByName('CLDH').AsString+''' and CGBH='''+Query3.fieldByName('CGBH').AsString+''' and RKSB='''+Query3.fieldByName('RKSB').AsString+''' ');
       SQL.Add('and CKBH='''+CKBox.Text+''' ');
       ExecSQL();
     end;
     Query3.Next;
   end;
   Showmessage('OK');
 end;


end;

procedure TKiemtraKCRKCX.SQLPrint1Click(Sender: TObject);
begin
 funcobj.WriteErrorLog(Query3.SQL.Text);
end;

procedure TKiemtraKCRKCX.InSQL1Click(Sender: TObject);
begin
 funcobj.WriteErrorLog(Query5.SQL.Text);
end;

procedure TKiemtraKCRKCX.InSQL2Click(Sender: TObject);
begin
  funcobj.WriteErrorLog(Query6.SQL.Text);
end;

procedure TKiemtraKCRKCX.InSQL3Click(Sender: TObject);
begin
  funcobj.WriteErrorLog(Query7.SQL.Text);
end;

procedure TKiemtraKCRKCX.InSQL4Click(Sender: TObject);
begin
  funcobj.WriteErrorLog(Query8.SQL.Text);
end;

procedure TKiemtraKCRKCX.InSQL5Click(Sender: TObject);
begin
  funcobj.WriteErrorLog(Query1.SQL.Text);
end;

procedure TKiemtraKCRKCX.MenuItem7Click(Sender: TObject);
begin
 funcobj.WriteErrorLog(Query9.SQL.Text);
end;

procedure TKiemtraKCRKCX.MenuItem6Click(Sender: TObject);
var i:integer;
begin

 if Query9.Active=false then exit;
 if messagedlg('Delete KCRKCX!!!?',mtCustom, [mbYes,mbNO], 0)=mrYes then
 begin
   Query9.First;
   for i:=0 to Query9.RecordCount-1 do
   begin
     with TempQry do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Delete from KCRKCX');
       SQL.Add('where RKNO='''+Query9.fieldByName('RKNO').AsString+''' and CLDH='''+Query9.fieldByName('CLDH').AsString+''' and CGBH='''+Query9.fieldByName('CGBH').AsString+''' and RKSB='''+Query9.fieldByName('RKSB').AsString+''' ');
       SQL.Add('and CKBH='''+CKBox.Text+''' ');
       funcObj.WriteErrorLog(sql.Text);
       ExecSQL();
     end;
     Query9.Next;
   end;
   Showmessage('OK');
 end;
end;

end.
