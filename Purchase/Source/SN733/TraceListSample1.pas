unit TraceListSample1;
             
interface
                                    
uses
 { Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellAPI,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, ExtCtrls,comobj,DBGridEhImpExp,
  ComCtrls, GridsEh, DBGridEh, Buttons, Menus;      }

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls, GridsEh, DBGridEh,
  Buttons, ExtCtrls, Menus,comobj,DBGridEhImpExp, ShellAPI, Zlib, DateUtils, IniFiles;

type
  TTraceListSample = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
    SaveDialog1: TSaveDialog;
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
    Query1SamplePurchaser_Name: TStringField;
    Query1Custom: TStringField;
    Query1Custom_2: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Query1All_Article: TStringField;
    Panel6: TPanel;
    DBGridEh1: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh2: TDBGridEh;
    Splitter3: TSplitter;
    DBGridEh3: TDBGridEh;
    Query1Location: TStringField;
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
    Button3: TButton;
    Query4Article: TStringField;
    Label14: TLabel;
    Query4devcode: TStringField;
    Query1sampleorder: TStringField;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    Query1area: TStringField;
    Query1DataUpdateDate: TDateField;
    tmpQry1: TQuery;
    Query4YSSM: TStringField;
    Query1Brand: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Button1: TButton;
    ArticleEdit: TEdit;
    POEdit: TEdit;
    MatEdit: TEdit;
    Button2: TButton;
    CheckBox2: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    SeasonEdit: TEdit;
    Edit4: TEdit;
    SupEdit: TEdit;
    chk1: TCheckBox;
    dtp3: TDateTimePicker;
    dtp4: TDateTimePicker;
    chk2: TCheckBox;
    ckbsel: TCheckBox;
    Edit6: TEdit;
    BBTT2: TBitBtn;
    BBTT1: TBitBtn;
    Edit8: TEdit;
    BBTT4: TBitBtn;
    Edit9: TEdit;
    Cb_DevTP: TComboBox;
    CB_Category: TComboBox;
    Chk_ETD: TCheckBox;
    Chk_Tool: TCheckBox;
    Edit7: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    StageEdit: TEdit;
    Edit10: TEdit;
    Chk_ETD1: TCheckBox;
    ColorwayEdit: TEdit;
    Edit1: TEdit;
    ComboBox14: TComboBox;
    DTP5: TDateTimePicker;
    DTP6: TDateTimePicker;
    Query1PurReceiveDate: TDateTimeField;
    CB_Instock: TCheckBox;
    DTP7: TDateTimePicker;
    Label19: TLabel;
    DTP8: TDateTimePicker;
    CB_PRD: TCheckBox;
    DTP9: TDateTimePicker;
    Label20: TLabel;
    DTP10: TDateTimePicker;
    Query1NewETA: TDateTimeField;
    Query1LateETD: TStringField;
    Query1Material_ETA: TDateTimeField;
    Query1LateETA: TStringField;
    SupIDEdit: TEdit;
    Label21: TLabel;
    Query1FlexCode: TStringField;
    CB_No_PRD: TCheckBox;
    Label22: TLabel;
    Flexcode_edit: TEdit;
    Query1RFCDeadlineDate: TDateTimeField;
    Query1Devtype: TStringField;
    Query1MatRemark: TStringField;
    Query1ActualETD: TDateTimeField;
    Query1DTMReceivedDate: TDateTimeField;
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
    procedure Button3Click(Sender: TObject);
  private
    CheckSuppID:string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  TraceListSample: TTraceListSample;

implementation

uses main1, TraceListSample_Style1, TraceListSample_Purchaser1,
  TraceListSample_Country1,FunUnit, FDStatus_Article1;

{$R *.dfm}

procedure TTraceListSample.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  CheckSuppID:='V192,F032,F168,MV49,V182,FU101,F169,A159,P099';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      CheckSuppID:=MyIni.ReadString('ERP','Purchase_N733_CheckSuppID','V192,F032,F168,MV49,V182,FU101,F169,A159,P099');
    finally
      MyIni.Free;
    end;
  end;
