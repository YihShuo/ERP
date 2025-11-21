unit TraceListSample1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellAPI,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, ExtCtrls,comobj,DBGridEhImpExp,
  ComCtrls, GridsEh, DBGridEh, Buttons, Menus;

type
  TTraceListSample = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Button1: TButton;
    ArticleEdit: TEdit;
    POEdit: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    MatEdit: TEdit;
    Button2: TButton;
    CheckBox2: TCheckBox;
    DTP1: TDateTimePicker;
    Label9: TLabel;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    SeasonEdit: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Label3: TLabel;
    lbl1: TLabel;
    SupEdit: TEdit;
    chk1: TCheckBox;
    dtp3: TDateTimePicker;
    dtp4: TDateTimePicker;
    lbl2: TLabel;
    chk2: TCheckBox;
    SaveDialog1: TSaveDialog;
    ckbsel: TCheckBox;
    PageControl1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    TS3: TTabSheet;
    DBGrid2: TDBGridEh;
    DS2: TDataSource;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    CurrencyField1: TCurrencyField;
    StringField7: TStringField;
    CurrencyField2: TCurrencyField;
    FloatField2: TFloatField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    DateTimeField5: TDateTimeField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    DateTimeField6: TDateTimeField;
    StringField20: TStringField;
    StringField21: TStringField;
    DS3: TDataSource;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1MEMO1: TStringField;
    Query1REMARK: TStringField;
    Query1ETA: TDateTimeField;
    Query1memo: TStringField;
    Query1BILLNO: TStringField;
    Query1invoice: TStringField;
    Query1WAY: TStringField;
    Query1SEASON: TStringField;
    Query1PURPOSE: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1ZSBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1CGDATE: TDateTimeField;
    Query1yjdz: TStringField;
    Query1COUNTRY: TStringField;
    Query1RKQTY: TCurrencyField;
    Query1RKdate: TDateTimeField;
    Query1Qty: TCurrencyField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query2USACC: TCurrencyField;
    Query2VNACC: TCurrencyField;
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Splitter1: TSplitter;
    Query3: TQuery;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    DateTimeField7: TDateTimeField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField29: TStringField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    DateTimeField8: TDateTimeField;
    StringField36: TStringField;
    StringField37: TStringField;
    CurrencyField5: TCurrencyField;
    DateTimeField9: TDateTimeField;
    CurrencyField6: TCurrencyField;
    StringField38: TStringField;
    DateTimeField10: TDateTimeField;
    DateTimeField11: TDateTimeField;
    DBGrid3: TDBGridEh;
    Query3RKNO: TStringField;
    DS4: TDataSource;
    Query4: TQuery;
    DS5: TDataSource;
    Query5: TQuery;
    Query4CGNO: TStringField;
    Query4CLBH: TStringField;
    Query4ZLBH: TStringField;
    Query4XXCC: TStringField;
    Query4Stage: TStringField;
    Query4Qty: TCurrencyField;
    Query4CLSL: TCurrencyField;
    Query4DelQty: TCurrencyField;
    Query4YQDate: TDateTimeField;
    Query4CFMDate: TDateTimeField;
    Query4USERDate: TDateTimeField;
    Query4USERID: TStringField;
    Query4YN: TStringField;
    Query4XIEMING: TStringField;
    Query4FD: TStringField;
    Query5RKNO: TStringField;
    Query5Qty: TCurrencyField;
    Query5USPrice: TCurrencyField;
    Query5USACC: TCurrencyField;
    Query5VNPrice: TCurrencyField;
    Query5VNACC: TFloatField;
    Query5USERID: TStringField;
    Query5USERDATE: TDateTimeField;
    Query5RKdate: TDateTimeField;
    Query3USACC: TCurrencyField;
    Query3VNACC: TCurrencyField;
    Query1BILLNO_2: TStringField;
    Query1invoice_2: TStringField;
    Query1WAY_2: TStringField;
    DS6: TDataSource;
    Query6: TQuery;
    Query6CINO: TStringField;
    Query6GSBH: TStringField;
    Query6ZSBH: TStringField;
    Query6CIDate: TDateTimeField;
    Query6USERDate: TDateTimeField;
    Query6USERID: TStringField;
    Query6CILX: TStringField;
    Query6YN: TStringField;
    Query6Invoice: TStringField;
    Query6MEMO: TStringField;
    Query6BillNO: TStringField;
    Query6transport: TStringField;
    Query6Custom: TStringField;
    Query6ETA: TDateTimeField;
    Query6Qty: TCurrencyField;
    Query6Pmark: TIntegerField;
    Query2BILLNO_2: TStringField;
    Query2invoice_2: TStringField;
    Query2WAY_2: TStringField;
    UpdateSQL1: TUpdateSQL;
    Query1YQDate: TDateTimeField;
    Query1Article_all: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    Edit6: TEdit;
    BBTT2: TBitBtn;
    Label7: TLabel;
    BBTT1: TBitBtn;
    Query1Custom: TStringField;
    Query1Custom_2: TStringField;
    Edit8: TEdit;
    BBTT4: TBitBtn;
    Label8: TLabel;
    Chk_PDT: TCheckBox;
    Label10: TLabel;
    Edit9: TEdit;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Label11: TLabel;
    Cb_DevTP: TComboBox;
    Label12: TLabel;
    CB_Category: TComboBox;
    Chk_ETD: TCheckBox;
    Query1All_Size: TStringField;
    Query1All_Article: TStringField;
    Panel6: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh2: TDBGridEh;
    Splitter3: TSplitter;
    DBGridEh3: TDBGridEh;
    Query1Location: TStringField;
    Query1File_Name: TStringField;
    Query1NG_Reason: TStringField;
    Query1NG_ETD: TDateTimeField;
    Query1NG_ETA: TDateTimeField;
    Query1NG_Result: TStringField;
    Query2Stage: TStringField;
    Panel3: TPanel;
    Chk_ShowPage2: TCheckBox;
    Panel4: TPanel;
    Chk_ShowPage3: TCheckBox;
    Query1FreeQty_: TCurrencyField;
    Query1Charge_: TCurrencyField;
    Query1Q_USPrice_: TCurrencyField;
    Query1Q_VNPrice_: TCurrencyField;
    Query1USPrice_: TCurrencyField;
    Query1VNPrice_: TCurrencyField;
    Qry_zszlSamplePayment: TQuery;
    Qry_zszlSamplePaymentFreeQty: TCurrencyField;
    Qry_zszlSamplePaymentCharge: TCurrencyField;
    Qry_MaterialPrice: TQuery;
    Qry_MaterialPriceSamplePrice: TCurrencyField;
    Qry_MaterialPriceSamplePriceVN: TCurrencyField;
    Qry_MaterialPriceEffectiveDate: TDateTimeField;
    Qry_SamplePayment_Unit: TQuery;
    CurrencyField7: TCurrencyField;
    CurrencyField8: TCurrencyField;
    Query1USACC_: TCurrencyField;
    Query1VNACC_: TCurrencyField;
    Query1CWHL: TCurrencyField;
    Chk_Tool: TCheckBox;
    Panel5: TPanel;
    Chk_ShowERPPrice: TCheckBox;
    Query5RKSB: TStringField;
    Query5HandCarry_USPrice: TCurrencyField;
    Query5HandCarry_USACC: TCurrencyField;
    Query1Skin_Size: TCurrencyField;
    Query1Skin_Quality: TCurrencyField;
    Query1QC_SKIN: TCurrencyField;
    Query1NG_Remark: TStringField;
    Query1C_window: TStringField;
    Edit7: TEdit;
    BitBtn1: TBitBtn;
    Label13: TLabel;
    Query1QC_Inspection1: TStringField;
    Query1QC_Inspection2: TStringField;
    mnuModify: TMenuItem;
    mnuSave: TMenuItem;
    mnuCancel: TMenuItem;
    N1: TMenuItem;
    Query_tem: TQuery;
    Query1NG_Date: TDateTimeField;
    mnuExcelQC: TMenuItem;
    tmpQry: TQuery;
    BitBtn2: TBitBtn;
    StageEdit: TEdit;
    Edit10: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Query2CalcFields(DataSet: TDataSet);
    procedure BBTT2Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT4Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure mnuModifyClick(Sender: TObject);
    procedure mnuCancelClick(Sender: TObject);
    procedure mnuSaveClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure mnuExcelQCClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TraceListSample: TTraceListSample;

