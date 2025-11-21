                         unit FDStatus1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DBGridEhImpExp, ShellAPI, StdCtrls,
  ExtCtrls,IniFiles, comobj, ComCtrls, Menus, Buttons, DBCtrls;

type
  TFDStatus = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    FDEdit: TEdit;
    Label2: TLabel;
    SeasonEdit: TEdit;
    Label3: TLabel;
    StageEdit: TEdit;
    Button1: TButton;
    Button2: TButton;
    qry1: TQuery;
    ds1: TDataSource;
    strngfldqry1jijie: TStringField;
    strngfldqry1article: TStringField;
    strngfldqry1xieming: TStringField;
    strngfldqry1stage: TStringField;
    qry2: TQuery;
    ds2: TDataSource;
    strngfldqry2clbh: TStringField;
    strngfldqry2ywpm: TStringField;
    fltfldqry2clsl: TFloatField;
    strngfldqry2csbh: TStringField;
    strngfldqry2zsywjc: TStringField;
    intgrfldqry2recs: TIntegerField;
    dtmfldqry2cgdate: TDateTimeField;
    dtmfldqry2yqdate: TDateTimeField;
    dtmfldqry2rkdate: TDateTimeField;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    pnl2: TPanel;
    dbgrdh1: TDBGridEh;
    spl1: TSplitter;
    pnl3: TPanel;
    dbgrdh2: TDBGridEh;
    pnl1: TPanel;
    pnl4: TPanel;
    dbgrdh3: TDBGridEh;
    dbgrdh4: TDBGridEh;
    qry3: TQuery;
    qry4: TQuery;
    ds3: TDataSource;
    ds4: TDataSource;
    strngfldqry3clbh: TStringField;
    strngfldqry3ywpm: TStringField;
    strngfldqry3csbh: TStringField;
    strngfldqry3zsywjc: TStringField;
    strngfldqry3jijie: TStringField;
    strngfldqry3kfjd: TStringField;
    SaveDialog1: TSaveDialog;
    CKBSel: TCheckBox;
    pm1: TPopupMenu;
    N1: TMenuItem;
    intgrfldqry3recs: TIntegerField;
    dtmfldqry3cgdate: TDateTimeField;
    dtmfldqry3yqdate: TDateTimeField;
    dtmfldqry2ETA: TDateTimeField;
    strngfldqry2cgno: TStringField;
    strngfldqry4article: TStringField;
    dtmfldqry4cgdate: TDateTimeField;
    dtmfldqry4yqdate: TDateTimeField;
    dtmfldqry4eta: TDateTimeField;
    strngfldqry4cgno: TStringField;
    dtmfldqry3ETA: TDateTimeField;
    strngfldqry3cgno: TStringField;
    strngfldqry4zsywjc: TStringField;
    qry1FD: TStringField;
    strngfldqry2srtype: TStringField;
    strngfldqry3srtype: TStringField;
    crncyfldqry2qty: TCurrencyField;
    strngfldqry4srtype: TStringField;
    lbl1: TLabel;
    ArticleEdit: TEdit;
    qry2PurQty: TFloatField;
    qry2dwbh: TStringField;
    qry4FD: TStringField;
    qry1recs: TIntegerField;
    pm2: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    crncyfldqry4qty: TCurrencyField;
    strngfldqry4dwbh: TStringField;
    crncyfldqry4useqty: TCurrencyField;
    pm3: TPopupMenu;
    S1: TMenuItem;
    N5: TMenuItem;
    BBTT1: TBitBtn;
    qry2Location: TStringField;
    BBTT2: TBitBtn;
    PM_ShoeMemo: TPopupMenu;
    ShowMemo1: TMenuItem;
    DBGridEh1: TDBGridEh;
    qry1YPDH: TStringField;
    Qry_MEMO: TQuery;
    strngfldqry4LineNum: TStringField;
    strngfldqry4Remark: TStringField;
    DS_MEMO: TDataSource;
    Splitter1: TSplitter;
    qry2Invoice: TStringField;
    qry2BillNO: TStringField;
    qry2NG_ETD: TDateTimeField;
    qry2NG_ETA: TDateTimeField;
    qry2NG_Reason: TStringField;
    qry2NG_RESULT: TStringField;
    Panel2: TPanel;
    Splitter2: TSplitter;
    Label6: TLabel;
    SupEdit: TEdit;
    lbl2: TLabel;
    MatEdit: TEdit;
    BitBtn1: TBitBtn;
    tmpQry: TQuery;
    qry2NG_Remark: TStringField;
    DS_PO: TDataSource;
    Qry_PO: TQuery;
    qry2article: TStringField;
    qry2kfjd: TStringField;
    Qry_POarticle: TStringField;
    Qry_POkfjd: TStringField;
    Qry_POclbh: TStringField;
    Qry_POywpm: TStringField;
    Qry_POcsbh: TStringField;
    Qry_POzsywjc: TStringField;
    Qry_POcgdate: TDateTimeField;
    Qry_POyqdate: TDateTimeField;
    Qry_POETA: TDateTimeField;
    Qry_POInvoice: TStringField;
    Qry_POBillNO: TStringField;
    Qry_POcgno: TStringField;
    Qry_POrkdate: TDateTimeField;
    Qry_POPurQty: TCurrencyField;
    Qry_PONG_REASON: TStringField;
    Qry_PONG_ETD: TDateTimeField;
    Qry_PONG_ETA: TDateTimeField;
    Qry_PONG_RESULT: TStringField;
    Qry_PONG_Remark: TStringField;
    qry2All_Parts: TStringField;
    qry2rkqty: TCurrencyField;
    chk1: TCheckBox;
    TabSheet1: TTabSheet;
    SRQry: TQuery;
    SRDS: TDataSource;
    SRQryArticle: TStringField;
    SRQryFD: TStringField;
    SRQryML: TStringField;
    SRQryFL: TStringField;
    SRQryBL: TStringField;
    SRQryDL: TStringField;
    Splitter3: TSplitter;
    SRDet_ML: TQuery;
    SRDet_MLDS: TDataSource;
    SRDet_MLArticle: TStringField;
    SRDet_MLFD: TStringField;
    SRDet_MLCLBH: TStringField;
    SRDet_MLYWPM: TStringField;
    SRDet_MLCLSL: TFloatField;
    SRDet_MLQty: TCurrencyField;
    SRDet_MLETD: TDateTimeField;
    SRDet_MLCGNO: TStringField;
    SRDet_MLuseType: TStringField;
    RightPanel: TPanel;
    Label7: TLabel;
    DBGrid_No: TDBGridEh;
    SRDet_No: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    CurrencyField1: TCurrencyField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    SRDet_NoDS: TDataSource;
    MainClassPage: TPageControl;
    TabSheet2: TTabSheet;
    DBDetGrid_ML: TDBGridEh;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    DBDetGrid_FML: TDBGridEh;
    SRDet_FML: TQuery;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField2: TFloatField;
    CurrencyField2: TCurrencyField;
    DateTimeField2: TDateTimeField;
    StringField11: TStringField;
    StringField12: TStringField;
    SRDet_FMLDS: TDataSource;
    DBDetGrid_FGL: TDBGridEh;
    SRDet_DLDS: TDataSource;
    SRDet_DL: TQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    FloatField3: TFloatField;
    CurrencyField3: TCurrencyField;
    DateTimeField3: TDateTimeField;
    StringField17: TStringField;
    StringField18: TStringField;
    SRDet_FGLDS: TDataSource;
    SRDet_FGL: TQuery;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    FloatField4: TFloatField;
    CurrencyField4: TCurrencyField;
    DateTimeField4: TDateTimeField;
    StringField23: TStringField;
    StringField24: TStringField;
    DBDetGrid_DL: TDBGridEh;
    SRQrySR: TStringField;
    SRDet_MLStock_Memo: TStringField;
    SRDet_FMLStock_Memo: TStringField;
    SRDet_FGLStock_Memo: TStringField;
    SRDet_DLStock_Memo: TStringField;
    SRDet_NoStock_Memo: TStringField;
    SRDet_FMLLocation: TStringField;
    SRDet_MLLocation: TStringField;
    SRDet_MLETA: TDateTimeField;
    SRDet_FMLETA: TDateTimeField;
    SRDet_FGLETA: TDateTimeField;
    SRDet_FGLLocation: TStringField;
    SRDet_DLLocation: TStringField;
    SRDet_DLETA: TDateTimeField;
    SRDet_NoLocation: TStringField;
    SRDet_NoETA: TDateTimeField;
    SRQryTPDATE: TStringField;
    SRQryShipDate: TStringField;
    LeftPanel: TPanel;
    SRDBGrid: TDBGridEh;
    Panel4: TPanel;
    UpperLabel: TLabel;
    AcessoriesLabel: TLabel;
    SRQryDropped: TStringField;
    SRQryYPDH: TStringField;
    SRQryQuantity: TFloatField;
    SRQryXieXing: TStringField;
    Label4: TLabel;
    qry4YPDH: TStringField;
    ZeroUsageCK: TCheckBox;
    Panel3: TPanel;
    Label43: TLabel;
    Label18: TLabel;
    ReinformceLabel: TLabel;
    BottomLabel: TLabel;
    qry2cgzl_memo: TStringField;
    qry2H_ETD: TDateTimeField;
    qry2use_memo: TStringField;
    Label5: TLabel;
    DevTypeEdit: TComboBox;
    DroppedCK: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Panel5: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ETA_CB: TCheckBox;
    SRDet_MLCSBH: TStringField;
    SRDet_MLSupplier: TStringField;
    SRDet_MLUserName: TStringField;
    SRDet_FMLCSBH: TStringField;
    SRDet_FMLSupplier: TStringField;
    SRDet_FMLUserName: TStringField;
    SRDet_DLCSBH: TStringField;
    SRDet_DLSupplier: TStringField;
    SRDet_DLUserName: TStringField;
    SRDet_FGLCSBH: TStringField;
    SRDet_FGLSupplier: TStringField;
    SRDet_FGLUserName: TStringField;
    SRDet_NoCSBH: TStringField;
    SRDet_NoSupplier: TStringField;
    SRDet_NoUserName: TStringField;
    qry1ypcc: TStringField;
    qry2Visually: TStringField;
    qry2Spectro: TStringField;
    qry2Spectro_file: TStringField;
    qry2Result: TStringField;
    Label13: TLabel;
    SREdit: TEdit;
    BitBtn2: TBitBtn;
    qry1DEVCODE: TStringField;
    qry2cidate: TDateTimeField;
    LAI: TComboBox;
    Label14: TLabel;
    Panel6: TPanel;
    Memo1: TMemo;
    qry2remark: TStringField;
    NGqry: TQuery;
    DBGridEh2: TDBGridEh;
    NGDS: TDataSource;
    NGqryremark: TStringField;
    NGqryuserid: TStringField;
    NGqryuserdate: TStringField;
    Button3: TButton;
    Label15: TLabel;
    TBEdit: TEdit;
    qry2PurReceiveDate: TDateTimeField;
    Label20: TLabel;
    ComboBox14: TComboBox;
    Label16: TLabel;
    POEdit: TEdit;
    qry2CheckResult: TStringField;
    qry2ActualETD: TDateTimeField;
    qry2A4Comfirm: TStringField;
    qry2TrackingA4Comfirm: TStringField;
    qry2DateA4Comfirm: TDateTimeField;
    qry2DelayReason: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrdh2CellClick(Column: TColumnEh);
    procedure dbgrdh4CellClick(Column: TColumnEh);
    procedure dbgrdh3CellClick(Column: TColumnEh);
    procedure dbgrdh1CellClick(Column: TColumnEh);
    procedure dbgrdh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrdh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrdh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure dbgrdh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure ShowMemo1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SRDBGridCellClick(Column: TColumnEh);
    procedure DBDetGrid_MLCellClick(Column: TColumnEh);
    procedure DBGrid_NoCellClick(Column: TColumnEh);
    procedure DBDetGrid_FMLCellClick(Column: TColumnEh);
    procedure DBDetGrid_FGLCellClick(Column: TColumnEh);
    procedure SRQryBeforeScroll(DataSet: TDataSet);
    procedure DBDetGrid_MLDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBGrid_NoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBDetGrid_FMLDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBDetGrid_FGLDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure DBDetGrid_DLDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumnEh;
      State: TGridDrawState);
    procedure SRDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
    procedure DBDetGrid_DLCellClick(Column: TColumnEh);
    procedure qry3BeforeScroll(DataSet: TDataSet);
    procedure dbgrdh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
  private
    SelectDBGrid:TDBGridEh;    
    STFilePath: string;
    { Private declarations }    
    procedure ReadIni();
    procedure ShowSRPurchaseStatus_DFL();
    procedure QueryMaterial();
    procedure QueryArticle_Detail();
    procedure ExportMainClass();
  public
    { Public declarations }
  end;

var
  FDStatus: TFDStatus;


implementation

uses main1,FDStatus_AL1, FDStatus_Stock1, FDStatus_PO1, FDStatus_ETD1, FDstatus_Stage1,
     FDStatus_FD1, FDStatus_MEMO1, FDStatus_Bom1,FDStatus_Article1,FunUnit;

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
//
procedure TFDStatus.QueryArticle_Detail();
var
  SampleTable, GSBH, YPDH, CheckResult: string;