end;

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
begin

  if ((SupEdit.Text='')  and (POEdit.Text='') and (MatEdit.Text='')  and (SeasonEdit.Text='') and (StageEdit.Text='') and (main.Edit2.Text <> 'TBDC') and (CB_Instock.Checked = false) and (CB_PRD.Checked = false) and (not CheckBox2.Checked)) then
  begin
     showmessage('At lease need keyin ome condition .');
     abort;
  end;

  //20141210 避免Season有單引號SQL查詢會有問題
  SeasonEdit.Text:=GetSeasonString(SeasonEdit.Text);
  //
  with query1 do    //第一頁, po status
  begin
    active:=false;
    sql.Clear;
    //開始抓資料
    sql.add('select cast(cgzlssampleorder.sampleorder as VarChar(999) ) as sampleorder,CGZLS.CGNO,CGZLS.CLBH,CGZLS.MEMO1,CGZLS.REMARK,CGZLS.memo,');
    sql.add('CGZLInvoice_1.ETA,CGZLS.ETA as NewETA,isnull(CGZLInvoice_1.BILLNO,'''') as BILLNO,isnull(CGZLInvoice_1.invoice,'''') as invoice,');
    sql.add('isnull(CGZLInvoice_1.transport,'''') as WAY ');
    SQL.Add('       ,max(case when ((left(CGZLS.Article_All,1)=''S'' or left(CGZLS.Article_All,1)=''G'') and KFXXZL.Devtype = ''CTM'' and (R1Sample.RSD is not null and convert(smalldatetime,R1Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R1Sample.RSD,111)-14  ');
    SQL.Add('  		            when (left(CGZLS.Article_All,1)=''C'' and KFXXZL.Devtype = ''CTM'' and (R3Sample.RSD is not null and convert(smalldatetime,R3Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R3Sample.RSD,111)-14  ');
    SQL.Add('                 when (left(CGZLS.Article_All,1)=''G'' and KFXXZL.Devtype = ''Incubate'' and CGZL.PURPOSE=''CR1'' and (R1Sample.RSD is not null and convert(smalldatetime,R1Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R1Sample.RSD,111)-14  ');
    SQL.Add('                 when (left(CGZLS.Article_All,1)=''G'' and KFXXZL.Devtype = ''Incubate'' and CGZL.PURPOSE=''CR2'' and (R2Sample.RSD is not null and convert(smalldatetime,R2Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R2Sample.RSD,111)-14  ');
    SQL.Add('                 when (left(CGZLS.Article_All,1)=''G'' and KFXXZL.Devtype = ''Incubate'' and CGZL.PURPOSE=''SMS'' and (R3Sample.RSD is not null and convert(smalldatetime,R3Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R3Sample.RSD,111)-14  ');
    SQL.Add('                 when (GamePlan.Material_ETA is not null and convert(smalldatetime,GamePlan.Material_ETA ,111) > getdate()) then GamePlan.Material_ETA  ');
    SQL.Add('  	              else null end ) as Material_ETA,  ');
    sql.add('CGZLS.Qty,CGZLS.USERID,CGZLS.USERDate,CGZLS.CFMDate,CGZLS.YQDate,');
    sql.add('CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL_FLEX.CLDHFLEX AS FlexCode,CLZL.DWBH ,CGZL.ZSBH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL_DEV.COUNTRY,  ');
    //20150314 weston修改
    sql.add('KCRKS.Qty as RKQTY,MAX(KCRKS.UserDate) as RKdate, CGZLInvoiceS_1.PurReceiveDate,');
    //
    sql.add('CGZLInvoice_2.BillNO as BILLNO_2,CGZLInvoice_2.Invoice as invoice_2,CGZLInvoice_2.transport as WAY_2 , ');
    sql.add('CGZLS.article_all as All_Article,BUSERS.USERNAME as SamplePurchaser_Name,isnull(CGZLInvoice_1.Custom,'''') as Custom,isnull(CGZLInvoice_2.Custom,'''') as Custom_2 ');
    //sql.add('       isnull(CGZLS.qty,0)*isnull(CGZLS.USPrice,0)+(isnull(CGZLS.qty,0)*isnull(CGZLS.VNPrice,0)/ISNULL(CGHLS.CWHL,0))  as ACCUS ,  ');
    //sql.add('       isnull(CGZLS.qty,0)*isnull(CGZLS.VNPrice,0)  as ACCVN ,');
    sql.add(',MaterialMOQ.Location ');
    sql.add(',MaterialMOQ.Skin_Quality,MaterialMOQ.Skin_Size  ');
    sql.add(',MaterialNG.NG_Reason,MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.Result as NG_Result,MaterialNG.QC_SKIN,MaterialNG.Remark AS NG_Remark, MaterialNG.C_window,MaterialNG.QC_Inspection1,MaterialNG.QC_Inspection2,MaterialNG.NG_Date,  ');     //add more ,MaterialNG.QC_Inspection1,MaterialNG.QC_Inspection2 Apr.04.2013 Thoai
    sql.add('case when right(clzl.ywpm,3)=''(V)'' then ''local'' when right(clzl.ywpm,3)=''(T)'' then ''oversea'' else ''check'' end area,kfxxzl.KHDH as Brand');
    //Them cot LateETD
    sql.Add(', case when CGZLS.CFMDate> CGZLS.YQDate Then ''Y'' else ''N'' end as LateETD,xxzlkf.RFCDeadlineDate,KFXXZL.Devtype,clbzzl.bz as MatRemark,CGZLS.CommitedETD as ActualETD,');
    //=================
    sql.Add('MAX(CGZLInvoiceS_1.DTMReceivedDate) as DTMReceivedDate');
    //=================
    sql.add('from CGZLS');
    sql.add('left join cgzlss on cgzls.cgno=cgzlss.cgno and cgzls.clbh=cgzlss.clbh');
    sql.add('left join CLZL  on CLZl.CLDH=CGZLS.CLBH');
    sql.add('left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH');
    sql.add('left join CGZL  on CGZl.CGNO=CGZLS.CGNO ');
    sql.add('left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
    sql.add('left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  ');
    sql.Add('left join (');

    //sql.add('  select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1, MAX(PurReceiveDate) AS PurReceiveDate from CGZLInvoiceS');
    sql.add('  select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1, MAX(PurReceiveDate) AS PurReceiveDate, MAX(DTMReceivedDate) as DTMReceivedDate from CGZLInvoiceS');

    sql.add('  GROUP BY CGNO,CLBH');
    sql.add(') AS CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO');
    sql.add('left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
    sql.Add('left join (');
    sql.add('  select CGNO,CLBH,isnull(Max(CINO),''no invoice2'') AS CINO_2 from CGZLInvoiceS');
    sql.add('  GROUP BY CGNO,CLBH');
    sql.add(') AS CGZLInvoiceS_2 on CGZLS.CLBH=CGZLInvoiceS_2.CLBH and CGZLS.CGNO=CGZLInvoiceS_2.CGNO and CGZLInvoiceS_2.CINO_2<>CGZLInvoiceS_1.CINO_1');
    sql.add('left join CGZLInvoice CGZLInvoice_2  on CGZLInvoice_2.CINO=CGZLInvoiceS_2.CINO_2  ');
    sql.Add('left join MaterialMOQ on MaterialMOQ.CLBH=CGZLS.clbh and MaterialMOQ.Season=CGZL.SEASON ');
    sql.add('left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO ');
    //20150314 weston修改
    //sql.add('left join KCRKS on  CGZLS.CGNO=KCRKS.DOCNO and CGZLS.CLBH=KCRKS.CLBH  and ISNULL(KCRKS.RKSB,'''')<>''NG'' ');
    sql.Add('left join (select CLBH,DOCNO,Qty,UserDate from KCRKS');
    sql.Add('           where ISNULL(KCRKS.RKSB,'''')<>''NG'' ');
    sql.Add('           union all');
    sql.Add('           select CLBH,ZSNO,Qty,KCRKS_FOC.UserDate from KCRKS_FOC,KCRK_FOC');
    sql.Add('           where KCRKS_FOC.RKNO=KCRK_FOC.RKNO and ISNULL(flowflag,'''')<>''X'' ');
    sql.Add('           )KCRKS on  CGZLS.CGNO=KCRKS.DOCNO and CGZLS.CLBH=KCRKS.CLBH');
    sql.add('left join ( ');
    sql.add('select cs.cgno,cs.clbh ,(select zlbh+''/'' from CGZLSS where cgno=cs.cgno and clbh=cs.clbh FOR XML PATH (''''))as sampleorder ');
    sql.add('from CGZLSS cs group by cs.cgno,cs.clbh ');
    sql.add(')cgzlssampleorder on cgzlssampleorder.CGNO=CGZLS.cgno and cgzlssampleorder.CLBH=CGZLS.CLBH ');

    sql.add('left join YPZL on  YPZL.YPDH=cgzlss.ZLBH ');
    sql.add('left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.SheHao = YPZL.SheHao ');
    sql.add('left join xxzlkf on kfxxzl.XieXing = xxzlkf.XieXing and kfxxzl.SheHao = xxzlkf.SheHao ');

    sql.Add('left join (');
    sql.add('  select Season, Stage, MAX(Material_ETA) AS Material_ETA from GamePlan');
    sql.add('  GROUP BY Season,Stage');
    sql.add(') AS GamePlan on CGZL.Season=GamePlan.Season and CGZL.PURPOSE=GamePlan.Stage');
    SQL.Add('left join R1Sample on  R1Sample.Xiexing = KFXXZL.XieXing and R1Sample.Shehao = KFXXZL.Shehao  ');
    SQL.Add('left join R3Sample on  R3Sample.Xiexing = KFXXZL.XieXing and R3Sample.Shehao = KFXXZL.Shehao  ');
    SQL.Add('left join R2Sample on  R2Sample.Xiexing = KFXXZL.XieXing and R2Sample.Shehao = KFXXZL.Shehao  ');
    SQL.Add('left join clbzzl on clzl.cldh=clbzzl.cldh and clbzzl.zybb=''E'' ');

    sql.add('where CGZL.CGLX=''6''  ');
    sql.add('     and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    if ComboBox14.Text <> '' then
    begin
      SQL.Add('   and YPZL.YPDH like '''+ComboBox14.Text+'%''');
    end;
    if (ArticleEdit.Text<>'') or (ColorwayEdit.Text <> '') then  //Article
    begin
       sql.add('and cgzlss.zlbh in (select ypdh from CGZLSS  ');
       sql.add('left join YPZL on CGZLSS.ZLBH=YPZL.YPDH ');
       sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
       sql.add('where  kfxxzl.devcode like '+''''+articleedit.Text+'%'+''' and kfxxzl.YSSM like '+''''+ColorwayEdit.Text+'%'+''' group by ypdh)  ');
    end;
    if POEdit.Text<>'' then
       sql.add('  and CGZLS.CGNO like '+''''+POEdit.Text+'%'+'''');
    if MatEdit.Text<>'' then
       sql.add('  and CGZLS.CLBH like '+''''+MatEdit.Text+'%'+'''');
    if SupIDEdit.Text<>'' then
       sql.add(  'and CGZL.ZSBH like '+'''%'+SupIDEdit.Text+'%'+'''');
    if SupEdit.Text<>'' then
       sql.add(  'and ZSZL.ZSYWJC like '+'''%'+SupEdit.Text+'%'+'''');
    if edit4.Text<>'' then
       sql.add('  and CGZLS.USERID='+''''+edit4.Text+'''');
    if SeasonEdit.Text<>'' then
       sql.add('  and CGZL.SEASON='+''''+SeasonEdit.Text+'''');
    if Edit6.Text<>'' then
       sql.add('  and ZSZL_DEV.style='''+Edit6.Text+'''');
    if StageEdit.Text<>'' then
       sql.add('  and CGZL.PURPOSE='+''''+StageEdit.Text+'''');
    if edit8.Text<>'' then
       sql.add('  and ZSZL_DEV.Country='+''''+edit8.Text+'''');
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
    // 20150831
    if chk_ETD1.Checked then
      begin
        sql.add(' and convert(smalldatetime,convert(varchar,CGZLS.CFMDate,111))  between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DTP5.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP6.Date) +'''');
      end;
    //
    if Chk_Tool.Checked then
       begin
         sql.add('and ( LEFT(CGZLS.CLBH,1)<>''V''  ) ');
       end;
    if length(CB_Category.Text) > 0 then
       BEGIN
         sql.add(' and EXISTS ( SELECT CGNO FROM CGZLSS  ');
         sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
         sql.add('              WHERE KFXXZL.category = '+''''+CB_Category.Text+''+'''');
         sql.add('                    AND CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
         sql.add('             )   ');
       END;
    if length(Cb_DevTP.Text) > 0 then
       BEGIN
         sql.add(' and EXISTS ( SELECT CGNO FROM CGZLSS  ');
         // 20150708  modify relative
         sql.Add(' left join ypzl on cgzlss.zlbh=ypzl.ypdh');
         sql.add('              LEFT JOIN KFXXZL on ypzl.xiexing=KFXXZL.xiexing and ypzl.shehao=kfxxzl.shehao  ');
         sql.add('              WHERE KFXXZL.DevType = '+''''+Cb_DevTP.Text+''+'''');
         sql.add('                    AND CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
         sql.add('             )   ');
       END;
    if Edit1.Text<>'' then
       sql.add('  and kfxxzl.KHDH like'+''''+'%'+Edit1.text+'%'+'''');
    if CB_Instock.Checked then
      sql.add('  and convert(smalldatetime, convert(varchar, KCRKS.UserDate, 111)) between ''' + FormatDateTime('yyyy/MM/dd', DTP7.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP8.Date) + '''');
    if CB_PRD.Checked then
      sql.add('  and convert(smalldatetime, convert(varchar, CGZLInvoiceS_1.PurReceiveDate, 111)) between ''' + FormatDateTime('yyyy/MM/dd', DTP9.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP10.Date) + '''');
    if CB_No_PRD.Checked then
      sql.Add('  and CGZLInvoiceS_1.PurReceiveDate is null ');
    if Flexcode_edit.Text<>'' then
      sql.Add('  and CLZL_FLEX.CLDHFLEX like '''+Flexcode_edit.Text+'%'' ');

    sql.add('  and CGZL.zsbh not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');
    sql.add('group by cast(cgzlssampleorder.sampleorder as VarChar(999) ),CGZL.CGNO,CGZLS.CGNO,CGZLS.CLBH,CGZLS.MEMO1,CGZLS.REMARK,CGZLS.memo,');
    sql.add('CGZLInvoice_1.ETA,isnull(CGZLInvoice_1.BILLNO,'''') ,isnull(CGZLInvoice_1.invoice,''''),');
    sql.add('isnull(CGZLInvoice_1.transport,''''),CGZLS.Qty,CGZLS.USERID,CGZLS.USERDate,CGZLS.CFMDate,CGZLS.YQDate,');
    sql.add('CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL_FLEX.CLDHFLEX,CLZL.DWBH ,CGZL.ZSBH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL_DEV.COUNTRY,');
    sql.add('KCRKS.Qty,CGZLInvoiceS_1.PurReceiveDate,CGZLInvoice_2.BillNO ,CGZLInvoice_2.Invoice ,CGZLInvoice_2.transport,');
    sql.add('CGZLS.article_all,BUSERS.USERNAME,isnull(CGZLInvoice_1.Custom,''''),isnull(CGZLInvoice_2.Custom,''''),');
    sql.add('MaterialMOQ.Location,MaterialMOQ.Skin_Quality,MaterialMOQ.Skin_Size,MaterialNG.NG_Reason,');
    sql.add('MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.Result ,MaterialNG.QC_SKIN,MaterialNG.Remark,');
    sql.add('MaterialNG.C_window,MaterialNG.QC_Inspection1,MaterialNG.QC_Inspection2,MaterialNG.NG_Date, ');
    sql.add('case when right(clzl.ywpm,3)=''(V)'' then ''local'' when right(clzl.ywpm,3)=''(T)'' then ''oversea'' else ''check'' end ,kfxxzl.KHDH,CGZLS.ETA,xxzlkf.RFCDeadlineDate,KFXXZL.Devtype,clbzzl.bz,CGZLS.CommitedETD');
    sql.add('order by CGZL.CGNO');
    //showmessage(SQL.Text);
    active:=true;
    //memo2.Lines:=sql;
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
      sql.add('select CGZLSS.*,CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL.DWBH ,CGZLS.memo,CGZLS.WAY,CGZL.ZSBH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL_DEV.COUNTRY,KFXXZL.XIEMING,CGZLS.MEMO1,CGZLS.REMARK,');
      sql.add('       CGZLInvoice_1.ETA,isnull(CGZLInvoice_1.BILLNO,'''') as BILLNO,isnull(CGZLInvoice_1.invoice,'''') as invoice,');
      sql.add('        CGZLS.USPrice ,CGZLS.VNPrice ,KFXXZL.FD,  ');
      sql.Add('        KCRKS.UserDate as RKDate, ');
      //sql.add('       (SELECT top 1 KCRK.USERDATE FROM KCRKS,KCRK WHERE KCRK.RKNO=KCRKS.RKNO AND KCRKS.CGBH=CGZLSS.CGNO AND KCRKS.CLBH=CGZLSS.CLBH  ) AS RKdate ,  ');
      sql.add('       CGZLInvoice_2.BillNO as BILLNO_2,CGZLInvoice_2.Invoice as invoice_2,CGZLInvoice_2.transport as WAY_2  ');
      sql.add('from CGZLSS');
      sql.add('left join CLZL  on CLZl.CLDH=CGZLSS.CLBH');
      sql.add('left join CGZL  on CGZl.CGNO=CGZLSS.CGNO ');
      sql.add('left join CGZLS on CGZLS.CGNO=CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH ');
      sql.add('left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH ');
      sql.add('left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
      sql.add('left join KFXXZL  on CGZLSS.ZLBH=KFXXZL.ARTICLE ');
      sql.Add('left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
      sql.add('left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
      sql.Add('left join (select CGNO,CLBH,isnull(Max(CINO),''no invoice2'') AS CINO_2 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_2 on CGZLS.CLBH=CGZLInvoiceS_2.CLBH and CGZLS.CGNO=CGZLInvoiceS_2.CGNO and CGZLInvoiceS_2.CINO_2<>CGZLInvoiceS_1.CINO_1  ');
      sql.add('left join CGZLInvoice CGZLInvoice_2  on CGZLInvoice_2.CINO=CGZLInvoiceS_2.CINO_2  ');
      //20150314 weston修改
      sql.add('left join KCRKS on  CGZLS.CGNO=KCRKS.DOCNO and CGZLS.CLBH=KCRKS.CLBH  and ISNULL(KCRKS.RKSB,'''')<>''NG'' ');
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
         sql.add('   and ZSZL_DEV.style='''+Edit6.Text+'''');
      if StageEdit.Text<>'' then
         sql.add('   and CGZL.PURPOSE='+''''+StageEdit.Text+'''');
      if edit8.Text<>'' then
         sql.add('   and ZSZL_DEV.Country='+''''+edit8.Text+'''');
      if chk1.Checked then
         sql.add('   and CGZLInvoice_1.ETA is null and CGZLSS.Qty > 0');
      if chk_ETD.Checked then
         sql.add
         ('and CGZLS.CFMDate is null and CGZLS.Qty > 0');
      if length(CB_Category.Text) > 0 then
         sql.add(' AND KFXXZL.category like '+'''%'+CB_Category.Text+'%'+'''');
      if length(Cb_DevTP.Text) > 0 then
         sql.add('   AND KFXXZL.DevType like '+'''%'+Cb_DevTP.Text+'%'+'''');
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
      //memo2.Lines:=sql;
    end;
  end;

  if Chk_ShowPage3.Checked then
  begin
  with query1 do    //第一頁, po status
  begin
    active:=false;
    sql.Clear;

  end;
  with query3 do    //第三頁, po (payment)  status
  begin
    active:=false;
    sql.Clear;
    //
    sql.add('select CGZLS.CGNO,CGZLS.CLBH,CGZLS.MEMO1,CGZLS.REMARK,CGZLS.ETA,CGZLS.memo,CGZLS.BILLNO,CGZLS.WAY,CGZLS.Qty,KCRKS.USERID,KCRKS.USERDate,CGZLS.CFMDate,');
    sql.add('       CGZL.SEASON,CGZL.PURPOSE,CLZL.YWPM,CLZL.DWBH ,CGZL.ZSBH,ZSZL.ZSYWJC,CGZL.CGDATE,ZSZL.yjdz,ZSZL_DEV.COUNTRY,  ');
    sql.add('       KCRKS.USERDATE as RKdate,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.QTY AS RKQty,KCRKS.PaQty,KCRKS.RKNO  ');
    sql.add('from CGZLS');
    //20150314 weston修改
    sql.add('left join KCRKS on  CGZLS.CGNO=KCRKS.DOCNO and CGZLS.CLBH=KCRKS.CLBH  and ISNULL(KCRKS.RKSB,'''')<>''NG'' ');
    sql.add('left join CLZL  on CLZl.CLDH=CGZLS.CLBH');
    sql.add('left join CGZL  on CGZl.CGNO=CGZLS.CGNO ');
    sql.add('left join ZSZL  on CGZL.ZSBH=ZSZL.ZSDH ');
    sql.add('left join ZSZL_DEV  on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
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
         sql.add(' and ZSZL_DEV.style='''+Edit6.Text+'''');
    if StageEdit.Text<>'' then
         sql.add(' and CGZL.PURPOSE='+''''+StageEdit.Text+'''');
    if edit8.Text<>'' then
         sql.add(' and ZSZL_DEV.Country='+''''+edit8.Text+'''');
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
         sql.add('              WHERE KFXXZL.category like '+'''%'+CB_Category.Text+'%'+'''');
         sql.add('                    AND CGZLSS.CGNO=CGZLS.CGNO AND CGZLS.CLBH=CGZLSS.CLBH  ');
         sql.add('             )   ');
       END;
    if length(Cb_DevTP.Text) > 0 then
       BEGIN
         sql.add(' and EXISTS ( SELECT CGNO FROM CGZLSS  ');
         sql.add('              LEFT JOIN KFXXZL on CGZLSS.ZLBH=KFXXZL.ARTICLE  ');
         sql.add('              WHERE KFXXZL.DevType like '+'''%'+Cb_DevTP.Text+'%'+'''');
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
 DTP6.DateTime:=now();
 DTP5.DateTime:=now()-30;  
 DTP8.DateTime:=now();
 DTP7.DateTime:=now()-30;
 DTP10.DateTime:=now();
 DTP9.DateTime:=now()-30;

  //------------------------------add more - Thoai Apr.04.2013------------------

    for i:=0 to 49 do
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
  if (main.Edit2.Text = 'CDC') or (main.Edit2.Text = 'SKX') then
    DBGrid1.Columns[56].Destroy
  else begin
    Edit1.Visible := not Edit1.Visible;
    Label17.Visible := not Label17.Visible;
  end;
  if (main.Edit2.Text = 'CDC') or (main.Edit2.Text = 'SKX') then
    Chk_ShowERPPrice.Visible := not Chk_ShowERPPrice.Visible;
  if main.Edit2.Text = 'SKX' then
  begin
    Label18.Visible := true;
    ComboBox14.Visible := true;
  end;
  ReadIni();
end;

procedure TTraceListSample.Query1CalcFields(DataSet: TDataSet);
  var MTRL_ETA: TDateTime;
      Result1,Result2: Integer;
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

//  Qry_zszlSamplePayment.Active:=false  ;
//  Qry_zszlSamplePayment.SQL.Clear;
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
{       if (Query1.FieldByName('PURPOSE').Value='SEE') OR (Query1.FieldByName('PURPOSE').Value='TRIAL') then
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
       Qry_zszlSamplePayment.first;    }
//       if not Qry_zszlSamplePayment.eof then
//          begin
//            Query1.FieldByName('FreeQty_').value:=Qry_zszlSamplePayment.FieldByName('FreeQty').value;
//            Query1.FieldByName('Charge_').value:=Qry_zszlSamplePayment.FieldByName('Charge').value;
//            if Query1.FieldByName('Qty').value<=Qry_zszlSamplePayment.FieldByName('FreeQty').Value then
//               begin
//                 Query1.FieldByName('USPrice_').value:=0;
//               end;
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
//            if Query1.FieldByName('Qty').value>Qry_zszlSamplePayment.FieldByName('FreeQty').Value then
//               begin
//                 Query1.FieldByName('USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100) ;
//                 Query1.FieldByName('VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100) ;
//               end;
//          end;
     end;
    if not (Query1.FieldByName('USPrice_').IsNull) then
       if Query1.FieldByName('USPrice_').Value>0 then
       Query1.FieldByName('USACC_').value:=(Query1.FieldByName('USPrice_').value*Query1.FieldByName('Qty').Value);

    if not (Query1.FieldByName('VNPrice_').IsNull) then
      if Query1.FieldByName('VNPrice_').Value>0 then
       Query1.FieldByName('USACC_').value:=(Query1.FieldByName('USPrice_').value*Query1.FieldByName('Qty').Value)+(Query1.FieldByName('VNPrice_').value*Query1.FieldByName('Qty').Value/Query1.FieldByName('CWHL').Value) ;
    Query1.FieldByName('VNACC_').value:=Query1.FieldByName('VNPrice_').value*(Query1.FieldByName('Qty').Value) ;

  end;
  tmpQry1.Active := false;
  tmpQry1.SQL.Text := 'select top 1 case when CGZLS.USERDate > (select isnull(max(USERDate),CONVERT(CHAR(19), ''2008/09/09 08:25 AM'', 20)) from CGZLInvoice where CINO in (select CINO from CGZLInvoiceS where CGNO='''+Query1.fieldbyname('CGNO').AsString+''' and CLBH = '''+Query1.fieldbyname('CLBH').AsString+''')) then CGZLS.USERDate  ' +
                      'else (select max(USERDate) from CGZLInvoice where CINO in (select CINO from CGZLInvoiceS where CGNO='''+Query1.fieldbyname('CGNO').AsString+''' and CLBH = '''+Query1.fieldbyname('CLBH').AsString+''')) end as userdate ' +
                      'from CGZLS ' +
                      'left join CGZLInvoiceS on CGZLS.CGNO=CGZLInvoiceS.CGNO and CGZLS.CLBH = CGZLInvoiceS.CLBH ' +
                      'left join CGZLInvoice on CGZLInvoiceS.CINO = CGZLInvoice.CINO '+
                      'where CGZLS.CGNO ='''+Query1.fieldbyname('CGNO').AsString+''' '+
                      'and CGZLS.CLBH = '''+Query1.fieldbyname('CLBH').AsString+'''';
  tmpQry1.Open;
  Query1.FieldByName('DataUpdateDate').Value := tmpQry1.Fields[0].Value;

  if query1.FieldByName('CFMDate').AsString<>'' then
  begin
    if trim(query1.FieldByName('Location').AsString) <> '' then begin
      if UpperCase(query1.FieldByName('Location').AsString)='VN' then //國內或國外
      begin
        if (Pos(query1.FieldByName('ZSBH').Value,CheckSuppID)>0) then
          MTRL_ETA:=query1.FieldByName('CFMDate').Value+5
        else
          MTRL_ETA:=query1.FieldByName('CFMDate').Value+2;
      end else
        MTRL_ETA:=query1.FieldByName('CFMDate').Value+5;
    end else
    begin
      if UpperCase(query1.FieldByName('country').AsString)='VN' then //國內或國外
      begin
        if (Pos(query1.FieldByName('ZSBH').Value,CheckSuppID)>0) then
          MTRL_ETA:=query1.FieldByName('CFMDate').Value+5
        else
          MTRL_ETA:=query1.FieldByName('CFMDate').Value+2;
      end else
        MTRL_ETA:=query1.FieldByName('CFMDate').Value+5;
    end;
  end;
  if query1.FieldByName('Material_ETA').Value<>null then
  begin
    if (query1.FieldByName('CFMDate').Value<>null) and (query1.FieldByName('NewETA').Value=null) then
    begin
      Result1:= CompareDate(MTRL_ETA,query1.FieldByName('Material_ETA').Value);
      if (Result1>0) then
        Query1.FieldByName('LateETA').Value := 'Y'
      else
        Query1.FieldByName('LateETA').Value := 'N';
    end else if (query1.FieldByName('NewETA').Value<>null) and (query1.FieldByName('CFMDate').Value=null) then
    begin
      Result2:= CompareDate(query1.FieldByName('NewETA').Value,query1.FieldByName('Material_ETA').Value);
      if (Result2>0) then
        Query1.FieldByName('LateETA').Value := 'Y'
      else
        Query1.FieldByName('LateETA').Value := 'N';
    end else if (query1.FieldByName('CFMDate').Value<>null) and (query1.FieldByName('NewETA').Value<>null) then
    begin
      Result1:= CompareDate(MTRL_ETA,query1.FieldByName('Material_ETA').Value);
      Result2:= CompareDate(query1.FieldByName('NewETA').Value,query1.FieldByName('Material_ETA').Value);
      if (Result1>0) and (Result2>0) then
        Query1.FieldByName('LateETA').Value := 'Y'
      else
        Query1.FieldByName('LateETA').Value := 'N';
    end;
  end else Query1.FieldByName('LateETA').Value := 'N';
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
     DBGrid1.Columns[54].ReadOnly:=false;
     DBGrid1.Columns[55].ReadOnly:=false;

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
     DBGrid1.Columns[54].ReadOnly:=true;
     DBGrid1.Columns[55].ReadOnly:=true;

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

procedure TTraceListSample.Button3Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
    ClumnWidth:array [0..36] of integer;
    ClumnDesc:array [0..36] of string;
begin
   if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        ClumnDesc[0]:='Purchase NO';
        ClumnDesc[1]:='Season';
        ClumnDesc[2]:='Stage';
        ClumnDesc[3]:='Mat Name';
        ClumnDesc[4]:='Mat Remark';
        ClumnDesc[5]:='Flex Code';

        ClumnDesc[6]:='Pur Qty';
        ClumnDesc[7]:='Unit';
        ClumnDesc[8]:='Purchase Date';
        ClumnDesc[9]:='Purchase Req.Date';
        ClumnDesc[10]:='MTRL ETD';
        ClumnDesc[11]:='Late ETD';
        ClumnDesc[12]:='MTRL ETA';
        ClumnDesc[13]:='Inv receive Date';
        ClumnDesc[14]:='Pur Receive Date';
        ClumnDesc[15]:='In-stock Date';
        ClumnDesc[16]:='Supplier Invoice Name';
        ClumnDesc[17]:='Supplier Invoice Prod Location';
        ClumnDesc[18]:='Last Update Date';
        ClumnDesc[19]:='All_Article';
        ClumnDesc[20]:='Sample Purchaser';
        ClumnDesc[21]:='NG Reason';
        ClumnDesc[22]:='NG ETD';
        ClumnDesc[23]:='NG ETA';
        ClumnDesc[24]:='Actual ETD';
        ClumnDesc[25]:='New ETA';
        ClumnDesc[26]:='Material_ETA';
        ClumnDesc[27]:='LateETA';
        ClumnDesc[28]:='NG Result';
        ClumnDesc[29]:='NG Color window';
        ClumnDesc[30]:='SampleOrder';
        ClumnDesc[31]:='Devtype';
        ClumnDesc[32]:='MateialNO';
        ClumnDesc[33]:='RecieveQty';
        ClumnDesc[34]:='PurchaseMemo';
        ClumnDesc[35]:='Invoice';
        ClumnDesc[36]:='Data Update Date';
        ClumnWidth[0]:=11;
        ClumnWidth[1]:=5;
        ClumnWidth[2]:=5;
        ClumnWidth[3]:=50;
        ClumnWidth[4]:=20;
        ClumnWidth[5]:=8;
        ClumnWidth[6]:=8;
        ClumnWidth[7]:=10;
        ClumnWidth[8]:=10;
        ClumnWidth[9]:=10;
        ClumnWidth[10]:=10;
        ClumnWidth[11]:=10;
        ClumnWidth[12]:=10;
        ClumnWidth[13]:=10;
        ClumnWidth[14]:=10;
        ClumnWidth[15]:=10;
        ClumnWidth[16]:=10;
        ClumnWidth[17]:=10;
        ClumnWidth[18]:=45;
        ClumnWidth[19]:=10;
        ClumnWidth[20]:=10;
        ClumnWidth[21]:=10;
        ClumnWidth[22]:=10;
        ClumnWidth[23]:=10;
        ClumnWidth[24]:=10;
        ClumnWidth[25]:=10;
        ClumnWidth[26]:=10;
        ClumnWidth[27]:=10;
        ClumnWidth[28]:=10;
        ClumnWidth[29]:=10;
        ClumnWidth[30]:=10;
        ClumnWidth[31]:=10;
        ClumnWidth[32]:=10;
        ClumnWidth[33]:=10;
        ClumnWidth[34]:=10;
        ClumnWidth[35]:=10;
        ClumnWidth[36]:=10;
        for i:=0 to High(ClumnWidth) do
        begin
          eclApp.ActiveSheet.Columns[i+1].ColumnWidth := ClumnWidth[i]; //欄位寬度
          eclApp.Cells[1,i+1].HorizontalAlignment := -4108; //文字水平置中
          eclApp.Cells[1,i+1]:=ClumnDesc[i]; //抬頭名稱 YPZLZLS2.fields[i].FieldName;
        end;
        //
        //抬頭顏色
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,i]].interior.color:=clYellow;
        //格式和自動換行 置中
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[Query1.RecordCount+1,High(ClumnWidth)+1]].Borders.weight:=2;
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[Query1.RecordCount+1,High(ClumnWidth)+1]].NumberFormatLocal:='@';
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[Query1.RecordCount+1,High(ClumnWidth)+1]].WrapText:=true;
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[Query1.RecordCount+1,High(ClumnWidth)+1]].HorizontalAlignment:= -4108;
        //
        j:=2;
        Query4.Active:=false;
        Query5.Active:=false;
        Query6.Active:=false;
        Query1.First;
        for i:=0 to query1.RecordCount-1 DO
        begin
           eclApp.Cells(j,1):=query1.FieldByName('CGNO').Value;
           eclApp.Cells(j,2):=query1.FieldByName('SEASON').Value;
           eclApp.Cells(j,3):=query1.FieldByName('PURPOSE').Value;
           eclApp.Cells(j,4):=query1.FieldByName('YWPM').Value;
           eclApp.Cells(j,5):=query1.FieldByName('MatRemark').Value;
           eclApp.Cells(j,6):=query1.FieldByName('FlexCode').Value;
           eclApp.Cells(j,7):=query1.FieldByName('Qty').Value;
           eclApp.Cells(j,8):=query1.FieldByName('DWBH').Value;
           if query1.FieldByName('CGDate').AsString<>'' then
             eclApp.Cells(j,9):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('CGDate').Value);

           if query1.FieldByName('YQDate').AsString<>'' then
             eclApp.Cells(j,10):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('YQDate').Value);
           if query1.FieldByName('CFMDate').AsString<>'' then
             eclApp.Cells(j,11):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('CFMDate').Value);
           //if query1.FieldByName('CFMDate').Value>query1.FieldByName('YQDate').Value then
             //eclApp.Cells(j,10):='Y' else  eclApp.Cells(j,10):='N';
           eclApp.Cells(j,12):= query1.FieldByName('LateETD').Value;
           if query1.FieldByName('CFMDate').AsString<>'' then
           begin
             if trim(query1.FieldByName('Location').AsString) <> '' then
             begin
               if UpperCase(query1.FieldByName('Location').AsString)='VN' then //國內或國外
               begin
                 if (Pos(query1.FieldByName('ZSBH').Value,CheckSuppID)>0) then
                    eclApp.Cells(j,13):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('CFMDate').Value+5)
                 else
                    eclApp.Cells(j,13):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('CFMDate').Value+2);
               end else
                 eclApp.Cells(j,13):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('CFMDate').Value+5);
             end else
             begin
               if UpperCase(query1.FieldByName('country').AsString)='VN' then //國內或國外
               begin
                 if (Pos(query1.FieldByName('ZSBH').Value,CheckSuppID)>0) then
                    eclApp.Cells(j,13):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('CFMDate').Value+5)
                 else
                    eclApp.Cells(j,13):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('CFMDate').Value+2);
               end else
                 eclApp.Cells(j,13):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('CFMDate').Value+5);
             end;
           end;
           if query1.FieldByName('ETA').AsString<>'' then
             eclApp.Cells(j,14):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('ETA').Value);
           if query1.FieldByName('PurReceiveDate').AsString<>'' then
             eclApp.Cells(j,15):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('PurReceiveDate').Value);
           if query1.FieldByName('RKDate').AsString<>'' then
             eclApp.Cells(j,16):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('RKDate').Value);
           eclApp.Cells(j,17):=query1.FieldByName('ZSYWJC').Value;
           eclApp.Cells(j,18):=query1.FieldByName('Location').Value;
           eclApp.Cells(j,19):=query1.FieldByName('UserDate').Value;
           eclApp.Cells(j,20):=query1.FieldByName('All_Article').Value;
           eclApp.Cells(j,21):=query1.FieldByName('SamplePurchaser_Name').Value;
           eclApp.Cells(j,22):=query1.FieldByName('NG_Reason').Value;
           eclApp.Cells(j,23):=query1.FieldByName('NG_ETD').Value;
           eclApp.Cells(j,24):=query1.FieldByName('NG_ETA').Value;
           eclApp.Cells(j,25):=query1.FieldByName('ActualETD').Value;
           if query1.FieldByName('NewETA').AsString <>'' then
            eclApp.Cells(j,26):=FormatDateTime('YYYY/MM/DD',query1.FieldByName('NewETA').Value);
           eclApp.Cells(j,27):=query1.FieldByName('Material_ETA').Value;
           eclApp.Cells(j,28):=query1.FieldByName('LateETA').Value;
           eclApp.Cells(j,29):=query1.FieldByName('NG_ReSult').Value;
           eclApp.Cells(j,30):=query1.FieldByName('C_Window').Value;
           eclApp.Cells(j,31):=query1.FieldByName('sampleorder').Value;
           eclApp.Cells(j,32):=query1.FieldByName('Devtype').Value;
           eclApp.Cells(j,33):=query1.FieldByName('clbh').Value;
           eclApp.Cells(j,34):=query1.FieldByName('rkqty').Value;
           eclApp.Cells(j,35):=query1.FieldByName('Memo').Value;
           eclApp.Cells(j,36):=query1.FieldByName('Invoice').Value;
           eclApp.Cells(j,37):=query1.FieldByName('DataUpdateDate').Value;
           query1.Next;
           inc(j);
        end;

        //
        Query4.Active:=true;
        Query5.Active:=true;
        Query6.Active:=true;
     // eclapp.columns.autofit;
        eclApp.Visible:=True;
        showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

end.
