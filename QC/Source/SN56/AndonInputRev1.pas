unit AndonInputRev1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Menus, ComCtrls, DB, DBTables, StrUtils,
  Tabs, IdStrings, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP, ADODB;

type
  TAndonInputRev = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnRY: TButton;
    imgFIR: TImage;
    imgLoad: TImage;
    imgClear: TImage;
    imgSearch: TImage;
    Image5: TImage;
    imgAdvanced: TImage;
    Image10: TImage;
    Label5: TLabel;
    lblSKU: TLabel;
    Label7: TLabel;
    lblCD: TLabel;
    Label9: TLabel;
    lblXM: TLabel;
    lblTime: TLabel;
    qryTmp: TQuery;
    tmrDB: TTimer;
    Label3: TLabel;
    cbbWorkTime: TComboBox;
    rbENG: TRadioButton;
    rbVIT: TRadioButton;
    pgcContent: TPageControl;
    ts00: TTabSheet;
    lblRyPair00: TLabel;
    lblRealPair00: TLabel;
    lblReturnPair00: TLabel;
    lblNGPair00: TLabel;
    pnlReason00: TPanel;
    pnlReason0001: TPanel;
    lblReasonA0001: TLabel;
    lblReasonB0001: TLabel;
    sbxPairList00: TScrollBox;
    pnlSize0001: TPanel;
    lblSize0001: TLabel;
    lblSizePair0001: TLabel;
    pnlReal0001: TPanel;
    lblRealOK0001: TLabel;
    lblRealSizePair0001: TLabel;
    pnlReturn0001: TPanel;
    lblReturn0001: TLabel;
    lblReturnSizePair0001: TLabel;
    pnlNG0001: TPanel;
    lblNG0001: TLabel;
    lblNGPair0001: TLabel;
    pmAdvanced: TPopupMenu;
    mniMQRBDP: TMenuItem;
    mniQCOnTime_Query: TMenuItem;
    CkNoSize: TCheckBox;
    MassQty: TCheckBox;
    imgClose00: TImage;
    pnlCancelNG00: TImage;
    edtLine: TEdit;
    edtRY: TEdit;
    DefectCK: TCheckBox;
    IdHTTP1: TIdHTTP;
    QNotify: TADOQuery;
    N1: TMenuItem;
    TabletTimer: TTimer;
    QUpdate: TQuery;
    pnlDailyOK0001: TPanel;
    lblDailyOK0001: TLabel;
    lblDailyOKPair0001: TLabel;
    pnlDailyNG0001: TPanel;
    lblDailyNG0001: TLabel;
    lblDailyNGPair0001: TLabel;
    QAlarm: TQuery;
    imgAndon00: TImage;
    Query1: TQuery;
    lbTodayTitle00: TLabel;
    lbTodayNG00: TLabel;
    lbTodayOK00: TLabel;
    edtReason0001: TLabel;
    SpecialNGA0001: TPanel;
    lblSPNGA0001: TLabel;
    lblSPNGPairA0001: TLabel;
    SpecialNGB0001: TPanel;
    lblSPNGB0001: TLabel;
    lblSPNGPairB0001: TLabel;
    SpecialNGC0001: TPanel;
    lblSPNGC0001: TLabel;
    lblSPNGPairC0001: TLabel;
    QuerySpc: TQuery;
    QTemp: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure tmrDBTimer(Sender: TObject);
    procedure btnRYClick(Sender: TObject);
    procedure imgLoadClick(Sender: TObject);
    //
    procedure pnlSize0001Click(Sender: TObject);
    procedure pnlReal0001Click(Sender: TObject);
    procedure pnlReturn0001Click(Sender: TObject);
    procedure pnlNG0001Click(Sender: TObject);
    procedure pnlReason0001Click(Sender: TObject);
    procedure pnlCancelNG00Click(Sender: TObject);
    //
    procedure imgClose00Click(Sender: TObject);
    procedure imgSearchClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pgcContentChange(Sender: TObject);
    procedure imgAdvancedClick(Sender: TObject);
    procedure mniMQRBDPClick(Sender: TObject);
    procedure mniQCOnTime_QueryClick(Sender: TObject);
    procedure edtLineClick(Sender: TObject);
    procedure TabletTimerTimer(Sender: TObject);
    procedure imgAndon00Click(Sender: TObject);

    procedure SpecialNG0001Click(Sender: TObject);
    procedure pnlReasonSub0001Click(Sender: TObject);
    procedure pnlNGSub0001Click(Sender: TObject);
    procedure pnlDailyNG0001Enter(Sender: TObject);
  private
    TGXLB, TDFL: string; //工段  大分類
    tabNum2ID: integer;
    sysDBtime: TDateTime;
    GDefect_YYBH: string;
    { Private declarations }
    function MyMessageDialog(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; Captions: array of
      string): Integer;
    //---目前先只考慮一張RY
    procedure addSizeInfo(ri: integer; xsize: string; Pairs, Qty, ReturnQty, NGQty, TQty, TReQty, TNGQty: integer);
    procedure addQCInfo(ri: integer; xYYBH: string; xWSM: string; DefectQty: string);
    //
    procedure ClearChildObject();
    procedure ShowChildObject(i: integer; Query: TQuery; out Pairs: integer; out Qty: integer; out ReturnQty: integer; out NGQty:
      integer; QueryS: TQuery);
    procedure CheckDefects(Lean, Defect: string);
  public
    TabletPairs: integer;
    DepID, DepName, DepGXLB, OrderRY, XieXing, DAOMH, XieMing, NGState: string;
    arXH: TStringlist;
    { Public declarations }
    procedure addTabSheet();
    procedure showInfo();
  end;

var
  AndonInputRev: TAndonInputRev;
  lblSizeList: TStringList;
implementation

uses main1, QCOnTime_DepRev1, QCOnTime_GXLB1, MQRBDP, QCOnTime_Query1, ShoeBC1, FunUnit;

{$R *.dfm}

procedure TAndonInputRev.imgClose00Click(Sender: TObject);
var
  tabSheet: TTabSheet;
  tabSheetTitle: string;