begin
  if POEdit.Text <> '' then begin
    qry2.DataSource := nil;
    qry2.Active := false;
    qry2.SQL.Clear;
    qry2.SQL.Add('select CGZLS.CLBH,CLZL.YWPM,MaterialNG.NG_REASON,MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.RESULT AS NG_RESULT,MaterialNG.Remark AS NG_Remark,cgzl_color.Visually,cgzl_color.Spectro,cgzl_color.Spectro_file,cgzl_color.Result,CGZL_Color.remark');
    qry2.SQL.Add(',0.0 as clsl,'''' as csbh,'''' as zsywjc,null as recs,CAST(GETDATE() AS smalldatetime) as cgdate,CAST(GETDATE() AS smalldatetime) as yqdate,0.0 as rkqty,CAST(GETDATE() AS smalldatetime) as rkdate,CAST(GETDATE() AS smalldatetime) as ETA,'''' as cgno,'''' as srtype');
    qry2.SQL.Add(',0.0 as qty,0.0 as PurQty,'''' as dwbh,'''' as Location,'''' as Invoice,'''' as BillNO,'''' as article,'''' as kfjd,'''' as All_Parts,'''' as cgzl_memo,CAST(GETDATE() AS smalldatetime) as H_ETD,'''' as use_memo');
    qry2.SQL.Add(',CAST(GETDATE() AS smalldatetime) as PurReceiveDate,CAST(GETDATE() AS smalldatetime) as cidate,A4Comfirm,TrackingA4Comfirm,DateA4Comfirm ');
    qry2.SQL.Add('from CGZLS');

    {qry2.SQL.Add('left join CGZL_Color on CGZL_Color.CLBH = CGZLS.CLBH and CGZL_Color.CGNO = CGZLS.CGNO');
    qry2.SQL.Add('left join (select CLBH,A4Comfirm,TrackingA4Comfirm,DateA4Comfirm from CGZL_Color2');
    qry2.SQL.Add('		UNION ALL ');
    qry2.SQL.Add('select CLZL_LS.JHDH as CLBH,A4Comfirm,TrackingA4Comfirm,DateA4Comfirm from CGZL_Color2');
    qry2.SQL.Add('INNER  join CLZL_LS on CLZL_LS.CLDH = cgzl_color2.clbh');
    qry2.SQL.Add('    UNION ALL ');
    qry2.SQL.Add('  select CLZL_LS.CLDH as CLBH,A4Comfirm,TrackingA4Comfirm,DateA4Comfirm from CGZL_Color2');
    qry2.SQL.Add('  INNER  join CLZL_LS on CLZL_LS.JHDH = cgzl_color2.clbh');
    qry2.SQL.Add(')CGZL_Color2 on CGZL_Color2.CLBH = CGZLS.CLBH'); }

    qry2.SQL.Add('   left join(select CLZL.cldh,Max(case when (left(CLZL.cldh,1)<>''V'' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh ');
    qry2.SQL.Add('             when (left(CLZL_LS.JHDH,1)<>''V'' and cgzl_color2_TEMP.CLBH  IS NOT NULL and CLZL_LS.JHDH <>'''') THEN CLZL_LS.JHDH');
    qry2.SQL.Add('             when (cgzl_color2_TEMP.CLBH  IS NOT NULL and CLZL_LS.JHDH <>'''') THEN CLZL_LS.JHDH');
    qry2.SQL.Add('             else CLZL.cldh  end) ColorCLDH  ');
    qry2.SQL.Add('   From CLZL ');
    qry2.SQL.Add('   left join(select CLDH,JHDH from  CLZL_LS UNION ALL select JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLDH=CLZL.cldh ');
    qry2.SQL.Add('   left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh');
    qry2.SQL.Add('   left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TEMP.CLBH=CLZL_LS.JHDH');
    qry2.SQL.Add('   group by CLZL.cldh');
    qry2.SQL.Add('   )ColorCLDH on ColorCLDH.CLDH=final.CLBH');
    qry2.SQL.Add('      left join cgzl_color on cgzl_color.cgno=final.cgno and cgzl_color.clbh=ColorCLDH.ColorCLDH');
    qry2.SQL.Add('      left join cgzl_color2 on cgzl_color2.CLBH=ColorCLDH.ColorCLDH');

    if POEdit.Text <> '' then
      qry2.SQL.Add('where CGZLS.CGNO = '''+POEdit.Text+'''');
    //showmessage(qry2.SQL.text);
    qry2.Active := true;
    exit;
  end;
  qry2.DataSource := ds1;
 { if (length(ArticleEdit.Text) > 0) then  //若Article有值...則自動填入Season
 //2017/03/08  取消 因一樣SR有可能存在兩種季節//JOHNY
  begin
     with tmpQry do
       begin
         active:=false;
         sql.Clear;
         sql.add('select jijie  ');
         sql.add(' from KFXXZL ');
         sql.add(' where KFXXZL.Article='''+ArticleEdit.Text+'''');
         active:=true;
       end;
   if tmpQry.RecordCount>0 then
   begin
     tmpQry.First;
     SeasonEdit.Text:= tmpQry.fieldbyname('JiJie').AsString;
   end;
  end;  }
  SeasonEdit.Refresh;
  //20141210 避免Season有單引號SQL查詢會有問題
  SeasonEdit.Text:=GetSeasonString(SeasonEdit.Text);

  qry2.Active:=False;
  Qry_PO.Active:=False;
  Qry_MEMO.Active:=False;

  if (main.Edit2.Text = 'SKX') then
  begin
    if (ComboBox14.Text = '')  then
    begin
     showmessage('You need to Keyin the Brand.');
     abort;
    end else
    if (ComboBox14.Text <> '') then
    begin
      GSBH:='SKX';
      YPDH:=ComboBox14.Text;
    end;
  end else
    GSBH:=main.Edit2.Text;

  with qry1 do
    begin
      active:=false;
      sql.Clear;
      if main.Edit2.Text = 'SKX' then		
        sql.add('select ypzl.ypcc,YPZL.YPDH,kfxxzl.jijie,YPZL.article,kfxxzl.DEVCODE +'+''' / '''+'+ kfxxzl.YSSM as DEVCODE,kfxxzl.xieming,YPZL.KFJD as Stage,ypzl.FD,isnull(yl.recs,0) as recs  ')		
      else		
        sql.add('select ypzl.ypcc,YPZL.YPDH,kfxxzl.jijie,YPZL.article,kfxxzl.DEVCODE,kfxxzl.xieming,YPZL.KFJD as Stage,ypzl.FD,isnull(yl.recs,0) as recs  ');		
      sql.add(' from YPZL ');		
      sql.add(' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');		
      sql.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');		
      sql.add(' left join shoetest on YPZL.YPDH=shoetest.YPDH ');		
      sql.Add(' left join (select  cgzlss.zlbh as article,count(cgzlss.zlbh) as recs from cgzlss WHERE STAGE='''+StageEdit.Text+'''');		
      sql.Add(' group by cgzlss.zlbh ) yl on yl.article=YPZL.YPDH ');		
      sql.add(' where YPZL.KFJD like '''+StageEdit.Text+'%'' and YPZL.GSDH='''+GSBH+''' ');		
      if  length(FDEdit.Text) > 0 then		
          sql.add('   and ypzl.FD = '''+FDEdit.Text+'''');		
      if main.Edit2.Text = 'SKX' then		
      begin		
        SQL.Add('     and ypzl.YPDH like '''+YPDH+'%''');		
      end;		
      if  length(ArticleEdit.Text) > 0 then		
          sql.add('   and KFXXZL.article = '''+ArticleEdit.Text+'''');		
      if  length(SREdit.Text) > 0 then		
          sql.add('   and KFXXZL.DEVCODE = '''+SREdit.Text+'''');		
      if  length(SeasonEdit.Text) > 0 then		
          sql.add('   and kfxxzl.Jijie = '''+SeasonEdit.Text+'''');		
      //20150807  Add filter		
      if DevTypeEdit.Text<>'' then		
        sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');		
      if DroppedCK.Text='Not Dropped' then		
        sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');		
      if DroppedCK.Text='Dropped' then		
        sql.Add('and (xxzlKF.DROPPED=1) ');		
      if lai.Text<>'' then		
        sql.Add('and left(ypzl.ypdh,4)='''+lai.Text+''' ');		
      if trim(TBEdit.Text) <> '' then		
        sql.Add('and shoetest.Testno = '''+TBEdit.Text+''' ');		
      active:=true;		
    end;		
  if (not qry1.Eof) then		
  begin		
    with qry2 do		
    begin		
        sql.Clear;		
        //當沒有勾選要顥示全部資料時,要隱藏filter的料號		
        //抓取樣品單中各材料的對應使用部位....產生部位暫存檔.....		
        sql.add('if object_id(''tempdb..#FDStatus_Parts'') is not null');		
        sql.add('begin drop table #FDStatus_Parts end');		
        sql.Add('  select PP.clbh,PP.BWBH,PP.YWSM AS P_Name into #FDStatus_Parts from (');		
        sql.add('       SELECT ypzls.clbh,ypzls.BWBH,BWZL.YWSM   ');		
        sql.Add('       from ypzls');		
        sql.Add('       left join ypzl on ypzl.ypdh=ypzls.ypdh');		
        sql.Add('       left join clzl on clzl.cldh=ypzls.clbh');		
        sql.add('       left join BWZL on BWZL.BWDH=ypzls.BWBH  ');		
        sql.Add('       where ypzl.YPDH=:YPDH and kfjd=:Stage');		
        sql.Add('             and clzl.clzmlb=''N''');		
        sql.Add('       Union all ');		
        sql.add('       SELECT CLZHZL.CLDH1 AS clbh,ypzls.BWBH,BWZL.YWSM   ');		
        sql.Add('       from ypzls');		
        sql.Add('       INNER  JOIN CLZHZL   ON YPZLS.clbh = CLZHZL.cldh');		
        sql.Add('       left join ypzl on ypzl.ypdh=ypzls.ypdh');		
        sql.Add('       left join clzl on clzl.cldh=CLZHZL.CLDH1');		
        sql.add('       left join BWZL on BWZL.BWDH=ypzls.BWBH  ');		
        sql.Add('       where ypzl.YPDH=:YPDH and kfjd=:Stage');		
        sql.Add('             and clzl.clzmlb=''N''');		
        sql.Add('             and CLZHZL.syl > 0');		
        sql.add('       ) PP ');		
        sql.add(' group by PP.clbh,PP.BWBH,PP.YWSM  ');		
        //抓取樣品單中母件(第一階)料號[不含組合件]....產生樣品單的母件暫存檔.....		
        sql.add('if object_id(''tempdb..#FDStatus_Mon'') is not null    ');		
        sql.add('begin drop table #FDStatus_Mon end                 ');		
        sql.Add(' select ypzl.article,kfjd,ypzls.clbh,clzl.ywpm,sum(ypzls.clsl) as clsl,cgkcuse.qty,Max(cgkcuse.memo) as use_memo,ypzls.csbh,zszl.zsywjc,dwbh,MaterialMOQ.Location ');		
        sql.add(' into #FDStatus_Mon');		
        sql.Add(' from ypzls');		
        sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');		
        sql.Add(' left join zszl on zszl.zsdh=ypzls.csbh');		
        sql.Add(' left join clzl on clzl.cldh=ypzls.clbh');		
        sql.Add(' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=ypzls.clbh and cgkcuse.GSBH='''+GSBH+''' ');		
        sql.Add(' left join MaterialMOQ on MaterialMOQ.clbh=ypzls.clbh and MaterialMOQ.Season='''+SeasonEdit.Text+'''');		
        sql.Add(' where ypzl.YPDH=:YPDH and kfjd=:Stage');		
        sql.Add('       and clzl.clzmlb=''N''');		
        sql.Add(' group by ypzl.article,kfjd,ypzls.clbh,clzl.ywpm,cgkcuse.qty,ypzls.csbh,zszl.zsywjc,dwbh,MaterialMOQ.Location ');		
        //抓取樣品單中母件(第一階)料號[全部料號]....產生樣品單的母件暫存檔.....		
        sql.add('if object_id(''tempdb..#FDStatus_Mon_All'') is not null    ');		
        sql.add('begin drop table #FDStatus_Mon_All end                 ');		
        sql.Add(' select ypzl.article,kfjd,ypzls.clbh,clzl.ywpm,sum(ypzls.clsl) as clsl,cgkcuse.qty,Max(cgkcuse.memo) as use_memo,ypzls.csbh,zszl.zsywjc,dwbh,MaterialMOQ.Location ');		
        sql.add(' into #FDStatus_Mon_All ');		
        sql.Add(' from ypzls');		
        sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');		
        sql.Add(' left join zszl on zszl.zsdh=ypzls.csbh');		
        sql.Add(' left join clzl on clzl.cldh=ypzls.clbh');		
        sql.Add(' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=ypzls.clbh and cgkcuse.GSBH='''+GSBH+'''');		
        sql.Add(' left join MaterialMOQ on MaterialMOQ.clbh=ypzls.clbh and MaterialMOQ.Season='''+SeasonEdit.Text+'''');		
        sql.Add(' where ypzl.YPDH=:YPDH and kfjd=:Stage');		
//        sql.Add('       and clzl.clzmlb=''N''');		
        sql.Add(' group by ypzl.article,kfjd,ypzls.clbh,clzl.ywpm,cgkcuse.qty,ypzls.csbh,zszl.zsywjc,dwbh,MaterialMOQ.Location ');		
		
        //抓取樣品單中子件(第二階)料號....產生樣品單的子件暫存檔.....		
        sql.add('if object_id(''tempdb..#FDStatus_Son'') is not null    ');		
        sql.add('begin drop table #FDStatus_Son end                 ');		
        sql.Add(' select ypzl.article,kfjd,CLZHZL.CLDH1 AS clbh,clzl.ywpm,sum(ypzls.clsl* CLZHZL.SYL) as clsl,cgkcuse.qty,Max(cgkcuse.memo) as use_memo,CLZHZL.ZSDH as csbh,zszl.zsywjc,dwbh,MaterialMOQ.Location');		
        sql.add('       into #FDStatus_Son');		
        sql.Add(' from ypzls');		
        sql.Add(' INNER  JOIN CLZHZL   ON YPZLS.clbh = CLZHZL.cldh');		
        sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');		
        sql.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH');		
        sql.Add(' left join clzl on clzl.cldh=CLZHZL.CLDH1');		
        sql.Add(' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=CLZHZL.CLDH1 and cgkcuse.GSBH='''+GSBH+''' ');		
        sql.Add(' left join MaterialMOQ on MaterialMOQ.clbh=CLZHZL.CLDH1 and MaterialMOQ.Season='''+SeasonEdit.Text+'''');		
        sql.Add(' where ypzl.YPDH=:YPDH and kfjd=:Stage');		
        sql.Add('       and not exists (select #FDStatus_Mon.clbh from #FDStatus_Mon');  //避免出現與第一階相同之材料		
        sql.Add('                       where #FDStatus_Mon.clbh=CLZHZL.CLDH1  ) ');		
        sql.Add('       and CLZHZL.syl > 0');		
        sql.Add('       and clzl.clzmlb=''N''');		
        sql.Add(' group by ypzl.article,kfjd,CLZHZL.CLDH1,clzl.ywpm,cgkcuse.qty,CLZHZL.ZSDH,zszl.zsywjc,dwbh,MaterialMOQ.Location ');		
        //20150321二階加工料號顯示		
        SQL.Add('Union all ');		
        SQL.Add(' Select clzhzl2.article,YPZL.kfjd,CLZHZL.CLDH1 as clbh,clzl.ywpm,(clzhzl2.clsl*CLZHZL.SYL) as CLZL,cgkcuse.qty,cgkcuse.memo as use_memo,CLZHZL.ZSDH as csbh,zszl.zsywjc,CLZL.dwbh,MaterialMOQ.Location from (');		
        SQL.Add(' select ypzl.article,kfjd,CLZHZL.CLDH1 AS clbh,clzl.ywpm,sum(ypzls.clsl* CLZHZL.SYL) as clsl,cgkcuse.qty,CLZHZL.ZSDH as csbh,zszl.zsywjc,dwbh,MaterialMOQ.Location');		
        SQL.Add(' from ypzls');		
        SQL.Add(' INNER  JOIN CLZHZL   ON YPZLS.clbh = CLZHZL.cldh');		
        SQL.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
        SQL.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH');		
        SQL.Add(' left join clzl on clzl.cldh=CLZHZL.CLDH1');		
        SQL.Add(' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=CLZHZL.CLDH1 and cgkcuse.GSBH='''+GSBH+''' ');		
        SQL.Add(' left join MaterialMOQ on MaterialMOQ.clbh=CLZHZL.CLDH1 and MaterialMOQ.Season='''+SeasonEdit.Text+''' ');		
        SQL.Add(' where ypzl.YPDH=:YPDH and kfjd=:Stage ');		
        SQL.Add('       and CLZHZL.syl > 0');		
        SQL.Add('       and clzl.clzmlb=''Y'' ');		
        SQL.Add(' group by ypzl.article,kfjd,CLZHZL.CLDH1,clzl.ywpm,cgkcuse.qty,CLZHZL.ZSDH,zszl.zsywjc,dwbh,MaterialMOQ.Location ');		
        SQL.Add(' ) clzhzl2');		
        SQL.Add(' INNER join CLZHZL   ON clzhzl2.clbh = CLZHZL.CLDH');		
        SQL.Add(' INNER join CLZL on CLZL.CLDH=CLZHZL.CLDh1');		
        SQL.Add(' INNER join YPZL on YPZL.ypdh=:ypdh and YPZL.KFJD=clzhzl2.kfjd');		
        SQL.Add(' left join cgkcuse on cgkcuse.zlbh=:YPDH  and cgkcuse.clbh=CLZHZL.CLDH1 and cgkcuse.GSBH='''+GSBH+''' ');		
        SQL.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH');		
        SQL.Add(' left join MaterialMOQ on MaterialMOQ.clbh=CLZHZL.CLDH1 and MaterialMOQ.Season='''+SeasonEdit.Text+''' ');		
        //		
        //抓取該樣品材料相關採購單....產生採購暫存檔.....		
        sql.add('if object_id(''tempdb..#FDStatus_CG'') is not null');		
        sql.add('begin drop table #FDStatus_CG end');		
        sql.Add('  select max(CGZLInvoice_1.cidate) as cidate,cs.clbh,count(cs.clbh) as recs,min(cgzl.cgdate)as cgdate,max(cgzls.memo) as cgzl_memo,Max(ETDTemp.ETD) as H_ETD,');
        sql.Add('  min(cs.CFMdate) as yqdate,min(CGZLInvoice_1.ETA) as ETA,max(CGZLInvoice_1.Invoice) as Invoice,max(CGZLInvoice_1.BillNO) as BillNO,');
        sql.Add('  min(cgzls.cgno) as cgno,Sum(KCRKS.qty) as rkqty,min(KCRKS.Userdate) as rkdate,sum(cs.Qty) as PurQty,MAX(cgzl.zsbh) AS zsbh,CGZLInvoiceS_1.PurReceiveDate,CGZLInvoiceS_1.CheckResult,min(cgzls.CommitedETD) as ActualETD,min(cgzls.DelayReason) as DelayReason');
        sql.add('  into #FDStatus_CG from cgzlss cs');
        sql.Add('  left join cgzl on cgzl.cgno=cs.cgno');		
        sql.Add('  left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');		
        //20150321 weston 修改
        sql.Add('  left join KCRKS on KCRKS.DOCNO=cs.cgno and KCRKS.clbh=cs.clbh ');
        sql.Add('  left join (');
        if (main.Edit2.Text = 'CDC') then
        begin		
          sql.add('    select CGNO, clbh, isnull(Min(CINO), ''no invoice'') AS CINO_1, MAX(PurReceiveDate) AS PurReceiveDate, MAX(CheckResult) AS CheckResult from CGZLInvoiceS');		
          sql.Add('    GROUP BY CGNO, clbh');		
        end		
        else begin		
          sql.add('    select CGNO, clbh, isnull(Min(CINO), ''no invoice'') AS CINO_1, MAX(PurReceiveDate) AS PurReceiveDate, '''' AS CheckResult from CGZLInvoiceS');		
          sql.Add('    GROUP BY CGNO, clbh');		
        end;		
        sql.add('  ) CGZLInvoiceS_1 on CGZLS.clbh=CGZLInvoiceS_1.clbh and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');		
        sql.add('  left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');		
        //20150729 weston 修改 增加ETD修改記錄關聯		
        sql.add(' left join ( Select CGNO,CLBH,Min(ETD) as ETD from ETDTemp where VER=1 Group by CGNO,CLBH )  ETDTemp on cs.CGNO = ETDTemp.CGNO  and  cs.CLBH = ETDTemp.CLBH ');		
        if POEdit.Text = '' then		
          sql.Add(' where cs.qty>0 and cs.stage=:Stage and cs.zlbh=:YPDH')		
        else		
          sql.Add(' where cs.qty>0 and cs.stage=:Stage and cs.CGNO='''+POEdit.Text+'''');		
        sql.Add(' group by cs.clbh, CGZLInvoiceS_1.PurReceiveDate, CGZLInvoiceS_1.CheckResult');		
        //ExecSQL;		
        //抓取樣品單中母件(第一階)料號 srtype='1  ==============================================開始		
        //sql.Clear;
        //暫存區結束,表頭起始
        sql.add('  select article,kfjd,final.clbh,ywpm,clsl,qty,use_memo,csbh,zsywjc, Location, All_Parts ,recs, cgdate, yqdate , ');
        sql.add('      rkqty,rkdate,ETA,cidate, cgzl_memo, H_ETD, Invoice, BillNO,final.cgno, PurQty ,dwbh, srtype,NG_REASON,NG_ETD, NG_ETA, NG_RESULT , ');
        sql.add('      NG_Remark,Visually,A4Comfirm,TrackingA4Comfirm,DateA4Comfirm,Spectro,Spectro_file,Result,remark,PurReceiveDate,CheckResult,ActualETD,DelayReason');
        sql.add('  from (');

        sql.Add('  select Mon.article,kfjd,Mon.clbh,Mon.ywpm,Mon.clsl,Mon.qty,Mon.use_memo,Mon.csbh,Mon.zsywjc,Mon.Location,');
        sql.add('  CAST(ISNULL((SELECT P_Name+'',''  FROM #FDStatus_Parts ');
        sql.add('  WHERE #FDStatus_Parts.clbh=Mon.clbh');
        sql.add('  FOR XML PATH('''')   ');
        sql.add('  ),'''')  AS char(200)) as All_Parts,');
        sql.Add('  cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cidate,cg.cgzl_memo,cg.H_ETD,cg.Invoice,cg.BillNO,cg.cgno,cg.rkqty,cg.rkdate,cg.PurQty,dwbh,''1'' as srtype,');
        if (main.Edit2.Text = 'CDC') then
          sql.add('  cg.CheckResult AS NG_REASON,')		
        else
          sql.Add('  MaterialNG.NG_REASON,');		
        sql.add('  MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.RESULT AS NG_RESULT,MaterialNG.Remark AS NG_Remark,');
        sql.add('  CG.PurReceiveDate,CG.CheckResult,CG.ActualETD,CG.DelayReason');
        sql.Add('  from #FDStatus_Mon Mon');
        sql.Add('  left join #FDStatus_CG cg on cg.clbh=Mon.clbh');
        sql.Add('  left join MaterialNG on MaterialNG.clbh=cg.clbh and MaterialNG.CGNO=cg.cgno ');

        sql.Add('  where 1=1 ');
        sql.Add('  and Mon.csbh not in (Select zszlfilter.zsdh from zszlfilter where zszlfilter.GSBH='''+GSBH+''') ');		
        sql.Add('  and Mon.clbh not in (Select clzlfilter.cldh from clzlfilter where clzlfilter.GSBH='''+GSBH+''') ');
        //抓取樣品單中子材料 srtype='2'		
        sql.Add('union all');
        sql.Add('  select Son.article,kfjd,Son.clbh,Son.ywpm,Son.clsl,Son.qty,Son.use_memo,Son.csbh,Son.zsywjc,Son.Location,');		
        sql.add('  CAST(ISNULL((SELECT P_Name+'',''  FROM #FDStatus_Parts ');		
        sql.add('  WHERE #FDStatus_Parts.clbh=Son.clbh  ');		
        sql.add('  FOR XML PATH('''')   ');		
        sql.add('  ),'''')  AS char(200)) as All_Parts,');		
        sql.Add('  cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cidate,cg.cgzl_memo,cg.H_ETD,cg.Invoice,cg.BillNO,cg.cgno,cg.rkqty,cg.rkdate,cg.PurQty,dwbh,''2'' as srtype,');		
        if (main.Edit2.Text = 'CDC') then		
          sql.add('  cg.CheckResult AS NG_REASON,')		
        else		
          sql.Add('  MaterialNG.NG_REASON,');		
        sql.Add('  MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.RESULT AS NG_RESULT,MaterialNG.Remark AS NG_Remark,');
        sql.Add('  CG.PurReceiveDate,CG.CheckResult,CG.ActualETD,CG.DelayReason');
        sql.Add('  from #FDStatus_Son Son');
        sql.Add('  left join #FDStatus_CG cg on cg.clbh=Son.clbh');
        sql.Add('  left join MaterialNG on MaterialNG.clbh=cg.clbh and MaterialNG.CGNO=cg.cgno ');

        sql.Add('  where 1=1 ');		
        sql.Add('  and Son.csbh not in (Select zszlfilter.zsdh from zszlfilter where zszlfilter.GSBH='''+GSBH+''') ');		
        sql.Add('  and Son.clbh not in (Select clzlfilter.cldh from clzlfilter where clzlfilter.GSBH='''+GSBH+''') ');
        // 在樣品單上母件不應採購卻下單採購的項目   srtyp='4'		
        sql.Add('  union all');		
        sql.Add('  select MonALL.article,kfjd,MonALL.clbh,MonALL.ywpm,MonALL.clsl,MonALL.qty,MonALL.use_memo,MonALL.csbh,MonALL.zsywjc,MonALL.Location,');		
        sql.add('  CAST(ISNULL((SELECT P_Name+'',''  FROM #FDStatus_Parts ');		
        sql.add('  WHERE #FDStatus_Parts.clbh=MonALL.clbh  ');		
        sql.add('  FOR XML PATH('''')   ');		
        sql.add('  ),'''')  AS char(200)) as All_Parts,');		
        sql.Add('  cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cidate,cg.cgzl_memo,cg.H_ETD,cg.Invoice,cg.BillNO,cg.cgno,cg.rkqty,cg.rkdate,cg.PurQty,MonALL.dwbh,''4'' as srtype,');		
        if (main.Edit2.Text = 'CDC') then		
          sql.add('  cg.CheckResult AS NG_REASON,')
        else		
          sql.Add('  MaterialNG.NG_REASON,');		
        sql.Add('  MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.RESULT AS NG_RESULT,MaterialNG.Remark AS NG_Remark,');
        sql.Add('  CG.PurReceiveDate,CG.CheckResult,CG.ActualETD,CG.DelayReason');
        sql.Add('  from #FDStatus_Mon_All MonALL');
        sql.Add('  left join clzl on clzl.cldh=MonALL.clbh');
        sql.Add('  left join clzlfilter on clzlfilter.cldh=MonALL.clbh and clzlfilter.GSBH='''+GSBH+''' ');		
        sql.Add('  left join #FDStatus_CG cg on cg.clbh=MonALL.clbh');		
        sql.Add('  left join MaterialNG on MaterialNG.clbh=cg.clbh and MaterialNG.CGNO=cg.cgno ');

        sql.Add('  where (clzlfilter.cldh is not null OR clzl.clzmlb=''Y'' )');		
        sql.Add('  AND cg.recs > 0 ');
        // 在樣品單子件上不應採購卻下單採購的項目   srtyp='4'
        sql.Add('  union all');		
        sql.Add('  select Son.article,kfjd,Son.clbh,Son.ywpm,Son.clsl,Son.qty,Son.use_memo,Son.csbh,Son.zsywjc,Son.Location,');
        sql.add('  CAST(ISNULL((SELECT P_Name+'',''  FROM #FDStatus_Parts ');
        sql.add('  WHERE #FDStatus_Parts.clbh=Son.clbh  ');
        sql.add('  FOR XML PATH('''')   ');
        sql.add('  ),'''')  AS char(200)) as All_Parts,');
        sql.Add('  cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cidate,cg.cgzl_memo,cg.H_ETD,cg.Invoice,cg.BillNO,cg.cgno,cg.rkqty,cg.rkdate,cg.PurQty,Son.dwbh,''4'' as srtype,');
        if (main.Edit2.Text = 'CDC') then
          sql.add('  cg.CheckResult AS NG_REASON,')
        else		
          sql.Add('  MaterialNG.NG_REASON,');
        sql.Add('  MaterialNG.NG_ETD,MaterialNG.NG_ETA,MaterialNG.RESULT AS NG_RESULT,MaterialNG.Remark AS NG_Remark,');
        sql.Add('  CG.PurReceiveDate,CG.CheckResult,CG.ActualETD,CG.DelayReason');
        sql.Add('  from #FDStatus_Son Son');
        sql.Add('  left join clzl on clzl.cldh=Son.clbh ');
        sql.Add('  left join clzlfilter on clzlfilter.cldh=Son.clbh and clzlfilter.GSBH='''+GSBH+''' ');		
        sql.Add('  left join #FDStatus_CG cg on cg.clbh=Son.clbh');		
        sql.Add('  left join MaterialNG on MaterialNG.clbh=cg.clbh and MaterialNG.CGNO=cg.cgno ');		

        sql.Add('  WHERE (clzlfilter.cldh is not null and clzl.clzmlb=''N'') ');
        sql.Add('  and cg.recs > 0 ');
        //不在樣品單上卻有下採購單的材料  srtype='3'		
        sql.Add('  union all');		
        sql.Add('  select :article AS article,:Stage AS kfjd,CG.clbh,clzl.ywpm,0 AS clsl,0 as qty,null as use_memo,CG.zsbh as csbh,zszl.zsywjc,MaterialMOQ.Location,'''' AS All_Parts ');		
        sql.Add('  ,CG.recs,CG.cgdate, CG.yqdate,CG.ETA,cg.cidate,cg.cgzl_memo,cg.H_ETD,CG.Invoice,CG.BillNO,CG.cgno');		
        sql.Add('  ,CG.rkqty,CG.rkdate,CG.PurQty ,dwbh,''3'' as srtype');
        sql.Add('  ,(select Responsibility from MaterialChangeMEMO M where M.YPDH=:YPDH and M.clbh=CG.clbh and M.Stage=:Stage ) as NG_REASON');		
        sql.Add('  ,null as NG_ETD,null as NG_ETA,null as NG_RESULT ,null AS NG_Remark,');		
        sql.Add('  CG.PurReceiveDate,CG.CheckResult,CG.ActualETD,CG.DelayReason');
        sql.Add('  from #FDStatus_CG CG');
        sql.Add('  left join clzl on clzl.cldh=CG.clbh');		
        sql.Add('  left join zszl on zszl.zsdh=CG.zsbh');		
        sql.Add('  left join MaterialMOQ on MaterialMOQ.clbh=CG.clbh and MaterialMOQ.Season='''+SeasonEdit.Text+'''');		

        sql.Add('  where ');
        //sql.Add(' left(CG.clbh,1)<>''V'' and ');  2018/03/08 臨時料號應也要顯示Johnny		
		
        sql.Add('  not exists (select clbh from #FDStatus_Mon_All ');		
        sql.Add('              where  #FDStatus_Mon_All.clbh=CG.clbh)');		
        sql.Add('  and not exists (select clbh from #FDStatus_Son');
        sql.Add('                  where  #FDStatus_Son.clbh=CG.clbh)');		
        //不在樣品單上卻有使用庫存的代用材料  srtype='5'		
        sql.Add('  union all');		
        sql.Add('  select ypzl.article,kfjd,ce.clbh,clzl.ywpm,0 as clsl,ce.qty,ce.memo as use_memo,'''' as csbh,'''' as zsywjc,'''' as Location');		
        sql.Add('  ,'''' AS All_Parts ,0 as recs,null as cgdate,null as yqdate ');		
        sql.Add('  ,null as rkqty,null as rkdate,null as ETA,null as cidate,null as cgzl_memo,null as H_ETD,'''' as Invoice,'''' as BillNO, '''' as cgno,0 as PurQty ,dwbh,''5'' as srtype ');
        sql.Add('  ,null as NG_REASON,null as NG_ETD,null as NG_ETA,null as NG_RESULT ,null AS NG_Remark,');
        sql.Add('  '''' PurReceiveDate, '''' CheckResult, null as ActualETD, null as DelayReason');
        sql.Add('  from  cgkcuse ce');
        sql.Add('  left join clzl on clzl.cldh=ce.clbh');		
        sql.Add('  left join ypzl on ypzl.ypdh=ce.zlbh');
        sql.Add('  where ce.gsbh='''+GSBH+'''');
        sql.Add('  and ypzl.YPDH=:YPDH and ypzl.kfjd=:Stage');		
        sql.Add('  and not exists (select clbh from #FDStatus_Mon ');		
        sql.Add('                  where  #FDStatus_Mon.clbh=ce.clbh)');		
        sql.Add('  and not exists (select clbh from #FDStatus_Son ');		
        sql.Add('                  where  #FDStatus_Son.clbh=ce.clbh) ');
        sql.Add(') AS final');

        sql.add('   left join(select CLZL.cldh,Max(case when (left(CLZL.cldh,1)<>''V'' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh ');
        sql.add('           when (left(CLZL_LS.JHDH,1)<>''V'' and cgzl_color2_TEMP.CLBH  IS NOT NULL and CLZL_LS.JHDH <>'''') THEN CLZL_LS.JHDH');
        sql.add('           when (cgzl_color2_TEMP.CLBH  IS NOT NULL and CLZL_LS.JHDH <>'''') THEN CLZL_LS.JHDH');
        sql.add('           else CLZL.cldh  end) ColorCLDH  ');
        sql.add('   From CLZL ');
        sql.add('   left join(select CLDH,JHDH from  CLZL_LS UNION ALL select JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLDH=CLZL.cldh ');
        sql.add('   left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh');
        sql.add('   left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TEMP.CLBH=CLZL_LS.JHDH');
        sql.add('   group by CLZL.cldh');
        sql.add('   )ColorCLDH on ColorCLDH.CLDH=final.CLBH');
        sql.add('      left join cgzl_color on cgzl_color.cgno=final.cgno and cgzl_color.clbh=ColorCLDH.ColorCLDH');
        sql.add('      left join cgzl_color2 on cgzl_color2.CLBH=ColorCLDH.ColorCLDH');

        sql.Add('where 1=1');
        if POEdit.Text <> '' then
          sql.Add('  and CGZL_Color.CGNO ='''+POEdit.Text+'''');         
        sql.Add('group by');
        sql.Add('article,kfjd,final.clbh,ywpm,clsl,qty,use_memo,csbh,zsywjc, Location ');
        sql.Add(', All_Parts ,recs, cgdate, yqdate ');
        sql.Add(', rkqty,rkdate,ETA,cidate, cgzl_memo, H_ETD, Invoice, BillNO,final.cgno, PurQty ,dwbh, srtype ');
        sql.Add(', NG_REASON,NG_ETD, NG_ETA, NG_RESULT , NG_Remark,Visually,A4Comfirm,TrackingA4Comfirm,DateA4Comfirm,Spectro,Spectro_file,Result,remark,PurReceiveDate,CheckResult,ActualETD,DelayReason');
        //memo1.text:=sql.text;
        //showmessage(qry2.SQL.text);
        qry2.Active:=true;
    end;
  end;

  Qry_MEMO.Active:=true;
  NGQry.Active:=true;
end;
//
procedure TFDStatus.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;
//Export Excel
procedure TFDStatus.ExportMainClass();
  function ReturnCheck(str:string):string;
  begin
    if trim(str)='Pedding' then
      result:='Pedding'
    else if trim(str)<>'' then
      result:=Copy(str,6,6)
    else
      result:='';
  end;
  function CheckIsDate(str:string):string;
  begin
    if trim(str)='Pedding' then
      result:=''
    else if trim(str)<>'' then
      result:=str
    else
      result:='';
  end;
var eclApp,WorkBook:olevariant;
    i,j:integer;
    FieldName:array [0..16] of string;
    ClumnWidth:array [0..16] of integer;
    MaxUpperDate:string;
    TotalMatStusList:String;
begin
  if  SRQry.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    //
      try
        WorkBook:=eclApp.workbooks.Add;
        FieldName[0]:='Item no.';
        FieldName[1]:='dropped Sample';
        FieldName[2]:='Sample PO.';
        FieldName[3]:='Spec issue date';
        FieldName[4]:='SKU';
        FieldName[5]:='Stage';
        FieldName[6]:='Sample shipping date';
        FieldName[7]:='Model name';
        FieldName[8]:='Pairs';
        FieldName[9]:='Upper material';
        FieldName[10]:='Stitching accessory';
        FieldName[11]:='Assembly accessory';
        FieldName[12]:='Bottom component';
        FieldName[13]:='Upper Mtrl Pairing Date';
        FieldName[14]:='Material status';
        FieldName[15]:='Upper/Bottom Mtrl Pairing Date';
        FieldName[16]:='Facotry Developer';
        ClumnWidth[0]:=5;
        ClumnWidth[1]:=7;
        ClumnWidth[2]:=20;
        ClumnWidth[3]:=10;
        ClumnWidth[4]:=20;
        ClumnWidth[5]:=10;
        ClumnWidth[6]:=10;
        ClumnWidth[7]:=20;
        ClumnWidth[8]:=10;
        ClumnWidth[9]:=10;
        ClumnWidth[10]:=12;
        ClumnWidth[11]:=12;
        ClumnWidth[12]:=12;
        ClumnWidth[13]:=12;
        ClumnWidth[14]:=50;
        ClumnWidth[15]:=12;
        ClumnWidth[16]:=12;
        for   i:=0  to  High(FieldName)  do
        begin
          eclApp.Cells(1,i+1):=FieldName[i];
          eclApp.ActiveSheet.Columns[i+1].ColumnWidth := ClumnWidth[i];
        end;
        //抬頭顏色
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,i]].interior.color:=clskyblue;
        //格式和自動換行 置中
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[SRQry.RecordCount+1,High(FieldName)+1]].Borders.weight:=2;
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[SRQry.RecordCount+1,High(FieldName)+1]].NumberFormatLocal:='@';
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[SRQry.RecordCount+1,High(FieldName)+1]].WrapText:=true;
        eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[SRQry.RecordCount+1,High(FieldName)+1]].HorizontalAlignment:= -4108; //靠左:-4131；靠右:-4152
        //15 欄位 Material Status
        eclApp.Range[eclApp.Cells[1,15],eclApp.Cells[SRQry.RecordCount+1,15]].HorizontalAlignment:= -4131;
        //
        SRQry.First;
        j:=2;
        while   not   SRQry.Eof   do
        begin
          eclApp.Cells(j,1):=inttostr(j-1);
          eclApp.Cells(j,2):=SRQry.FieldByName('Dropped').Value;
          eclApp.Cells(j,3):=SRQry.FieldByName('YPDH').Value;
          eclApp.Cells(j,4):=SRQry.FieldByName('TPDate').Value;
          eclApp.Cells(j,5):=SRQry.FieldByName('Article').Value;
          eclApp.Cells(j,6):=StageEdit.Text;
          if SRQry.FieldByName('ShipDate').AsString<>'' then
          eclApp.Cells(j,7):=Copy(SRQry.FieldByName('ShipDate').AsString,1,4)+'/'+Copy(SRQry.FieldByName('ShipDate').AsString,5,2)+'/'+Copy(SRQry.FieldByName('ShipDate').AsString,7,2);
          eclApp.Cells(j,8):=SRQry.FieldByName('XieXing').Value;;
          eclApp.Cells(j,9):=SRQry.FieldByName('Quantity').Value;
          eclApp.Cells(j,10):=ReturnCheck(SRQry.FieldByName('ML').AsString);
          eclApp.Cells(j,11):=ReturnCheck(SRQry.FieldByName('FML').AsString);
          eclApp.Cells(j,12):=ReturnCheck(SRQry.FieldByName('FGL').AsString);
          eclApp.Cells(j,13):=ReturnCheck(SRQry.FieldByName('DL').AsString);
          //面部配套
          MaxUpperDate:='';
          if ((CheckIsDate(SRQry.FieldByName('ML').AsString)<>'') and  (CheckIsDate(SRQry.FieldByName('FML').AsString)<>'')) then
          begin
            if SRQry.FieldByName('ML').AsString>SRQry.FieldByName('FML').AsString then
            begin
               MaxUpperDate:=SRQry.FieldByName('ML').AsString;
               eclApp.Cells(j,14):=Copy(SRQry.FieldByName('ML').AsString,6,6);
            end else
            begin
               MaxUpperDate:=SRQry.FieldByName('FML').AsString;
               eclApp.Cells(j,14):=Copy(SRQry.FieldByName('FML').AsString,6,6);
            end;
          end;
          //20150904無ETA交期材料清單
          if ETA_CB.Checked=true then
          begin
             TotalMatStusList:='';
             SRDet_ML.Active:=true;
             for i:=0 to SRDet_ML.RecordCount-1 do
             begin
               if SRDet_ML.FieldByName('ETA').AsString='' then
               begin
                 TotalMatStusList:=TotalMatStusList+'('+SRDet_ML.FieldByName('CLBH').AsString+')'+SRDet_ML.FieldByName('YWPM').AsString+'No ETA:'+SRDet_ML.FieldByName('Supplier').AsString+#13#10;
               end;
               SRDet_ML.Next;
             end;
             SRDet_FML.Active:=true;
             for i:=0 to SRDet_FML.RecordCount-1 do
             begin
               if SRDet_FML.FieldByName('ETA').AsString='' then
               begin
                 TotalMatStusList:=TotalMatStusList+'('+SRDet_ML.FieldByName('CLBH').AsString+')'+SRDet_FML.FieldByName('YWPM').AsString+'No ETA:'+SRDet_FML.FieldByName('Supplier').AsString+#13#10;
               end;
               SRDet_FML.Next;
             end;
             eclApp.Cells(j,15):=trim(TotalMatStusList);
          end;
          //面底配套
          if ((MaxUpperDate<>'') and (CheckIsDate(SRQry.FieldByName('DL').AsString)<>''))  then
          begin
            if MaxUpperDate>SRQry.FieldByName('DL').AsString then
            begin
               eclApp.Cells(j,16):=Copy(MaxUpperDate,6,7);
            end else
            begin
               eclApp.Cells(j,16):=Copy(SRQry.FieldByName('DL').AsString,6,6);
            end;
          end;
          eclApp.Cells(j,17):=SRQry.FieldByName('FD').Value;
          SRQry.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    //
   end;
end;
//
procedure TFDStatus.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  if SelectDBGrid=nil then SelectDBGrid:=SRDBGrid;//Default;
  if SelectDBGrid=SRDBGrid then
  begin
    ExportMainClass();
  end else
  begin
    tdbgh := SelectDBGrid;
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
end;

procedure TFDStatus.FormDestroy(Sender: TObject);
begin
  FDStatus:=nil;
end;

procedure TFDStatus.N1Click(Sender: TObject);
begin
if not qry3.FieldByName('CLBH').IsNull then
  begin
    FDStatus_AL:=TFDStatus_AL.create(self);
    FDStatus_AL.edit1.Text := SeasonEdit.Text;
    FDStatus_AL.edit3.Text := StageEdit.Text;
    FDStatus_AL.edit2.Text := FDStatus.qry3.fieldbyname('CLBH').AsString;
    FDStatus_AL.edit4.Text := FDStatus.qry3.fieldbyname('YWPM').AsString;
    FDStatus_AL.button1click(nil);
    FDStatus_AL.show;
  end
  else
  begin
      showmessage('Something is null!');
  end;
end;

procedure TFDStatus.FormCreate(Sender: TObject);
begin
  PGC1.ActivePageIndex:=0;
  dbgrdh2.Columns[17].Visible := false;
  if (main.Edit2.Text = 'SKX') then
  begin
    LAI.Clear;
    LAI.Items.Add('SKXV');
    LAI.Items.Add('SKXK');
    LAI.Items.Add('SKXT');
    dbgrdh1.Columns[0].Title.Caption := 'SR / COLOR';
    Label20.Visible := true;
    ComboBox14.Visible := true;
    Label16.Visible := true;
    POEdit.Visible := true;
  end
  else if (main.Edit2.Text = 'CDC') then
  begin
    dbgrdh2.Columns[16].Title.Caption := 'Purchasing|In-stock Date';
    dbgrdh2.Columns[17].Visible := true;
  end;
  ReadIni();
end;

procedure TFDStatus.dbgrdh2CellClick(Column: TColumnEh);  
var path:PChar;
begin
  SelectDBGrid:=dbgrdh2;
  if (dbgrdh2.SelectedField.FieldName = 'Spectro_file') and (not qry2.FieldByName('Spectro_file').isnull) then
  begin
    path:= pchar( STFilePath + string(qry2.FieldByName('Spectro_file').value) );
    if FileExists(Path)=true then
    ShellExecute(Handle, nil, path,  nil, nil, SW_SHOWNORMAL);
    //showmessage(StrPas(path));
  end;
end;

procedure TFDStatus.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  STFilePath := '\\192.168.123.111\Purchasing\Color Specialist\SPETRO REPORTS';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      STFilePath:=MyIni.ReadString('Spectro','Purchase_N735_STFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;


procedure TFDStatus.dbgrdh4CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=dbgrdh4;

end;

procedure TFDStatus.dbgrdh3CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGrdH3;
  if Column.FieldName='recs' then
     if qry3.Active=true then qry4.Active:=true;
end;

procedure TFDStatus.dbgrdh1CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGrdH1;
end;

procedure TFDStatus.dbgrdh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  //Spec變更材料但已經購買或已經設定庫存
  if  (qry2.Fieldbyname('srtype').AsString ='3') OR (qry2.Fieldbyname('srtype').AsString ='5')  then
       dbgrdh2.canvas.font.color:=clblue;
  //材料過濾不用買 但是有買
  if  qry2.Fieldbyname('srtype').AsString ='4'   then
      dbgrdh2.canvas.Brush.color:=clBtnface;
  dbgrdh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  //
  //材料有異動交期
  if  qry2.Fieldbyname('H_ETD').AsString <>''   then
  begin
    if DataCol=10 then
    begin
      dbgrdh2.canvas.Brush.color:=clyellow;
      dbgrdh2.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
end;

procedure TFDStatus.dbgrdh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if   qry1.Fieldbyname('recs').AsInteger=0  then
      dbgrdh1.canvas.font.color:=clRed ;
  dbgrdh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFDStatus.dbgrdh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if   qry3.Fieldbyname('srtype').AsString ='3'   then
      dbgrdh3.canvas.font.color:=clRed
  else   if   qry3.Fieldbyname('srtype').AsString ='4'   then
      dbgrdh3.canvas.font.color:=clBlue;
  dbgrdh3.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFDStatus.dbgrdh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Qry4.Fieldbyname('srtype').AsString ='2'   then
      DBGrdh4.canvas.font.color:=clRed;
  DBGrdh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  //尚未採購或利庫
  if ((Qry4.FieldByName('CGDate').IsNull) and ((Qry4.FieldByName('useqty').IsNull) or (Qry4.FieldByName('useqty').Value<=0)) ) then          //
  begin
    if DataCol=0 then
    begin
      DBGrdh4.canvas.Brush.Color:=clAqua;
      DBGrdh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  //
end;

procedure TFDStatus.N2Click(Sender: TObject);
begin
  if not(qry2.FieldByName('CLBH').IsNull) and not (qry2.FieldByName('cgdate').IsNull)  then
  begin

    FDStatus_Stock:=TFDStatus_Stock.create(self);
    FDStatus_Stock.edit1.Text:=qry2.fieldbyname('CLBH').AsString;
    FDStatus_Stock.DTP1.date:=qry2.FieldByName('cgdate').AsDateTime;
    FDStatus_Stock.CBX1.Text:=main.Edit2.Text;
    FDStatus_Stock.button1click(nil);
    FDStatus_Stock.show;
  end
  else
  begin
      showmessage('Material ID & Purchase Date should not be empty!');
  end;
end;

procedure TFDStatus.N3Click(Sender: TObject);
begin
  if not qry2.FieldByName('CLBH').IsNull then
  begin
    FDStatus_AL:=TFDStatus_AL.create(self);
    FDStatus_AL.edit1.Text := SeasonEdit.Text;
    FDStatus_AL.edit3.Text := StageEdit.Text;
    FDStatus_AL.edit2.Text := FDStatus.qry2.fieldbyname('CLBH').AsString;
    FDStatus_AL.edit4.Text := FDStatus.qry2.fieldbyname('YWPM').AsString;
    FDStatus_AL.edit5.Text := FDStatus.qry2.fieldbyname('dwbh').AsString;
    FDStatus_AL.button1click(nil);
    FDStatus_AL.show;
  end
  else
  begin
      showmessage('Something is null!');
  end;

end;

procedure TFDStatus.N4Click(Sender: TObject);
begin
  if not qry2.FieldByName('CLBH').IsNull then
  begin
    FDStatus_PO:=TFDStatus_PO.create(self);
    FDStatus_PO.edit1.Text := SeasonEdit.Text;
    FDStatus_PO.edit3.Text := StageEdit.Text;
    FDStatus_PO.edit2.Text := FDStatus.qry2.fieldbyname('CLBH').AsString;
    FDStatus_PO.edit4.Text := FDStatus.qry2.fieldbyname('YWPM').AsString;
    FDStatus_PO.edit5.Text := FDStatus.qry2.fieldbyname('dwbh').AsString;
    FDStatus_PO.edit6.Text := FDStatus.qry1.fieldbyname('FD').AsString;
    FDStatus_PO.edit7.Text := FDStatus.qry1.fieldbyname('article').AsString;
    FDStatus_PO.button1click(nil);
    FDStatus_PO.show;
  end
  else
  begin
      showmessage('Something is null!');
  end;
end;

procedure TFDStatus.S1Click(Sender: TObject);
begin
  if not qry4.FieldByName('article').IsNull then
  begin
    FDStatus_ETD:=TFDStatus_ETD.create(self);
    FDStatus_ETD.edit1.Text := SeasonEdit.Text;
    FDStatus_ETD.edit3.Text := StageEdit.Text;
    FDStatus_ETD.edit2.Text := FDStatus.qry3.fieldbyname('CLBH').AsString;
    FDStatus_ETD.edit4.Text := FDStatus.qry3.fieldbyname('YWPM').AsString;
    FDStatus_ETD.edit5.Text := FDStatus.qry4.fieldbyname('cgno').AsString;
    FDStatus_ETD.edit7.Text := FDStatus.qry4.fieldbyname('article').AsString;
    FDStatus_ETD.button1click(nil);
    FDStatus_ETD.show;
  end
  else
  begin
      showmessage('Something is null!');
  end;
end;

procedure TFDStatus.k1Click(Sender: TObject);
begin
  if not qry2.FieldByName('CLBH').IsNull then
  begin
    FDStatus_ETD:=TFDStatus_ETD.create(self);
    FDStatus_ETD.edit1.Text := SeasonEdit.Text;
    FDStatus_ETD.edit3.Text := StageEdit.Text;
    FDStatus_ETD.edit2.Text := FDStatus.qry2.fieldbyname('CLBH').value;
    FDStatus_ETD.edit4.Text := FDStatus.qry2.fieldbyname('YWPM').value;
    FDStatus_ETD.edit5.Text := FDStatus.qry2.fieldbyname('cgno').value;
    FDStatus_ETD.edit7.Text := FDStatus.qry1.fieldbyname('article').value;
    FDStatus_ETD.button1click(nil);
    FDStatus_ETD.show;
  end
  else
  begin
      showmessage('Something is null!');
  end;
end;

procedure TFDStatus.N5Click(Sender: TObject);
begin
  if not qry2.FieldByName('CLBH').IsNull then
  begin
    FDStatus_ETD:=TFDStatus_ETD.create(self);
    FDStatus_ETD.edit1.Text := SeasonEdit.Text;
    FDStatus_ETD.edit3.Text := StageEdit.Text;
    FDStatus_ETD.edit2.Text := FDStatus.qry2.fieldbyname('CLBH').AsString;
    FDStatus_ETD.edit4.Text := FDStatus.qry2.fieldbyname('YWPM').AsString;
    FDStatus_ETD.edit5.Text := FDStatus.qry2.fieldbyname('cgno').AsString;
    FDStatus_ETD.edit7.Text := FDStatus.qry1.fieldbyname('article').AsString;
    FDStatus_ETD.button1click(nil);
    FDStatus_ETD.show;
  end
  else
  begin
      showmessage('Something is null!');
  end;
end;

procedure TFDStatus.BBTT1Click(Sender: TObject);
begin
  FDstatus_Stage:=TFDstatus_Stage.create(self);
  FDstatus_Stage.show;
end;

procedure TFDStatus.BBTT2Click(Sender: TObject);
begin
  if FDStatus.SeasonEdit.Text='' then
     begin
       Messagedlg('Pls Keyin Season first !',mtwarning,[mbyes],0);
       abort; 
     end;
  FDstatus_FD:=TFDstatus_FD.create(self);
  FDstatus_FD.show;
end;

procedure TFDStatus.ShowMemo1Click(Sender: TObject);
begin
    if qry1.fieldbyname('article').AsString ='' then
    begin
         abort;
    end;
    if FDStatus_Bom<>nil then
      begin
        FDStatus_Bom.show;
      end
    else
    begin
      FDStatus_Bom:=TFDStatus_Bom.Create(self);
      FDStatus_Bom.Show;
    end;

end;
//材料頁面
procedure TFDStatus.QueryMaterial();
var SampleTable,GSBH,YPDH:string;
begin

  if (main.Edit2.Text = 'SKX') then
  begin
    if (ComboBox14.Text = '')  then
    begin
     showmessage('You need to Keyin the Brand.');
     abort;
    end else
    if (ComboBox14.Text <> '') then
    begin
      GSBH:='SKX';
      YPDH:=ComboBox14.Text;
    end;
  end else
    GSBH:=main.Edit2.Text;

  qry4.Active:=False;
  with Qry3 do
  begin
    SQL.Clear;
    SQL.Add('select * from ( ');
    SQL.Add('select ypzls.clbh,clzl.ywpm,ypzls.csbh,zszl.zsywjc,kfxxzl.jijie,ypzl.kfjd,');
    SQL.Add(' cc.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,''1'' as srtype from ypzls  ');
    SQL.Add(' inner join ypzl on ypzl.ypdh=ypzls.ypdh');
    SQL.Add(' inner join clzl on clzl.cldh=ypzls.clbh');
    SQL.Add(' inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add(' left join zszl on zszl.zsdh=ypzls.csbh');
    SQL.Add('');
    SQL.Add(' left join (select cs.clbh,count(cs.clbh) as recs, min(cgzl.cgdate)as cgdate, min(cs.CFMdate) as yqdate, min(CGZLInvoice_1.ETA) as ETA, min(cgzls.cgno) as cgno ,sum(cs.Qty) as PurQty  from cgzlss cs ');
    SQL.Add('            inner join cgzl on cgzl.cgno=cs.cgno');
    SQL.Add('            inner join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
    SQL.Add('            inner join YPZL on YPZL.YPDH=cs.zlbh ');
    SQL.Add('            inner join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and YPZL.SheHao=kfxxzl.SheHao');
    sql.add('            left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add('            left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
    SQL.Add('            left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
    SQL.Add('            where cgzl.cglx=6 and cgzl.purpose='''+StageEdit.Text+''' and cgzl.season='''+SeasonEdit.Text+'''  ');
    if  length(FDEdit.Text) > 0 then
      sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if  length(ArticleEdit.Text) > 0 then
      sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('            group by cs.clbh) cg on cg.clbh=ypzls.clbh ');
    SQL.Add(' left join ( ');
    SQL.Add('           select clbh,count(ypdh) as recs from (');
    SQL.Add('           select ca.clbh,ca.ypdh from (');
    SQL.Add('           ');
    SQL.Add('           select ypzls.clbh,ypzl.ypdh,cg.cgdate from ypzls');
    SQL.Add('           left join ypzl on ypzl.ypdh=ypzls.ypdh');
    SQL.Add('           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('           left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add('           left join');
    SQL.Add('                 (select cs.clbh,cs.zlbh,cgzl.cgdate from cgzlss cs');
    SQL.Add('                  left join cgzl on cgzl.cgno=cs.cgno');
    SQL.Add('                  where cgzl.cglx=6 and cgzl.Season='''+SeasonEdit.Text+''' and cgzl.Purpose='''+StageEdit.Text+''' and cgzl.GSBH='''+GSBH+'''  ');
    SQL.Add('                 ) cg on cg.zlbh=ypzl.YPDH and cg.clbh = ypzls.clbh');
    SQL.Add('           where 1=1');
    SQL.Add('           and kfxxzl.jijie='''+SeasonEdit.Text+'''');
    if  length(FDEdit.Text) > 0 then
      sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if  length(ArticleEdit.Text) > 0 then
      sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('           and ypzl.kfjd='''+StageEdit.Text+'''');
    SQL.Add('           and cg.cgdate is null');
    SQL.Add('           union all');
    SQL.Add('           select CLZHZL.cldh1 as clbh,ypzl.ypdh,cg.cgdate from ypzls');
    SQL.Add('           INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
    SQL.Add('           left join ypzl on ypzl.ypdh=ypzls.ypdh');
    SQL.Add('           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('           left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add('           left join');
    SQL.Add('            (select cs.clbh,cs.zlbh,cgzl.cgdate from cgzlss cs');
    SQL.Add('            left join cgzl on cgzl.cgno=cs.cgno');
    SQL.Add('            where cgzl.cglx=6 and cgzl.Season='''+SeasonEdit.Text+''' and cgzl.Purpose='''+StageEdit.Text+''' and cgzl.GSBH='''+GSBH+'''  ');
    SQL.Add('            ) cg on cg.zlbh=ypzl.YPDH and cg.clbh=CLZHZL.cldh1');
    SQL.Add('           where 1=1');
    SQL.Add('           and kfxxzl.jijie='''+SeasonEdit.Text+'''');
    if  length(FDEdit.Text) > 0 then
      sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');

    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if  length(ArticleEdit.Text) > 0 then
      sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('           and ypzl.kfjd='''+StageEdit.Text+'''');
    SQL.Add('           and cg.cgdate is null');
    SQL.Add('              ) ca');
    SQL.Add('           left join (select ce.clbh,ce.qty,ypzl.ypdh from cgkcuse ce');
    SQL.Add('                       left join ypzl on ypzl.ypdh=ce.zlbh');
    SQL.Add('                       left join kfxxzl on kfxxzl.SheHao=ypzl.sheHao and kfxxzl.XieXing=ypzl.XieXing');
    sql.add('                       left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add('                       where ce.qty>0 and 1=1');
    SQL.Add('                       and kfxxzl.jijie='''+SeasonEdit.Text+'''');
    SQL.Add('                       and ypzl.kfjd='''+StageEdit.Text+'''');
    SQL.Add('                       and ce.GSBH='''+GSBH+''' ');
    SQL.Add('                       ) da on da.clbh=ca.clbh and da.ypdh=ca.ypdh');
    SQL.Add('           where da.qty is null');
    SQL.Add('           group by ca.clbh,ca.ypdh ) cb group by clbh) cc on cc.clbh=ypzls.clbh');
    SQL.Add(' where 1=1 and ypzl.GSDH='''+GSBH+''' ');
    SQL.Add(' and kfxxzl.Jijie = '''+SeasonEdit.Text+'''');
    SQL.Add(' and ypzl.kfjd = '''+StageEdit.Text+'''');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;

    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    if  length(FDEdit.Text) > 0 then
      sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
    if  length(ArticleEdit.Text) > 0 then
      sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
    if  length(MatEdit.Text) > 0 then      //材料編號
      sql.add(' and ypzls.clbh like '''+MatEdit.Text+'%''');
    if  length(SupEdit.Text) > 0 then     //廠商名稱
      sql.add(' and zszl.zsywjc like '''+SupEdit.Text+'%''');

    if chk1.Checked=false then
    begin
      SQL.Add(' and ypzls.csbh not in (select zsdh from zszlfilter) ');
      SQL.Add(' and ypzls.clbh not in (select cldh from clzlfilter) ');
    end;
    SQL.Add(' and clzl.clzmlb = ''N''');
    SQL.Add(' group by ypzls.clbh,clzl.ywpm,ypzls.csbh,zszl.zsywjc,kfxxzl.jijie,ypzl.kfjd');
    SQL.Add(',cc.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno ');
    SQL.Add(' union all');
    //子材料==================================================================
    SQL.Add(' select CLZHZL.CLDH1 AS CLBH,clzl.ywpm,CLZHZL.ZSDH as csbh,zszl.zsywjc,kfxxzl.jijie,ypzl.kfjd,');
    SQL.Add(' cc.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,''2'' as srtype from ypzls  ');
    SQL.Add(' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
    SQL.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
    SQL.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH');
    SQL.Add(' left join clzl on clzl.cldh=CLZHZL.CLDH1');
    SQL.Add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add(' left join (select cs.clbh,count(cs.clbh) as recs, min(cgzl.cgdate)as cgdate, min(cs.CFMdate) as yqdate, min(CGZLInvoice_1.ETA) as ETA, min(cgzls.cgno) as cgno ,sum(cs.Qty) as PurQty  from cgzlss cs ');
    SQL.Add('            inner join cgzl on cgzl.cgno=cs.cgno');
    SQL.Add('            inner join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
    SQL.Add('            inner join YPZL on YPZL.YPDH=cs.zlbh ');
    SQL.Add('            inner join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and YPZL.SheHao=kfxxzl.SheHao');
    sql.add('            left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add('            left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
    SQL.Add('            left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
    SQL.Add('            where cgzl.cglx=6 and cgzl.purpose='''+StageEdit.Text+''' and cgzl.season='''+SeasonEdit.Text+'''  ');
    if  length(FDEdit.Text) > 0 then
      sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');

    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if  length(ArticleEdit.Text) > 0 then
      sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('            group by cs.clbh) cg on cg.clbh=CLZHZL.CLDH1 ');
    SQL.Add(' left join ( ');
    SQL.Add('           select clbh,count(ypdh) as recs from (');
    SQL.Add('           select ca.clbh,ca.ypdh from (');
    SQL.Add('           select ypzls.clbh,ypzl.ypdh,cg.cgdate from ypzls');
    SQL.Add('           left join ypzl on ypzl.ypdh=ypzls.ypdh');
    SQL.Add('           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('           left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add('           left join');
    SQL.Add('                 (select cs.zlbh,cgzl.cgdate,cs.clbh from cgzlss cs');
    SQL.Add('                 left join cgzl on cgzl.cgno=cs.cgno');
    SQL.Add('                 where cgzl.cglx=6 and cgzl.Season='''+SeasonEdit.Text+''' and cgzl.Purpose='''+StageEdit.Text+''' and cgzl.GSBH='''+GSBH+'''  ');
    SQL.Add('                 ) cg on cg.zlbh=ypzl.ypdh and cg.clbh = ypzls.clbh');
    SQL.Add('           where 1=1 and ypzl.GSDH='''+GSBH+''' ');
    SQL.Add('           and kfxxzl.jijie='''+SeasonEdit.Text+'''');
    if  length(FDEdit.Text) > 0 then
      sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if  length(ArticleEdit.Text) > 0 then
      sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('           and ypzl.kfjd='''+StageEdit.Text+'''');
    SQL.Add('           and cg.cgdate is null');
    SQL.Add('           union all');
    SQL.Add('           select CLZHZL.cldh1 as clbh,ypzl.ypdh,cg.cgdate from ypzls');
    SQL.Add('           INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
    SQL.Add('           left join ypzl on ypzl.ypdh=ypzls.ypdh');
    SQL.Add('           left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add('           left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add('           left join');
    SQL.Add('            (select cs.clbh,cs.zlbh,cgzl.cgdate from cgzlss cs');
    SQL.Add('            left join cgzl on cgzl.cgno=cs.cgno');
    SQL.Add('            where cgzl.cglx=6 and cgzl.Season='''+SeasonEdit.Text+''' and cgzl.Purpose='''+StageEdit.Text+''' and cgzl.GSBH='''+GSBH+'''  ');
    SQL.Add('            ) cg on cg.zlbh=ypzl.ypdh and cg.clbh=CLZHZL.cldh1');
    SQL.Add('           where 1=1');
    SQL.Add('           and kfxxzl.jijie='''+SeasonEdit.Text+'''');
    if  length(FDEdit.Text) > 0 then
      sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if  length(ArticleEdit.Text) > 0 then
      sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('           and ypzl.kfjd='''+StageEdit.Text+'''');
    SQL.Add('           and cg.cgdate is null');
    SQL.Add('              ) ca');
    SQL.Add('           left join (select ce.clbh,ce.qty,ypzl.ypdh from cgkcuse ce');
    SQL.Add('                       left join ypzl on ypzl.ypdh=ce.zlbh');
    SQL.Add('                       left join kfxxzl on kfxxzl.SheHao=ypzl.sheHao and kfxxzl.XieXing=ypzl.XieXing');
    SQL.Add('                       where ce.qty>0 and 1=1');
    SQL.Add('                       and kfxxzl.jijie='''+SeasonEdit.Text+'''');
    SQL.Add('                       and ypzl.kfjd='''+StageEdit.Text+'''');
    SQL.Add('                       and ce.GSBH='''+GSBH+''' ');
    SQL.Add('                       ) da on da.clbh=ca.clbh and da.ypdh=ca.ypdh');
    SQL.Add('           where da.qty is null');
    SQL.Add('           group by ca.clbh,ca.ypdh ) cb group by clbh) cc on cc.clbh=CLZHZL.CLDH1');
    SQL.Add(' where 1=1 and ypzl.GSDH='''+GSBH+''' ');
    SQL.Add(' and kfxxzl.Jijie = '''+SeasonEdit.Text+'''');
    SQL.Add(' and ypzl.kfjd = '''+StageEdit.Text+'''');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if  length(FDEdit.Text) > 0 then
      sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
    if  length(ArticleEdit.Text) > 0 then
      sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    if  length(MatEdit.Text) > 0 then      //材料編號
      sql.add(' and CLZHZL.CLDH1 like '''+MatEdit.Text+'%''');
    if  length(SupEdit.Text) > 0 then     //廠商名稱
      sql.add(' and zszl.zsywjc like '''+SupEdit.Text+'%''');
    if chk1.Checked=false then
    begin
      SQL.Add(' and ypzls.csbh not in (select zsdh from zszlfilter) ');
      SQL.Add(' and CLZHZL.CLDH1 not in (select cldh from clzlfilter) ');
    end;
    SQL.Add(' and not exists (select * from ypzls ');
    SQL.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
    SQL.Add(' left join clzl on clzl.cldh=ypzls.clbh');
    SQL.Add(' left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
    SQL.Add(' where 1=1 ');
    SQL.Add(' and kfxxzl.Jijie = '''+SeasonEdit.Text+'''');
    SQL.Add(' and ypzl.kfjd = '''+StageEdit.Text+'''');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if  length(FDEdit.Text) > 0 then
      sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
    if  length(ArticleEdit.Text) > 0 then
      sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add(' and clzl.clzmlb = ''N''');
    SQL.Add(' AND YPZLS.CLBH=CLZHZL.CLDH1 )  ');
    SQL.Add(' and CLZHZL.syl > 0');
    SQL.Add(' and clzl.clzmlb = ''N''');
    SQL.Add(' group by CLZHZL.CLDH1,clzl.ywpm,CLZHZL.ZSDH,zszl.zsywjc,kfxxzl.jijie,ypzl.kfjd');
    SQL.Add(' ,cc.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno ');
    SQL.Add(' ) list order by recs desc ');

    Active:=true;
  end;

  if not qry3.Eof then
  begin
    with Qry4 do
    begin
      SQL.Clear;
      SQL.Add('select ca.ypdh,ca.article,ca.cgdate,ca.yqdate,ca.eta,sum(isnull(ca.qty,0)) as qty,clzl.dwbh,sum(isnull(ca.useqty,0)) as useqty,ca.cgno,ca.zsywjc,ca.fd,ca.srtype from (');
      SQL.Add(' select ypzl.ypdh,ypzl.article,cg.cgdate,cg.yqdate,cg.eta,cg.qty,cgkcuse.qty as useqty,cg.cgno,zszl.zsywjc,ypzl.FD,''1'' as srtype from ypzls');
      SQL.Add(' inner join ypzl on ypzl.ypdh=ypzls.ypdh');
      SQL.Add(' inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      SQL.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
      SQL.Add(' left join zszl on zszl.zsdh=ypzls.csbh');
      SQL.Add(' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=ypzls.clbh and cgkcuse.gsbh='''+GSBH+'''');
      SQL.Add(' left join');
      SQL.Add('           (select cs.zlbh,cgzl.cgdate,cs.CFMdate as yqdate,CGZLInvoice_1.ETA,cgzls.cgno,cs.qty from cgzlss cs');
      SQL.Add('           inner join cgzl on cgzl.cgno=cs.cgno');
      SQL.Add('           inner join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
      SQL.Add('           left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
      SQL.Add('           left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
      SQL.Add('           where cgzl.season='''+SeasonEdit.Text+''' and cgzl.purpose='''+StageEdit.Text+''' and cs.clbh=:clbh');
      SQL.Add('           ) cg on cg.zlbh=ypzl.ypdh');
      SQL.Add(' where ypzl.GSDH='''+GSBH+''' and ypzls.clbh=:clbh');
      SQL.Add(' and kfxxzl.jijie='''+SeasonEdit.Text+'''');
      SQL.Add(' and ypzl.kfjd='''+StageEdit.Text+'''');
      if main.Edit2.Text = 'SKX' then
      begin
        SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
      end;
      //20150807  Add filter
      if DevTypeEdit.Text<>'' then
        sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
      if DroppedCK.Text='Not Dropped' then
        sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
      if DroppedCK.Text='Dropped' then
        sql.Add('and (xxzlKF.DROPPED=1) ');
      //
      if  length(FDEdit.Text) > 0 then
         sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
      if  length(ArticleEdit.Text) > 0 then
         sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
      SQL.Add(' union all');
      SQL.Add(' select ypzl.ypdh,ypzl.article,cg.cgdate,cg.yqdate,cg.eta,cg.qty,cgkcuse.qty as useqty,cg.cgno,zszl.zsywjc,ypzl.FD,''1'' as srtype from ypzls');
      SQL.Add(' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
      SQL.Add(' inner join ypzl on ypzl.ypdh=ypzls.ypdh');
      SQL.Add(' inner join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      SQL.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
      SQL.Add(' left join zszl on zszl.zsdh=CLZHZL.ZSDH');
      SQL.Add(' left join cgkcuse on cgkcuse.zlbh=ypzls.ypdh and cgkcuse.clbh=CLZHZL.cldh1 and cgkcuse.gsbh='''+GSBH+''' ');
      SQL.Add(' left join');
      SQL.Add('           (select cs.zlbh,cgzl.cgdate,cs.CFMdate as yqdate,CGZLInvoice_1.ETA,cs.qty,cgzls.cgno from cgzlss cs');
      SQL.Add('           left join cgzl on cgzl.cgno=cs.cgno');
      SQL.Add('           left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
      SQL.Add('           left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
      SQL.Add('           left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
      SQL.Add('           where cgzl.season='''+SeasonEdit.Text+''' and cgzl.purpose='''+StageEdit.Text+'''  and cgzl.GSBH='''+GSBH+''' and cs.clbh=:clbh');
      SQL.Add('           ) cg on cg.zlbh=ypzl.ypdh');
      SQL.Add(' where CLZHZL.CLDH1=:clbh');
      SQL.Add(' and kfxxzl.jijie='''+SeasonEdit.Text+'''');
      SQL.Add(' and ypzl.kfjd='''+StageEdit.Text+'''');
      if main.Edit2.Text = 'SKX' then
      begin
        SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
      end;
      //20150807  Add filter
      if DevTypeEdit.Text<>'' then
        sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
      if DroppedCK.Text='Not Dropped' then
        sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
      if DroppedCK.Text='Dropped' then
        sql.Add('and (xxzlKF.DROPPED=1) ');
      //
      if  length(FDEdit.Text) > 0 then
         sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
      if  length(ArticleEdit.Text) > 0 then
         sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
      SQL.Add('             ) ca');
      SQL.Add(' left join clzl on clzl.cldh=:clbh');
      SQL.Add(' group by ca.ypdh,ca.article,ca.cgdate,ca.yqdate,ca.eta,clzl.dwbh,ca.cgno,ca.zsywjc,ca.srtype,ca.FD');
      SQL.Add(' union all');
      SQL.Add(' select ypzl.ypdh,ypzl.article,cgzl.cgdate,cs.CFMdate as yqdate,CGZLInvoice_1.ETA,cs.qty,clzl.dwbh, null as useqty,cgzls.cgno,zszl.zsywjc,ypzl.FD,''2'' as srtype from cgzlss cs');
      SQL.Add(' inner join cgzl on cgzl.cgno=cs.cgno');
      SQL.Add(' inner join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
      SQL.Add(' inner join clzl on clzl.cldh=cs.clbh');
      SQL.Add(' inner join YPZL on YPZL.YPDH=cs.zlbh ');
      SQL.Add(' left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1 from CGZLInvoiceS GROUP BY CGNO,CLBH ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
      SQL.Add(' left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
      SQL.Add(' left join zszl on zszl.zsdh=CGZL.ZSBH');
      SQL.Add(' left join kfxxzl on kfxxzl.XieXing=YPZL.XieXing and  kfxxzl.SheHao=YPZL.SheHao  ');
      SQL.add(' left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
      SQL.Add(' where  ypzl.GSDH='''+GSBH+''' and cgzl.season='''+SeasonEdit.Text+''' and cgzl.purpose='''+StageEdit.Text+''' and cgzl.GSBH='''+GSBH+''' and cs.clbh=:clbh');
      //20150807  Add filter
      if main.Edit2.Text = 'SKX' then
      begin
        SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
      end;
      if DevTypeEdit.Text<>'' then
        sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
      if DroppedCK.Text='Not Dropped' then
        sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
      if DroppedCK.Text='Dropped' then
        sql.Add('and (xxzlKF.DROPPED=1) ');
      //
      if  length(FDEdit.Text) > 0 then
         sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
      if  length(ArticleEdit.Text) > 0 then
         sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
      SQL.Add('    and not exists(select * from ypzls');
      SQL.Add(' 				          inner join ypzl on ypzl.ypdh=ypzls.ypdh ');
      SQL.Add(' 				          inner join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and  kfxxzl.SheHao=ypzl.SheHao');
      SQL.Add('                   where ypzl.kfjd='''+StageEdit.Text+''' and kfxxzl.JiJie='''+SeasonEdit.Text+''' and ypzls.clbh=:clbh');
      if  length(FDEdit.Text) > 0 then
         sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
      if  length(ArticleEdit.Text) > 0 then
         sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
      SQL.Add(' 				          and ypzl.ypdh=cs.zlbh)');
      SQL.Add('    and not exists(select * from ypzls ');
      SQL.Add('          				inner join CLZHZL ON YPZLS.CLBH = CLZHZL.cldh');
      SQL.Add('            			inner join ypzl on ypzl.ypdh=ypzls.ypdh');
      SQL.Add('            			inner join kfxxzl on kfxxzl.XieXing=ypzl.XieXing and  kfxxzl.SheHao=ypzl.SheHao');
      SQL.add('                 left join xxzlkf on kfxxzl.xiexing=xxzlkf.xiexing and kfxxzl.shehao=xxzlkf.shehao');
      SQL.Add('      			    	where ypzl.kfjd='''+StageEdit.Text+''' and kfxxzl.JiJie='''+SeasonEdit.Text+''' and CLZHZL.cldh1=:clbh');
      //20150807  Add filter
      if main.Edit2.Text = 'SKX' then
      begin
        SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
      end;
      if DevTypeEdit.Text<>'' then
        sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
      if DroppedCK.Text='Not Dropped' then
        sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
      if DroppedCK.Text='Dropped' then
        sql.Add('and (xxzlKF.DROPPED=1) ');
      //
      if  length(FDEdit.Text) > 0 then
         sql.Add('                 and ypzl.fd='''+FDEdit.Text+'''');
      if  length(ArticleEdit.Text) > 0 then
         sql.Add('                 and kfxxzl.Article='''+ArticleEdit.Text+'''');
      SQL.Add('           				and ypzl.ypdh=cs.zlbh)');
      Active:=true;
    end;

  end;
end;
procedure TFDStatus.BitBtn1Click(Sender: TObject);
begin
  FDStatus_Article:=TFDStatus_Article.create(self);
  FDStatus_Article.parentArticle:=ArticleEdit;
  FDStatus_Article.parentSR:=SREdit;
  FDStatus_Article.parentJiJie:=SeasonEdit;
  FDStatus_Article.parentKFJD:=StageEdit;
  FDStatus_Article.parentFD:=FDEdit;
  FDStatus_Article.show;
end;
//顯示面料/副料/補料/底料
procedure TFDStatus.ShowSRPurchaseStatus_DFL();
var SampleTable,GSBH,YPDH:string;
begin
  //
  if StageEdit.Text='PRO' then SampleTable:='R1Sample';
  if StageEdit.Text='SM2' then SampleTable:='R2Sample';
  if StageEdit.Text='SM3' then SampleTable:='R3Sample';
  //主面料

  if (main.Edit2.Text = 'SKX') then
  begin
    if (ComboBox14.Text = '')  then
    begin
     showmessage('You need to Keyin the Brand.');
     abort;
    end else
    if (ComboBox14.Text <> '') then
    begin
      GSBH:='SKX';
      YPDH:=ComboBox14.Text;
    end;
  end else
    GSBH:=main.Edit2.Text;

  with SRDet_ML do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName from (');
    //20150527 weston 修改
    SQL.Add('select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from (');
    SQL.Add('select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from ( ');
    SQL.Add('SELECT ypzls.YPDH,ypzl.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+''' and YPZL.YPDH=:YPDH');
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH,ypzl.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and  YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0   and YPZL.YPDH=:YPDH');
    SQL.Add('union all ');
    SQL.Add('Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   ');
    SQL.Add(' from (');
    SQL.Add('SELECT ypzls.YPDH ,ypzl.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('WHERE YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  and YPZL.YPDH=:YPDH');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0  ');
    SQL.Add(')  YPZLS ');
    SQL.Add('Group by YPDH ,FD,CLBH,YWPM ');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH ');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('where ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Mat'')) or ');
    SQL.Add('(LEFT(Temp_YPZL.CLBH,1) in (''A'',''C'',''F'',''K'') and  LEFT(Temp_YPZL.CLBH,3) not in (''A02'',''A08'',''A13'',''A48'') and (clzlfilter_DFL.DFL is null) ) or (clzlfilter_DFL.DFL=''1'') or (LEFT(Temp_YPZL.CLBH,1)=''P'' and Temp_YPZL.CSBH=''M027'') )');
    SQL.Add(' and zszlfilter.zsdh is null  and clzlfilter.cldh is null  ');
    SQL.Add(')  YPZL ');
    //======================================
    SQL.Add('Left Join (');
    SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,');
    SQL.Add('Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo');
    SQL.Add('from CGZLSS');                                                  
    SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('left join (select CLBH,Location from MaterialMOQ Group by CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH');
    SQL.Add('where  CGZL.SEASON=:Season  and CGZL.PURPOSE=:Stage  and CGZLSS.ZLBH=:YPDH');
    SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add('Union all');
    SQL.Add('select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserDate) as ETA,NULL as CGNO,''Stock'' as useType,Max(cgkcuse.memo) as stock_memo from cgkcuse');
    SQL.Add('inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('inner join CLZL on CLZL.CLDH=cgkcuse.CLBH');
    SQL.Add('left join (select CLBH,Location from MaterialMOQ Group by CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH');
    SQL.Add('where cgkcuse.Qty>0 and YPZL.KFJD=:Stage  and KFXXZL.JiJie=:Season and YPZL.YPDH=:YPDH');
    SQL.Add('Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add(') CG');
    SQL.Add('on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH');
    //20150901增加廠商
    SQL.Add('left join zszl on zszl.zsdh=ypzl.csbh ');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='''+GSBH+''' ');
    SQL.Add('left join Busers on zszl_dev.SamplePurchaser=Busers.UserID ');
  end;
  //針車副料
  with SRDet_FML do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName,zszl.zsywjc as Supplier,Busers.UserName from (');
    //20150527 weston 修改
    SQL.Add('select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from (');
    SQL.Add('select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from ( ');
    SQL.Add('SELECT ypzls.YPDH ,ypzl.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and YPZL.YPDH=:YPDH ');
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH,ypzl.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and  YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0   and YPZL.YPDH=:YPDH');
    SQL.Add('union all ');
    SQL.Add('Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   ');
    SQL.Add(' from (');
    SQL.Add('SELECT ypzls.YPDH ,ypzl.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('WHERE YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  and YPZL.YPDH=:YPDH');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0  ');
    SQL.Add(')  YPZLS ');
    SQL.Add('Group by YPDH ,FD,CLBH,YWPM ');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH ');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('where ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Phu May'')) or ');
    SQL.Add('(LEFT(Temp_YPZL.CLBH,1) in (''B'',''L'',''M'',''N'')  and (clzlfilter_DFL.DFL is null) ) or (clzlfilter_DFL.DFL=''2'') or (LEFT(Temp_YPZL.CLBH,3)  in (''D03'',''D11'',''J05'',''O02'',''A02'',''A08'',''A13'',''A48'')) )');
    SQL.Add(' and zszlfilter.zsdh is null  and clzlfilter.cldh is null  ');
    SQL.Add(')  YPZL ');
    //======================================
    SQL.Add('Left Join (');
    SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,');
    SQL.Add('Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo');
    SQL.Add('from CGZLSS');
    SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('left join (select CLBH,Location from MaterialMOQ Group by CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH');
    SQL.Add('where  CGZL.SEASON=:Season  and CGZL.PURPOSE=:Stage  and CGZLSS.ZLBH=:YPDH');
    SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add('Union all');
    SQL.Add('select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserDate) as ETA,NULL as CGNO,''Stock'' as useType,Max(cgkcuse.memo) as stock_memo from cgkcuse');
    SQL.Add('inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('inner join CLZL on CLZL.CLDH=cgkcuse.CLBH');
    SQL.Add('left join (select CLBH,Location from MaterialMOQ Group by CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH');
    SQL.Add('where cgkcuse.Qty>0 and YPZL.KFJD=:Stage  and KFXXZL.JiJie=:Season and YPZL.YPDH=:YPDH');
    SQL.Add('Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add(') CG');
    SQL.Add('on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH');
    //20150901增加廠商
    SQL.Add('left join zszl on zszl.zsdh=ypzl.csbh ');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='''+GSBH+''' ');
    SQL.Add('left join Busers on zszl_dev.SamplePurchaser=Busers.UserID ');
  end;
  //成型副料
  with SRDet_FGL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName,zszl.zsywjc as Supplier,Busers.UserName from (');
    //20150527 weston 修改
    SQL.Add('select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from (');
    SQL.Add('select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from ( ');
    SQL.Add('SELECT ypzls.YPDH ,ypzl.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and YPZL.YPDH=:YPDH');
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH,ypzl.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and  YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0   and YPZL.YPDH=:YPDH');
    SQL.Add('union all ');
    SQL.Add('Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   ');
    SQL.Add(' from (');
    SQL.Add('SELECT ypzls.YPDH ,ypzl.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('WHERE YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  and YPZL.YPDH=:YPDH');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0  ');
    SQL.Add(')  YPZLS ');
    SQL.Add('Group by YPDH ,FD,CLBH,YWPM ');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH ');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('where ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Phu Go'')) or ');
    SQL.Add('((LEFT(Temp_YPZL.CLBH,1) in (''D'',''E'',''O'',''I'',''J'')  and LEFT(Temp_YPZL.CLBH,3) not in (''D03'',''D11'',''J05'',''O02'') and (clzlfilter_DFL.DFL is null) )) or clzlfilter_DFL.DFL=''3''  )');
    SQL.Add(')  YPZL ');
    //======================================
    SQL.Add('Left Join (');
    SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,');
    SQL.Add('Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo');
    SQL.Add('from CGZLSS');
    SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('left join (select CLBH,Location from MaterialMOQ Group by CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH');
    SQL.Add('where  CGZL.SEASON=:Season  and CGZL.PURPOSE=:Stage  and CGZLSS.ZLBH=:YPDH');
    SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add('Union all');
    SQL.Add('select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserDate) as ETA,NULL as CGNO,''Stock'' as useType,Max(cgkcuse.memo) as stock_memo from cgkcuse');
    SQL.Add('inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('inner join CLZL on CLZL.CLDH=cgkcuse.CLBH');
    SQL.Add('left join (select CLBH,Location from MaterialMOQ Group by CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH');
    SQL.Add('where cgkcuse.Qty>0 and YPZL.KFJD=:Stage  and KFXXZL.JiJie=:Season and YPZL.YPDH=:YPDH');
    SQL.Add('Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add(') CG');
    SQL.Add('on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH');
    //20150901增加廠商
    SQL.Add('left join zszl on zszl.zsdh=ypzl.csbh ');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='''+GSBH+''' ');
    SQL.Add('left join Busers on zszl_dev.SamplePurchaser=Busers.UserID ');
  end;
  with SRDet_DL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName from (');
    //20150527 weston 修改
    SQL.Add('select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from (');
    SQL.Add('select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from ( ');
    SQL.Add('SELECT ypzls.YPDH ,ypzl.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and YPZL.YPDH=:YPDH');
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH,ypzl.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and  YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0   and YPZL.YPDH=:YPDH');
    SQL.Add('union all ');
    SQL.Add('Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   ');
    SQL.Add(' from (');
    SQL.Add('SELECT ypzls.YPDH ,ypzl.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('WHERE YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  and YPZL.YPDH=:YPDH');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0  ');
    SQL.Add(')  YPZLS ');
    SQL.Add('Group by YPDH ,FD,CLBH,YWPM ');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH ');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('where ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT De'')) or ');
    SQL.Add('(((LEFT(Temp_YPZL.CLBH,1) in (''G'') or LEFT(Temp_YPZL.CLBH,3) in (''J03'')) and (clzlfilter_DFL.DFL is null) )) or clzlfilter_DFL.DFL=''4''  )');
    SQL.Add(')  YPZL ');
    //======================================
    SQL.Add('Left Join (');
    SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,');
    SQL.Add('Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo');
    SQL.Add('from CGZLSS');
    SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('Left join (select CLBH,Location from ( select CLBH,Location,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC,Substring(Season,3,1) ASC) as  rn from MaterialMOQ  ');
    SQL.Add(') A where A.rn=1 ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH ');
    SQL.Add('where  CGZL.SEASON=:Season  and CGZL.PURPOSE=:Stage  and CGZLSS.ZLBH=:YPDH');
    SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add('Union all');
    SQL.Add('select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserDate) as ETA,NULL as CGNO,''Stock'' as useType,Max(cgkcuse.memo) as stock_memo from cgkcuse ');
    SQL.Add('inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('inner join CLZL on CLZL.CLDH=cgkcuse.CLBH');
    SQL.Add('left join (select CLBH,Location from MaterialMOQ Group by CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH');
    SQL.Add('where cgkcuse.Qty>0 and YPZL.KFJD=:Stage  and KFXXZL.JiJie=:Season and YPZL.YPDH=:YPDH');
    SQL.Add('Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add(') CG');
    SQL.Add('on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH');
    //20150901增加廠商
    SQL.Add('left join zszl on zszl.zsdh=ypzl.csbh ');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='''+GSBH+''' ');
    SQL.Add('left join Busers on zszl_dev.SamplePurchaser=Busers.UserID ');
  end;
  with SRDet_No do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select YPZL.*,CG.Qty,CG.ETD,CG.Location,CG.ETA,CG.CGNO,CG.useType,CG.Stock_Memo,zszl.zsywjc as Supplier,Busers.UserName from (');
    //20150527 weston 修改
    SQL.Add('select YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from (');
    SQL.Add('select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from ( ');
    SQL.Add('SELECT ypzls.YPDH ,ypzl.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and YPZL.YPDH=:YPDH');
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH,ypzl.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and  YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0   and YPZL.YPDH=:YPDH');
    SQL.Add('union all ');
    SQL.Add('Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   ');
    SQL.Add(' from (');
    SQL.Add('SELECT ypzls.YPDH ,ypzl.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('WHERE YPZL.KFJD=:Stage and KFXXZL.JiJie=:Season and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  and YPZL.YPDH=:YPDH');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0  ');
    SQL.Add(')  YPZLS ');
    SQL.Add('Group by YPDH ,FD,CLBH,YWPM ');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH ');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('where ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (IsNull(CLZL.cltd,'''')='''') ) ');
    SQL.Add(')  YPZL ');
    //
    SQL.Add('Left Join (');
    SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,');
    SQL.Add('Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+2 else Min(CGZLS.CFMDate)+8 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo');
    SQL.Add('from CGZLSS ');
    SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
    SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('left join (select CLBH,Location from MaterialMOQ Group by CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH');
    SQL.Add('where  CGZL.SEASON=:Season  and CGZL.PURPOSE=:Stage  and CGZLSS.ZLBH=:YPDH');
    SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add('Union all ');
    SQL.Add('select YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,Max(YPZL.UserDate) as ETD,MaterialMOQ.Location,Max(cgkcuse.UserDate) as ETA,NULL as CGNO,''Stock'' as useType,Max(cgkcuse.memo) as stock_memo from cgkcuse');
    SQL.Add('inner join YPZL on  YPZL.YPDH=cgkcuse.ZLBH');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao');
    SQL.Add('inner join CLZL on CLZL.CLDH=cgkcuse.CLBH');
    SQL.Add('left join (select CLBH,Location from MaterialMOQ Group by CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=cgkcuse.CLBH');
    SQL.Add('where cgkcuse.Qty>0 and YPZL.KFJD=:Stage  and KFXXZL.JiJie=:Season  and YPZL.YPDH=:YPDH');
    SQL.Add('Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd,MaterialMOQ.Location');
    SQL.Add(') CG');
    SQL.Add('on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH');
    //20150901增加廠商
    SQL.Add('left join zszl on zszl.zsdh=ypzl.csbh ');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='''+GSBH+''' ');
    SQL.Add('left join Busers on zszl_dev.SamplePurchaser=Busers.UserID ');
  end;
  //
  SRDet_NO.Active:=false;
  SRDet_ML.ParamByName('Stage').Value:=StageEdit.Text;
  SRDet_ML.ParamByName('Season').Value:=SeasonEdit.Text;
  SRDet_FML.ParamByName('Stage').Value:=StageEdit.Text;
  SRDet_FML.ParamByName('Season').Value:=SeasonEdit.Text;
  SRDet_FGL.ParamByName('Stage').Value:=StageEdit.Text;
  SRDet_FGL.ParamByName('Season').Value:=SeasonEdit.Text;
  SRDet_DL.ParamByName('Stage').Value:=StageEdit.Text;
  SRDet_DL.ParamByName('Season').Value:=SeasonEdit.Text;
  SRDet_NO.ParamByName('Stage').Value:=StageEdit.Text;
  SRDet_NO.ParamByName('Season').Value:=SeasonEdit.Text;

  with SRQry do
  begin
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#SRPurchase'') is not null    ');
    SQL.Add('begin drop table #SRPurchase end ');
    SQL.Add('select * into #SRPurchase  from ( ');
    //20150527 weston 修改
    SQL.Add('select YPZLS.YPDH,YPZLS.Article,YPZLS.CLBH,YPZLS.cltd,YPZLS.DFL,CGdata.UseType,Max(YPZLS.CSBH) as CSBH,Sum(CGdata.Qty) as Qty,Max(CGdata.ETD) as ETD from (select * from ( ');
    SQL.Add('SELECT ypzls.YPDH ,YPZL.Article,ypzls.CLBH,CLZL.cltd,clzlfilter_DFL.DFL,ypzls.CSBH');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('LEFT JOIN xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.SheHao = kfxxzl.SheHao  ');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and YPZL.KFJD='''+StageEdit.Text+''' and KFXXZL.JiJie='''+SeasonEdit.Text+''' and YPZL.GSDH='''+GSBH+''' ');
    SQL.Add('       and zszlfilter.zsdh is null  and clzlfilter.cldh is null ');
    if ArticleEdit.Text<>'' then
      SQL.Add('      and YPZL.Article='''+ArticleEdit.Text+''' ');
    if FDEdit.Text<>'' then
      SQL.Add('      and ypzl.FD='''+FDEdit.Text+''' ');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('      and ypzl.YPDH like '''+YPDH+'%''');
    end;
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH,YPZL.Article,clzhzl.CLDH1 as CLBH,CLZL.cltd,clzlfilter_DFL.DFL,ypzls.CSBH ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('LEFT JOIN xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.SheHao = kfxxzl.SheHao  ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=CLZHZL.zsdh and zszlfilter.GSBH='''+GSBH+''' ');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+GSBH+''' ');
    SQL.Add('WHERE clzl.clzmlb = ''N'' and YPZL.KFJD='''+StageEdit.Text+''' and KFXXZL.JiJie='''+SeasonEdit.Text+''' and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0  ');
    SQL.Add('      and zszlfilter.zsdh is null  and clzlfilter.cldh is null ');
    if ArticleEdit.Text<>'' then
      SQL.Add('      and YPZL.Article='''+ArticleEdit.Text+''' ');
    if FDEdit.Text<>'' then
      SQL.Add('      and ypzl.FD='''+FDEdit.Text+''' ');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('      and ypzl.YPDH like '''+YPDH+'%''');
    end;
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('union all ');
    SQL.Add('Select YPDH,YPDH,clzhzl.CLDH1 as CLBH,CLZL.cltd,clzlfilter_DFL.DFL,CSBH    ');
    SQL.Add(' from (');
    SQL.Add('SELECT ypzls.YPDH ,YPZL.Article,ypzls.CSBH  ,clzhzl.CLDH1 as CLBH  ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('LEFT JOIN xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.SheHao = kfxxzl.SheHao  ');
    SQL.Add('WHERE YPZL.KFJD='''+StageEdit.Text+''' and KFXXZL.JiJie='''+SeasonEdit.Text+''' and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
    if ArticleEdit.Text<>'' then
        SQL.Add('      and YPZL.Article='''+ArticleEdit.Text+''' ');
    if FDEdit.Text<>'' then
        SQL.Add('      and ypzl.FD='''+FDEdit.Text+''' ');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('      and ypzl.YPDH like '''+YPDH+'%''');
    end;
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=CLZHZL.zsdh and zszlfilter.GSBH='''+GSBH+''' ');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+GSBH+''' ');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0  and zszlfilter.zsdh is null  and clzlfilter.cldh is null ');
    SQL.Add(')  YPZLS ');
    SQL.Add('Group by YPDH ,Article,CLBH, cltd,DFL,CSBH ');
    //============================================================
    SQL.Add(') YPZLS');
    SQL.Add('left join  (');
    SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETD,''1'' as useType ');
    SQL.Add('from CGZLSS ');
    SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO ');
    SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
    SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH ');
    SQL.Add('left join (select CLBH,Max(Location) as Location from MaterialMOQ Group by CLBH  ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH  ');
    SQL.Add('where CGZL.GSBH='''+GSBH+''' and CGZL.SEASON='''+SeasonEdit.Text+''' and CGZL.PURPOSE='''+StageEdit.Text+''' ');
    SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location  ');
    SQL.Add('Union all ');
    SQL.Add('select YPZL.YPDH as YPDH,cgkcuse.CLBH,CLZL.cltd,Sum(cgkcuse.Qty) as Qty,Max(YPZL.UserDate) as ETD,''2'' as useType from cgkcuse ');
    SQL.Add('INNER join YPZL on  YPZL.YPDH=cgkcuse.ZLBH ');
    SQL.Add('Left join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('LEFT JOIN xxzlKF ON xxzlKF.XieXing = kfxxzl.XieXing AND xxzlKF.SheHao = kfxxzl.SheHao  ');
    SQL.Add('left join YPZLS on YPZLS.YPDH=YPZL.YPDH and YPZLS.CLBH=cgkcuse.CLBH ');
    SQL.Add('left join CLZL on CLZL.CLDH=cgkcuse.CLBH ');
    SQL.Add('where cgkcuse.Qty>0 and cgkcuse.GSBH='''+GSBH+''' and YPZL.KFJD='''+StageEdit.Text+'''');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    SQL.Add('and KFXXZL.JiJie='''+SeasonEdit.Text+''' ');
    SQL.Add('Group by YPZL.YPDH,cgkcuse.CLBH,CLZL.cltd ');
    SQL.Add(') CGdata on CGdata.YPDH=YPZLS.YPDH and CGdata.CLBH=YPZLS.CLBH');
    SQL.Add('Group by YPZLS.YPDH,YPZLS.Article,YPZLS.CLBH,YPZLS.cltd,YPZLS.DFL,CGdata.UseType ');
    SQL.Add(') CGdata');
    SQL.Add('');
    //20150831
    if ETA_CB.Checked=true then
    begin
      SQL.Add('Select case when Dropped=''1'' then ''Y'' else ''N'' end as Dropped,YPDH,TPDATE,Article,JHRQ as ShipDate,Quantity,SR,XieXing,FD, Substring(Max(ETD_ML),1,10) as ML,');
      SQL.Add('                     Substring(Max(ETD_FML),1,10) as FML,');
    end else
    begin
      SQL.Add('Select case when Dropped=''1'' then ''Y'' else ''N'' end as Dropped,YPDH,TPDATE,Article,JHRQ as ShipDate,Quantity,SR,XieXing,FD,case when Substring(Min(ETD_ML),1,10)<>'''' then Substring(Max(ETD_ML),1,10)  else Substring(Min(ETD_ML),1,10) end as ML,');
      SQL.Add('                     case when Substring(Min(ETD_FML),1,10)<>'''' then Substring(Max(ETD_FML),1,10)  else Substring(Min(ETD_FML),1,10) end as FML,');
    end;
    SQL.Add('                     case when Substring(Min(ETD_FGL),1,10)<>'''' then Substring(Max(ETD_FGL),1,10)  else Substring(Min(ETD_FGL),1,10) end as FGL,');
    SQL.Add('                     case when Substring(Min(ETD_DL),1,10)<>'''' then Substring(Max(ETD_DL),1,10)  else Substring(Min(ETD_DL),1,10) end as DL from ( ');

    SQL.Add('');
    SQL.Add('select YPZL.*,case when CG_ML.ETD is null then '' Pedding '' else IsNULL(Convert(varchar,CG_ML.ETD,10),'''') end   as ETD_ML, ');
    SQL.Add('       case when CG_FML.ETD is null then '' Pedding '' else IsNULL(Convert(varchar,CG_FML.ETD,10),'''') end   as ETD_FML,case when CG_FGL.ETD is null then '' Pedding '' else IsNULL(Convert(varchar,CG_FGL.ETD,10),'''') end as ETD_FGL, ');
    SQL.Add('       case when CG_DL.ETD is null then ''  Pedding '' else IsNULL(Convert(varchar,CG_DL.ETD,10),'''') end   as ETD_DL,ReceBOM.YPDH as SR  from ( ');
    SQL.Add('');
    //20150527 weston 修改
    SQL.Add('select * from ( ');
    SQL.Add('SELECT ypzls.YPDH ,YPZL.Article,YPZL.Quantity,XXZLKF.Dropped,R3Sample.TPDATE,YPZL.JHRQ,KFXXZL.XieXing,ypzl.FD,ypzls.CLBH');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=ypzls.csbh and zszlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=ypzls.clbh and clzlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('Left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing and KFXXZL.SheHao=XXZLKF.SheHao  ');
    SQL.Add('left join R3Sample on R3Sample.XieXing=KFXXZL.XieXing and R3Sample.SheHao=KFXXZL.SheHao ');
    SQL.Add('WHERE  clzl.clzmlb=''N'' and YPZL.KFJD='''+StageEdit.Text+''' and KFXXZL.JiJie='''+SeasonEdit.Text+''' and YPZL.GSDH='''+GSBH+'''  ');
    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    SQL.Add('      and zszlfilter.zsdh is null  and clzlfilter.cldh is null ');
    if ZeroUsageCK.Checked=false then
        SQL.Add(' and ypzls.CLSL>0  ');
    if ArticleEdit.Text<>'' then
        SQL.Add('      and YPZL.Article='''+ArticleEdit.Text+''' ');
    if FDEdit.Text<>'' then
        SQL.Add('      and ypzl.FD='''+FDEdit.Text+''' ');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH,YPZL.Article,YPZL.Quantity,XXZLKF.Dropped,R3Sample.TPDATE,YPZL.JHRQ,KFXXZL.XieXing,ypzl.FD,clzhzl.CLDH1 as CLBH ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('Left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing and KFXXZL.SheHao=XXZLKF.SheHao  ');
    SQL.Add('left join R3Sample on R3Sample.XieXing=KFXXZL.XieXing and R3Sample.SheHao=KFXXZL.SheHao ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    SQL.Add('inner JOIN clzl clzl ON clzhzl.CLDH1 = clzl.cldh  ');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=CLZHZL.zsdh and zszlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+GSBH+'''  ');
    SQL.Add('WHERE clzl.clzmlb=''N'' and YPZL.KFJD='''+StageEdit.Text+''' and KFXXZL.JiJie='''+SeasonEdit.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0  ');
    SQL.Add('      and zszlfilter.zsdh is null  and clzlfilter.cldh is null ');

    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if ZeroUsageCK.Checked=false then
        SQL.Add(' and ypzls.CLSL>0  ');
    if ArticleEdit.Text<>'' then
        SQL.Add('      and YPZL.Article='''+ArticleEdit.Text+''' ');
    if FDEdit.Text<>'' then
        SQL.Add('      and ypzl.FD='''+FDEdit.Text+''' ');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add('union all ');
    SQL.Add('Select YPDH,Article,Quantity,Dropped,TPDATE,JHRQ,XieXing,FD,clzhzl.CLDH1 as CLBH    ');
    SQL.Add(' from (');
    SQL.Add('SELECT ypzls.YPDH ,YPZL.Article,YPZL.Quantity,XXZLKF.Dropped,R3Sample.TPDATE,YPZL.JHRQ,KFXXZL.XieXing,ypzl.FD ,clzhzl.CLDH1 as CLBH  ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('Left join XXZLKF on KFXXZL.XieXing=XXZLKF.XieXing and KFXXZL.SheHao=XXZLKF.SheHao  ');
    SQL.Add('left join R3Sample on R3Sample.XieXing=KFXXZL.XieXing and R3Sample.SheHao=KFXXZL.SheHao ');
    SQL.Add('WHERE YPZL.KFJD='''+StageEdit.Text+''' and KFXXZL.JiJie='''+SeasonEdit.Text+''' and YPZL.GSDH='''+GSBH+'''   and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');

    if main.Edit2.Text = 'SKX' then
    begin
      SQL.Add('and ypzl.YPDH like '''+YPDH+'%''');
    end;
    if ZeroUsageCK.Checked=false then
        SQL.Add(' and ypzls.CLSL>0  ');
    if ArticleEdit.Text<>'' then
        SQL.Add('      and YPZL.Article='''+ArticleEdit.Text+''' ');
    if FDEdit.Text<>'' then
        SQL.Add('      and ypzl.FD='''+FDEdit.Text+''' ');
    //20150807  Add filter
    if DevTypeEdit.Text<>'' then
      sql.Add(' and kfxxzl.Devtype='''+trim(DevTypeEdit.Text)+''' ');
    if DroppedCK.Text='Not Dropped' then
      sql.Add('and (xxzlKF.DROPPED<>1 or xxzlKF.DROPPED is null) ');
    if DroppedCK.Text='Dropped' then
      sql.Add('and (xxzlKF.DROPPED=1) ');
    //
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh  ');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=CLZHZL.zsdh and zszlfilter.GSBH='''+GSBH+''' ');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1 and clzlfilter.GSBH='''+GSBH+''' ');
    SQL.Add('where  clzl.clzmlb=''N'' and CLZHZL.SYL>0 and zszlfilter.zsdh is null  and clzlfilter.cldh is null ');
    SQL.Add(')  YPZLS ');
    SQL.Add('Group by YPDH,Article,Quantity,Dropped,TPDATE,JHRQ,XieXing,FD,CLBH  ');
    //================================================================================
    SQL.Add(') YPZL   ');
    SQL.Add('');
    SQL.Add('Left JOIN  (Select YPDH,CLBH,cltd,Qty,IsNULL(Convert(varchar,ETD,20),'''')  as ETD,UseType from  #SRPurchase where ( (LEFT( #SRPurchase.CLBH,3)=''V90'') and (#SRPurchase.cltd=''VT Mat'')) or  ');
    SQL.Add('(LEFT(#SRPurchase.CLBH,1) in (''A'',''C'',''F'',''K'') and LEFT(#SRPurchase.CLBH,3) not in (''A02'',''A08'',''A13'',''A48'') and (#SRPurchase.DFL is null)) or (#SRPurchase.DFL=''1'') or (LEFT(#SRPurchase.CLBH,1)=''P'' and #SRPurchase.CSBH=''M027'')  )   CG_ML ');
    SQL.Add('On CG_ML.YPDH=YPZL.YPDH and CG_ML.CLBH=YPZL.CLBH ');
    SQL.Add('Left JOIN  (Select YPDH,CLBH,cltd,Qty,IsNULL(Convert(varchar,ETD,20),'''')  as ETD,UseType from  #SRPurchase where ( (LEFT( #SRPurchase.CLBH,3)=''V90'') and (#SRPurchase.cltd=''VT Phu May'')) or ');
    SQL.Add('(LEFT(#SRPurchase.CLBH,1) in (''B'',''L'',''M'',''N'') and (#SRPurchase.DFL is null)) or (#SRPurchase.DFL=''2'') or (LEFT(#SRPurchase.CLBH,3)  in (''D03'',''D11'',''J05'',''O02'',''A02'',''A08'',''A13'',''A48''))  ) CG_FML ');
    SQL.Add('On CG_FML.YPDH=YPZL.YPDH and CG_FML.CLBH=YPZL.CLBH  ');
    SQL.Add('Left JOIN  (Select YPDH,CLBH,cltd,Qty,IsNULL(Convert(varchar,ETD,20),'''')  as ETD,UseType from  #SRPurchase where ( (LEFT( #SRPurchase.CLBH,3)=''V90'') and (#SRPurchase.cltd=''VT Phu Go'')) or ');
    SQL.Add('(LEFT(#SRPurchase.CLBH,1) in (''D'',''E'',''O'',''I'',''J'') and LEFT(#SRPurchase.CLBH,3) not in (''D03'',''D11'',''J05'',''O02'') and (#SRPurchase.DFL is null)) or (#SRPurchase.DFL=''3'')  ) CG_FGL ');
    SQL.Add('On CG_FGL.YPDH=YPZL.YPDH and CG_FGL.CLBH=YPZL.CLBH ');
    SQL.Add('Left JOIN  (Select YPDH,CLBH,cltd,Qty,IsNULL(Convert(varchar,ETD,20),'''')  as ETD,UseType from  #SRPurchase where ( (LEFT( #SRPurchase.CLBH,3)=''V90'') and (#SRPurchase.cltd=''VT De'')) or ');
    SQL.Add('( (LEFT(#SRPurchase.CLBH,1) in (''G'') or LEFT(#SRPurchase.CLBH,3) in (''J03'')) and (#SRPurchase.DFL is null))  ) CG_DL ');
    SQL.Add('On CG_DL.YPDH=YPZL.YPDH and CG_DL.CLBH=YPZL.CLBH ');
    SQL.Add('Left JOIN (select BOMReceives.YPDH from BOMReceive ');
    SQL.Add('inner join BOMReceives on BOMReceive.ReceiveNO=BOMReceives.ReceiveNO ');
    SQL.Add('where  BOMReceive.Season='''+SeasonEdit.Text+''' and Stage='''+StageEdit.Text+''' Group by BOMReceives.YPDH ) ReceBOM on ReceBOM.YPDH=YPZL.YPDH  ');
    SQL.Add('');
    SQL.Add(') ArticleAll ');
    SQL.Add('Group by YPDH,Article,Quantity,Dropped,TPDATE,JHRQ,XieXing,FD,SR ');
    SQL.Add('order by SR desc,FD asc');
    Active:=true;
  end;
  SRDet_NO.Active:=true;

end;
//
procedure TFDStatus.SRDBGridCellClick(Column: TColumnEh);
begin

  SelectDBGrid:=SRDBGrid;
  SRDet_No.Active:=true;
  if Column.FieldName='ML' then
  begin
   SRDet_ML.Active:=true;
   MainClassPage.ActivePageIndex:=0 ;
  end;
  if Column.FieldName='FML' then
  begin
   SRDet_FML.Active:=true;
   MainClassPage.ActivePageIndex:=1 ;
  end;
  if Column.FieldName='FGL' then
  begin
   SRDet_FGL.Active:=true;
   MainClassPage.ActivePageIndex:=2 ;
  end;
  if Column.FieldName='DL' then
  begin
   SRDet_DL.Active:=true;
   MainClassPage.ActivePageIndex:=3 ;
  end;
end;

procedure TFDStatus.DBDetGrid_MLCellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBDetGrid_ML;
end;

procedure TFDStatus.DBGrid_NoCellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGrid_No;
end;

procedure TFDStatus.DBDetGrid_FMLCellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBDetGrid_FML;
end;

procedure TFDStatus.DBDetGrid_FGLCellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBDetGrid_FGL;
end;

procedure TFDStatus.SRQryBeforeScroll(DataSet: TDataSet);
begin
  SRDet_ML.Active:=false;
  SRDet_FML.Active:=false;
  SRDet_FGL.Active:=false;
  SRDet_DL.Active:=false;
  SRDet_No.Active:=false;
end;

procedure TFDStatus.DBDetGrid_MLDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((SRDet_ML.Fieldbyname('CLSL').AsString='0') and (SRDet_ML.Fieldbyname('useType').AsString=''))  then
    TDBGridEh(Sender).canvas.font.color:=clGreen ;
  if ((SRDet_ML.Fieldbyname('useType').AsString='Buy') and (SRDet_ML.Fieldbyname('Location').AsString=''))  then
    TDBGridEh(Sender).canvas.font.color:=clFuchsia ;
  if ((SRDet_ML.Fieldbyname('ETD').AsString='')  and (SRDet_ML.Fieldbyname('CLSL').AsString<>'0')) then
    TDBGridEh(Sender).canvas.font.color:=clRed ;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFDStatus.DBGrid_NoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((SRDet_NO.Fieldbyname('useType').AsString='Buy') and (SRDet_NO.Fieldbyname('Location').AsString=''))  then
    TDBGridEh(Sender).canvas.font.color:=clFuchsia ;
  if SRDet_NO.Fieldbyname('ETD').AsString=''  then
    TDBGridEh(Sender).canvas.font.color:=clRed ;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFDStatus.DBDetGrid_FMLDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((SRDet_FML.Fieldbyname('useType').AsString='Buy') and (SRDet_FML.Fieldbyname('Location').AsString=''))  then
    TDBGridEh(Sender).canvas.font.color:=clFuchsia ;
  if SRDet_FML.Fieldbyname('ETD').AsString=''  then
    TDBGridEh(Sender).canvas.font.color:=clRed ;
  if SRDet_FML.Fieldbyname('CLSL').AsString='0'  then
    TDBGridEh(Sender).canvas.font.color:=clGreen ;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFDStatus.DBDetGrid_FGLDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((SRDet_FGL.Fieldbyname('useType').AsString='Buy') and (SRDet_FGL.Fieldbyname('Location').AsString=''))  then
    TDBGridEh(Sender).canvas.font.color:=clFuchsia ;
  if SRDet_FGL.Fieldbyname('ETD').AsString=''  then
    TDBGridEh(Sender).canvas.font.color:=clRed ;
  if SRDet_FGL.Fieldbyname('CLSL').AsString='0'  then
    TDBGridEh(Sender).canvas.font.color:=clGreen ;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFDStatus.DBDetGrid_DLDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((SRDet_DL.Fieldbyname('useType').AsString='Buy') and (SRDet_DL.Fieldbyname('Location').AsString=''))  then
    TDBGridEh(Sender).canvas.font.color:=clFuchsia ;
  if SRDet_DL.Fieldbyname('ETD').AsString=''  then
    TDBGridEh(Sender).canvas.font.color:=clRed ;
  if SRDet_DL.Fieldbyname('CLSL').AsString='0'  then
    TDBGridEh(Sender).canvas.font.color:=clGreen ;
  if SRDet_DL.Fieldbyname('CLSL').AsString='0'  then
    TDBGridEh(Sender).canvas.font.color:=clGreen ;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFDStatus.SRDBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if SRQry.Fieldbyname('SR').AsString=''  then
    TDBGridEh(Sender).canvas.font.color:=clGray ;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFDStatus.Button1Click(Sender: TObject);
begin
  if (length(SeasonEdit.Text) = 0) and (length(StageEdit.Text) = 0) and (POEdit.Text = '') then  //season或Article要填一個
  begin
     showmessage('Pls keyin [Season] and [Stage] !');
     abort;
  end;
  if pgc1.ActivePageIndex=0 then  ShowSRPurchaseStatus_DFL();
  if pgc1.ActivePageIndex=1 then  QueryArticle_Detail();
  if pgc1.ActivePageIndex=2 then  QueryMaterial();

end;

procedure TFDStatus.DBDetGrid_DLCellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBDetGrid_DL;
end;

procedure TFDStatus.qry3BeforeScroll(DataSet: TDataSet);
begin
 qry4.Active:=false;
end;

procedure TFDStatus.dbgrdh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((qry2.FieldByName('PurQty').IsNull=true) and (qry2.FieldByName('Qty').IsNull=true)) then
  begin
    dbgrdh2.canvas.font.color:=clRed;
  end;
end;

procedure TFDStatus.Button3Click(Sender: TObject);
var
  eclApp, WorkBook, GSheet: olevariant;
  Col, Row: Integer;
begin
  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.workbooks[1].sheets.Add;
    GSheet := eclapp.workbooks[1].sheets[1];

    GSheet.Cells[1, 1] := 'SR#';
    GSheet.Cells[1, 2] := 'Season';
    GSheet.Cells[1, 3] := 'Stage';
    GSheet.Cells[1, 4] := 'FD';

    for Col := 1 to dbgrdh2.FieldCount do
    begin
      GSheet.Cells[1, Col+4] := dbgrdh2.Columns[Col-1].Title.Caption;
    end;

    Row := 2;
    qry1.First;
    while not qry1.Eof do
    begin
      qry2.First;
      while not qry2.Eof do
      begin
        GSheet.Cells[Row, 1] := qry1.FieldByName('DEVCODE').AsString;
        GSheet.Cells[Row, 2] := qry1.FieldByName('jijie').AsString;
        GSheet.Cells[Row, 3] := qry1.FieldByName('stage').AsString;
        GSheet.Cells[Row, 4] := qry1.FieldByName('FD').AsString;

{            for Col:=0 to dbgrdh2.Columns.Count-1 do begin
                if dbgrdh2.Columns[Col].Visible=False then
                   Continue;
                GSheet.Cells[ROW,Col+2] := trim(dbgrdh2.DataSource.DataSet.Fieldbyname(dbgrdh2.Columns[Col].FieldName).asstring);

                if (qry2.Fieldbyname('srtype').AsString ='3') OR (qry2.Fieldbyname('srtype').AsString ='5')  then
                  GSheet.Cells[ROW,Col+2].font.Color := clblue;
                if ((qry2.FieldByName('PurQty').IsNull=true) and (qry2.FieldByName('Qty').IsNull=true)) then
                  GSheet.Cells[ROW,Col+2].font.Color := clRed;
                if qry2.Fieldbyname('srtype').AsString ='4'   then
                  GSheet.Cells[ROW,Col+2].Interior.Color:=clBtnface;
                if (qry2.Fieldbyname('H_ETD').AsString <>'') and (COL = 10) then
                  GSheet.Cells[ROW,Col+2].Interior.Color:=clyellow;
            end;
}
        for Col := 1 to dbgrdh2.FieldCount do
        begin
          GSheet.Cells[Row, Col+4] := qry2.FieldByName(dbgrdh2.Columns[Col-1].FieldName).AsString;
          //改變EXCEL字體顏色與GRID同步
          if (qry2.Fieldbyname('srtype').AsString ='3') OR (qry2.Fieldbyname('srtype').AsString ='5')  then
            GSheet.Cells[ROW,Col+4].font.Color := clblue;
          if ((qry2.FieldByName('PurQty').IsNull=true) and (qry2.FieldByName('Qty').IsNull=true)) then
            GSheet.Cells[ROW,Col+4].font.Color := clRed;

          if (col = 4) or (col = 5) then
            GSheet.Cells[Row, Col+4].Interior.Color := clSkyBlue
          else if (col = 6) or (col = 7) then
            GSheet.Cells[Row, Col+4].Interior.Color := clAqua
          else if (col = 10) or (col = 11) or (col = 12) or (col = 13) or (col = 14) or (col = 15) or (col = 16) or (col = 17) then
            GSheet.Cells[Row, Col+4].Interior.Color := clMoneyGreen;
          if (qry2.Fieldbyname('H_ETD').AsString <>'') and (COL = 11) then
            GSheet.Cells[ROW,Col+4].Interior.Color:=clyellow;
        end;
        Inc(Row);
        qry2.Next;
      end;
      qry1.Next;
    end;                  
    GSheet.Cells.EntireColumn.AutoFit;;
    ShowMessage('Succeed!!');
    eclApp.Visible := True;
  except on F:Exception do
    showmessage(F.Message);
  end;
end;

end.