implementation

uses main1, TraceListSample_Style1, TraceListSample_Purchaser1,
  TraceListSample_Country1,FunUnit, FDStatus_Article1;

{$R *.dfm}
Function GetSeasonString(before:string):string;
begin
  if Pos('''''',before)<=0 then
    if Pos('''',before)>0 then
       result:=StringReplace(before, '''', '''''',[rfReplaceAll, rfIgnoreCase])
    else
       result:=before
  else
    result:=before;
end;
procedure TTraceListSample.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  free;
end;

procedure TTraceListSample.Button1Click(Sender: TObject);
var i:integer;
    CGZL_MinUserDate:string;
begin

  if ((SupEdit.Text='')  and (POEdit.Text='') and (MatEdit.Text='')  and (SeasonEdit.Text='') and (StageEdit.Text='')) then 
  begin
     showmessage('At lease need keyin ome condition .');
     abort;
  end;
  //20141210 避免Season有單引號SQL查詢會有問題
  SeasonEdit.Text:=GetSeasonString(SeasonEdit.Text);
  //20141113 先過濾日期區間免得入庫資料沒有時間區間資料太大
  with tmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select IsNull(Min(CGZL.UserDate),''2030/01/01 00:00:00'') as UserDate from  CGZL ');
    SQL.Add('Left join CGZLS on CGZL.CGNO=CGZLS.CGNO ');
    sql.add('where CGZL.CGLX=''6''  ');
    sql.add('     and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    if SeasonEdit.Text<>'' then
       sql.add('  and CGZL.SEASON='+''''+SeasonEdit.Text+'''');
    if StageEdit.Text<>'' then
       sql.add('  and CGZL.PURPOSE='+''''+StageEdit.Text+'''');
    if POEdit.Text<>'' then
       sql.add('  and CGZL.CGNO='+''''+POEdit.Text+'''');
    if SupEdit.Text<>'' then
       sql.add('  and CGZL.ZSBH='+''''+SupEdit.Text+'''');
    if MatEdit.Text<>'' then
       sql.add('  and CGZLS.CLBH='+''''+MatEdit.Text+'''');
    if Chk_PDT.Checked then
    begin
       sql.add('and ( CGZL.PURPOSE is null or CGZL.PURPOSE<>''PDT'' ) ');
    end;
    Active:=true;
    if RecordCount>0 then CGZL_MinUserDate:=FormatDateTime('YYYY/MM/DD HH:NN:SS',FieldByName('UserDate').Value);
    Active:=false;
  end;

  //
  with query1 do    //第一頁, po status
  begin
    active:=false;
    sql.Clear;
    sql.add('      if object_id(''tempdb..#TraceListSample1'') is not null    ');
    sql.add('         begin drop table #TraceListSample1 end                 ');
    sql.add('      if object_id(''tempdb..#TraceListSample_Article'') is not null    ');
    sql.add('         begin drop table #TraceListSample_Article end                 ');
    //產生All Size的暫存檔
    sql.add(' SELECT cgzls.clbh,cgzls.cgno,   ');
    sql.add(' ISNULL((SELECT XXCC+''  ''  FROM (select cgno,clbh,XXCC from cgzlss group by cgno,clbh,XXCC) SS   ');
    sql.add('         WHERE XXCC<>''ZZZZZZ'' AND ss.clbh=cgzls.clbh and ss.cgno=cgzls.cgno   ');
    sql.add('         FOR XML PATH('''')   ');
    sql.add('         ),'''') as all_Size  into #TraceListSample1   ');
    sql.add('   FROM CGZLS WHERE LEFT(CLBH,3)=''J03''   ');
    //產生All Article 的暫存檔
    sql.add(' SELECT cgzls.clbh,cgzls.cgno,   ');
    sql.add(' ISNULL((SELECT zlbh+'',''  FROM (select cgno,clbh,zlbh from cgzlss group by cgno,clbh,zlbh) SS   ');
    sql.add('         WHERE zlbh<>''All'' AND zlbh<>''TOTAL'' AND ss.clbh=cgzls.clbh and ss.cgno=cgzls.cgno   ');
    sql.add('         FOR XML PATH('''')   ');
    sql.add('         ),'''') as all_Article  into #TraceListSample_Article   ');
    sql.add('   FROM CGZLS ');
    sql.add('   left join CGZL  on CGZl.CGNO=CGZLS.CGNO ');
    sql.add('   left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('   WHERE CGZL.CGLX=''6''   ');
    sql.add('     and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    if ArticleEdit.Text<>'' then  //Article
       sql.add('  and exists (select cgno from CGZLSS where CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH AND CGZLSS.ZLBH='+''''+ArticleEdit.Text+''''+ ') ');
    if POEdit.Text<>'' then
       sql.add('  and CGZLS.CGNO like '+''''+POEdit.Text+'%'+'''');
    if MatEdit.Text<>'' then
       sql.add('  and CGZLS.CLBH like '+''''+MatEdit.Text+'%'+'''');
    if SupEdit.Text<>'' then
       sql.add(  'and ZSZL.ZSYWJC like '+'''%'+SupEdit.Text+'%'+'''');
    if edit4.Text<>'' then
       sql.add('  and CGZLS.USERID='+''''+edit4.Text+'''');
    if SeasonEdit.Text<>'' then
       sql.add('  and CGZL.SEASON='+''''+SeasonEdit.Text+'''');
    if Edit6.Text<>'' then
       sql.add('  and ZSZL.style='''+Edit6.Text+'''');
    if StageEdit.Text<>'' then
       sql.add('  and CGZL.PURPOSE='+''''+StageEdit.Text+'''');
    if edit8.Text<>'' then
       sql.add('  and ZSZL.Country='+''''+edit8.Text+'''');
    if CheckBox2.Checked then
       begin
         sql.add('and convert(smalldatetime,convert(varchar,CGZL.CGDATE,111))  between ');
         sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
       end;
    if chk_ETD.Checked then
       begin
         sql.add('and CGZLS.CFMDate is null and CGZLS.Qty > 0');
       end;
    if Chk_PDT.Checked then
       begin
         sql.add('and ( CGZL.PURPOSE is null or CGZL.PURPOSE<>''PDT'' ) ');
       end;
    if length(CB_Category.Text) > 0 then
       BEGIN
         sql.add(' and EXISTS ( SELECT CGNO FROM CGZLSS  ');
         sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
         sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
         sql.add('              WHERE xxzlkf.category like '+'''%'+CB_Category.Text+'%'+'''');
         sql.add('                    AND CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
         sql.add('             )   ');
       END;
    if length(Cb_DevTP.Text) > 0 then
       BEGIN
         sql.add(' and EXISTS ( SELECT CGNO FROM CGZLSS  ');
         sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
         sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
         sql.add('              WHERE xxzlkf.DevType like '+'''%'+Cb_DevTP.Text+'%'+'''');
         sql.add('                    AND CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
         sql.add('             )   ');
       END;

    //開始抓資料
    sql.add('select CGZLS.CGNO,CGZLS.CLBH,CGZLS.MEMO1,CGZLS.REMARK,CGZLS.memo,');
    sql.add('       CGZLInvoice_1.ETA,isnull(CGZLInvoice_1.BILLNO,'''') as BILLNO,isnull(CGZLInvoice_1.invoice,'''') as invoice,');
    sql.add('       isnull(CGZLInvoice_1.transport,'''') as WAY,');
    sql.add('       CGZLS.Qty,CGZLS.USERID,CGZLS.USERDate,CGZLS.CFMDate,CGZLS.YQDate,');
    sql.add('       CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL.DWBH ,CGZL.ZSBH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL.COUNTRY,  ');
    //20141111 weston修改 效率太慢
    //sql.add('       (SELECT isnull(SUM(KCRKS.Qty),0) as Qty FROM KCRKS,KCRK WHERE ISNULL(KCRKS.RKSB,'''')<>''NG'' and KCRK.RKNO=KCRKS.RKNO AND KCRKS.CGBH=CGZLS.CGNO AND KCRKS.CLBH=CGZLS.CLBH GROUP BY KCRKS.CGBH,KCRKS.CLBH ) AS RKQTY ,  ');
    //sql.add('       (SELECT top 1 KCRK.USERDATE FROM KCRKS,KCRK WHERE KCRK.RKNO=KCRKS.RKNO AND KCRKS.CGBH=CGZLS.CGNO AND KCRKS.CLBH=CGZLS.CLBH  ) AS RKdate ,  ');
    sql.Add('KCRKS.RKQTY,KCRKS.RKdate, ');
    //
    sql.add('       CGZLInvoice_2.BillNO as BILLNO_2,CGZLInvoice_2.Invoice as invoice_2,CGZLInvoice_2.transport as WAY_2 , ');
    sql.add('       CGZLS.article_all,BUSERS.USERNAME as SamplePurchaser_Name,isnull(CGZLInvoice_1.Custom,'''') as Custom,isnull(CGZLInvoice_2.Custom,'''') as Custom_2 ');
    //sql.add('       isnull(CGZLS.qty,0)*isnull(CGZLS.USPrice,0)+(isnull(CGZLS.qty,0)*isnull(CGZLS.VNPrice,0)/ISNULL(CGHLS.CWHL,0))  as ACCUS ,  ');
    //sql.add('       isnull(CGZLS.qty,0)*isnull(CGZLS.VNPrice,0)  as ACCVN ,');
    sql.add('       ,CGHLS.CWHL ');
    sql.add('       ,CAST(#TraceListSample1.all_Size AS char(200)) as All_Size ');
    sql.add('       ,CAST(#TraceListSample_Article.all_Article AS char(200)) as All_Article ');
    sql.add('       ,MaterialMOQ.Location,MaterialA01.File_Name  ');
    sql.add('       ,MaterialMOQ.Skin_Quality,MaterialMOQ.Skin_Size  ');
    sql.add('       ,MaterialNG.NG_Reason,MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.Result as NG_Result,MaterialNG.QC_SKIN,MaterialNG.Remark AS NG_Remark, MaterialNG.C_window,MaterialNG.QC_Inspection1,MaterialNG.QC_Inspection2,MaterialNG.NG_Date  ');     //add more ,MaterialNG.QC_Inspection1,MaterialNG.QC_Inspection2 Apr.04.2013 Thoai
    sql.add('from CGZLS');
    sql.add('left join CLZL  on CLZl.CLDH=CGZLS.CLBH');
    sql.add('left join CGZL  on CGZl.CGNO=CGZLS.CGNO ');
    sql.add('left join CGHLS on CGHLS.HLYEAR+'+''''+'/'+''''+'+CGHLS.HLMONTH+'+''''+'/'+''''+'+CGHLS.HLDAY=convert(varchar,CGZL.CGDate,111)');
    sql.add('left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('left join BUSERS  on BUSERS.USERID=ZSZL.SamplePurchaser  ');
    sql.Add('left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
    sql.add('left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
    sql.Add('left join (select CGNO,CLBH,isnull(Max(CINO),''no invoice2'') AS CINO_2 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_2 on CGZLS.CLBH=CGZLInvoiceS_2.CLBH and CGZLS.CGNO=CGZLInvoiceS_2.CGNO and CGZLInvoiceS_2.CINO_2<>CGZLInvoiceS_1.CINO_1  ');
    sql.add('left join CGZLInvoice CGZLInvoice_2  on CGZLInvoice_2.CINO=CGZLInvoiceS_2.CINO_2  ');
    sql.add('left join #TraceListSample1 on #TraceListSample1.clbh=CGZLS.clbh and #TraceListSample1.cgno=CGZLS.cgno ');
    sql.add('left join #TraceListSample_Article on #TraceListSample_Article.clbh=CGZLS.clbh and #TraceListSample_Article.cgno=CGZLS.cgno ');
    sql.Add('left join MaterialMOQ on MaterialMOQ.CLBH=CGZLS.clbh and MaterialMOQ.Season=CGZL.SEASON ');
    sql.add('left join MaterialA01 on MaterialA01.CLBH=CGZLS.clbh ');
    sql.add('left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO ');
    //20141111 weston修改 
    sql.add('left join (SELECT KCRKS.CGBH ,KCRKS.CLBH ,isnull(SUM(KCRKS.Qty),0) as RKQTY, Max(KCRKS.UserDate) as RKDate FROM KCRKS WHERE Len(CGBH)=11 and UserDate>='''+CGZL_MinUserDate+'''  and ISNULL(KCRKS.RKSB,'''')<>''NG'' GROUP BY KCRKS.CGBH,KCRKS.CLBH )  KCRKS on CGZLS.CGNO=KCRKS.CGBH and CGZLS.CLBH=KCRKS.CLBH ');
    sql.add('where CGZL.CGLX=''6''  ');
    sql.add('     and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    if ArticleEdit.Text<>'' then  //Article
       sql.add('  and exists (select cgno from CGZLSS where CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH AND CGZLSS.ZLBH='+''''+ArticleEdit.Text+''''+ ') ');
    if POEdit.Text<>'' then
       sql.add('  and CGZLS.CGNO like '+''''+POEdit.Text+'%'+'''');
    if MatEdit.Text<>'' then
       sql.add('  and CGZLS.CLBH like '+''''+MatEdit.Text+'%'+'''');
    if SupEdit.Text<>'' then
       sql.add(  'and ZSZL.ZSYWJC like '+'''%'+SupEdit.Text+'%'+'''');
    if edit4.Text<>'' then
       sql.add('  and CGZLS.USERID='+''''+edit4.Text+'''');
    if SeasonEdit.Text<>'' then
       sql.add('  and CGZL.SEASON='+''''+SeasonEdit.Text+'''');
    if Edit6.Text<>'' then
       sql.add('  and ZSZL.style='''+Edit6.Text+'''');
    if StageEdit.Text<>'' then
       sql.add('  and CGZL.PURPOSE='+''''+StageEdit.Text+'''');
    if edit8.Text<>'' then
       sql.add('  and ZSZL.Country='+''''+edit8.Text+'''');
    if edit7.Text<>'' then
       sql.add('  and MaterialMOQ.Location='+''''+edit7.Text+'''');   
    if Edit9.Text<>'' then
       sql.add('  and CLZL.YWPM like'+''''+'%'+Edit9.text+'%'+'''');
    if Edit10.Text<>'' then
       sql.add('  and CLZL.YWPM like'+''''+'%'+Edit10.text+'%'+'''');
    if CheckBox2.Checked then
       begin
         sql.add('and convert(smalldatetime,convert(varchar,CGZL.CGDATE,111))  between ');
         sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
       end;
    if chk2.Checked then
       begin
         sql.add('and convert(smalldatetime,convert(varchar,CGZLInvoice_1.ETA,111))  between ');
         sql.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
       end;
    if chk1.Checked then
       begin
         sql.add('and CGZLInvoice_1.ETA is null and CGZLS.Qty > 0');
       end;
    if chk_ETD.Checked then
       begin
         sql.add('and CGZLS.CFMDate is null and CGZLS.Qty > 0');
       end;
    if Chk_PDT.Checked then
       begin
         sql.add('and ( CGZL.PURPOSE is null or CGZL.PURPOSE<>''PDT'' ) ');
       end;
    if Chk_Tool.Checked then
       begin
         sql.add('and ( LEFT(CGZLS.CLBH,1)<>''V''  ) ');
       end;

    if length(CB_Category.Text) > 0 then
       BEGIN
         sql.add(' and EXISTS ( SELECT CGNO FROM CGZLSS  ');
         sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
         sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
         sql.add('              WHERE xxzlkf.category like '+'''%'+CB_Category.Text+'%'+'''');
         sql.add('                    AND CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
         sql.add('             )   ');
       END;
    if length(Cb_DevTP.Text) > 0 then
       BEGIN
         sql.add(' and EXISTS ( SELECT CGNO FROM CGZLSS  ');
         sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
         sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
         sql.add('              WHERE xxzlkf.DevType like '+'''%'+Cb_DevTP.Text+'%'+'''');
         sql.add('                    AND CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
         sql.add('             )   ');
       END;
    sql.add('order by CGZL.CGNO');
    active:=true;
  end;
  Query4.active:=true;
  Query5.active:=true;
  Query6.active:=true;

  if Chk_ShowPage2.Checked then
  begin
    with query2 do    //第二頁, po (Article)  status
    begin
      active:=false;
      sql.Clear;
      sql.add('select CGZLSS.*,CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL.DWBH ,CGZLS.memo,CGZLS.WAY,CGZL.ZSBH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL.COUNTRY,KFXXZL.XIEMING,CGZLS.MEMO1,CGZLS.REMARK,');
      sql.add('       CGZLInvoice_1.ETA,isnull(CGZLInvoice_1.BILLNO,'''') as BILLNO,isnull(CGZLInvoice_1.invoice,'''') as invoice,');
      sql.add('        CGZLS.USPrice ,CGZLS.VNPrice ,XXZLKF.FD,  ');
      sql.Add('        KCRKS.RKDate, ');
      //sql.add('       (SELECT top 1 KCRK.USERDATE FROM KCRKS,KCRK WHERE KCRK.RKNO=KCRKS.RKNO AND KCRKS.CGBH=CGZLSS.CGNO AND KCRKS.CLBH=CGZLSS.CLBH  ) AS RKdate ,  ');
      sql.add('       CGZLInvoice_2.BillNO as BILLNO_2,CGZLInvoice_2.Invoice as invoice_2,CGZLInvoice_2.transport as WAY_2  ');
      sql.add('from CGZLSS');
      sql.add('left join CLZL  on CLZl.CLDH=CGZLSS.CLBH');
      sql.add('left join CGZL  on CGZl.CGNO=CGZLSS.CGNO ');
      sql.add('left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH ');
      sql.add('left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH ');
      sql.add('left join KFXXZL  on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
      sql.add('left join XXZLKF  on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
      sql.Add('left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
      sql.add('left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
      sql.Add('left join (select CGNO,CLBH,isnull(Max(CINO),''no invoice2'') AS CINO_2 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_2 on CGZLS.CLBH=CGZLInvoiceS_2.CLBH and CGZLS.CGNO=CGZLInvoiceS_2.CGNO and CGZLInvoiceS_2.CINO_2<>CGZLInvoiceS_1.CINO_1  ');
      sql.add('left join CGZLInvoice CGZLInvoice_2  on CGZLInvoice_2.CINO=CGZLInvoiceS_2.CINO_2  ');
    //20141111 weston修改 
    sql.add('left join (SELECT KCRKS.CGBH ,KCRKS.CLBH ,isnull(SUM(KCRKS.Qty),0) as RKQTY, Max(KCRKS.UserDate) as RKDate FROM KCRKS WHERE Len(CGBH)=11 and UserDate>='''+CGZL_MinUserDate+''' and ISNULL(KCRKS.RKSB,'''')<>''NG'' GROUP BY KCRKS.CGBH,KCRKS.CLBH )  KCRKS on CGZLSS.CGNO=KCRKS.CGBH and CGZLSS.CLBH=KCRKS.CLBH ');
      sql.add('where CGZL.CGLX=''6''  ');
      sql.add('      and CGZL.GSBH='+''''+main.Edit2.Text+'''');
      if ArticleEdit.Text<>'' then
         sql.add('   and CGZLSS.ZLBH like '+''''+ArticleEdit.Text+'%'+'''');
      if POEdit.Text<>'' then
         sql.add('   and CGZLSS.CGNO like '+''''+POEdit.Text+'%'+'''');
      if MatEdit.Text<>'' then
         sql.add('   and CGZLSS.CLBH like '+''''+MatEdit.Text+'%'+'''');
      if SupEdit.Text<>'' then
         sql.add('   and ZSZL.ZSYWJC like '+'''%'+SupEdit.Text+'%'+'''');
      if edit4.Text<>'' then
         sql.add('   and CGZLSS.USERID='+''''+edit4.Text+'''');
      if SeasonEdit.Text<>'' then
         sql.add('   and CGZL.SEASON='+''''+SeasonEdit.Text+'''');
      if Edit6.Text<>'' then
         sql.add('   and ZSZL.style='''+Edit6.Text+'''');
      if StageEdit.Text<>'' then
         sql.add('   and CGZL.PURPOSE='+''''+StageEdit.Text+'''');
      if edit8.Text<>'' then
         sql.add('   and ZSZL.Country='+''''+edit8.Text+'''');
      if chk1.Checked then
         sql.add('   and CGZLInvoice_1.ETA is null and CGZLSS.Qty > 0');
      if chk_ETD.Checked then
         sql.add('and CGZLS.CFMDate is null and CGZLS.Qty > 0');
      if length(CB_Category.Text) > 0 then
         sql.add('   AND xxzlkf.category like '+'''%'+CB_Category.Text+'%'+'''');
      if length(Cb_DevTP.Text) > 0 then
         sql.add('   AND xxzlkf.DevType like '+'''%'+Cb_DevTP.Text+'%'+'''');
      if CheckBox2.Checked then
         begin
           sql.add('  and convert(smalldatetime,convert(varchar,CGZL.CGDATE,111))  between ');
           sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
         end;
      if chk2.Checked then
         begin
           sql.add('  and convert(smalldatetime,convert(varchar,CGZLInvoice_1.ETA,111))  between ');
           sql.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
         end;
      sql.add('order by CGZLSS.CLBH,CGZLSS.ZLBH');
      active:=true;
    end;
  end;

  if Chk_ShowPage3.Checked then
  begin
  with query3 do    //第三頁, po (payment)  status
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZLS.CGNO,CGZLS.CLBH,CGZLS.MEMO1,CGZLS.REMARK,CGZLS.ETA,CGZLS.memo,CGZLS.BILLNO,CGZLS.WAY,CGZLS.Qty,KCRKS.USERID,KCRKS.USERDate,CGZLS.CFMDate,');
    sql.add('       CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL.DWBH ,CGZL.ZSBH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL.COUNTRY,  ');
    sql.add('       KCRK.USERDATE as RKdate,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.QTY AS RKQty,KCRKS.PaQty,KCRKS.RKNO  ');
    sql.add('from CGZLS');
    sql.add('left join KCRKS on KCRKS.CLBH=CGZLS.CLBH and KCRKS.CGBH=CGZLS.CGNO');
    sql.add('left join KCRK on KCRKS.RKNO=KCRK.RKNO');
    sql.add('left join CLZL  on CLZl.CLDH=CGZLS.CLBH');
    sql.add('left join CGZL  on CGZl.CGNO=CGZLS.CGNO ');
    sql.add('left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('where CGZL.CGLX=''6''  ');
    sql.add('      and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    if ArticleEdit.Text<>'' then
         sql.add(' and exists (select cgno from CGZLSS where CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH AND CGZLSS.ZLBH='+''''+ArticleEdit.Text+''''+ ') ');
    if POEdit.Text<>'' then
         sql.add(' and CGZLS.CGNO like '+''''+POEdit.Text+'%'+'''');
    if MatEdit.Text<>'' then
         sql.add(' and CGZLS.CLBH like '+''''+MatEdit.Text+'%'+'''');
    if SupEdit.Text<>'' then
         sql.add(' and ZSZL.ZSYWJC like '+'''%'+SupEdit.Text+'%'+'''');
    if edit4.Text<>'' then
         sql.add(' and CGZLS.USERID='+''''+edit4.Text+'''');
    if SeasonEdit.Text<>'' then
         sql.add(' and CGZL.SEASON='+''''+SeasonEdit.Text+'''');
    if Edit6.Text<>'' then
         sql.add(' and ZSZL.style='''+Edit6.Text+'''');
    if StageEdit.Text<>'' then
         sql.add(' and CGZL.PURPOSE='+''''+StageEdit.Text+'''');
    if edit8.Text<>'' then
         sql.add(' and ZSZL.Country='+''''+edit8.Text+'''');
    if CheckBox2.Checked then
       begin
        sql.add('  and convert(smalldatetime,convert(varchar,CGZL.CGDATE,111))  between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
       end;
    if chk2.Checked then
       begin
        sql.add('  and convert(smalldatetime,convert(varchar,CGZLS.ETA,111))  between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
       end;
    if length(CB_Category.Text) > 0 then
       BEGIN
         sql.add(' and EXISTS ( SELECT CGNO FROM CGZLSS  ');
         sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
         sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
         sql.add('              WHERE xxzlkf.category like '+'''%'+CB_Category.Text+'%'+'''');
         sql.add('                    AND CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
         sql.add('             )   ');
       END;
    if length(Cb_DevTP.Text) > 0 then
       BEGIN
         sql.add(' and EXISTS ( SELECT CGNO FROM CGZLSS  ');
         sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
         sql.add('              left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing AND XXZLKF.SheHao=KFXXZL.SheHao ');
         sql.add('              WHERE xxzlkf.DevType like '+'''%'+Cb_DevTP.Text+'%'+'''');
         sql.add('                    AND CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
         sql.add('             )   ');
       END;
    if chk1.Checked then
       sql.add('   and CGZLS.ETA is null and CGZLS.Qty > 0');
    if chk_ETD.Checked then
       sql.add('   and CGZLS.CFMDate is null and CGZLS.Qty > 0');
    sql.add('order by CGZLS.CLBH');
    active:=true;
  end;

end;  

end;

procedure TTraceListSample.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  IF PageControl1.ActivePage.Name='TS1' THEN
      tdbgh := DBGrid1  ;
  IF PageControl1.ActivePage.Name='TS2' THEN
      tdbgh := DBGrid2  ;
  IF PageControl1.ActivePage.Name='TS3' THEN
      tdbgh := DBGrid3  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;

procedure TTraceListSample.FormDestroy(Sender: TObject);
begin
TraceListSample:=nil;
end;

procedure TTraceListSample.FormCreate(Sender: TObject);
var i:integer;
begin
 PageControl1.ActivePage:=TS1;
 DTP2.Datetime:=Now();
 DTP1.Datetime:=Now()-30;
 DTP4.Datetime:=Now();
 DTP3.Datetime:=Now()-30;

  //------------------------------add more - Thoai Apr.04.2013------------------

    for i:=0 to 51 do
    begin
       DBGrid1.Columns[i].ReadOnly:=true;
    end ;

    //---------------------only this user allow modify--------------------------

    if main.Edit1.Text='00360' then
    begin
        mnusave.Enabled:=false;
        mnucancel.Enabled:=false;

        mnumodify.Visible:=true;
        mnusave.Visible:=true;
        mnucancel.Visible:=true;
    end
    else
    begin
        mnumodify.Visible:=false;
        mnusave.Visible:=false;
        mnucancel.Visible:=false;
    end;


  //----------------------------------------------------------------------------
end;

procedure TTraceListSample.Query1CalcFields(DataSet: TDataSet);
begin

if Chk_ShowERPPrice.Checked then
   begin

  Qry_SamplePayment_Unit.Active:=false  ;
  Qry_SamplePayment_Unit.SQL.Clear;
  Qry_SamplePayment_Unit.sql.add('SELECT CR1_FreeQty as FreeQty,CR1_Charge as Charge from zszlSamplePayment ');
  Qry_SamplePayment_Unit.sql.add('where Season='+''''+GetSeasonString(Query1.FieldByName('SEASON').AsString)+'''');
  Qry_SamplePayment_Unit.sql.add('      and zsdh='+''''+Query1.FieldByName('ZSBH').AsString+'''');
  Qry_SamplePayment_Unit.sql.add('      and Unit='+''''+Query1.FieldByName('DWBH').AsString+'''');
  Qry_SamplePayment_Unit.Active:=true;

  Qry_zszlSamplePayment.Active:=false  ;
  Qry_zszlSamplePayment.SQL.Clear;
  if (Query1.FieldByName('PURPOSE').Value='SEE')
      or (Query1.FieldByName('PURPOSE').Value='TRIAL')
      or (Query1.FieldByName('PURPOSE').Value='SMU')
      or (Query1.FieldByName('PURPOSE').Value='SU2')
      or (Query1.FieldByName('PURPOSE').Value='SU3')
      or (Query1.FieldByName('PURPOSE').Value='SU4')
      or (Query1.FieldByName('PURPOSE').Value='CR1')
      or (Query1.FieldByName('PURPOSE').Value='CR2')
      or (Query1.FieldByName('PURPOSE').Value='PSE')
      or (Query1.FieldByName('PURPOSE').Value='SMS')
      or (Query1.FieldByName('PURPOSE').Value='SM1')
      or (Query1.FieldByName('PURPOSE').Value='SM2')
      or (Query1.FieldByName('PURPOSE').Value='SM3')
      or (Query1.FieldByName('PURPOSE').Value='SM4')
      or (Query1.FieldByName('PURPOSE').Value='MCS')
      or (Query1.FieldByName('PURPOSE').Value='FES')
      or (Query1.FieldByName('PURPOSE').Value='PDT')
      then
     begin
       if (Query1.FieldByName('PURPOSE').Value='SEE') OR (Query1.FieldByName('PURPOSE').Value='TRIAL') then
          Qry_zszlSamplePayment.sql.add('select CR1_FreeQty as FreeQty,CR1_Charge as Charge ');
       if (Query1.FieldByName('PURPOSE').Value='CR1') OR (Query1.FieldByName('PURPOSE').Value='CR2') then
          Qry_zszlSamplePayment.sql.add('select CR2_FreeQty as FreeQty,CR2_Charge as Charge  ');
       if Query1.FieldByName('PURPOSE').Value='PSE' then
          Qry_zszlSamplePayment.sql.add('select Presell_FreeQty as FreeQty,Presell_Charge as Charge  ');
       if (Query1.FieldByName('PURPOSE').Value='SMS') OR (Query1.FieldByName('PURPOSE').Value='SM1')OR (Query1.FieldByName('PURPOSE').Value='SM2')OR (Query1.FieldByName('PURPOSE').Value='SM3')OR (Query1.FieldByName('PURPOSE').Value='SM4') then
          Qry_zszlSamplePayment.sql.add('select SMS_FreeQty as FreeQty,SMS_Charge as Charge  ');
       if Query1.FieldByName('PURPOSE').Value='PDT' then
          Qry_zszlSamplePayment.sql.add('select PT_FreeQty as FreeQty,PT_Charge as Charge  ');
       if (Query1.FieldByName('PURPOSE').Value='SMU')OR (Query1.FieldByName('PURPOSE').Value='SU2')OR (Query1.FieldByName('PURPOSE').Value='SU3')OR (Query1.FieldByName('PURPOSE').Value='SU4')OR (Query1.FieldByName('PURPOSE').Value='FES')OR (Query1.FieldByName('PURPOSE').Value='MCS')then
          Qry_zszlSamplePayment.sql.add('select MCS_FreeQty as FreeQty,MCS_Charge as Charge  ');
       Qry_zszlSamplePayment.sql.add('from  zszlSamplePayment ');
       Qry_zszlSamplePayment.sql.add('where Season='+''''+Query1.FieldByName('SEASON').AsString+'''');
       Qry_zszlSamplePayment.sql.add('      and zsdh='+''''+Query1.FieldByName('ZSBH').AsString+'''');
       if Qry_SamplePayment_Unit.RecordCount>0 then
          Qry_zszlSamplePayment.sql.add('   and Unit='+''''+Query1.FieldByName('DWBH').AsString+'''')
       else
          Qry_zszlSamplePayment.sql.add('   and Unit='''' ');

       Qry_zszlSamplePayment.Active:=true;
       Qry_zszlSamplePayment.first;
       if not Qry_zszlSamplePayment.eof then
          begin
            Query1.FieldByName('FreeQty_').value:=Qry_zszlSamplePayment.FieldByName('FreeQty').value;
            Query1.FieldByName('Charge_').value:=Qry_zszlSamplePayment.FieldByName('Charge').value;
            if Query1.FieldByName('Qty').value<=Qry_zszlSamplePayment.FieldByName('FreeQty').Value then
               begin
                 Query1.FieldByName('USPrice_').value:=0;
               end;
                 Qry_MaterialPrice.Active:=false  ;
                 Qry_MaterialPrice.SQL.Clear;
                 Qry_MaterialPrice.sql.add('select  top 1 SamplePrice,SamplePriceVN,EffectiveDate from  MaterialPrice ');
                 Qry_MaterialPrice.sql.add('where Season='+''''+Query1.FieldByName('SEASON').Value+'''');
                 Qry_MaterialPrice.sql.add('      and ZSBH='+''''+Query1.FieldByName('ZSBH').Value+'''');
                 Qry_MaterialPrice.sql.add('      and CLBH='+''''+Query1.FieldByName('CLBH').Value+'''');
                 Qry_MaterialPrice.sql.add('      and EffectiveDate>'+''''+Query1.FieldByName('CGDate').AsString+'''');
                 Qry_MaterialPrice.sql.add('    order by EffectiveDate  ');
                 funcObj.WriteErrorLog(Qry_MaterialPrice.sql.Text);
                 Qry_MaterialPrice.Active:=true;
                 //showmessage('CGDet'+Qry_MaterialPrice.FieldByName('EffectiveDate').AsString+' ');
                 Qry_MaterialPrice.first;
                 Query1.FieldByName('Q_USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value ;
                 Query1.FieldByName('Q_VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value ;
            if Query1.FieldByName('Qty').value>Qry_zszlSamplePayment.FieldByName('FreeQty').Value then
               begin
                 Query1.FieldByName('USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100) ;
                 Query1.FieldByName('VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100) ;
               end;
          end;
       end;
    if not (Query1.FieldByName('USPrice_').IsNull) then
       if Query1.FieldByName('USPrice_').Value>0 then
       Query1.FieldByName('USACC_').value:=(Query1.FieldByName('USPrice_').value*Query1.FieldByName('Qty').Value);

    if not (Query1.FieldByName('VNPrice_').IsNull) then
      if Query1.FieldByName('VNPrice_').Value>0 then
       Query1.FieldByName('USACC_').value:=(Query1.FieldByName('USPrice_').value*Query1.FieldByName('Qty').Value)+(Query1.FieldByName('VNPrice_').value*Query1.FieldByName('Qty').Value/Query1.FieldByName('CWHL').Value) ;
    Query1.FieldByName('VNACC_').value:=Query1.FieldByName('VNPrice_').value*(Query1.FieldByName('Qty').Value) ;

  end;    

end;

procedure TTraceListSample.Query2CalcFields(DataSet: TDataSet);
begin
with Query2 do
  begin
    if FieldByName('USPrice').value<>0 then
      begin
        FieldByName('USACC').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
      end;
    if FieldByName('VNPrice').value<>0 then
      begin
        FieldByName('VNACC').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
      end;
  end;
end;

procedure TTraceListSample.BBTT2Click(Sender: TObject);
begin
TraceListSample_Style:=TTraceListSample_Style.create(self);
TraceListSample_Style.Label1.Caption:='TraceListSample';
TraceListSample_Style.show;
end;

procedure TTraceListSample.BBTT1Click(Sender: TObject);
begin
TraceListSample_Purchaser:=TTraceListSample_Purchaser.create(self);
TraceListSample_Purchaser.Label1.Caption:='TraceListSample';
TraceListSample_Purchaser.show;
end;

procedure TTraceListSample.BBTT4Click(Sender: TObject);
begin
TraceListSample_Country:=TTraceListSample_Country.create(self);
TraceListSample_Country.Label1.Caption:='TraceListSample';
TraceListSample_Country.Label2.Caption:='SupplierCountry';
TraceListSample_Country.show;
end;

procedure TTraceListSample.Excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
  IF PageControl1.ActivePage.Name='TS1' THEN
      tdbgh := DBGrid1  ;
  IF PageControl1.ActivePage.Name='TS2' THEN
      tdbgh := DBGrid2  ;
  IF PageControl1.ActivePage.Name='TS3' THEN
      tdbgh := DBGrid3  ;
  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;


end;

procedure TTraceListSample.BitBtn1Click(Sender: TObject);
begin
begin
TraceListSample_Country:=TTraceListSample_Country.create(self);
TraceListSample_Country.Label1.Caption:='TraceListSample';
TraceListSample_Country.Label2.Caption:='ProdLocation';
TraceListSample_Country.show;
end;
end;

procedure TTraceListSample.mnuModifyClick(Sender: TObject);
begin
     with Query1 do
     begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
     end;
     mnusave.Enabled:=true;
     mnucancel.Enabled:=true;
     DBGrid1.Columns[50].ReadOnly:=false;
     DBGrid1.Columns[51].ReadOnly:=false;

end;

procedure TTraceListSample.mnuCancelClick(Sender: TObject);
begin
     with Query1 do
     begin
        requestlive:=false;
        cachedupdates:=false;
     end;
     mnusave.Enabled:=false;
     mnucancel.Enabled:=false;
     DBGrid1.Columns[50].ReadOnly:=true;
     DBGrid1.Columns[51].ReadOnly:=true;

end;

procedure TTraceListSample.mnuSaveClick(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usmodified:
          begin
               if main.Edit1.Text<>'00360' then
                 begin
                     showmessage('You can not modify !!!');
                     abort;
                 end
               else
               begin
                      if query1.FieldByName('NG_DATE').AsString='' then
                      begin
                          with Query_tem do
                          begin
                              active:=false;
                              sql.Clear;
                              sql.add('insert into MaterialNG (CGNO,CLBH,NG_Date,USERDATE,USERID,QC_Inspection1,QC_Inspection2) ');
                              sql.Add('VALUES ('''+query1.fieldbyname('CGNO').AsString+''','''+query1.fieldbyname('CLBH').AsString+''' ');
                              sql.Add('    ,'''+formatdatetime('yyyy/mm/dd',date)+''',getdate(),'''+main.Edit1.Text+''','''+query1.fieldbyname('QC_Inspection1').AsString+''','''+query1.fieldbyname('QC_Inspection2').AsString+''')');
                              execsql;
                          end;
                      end
                      else
                      begin
                          query1.edit;
                          query1.FieldByName('userID').Value:=main.Edit1.text;
                          query1.FieldByName('userdate').Value:=date;
                          UpdateSQL1.apply(ukmodify);
                      end;
               end;
          end;
        end;
        query1.next;
      end;
      except
          Messagedlg('Error,Can not save data.',mtwarning,[mbyes],0);
      end;
      mnusave.Enabled:=false;
      mnucancel.Enabled:=false;
      query1.Active:=false;
      query1.CachedUpdates:=false;
      query1.requestlive:=false;
      query1.Active:=active;

end;

procedure TTraceListSample.PageControl1Change(Sender: TObject);
begin
    if PageControl1.ActivePage.Name='TS1'  then
    begin
       mnuExcelQC.Visible:=true;
       if main.Edit1.Text='00360' then
       begin
          mnumodify.Enabled:=true;
          mnusave.Enabled:=false;
          mnucancel.Enabled:=false;

          mnumodify.Visible:=true;
          mnusave.Visible:=true;
          mnucancel.Visible:=true;
       end
       else
          mnuExcelQC.Visible:=true;
    end
    else
    begin
       mnumodify.Visible:=false;
       mnusave.Visible:=false;
       mnucancel.Visible:=false;
       mnuExcelQC.Visible:=false;
    end;
end;

procedure TTraceListSample.mnuExcelQCClick(Sender: TObject);
var
    eclApp,WorkBook,xlSheet:olevariant;
    i,j,s,k:integer;
begin
     if Query1.Active then
     begin
        if Query1.recordcount=0 then
        begin
           showmessage('No record.');
           abort;
        end;
     end
     else
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
        xlSheet := workbook.Worksheets['sheet1'];
        eclApp.Worksheets['sheet1'].Activate;

        eclApp.Cells(2,5):='Bang dang ky kiem tra chat luong va thu nghiem nguyen vat lieu dau vao khai thac';
        eclApp.Cells(3,5):='Registing form for inspecting and testing incoming material development';
        eclApp.Cells(5,9):='Gio / Ngay lab nhan lieu :';
        eclApp.Cells(6,9):='Time / Date of receiving :';

        eclApp.Cells(7,12):='Visual inspection result'+chr(10)+'Ket qua kiem tra'+chr(10)+'thi muc'  ;
        eclApp.Cells(7,14):='Pysical test result'+chr(10)+'Ket qua thu nghiem'+chr(10)+'ly tinh';

         eclApp.ActiveSheet.Range['I5:M5'].merge;
         eclApp.range['I5','M5'].HorizontalAlignment:=3;
         eclApp.ActiveSheet.Range['I6:M6'].merge;
         eclApp.range['I6','M6'].HorizontalAlignment:=3;
         eclApp.range['L7','L7'].HorizontalAlignment:=3;
         eclApp.range['M7','M7'].HorizontalAlignment:=3;

         eclApp.range['A7','P7'].HorizontalAlignment:=3;
         eclApp.range['A8','P8'].HorizontalAlignment:=3;
         eclApp.range['A7','P7'].VerticalAlignment := 2;
         eclApp.range['A8','P8'].VerticalAlignment := 2;

         eclApp.ActiveSheet.Range['A7:P7'].Interior.ColorIndex := 35;
         eclApp.ActiveSheet.Range['A8:P8'].Interior.ColorIndex := 35;

         eclApp.ActiveSheet.Rows[7].Font.Bold := True;
         eclApp.ActiveSheet.Rows[8].Font.Bold := True;

        for i:=0  to 15 do
          begin
            if (i=0) then
                eclApp.Cells(8,i+1):='STT'+ chr(10)+'No'
            else if (i=1) then
                eclApp.Cells(8,i+1):='Season'
            else if (i=2) then
                eclApp.Cells(8,i+1):='Stage'
            else if (i=3) then
                eclApp.Cells(8,i+1):='Xuong'+chr(10)+'cung ung'+chr(10)+'Supplier'
            else if (i=4) then
                eclApp.Cells(8,i+1):='Ma so'+chr(10)+'don hang'+chr(10)+'P.O'
            else if (i=5) then
                eclApp.Cells(8,i+1):='Article'
            else if (i=6) then
                eclApp.Cells(8,i+1):='Ma so vat lieu'+chr(10)+'Material code'
            else if (i=7) then
                eclApp.Cells(8,i+1):='Ten lieu'+chr(10)+'Material name'
            else if (i=8) then
                eclApp.Cells(8,i+1):='So luong'+chr(10)+'Quantity'
            else if (i=9) then
                eclApp.Cells(8,i+1):='PDM'+chr(10)+'Material'+chr(10)+'code'
            else if (i=10) then
                eclApp.Cells(8,i+1):='Database'
            else if (i=11) then
                eclApp.Cells(8,i+1):='Before'+chr(10)+'Ban dau'
            else if (i=12) then
                eclApp.Cells(8,i+1):='After'+chr(10)+'Sau cung'
            else if (i=13) then
                eclApp.Cells(8,i+1):='Before'+chr(10)+'Ban dau'
            else if (i=14) then
                eclApp.Cells(8,i+1):='After'+chr(10)+'Sau cung'
            else if (i=15) then
                eclApp.Cells(8,i+1):='Final result'+chr(10)+'Ket qua cuoi cung';

              eclApp.ActiveSheet.Cells[8,i+1].Borders[2].weight:=2;
              eclApp.ActiveSheet.Cells[8,i+1].Borders[4].weight:=2;
              eclApp.ActiveSheet.Cells[8,i+1].Borders[3].weight:=2;
          end;

        for i:=0 to 15 do
        begin
              eclApp.ActiveSheet.Cells[7,i+1].Borders[2].weight:=2;
              eclApp.ActiveSheet.Cells[7,i+1].Borders[4].weight:=2;
              eclApp.ActiveSheet.Cells[7,i+1].Borders[3].weight:=2;
        end;
        xlsheet.range['A1:A15'].Entirerow.font.size:=10;
        xlsheet.range['A1:A15'].Entirerow.font.name:='Time New Roman';

        query1.First;
        j:=9;
        s:=0;
        while   not  query1.Eof   do
          begin
            for   i:=0   to 15   do
              begin
                if i=0 then
                begin
                      s:=s + 1;
                     eclApp.Cells(j,i+1):= s;
                end
                else if i=1 then
                     eclApp.Cells(j,i+1):=query1.FieldValues['Season']
                else if i=2  then
                     eclApp.Cells(j,i+1):=query1.FieldValues['PURPOSE']
                else if i=3  then
                begin
                   if length(query1.FieldValues['ZSYWJC'])>=10 then
                       eclApp.Cells(j,i+1):=query1.FieldValues['ZSYWJC']+chr(10)
                   else
                       eclApp.Cells(j,i+1):=query1.FieldValues['ZSYWJC'];
                end
                else if i=4   then
                      eclApp.Cells(j,i+1):=query1.FieldValues['CGNO']
                else if i=5   then
                begin
                    if length(query1.FieldValues['All_Article'])>=7 then
                    begin
                        eclApp.Cells(j,i+1):=query1.FieldValues['All_Article']+chr(10);
                    end
                    else
                    begin
                        eclApp.Cells(j,i+1):=query1.FieldValues['All_Article'];
                    end;
                end
                else if i=6  then
                    eclApp.Cells(j,i+1):=query1.FieldValues['CLBH']
                else if i=7   then
                begin
                    if length(query1.FieldValues['YWPM'])>=20 then
                        eclApp.Cells(j,i+1):=query1.FieldValues['YWPM']+chr(10)
                    else
                        eclApp.Cells(j,i+1):=query1.FieldValues['YWPM']
                end
                else if i=8   then
                   eclApp.Cells(j,i+1):=query1.FieldValues['Rkqty']
                else if i=9   then
                    eclApp.Cells(j,i+1):=''
                else if i=10   then
                    eclApp.Cells(j,i+1):=''
                else if i=11  then
                    eclApp.Cells(j,i+1):=query1.FieldValues['QC_Inspection1']
                else if i=12  then
                    eclApp.Cells(j,i+1):=query1.FieldValues['QC_Inspection2']
                else if i=13   then
                    eclApp.Cells(j,i+1):=''
                else if i=14   then
                    eclApp.Cells(j,i+1):=''
                else if i=15   then
                    eclApp.Cells(j,i+1):='';

                eclApp.Cells.Cells.item[j,i+1].font.size:='10';
                eclApp.Cells.Cells.item[j,i+1].font.name:='Times New Roman';
                eclApp.Cells.Cells.item[j,i+1].RowHeight:=40;

                eclApp.ActiveSheet.Cells[j,i+1].Borders[2].weight:=2;
                eclApp.ActiveSheet.Cells[j,i+1].Borders[4].weight:=2;
                eclApp.ActiveSheet.Cells[j,i+1].Borders[3].weight:=2;
              end;
            query1.Next;
             inc(j);
          end;

      k:=j+1;
      eclApp.Cells(j+1,5):='QC Supervisor';
      eclApp.Cells(j+1,9):='QC';
      eclApp.Cells(j+1,12):='Lab Worker';
      eclApp.Cells(j+2,13):='';
      eclApp.ActiveSheet.Rows[k].Font.Bold := True;
      eclApp.ActiveSheet.Rows[k].Font.Size:= 12;
      eclApp.ActiveSheet.Rows[k].font.name:='Times New Roman';

      k:=j+7;
      eclApp.Cells(k,14):='KCS-QP002-01C';
      eclApp.Cells(k+1,13):='Doccument Number : QIP/APP/45/00/00';
      eclApp.ActiveSheet.Rows[k].Font.Size:= 8;
      eclApp.ActiveSheet.Rows[k].Font.Bold := True;
      eclApp.ActiveSheet.Rows[k+1].Font.Size:= 8;
      eclApp.Cells.Cells.item[k,14].font.name:='Times New Roman';
      eclApp.Cells.Cells.item[k+1,13].font.name:='Times New Roman';

      xlsheet.Columns.Range['A1','A1'].ColumnWidth:=5;
      xlsheet.Columns.Range['B1','B1'].ColumnWidth:=8;
      xlsheet.Columns.Range['C1','C1'].ColumnWidth:=6;
      xlsheet.Columns.Range['D1','D1'].ColumnWidth:=15;
      xlsheet.Columns.Range['E1','E1'].ColumnWidth:=15;
      xlsheet.Columns.Range['F1','F1'].ColumnWidth:=10;
      xlsheet.Columns.Range['G1','G1'].ColumnWidth:=15;
      xlsheet.Columns.Range['H1','H1'].ColumnWidth:=30;
      xlsheet.Columns.Range['I1','I1'].ColumnWidth:=10;
      xlsheet.Columns.Range['J1','J1'].ColumnWidth:=15;
      xlsheet.Columns.Range['K1','K1'].ColumnWidth:=10;
      xlsheet.Columns.Range['L1','L1'].ColumnWidth:=10;
      xlsheet.Columns.Range['M1','M1'].ColumnWidth:=12;
      xlsheet.Columns.Range['N1','N1'].ColumnWidth:=10;
      xlsheet.Columns.Range['O1','O1'].ColumnWidth:=10;
      xlsheet.Columns.Range['P1','P1'].ColumnWidth:=7;
      xlsheet.Rows.Range['A7','A7'].RowHeight:=45;
      xlsheet.Rows.Range['A8','A8'].RowHeight:=30;

      eclApp.ActiveSheet.Range['A7:A8'].merge;
      eclApp.ActiveSheet.Range['B7:B8'].merge;
      eclApp.ActiveSheet.Range['C7:C8'].merge;
      eclApp.ActiveSheet.Range['D7:D8'].merge;
      eclApp.ActiveSheet.Range['E7:E8'].merge;
      eclApp.ActiveSheet.Range['F7:F8'].merge;
      eclApp.ActiveSheet.Range['G7:G8'].merge;
      eclApp.ActiveSheet.Range['H7:H8'].merge;
      eclApp.ActiveSheet.Range['I7:I8'].merge;
      eclApp.ActiveSheet.Range['J7:J8'].merge;
      eclApp.ActiveSheet.Range['K7:K8'].merge;
      eclApp.ActiveSheet.Range['P7:P8'].merge;
      eclApp.ActiveSheet.Range['L7:M7'].merge;
      eclApp.ActiveSheet.Range['N7:O7'].merge;

      xlsheet.range['A6:A6'].Entirerow.font.fontstyle:=fsbold;
      xlsheet.range['A2:A2'].Entirerow.font.color:=clBlue;
      xlsheet.range['A2:A2'].Entirerow.font.size:=18;
      xlsheet.range['A3:A3'].Entirerow.font.color:=clBlue;
      xlsheet.range['A3:A3'].Entirerow.font.size:=18;
      xlsheet.range['A5:A5'].Entirerow.font.size:=12;
      xlsheet.range['A6:A6'].Entirerow.font.size:=12;
      eclApp.ActiveSheet.Rows[5].Font.Bold := True;
      eclApp.ActiveSheet.Rows[6].Font.Bold := True;

      //eclapp.columns.autofit;
      //eclapp.rows.autofit;
      
      xlsheet.range['A:A'].select;
      eclapp.selection.NumberFormatLocal := '@';
      xlsheet.range['A1'].select;
      showmessage('Export Succeed !!!');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
end;

procedure TTraceListSample.BitBtn2Click(Sender: TObject);
begin
  FDStatus_Article:=TFDStatus_Article.create(self);
  FDStatus_Article.parentArticle:=ArticleEdit;
  FDStatus_Article.parentJiJie:=SeasonEdit;
  FDStatus_Article.parentKFJD:=StageEdit;
  FDStatus_Article.show;
end;

end.