begin
  if pgcContent.ActivePageIndex = 0 then
  begin
    if MessageDlg('Ban co muon dong khong?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Close;
    end;
  end
  else
  begin
    tabSheet := pgcContent.ActivePage;
    tabSheetTitle := tabSheet.Caption;
    ClearChildObject();
    tabSheet.Free;
  end;
end;

procedure TAndonInputRev.FormCreate(Sender: TObject);
var
  i: integer;
begin
  NGState := '';
  tabNum2ID := 0; //新增分頁TabSheet流水號編碼
  //---初始化鎮列
  arXH := TStringList.Create; //XH 時段 ID
  //---設定共用事件
  rbVIT.OnClick := imgLoadClick;
  rbENG.OnClick := imgLoadClick;
  edtRY.OnClick := btnRYClick;
  //---取得DB系統時間作為標準
  tmrDB.Enabled := false;
  with qryTmp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select getdate() as NDate ;');
    Active := true;
    sysDBtime := FieldByName('NDate').Value;
    //---取得工作時段
    Active := false;
    SQL.Clear;
    SQL.add('select XH,FTime,TTime,YXGS from SCSJ ;');
    Active := true;
    for i := 1 to RecordCount do
    begin
      cbbWorkTime.Items.Add(Format('%s~%s', [FieldByName('FTime').AsString, FieldByName('TTime').AsString]));
      arXH.Add(FieldByName('XH').AsString);
      Next;
    end;
    Active := false;
    cbbWorkTime.ItemIndex := 0;
  end;

  TabletPairs := 0;
  //---啟動計時器
  tmrDB.Enabled := true;

  // 刪除30天前的檢驗紀錄
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('DELETE FROM QC_InspectRecord WHERE QC_InspectRecord.InspectDate < DATEADD(day, -30, GETDATE())');
    ExecSQL;
  end;
end;

//---顯示DB系統時間
procedure TAndonInputRev.tmrDBTimer(Sender: TObject);
begin
  lblTime.Caption := FormatDateTime('hh:mm:ss', Now());
end;

//---呼叫 QCOnTime_Dep 導入資料
procedure TAndonInputRev.btnRYClick(Sender: TObject);
begin
  if (AndonInputRev.DepName = '') then
  begin
    ShowMessage('Please select a Department');
    Exit;
  end;
  QCOnTime_DepRev := TQCOnTime_DepRev.Create(Self);
  if (QCOnTime_DepRev.ShowModal = mrOK) then
  begin
    //載入訂單尺碼資料
    imgLoadClick(Sender);
    ShowInfo(); //Tilte資訊
  end
end;

procedure TAndonInputRev.ShowInfo();
var
  tabSheet: TTabSheet;
  tabInfo: TStringlist;
begin
  tabSheet := pgcContent.ActivePage;
  //訂單和部門資訊
  tabInfo := TStringlist.Create;
  tabInfo := funcObj.SplitString(TabSheet.Hint, ',');

  if (tabInfo.Count >= 7) then
  begin
    edtRY.Text := tabInfo.Strings[0];
    edtLine.Text := tabInfo.Strings[2];
    lblSKU.Caption := tabInfo.Strings[4];
    lblCD.Caption := tabInfo.Strings[6];
    lblXM.Caption := tabInfo.Strings[5];
  end;
  tabInfo.Free;
end;

procedure TAndonInputRev.ClearChildObject();
var
  i: integer;
  TabSheet: TTabSheet;
  sbxPairList: TScrollBox;
  pnlReason: TPanel;
  Num2ID: string;
label
  removeP, removeQC;
begin
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  sbxPairList := TabSheet.FindChildControl('sbxPairList' + Num2ID) as TScrollBox;
  pnlReason := TabSheet.FindChildControl('pnlReason' + Num2ID) as TPanel;
  //--- 清除Size Info先前動態產生的物件 --Size info ---------------
  removeP:
  for i := 0 to sbxPairList.ControlCount - 1 do
  begin
    sbxPairList.Controls[i].free;
    goto removeP;
  end;
  //--- 清除Defect先前動態產生的物件 --QC info  ---------------------
  removeQC:
  for i := 0 to pnlReason.ControlCount - 1 do
  begin
    pnlReason.Controls[i].free;
    goto removeQC;
  end;
end;

//
procedure TAndonInputRev.ShowChildObject(i: integer; Query: TQuery; out Pairs: integer; out Qty: integer; out ReturnQty: integer;
  out NGQty: integer; QueryS: TQuery);
var
  Num2ID: string;
  TabSheet: TTabSheet;
  lbTodayNG, lbTodayOK: TLabel;
begin
  //---取得母容器物件
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  lbTodayOK := TabSheet.FindComponent('lbTodayOK' + Num2ID) as TLabel;
  lbTodayNG := TabSheet.FindComponent('lbTodayNG' + Num2ID) as TLabel;
  //
  with Query do
  begin
    addSizeInfo(i, FieldByName('CC').Value, FieldByName('Quantity').Value, FieldByName('Qty').Value, FieldByName('ReQty').Value,
      FieldByName('NGQty').Value, FieldByName('TQty').Value, FieldByName('TReQty').Value, FieldByName('TNGQty').Value);
    //統計數量
    lbTodayNG.Caption := FieldByName('TNGQty').Value;
    lbTodayOK.Caption := FieldByName('TQty').Value;
    Pairs := Pairs + FieldByName('quantity').Value;
    Qty := Qty + FieldByName('QTY').Value;
    ReturnQty := ReturnQty + FieldByName('ReQTY').Value;
    NGQty := NGQty + FieldByName('NGQTY').Value;
  end;
end;

procedure TAndonInputRev.imgLoadClick(Sender: TObject);
var
  i, Pairs, Qty, ReturnQty, NGQty: integer;
  Num2ID: string;
  lblRyPair, lblRealPair, lblReturnPair, lblNGPair: TLabel;
  //
  tabInfo: TStringlist;
  tabSheet: TTabSheet;
  tabSheet_DepGXLB, tabSheet_DepID, tabSheet_OrderRY: string;
begin
  if (edtRY.Text = '') then
    Exit;
  //
  TabSheet := pgcContent.ActivePage;
  //訂單和部門資訊
  tabInfo := TStringlist.Create;
  tabInfo := funcObj.SplitString(TabSheet.Hint, ',');
  tabSheet_OrderRY := tabInfo.Strings[0];
  tabSheet_DepID := tabInfo.Strings[1];
  tabSheet_DepGXLB := tabInfo.Strings[3];
  tabInfo.Free;
  //生產工段
  if tabSheet_DepGXLB = 'A' then
  begin
    if (main.Edit2.Text = 'VA12') or (main.Edit2.Text = 'VC2')  then
    begin
      if MyMessageDialog('truoc Go hay la sau go?', mtConfirmation, mbOKCancel, ['truoc go', 'sau go']) = mrOk then
      begin
        TGXLB := 'A'; //WORK.GBLB
        TDFL := 'A'
      end
      else
      begin
        TGXLB := 'AR'; //WORK.GBLB
        TDFL := 'AR';
      end;
    end
    else
    begin
      TGXLB := 'A'; //WORK.GBLB
      TDFL := 'A'; //VB廠大分類只會有 A 成型不分前後成型
    end;
  end
  else if tabSheet_DepGXLB = 'S' then
  begin
    TGXLB := 'C+S'; //WORK.GBLB
    TDFL := 'S'; //QCBLYY.DFL
  end
  else if DepGXLB = 'C' then
  begin
    TGXLB := 'C'; //WORK.GBLB
    TDFL := 'C'; //QCBLYY.DFL
  end
  else
  begin
    Exit;
  end;
  //---clear child object
  Num2ID := RightStr(pgcContent.ActivePage.Name, 2);
  //---下面是各項數據的總計
  lblRyPair := pgcContent.ActivePage.FindComponent('lblRyPair' + Num2ID) as TLabel;
  lblRealPair := pgcContent.ActivePage.FindComponent('lblRealPair' + Num2ID) as TLabel;
  lblReturnPair := pgcContent.ActivePage.FindComponent('lblReturnPair' + Num2ID) as TLabel;
  lblNGPair := pgcContent.ActivePage.FindComponent('lblNGPair' + Num2ID) as TLabel;
  //清空子物件
  ClearChildObject();
  //------------取得Size、數量
  with qryTmp do
  begin
    Active := false;
    if (CkNoSize.Checked = false) then
    begin
      SQL.Clear;
      SQL.Add('SELECT DDZLS.DDBH, DDZLS.CC, DDZLS.Quantity,');
      SQL.Add('ISNULL(Scan.Qty, 0) AS Qty, ISNULL(Scan.NGQty, 0) AS NGQty, ISNULL(Scan.ReQty, 0) AS ReQty,');
      //訂單編號 訂單尺寸 訂單尺寸數量 一次ok數量
      SQL.Add('ISNULL(TScan.Qty, 0) AS TQty, ISNULL(TScan.NGQty, 0) AS TNGQty, ISNULL(TScan.ReQty, 0) AS TReQty,');
      SQL.Add('ISNULL(Scan.GXLB, '''') AS GXLB, DDZL.XieXing, DDZL.SheHao, DDZLS.lineNum FROM DDZLS'); // 返修完成數量 工段 鞋型 色號
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT SCBH, CC, GXLB, Qty, ReQty, NGQty FROM WOPR'); //報工日期 Size 工段 一次OK數量 返修完成數量
      SQL.Add('  WHERE SJXH = ''' + arXH.Strings[cbbWorkTime.ItemIndex] + '''');
      //SQL.Add('  AND SCDate >= ''' + FormatDateTime('yyyy/MM/dd', sysDBtime-60) + '''');
      SQL.Add('  AND GSBH = ''' + main.Edit2.Text + ''' AND SCBH = ''' + tabSheet_OrderRY + ''' AND GXLB = ''' + TGXLB + '''');
      //SQL.Add('  AND DepNo = ''' + tabSheet_DepID + '''');
      SQL.Add(') AS Scan ON Scan.SCBH = DDZLS.DDBH AND Scan.CC = DDZLS.CC');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT SCBH, CC, GXLB, Qty, ReQty, NGQty FROM WOPR'); //報工日期 Size 工段 一次OK數量 返修完成數量
      SQL.Add('  WHERE SCDate = ''' + FormatDateTime('yyyy/MM/dd', sysDBtime) + ''' AND SJXH = ''' +
        arXH.Strings[cbbWorkTime.ItemIndex] + '''');
      SQL.Add('  AND GSBH = ''' + main.Edit2.Text + ''' AND SCBH = ''' + tabSheet_OrderRY + ''' AND GXLB = ''' + TGXLB + '''');
      SQL.Add('  AND DepNo = ''' + tabSheet_DepID + '''');
      SQL.Add(') AS TScan ON TScan.SCBH = DDZLS.DDBH AND TScan.CC = DDZLS.CC');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = DDZLS.DDBH');
      SQL.Add('WHERE DDZLS.DDBH = ''' + tabSheet_OrderRY + '''');
      SQL.Add('ORDER BY DDZLS.lineNum');
    end
    else
    begin
      SQL.Clear;
      SQL.Add('SELECT DDZLS.DDBH, ''PO Quantity'' AS CC, SUM(DDZLS.Quantity) AS Quantity,');
      SQL.Add('ISNULL(Scan.Qty, 0) AS Qty, ISNULL(Scan.NGQty, 0) AS NGQty, ISNULL(Scan.ReQty, 0) AS ReQty,');
      //訂單編號 訂單尺寸 訂單尺寸數量 一次ok數量
      SQL.Add('ISNULL(TScan.Qty, 0) AS TQty, ISNULL(TScan.NGQty, 0) AS TNGQty, ISNULL(TScan.ReQty, 0) AS TReQty,');
      SQL.Add('ISNULL(Scan.GXLB, '''') AS GXLB, DDZL.XieXing, DDZL.SheHao FROM DDZLS'); // 返修完成數量 工段 鞋型 色號
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT SCBH, GXLB, SUM(Qty) AS Qty, SUM(ReQty) AS ReQty, SUM(NGQty) AS NGQty FROM WOPR');
      //報工日期 Size 工段 一次OK數量 返修完成數量
      SQL.Add('  WHERE SJXH = ''' + arXH.Strings[cbbWorkTime.ItemIndex] + '''');
      //SQL.Add('  AND SCDate >= ''' + FormatDateTime('yyyy/MM/dd', sysDBtime-60) + '''');
      SQL.Add('  AND GSBH = ''' + main.Edit2.Text + ''' AND SCBH = ''' + tabSheet_OrderRY + ''' AND GXLB = ''' + TGXLB +
        ''' AND CC = ''NULL''');
      //SQL.Add('  AND DepNo = ''' + tabSheet_DepID + '''');
      SQL.Add('  GROUP BY SCBH, GXLB');
      SQL.Add(') AS Scan ON Scan.SCBH = DDZLS.DDBH');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT SCBH, GXLB, SUM(Qty) AS Qty, SUM(ReQty) AS ReQty, SUM(NGQty) AS NGQty FROM WOPR');
      //報工日期 Size 工段 一次OK數量 返修完成數量
      SQL.Add('  WHERE SCDate = ''' + FormatDateTime('yyyy/MM/dd', sysDBtime) + ''' AND SJXH = ''' +
        arXH.Strings[cbbWorkTime.ItemIndex] + '''');
      SQL.Add('  AND GSBH = ''' + main.Edit2.Text + ''' AND SCBH = ''' + tabSheet_OrderRY + ''' AND GXLB = ''' + TGXLB +
        ''' AND CC = ''NULL''');
      //SQL.Add('  AND DepNo = ''' + tabSheet_DepID + '''');
      SQL.Add('  GROUP BY SCBH, GXLB');
      SQL.Add(') AS TScan ON TScan.SCBH = DDZLS.DDBH');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = DDZLS.DDBH');
      SQL.Add('WHERE DDZLS.DDBH = ''' + tabSheet_OrderRY + '''');
      SQL.Add('GROUP BY DDZLS.DDBH, Scan.Qty, Scan.NGQty, Scan.ReQty, TScan.Qty, TScan.NGQty, TScan.ReQty, Scan.GXLB, DDZL.XieXing, DDZL.SheHao');
    end;
    Active := true;

    //--------------------------------------------------------------------------------------------
    with QuerySpc do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT TOP 3 YYBH,YWSM,');
      SQL.Add('(SELECT isnull(sum(Qty),0) Qty FROM QCRDS ');
      SQL.Add('where YYBH=a.YYBH AND SJXH = ''' + arXH.Strings[cbbWorkTime.ItemIndex] + ''' ');
      SQL.Add('AND GSBH = ''' + main.Edit2.Text + ''' AND SCBH = ''' + tabSheet_OrderRY + ''' ');
      SQL.Add('AND GXLB = ''' + TGXLB + ''' AND DepNo = ''' + tabSheet_DepID + ''') Qty ');
      SQL.Add('FROM QCBLYYS a where DFL=''' + TGXLB + ''' and YN=2');
      //showmessage(SQL.Text) ;
      //funcobj.WriteErrorLog(sql.Text);
      Active := true;
    end;
    //--------------------------------------------------------------------------------------------------
        //統計總雙數
    Pairs := 0;
    Qty := 0;
    ReturnQty := 0;
    NGQty := 0;
    //---動態生成 SIZE info 相關物件
    for i := 1 to RecordCount do
    begin
      ShowChildObject(i, qryTmp, Pairs, Qty, ReturnQty, NGQty, QuerySpc);
      Next;
    end;
    Active := false;
    //左欄統計 mirror
    lblRyPair.Caption := IntToStr(Pairs);
    lblRealPair.Caption := IntToStr(Qty);
    lblReturnPair.Caption := IntToStr(ReturnQty);
    lblNGPair.Caption := IntToStr(NGQty);

    //--------------------------- 動態生成 QC原因 -----------------------------
    SQL.Clear;
    if (rbENG.Checked) then
      SQL.Add('SELECT QCBLYY.YYBH, QCBLYY.YWSM AS WSM, ISNULL(QCRD.Qty, 0) AS DefectQty FROM QCBLYY')
    else
      SQL.Add('SELECT QCBLYY.YYBH, QCBLYY.ZWSM AS WSM, ISNULL(QCRD.Qty, 0) AS DefectQty FROM QCBLYY');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT QCRD.YYBH, SUM(Qty) AS Qty FROM QCR');
    SQL.Add('  LEFT JOIN QCRD ON QCRD.ProNo = QCR.ProNo');
    SQL.Add('  WHERE QCR.SCBH = ''' + tabSheet_OrderRY + ''' AND QCR.GXLB = ''' + TGXLB + '''');
    //SQL.Add('  AND QCR.SCDate >= ''' + FormatDateTime('yyyy/MM/dd', sysDBtime-60) + '''');
    //SQL.Add('      and QCR.DepNo='''+tabSheet_DepID+''' ');
    SQL.Add('  GROUP BY QCRD.YYBH');
    SQL.Add(') AS QCRD ON QCRD.YYBH = QCBLYY.YYBH');
    SQL.Add('WHERE QCBLYY.DFL = ''' + TDFL + ''' AND QCBLYY.GSBH = ''' + main.Edit2.text + ''' AND QCBLYY.YN = ''2''');
    SQL.Add('ORDER BY QCBLYY.YYBH');
    //Showmessage(SQL.Text);
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;

    //產生Defect  相關物件
    for i := 1 to RecordCount do
    begin
      if DefectCK.Checked = false then //多個Defect點是1雙，預設0不帶入累績數量
        addQCInfo(i, FieldByName('YYBH').Value, FieldByName('WSM').Value, '0')
      else //1各Defect點是1雙，帶入累績數量
        addQCInfo(i, FieldByName('YYBH').Value, FieldByName('WSM').Value, FieldByName('DefectQty').AsString);
      Next;
    end;
    Active := false;
  end;
end;

function TAndonInputRev.MyMessageDialog(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; Captions:
  array
  of string): Integer;
var
  aMsgDlg: TForm;
  i: Integer;
  dlgButton: TButton;
  CaptionIndex: Integer;
begin
  { Create the Dialog }
  aMsgDlg := CreateMessageDialog(Msg, DlgType, Buttons);
  captionIndex := 0;
  { Loop through Objects in Dialog }
  for i := 0 to aMsgDlg.ComponentCount - 1 do
  begin
    { If the object is of type TButton, then }
    if (aMsgDlg.Components[i] is TButton) then
    begin
      dlgButton := TButton(aMsgDlg.Components[i]);
      if CaptionIndex > High(Captions) then
        Break;
      { Give a new caption from our Captions array}
      dlgButton.Caption := Captions[CaptionIndex];
      Inc(CaptionIndex);
    end;
  end;
  Result := aMsgDlg.ShowModal;
end;

procedure TAndonInputRev.pnlSize0001Click(Sender: TObject);
begin
  //
end;

//OK雙數
procedure TAndonInputRev.pnlReal0001Click(Sender: TObject);
var
  Qty, ScanQty: integer;
  Num2ID, Num4ID: string;
  TabSheet: TTabSheet;
  //
  sbxPairList: TScrollBox;
  pnlSize: TPanel;
  lblSize: TLabel;
  pnlReal: TPanel;
  lblRealSizePair: TLabel;
  lblRealPair: TLabel;
  lblRYPair: TLabel;
  pnlDailyOK: TPanel;
  lblDailyOKPair: TLabel;
  lbTodayOK: TLabel;
  //取得部門和訂單資訊
  tabInfo: TStringlist;
  tabSheet_DepID, tabSheet_OrderRY, tabSheet_DepGXLB, N56_Qty, N44_Qty: string;
begin
  TabSheet := pgcContent.ActivePage;
  //訂單和部門資訊
  tabInfo := TStringlist.Create;
  tabInfo := funcObj.SplitString(TabSheet.Hint, ',');
  tabSheet_OrderRY := tabInfo.Strings[0];
  tabSheet_DepID := tabInfo.Strings[1];
  tabSheet_DepGXLB := tabInfo.Strings[3];
  tabInfo.Free;
  //
  Num2ID := RightStr(TabSheet.Name, 2);
  if Sender is TPanel then
  begin
    Num4ID := RightStr(TPanel(Sender).Name, 4);
  end;
  if Sender is TLabel then
  begin
    Num4ID := RightStr(TLabel(Sender).Name, 4);
  end;
  //找到物件
  lbTodayOK := TabSheet.FindComponent('lbTodayOK' + Num2ID) as TLabel;
  sbxPairList := TabSheet.FindComponent('sbxPairList' + Num2ID) as TScrollBox;
  lblRYPair := TabSheet.FindComponent('lblRYPair' + Num2ID) as TLabel;
  lblRealPair := TabSheet.FindComponent('lblRealPair' + Num2ID) as TLabel;
  pnlSize := sbxPairList.FindComponent('pnlSize' + Num4ID) as TPanel;
  lblSize := pnlSize.FindComponent('lblSize' + Num4ID) as TLabel;
  pnlReal := sbxPairList.FindComponent('pnlReal' + Num4ID) as TPanel;
  lblRealSizePair := pnlReal.FindComponent('lblRealSizePair' + Num4ID) as TLabel;
  pnlDailyOK := sbxPairList.FindComponent('pnlDailyOK' + Num4ID) as TPanel;
  lblDailyOKPair := pnlDailyOK.FindComponent('lblDailyOKPair' + Num4ID) as TLabel;

  if MassQty.Checked = false then
  begin
    if ((lblRealPair <> nil) and (lblRYPair <> nil)) then
    begin
      with Query1 do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select SCBH,sum (Qty+NGQTY) as RealQty');
        SQL.Add('from WOPR ');
        SQL.Add('where GXLB=''' + TGXLB + ''' and SCBH like ''' + tabSheet_OrderRY + '%'' group by SCBH ');
        Active := true;
        if RecordCount > 0 then
        begin
          N56_Qty:=Query1.FieldByName('RealQty').AsString;
          if (strtoint(Query1.FieldByName('RealQty').Value) + 1) > strtoint(lblRYPair.Caption) then
          begin
            Showmessage('More than quanity order No. Nhieu hon SL don hang');
            exit;
          end;
        end;
        //f0uncobj.WriteErrorLog(sql.Text);
        Active := false;
      end;
    end;
  end;
  if TGXLB = 'AR' then
  begin
      with Query1 do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select SCBH,sum (SMZL_Tablet.Pairs) as N44_Qty');
        SQL.Add('from SMZL_Tablet ');
        SQL.Add('where 1=1 and SCBH like '''+tabSheet_OrderRY+'%'' group by SCBH ');
        Active := true;
        if RecordCount > 0 then
        begin
          if N56_Qty = '' then  N56_Qty:='0';
          if N56_Qty>=Query1.FieldByName('N44_Qty').Value then
          begin
            Inc(TabletPairs);
          end;
        end else
        begin
          Inc(TabletPairs);
        end;
      end;
  end;

  //依照掃描數量
  ScanQty := 0;
  if MassQty.Checked = true then
  begin
    with qryTmp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('Select IsNull(Sum(SMZL.CTS*SMDDSS.QTY),0) as ScanQty ');
      SQL.Add('from SMZL ');
      SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar ');
      SQL.Add('where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) =''' + FormatDateTime('YYYY/MM/DD', Date()) +
        '''  and SMDDSS.GXLB=''' + tabSheet_DepGXLB + ''' and SMDDSS.DDBH like ''' + tabSheet_OrderRY + '%'' ');
      if (lblsize.Caption <> 'NULL') and (lblsize.Caption <> 'PO Quantity') then
        SQL.Add(' and SMDDSS.XXCC=''' + lblsize.Caption + ''' ');
      Active := true;
      if RecordCount > 0 then
        ScanQty := FieldByName('ScanQty').Value;
      //funcobj.WriteErrorLog(sql.Text);
      Active := false;
    end;
  end;
  //更新資料庫
  with qryTmp do
  begin
    //---順便判斷有無以存在資料（決定使用Insert或Update）
    Active := false;
    with SQL do
    begin
      SQL.Clear;
      Add('select qty, reqty from WOPR');
      Add('Where SCDate = :SCDate and SJXH = :SJXH ');
      Add('and DepNo = :DepNo and GSBH = :GSBH ');
      Add('and SCBH = :SCBH and gxlb = :gxlb and CC = :CC ;');
    end;
    ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
    ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
    ParamByName('DepNo').Value := tabSheet_DepID;
    ParamByName('GSBH').Value := main.Edit2.Text;
    ParamByName('SCBH').Value := tabSheet_OrderRY;
    ParamByName('gxlb').Value := TGXLB;
    if (lblsize.Caption = 'PO Quantity') then
      ParamByName('CC').Value := 'NULL'
    else
      ParamByName('CC').Value := lblsize.Caption; //
    Active := true;
    if RecordCount = 0 then
    begin
      Active := false;
      with SQL do
      begin
        Clear;
        Add('INSERT INTO WOPR');
        Add('(SCDate, SJXH, DepNo, GSBH, SCBH, gxlb, CC, qty, ngqty, reqty, userid, userdate)');
        Add('VALUES(:SCDate, :SJXH, :DepNo, :GSBH, :SCBH, :gxlb, :CC, :qty, 0, 0, :userid, :userdate );');
      end;
      ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
      ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
      ParamByName('DepNo').Value := tabSheet_DepID;
      ParamByName('GSBH').Value := main.Edit2.Text;
      ParamByName('SCBH').Value := tabSheet_OrderRY;
      ParamByName('gxlb').Value := TGXLB;
      if MassQty.Checked = false then
        ParamByName('qty').Value := 1
      else
        ParamByName('qty').Value := ScanQty;
      //Inc(TabletPairs);
      if (lblsize.Caption = 'PO Quantity') then
        ParamByName('CC').Value := 'NULL'
      else
        ParamByName('CC').Value := lblsize.Caption;
      ParamByName('userid').Value := main.Edit1.Text;
      ParamByName('userdate').Value := Now;
    end
    else
    begin
      Qty := FieldByName('QTY').Value + 1;
      with SQL do
      begin
        Clear;
        Add('update wopr set qty =:qty, userid =:userid, userdate = :userdate ');
        Add('where SCDate = :SCDate and SJXH = :SJXH and DepNo = :DepNo and GSBH = :GSBH');
        Add('and SCBH = :SCBH and gxlb = :gxlb and CC = :CC ;');
      end;
      ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
      ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
      ParamByName('DepNo').Value := tabSheet_DepID;
      ParamByName('GSBH').Value := main.Edit2.Text;
      ParamByName('SCBH').Value := tabSheet_OrderRY;
      ParamByName('gxlb').Value := TGXLB;
      if MassQty.Checked = false then
        ParamByName('QTY').Value := qty
      else
        ParamByName('QTY').Value := ScanQty;
      //Inc(TabletPairs);
      if (lblsize.Caption = 'PO Quantity') then
        ParamByName('CC').Value := 'NULL'
      else
        ParamByName('CC').Value := lblsize.Caption;
      ParamByName('userid').Value := main.Edit1.Text;
      ParamByName('userdate').Value := now;
    end;
    ExecSQL;
  end;

  // 紀錄檢驗數
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('INSERT INTO QC_InspectRecord (DepNo, InspectDate) VALUES(:DepNo, GETDATE())');
    ParamByName('DepNo').Value := tabSheet_DepID;
    ExecSQL;
  end;

  //更新介面
  if MassQty.Checked = false then
  begin
    if (lblRealSizePair <> nil) then
      lblRealSizePair.Caption := '(' + IntToStr(StrToInt(Copy(lblRealSizePair.Caption, 2, Length(lblRealSizePair.Caption) - 2)) +
        1) + ')'; //數量+1
    if (lblRealPair <> nil) then
      lblRealPair.Caption := IntToStr(StrToInt(lblRealPair.Caption) + 1);
    if (lblDailyOKPair <> nil) then
    begin
      lbTodayOK.Caption := IntToStr(StrToInt(Copy(lblDailyOKPair.Caption, 2, Length(lblDailyOKPair.Caption) - 2)) + 1);
      lblDailyOKPair.Caption := '(' + lbTodayOK.Caption + ')';
    end;
  end
  else
  begin
    if (lblRealPair <> nil) then
    begin
      Qty := StrToInt(Copy(lblRealSizePair.Caption, 2, Length(lblRealSizePair.Caption) - 2));
      lblRealPair.Caption := IntToStr(StrToInt(lblRealPair.Caption) + (ScanQty - Qty)); //(ScanQty-Qty) 差異
    end;
    if (lblRealSizePair <> nil) then
      lblRealSizePair.Caption := '(' + IntToStr(ScanQty) + ')';
  end;
end;

procedure TAndonInputRev.SpecialNG0001Click(Sender: TObject);
var
  Qty: integer;
  Num2ID, Num4ID, index: string;
  TabSheet: TTabSheet;
  splitStringList: TStringList;
  sbxPairList: TScrollBox;
  SpecialNG: TPanel;
  lblSPNG: TLabel;
  lblSPNGPair: TLabel;
  //取得部門和訂單資訊
  tabInfo: TStringlist;
  tabSheet_DepID, tabSheet_OrderRY, tabSheet_DepGXLB: string;
begin
  //Showmessage('Special Dfect ....');
  TabSheet := pgcContent.ActivePage;
  //訂單和部門資訊
  tabInfo := TStringlist.Create;
  tabInfo := funcObj.SplitString(TabSheet.Hint, ',');
  tabSheet_OrderRY := tabInfo.Strings[0];
  tabSheet_DepID := tabInfo.Strings[1];
  tabSheet_DepGXLB := tabInfo.Strings[3];
  tabInfo.Free;
  Inc(TabletPairs);
  //
  Num2ID := RightStr(TabSheet.Name, 2);
  if Sender is TPanel then
  begin

    SpecialNG := TPanel(Sender);
    index := SpecialNG.Name;
    Num4ID := RightStr(SpecialNG.Name, 4);
    index := Copy(SpecialNG.Name, 10, 1); //SpecialNGA0001
  end;

  if Sender is TLabel then
  begin
    Num4ID := RightStr(TLabel(Sender).Name, 4);
    index := TLabel(Sender).Name;
    case length(TLabel(Sender).Name) of
      12: index := Copy(TLabel(Sender).Name, 8, 1); // lblSPNGA0001
      16: index := Copy(TLabel(Sender).Name, 12, 1); // lblSPNGPairA0001
    end;
  end;
  //找到物件
  sbxPairList := TabSheet.FindComponent('sbxPairList' + Num2ID) as TScrollBox;
  SpecialNG := sbxPairList.FindComponent('SpecialNG' + index + Num4ID) as TPanel;
  lblSPNG := SpecialNG.FindComponent('lblSPNG' + index + Num4ID) as TLabel;
  lblSPNGPair := SpecialNG.FindComponent('lblSPNGPair' + index + Num4ID) as TLabel;

  Qty := 1;

  //更新資料庫
  with QuerySpc do
  begin
    //---順便判斷有無以存在資料（決定使用Insert或Update）
    Active := false;
    with SQL do
    begin
      SQL.Clear;
      Add('SELECT ISNULL(Qty,0) Qty FROM QCRDS Where YYBH = :YYBH');
      Add('and SCDate = :SCDate and SJXH = :SJXH ');
      Add('and DepNo = :DepNo and GSBH = :GSBH ');
      Add('and SCBH = :SCBH and GXLB = :GXLB');
    end;
    ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
    ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
    ParamByName('DepNo').Value := tabSheet_DepID;
    ParamByName('GSBH').Value := main.Edit2.Text;
    ParamByName('SCBH').Value := tabSheet_OrderRY;
    ParamByName('GXLB').Value := TGXLB;
    ParamByName('YYBH').Value := lblSPNG.HelpKeyword;
    Active := true;
    if RecordCount = 0 then
    begin
      Active := false;
      with SQL do
      begin
        Clear;
        Add('INSERT INTO QCRDS(YYBH,Qty,SCDate,SJXH,GSBH,DepNo,GXLB,SCBH,USERID,USERDATE) ');
        Add('VALUES( :YYBH, :Qty, :SCDate, :SJXH, :GSBH, :DepNo, :GXLB, :SCBH, :USERID, :USERDATE)');
      end;
    end
    else
    begin
      Qty := FieldByName('Qty').Value + 1;
      with SQL do
      begin
        Clear;
        Add('update QCRDS set Qty = :Qty, userid =:USERID, userdate = :USERDATE ');
        Add('where YYBH = :YYBH and SCDate = :SCDate and SJXH = :SJXH and DepNo = :DepNo and GSBH = :GSBH');
        Add('and SCBH = :SCBH and gxlb = :GXLB ');
      end;
    end;
    ParamByName('Qty').Value := Qty;
    ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
    ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
    ParamByName('DepNo').Value := tabSheet_DepID;
    ParamByName('GSBH').Value := main.Edit2.Text;
    ParamByName('SCBH').Value := tabSheet_OrderRY;
    ParamByName('GXLB').Value := TGXLB;
    ParamByName('USERID').Value := main.Edit1.Text;
    ParamByName('USERDATE').Value := now;
    ParamByName('YYBH').Value := lblSPNG.HelpKeyword;
    ExecSQL;
  end;

  // 紀錄檢驗數
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('INSERT INTO QC_InspectRecord (DepNo, InspectDate) VALUES(:DepNo, GETDATE())');
    ParamByName('DepNo').Value := tabSheet_DepID;
    ExecSQL;
  end;

  //更新介面
  lblSPNGPair.Caption := '(' + IntToStr(Qty) + ')';
end;

//瑕疵介面標題大方塊
procedure TAndonInputRev.addSizeInfo(ri: integer; xsize: string; Pairs, Qty, ReturnQty, NGQty, TQty, TReQty, TNGQty: integer);
var
  TabSheet: TTabSheet;
  ScrolBox: TScrollBox;
  Panel: TPanel;
  Num2ID: string;
  parentID: integer;
  SPIndex: integer;
begin
  SPIndex := 1;
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  parentID := Strtoint(Num2ID);
  ScrolBox := TabSheet.FindChildControl('sbxPairList' + Num2ID) as TScrollBox;
  //---第一層的Panel
  Panel := TPanel.Create(ScrolBox);
  with Panel do
  begin
    try
      Name := Format('pnlSize%.2d%.2d', [parentID, ri]);
      Parent := ScrolBox;
      Caption := '';
      Color := pnlSize0001.Color;
      BevelInner := pnlSize0001.BevelInner;
      BevelOuter := pnlSize0001.BevelOuter;
      Width := pnlSize0001.Width;
      Height := pnlSize0001.Height;
      Top := pnlSize0001.Top;
      Visible := false; //mirror
      if (ri > 1) then
        Left := (Width + 10) * (ri - 1) + pnlSize0001.Left
      else if (ri = 1) then
        Left := pnlSize0001.Left;
    finally
    end;
  end;
  //---第一層的Panel的底色容器
  //--- Size
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblSize%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblSize0001.AutoSize;
      Left := lblSize0001.Left;
      Top := lblSize0001.Top;
      Width := lblSize0001.Width;
      Height := lblSize0001.Height;
      Anchors := lblSize0001.Anchors;
      Align := lblSize0001.Align;
      Alignment := lblSize0001.Alignment;
      Color := lblSize0001.Color;
      Caption := xsize;
      Font := lblSize0001.Font;
      Transparent := lblSize0001.Transparent;
      WordWrap := lblSize0001.WordWrap;
      LayOut := lblSize0001.Layout;
    finally
    end;
  end;
  //--- 訂單數量
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblSizePair%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblSizePair0001.AutoSize;
      Left := lblSizePair0001.Left;
      Top := lblSizePair0001.Top;
      Width := lblSizePair0001.Width;
      Height := lblSizePair0001.Height;
      Anchors := lblSizePair0001.Anchors;
      Align := lblSizePair0001.Align;
      Alignment := lblSizePair0001.Alignment;
      Color := lblSizePair0001.Color;
      Caption := '(' + IntToStr(Pairs) + ')';
      Font := lblSizePair0001.Font;
      Transparent := lblSizePair0001.Transparent;
    finally
    end;
  end;

  //-------------------------------------------- 第二層 Panel -----------------------------
  Panel := TPanel.Create(ScrolBox);
  with Panel do
  begin
    try
      Name := Format('pnlReal%.2d%.2d', [parentID, ri]);
      Parent := ScrolBox;
      Caption := '';
      BevelInner := pnlReal0001.BevelInner;
      BevelOuter := pnlReal0001.BevelOuter;
      Color := pnlReal0001.Color;
      Width := pnlReal0001.Width;
      Height := pnlReal0001.Height;
      Top := pnlReal0001.Top;
      Font := pnlReal0001.Font;
      if (ri > 1) then
        Left := (Width + 10) * (ri - 1) + pnlReal0001.Left
      else if (ri = 1) then
        Left := pnlReal0001.Left;
      OnClick := pnlReal0001Click; //---共用事件的範例
    finally
    end;
  end;
  //--- OK
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblRealOK%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblRealOK0001.AutoSize;
      Left := lblRealOK0001.Left;
      Top := lblRealOK0001.Top;
      Width := lblRealOK0001.Width;
      Height := lblRealOK0001.Height;
      Anchors := lblRealOK0001.Anchors;
      Align := lblRealOK0001.Align;
      Alignment := lblRealOK0001.Alignment;
      Color := lblRealOK0001.Color;
      Caption := lblRealOK0001.Caption;
      Font := lblRealOK0001.Font;
      Transparent := lblRealOK0001.Transparent;
      WordWrap := lblRealOK0001.WordWrap;
      LayOut := lblRealOK0001.Layout;
      OnClick := pnlReal0001Click; //---共用事件的範例
    finally
    end;
  end;
  //--- 已完成數量
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblRealSizePair%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblRealSizePair0001.AutoSize;
      Left := lblRealSizePair0001.Left;
      Top := lblRealSizePair0001.Top;
      Width := lblRealSizePair0001.Width;
      Height := lblRealSizePair0001.Height;
      Anchors := lblRealSizePair0001.Anchors;
      Align := lblRealSizePair0001.Align;
      Alignment := lblRealSizePair0001.Alignment;
      Color := lblRealSizePair0001.Color;
      Caption := '(' + IntToStr(Qty) + ')';
      Font := lblRealSizePair0001.Font;
      Transparent := lblRealSizePair0001.Transparent;
      OnClick := pnlReal0001Click; //---共用事件的範例
    finally
    end;
  end;

  //--------------------------------------------------------------------------------------------
  with QuerySpc do
  begin
    while not eof do
    begin
      if SPIndex = 1 then
      begin
        //-------------------------------------------- special 1 第三層 Panel -----------------------------
        Panel := TPanel.Create(ScrolBox);
        with Panel do
        begin
          try
            Name := Format('SpecialNGA%.2d%.2d', [parentID, ri]);
            Parent := ScrolBox;
            Caption := '';
            BevelInner := SpecialNGA0001.BevelInner;
            BevelOuter := SpecialNGA0001.BevelOuter;
            Color := SpecialNGA0001.Color;
            Width := SpecialNGA0001.Width;
            Height := SpecialNGA0001.Height;
            Top := SpecialNGA0001.Top;
            Font := SpecialNGA0001.Font;
            visible := true;
            if (ri > 1) then
              Left := (Width + 10) * (ri - 1) + SpecialNGA0001.Left
            else if (ri = 1) then
              Left := SpecialNGA0001.Left;
            OnClick := SpecialNG0001Click; //---共用事件的範例
          finally
          end;
        end;
        //--- OK
        with TLabel.Create(Panel) do
        begin
          try
            Name := Format('lblSPNGA%.2d%.2d', [parentID, ri]);
            Parent := Panel;
            AutoSize := lblSPNGA0001.AutoSize;
            Left := lblSPNGA0001.Left;
            Top := lblSPNGA0001.Top;
            Width := lblSPNGA0001.Width;
            Height := lblSPNGA0001.Height;
            Anchors := lblSPNGA0001.Anchors;
            Align := lblSPNGA0001.Align;
            Alignment := lblSPNGA0001.Alignment;
            Color := lblSPNGA0001.Color;
            Caption := QuerySpc.FieldByName('YWSM').Value;
            HelpKeyword := QuerySpc.FieldByName('YYBH').Value;
            Font := lblSPNGA0001.Font;
            Transparent := lblSPNGA0001.Transparent;
            WordWrap := lblSPNGA0001.WordWrap;
            LayOut := lblSPNGA0001.Layout;
            OnClick := SpecialNG0001Click; //---共用事件的範例
          finally
          end;
        end;
        //--- 已完成數量
        with TLabel.Create(Panel) do
        begin
          try
            Name := Format('lblSPNGPairA%.2d%.2d', [parentID, ri]);
            Parent := Panel;
            AutoSize := lblSPNGPairA0001.AutoSize;
            Left := lblSPNGPairA0001.Left;
            Top := lblSPNGPairA0001.Top;
            Width := lblSPNGPairA0001.Width;
            Height := lblSPNGPairA0001.Height;
            Anchors := lblSPNGPairA0001.Anchors;
            Align := lblSPNGPairA0001.Align;
            Alignment := lblSPNGPairA0001.Alignment;
            Color := lblSPNGPairA0001.Color;
            Caption := '(' + QuerySpc.FieldByName('Qty').AsString + ')';
            Font := lblSPNGPairA0001.Font;
            Transparent := lblSPNGPairA0001.Transparent;
            OnClick := SpecialNG0001Click; //---共用事件的範例
          finally
          end;
        end;
        //--------------------------------------------------------------------------------
      end;
      if SPIndex = 2 then
      begin
        //-------------------------------------------- specual 2 第三層 Panel -----------------------------
        Panel := TPanel.Create(ScrolBox);
        with Panel do
        begin
          try
            Name := Format('SpecialNGB%.2d%.2d', [parentID, ri]);
            Parent := ScrolBox;
            Caption := '';
            BevelInner := SpecialNGB0001.BevelInner;
            BevelOuter := SpecialNGB0001.BevelOuter;
            Color := SpecialNGB0001.Color;
            Width := SpecialNGB0001.Width;
            Height := SpecialNGB0001.Height;
            Top := SpecialNGB0001.Top;
            Font := SpecialNGB0001.Font;
            visible := true;
            if (ri > 1) then
              Left := (Width + 10) * (ri - 1) + SpecialNGB0001.Left
            else if (ri = 1) then
              Left := SpecialNGB0001.Left;
            OnClick := SpecialNG0001Click; //---共用事件的範例
          finally
          end;
        end;
        //--- OK
        with TLabel.Create(Panel) do
        begin
          try
            Name := Format('lblSPNGB%.2d%.2d', [parentID, ri]);
            Parent := Panel;
            AutoSize := lblSPNGB0001.AutoSize;
            Left := lblSPNGB0001.Left;
            Top := lblSPNGB0001.Top;
            Width := lblSPNGB0001.Width;
            Height := lblSPNGB0001.Height;
            Anchors := lblSPNGB0001.Anchors;
            Align := lblSPNGB0001.Align;
            Alignment := lblSPNGB0001.Alignment;
            Color := lblSPNGB0001.Color;
            Caption := QuerySpc.FieldByName('YWSM').Value;
            HelpKeyword := QuerySpc.FieldByName('YYBH').Value;
            Font := lblSPNGB0001.Font;
            Transparent := lblSPNGB0001.Transparent;
            WordWrap := lblSPNGB0001.WordWrap;
            LayOut := lblSPNGB0001.Layout;
            OnClick := SpecialNG0001Click; //---共用事件的範例
          finally
          end;
        end;
        //--- 已完成數量
        with TLabel.Create(Panel) do
        begin
          try
            Name := Format('lblSPNGPairB%.2d%.2d', [parentID, ri]);
            Parent := Panel;
            AutoSize := lblSPNGPairB0001.AutoSize;
            Left := lblSPNGPairB0001.Left;
            Top := lblSPNGPairB0001.Top;
            Width := lblSPNGPairB0001.Width;
            Height := lblSPNGPairB0001.Height;
            Anchors := lblSPNGPairB0001.Anchors;
            Align := lblSPNGPairB0001.Align;
            Alignment := lblSPNGPairB0001.Alignment;
            Color := lblSPNGPairB0001.Color;
            Caption := '(' + QuerySpc.FieldByName('Qty').AsString + ')';
            Font := lblSPNGPairB0001.Font;
            Transparent := lblSPNGPairB0001.Transparent;
            OnClick := SpecialNG0001Click; //---共用事件的範例
          finally
          end;
        end;
        //--------------------------------------------------------------------------------
      end;
      if SPIndex = 3 then
      begin
        //-------------------------------------------- specual 3 第三層 Panel -----------------------------
        Panel := TPanel.Create(ScrolBox);
        with Panel do
        begin
          try
            Name := Format('SpecialNGC%.2d%.2d', [parentID, ri]);
            Parent := ScrolBox;
            Caption := '';
            BevelInner := SpecialNGC0001.BevelInner;
            BevelOuter := SpecialNGC0001.BevelOuter;
            Color := SpecialNGC0001.Color;
            Width := SpecialNGC0001.Width;
            Height := SpecialNGC0001.Height;
            Top := SpecialNGC0001.Top;
            Font := SpecialNGC0001.Font;
            visible := true;
            if (ri > 1) then
              Left := (Width + 10) * (ri - 1) + SpecialNGC0001.Left
            else if (ri = 1) then
              Left := SpecialNGC0001.Left;
            OnClick := SpecialNG0001Click; //---共用事件的範例
          finally
          end;
        end;
        //--- OK
        with TLabel.Create(Panel) do
        begin
          try
            Name := Format('lblSPNGC%.2d%.2d', [parentID, ri]);
            Parent := Panel;
            AutoSize := lblSPNGC0001.AutoSize;
            Left := lblSPNGC0001.Left;
            Top := lblSPNGC0001.Top;
            Width := lblSPNGC0001.Width;
            Height := lblSPNGC0001.Height;
            Anchors := lblSPNGC0001.Anchors;
            Align := lblSPNGC0001.Align;
            Alignment := lblSPNGC0001.Alignment;
            Color := lblSPNGC0001.Color;
            Caption := QuerySpc.FieldByName('YWSM').Value;
            HelpKeyword := QuerySpc.FieldByName('YYBH').Value;
            Font := lblSPNGC0001.Font;
            Transparent := lblSPNGC0001.Transparent;
            WordWrap := lblSPNGC0001.WordWrap;
            LayOut := lblSPNGC0001.Layout;
            OnClick := SpecialNG0001Click; //---共用事件的範例
          finally
          end;
        end;
        //--- 已完成數量
        with TLabel.Create(Panel) do
        begin
          try
            Name := Format('lblSPNGPairC%.2d%.2d', [parentID, ri]);
            Parent := Panel;
            AutoSize := lblSPNGPairC0001.AutoSize;
            Left := lblSPNGPairC0001.Left;
            Top := lblSPNGPairC0001.Top;
            Width := lblSPNGPairC0001.Width;
            Height := lblSPNGPairC0001.Height;
            Anchors := lblSPNGPairC0001.Anchors;
            Align := lblSPNGPairC0001.Align;
            Alignment := lblSPNGPairC0001.Alignment;
            Color := lblSPNGPairC0001.Color;
            Caption := '(' + QuerySpc.FieldByName('YYBH').AsString + ')';
            Font := lblSPNGPairC0001.Font;
            Transparent := lblSPNGPairC0001.Transparent;
            OnClick := SpecialNG0001Click; //---共用事件的範例
          finally
          end;
        end;
        //--------------------------------------------------------------------------------
      end;
      QuerySpc.Next;
      inc(SPIndex);
    end;
  end;

  //----------------------------------------------------- 第三層 Panel ----Return------------------
  {
  //2021/06/04 不啟用
  Panel:=TPanel.Create(ScrolBox);
  with Panel do
  begin
    try
      Parent := ScrolBox;
      Color := pnlReturn0001.Color;
      Width := pnlReturn0001.Width;
      Height := pnlReturn0001.Height;
      Top := pnlReturn0001.Top;
      Font := pnlReturn0001.Font;
      if (ri > 1) then
        Left := (Width + 10) * (ri - 1) + pnlReturn0001.Left
      else if  (ri = 1) then
        Left := pnlReturn0001.Left;

      Name := Format('pnlReturn%.2d%.2d', [parentID, ri]);
      Caption := '';
      OnClick := pnlReturn0001Click; //---共用事件的範例
    finally
    end;
  end;
  //--- Retrun
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      Anchors := lblReturn0001.Anchors;
      Align := lblReturn0001.Align;
      Alignment := lblReturn0001.Alignment;
      Color := lblReturn0001.Color;
      Caption := 'Return';
      Font := lblReturn0001.Font;
      Transparent := lblReturn0001.Transparent;

      Name := Format('lblReturn%.2d%.2d', [parentID,ri]);
      OnClick := pnlReturn0001Click; //---共用事件的範例
      //20210129
      Hint:=Name;
      //ShowHint:=true;
      //

    finally
    end;
  end;
  //--- 返修數量
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      Anchors := lblReturnSizePair0001.Anchors;
      Align := lblReturnSizePair0001.Align;
      Alignment := lblReturnSizePair0001.Alignment;
      Color := lblReturnSizePair0001.Color;
      Caption := '(' + IntToStr(ReturnQty) + ')';
      Font := lblReturnSizePair0001.Font;
      Transparent := lblReturnSizePair0001.Transparent;

      Name := Format('lblReturnSizePair%.2d%.2d', [parentID,ri]);
      OnClick := pnlReturn0001Click; //---共用事件的範例
      //20210129
      Hint:=Name;
      //ShowHint:=true;
      //
    finally
    end;
  end;}
  //----------------------------------------------------- 第四層 Panel ----   NG   ------------------
  Panel := TPanel.Create(ScrolBox);
  with Panel do
  begin
    try
      Name := Format('pnlNG%.2d%.2d', [parentID, ri]);
      Parent := ScrolBox;
      BevelInner := pnlNG0001.BevelInner;
      BevelOuter := pnlNG0001.BevelOuter;
      Color := pnlNG0001.Color;
      Width := pnlNG0001.Width;
      Height := pnlNG0001.Height;
      Top := pnlNG0001.Top;
      Font := pnlNG0001.Font;
      Caption := '';
      if (ri > 1) then
        Left := (Width + 10) * (ri - 1) + pnlNG0001.Left
      else
        Left := pnlNG0001.Left;
    finally
    end;
  end;
  //--- NG
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblNG%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblNG0001.AutoSize;
      Left := lblNG0001.Left;
      Top := lblNG0001.Top;
      Width := lblNG0001.Width;
      Height := lblNG0001.Height;
      Anchors := lblNG0001.Anchors;
      Align := lblNG0001.Align;
      Alignment := lblNG0001.Alignment;
      Color := lblNG0001.Color;
      Caption := lblNG0001.Caption;
      Font := lblNG0001.Font;
      Transparent := lblNG0001.Transparent;
      LayOut := lblNG0001.Layout;
      WordWrap := lblNG0001.WordWrap;
    finally
    end;
  end;
  //--- NG 數量
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblNGPair%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblNGPair0001.AutoSize;
      Left := lblNGPair0001.Left;
      Top := lblNGPair0001.Top;
      Width := lblNGPair0001.Width;
      Height := lblNGPair0001.Height;
      Anchors := lblNGPair0001.Anchors;
      Align := lblNGPair0001.Align;
      Alignment := lblNGPair0001.Alignment;
      Color := lblNGPair0001.Color;
      Caption := '(' + IntToStr(NGQty) + ')';
      Font := lblNGPair0001.Font;
      Transparent := lblNGPair0001.Transparent;
    finally
    end;
  end;

  //Daily OK
  Panel := TPanel.Create(ScrolBox);
  with Panel do
  begin
    try
      Name := Format('pnlDailyOK%.2d%.2d', [parentID, ri]);
      Parent := ScrolBox;
      Caption := '';
      Color := pnlDailyOK0001.Color;
      BevelInner := pnlDailyOK0001.BevelInner;
      BevelOuter := pnlDailyOK0001.BevelOuter;
      Width := pnlDailyOK0001.Width;
      Height := pnlDailyOK0001.Height;
      Top := pnlDailyOK0001.Top;
      Visible := false; //mirror
      if (ri > 1) then
        Left := (Width + 10) * (ri - 1) + pnlDailyOK0001.Left
      else if (ri = 1) then
        Left := pnlDailyOK0001.Left;
    finally
    end;
  end;
  //Title
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblDailyOK%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblDailyOK0001.AutoSize;
      Left := lblDailyOK0001.Left;
      Top := lblDailyOK0001.Top;
      Width := lblDailyOK0001.Width;
      Height := lblDailyOK0001.Height;
      Anchors := lblDailyOK0001.Anchors;
      Align := lblDailyOK0001.Align;
      Alignment := lblDailyOK0001.Alignment;
      Color := lblDailyOK0001.Color;
      Caption := lblDailyOK0001.Caption;
      Font := lblDailyOK0001.Font;
      Transparent := lblDailyOK0001.Transparent;
      WordWrap := lblDailyOK0001.WordWrap;
      LayOut := lblDailyOK0001.Layout;
    finally
    end;
  end;
  //OK Qty
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblDailyOKPair%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblDailyOKPair0001.AutoSize;
      Left := lblDailyOKPair0001.Left;
      Top := lblDailyOKPair0001.Top;
      Width := lblDailyOKPair0001.Width;
      Height := lblDailyOKPair0001.Height;
      Anchors := lblDailyOKPair0001.Anchors;
      Align := lblDailyOKPair0001.Align;
      Alignment := lblDailyOKPair0001.Alignment;
      Color := lblDailyOKPair0001.Color;
      Caption := '(' + IntToStr(TQty) + ')';
      Font := lblDailyOKPair0001.Font;
      Transparent := lblDailyOKPair0001.Transparent;
    finally
    end;
  end;

  //Daily NG
  Panel := TPanel.Create(ScrolBox);
  with Panel do
  begin
    try
      Name := Format('pnlDailyNG%.2d%.2d', [parentID, ri]);
      Parent := ScrolBox;
      Caption := '';
      Color := pnlDailyNG0001.Color;
      BevelInner := pnlDailyNG0001.BevelInner;
      BevelOuter := pnlDailyNG0001.BevelOuter;
      Width := pnlDailyNG0001.Width;
      Height := pnlDailyNG0001.Height;
      Top := pnlDailyNG0001.Top;
      Visible := false; //mirror
      if (ri > 1) then
        Left := (Width + 10) * (ri - 1) + pnlDailyNG0001.Left
      else if (ri = 1) then
        Left := pnlDailyNG0001.Left;
    finally
    end;
  end;
  //Title
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblDailyNG%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblDailyNG0001.AutoSize;
      Left := lblDailyNG0001.Left;
      Top := lblDailyNG0001.Top;
      Width := lblDailyNG0001.Width;
      Height := lblDailyNG0001.Height;
      Anchors := lblDailyNG0001.Anchors;
      Align := lblDailyNG0001.Align;
      Alignment := lblDailyNG0001.Alignment;
      Color := lblDailyNG0001.Color;
      Caption := lblDailyNG0001.Caption;
      Font := lblDailyNG0001.Font;
      Transparent := lblDailyNG0001.Transparent;
      WordWrap := lblDailyNG0001.WordWrap;
      LayOut := lblDailyNG0001.Layout;
    finally
    end;
  end;
  //NG Qty
  with TLabel.Create(Panel) do
  begin
    try
      Name := Format('lblDailyNGPair%.2d%.2d', [parentID, ri]);
      Parent := Panel;
      AutoSize := lblDailyNGPair0001.AutoSize;
      Left := lblDailyNGPair0001.Left;
      Top := lblDailyNGPair0001.Top;
      Width := lblDailyNGPair0001.Width;
      Height := lblDailyNGPair0001.Height;
      Anchors := lblDailyNGPair0001.Anchors;
      Align := lblDailyNGPair0001.Align;
      Alignment := lblDailyNGPair0001.Alignment;
      Color := lblDailyNGPair0001.Color;
      Caption := '(' + IntToStr(TNGQty) + ')';
      Font := lblDailyNGPair0001.Font;
      Transparent := lblDailyNGPair0001.Transparent;
    finally
    end;
  end;
end;

//--- QC info list
//瑕疵報工小方塊
procedure TAndonInputRev.addQCInfo(ri: integer; xYYBH: string; xWSM: string; DefectQty: string);
var
  parentID, kl, kt, k: integer;
  TabSheet: TTabSheet;
  Num2ID: string;
  pnlReason, Panel: TPanel;
begin
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  parentID := strtoint(Num2ID);
  pnlReason := TabSheet.FindComponent('pnlReason' + Num2ID) as TPanel;
  //---QC info 的基底Panel
  Panel := TPanel.Create(pnlReason);
  with Panel do
  begin
    try
      Parent := pnlReason;
      Color := pnlReason0001.Color;
      Width := pnlReason0001.Width;
      Height := pnlReason0001.Height;
      if (ri > 1) then
      begin
        k := Round((ri - 1) div 6); //---一行可放幾個
        kl := k; //---Left 的位置
        kt := (ri - 1) - (k * 6); //---TOP 的位置
        Left := (Width + 3) * kl + pnlReason0001.Left;
        Top := (Height + 7) * kt + pnlReason0001.Top;
        Name := Format('pnlReason%.2d%.2d', [parentID, ri]);
      end
      else
      begin
        Left := pnlReason0001.Left;
        Top := pnlReason0001.Top;
        Name := Format('pnlReason%.2d%.2d', [parentID, ri]);
      end;
      Caption := '';
      //OnClick := pnlReason0001Click; //---共用事件的範例
    finally
    end;
  end;
  //---左邊QC代號
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      AutoSize := lblReasonA0001.AutoSize;
      Top := lblReasonA0001.Top;
      Left := lblReasonA0001.Left;
      Width := lblReasonA0001.Width;
      Anchors := lblReasonA0001.Anchors;
      Align := lblReasonA0001.Align;
      Alignment := lblReasonA0001.Alignment;
      Color := lblReasonA0001.Color;
      Caption := xYYBH;
      Font := lblReasonA0001.Font;
      Layout := lblReasonA0001.Layout;
      Transparent := lblReasonA0001.Transparent;
      Name := Format('lblReasonA%.2d%.2d', [parentID, ri]);
      OnClick := pnlReason0001Click; //---共用事件的範例
    finally
    end;
  end;
  //---QC原因  ------------------------------------------------------
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      AutoSize := lblReasonB0001.AutoSize;
      Top := lblReasonB0001.Top;
      Left := lblReasonB0001.Left;
      Width := lblReasonB0001.Width;
      Height := lblReasonB0001.Height;
      Anchors := lblReasonB0001.Anchors;
      Align := lblReasonB0001.Align;
      Alignment := lblReasonB0001.Alignment;
      Color := lblReasonB0001.Color;
      Font := lblReasonB0001.Font;
      Layout := lblReasonB0001.Layout;
      WordWrap := lblReasonB0001.WordWrap;
      Transparent := lblReasonB0001.Transparent;
      Caption := xWSM;
      Name := Format('lblReasonB%.2d%.2d', [parentID, ri]);
      OnClick := pnlReason0001Click; //---共用事件的範例
    finally
    end;
  end;

  //---瑕疵數量  ------------------------------------------------------
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := edtReason0001.Top;
      Left := edtReason0001.Left;
      Anchors := edtReason0001.Anchors;
      Alignment := edtReason0001.Alignment;
      AutoSize := false;
      Font := edtReason0001.Font;
      Width := edtReason0001.Width;
      Height := edtReason0001.Height;
      Enabled := edtReason0001.Enabled;
      Color := edtReason0001.Color;
      Align := edtReason0001.Align;
      Caption := DefectQty;
      Layout := edtReason0001.Layout;
      Name := Format('edtReason%.2d%.2d', [parentID, ri]);
      OnClick := pnlReasonSub0001Click;
    finally
    end;
  end;

end;

//取消瑕疵數量-1
procedure TAndonInputRev.pnlReasonSub0001Click(Sender: TObject);
var
  buttonSelected: integer;
  TabSheet: TTabSheet;
  pnlReason, pnlReason_Sub: TPanel;
  Edit, Todayng: TLabel;
  Num2ID, Num4ID: string;
  lblReasonA: TLabel;
  sbxPairList: TScrollBox;
  pnlNG: TPanel;
  tabInfo: TStringlist;
  tmp, tabSheet_DepID, tabSheet_OrderRY, tabSheet_DepGXLB: string;
begin
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  Num4ID := RightStr(TLabel(Sender).Name, 4);
  //訂單和部門資訊
  tabInfo := TStringlist.Create;
  tabInfo := funcObj.SplitString(TabSheet.Hint, ',');
  tabSheet_OrderRY := tabInfo.Strings[0];
  tabSheet_DepID := tabInfo.Strings[1];
  tabSheet_DepGXLB := tabInfo.Strings[3];
  tabInfo.Free;
  //找到物件
  Todayng := TabSheet.FindComponent('lbTodayNG' + Num2ID) as TLabel; //lbTodayNG00
  pnlReason := TabSheet.FindComponent('pnlReason' + Num2ID) as TPanel; //pnlReason00
  pnlReason_Sub := pnlReason.FindComponent('pnlReason' + Num4ID) as TPanel; //pnlReason0001

  Edit := TLabel(Sender);
  if (Edit <> nil) and (StrToInt(Edit.Caption) > 0) then
  begin
    buttonSelected := MessageDlg('Confirmation', mtConfirmation, mbOKCancel, 0);
    if buttonSelected = mrOK then
    begin
      lblReasonA := pnlReason_Sub.FindComponent('lblReasonA' + RightStr(Edit.Name, 4)) as TLabel;
      //找出當日瑕疵數量是否大於0
      with qryTmp do
      begin //--- 抓取存於DB中的數量，準備再與現場的數量作相加，
        //---順便判斷有無以存在資料（決定使用Insert或Update）
        Active := false;
        with SQL do
        begin
          SQL.Clear;

          Add('SELECT DATEDIFF(day,SCDate,getdate()) days,isnull(Qty,0) Qty FROM QCRD inner join QCR on QCR.ProNo=QCRD.ProNo ');
          //Add('where YYBH= :YYBH and SCDate= :SCDate and SJXH= :SJXH and DepNo= :DepNo and GXLB= :GXLB ');
          Add('where YYBH= :YYBH and SCDate>DATEADD(day,-8,getdate()) and Qty>0 and SJXH= :SJXH and DepNo= :DepNo and GXLB= :GXLB ');
          Add('and SCBH= :SCBH and GSBH= :GSBH order by SCDate desc');
          //showmessage(sql.text);
        end;
        //ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
        ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
        ParamByName('DepNo').Value := tabSheet_DepID;
        ParamByName('GSBH').Value := main.Edit2.Text;
        ParamByName('SCBH').Value := tabSheet_OrderRY;
        ParamByName('GXLB').Value := TGXLB;
        ParamByName('YYBH').Value := lblReasonA.Caption;
        Active := true;
      end;

      //確認今日NG>0
      if (qryTmp.RecordCount > 0) then
      begin
        if qryTmp.FieldByName('days').AsString = '0' then
        begin
          Todayng.Caption := IntToStr(StrToInt(Todayng.Caption) - 1);
        end;
        Edit.Caption := IntToStr(StrToInt(Edit.Caption) - 1);
        pnlReason_Sub.Caption := Edit.Caption;

        //點擊NG button按鈕
        if DefectCK.Checked = true then
        begin
          sbxPairList := TabSheet.FindComponent('sbxPairList' + Num2ID) as TScrollBox;
          pnlNG := sbxPairList.FindComponent('pnlNG' + Num2ID + '01') as TPanel; // Find TLabel Obj
          if pnlNG <> nil then //1各Defect1各雙數
          begin
            GDefect_YYBH := lblReasonA.Caption;
            pnlNGSub0001Click(pnlNG);
          end;
        end;
      end
      else
      begin
        Showmessage('Today no record find!');
      end;

    end;
  end;
end;

procedure TAndonInputRev.pnlNGSub0001Click(Sender: TObject);
var
  j, i, subcounts: integer;
  Num2ID, Num4ID, SCDate: string;
  TabSheet: TTabSheet;
  // mirror
  lbTodayNG: TLabel;
  //
  sbxPairList: TScrollBox;
  pnlReason: TPanel;
  pnlReason_Sub: TPanel;
  edtReason: TLabel;
  lblReasonA: TLabel;

  pnlSize: TPanel;
  lblSize: TLabel;
  pnlNG: TPanel;
  lblNGP: TLabel;
  lblNGPair: TLabel;
  //
  pnlReal: TPanel;
  lblRealSizePair: TLabel;
  lblRealPair: TLabel;
  //
  pnlDailyNG: TPanel;
  lblDailyNGPair: TLabel;
  //
  DefectList: TStringlist;
  //
  ProNo, ScanQty: integer;
  //
  tabInfo: TStringlist;
  Flag, tabSheet_DepID, tabSheet_OrderRY, tabSheet_DepGXLB: string; //新增WORP或更新
  Datebase: TDataBase;
begin
  TabSheet := pgcContent.ActivePage;
  //訂單和部門資訊
  tabInfo := TStringlist.Create;
  tabInfo := funcObj.SplitString(TabSheet.Hint, ',');
  tabSheet_OrderRY := tabInfo.Strings[0];
  tabSheet_DepID := tabInfo.Strings[1];
  tabSheet_DepGXLB := tabInfo.Strings[3];
  tabInfo.Free;
  subcounts := 0;
  //
  Num2ID := RightStr(TabSheet.Name, 2);
  Num4ID := RightStr(TPanel(Sender).Name, 4);

  //找物件
  sbxPairList := TabSheet.FindComponent('sbxPairList' + Num2ID) as TScrollBox;
  lblNGP := TabSheet.FindComponent('lblNGPair' + Num2ID) as TLabel;
  pnlSize := sbxPairList.FindComponent('pnlSize' + Num4ID) as TPanel; // Find TLabel Obj
  lblSize := pnlSize.FindComponent('lblSize' + Num4ID) as TLabel; // Find TLabel Obj
  pnlNG := sbxPairList.FindComponent('pnlNG' + Num4ID) as TPanel; // Find TLabel Obj
  lblNGPair := pnlNG.FindComponent('lblNGPair' + Num4ID) as TLabel; // Find TLabel Obj
  pnlReason := TabSheet.FindComponent('pnlReason' + Num2ID) as TPanel;

  //OK Qty
  pnlReal := sbxPairList.FindComponent('pnlReal' + Num4ID) as TPanel; // Find TLabel Obj

  //NG Qty
  pnlDailyNG := sbxPairList.FindComponent('pnlDailyNG' + Num4ID) as TPanel;
  lblDailyNGPair := pnlDailyNG.FindComponent('lblDailyNGPair' + Num4ID) as TLabel;

  //Defect List清單
  DefectList := TStringlist.Create;
  //
  if DefectCK.Checked = false then //多個Defect點是1雙
  begin
    for i := 0 to pnlReason.ControlCount - 1 do
    begin
      if pnlReason.Controls[i] is TPanel then
      begin
        pnlReason_Sub := pnlReason.Controls[i] as TPanel;
        edtReason := pnlReason_Sub.FindComponent('edtReason' + Num4ID) as TLabel;
        if edtReason <> nil then
        begin
          if strtoint(edtReason.Caption) > 0 then
          begin
            lblReasonA := pnlReason_Sub.FindComponent('lblReasonA' + RightStr(edtReason.Name, 4)) as TLabel;
            DefectList.Add(lblReasonA.Caption + '=' + edtReason.Caption)
          end;
          break;
        end;
      end;
    end;
  end
  else //點1各Defect是1雙後，自動點NG按鈕
  begin
    DefectList.Add(GDefect_YYBH + '=1');
  end;

  //
  if DefectList.Count = 0 then
  begin
    ShowMessage('Need Select the reason !');
    DefectList.Free;
    Exit;
  end
  else
  begin
    //---
    Datebase := qryTmp.Database;
    with qryTmp do
    begin
      Datebase.StartTransaction;
      try
        //--- 更新WOPR
        //---QCR 和 QCRD 不論第一次新增或是更新 WOPR ，都要用新增的方式
        //--- 取得錯誤 原因主檔 QCR 的最新流水號
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT top 1 QCRD.ProNo,SCDate from QCR inner join QCRD on QCRD.ProNo=QCR.ProNo ');
        SQL.Add('where SCDate>DATEADD(day,-8,getdate()) and Qty>0 and SCBH=''' + tabSheet_OrderRY + ''' and GXLB=''' + TGXLB +
          ''' and DepNo=''' + tabSheet_DepID + ''' and YYBH=''' + DefectList.Names[0] + ''' ');
        //SQL.Add('where SCDate = '''+FormatDateTime('yyyy/mm/dd', sysDBtime)+''' and SCBH='''+tabSheet_OrderRY+''' and GXLB='''+TGXLB+''' and DepNo='''+tabSheet_DepID+''' and YYBH='''+DefectList.Names[0]+''' ');
        SQL.Add('order by QCRD.ProNo desc');
        //showmessage(sql.Text);
        Active := true;
        if RecordCount > 0 then
        begin
          ProNo := FieldByName('ProNO').Value;
          SCDate := FieldByName('SCDate').Value;
          Active := false;
          SQL.Clear;
          SQL.Add('Update QCRD set Qty=Qty-' + DefectList.ValueFromIndex[i] + ', UserID=''' + main.Edit1.Text +
            ''',UserDate=GetDate() where ProNO=''' + Format('%.10d', [ProNo]) + ''' and YYBH=''' + DefectList.Names[0] + ''' ');
          ExecSQL;
          SQL.Clear;
          SQL.Add('update wopr set ngqty =ngqty-1, userID =:UserID, userdate = :userdate ');
          SQL.Add('where SCDate = :SCDate and SJXH = :SJXH and DepNo = :DepNo and GSBH = :GSBH');
          SQL.Add('and SCBH = :SCBH and gxlb = :gxlb and CC = :CC ;');
          ParamByName('SCDate').Value := SCDate;
          //ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
          ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
          ParamByName('DepNo').Value := tabSheet_DepID;
          ParamByName('GSBH').Value := main.Edit2.Text;
          ParamByName('SCBH').Value := tabSheet_OrderRY;
          ParamByName('gxlb').Value := TGXLB;
          if (lblsize.Caption = 'PO Quantity') then
            ParamByName('CC').Value := 'NULL'
          else
            ParamByName('CC').Value := lblsize.Caption; // Tlabel(ps.FindComponent('lblSize' + ln)).Caption;
          ParamByName('userdate').Value := now;
          ParamByName('userid').Value := main.Edit1.Text;
          ExecSQL;
        end;
        //---所有變動資料無誤下方可執行下面最後一行
        Datebase.Commit;
        subcounts := 1;
      except on E: Exception do
        begin
          subcounts := 0;
          Datebase.Rollback;
          ShowMessage(E.Message);
        end;
      end;
    end;

    //20210619 Danny 判斷是否符合發送通知條件
    CheckDefects(tabSheet_DepID, GDefect_YYBH);
  end;
  //更新介面
  if lblNGPair <> nil then
    lblNGPair.Caption := '(' + inttostr(strtoint(Copy(lblNGPair.Caption, 2, length(lblNGPair.Caption) - 2)) - subcounts) + ')';
  // 數量-1
  if lblNGP <> nil then
    lblNGP.Caption := inttostr(strtoint(lblNGP.Caption) - subcounts); // 數量-1
  if (lblDailyNGPair <> nil) then
  begin
    lblDailyNGPair.Caption := '(' + IntToStr(StrToInt(Copy(lblDailyNGPair.Caption, 2, Length(lblDailyNGPair.Caption) - 2)) -
      subcounts) + ')';
  end;

  //Defect 數量重置0
  if DefectCK.Checked = false then //多個Defect點是1雙，然後自動歸零
    pnlCancelNG00Click(self);
  //
  DefectList.Free;

end;

procedure TAndonInputRev.pnlReason0001Click(Sender: TObject);
var
  TabSheet: TTabSheet;
  pnlReason, pnlReason_Sub: TPanel;
  Edit, Todayng: TLabel;
  Num2ID, Num4ID: string;
  lblReasonA: TLabel;
  sbxPairList: TScrollBox;
  pnlNG: TPanel;
begin
  NGState := '';
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  if Sender is TPanel then
  begin
    Num4ID := RightStr(TPanel(Sender).Name, 4);
  end;
  if Sender is TLabel then
  begin
    Num4ID := RightStr(TLabel(Sender).Name, 4);
  end;
  //找到物件
  pnlReason := TabSheet.FindComponent('pnlReason' + Num2ID) as TPanel;
  pnlReason_Sub := pnlReason.FindComponent('pnlReason' + Num4ID) as TPanel;
  Edit := pnlReason_Sub.FindComponent('edtReason' + Num4ID) as TLabel;
  Todayng := TabSheet.FindComponent('lbTodayNG' + Num2ID) as TLabel; //lbTodayNG00
  if Edit <> nil then
  begin
    pnlReason_Sub.Caption := Edit.Caption;
    lblReasonA := pnlReason_Sub.FindComponent('lblReasonA' + RightStr(Edit.Name, 4)) as TLabel;
    //點擊NG button按鈕
    if DefectCK.Checked = true then
    begin
      sbxPairList := TabSheet.FindComponent('sbxPairList' + Num2ID) as TScrollBox;
      pnlNG := sbxPairList.FindComponent('pnlNG' + Num2ID + '01') as TPanel; // Find TLabel Obj
      if pnlNG <> nil then //1各Defect1各雙數
      begin
        GDefect_YYBH := lblReasonA.Caption;
        pnlNG0001Click(pnlNG);
        if NGState <> 'NO' then
        begin
          Edit.Caption := IntToStr(StrToInt(Edit.Caption) + 1);
          Todayng.Caption := IntToStr(StrToInt(Todayng.Caption) + 1);
        end;
      end;
    end;
  end;
end;

//---NG 品的獨立事件，因為動作與另外兩個明顯不同故獨立之
procedure TAndonInputRev.pnlNG0001Click(Sender: TObject);
var
  i, j: integer;
  Num2ID, Num4ID: string;
  TabSheet: TTabSheet;
  //
  sbxPairList: TScrollBox;
  pnlReason: TPanel;
  pnlReason_Sub: TPanel;
  edtReason: TLabel;
  lbTodayNG: TLabel;
  lblReasonA: TLabel;
  pnlSize: TPanel;
  lblSize: TLabel;
  pnlNG: TPanel;
  lblNGP: TLabel;
  lblNGPair: TLabel;
  lblRYPair: TLabel;
  //
  pnlReal: TPanel;
  lblRealSizePair: TLabel;
  lblRealPair: TLabel;
  //
  pnlDailyNG: TPanel;
  lblDailyNGPair: TLabel;
  //
  DefectList: TStringlist;
  //
  ProNo, Qty, NGQty, ScanQty: integer;
  //
  tabInfo: TStringlist;
  Flag, tabSheet_DepID, tabSheet_OrderRY, tabSheet_DepGXLB,N44_Qty,N56_Qty: string; //新增WORP或更新
  Datebase: TDataBase;
begin
  TabSheet := pgcContent.ActivePage;
  //訂單和部門資訊
  tabInfo := TStringlist.Create;
  tabInfo := funcObj.SplitString(TabSheet.Hint, ',');
  tabSheet_OrderRY := tabInfo.Strings[0];
  tabSheet_DepID := tabInfo.Strings[1];
  tabSheet_DepGXLB := tabInfo.Strings[3];
  tabInfo.Free;

  //
  Num2ID := RightStr(TabSheet.Name, 2);
  if Sender is TPanel then
  begin
    Num4ID := RightStr(TPanel(Sender).Name, 4);
  end;
  if Sender is TLabel then
  begin
    Num4ID := RightStr(TLabel(Sender).Name, 4);
  end;

  //找物件
  sbxPairList := TabSheet.FindComponent('sbxPairList' + Num2ID) as TScrollBox;
  lblNGP := TabSheet.FindComponent('lblNGPair' + Num2ID) as TLabel;
  pnlSize := sbxPairList.FindComponent('pnlSize' + Num4ID) as TPanel; // Find TLabel Obj
  lblSize := pnlSize.FindComponent('lblSize' + Num4ID) as TLabel; // Find TLabel Obj
  pnlNG := sbxPairList.FindComponent('pnlNG' + Num4ID) as TPanel; // Find TLabel Obj
  lblNGPair := pnlNG.FindComponent('lblNGPair' + Num4ID) as TLabel; // Find TLabel Obj
  pnlReason := TabSheet.FindComponent('pnlReason' + Num2ID) as TPanel;
  lblRYPair := TabSheet.FindComponent('lblRYPair' + Num2ID) as TLabel;

  //OK Qty
  lblRealPair := TabSheet.FindComponent('lblRealPair' + Num2ID) as TLabel;
  pnlReal := sbxPairList.FindComponent('pnlReal' + Num4ID) as TPanel; // Find TLabel Obj
  lblRealSizePair := pnlReal.FindComponent('lblRealSizePair' + Num4ID) as TLabel; // Find TLabel Obj

  //NG Qty
  pnlDailyNG := sbxPairList.FindComponent('pnlDailyNG' + Num4ID) as TPanel;
  lblDailyNGPair := pnlDailyNG.FindComponent('lblDailyNGPair' + Num4ID) as TLabel;
  lbTodayNG := pnlDailyNG.FindComponent('lbTodayNG' + Num4ID) as TLabel;

  if MassQty.Checked = false then
  begin
    if ((lblRealPair <> nil) and (lblRYPair <> nil)) then
    begin
      with Query1 do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select SCBH,sum (Qty+NGQTY) as RealQty');
        SQL.Add('from WOPR ');
        SQL.Add('where GXLB=''' + TGXLB + ''' and SCBH like ''' + tabSheet_OrderRY + '%'' group by SCBH ');
        Active := true;
        if RecordCount > 0 then
        begin
          N56_Qty:=Query1.FieldByName('RealQty').AsString;
          if (strtoint(Query1.FieldByName('RealQty').Value) + 1) > strtoint(lblRYPair.Caption) then
          begin
            Showmessage('More than quanity order No. Nhieu hon SL don hang');
            NGState := 'NO';
            exit;
          end;
        end;
        //f0uncobj.WriteErrorLog(sql.Text);
        Active := false;
      end;
    end;
  end;

  if TGXLB = 'AR' then
  begin
      with Query1 do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select SCBH,sum (SMZL_Tablet.Pairs) as N44_Qty');
        SQL.Add('from SMZL_Tablet ');
        SQL.Add('where 1=1 and SCBH like '''+tabSheet_OrderRY+'%'' group by SCBH ');
        Active := true;
        if RecordCount > 0 then
        begin
          if N56_Qty = '' then  N56_Qty:='0';
          if N56_Qty>=Query1.FieldByName('N44_Qty').Value then
          begin
            Inc(TabletPairs);
          end;
        end else
        begin
          Inc(TabletPairs);
        end;
      end;
  end;
  //Defect List清單
  DefectList := TStringlist.Create;
  //
  if DefectCK.Checked = false then //多個Defect點是1雙
  begin
    for i := 0 to pnlReason.ControlCount - 1 do
    begin
      if pnlReason.Controls[i] is TPanel then
      begin
        edtReason := pnlReason_Sub.FindComponent('edtReason' + Num4ID) as TLabel;
        if strtoint(edtReason.Caption) > 0 then
        begin
          lblReasonA := pnlReason_Sub.FindComponent('lblReasonA' + RightStr(edtReason.Name, 4)) as TLabel;
          DefectList.Add(lblReasonA.Caption + '=' + edtReason.Caption)
        end;
        (*pnlReason_Sub := pnlReason.Controls[i] as TPanel;
        for j:=0 to  pnlReason_Sub.ControlCount-1 do
        begin
          if pnlReason_Sub.Controls[j] is TEdit then
          begin
            edtReason:=pnlReason_Sub.Controls[j] as TEdit;
            if strtoint(edtReason.Text)>0 then
            begin
              lblReasonA:=pnlReason_Sub.FindComponent('lblReasonA'+RightStr(edtReason.Name, 4)) as TLabel;
              DefectList.Add(lblReasonA.Caption+'='+edtReason.Text)
            end;
            break;
          end;
        end;*)
      end;
    end;
  end
  else //點1各Defect是1雙後，自動點NG按鈕
  begin
    DefectList.Add(GDefect_YYBH + '=1');
  end;
  //
  if DefectList.Count = 0 then
  begin
    ShowMessage('Need Select the reason !');
    DefectList.Free;
    Exit;
  end
  else
  begin
    //依照掃描數量
    ScanQty := 0;
    if MassQty.Checked = true then
    begin
      with qryTmp do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select IsNull(Sum(SMZL.CTS*SMDDSS.QTY),0) as ScanQty ');
        SQL.Add('from SMZL ');
        SQL.Add('left join SMDDSS on SMDDSS.CodeBar=SMZL.CodeBar ');
        SQL.Add('where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) =''' + FormatDateTime('YYYY/MM/DD', Date()) +
          '''  and SMDDSS.GXLB=''' + tabSheet_DepGXLB + ''' and SMDDSS.DDBH like ''' + tabSheet_OrderRY + '%'' ');
        if (lblsize.Caption <> 'NULL') and (lblsize.Caption <> 'PO Quantity') then
          SQL.Add(' and SMDDSS.XXCC=''' + lblsize.Caption + ''' ');
        Active := true;
        if RecordCount > 0 then
          ScanQty := FieldByName('ScanQty').Value;
        Active := false;
      end;
    end;
    //
    with qryTmp do
    begin //--- 抓取存於DB中的數量，準備再與現場的數量作相加，
      //---順便判斷有無以存在資料（決定使用Insert或Update）
      Active := false;
      with SQL do
      begin
        SQL.Clear;
        Add('select qty,ngqty from WOPR');
        Add('Where SCDate = :SCDate and SJXH = :SJXH ');
        Add('and DepNo = :DepNo and GSBH = :GSBH ');
        Add('and SCBH = :SCBH and gxlb = :gxlb and CC = :CC');
      end;
      ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
      ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
      ParamByName('DepNo').Value := tabSheet_DepID;
      ParamByName('GSBH').Value := main.Edit2.Text;
      ParamByName('SCBH').Value := tabSheet_OrderRY;
      ParamByName('gxlb').Value := TGXLB;
      if (lblsize.Caption = 'PO Quantity') then
        ParamByName('CC').Value := 'NULL'
      else
        ParamByName('CC').Value := lblsize.Caption;
      Active := true;
      if RecordCount > 0 then
      begin
        Flag := 'Modify';
        Qty := FieldByName('qty').Value;
        NGQty := 1 + FieldByName('ngqty').Value;
      end
      else //新資料，ngqty一定就是 1
      begin
        Qty := 0;
        Flag := 'Insert';
        NGQty := 1;
      end;
    end;
    //---
    Datebase := qryTmp.Database;
    with qryTmp do
    begin
      Datebase.StartTransaction;
      try
        if Flag = 'Insert' then //--- WOPR 的部分先動作（Insert or Update）
        begin
          //---新增時產能資料到WOPR
          with SQL do
          begin
            Clear;
            Add('INSERT INTO WOPR');
            Add('(SCDate, SJXH, DepNo, GSBH, SCBH, gxlb, CC, qty, ngqty, reqty, userid, userdate)');
            Add('VALUES(:SCDate, :SJXH, :DepNo, :GSBH, :SCBH, :gxlb, :CC, :qty, :ngqty, 0, :userid, :userdate );');
          end;
          ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
          ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
          ParamByName('DepNo').Value := tabSheet_DepID;
          ParamByName('GSBH').Value := main.Edit2.Text;
          ParamByName('SCBH').Value := tabSheet_OrderRY;
          ParamByName('gxlb').Value := TGXLB;
          if (lblsize.Caption = 'PO Quantity') then
            ParamByName('CC').Value := 'NULL'
          else
            ParamByName('CC').Value := lblsize.Caption;
          if MassQty.Checked = false then
            ParamByName('qty').Value := Qty
          else
            ParamByName('qty').Value := ScanQty;
          //Inc(TabletPairs);
          ParamByName('ngqty').Value := ngqty;
          ParamByName('userid').Value := main.Edit1.Text;
          ParamByName('userdate').Value := now;
          //Inc(TabletPairs);
        end
        else //--- 更新資料
        begin
          //--- 更新WOPR
          with SQL do
          begin
            Clear;
            Add('update wopr set qty =:Qty, ngqty =:ngqty, userID =:UserID, userdate = :userdate ');
            Add('where SCDate = :SCDate and SJXH = :SJXH and DepNo = :DepNo and GSBH = :GSBH');
            Add('and SCBH = :SCBH and gxlb = :gxlb and CC = :CC ;');
          end;
          ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
          ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
          ParamByName('DepNo').Value := tabSheet_DepID;
          ParamByName('GSBH').Value := main.Edit2.Text;
          ParamByName('SCBH').Value := tabSheet_OrderRY;
          ParamByName('gxlb').Value := TGXLB;
          if (lblsize.Caption = 'PO Quantity') then
            ParamByName('CC').Value := 'NULL'
          else
            ParamByName('CC').Value := lblsize.Caption; // Tlabel(ps.FindComponent('lblSize' + ln)).Caption;
          if MassQty.Checked = false then
            ParamByName('qty').Value := Qty
          else
            ParamByName('qty').Value := ScanQty;
          //Inc(TabletPairs);
          ParamByName('ngqty').Value := ngqty;
          ParamByName('userdate').Value := now;
          ParamByName('userid').Value := main.Edit1.Text;
        end;
        ExecSQL;

        //---QCR 和 QCRD 不論第一次新增或是更新 WOPR ，都要用新增的方式
        //--- 取得錯誤 原因主檔 QCR 的最新流水號
        Active := false;
        SQL.Clear;
        SQL.Add('select top 1 ProNo from QCR where SCDate = ''' + FormatDateTime('yyyy/mm/dd', sysDBtime) + ''' and SCBH=''' +
          tabSheet_OrderRY + ''' and GXLB=''' + TGXLB + ''' and DepNo=''' + tabSheet_DepID + ''' ');
        SQL.Add('and DATEDIFF(second, UserDate, GetDate())<600 order by ProNo desc ');
        //funcObj.WriteErrorLog(sql.Text);
        Active := true;
        if RecordCount > 0 then
        begin
          ProNo := FieldByName('ProNO').Value;
        end
        else
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('select top 1 ProNO from QCR order by ProNO Desc ;');
          Active := true;
          ProNo := StrToInt(FieldByName('ProNO').Value) + 1;
          //---QCR 新增NG資料主檔
          Active := false;
          SQL.Clear;
          SQL.Add('insert into QCR (ProNo, SCDate, SJXH, DepNo, GSBH,SCBH,GXLB,CC,USERID, USERDATE) ');
          SQL.Add('values (:ProNo,:SCDate,:SJXH,:DepNo,:GSBH,:SCBH,:GXLB,:CC,:USERID,:USERDATE);');

          ParamByName('ProNo').Value := Format('%.10d', [ProNo]);
          ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
          ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
          ParamByName('DepNo').Value := tabSheet_DepID;
          ParamByName('GSBH').Value := main.Edit2.Text;
          ParamByName('SCBH').Value := tabSheet_OrderRY;
          ParamByName('GXLB').Value := TGXLB;
          if (lblsize.Caption = 'PO Quantity') then
            ParamByName('CC').Value := 'NULL'
          else
            ParamByName('CC').Value := lblsize.Caption; // Tlabel(ps.FindComponent('lblSize' + ln)).Caption;
          ParamByName('userid').Value := main.Edit1.Text;
          ParamByName('userdate').Value := now;
          ExecSQL;
        end;

        //--- 新增錯誤原因細項 QCRD
        for i := 0 to (DefectList.Count - 1) do //---20151003 因應 允許同時多 NG原因
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('IF NOT EXISTS (Select ProNO from QCRD where ProNO=''' + Format('%.10d', [ProNo]) + ''' and YYBH=''' +
            DefectList.Names[i] + ''' )');
          SQL.Add('Begin');
          SQL.Add('  insert into QCRD (ProNo, YYBH, Qty,USERID, USERDATE)');
          SQL.Add('  values (''' + Format('%.10d', [ProNo]) + ''', ''' + DefectList.Names[i] + ''', ' +
            DefectList.ValueFromIndex[i] + ',''' + main.Edit1.Text + ''', GetDate())');
          SQL.Add('End Else');
          SQL.Add('Begin');
          SQL.Add('  Update QCRD set Qty=Qty+' + DefectList.ValueFromIndex[i] + ', UserID=''' + main.Edit1.Text +
            ''',UserDate=GetDate() where ProNO=''' + Format('%.10d', [ProNo]) + ''' and YYBH=''' + DefectList.Names[i] + ''' ');
          SQL.Add('End');
          //funcObj.WriteErrorLog(sql.Text);
          ExecSQL;
        end;
        //---所有變動資料無誤下方可執行下面最後一行
        Datebase.Commit;
      except on E: Exception do
        begin
          Datebase.Rollback;
          ShowMessage(E.Message);
        end;
      end;
    end;

    // 紀錄檢驗數
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('INSERT INTO QC_InspectRecord (DepNo, InspectDate) VALUES(:DepNo, GETDATE())');
      ParamByName('DepNo').Value := tabSheet_DepID;
      ExecSQL;
    end;

    //20210619 Danny 判斷是否符合發送通知條件
    CheckDefects(tabSheet_DepID, GDefect_YYBH);
  end;
  //更新介面
  if lblNGPair <> nil then
    lblNGPair.Caption := '(' + inttostr(strtoint(Copy(lblNGPair.Caption, 2, length(lblNGPair.Caption) - 2)) + 1) + ')'; // 數量+1
  if lblNGP <> nil then
    lblNGP.Caption := inttostr(strtoint(lblNGP.Caption) + 1); // 數量+1
  if (lblDailyNGPair <> nil) then
  begin
    lbTodayNG.Caption := IntToStr(StrToInt(Copy(lblDailyNGPair.Caption, 2, Length(lblDailyNGPair.Caption) - 2)) + 1);
    lblDailyNGPair.Caption := '(' + IntToStr(StrToInt(Copy(lblDailyNGPair.Caption, 2, Length(lblDailyNGPair.Caption) - 2)) + 1) +
      ')';
  end;
  //OKQty 更新介面，以量產掃描報工數量來更新OK Qty
  if MassQty.Checked = true then
  begin
    if lblRealPair <> nil then
    begin
      Qty := strtoint(Copy(lblRealSizePair.Caption, 2, length(lblRealSizePair.Caption) - 2));
      lblRealPair.Caption := inttostr(strtoint(lblRealPair.Caption) + (ScanQty - Qty)); //(ScanQty-Qty) 差異
    end;
    if lblRealSizePair <> nil then
      lblRealSizePair.Caption := '(' + inttostr(ScanQty) + ')';
  end;

  //Defect 數量重置0
  if DefectCK.Checked = false then //多個Defect點是1雙，然後自動歸零
    pnlCancelNG00Click(self);
  //
  DefectList.Free;

end;

procedure TAndonInputRev.imgSearchClick(Sender: TObject);
begin
end;

//---動態新增一個工作表 TabSheet
procedure TAndonInputRev.addTabSheet();
var
  tabSheet: TTabSheet;
begin
  //新增TabSheet分頁
  tabNum2ID := tabNum2ID + 1; //
  tabSheet := TTabSheet.Create(pgcContent);
  with tabSheet do
  begin
    try
      PageControl := pgcContent;
      Parent := pgcContent;
      Name := Format('ts%s%.2d', [FormatDateTime('hhnnsszz', sysDBtime), tabNum2ID]);
      Caption := DepName + '#' + OrderRY;
    finally
    end;
  end;
  pgcContent.SelectNextPage(true);
  //把訂單+Lean線ID+LeanName+GXLB+XieXing+DAOMH+XieMing 放在TabSheet Hint資訊裡面
  tabSheet.Hint := OrderRY + ',' + DepID + ',' + DepName + ',' + DepGXLB + ',' + XieXing + ',' + XieMing + ',' + DAOMH;
  //tabSheet.ShowHint:=true;
  //---下面準備要複製頁面組件
  with TLabel.Create(tabSheet) do //---訂單總數
  begin
    try
      Parent := tabSheet;
      Top := lblRyPair00.Top;
      Left := lblRyPair00.Left;
      Anchors := lblRyPair00.Anchors;
      Align := lblRyPair00.Align;
      Alignment := lblRyPair00.Alignment;
      Color := lblRyPair00.Color;
      AutoSize := lblRyPair00.AutoSize;
      Width := lblRyPair00.Width;
      Height := lblRyPair00.Height;
      Font := lblRyPair00.Font;
      Layout := lblRyPair00.Layout;
      Transparent := lblRyPair00.Transparent;
      Caption := '0';
      Name := Format('lblRyPair%.2d', [tabNum2ID]);
    finally
    end;
  end;
  //---已完成總數量
  with TLabel.Create(tabSheet) do
  begin
    try
      Parent := tabSheet;
      Top := lblRealPair00.Top;
      Left := lblRealPair00.Left;
      Anchors := lblRealPair00.Anchors;
      Align := lblRealPair00.Align;
      Alignment := lblRealPair00.Alignment;
      Color := lblRealPair00.Color;
      AutoSize := lblRealPair00.AutoSize;
      Width := lblRealPair00.Width;
      Height := lblRealPair00.Height;
      Font := lblRealPair00.Font;
      Layout := lblRealPair00.Layout;
      Transparent := lblRealPair00.Transparent;
      Caption := '0';
      Name := Format('lblRealPair%.2d', [tabNum2ID]);
    finally
    end;
  end;
  //---返修總數量
  with TLabel.Create(tabSheet) do
  begin
    try
      Parent := tabSheet;
      Top := lblReturnPair00.Top;
      Left := lblReturnPair00.Left;
      Anchors := lblReturnPair00.Anchors;
      Align := lblReturnPair00.Align;
      Alignment := lblReturnPair00.Alignment;
      Color := lblReturnPair00.Color;
      AutoSize := lblReturnPair00.AutoSize;
      Width := lblReturnPair00.Width;
      Height := lblReturnPair00.Height;
      Font := lblReturnPair00.Font;
      Layout := lblReturnPair00.Layout;
      Transparent := lblReturnPair00.Transparent;
      Visible := lblReturnPair00.Visible;
      Caption := '0';
      Name := Format('lblReturnPair%.2d', [tabNum2ID]);
    finally
    end;
  end;
  //--- NG 總數量
  with TLabel.Create(tabSheet) do
  begin
    try
      Parent := tabSheet;
      Top := lblNGPair00.Top;
      Left := lblNGPair00.Left;
      Anchors := lblNGPair00.Anchors;
      Align := lblNGPair00.Align;
      Alignment := lblNGPair00.Alignment;
      Color := lblNGPair00.Color;
      AutoSize := lblNGPair00.AutoSize;
      Width := lblNGPair00.Width;
      Height := lblNGPair00.Height;
      Font := lblNGPair00.Font;
      Layout := lblNGPair00.Layout;
      Transparent := lblNGPair00.Transparent;
      Caption := '0';
      Name := Format('lblNGPair%.2d', [tabNum2ID]);
    finally
    end;
  end;

  //---------Day mirror
  //--- lbTodayTitle
  with TLabel.Create(tabSheet) do
  begin
    try
      Parent := tabSheet;
      Top := lbTodayTitle00.Top;
      Left := lbTodayTitle00.Left;
      Anchors := lbTodayTitle00.Anchors;
      Align := lbTodayTitle00.Align;
      Alignment := lbTodayTitle00.Alignment;
      Color := lbTodayTitle00.Color;
      AutoSize := lbTodayTitle00.AutoSize;
      Width := lbTodayTitle00.Width;
      Height := lbTodayTitle00.Height;
      Font := lbTodayTitle00.Font;
      Layout := lbTodayTitle00.Layout;
      Transparent := lbTodayTitle00.Transparent;
      Caption := 'Today';
      Name := Format('lbTodayTitle%.2d', [tabNum2ID]);
    finally
    end;
  end;
  with TLabel.Create(tabSheet) do
  begin
    try
      Parent := tabSheet;
      Top := lbTodayOK00.Top;
      Left := lbTodayOK00.Left;
      Anchors := lbTodayOK00.Anchors;
      Align := lbTodayOK00.Align;
      Alignment := lbTodayOK00.Alignment;
      Color := lbTodayOK00.Color;
      AutoSize := lbTodayOK00.AutoSize;
      Width := lbTodayOK00.Width;
      Height := lbTodayOK00.Height;
      Font := lbTodayOK00.Font;
      Layout := lbTodayOK00.Layout;
      Transparent := lbTodayOK00.Transparent;
      Caption := '0';
      Name := Format('lbTodayOK%.2d', [tabNum2ID]);
    finally
    end;
  end;
  with TLabel.Create(tabSheet) do
  begin
    try
      Parent := tabSheet;
      Top := lbTodayNG00.Top;
      Left := lbTodayNG00.Left;
      Anchors := lbTodayNG00.Anchors;
      Align := lbTodayNG00.Align;
      Alignment := lbTodayNG00.Alignment;
      Color := lbTodayNG00.Color;
      AutoSize := lbTodayNG00.AutoSize;
      Width := lbTodayNG00.Width;
      Height := lbTodayNG00.Height;
      Font := lbTodayNG00.Font;
      Layout := lbTodayNG00.Layout;
      Transparent := lbTodayNG00.Transparent;
      Caption := '0';
      Name := Format('lbTodayNG%.2d', [tabNum2ID]);
    finally
    end;
  end;

  //---------------Size info 的底容器
  with TScrollBox.Create(tabSheet) do
  begin
    try
      Parent := tabSheet;
      Top := sbxPairList00.Top;
      Left := sbxPairList00.Left;
      Width := sbxPairList00.Width;
      Height := sbxPairList00.Height;
      Anchors := sbxPairList00.Anchors;
      Align := sbxPairList00.Align;
      Color := sbxPairList00.Color;
      Name := Format('sbxPairList%.2d', [tabNum2ID]);
    finally
    end;
  end;
  //-------------------QC info 的底容器
  with TPanel.Create(tabSheet) do
  begin
    try
      Parent := tabSheet;
      Top := pnlReason00.Top;
      Left := pnlReason00.Left;
      Width := pnlReason00.Width;
      Height := pnlReason00.Height;
      Anchors := pnlReason00.Anchors;
      Align := pnlReason00.Align;
      Color := pnlReason00.Color;
      Name := Format('pnlReason%.2d', [tabNum2ID]);
    finally
    end;
  end;
  //Cancel Defect數量歸零
  with TImage.Create(tabSheet) do
  begin
    try
      Parent := tabSheet;
      Top := pnlCancelNG00.Top;
      Left := pnlCancelNG00.Left;
      Width := pnlCancelNG00.Width;
      Height := pnlCancelNG00.Height;
      Picture := pnlCancelNG00.Picture;
      Stretch := True;
      Visible := pnlCancelNG00.Visible;
      Name := Format('pnlCancelNG%.2d', [tabNum2ID]);
      OnClick := pnlCancelNG00Click;
    finally
    end;
  end;
  pgcContent.ActivePage := tabSheet;
end;

procedure TAndonInputRev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (TabletPairs <> 0) then
    TabletTimerTimer(nil);
  //---delphi 在這個視窗關閉時不會釋放這些資源，所以手動釋放
  if arXH <> nil then
  begin
    arXH.Clear;
    arXH.Free;
    arXH := nil;
  end;
  Action := caFree; //---為了完整真正釋放此子視窗
end;

procedure TAndonInputRev.FormDestroy(Sender: TObject);
begin
  AndonInputRev := nil; //---為了完整真正釋放此子視窗，配合 Action := caFree;
end;

procedure TAndonInputRev.pgcContentChange(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to pgcContent.PageCount - 1 do
  begin
    pgcContent.Pages[i].Highlighted := false;
  end;
  pgcContent.ActivePage.Highlighted := true;
  ShowInfo();
end;

procedure TAndonInputRev.imgAdvancedClick(Sender: TObject);
var
  mp: TPoint;
begin
  mp := Mouse.CursorPos;
  pmAdvanced.Popup(mp.X, mp.Y);
end;

procedure TAndonInputRev.pnlCancelNG00Click(Sender: TObject);
var
  pnlReason, pnlReason_sub: TPanel;
  TabSheet: TTabSheet;
  i, j: integer;
  Num2ID, tmp: string;
begin
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  pnlReason := TabSheet.FindComponent('pnlReason' + Num2ID) as TPanel;
  if pnlReason <> nil then
  begin
    for i := 0 to pnlReason.ControlCount - 1 do
    begin
      if pnlReason.Controls[i] is TPanel then //容器
      begin
        pnlReason_sub := pnlReason.Controls[i] as TPanel;
        for j := 0 to pnlReason_sub.ControlCount - 1 do //子項目
        begin //RightStr(edtReason.Name, 4))
          tmp := Copy(pnlReason_sub.Controls[j].Name, 0, 8);
          if (pnlReason_sub.Controls[j] is TLabel) and (tmp = 'edtReason') then //Defect 數量
          begin
            TLabel(pnlReason_sub.Controls[j]).Caption := '0';
            break;
          end;
        end;
      end;
    end;
  end;
end;
{
procedure TAndonInputRev.pnlCancelNG00Click(Sender: TObject);
var  pnlReason,pnlReason_sub:TPanel;
     TabSheet:TTabSheet;
     i,j:integer;
     Num2ID:String;
begin
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  pnlReason:=TabSheet.FindComponent('pnlReason'+Num2ID) as TPanel;
  if pnlReason<>nil then
  begin
    for i := 0 to pnlReason.ControlCount - 1 do
    begin
      if pnlReason.Controls[i] is TPanel then    //容器
      begin
        pnlReason_sub:=pnlReason.Controls[i] as TPanel;
        for j:=0 to pnlReason_sub.ControlCount - 1 do //子項目
        begin
          if pnlReason_sub.Controls[j] is TEdit then  //Defect 數量
          begin
            TEdit(pnlReason_sub.Controls[j]).Text := '0';
            break;
          end;
        end;
      end;
    end;
  end;
end;
}

procedure TAndonInputRev.mniMQRBDPClick(Sender: TObject);
begin
  MQRBD := TMQRBD.Create(self);
  with MQRBD do
  begin
    Position := poOwnerFormCenter;
    ShowModal; //---維持最上層，強制點選回應
    Close;
    Free;
  end;
  MQRBD := nil;
end;

procedure TAndonInputRev.mniQCOnTime_QueryClick(Sender: TObject);
begin
  with TQCOnTime_Query.Create(self) do
    try
      Position := poOwnerFormCenter;
      ShowModal; //---維持最上層，強制點選回應
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
end;

procedure TAndonInputRev.pnlReturn0001Click(Sender: TObject);
var
  Qty: integer;
  Num2ID, Num4ID: string;
  TabSheet: TTabSheet;
  //
  sbxPairList: TScrollBox;
  pnlSize: TPanel;
  lblSize: TLabel;
  lblReturnPair: TLabel;
  pnlReturn: TPanel;
  lblReturnSizePair: TLabel;
  //
  tabInfo: TStringlist;
  tabSheet_DepID, tabSheet_OrderRY: string;
begin
  TabSheet := pgcContent.ActivePage;
  //訂單和部門資訊
  tabInfo := TStringlist.Create;
  tabInfo := funcObj.SplitString(TabSheet.Hint, ',');
  tabSheet_OrderRY := tabInfo.Strings[0];
  tabSheet_DepID := tabInfo.Strings[1];
  tabInfo.Free;
  //
  Num2ID := RightStr(TabSheet.Name, 2);
  if Sender is TPanel then
  begin
    Num4ID := RightStr(TPanel(Sender).Name, 4);
  end;
  if Sender is TLabel then
  begin
    Num4ID := RightStr(TLabel(Sender).Name, 4);
  end;
  //找到物件
  sbxPairList := TabSheet.FindComponent('sbxPairList' + Num2ID) as TScrollBox;
  lblReturnPair := TabSheet.FindComponent('lblReturnPair' + Num2ID) as TLabel;
  pnlSize := sbxPairList.FindComponent('pnlSize' + Num4ID) as TPanel; // Find TLabel Obj
  lblSize := pnlSize.FindComponent('lblSize' + Num4ID) as TLabel; // Find TLabel Obj
  pnlReturn := sbxPairList.FindComponent('pnlReturn' + Num4ID) as TPanel; // Find TLabel Obj
  lblReturnSizePair := pnlReturn.FindComponent('lblReturnSizePair' + Num4ID) as TLabel; // Find TLabel Obj

  //更新資料庫
  with qryTmp do
  begin
    //---順便判斷有無以存在資料（決定使用Insert或Update）
    Active := false;
    with SQL do
    begin
      SQL.Clear;
      Add('select qty, reqty from WOPR');
      Add('Where SCDate = :SCDate and SJXH = :SJXH ');
      Add('and DepNo = :DepNo and GSBH = :GSBH ');
      Add('and SCBH = :SCBH and gxlb = :gxlb and CC = :CC ;');
    end;
    ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
    ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
    ParamByName('DepNo').Value := tabSheet_DepID;
    ParamByName('GSBH').Value := main.Edit2.Text;
    ParamByName('SCBH').Value := tabSheet_OrderRY;
    ParamByName('gxlb').Value := TGXLB;
    if (lblsize.Caption = 'PO Quantity') then
      ParamByName('CC').Value := 'NULL'
    else
      ParamByName('CC').Value := lblsize.Caption; //
    Active := true;
    if RecordCount = 0 then
    begin
      Active := false;
      with SQL do
      begin
        Clear;
        Add('INSERT INTO WOPR');
        Add('(SCDate, SJXH, DepNo, GSBH, SCBH, gxlb, CC, qty, ngqty, reqty, userid, userdate)');
        Add('VALUES(:SCDate, :SJXH, :DepNo, :GSBH, :SCBH, :gxlb, :CC, 0, 0, :reqty, :userid, :userdate );');
      end;
      ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
      ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
      ParamByName('DepNo').Value := tabSheet_DepID;
      ParamByName('GSBH').Value := main.Edit2.Text;
      ParamByName('SCBH').Value := tabSheet_OrderRY;
      ParamByName('gxlb').Value := TGXLB;
      ParamByName('reqty').Value := 1;
      if (lblsize.Caption = 'PO Quantity') then
        ParamByName('CC').Value := 'NULL'
      else
        ParamByName('CC').Value := lblsize.Caption;
      ParamByName('userid').Value := main.Edit1.Text;
      ParamByName('userdate').Value := Now;
    end
    else
    begin
      Qty := FieldByName('reqty').Value + 1;
      with SQL do
      begin
        Clear;
        Add('update wopr set reqty =:reqty, userid =:userid, userdate = :userdate ');
        Add('where SCDate = :SCDate and SJXH = :SJXH and DepNo = :DepNo and GSBH = :GSBH');
        Add('and SCBH = :SCBH and gxlb = :gxlb and CC = :CC ;');
      end;
      ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
      ParamByName('SJXH').Value := arXH[cbbWorkTime.ItemIndex];
      ParamByName('DepNo').Value := tabSheet_DepID;
      ParamByName('GSBH').Value := main.Edit2.Text;
      ParamByName('SCBH').Value := tabSheet_OrderRY;
      ParamByName('gxlb').Value := TGXLB;
      ParamByName('reqty').Value := qty;
      if (lblsize.Caption = 'PO Quantity') then
        ParamByName('CC').Value := 'NULL'
      else
        ParamByName('CC').Value := lblsize.Caption;
      ParamByName('userid').Value := main.Edit1.Text;
      ParamByName('userdate').Value := now;
    end;
    ExecSQL;
  end;
  //更新介面
  if lblReturnSizePair <> nil then
    lblReturnSizePair.Caption := '(' + inttostr(strtoint(Copy(lblReturnSizePair.Caption, 2, length(lblReturnSizePair.Caption) -
      2)) + 1) + ')'; // 數量+1
  if lblReturnPair <> nil then
    lblReturnPair.Caption := inttostr(strtoint(lblReturnPair.Caption) + 1);
end;

procedure TAndonInputRev.edtLineClick(Sender: TObject);
begin
  with TQCOnTime_GXLB.Create(self) do
    try
      Position := poOwnerFormCenter;
      ShowModal; //---維持最上層，強制點選回應
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
end;

procedure TAndonInputRev.CheckDefects(Lean, Defect: string);
const
  URL = 'http://192.168.23.246/jqwebclient/ProjectControl/EEPMethod.aspx';
var
  Json: TStringStream;
  Response, RequestParams1, RequestParams2: string;
begin
  with QNotify do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Type, NotifyDate FROM (');
    SQL.Add('  SELECT Type, NotifyDate, ROW_NUMBER() OVER(PARTITION BY Type ORDER BY NotifyDate DESC) AS Seq FROM SYS_NOTIFYHIS');
    SQL.Add('  WHERE DepNo = ''' + Lean + ''' AND YYBH = ''' + Defect + '''');
    SQL.Add(') AS SYS_NOTIFYHIS');
    SQL.Add('WHERE Seq = 1');
    Active := true;
  end;

  with qryTmp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT QC_Notify.WechatTopicID, SUBSTRING(BDepartment.DepName, 1, 10) AS DepName, QCBLYY.YWSM, QCBLYY.ZWSM, SUM(Qty) AS NGQty FROM QCR');
    SQL.Add('LEFT JOIN QCRD ON QCRD.ProNo = QCR.ProNo');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = QCR.DepNo');
    SQL.Add('LEFT JOIN QC_Notify ON QC_Notify.DepNo = QCR.DepNo AND QC_Notify.Type = ''QC''');
    SQL.Add('LEFT JOIN QCBLYY ON QCBLYY.YYBH = QCRD.YYBH AND QCBLYY.GSBH = QCR.GSBH');
    SQL.Add('WHERE CONVERT(VARCHAR, QCR.SCDate, 111) = CONVERT(VARCHAR, GETDATE(), 111)');
    SQL.Add('AND QCR.DepNo = ''' + Lean + ''' AND QCRD.YYBH = ''' + Defect + '''');
    SQL.Add('AND QCRD.USERDATE BETWEEN DATEADD(HOUR, -1, GETDATE()) AND GETDATE()');
    if (QNotify.Locate('Type', '1Hour', [])) then
      SQL.Add('AND QCRD.USERDATE > ''' + FormatDateTime('yyyy/MM/dd hh:mm:ss', QNotify.FieldByName('NotifyDate').AsDateTime) +
        '''');
    SQL.Add('GROUP BY QC_Notify.WechatTopicID, SUBSTRING(BDepartment.DepName, 1, 10), QCBLYY.YWSM, QCBLYY.ZWSM');
    Active := true;

    if (FieldByName('NGQty').AsInteger >= 20) then
    begin
      Json := TStringStream.Create('');
      try
        QAlarm.Active := false;
        QAlarm.SQL.Clear;
        QAlarm.SQL.Add('SELECT ADLine, ADMachine, DCBox, Token FROM QC_Andon');
        QAlarm.SQL.Add('WHERE DepNo = ''' + Lean + ''' AND Defect = ''' + Defect + ''' AND GXLB = ''AR''');
        QAlarm.Active := true;

        RequestParams1 := UTF8Encode('?md=WeChat&tp=1Hour&t=' + FieldByName('WechatTopicID').AsString + '&id=' + Lean + '&l=' +
          FieldByName('DepName').AsString + '&did=' + Defect + '&qty=' + FieldByName('NGQty').AsString);
        RequestParams2 := UTF8Encode('?md=WeChat&tp=1Hour&t=2366&id=' + Lean + '&l=' + FieldByName('DepName').AsString + '&did='
          + Defect + '&qty=' + FieldByName('NGQty').AsString);
        idHTTP1.Request.ContentType := 'application/json';
        try
          if (FieldByName('WechatTopicID').AsString <> '') then
            Response := idHTTP1.Post(URL + RequestParams1, Json);
          Response := idHTTP1.Post(URL + RequestParams2, Json);
        except on E: Exception do
            ShowMessage('Error on request: Cannot connect to server.');
        end;

        while not QAlarm.Eof do
        begin
          RequestParams1 := UTF8Encode('?md=Andon&l=' + QAlarm.FieldByName('ADLine').AsString + '&m=' +
            QAlarm.FieldByName('ADMachine').AsString + '&b=' + QAlarm.FieldByName('DCBox').AsString + '&t=' +
            QAlarm.FieldByName('Token').AsString);

          try
            Response := idHTTP1.Post(URL + RequestParams1, Json);
          except on E: Exception do
              ShowMessage('Error on request: Cannot connect to server.');
          end;
          QAlarm.Next;
        end;
      finally
        Json.Free();
      end;
    end;

    Active := false;
    SQL.Clear;
    SQL.Add('SELECT WechatTopicID, DepName, YWSM, ZWSM, [3~2], [2~1], [1~0] FROM (');
    SQL.Add('  SELECT WechatTopicID, DepName, YWSM, ZWSM,');
    SQL.Add('  ISNULL(MAX(CASE WHEN Seq = ''3~2'' THEN NGQty END), 0) AS ''3~2'',');
    SQL.Add('  ISNULL(MAX(CASE WHEN Seq = ''2~1'' THEN NGQty END), 0) AS ''2~1'',');
    SQL.Add('  ISNULL(MAX(CASE WHEN Seq = ''1~0'' THEN NGQty END), 0) AS ''1~0'' FROM (');
    SQL.Add('    SELECT QC_Notify.WechatTopicID, SUBSTRING(BDepartment.DepName, 1, 10) AS DepName, QCBLYY.YWSM, QCBLYY.ZWSM, SUM(Qty) AS NGQty,');
    SQL.Add('    CASE WHEN QCRD.USERDATE >= DATEADD(HOUR, -3, GETDATE()) AND QCRD.USERDATE < DATEADD(HOUR, -2, GETDATE()) THEN ''3~2'' ELSE');
    SQL.Add('    CASE WHEN QCRD.USERDATE >= DATEADD(HOUR, -2, GETDATE()) AND QCRD.USERDATE < DATEADD(HOUR, -1, GETDATE()) THEN ''2~1'' ELSE ''1~0'' END END AS Seq FROM QCR');
    SQL.Add('    LEFT JOIN QCRD ON QCRD.ProNo = QCR.ProNo');
    SQL.Add('    LEFT JOIN BDepartment ON BDepartment.ID = QCR.DepNo');
    SQL.Add('    LEFT JOIN QC_Notify ON QC_Notify.DepNo = QCR.DepNo AND QC_Notify.Type = ''QC''');
    SQL.Add('    LEFT JOIN QCBLYY ON QCBLYY.YYBH = QCRD.YYBH AND QCBLYY.GSBH = QCR.GSBH');
    SQL.Add('    WHERE CONVERT(VARCHAR, QCR.SCDate, 111) = CONVERT(VARCHAR, GETDATE(), 111)');
    SQL.Add('    AND QCR.DepNo = ''' + Lean + ''' AND QCRD.YYBH = ''' + Defect + '''');
    SQL.Add('    AND QCRD.USERDATE BETWEEN DATEADD(HOUR, -3, GETDATE()) AND GETDATE()');
    if (QNotify.Locate('Type', '3Hour', [])) then
      SQL.Add('    AND QCRD.USERDATE > ''' + FormatDateTime('yyyy/MM/dd hh:mm:ss', QNotify.FieldByName('NotifyDate').AsDateTime)
        +
        '''');
    SQL.Add('    GROUP BY QC_Notify.WechatTopicID, SUBSTRING(BDepartment.DepName, 1, 10), QCBLYY.YWSM, QCBLYY.ZWSM,');
    SQL.Add('    CASE WHEN QCRD.USERDATE >= DATEADD(HOUR, -3, GETDATE()) AND QCRD.USERDATE < DATEADD(HOUR, -2, GETDATE()) THEN ''3~2'' ELSE');
    SQL.Add('    CASE WHEN QCRD.USERDATE >= DATEADD(HOUR, -2, GETDATE()) AND QCRD.USERDATE < DATEADD(HOUR, -1, GETDATE()) THEN ''2~1'' ELSE ''1~0'' END END');
    SQL.Add('  ) AS QCR');
    SQL.Add('  GROUP BY WechatTopicID, DepName, YWSM, ZWSM');
    SQL.Add(') AS QCR');
    SQL.Add('WHERE QCR.[1~0] > QCR.[2~1] AND QCR.[2~1] > QCR.[3~2] AND QCR.[3~2] > 0');
    Active := true;

    if (RecordCount > 0) then
    begin
      Json := TStringStream.Create('');
      RequestParams1 := UTF8Encode('?md=WeChat&tp=3Hour&t=' + FieldByName('WechatTopicID').AsString + '&id=' + Lean + '&l=' +
        FieldByName('DepName').AsString + '&did=' + Defect);
      RequestParams2 := UTF8Encode('?md=WeChat&tp=3Hour&t=2366&id=' + Lean + '&l=' + FieldByName('DepName').AsString + '&did=' +
        Defect);

      try
        idHTTP1.Request.ContentType := 'application/json';
        try
          if (FieldByName('WechatTopicID').AsString <> '') then
            Response := idHTTP1.Post(URL + RequestParams1, Json);
          Response := idHTTP1.Post(URL + RequestParams2, Json);
        except on E: Exception do
            ShowMessage('Error on request: Cannot connect to server');
        end;
      finally
        Json.Free();
      end;
    end;

    Active := false;
    SQL.Clear;
  end;
end;

procedure TAndonInputRev.TabletTimerTimer(Sender: TObject);
begin
  if (TabletPairs > 0) then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('INSERT INTO SMZL_Tablet (SCBH, Pairs, DepNo, ScanDate, UserID, YN)');
      SQL.Add('VALUES (''' + edtRY.Text + ''', ' + IntToStr(TabletPairs) + ', ''' + DepID + ''', GetDate(), ''' + main.Edit1.Text
        + ''', ''1'')');
      ExecSQL;
    end;

    TabletPairs := 0;
  end;
end;

procedure TAndonInputRev.imgAndon00Click(Sender: TObject);
const
  URL = 'http://192.168.23.246/jqwebclient/ProjectControl/EEPMethod.aspx';
var
  Json: TStringStream;
  Response, RequestParams: string;
begin
  Json := TStringStream.Create('');
  try
    QAlarm.Active := false;
    QAlarm.SQL.Clear;
    QAlarm.SQL.Add('SELECT ADLine, ADMachine, DCBox, Token FROM QC_Andon');
    QAlarm.SQL.Add('WHERE DepNo = ''' + DepID + ''' AND GXLB = ''AR''');
    QAlarm.Active := true;

    while not QAlarm.Eof do
    begin
      RequestParams := UTF8Encode('?md=ResetAndon&l=' + QAlarm.FieldByName('ADLine').AsString + '&m=' +
        QAlarm.FieldByName('ADMachine').AsString + '&b=' + QAlarm.FieldByName('DCBox').AsString + '&t=' +
        QAlarm.FieldByName('Token').AsString);

      try
        Response := idHTTP1.Post(URL + RequestParams, Json);
      except on E: Exception do
          ShowMessage('Error on request: Cannot connect to server.');
      end;
      QAlarm.Next;
    end;
  finally
    Json.Free();
  end;
  ShowMessage('Request sent successfully');
end;

procedure TAndonInputRev.pnlDailyNG0001Enter(Sender: TObject);
begin
  Showmessage('OK...');
end;

end.
