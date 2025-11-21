unit MA_Inspection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, ComCtrls, StrUtils, jpeg, Spin;

type
  TMA_Inspection = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtLine: TEdit;
    Label2: TLabel;
    edtRY: TEdit;
    btnRY: TButton;
    QNGReason: TQuery;
    QSearch: TQuery;
    QUpdate: TQuery;
    Label6: TLabel;
    cbbWorkTime: TComboBox;
    rbVIT: TRadioButton;
    rbENG: TRadioButton;
    pgcContent: TPageControl;
    ts00: TTabSheet;
    sbxPairList00: TScrollBox;
    imgClose00: TImage;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    imgReport: TImage;
    imgQC: TImage;
    pnlReason00: TPanel;
    pnlReason0001: TPanel;
    lblReasonA0001: TLabel;
    lblReasonB0001: TLabel;
    ImgReason0001: TImage;
    edtReason0001: TSpinEdit;
    Query1: TQuery;
    IinfoPanel00: TPanel;
    InspectionQtyLab00: TLabel;
    DefectQtyLab00: TLabel;
    ProductionQtyLab00: TLabel;
    ProdQtyLabel00: TLabel;
    imgSave00: TImage;
    TodayDefectQtyLab00: TLabel;
    TodayQtyLabel00: TLabel;
    ArticleLabel00: TLabel;
    RYLabel00: TLabel;
    AcceptLab00: TLabel;
    AccQtyLab00: TLabel;
    RejectLab00: TLabel;
    RejQtyLab00: TLabel;
    RYQtyLabel00: TLabel;
    Label3: TLabel;
    DefectQtyEdit00: TEdit;
    InspecQtyCombo00: TComboBox;
    InspecQty: TEdit;
    ComboBox1: TComboBox;
    CountryLabel00: TLabel;
    DevTypeLabel00: TLabel;
    Query2: TQuery;
    CartonQtyLab00: TLabel;
    CartontQtyEdit00: TEdit;
    DDZL: TQuery;
    ProdQty: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label4: TLabel;
    Button3: TButton;
    CheckBox1: TCheckBox;
    ComboBox2: TComboBox;
    ACQtyLab00: TLabel;
    ACQty: TEdit;
    REQtyLab00: TLabel;
    REQty: TEdit;
    Last_Date: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure edtLineClick(Sender: TObject);
    procedure edtRYClick(Sender: TObject);
    procedure btnRYClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure imgSave00Click(Sender: TObject);
    procedure imgClose00Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure RB2Click(Sender: TObject);
    procedure TakePhotoImageClick(Sender: TObject);
    procedure imgQCClick(Sender: TObject);
    procedure imgReportClick(Sender: TObject);
    procedure InspecQtyCombo00Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ProdQtyChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    tabNum2ID: integer;
    hourago: TDateTime;
    hournow: TDateTime;
    { Private declarations }
    procedure Save_WOPR_MA();
    procedure Save_WOPR_MA_Defect();
    procedure ClearChildObject();
    procedure AC_or_RE();
    procedure AC_or_RE_50();
  public
    sysDBtime: TDateTime;
    HIorDI:String;
    DepID_G:String;
    Openrytime: String;
    DDBH_CHI: String;
    LatestID: String;
    TenLoi: String;
    SLoi:String;
    ProQty: String;
    ProQty_disconnected: String;
    ID:String;
    AccRejec:String;
    InspecQtyTotal:String;
    { Public declarations }
    procedure Load_WOPR_MA();
    procedure Load_DI_HI();
    procedure Show_WOPR_MA_Total();
    //
    procedure addTabSheet();
    procedure ShowChildObject();
    procedure ShowChildObject_Defect();
    //procedure UpData_Defect();
    procedure addQCInfo(ri: integer; xYYBH: string; xWSM: string; DefectQty:string);
    Function Save_WOPR_MA_Defect_Single(YYBH:string;Qty:String):String;
    Function Save_WOPR_MA_Thung (YYBH:string;Qty:String):String;
  end;

var
  MA_Inspection: TMA_Inspection;

implementation
  uses main1, MA_Inspection_Dep1, MA_Inspection_RY1,
       MA_Inspectiontakephoto1, MA_Inspection_rpt1, MA_Inspection_Showimg1, FunUnit;
       
{$R *.dfm}

procedure TMA_Inspection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMA_Inspection.FormDestroy(Sender: TObject);
begin
  MA_Inspection:=nil;
end;

procedure TMA_Inspection.ClearChildObject();
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
  Num2ID:=RightStr(TabSheet.Name, 2);
  sbxPairList := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
  pnlReason := TabSheet.FindChildControl('pnlReason'+Num2ID) as TPanel;
  //--- 清除Size Info先前動態產生的物件 --Size info ---------------
  removeP:
  for i := 0 to sbxPairList.ControlCount - 1do
  begin
    sbxPairList.Controls[i].free;
    goto removeP;
  end;
  //--- 清除Defect先前動態產生的物件 --QC info  ---------------------
  removeQC:
  for i := 0 to pnlReason.ControlCount - 1 do
  begin
    //if pnlReason.Controls[i].Name<>'pnlReason0000' then
    pnlReason.Controls[i].free;
    goto removeQC;
  end;
end;
//

procedure TMA_Inspection.ShowChildObject_Defect();
var i:integer;
    TabSheet:TTabSheet;
    TabInfo:TStringlist;
    DDBH, DepID, GXLB , SJXH:String;
begin
  //
  TabSheet := pgcContent.ActivePage;
  TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
  //tabSheet.Hint:=edtRY.Text+','+DepID_G+','+edtLine.Text+','+HIorDI+','+Copy(cbbWorkTime.Text,1,2);
  if (tabInfo.Count >= 5) then
  begin
   DDBH := tabInfo.Strings[0];
   DepID := tabInfo.Strings[1];
   GXLB:= tabInfo.Strings[3];
   SJXH:= tabInfo.Strings[4];
  end;
  TabInfo.free;
  //
  with QSearch do
  begin
    Active:=false;
    SQL.Clear;
    if CheckBox1.Checked=false then
    begin
      if (rbENG.Checked) then
        SQL.Add('SELECT QCMAYY.YYBH, QCMAYY.YWSM AS WSM, ISNULL(QCMAD.Qty, 0) AS DefectQty FROM QCMAYY')
      else
        SQL.Add('SELECT QCMAYY.YYBH, QCMAYY.ZWSM AS WSM, ISNULL(QCMAD.Qty, 0) AS DefectQty FROM QCMAYY');
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT QCMAD.YYBH, SUM(Qty) AS Qty FROM QCMA');
      SQL.Add('  LEFT JOIN QCMAD ON QCMAD.ProNo = QCMA.ProNo');
      SQL.Add('  WHERE QCMA.SCBH = ''' + DDBH + ''' AND QCMA.GXLB = '''+GXLB+''' ');
      SQL.Add('  AND QCMA.SCDate = ''' + FormatDateTime('yyyy/MM/dd', Date) + ''' and SJXH='''+Copy(cbbWorkTime.Text,1,2)+''' ');
      SQL.Add('      and QCMA.DepNo='''+DepID+''' ');
      SQL.Add('  GROUP BY QCMAD.YYBH');
      SQL.Add(') AS QCMAD ON QCMAD.YYBH = QCMAYY.YYBH');
      SQL.Add('WHERE QCMAYY.DFL = '''+GXLB+''' AND QCMAYY.GSBH = ''' + main.Edit2.text + ''' ');
      SQL.Add('ORDER BY QCMAYY.YYBH');
    end else
    begin
      if (rbENG.Checked) then
        SQL.Add('SELECT QCMAYY.YYBH, QCMAYY.YWSM AS WSM, ISNULL(QCMAYY_temporary.Qty, 0) AS DefectQty from QCMAYY')
      else
        SQL.Add('SELECT QCMAYY.YYBH, QCMAYY.ZWSM AS WSM, ISNULL(QCMAYY_temporary.Qty, 0) AS DefectQty from QCMAYY');

      SQL.Add('left join QCMAYY_temporary on QCMAYY_temporary.YYBH=QCMAYY.ZWSM');
       SQL.Add('WHERE QCMAYY.DFL = '''+GXLB+''' AND QCMAYY.GSBH = ''' + main.Edit2.text + ''' ');
      SQL.Add('ORDER BY QCMAYY.YYBH');
    end;
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;

    //產生Defect  相關物件
    for i := 1 to RecordCount do
    begin
        if CheckBox1.Checked=false then
          addQCInfo(i, FieldByName('YYBH').Value, FieldByName('WSM').Value, '0')
        else
          addQCInfo(i, FieldByName('YYBH').Value, FieldByName('WSM').Value, FieldByName('DefectQty').Value);
      Next;
    end;
    Active := false;
  end;

end;

//---動態新增一個工作表 TabSheet
procedure TMA_Inspection.addTabSheet();
var
  tabSheet: TTabSheet;
  ScrollBox: TScrollBox;
  Panel,PanelReason: TPanel;
begin

  //新增TabSheet分頁
  tabNum2ID:=tabNum2ID+1;//
  tabSheet:=TTabSheet.Create(pgcContent);
  with tabSheet do
  begin
    try
      PageControl := pgcContent;
      Parent:=pgcContent;
      Name := Format('ts%s%.2d', [FormatDateTime('hhnnsszz', sysDBtime), tabNum2ID]);
      Caption:=edtLine.Text+'#'+edtRY.Text;
    finally
    end;
  end;
  pgcContent.SelectNextPage(true);
  //把訂單+Lean線ID+LeanName+GXLB+SJXH 放在TabSheet Hint資訊裡面
  tabSheet.Hint:=edtRY.Text+','+DepID_G+','+edtLine.Text+','+HIorDI+','+Copy(cbbWorkTime.Text,1,2);
  //tabSheet.ShowHint:=true;
  //---下面準備要複製頁面組件
  //---------------Size info 的底容器
  ScrollBox:=TScrollBox.Create(tabSheet);
  with ScrollBox do
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
  Panel:=TPanel.Create(ScrollBox);
  with Panel do
  begin
    try
      Parent := ScrollBox;
      Top := IinfoPanel00.Top;
      Left := IinfoPanel00.Left;
      Anchors := IinfoPanel00.Anchors;
      Align := IinfoPanel00.Align;
      Alignment := IinfoPanel00.Alignment;
      Color := IinfoPanel00.Color;
      AutoSize := IinfoPanel00.AutoSize;
      Width := IinfoPanel00.Width;
      Height := IinfoPanel00.Height;
      Font := IinfoPanel00.Font;
      Name := Format('IinfoPanel%.2d', [tabNum2ID]);
      Caption:='';
    finally
    end;
  end;
  //Defect 容器
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
  with DDZL do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select DDBH');
     SQL.Add('From DDZL');
     SQL.Add('where 1=1 and DDBH='''+edtRY.Text+''' and  DDGB in (''CHI'')');
     //funcobj.WriteErrorLog(sql.Text);
     active:=true;
  end;
  if DDZL.RecordCount > 0 then
    DDBH_CHI:=DDZL.FieldByName('DDBH').AsString
  else
    DDBH_CHI:='';
  //
  pgcContent.ActivePage := tabSheet;
  ShowChildObject();
  ShowChildObject_Defect();
end;
procedure TMA_Inspection.ShowChildObject();
var Num2ID:String;
    TabSheet: TTabSheet;
    ScrollBox: TScrollBox;
    Panel:TPanel;
begin
  //---取得母容器物件
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
  Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
  //
  with TLabel.Create(Panel) do //---今天總Defect數
  begin
    try
      Parent := Panel;
      Top := TodayQtyLabel00.Top;
      Left := TodayQtyLabel00.Left;
      Anchors := TodayQtyLabel00.Anchors;
      Align := TodayQtyLabel00.Align;
      Alignment := TodayQtyLabel00.Alignment;
      Color := TodayQtyLabel00.Color;
      AutoSize := TodayQtyLabel00.AutoSize;
      Width := TodayQtyLabel00.Width;
      Height := TodayQtyLabel00.Height;
      Font := TodayQtyLabel00.Font;
      Layout := TodayQtyLabel00.Layout;
      Transparent := TodayQtyLabel00.Transparent;
      Caption := '0';
      Name := Format('TodayQtyLabel%.2d', [tabNum2ID]);
    finally
    end;
  end;

  with TLabel.Create(Panel) do //---訂單RY
  begin
    try
      Parent := Panel;
      Top := RYLabel00.Top;
      Left := RYLabel00.Left;
      Anchors := RYLabel00.Anchors;
      Align := RYLabel00.Align;
      Alignment := RYLabel00.Alignment;
      Color := RYLabel00.Color;
      AutoSize := RYLabel00.AutoSize;
      Width := RYLabel00.Width;
      Height := RYLabel00.Height;
      Font := RYLabel00.Font;
      Layout := RYLabel00.Layout;
      Transparent := RYLabel00.Transparent;
      Caption := 'RY';
      Name := Format('RYLabel%.2d', [tabNum2ID]);
    finally
    end;
  end;
  with TLabel.Create(Panel) do //---訂單Country
  begin
    try
      Parent := Panel;
      Top := CountryLabel00.Top;
      Left := CountryLabel00.Left;
      Anchors := CountryLabel00.Anchors;
      Align := CountryLabel00.Align;
      Alignment := CountryLabel00.Alignment;
      Color := CountryLabel00.Color;
      AutoSize := CountryLabel00.AutoSize;
      Width := CountryLabel00.Width;
      Height := CountryLabel00.Height;
      Font := CountryLabel00.Font;
      Layout := CountryLabel00.Layout;
      Transparent := CountryLabel00.Transparent;
      Caption := 'Country';
      Name := Format('CountryLabel%.2d', [tabNum2ID]);
    finally
    end;
  end;
  with TLabel.Create(Panel) do //---訂單DevType
  begin
    try
      Parent := Panel;
      Top := DevTypeLabel00.Top;
      Left := DevTypeLabel00.Left;
      Anchors := DevTypeLabel00.Anchors;
      Align := DevTypeLabel00.Align;
      Alignment := DevTypeLabel00.Alignment;
      Color := DevTypeLabel00.Color;
      AutoSize := DevTypeLabel00.AutoSize;
      Width := DevTypeLabel00.Width;
      Height := DevTypeLabel00.Height;
      Font := DevTypeLabel00.Font;
      Layout := DevTypeLabel00.Layout;
      Transparent := DevTypeLabel00.Transparent;
      Caption := 'DevType';
      Name := Format('DevTypeLabel%.2d', [tabNum2ID]);
    finally
    end;
  end;


  with TButton.Create(Panel) do //---訂單DevType
  begin
    try
      Parent := Panel;
      Top := Button1.Top;
      Left := Button1.Left;
      Anchors := Button1.Anchors;
      Align := Button1.Align;
      Width := Button1.Width;
      Height := Button1.Height;
      Font := Button1.Font;
      Caption := 'Refresh';
      //Name := Format('Button1%.2d', [tabNum2ID]);
      OnClick := Button1Click;
    finally
    end;
  end;

  with TLabel.Create(Panel) do //---訂單Article
  begin
    try
      Parent := Panel;
      Top := ArticleLabel00.Top;
      Left := ArticleLabel00.Left;
      Anchors := ArticleLabel00.Anchors;
      Align := ArticleLabel00.Align;
      Alignment := ArticleLabel00.Alignment;
      Color := ArticleLabel00.Color;
      AutoSize := ArticleLabel00.AutoSize;
      Width := ArticleLabel00.Width;
      Height := ArticleLabel00.Height;
      Font := ArticleLabel00.Font;
      Layout := ArticleLabel00.Layout;
      Transparent := ArticleLabel00.Transparent;
      Caption := 'Article';
      Name := Format('ArticleLabel%.2d', [tabNum2ID]);
    finally
    end;
  end;
  with TLabel.Create(Panel) do //---Accept Label
  begin
    try
      Parent := Panel;
      Top := AcceptLab00.Top;
      Left := AcceptLab00.Left;
      Anchors := AcceptLab00.Anchors;
      Align := AcceptLab00.Align;
      Alignment := AcceptLab00.Alignment;
      Color := AcceptLab00.Color;
      AutoSize := AcceptLab00.AutoSize;
      Width := AcceptLab00.Width;
      Height := AcceptLab00.Height;
      Font := AcceptLab00.Font;
      Layout := AcceptLab00.Layout;
      Transparent := AcceptLab00.Transparent;
      if RB2.Checked then
        Caption := 'Normal'
      else
        Caption := AcceptLab00.Caption;
      Name := Format('AcceptLab00%.2d', [tabNum2ID]);
    finally
    end;
  end;
  with TLabel.Create(Panel) do //---Reject Label
  begin
    try
      Parent := Panel;
      Top := RejectLab00.Top;
      Left := RejectLab00.Left;
      Anchors := RejectLab00.Anchors;
      Align := RejectLab00.Align;
      Alignment := RejectLab00.Alignment;
      Color := RejectLab00.Color;
      AutoSize := RejectLab00.AutoSize;
      Width := RejectLab00.Width;
      Height := RejectLab00.Height;
      Font := RejectLab00.Font;
      Layout := RejectLab00.Layout;
      Transparent := RejectLab00.Transparent;
      if RB2.Checked then
        Caption := 'Critical'
      else
        Caption := RejectLab00.Caption;
      Name := Format('RejectLab00%.2d', [tabNum2ID]);
    finally
    end;
  end;
  with TLabel.Create(Panel) do //---AccQtyLab00 Label
  begin
    try
      Parent := Panel;
      Top := AccQtyLab00.Top;
      Left := AccQtyLab00.Left;
      Anchors := AccQtyLab00.Anchors;
      Align := AccQtyLab00.Align;
      Alignment := AccQtyLab00.Alignment;
      Color := AccQtyLab00.Color;
      AutoSize := AccQtyLab00.AutoSize;
      Width := AccQtyLab00.Width;
      Height := AccQtyLab00.Height;
      Font := AccQtyLab00.Font;
      Layout := AccQtyLab00.Layout;
      Transparent := AccQtyLab00.Transparent;
      Caption := AccQtyLab00.Caption;
      Name := Format('AccQtyLab%.2d', [tabNum2ID]);
    finally
    end;
  end;
  with TLabel.Create(Panel) do //---RejQtyLab00 Label
  begin
    try
      Parent := Panel;
      Top := RejQtyLab00.Top;
      Left := RejQtyLab00.Left;
      Anchors := RejQtyLab00.Anchors;
      Align := RejQtyLab00.Align;
      Alignment := RejQtyLab00.Alignment;
      Color := RejQtyLab00.Color;
      AutoSize := RejQtyLab00.AutoSize;
      Width := RejQtyLab00.Width;
      Height := RejQtyLab00.Height;
      Font := RejQtyLab00.Font;
      Layout := RejQtyLab00.Layout;
      Transparent := RejQtyLab00.Transparent;
      Caption := RejQtyLab00.Caption;
      Name := Format('RejQtyLab%.2d', [tabNum2ID]);
    finally
    end;
  end;
  //---生產總數量
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := ProdQtyLabel00.Top;
      Left := ProdQtyLabel00.Left;
      Anchors := ProdQtyLabel00.Anchors;
      Align := ProdQtyLabel00.Align;
      Alignment := ProdQtyLabel00.Alignment;
      Color := ProdQtyLabel00.Color;
      AutoSize := ProdQtyLabel00.AutoSize;
      Width := ProdQtyLabel00.Width;
      Height := ProdQtyLabel00.Height;
      Font := ProdQtyLabel00.Font;
      Layout := ProdQtyLabel00.Layout;
      Transparent := ProdQtyLabel00.Transparent;
      Caption := '0';
      Name := Format('ProdQtyLabel%.2d', [tabNum2ID]);
      Hint:=Format('ProdQtyLabel%.2d', [tabNum2ID]);
      ShowHint:=true;
    finally
    end;
  end;
  //--- Defect
  with TEdit.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := DefectQtyEdit00.Top;
      Left := DefectQtyEdit00.Left;
      Anchors := DefectQtyEdit00.Anchors;
      Align := DefectQtyEdit00.Align;
      Text := '0';
      Font := DefectQtyEdit00.Font;
      Width := DefectQtyEdit00.Width;
      Height := DefectQtyEdit00.Height;
      BorderStyle := DefectQtyEdit00.BorderStyle;
      Enabled := DefectQtyEdit00.Enabled;
      Color := DefectQtyEdit00.Color;
      Name := Format('DefectQtyEdit%.2d%', [tabNum2ID]);
      //OnClick := pnlReason0001Click; //---共用事件的範例
      //OnClick := DefectQtyEdit00Change;
    finally
    end;
  end;
  //---抽驗標準  改Combo數量
  with TComboBox.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := InspecQtyCombo00.Top;
      Left := InspecQtyCombo00.Left;
      Anchors := InspecQtyCombo00.Anchors;
      Align := InspecQtyCombo00.Align;
      Items:=InspecQtyCombo00.Items;
      Font := InspecQtyCombo00.Font;
      Width := InspecQtyCombo00.Width;
      Height := InspecQtyCombo00.Height;
      Enabled := InspecQtyCombo00.Enabled;
      Color := InspecQtyCombo00.Color;
      Style:= InspecQtyCombo00.Style;
      Name := Format('InspecQtyCombo%.2d%', [tabNum2ID]);
      itemindex:=0;
      OnClick := InspecQtyCombo00Change; //---共用事件的範例
    finally
    end;
  end;

  if  HIorDI='DI' then
  begin
    with TEdit.Create(Panel) do
    begin
      try
        Parent := Panel;
        Top := ProdQty.Top;
        Left := ProdQty.Left;
        Anchors := ProdQty.Anchors;
        Align := ProdQty.Align;
        Text := '0';
        Font := ProdQty.Font;
        Width := ProdQty.Width;
        Height := ProdQty.Height;
        BorderStyle := ProdQty.BorderStyle;
        Enabled := ProdQty.Enabled;
        Color := ProdQty.Color;
        Name := Format('ProdQty', [tabNum2ID]);
        OnClick := ProdQtyChange;
      finally
      end;
    end;
  end;


  with TEdit.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := InspecQty.Top;
      Left := InspecQty.Left;
      Anchors := InspecQty.Anchors;
      Align := InspecQty.Align;
      Text := '0';
      Font := InspecQty.Font;
      Width := InspecQty.Width;
      Height := InspecQty.Height;
      BorderStyle := InspecQty.BorderStyle;
      Enabled := InspecQty.Enabled;
      Color := InspecQty.Color;
      Name := Format('InspecQty', [tabNum2ID]);
    finally
    end;
  end;

  if  (HIorDI='HI') and (DDBH_CHI<>'') then
  begin
    with TEdit.Create(Panel) do
    begin
      try
        Parent := Panel;
        Top := ProdQty.Top;
        Left := ProdQty.Left;
        Anchors := ProdQty.Anchors;
        Align := ProdQty.Align;
        Text := '0';
        Font := ProdQty.Font;
        Width := ProdQty.Width;
        Height := ProdQty.Height;
        BorderStyle := ProdQty.BorderStyle;
        Enabled := ProdQty.Enabled;
        Color := ProdQty.Color;
        Name := Format('ProdQty', [tabNum2ID]);
        OnClick := ProdQtyChange;
      finally
      end;
    end;
  end;

  with TComboBox.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := ComboBox2.Top;
      Left := ComboBox2.Left;
      Anchors := ComboBox2.Anchors;
      Align := ComboBox2.Align;
      Items:=ComboBox2.Items;
      Font := ComboBox2.Font;
      Width := ComboBox2.Width;
      Height := ComboBox2.Height;
      Enabled := ComboBox2.Enabled;
      Color := ComboBox2.Color;
      Style:= ComboBox2.Style;
      Name := Format('ComboBox2', [tabNum2ID]);
      itemindex:=0;
      OnClick := ComboBox2Change;
    finally
    end;
  end;


  //---Defect總數量Title  TodayDefectQtyLab
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := TodayDefectQtyLab00.Top;
      Left := TodayDefectQtyLab00.Left;
      Anchors := TodayDefectQtyLab00.Anchors;
      Align := TodayDefectQtyLab00.Align;
      Alignment := TodayDefectQtyLab00.Alignment;
      Color := TodayDefectQtyLab00.Color;
      AutoSize := TodayDefectQtyLab00.AutoSize;
      Width := TodayDefectQtyLab00.Width;
      Height := TodayDefectQtyLab00.Height;
      Font := TodayDefectQtyLab00.Font;
      Layout := TodayDefectQtyLab00.Layout;
      Transparent := TodayDefectQtyLab00.Transparent;
      Caption := TodayDefectQtyLab00.Caption;
      Name := Format('TodayDefectQtyLab%.2d', [tabNum2ID]);
    finally
    end;
  end;

  //---Carton
  if RB2.Checked then
  begin
    with TLabel.Create(Panel) do
    begin
      try
        Parent := Panel;
        Top := CartonQtyLab00.Top;
        Left := CartonQtyLab00.Left;
        Anchors := CartonQtyLab00.Anchors;
        Align := CartonQtyLab00.Align;
        Alignment := CartonQtyLab00.Alignment;
        Color := CartonQtyLab00.Color;
        AutoSize := CartonQtyLab00.AutoSize;
        Width := CartonQtyLab00.Width;
        Height := CartonQtyLab00.Height;
        Font := CartonQtyLab00.Font;
        Layout := CartonQtyLab00.Layout;
        Transparent := CartonQtyLab00.Transparent;
        Caption := CartonQtyLab00.Caption;
        Name := Format('CartonQtyLab%.2d', [tabNum2ID]);
      finally
      end;
    end;
    with TEdit.Create(Panel) do
    begin
      try
        Parent := Panel;
        Top := CartontQtyEdit00.Top;
        Left := CartontQtyEdit00.Left;
        Anchors := CartontQtyEdit00.Anchors;
        Align := CartontQtyEdit00.Align;
        Text := '0';
        Font := CartontQtyEdit00.Font;
        Width := CartontQtyEdit00.Width;
        Height := CartontQtyEdit00.Height;
        BorderStyle := CartontQtyEdit00.BorderStyle;
        Enabled := CartontQtyEdit00.Enabled;
        Color := CartontQtyEdit00.Color;
        Name := Format('CartontQtyEdit%.2d%', [tabNum2ID]);
        //OnClick := pnlReason0001Click; //---共用事件的範例
      finally
      end;
    end;
  end;

  //---生產總數量Title  TodayDefectQtyLab
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := ProductionQtyLab00.Top;
      Left := ProductionQtyLab00.Left;
      Anchors := ProductionQtyLab00.Anchors;
      Align := ProductionQtyLab00.Align;
      Alignment := ProductionQtyLab00.Alignment;
      Color := ProductionQtyLab00.Color;
      AutoSize := ProductionQtyLab00.AutoSize;
      Width := ProductionQtyLab00.Width;
      Height := ProductionQtyLab00.Height;
      Font := ProductionQtyLab00.Font;
      Layout := ProductionQtyLab00.Layout;
      Transparent := ProductionQtyLab00.Transparent;
      Caption := ProductionQtyLab00.Caption;
      Name := Format('ProductionQtyLab%.2d', [tabNum2ID]);

    finally
    end;
  end;
  //---抽樣數量Title  InspectionQtyLab00
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := InspectionQtyLab00.Top;
      Left := InspectionQtyLab00.Left;
      Anchors := InspectionQtyLab00.Anchors;
      Align := InspectionQtyLab00.Align;
      Alignment := InspectionQtyLab00.Alignment;
      Color := InspectionQtyLab00.Color;
      AutoSize := InspectionQtyLab00.AutoSize;
      Width := InspectionQtyLab00.Width;
      Height := InspectionQtyLab00.Height;
      Font := InspectionQtyLab00.Font;
      Layout := InspectionQtyLab00.Layout;
      Transparent := InspectionQtyLab00.Transparent;
      Caption := InspectionQtyLab00.Caption;
      Name := Format('InspectionQtyLab%.2d', [tabNum2ID]);
    finally
    end;
  end;
  //---Defect數量Title  DefectQtyLab00
  with TLabel.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := DefectQtyLab00.Top;
      Left := DefectQtyLab00.Left;
      Anchors := DefectQtyLab00.Anchors;
      Align := DefectQtyLab00.Align;
      Alignment := DefectQtyLab00.Alignment;
      Color := DefectQtyLab00.Color;
      AutoSize := DefectQtyLab00.AutoSize;
      Width := DefectQtyLab00.Width;
      Height := DefectQtyLab00.Height;
      Font := DefectQtyLab00.Font;
      Layout := DefectQtyLab00.Layout;
      Transparent := DefectQtyLab00.Transparent;
      Caption := DefectQtyLab00.Caption;
      Name := Format('DefectQtyLab%.2d', [tabNum2ID]);
    finally
    end;
  end;


  //Save 儲存
  with TImage.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := imgSave00.Top;
      Left := imgSave00.Left;
      Width := imgSave00.Width;
      Height := imgSave00.Height;
      Picture := imgSave00.Picture;
      Stretch := True;
      //Visible := imgSave00.Visible;
      Name := Format('imgSave%.2d', [tabNum2ID]);
      OnClick := imgSave00Click;
    finally
    end;
  end;

  with TLabel.Create(Panel) do   //RyQty
  begin
    try
      Parent := Panel;
      Top := RYQtyLabel00.Top;
      Left := RYQtyLabel00.Left;
      Anchors := RYQtyLabel00.Anchors;
      Align := RYQtyLabel00.Align;
      Alignment := RYQtyLabel00.Alignment;
      Color := RYQtyLabel00.Color;
      AutoSize := RYQtyLabel00.AutoSize;
      Width := RYQtyLabel00.Width;
      Height := RYQtyLabel00.Height;
      Font := RYQtyLabel00.Font;
      Layout := RYQtyLabel00.Layout;
      Transparent := RYQtyLabel00.Transparent;
      //Caption := '0';
      Name := Format('RYQtyLabel%.2d', [tabNum2ID]);
      Hint:=Format('RYQtyLabel%.2d', [tabNum2ID]);
      ShowHint:=true;
    finally
    end;
  end;
end;

procedure TMA_Inspection.addQCInfo(ri: integer; xYYBH: string; xWSM: string; DefectQty:string);
var
  parentID,kl, kt, k: integer;
  TabSheet:TTabSheet;
  Num2ID:String;
  pnlReason,Panel:TPanel;
  str1,str2:string;
begin
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  parentID:=strtoint(Num2ID);
  pnlReason:=TabSheet.FindComponent('pnlReason'+Num2ID) as TPanel;
  //---QC info 的基底Panel
  Panel:=TPanel.Create(pnlReason);
  Name:='';
  with Panel do
  begin
    try
      Parent := pnlReason;
      Color := pnlReason0001.Color;
      Width := pnlReason0001.Width;
      Height := pnlReason0001.Height;
      if  (ri > 1) then
      begin
          k := Round((ri - 1) div 7); //---一行可放幾個
          kl := k; //---Left 的位置
          kt := (ri - 1) - (k * 7); //---TOP 的位置
          Left := (Width + 15) * kl + pnlReason0001.Left;
          Top := (Height + 7) * kt + pnlReason0001.Top;
          Name := Format('pnlReason%.2d%.2d', [parentID, ri]);
      end else
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
      //OnClick := pnlReason0001Click; //---共用事件的範例
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
      //OnClick := pnlReason0001Click; //---共用事件的範例
    finally
    end;
  end;
  //---錯誤數量（通常只會有0、1兩種值
  with TSpinEdit.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := edtReason0001.Top;
      Left := edtReason0001.Left;
      Anchors := edtReason0001.Anchors;
      Align := edtReason0001.Align;
      Value := Strtoint(DefectQty);
      Font := edtReason0001.Font;
      Width := edtReason0001.Width;
      Height := edtReason0001.Height;
      Enabled := edtReason0001.Enabled;
      Color := edtReason0001.Color;
      MaxValue:=100;
      Name := Format('edtReason%.2d%.2d', [parentID, ri]);
      //OnClick := pnlReason0001Click; //---共用事件的範例
    finally
    end;
  end;
  //拍照圖片
  with TImage.Create(Panel) do
  begin
    try
      Parent := Panel;
      Top := ImgReason0001.Top;
      Left := ImgReason0001.Left;
      Anchors := ImgReason0001.Anchors;
      Align := ImgReason0001.Align;
      Width := ImgReason0001.Width;
      Height := ImgReason0001.Height;
      Stretch:= ImgReason0001.Stretch;
      Picture:=ImgReason0001.Picture;
      Name := Format('ImgReason%.2d%.2d', [parentID, ri]);
      OnClick := TakePhotoImageClick; //照相---共用事件的範例
    finally
    end;
  end;
end;
//-----------------------------------------------------------------------------------------------------------
procedure TMA_Inspection.Load_WOPR_MA();
var  i:integer;
     TabSheet:TTabSheet;
     ScrollBox: TScrollBox;
     Panel:TPanel;
     Num2ID:String;
     DDBH,DepID,GXLB,SJXH,OldProQty,F:String;
     TabInfo:TStringList;
     //
     ProdQtyLabelObj,RYQtyLabelObj,RYLabelObj,ArticleLabelObj,TodayQtyLabelObj,AccQtyLabQbj,RejQtyLabObj,CountryLabelObj,DevTypeLabelObj:TLabel;
     LeanLabelObj:TLabel;
     InspecQtyComboObj:TCombobox;
     DefectQtyEditObj,ProdQty,IDCode:TEdit;
     CartontQtyEditObj:TEdit;
     disconnected_Value: Integer;
begin
   TabSheet := pgcContent.ActivePage;
   Num2ID := RightStr(TabSheet.Name, 2);
   ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
   Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
   ProdQty := Panel.FindComponent('ProdQty') as TEdit;
   ComboBox2 := Panel.FindComponent('ComboBox2') as TCombobox;
   with QSearch do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select DATEADD(hour,-1, Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+''')) as hourago');
     Active:=true;
   end;

   hourago:=QSearch.fieldbyname('hourago').Value;
   TabInfo := TStringlist.Create;
   TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
   if (tabInfo.Count >= 5) then
   begin
     DDBH := tabInfo.Strings[0];
     DepID := tabInfo.Strings[1];
     GXLB :=tabInfo.Strings[3];
     SJXH :=tabInfo.Strings[4];
   end;
   TabInfo.free;
   //

   if DDBH_CHI = '' then
   begin
     if GXLB='HI' then
     begin
       with Query2 do
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Select max (userdate) as hournow ');
         SQL.Add('From WOPR_MA');
         SQL.Add('where  DepNo='''+DepID+''' and SCBH='''+DDBH+''' and GXLB=''HI''');
         //funcobj.WriteErrorLog(sql.Text);
         active:=true;
         if Query2.fieldbyname('hournow').AsString <> '' then
         begin
            hournow:=Query2.fieldbyname('hournow').Value;
            F:='1';
         end else
         begin
            hournow:=Now;
            F:='0';
         end;
         Active:=false;
         SQL.Clear;
         SQL.Add('Select SMZLQC.SCBH,SMZLQC.DepNo,Sum(Pairs) as Qty');
         SQL.Add('From SMZL_Tablet SMZLQC');
         SQL.Add('where   SMZLQC.DepNO='''+DepID+''' and SMZLQC.SCBH='''+DDBH+''' ');
         SQL.Add('and ScanDate>= DATEADD(hour,0, Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD 07:00:00',Now)+''')) and ScanDate<DATEADD(hour,0, Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD HH:MM:SS',hournow)+'''))');
         SQL.Add('Group by SMZLQC.SCBH,SMZLQC.DepNo ');
         //funcobj.WriteErrorLog(sql.Text);
         active:=true;
         if Query2.fieldbyname('Qty').AsString ='' then
           OldProQty:='0'
         else
           OldProQty:= Query2.fieldbyname('Qty').AsString;
       end;

       with QSearch do
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Select SMZLQC.SCBH,SMZLQC.DepNo,Sum(Pairs) as Qty');
         SQL.Add('From SMZL_Tablet SMZLQC');
         SQL.Add('where   SMZLQC.DepNO='''+DepID+''' and SMZLQC.SCBH='''+DDBH+''' ');
         SQL.Add('and ScanDate>=DATEADD(hour,0, Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD 07:00:00',Now)+''')) and ScanDate<DATEADD(hour,0, Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+'''))');
         SQL.Add('Group by SMZLQC.SCBH,SMZLQC.DepNo ');
         //funcobj.WriteErrorLog(sql.Text);
         active:=true;
         ProQty:=QSearch.fieldbyname('Qty').AsString;
       end;
       if QSearch.fieldbyname('Qty').AsString=OldProQty  then
       begin
          if F='0' then
            ProQty:=QSearch.fieldbyname('Qty').Value
          else
            ProQty:='0';
       end else
       if QSearch.fieldbyname('Qty').AsString<>OldProQty  then
       begin
          ProQty:=QSearch.fieldbyname('Qty').Value-OldProQty ;
       end;

       with Query1 do
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('Select SCBH,sum(Qty+NGQty) as Qty');
         SQL.Add('From WOPR');
         SQL.Add('where DepNO='''+DepID+''' and SCBH='''+DDBH+''' and GXLB=''AR'' ');
         SQL.Add('and Convert(smalldatetime,Convert(varchar,WOPR.SCDate,112))='''+FormatDateTime('YYYY/MM/DD',Date())+'''');
         SQL.Add('group by SCBH');
         //funcobj.WriteErrorLog(sql.Text);
         active:=true;
         if Query1.RecordCount > 0 then
         begin
           if ProQty>Query1.fieldbyname('Qty').Value  then
           begin
             ProQty:=Query1.fieldbyname('Qty').Value;
           end;
         end else
         begin
           showmessage('Don hang '''+DDBH+''' chua duoc kiem tai QC N56.');
           abort;
         end;
       end;
       if Edit1.Text<>'' then
       begin
          disconnected_Value:=StrToInt(ProQty) + StrToInt(ProQty_disconnected);
          ProQty:=IntToStr(disconnected_Value);
       end else
          ProQty:=ProQty;
     end;
     if GXLB='DI' then
     begin
        if ProdQty.Text <> '' then
          ProQty:=ProdQty.Text
        else
          ProQty:='0';
     end;
   end else
   begin
    if ProdQty.Text <> '' then
      ProQty:=ProdQty.Text
    else
      ProQty:='0';
   end;
   Openrytime:=FormatDateTime('YYYY/MM/DD HH:MM:SS',Now);
   with QSearch do
   begin
     Active:=false;
     SQL.Clear;
     if DDBH_CHI = '' then
     begin
       SQL.Add('Select SMZLQC.*,');
       SQL.Add('       IsNull((Select SampleQty from QCMAStd where SMZLQC.Qty>=QCMAStd.MinQty and SMZLQC.Qty<=QCMAStd.MaxQty and QCMAStd.GXLB='''+GXLB+''' ),0)  as  IQty, ');
       SQL.Add('       IsNull((Select Accept from QCMAStd where SMZLQC.Qty>=QCMAStd.MinQty and SMZLQC.Qty<=QCMAStd.MaxQty and QCMAStd.GXLB='''+GXLB+'''),0)  as  Accept, ');
       SQL.Add('       IsNull((Select Reject from QCMAStd where SMZLQC.Qty>=QCMAStd.MinQty and SMZLQC.Qty<=QCMAStd.MaxQty and QCMAStd.GXLB='''+GXLB+'''),0)  as  Reject,ywsm,DevType ');
       SQL.Add('from (');
       SQL.Add('	Select SMZLQC.DepNO,DDZL.DDBH,DDZL.ARTICLE,DDZL.Pairs,SMZLQC.Qty,IsNull(WOPR_MA.TodayDefQty,0) as TodayDefQty,IsNull(WOPR_MA_HIDI.DefQty,0) as DefQty,LBZLS.ywsm,kfxxzl.DevType       ');
       SQL.Add('	From (');
       //品管包裝品檢雙數
       if GXLB='HI' then
       begin
       SQL.Add('	Select SMZLQC.SCBH,SMZLQC.DepNo,Sum(Pairs) as Qty');
       SQL.Add('	From SMZL_Tablet SMZLQC');
       SQL.Add('	where   SMZLQC.DepNO='''+DepID+''' and SMZLQC.SCBH='''+DDBH+''' ');
       SQL.Add('		 and ScanDate>= '''+FormatDateTime('YYYY/MM/DD 07:00:00',Now)+''' and ScanDate<DATEADD(hour,0, Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD HH:MM:SS',Now)+''')  )');
       SQL.Add('	Group by SMZLQC.SCBH,SMZLQC.DepNo ) SMZLQC ');
       end else
       if GXLB='DI' then
       begin
       //成品倉入庫
           SQL.Add('	Select WOPR.SCBH,WOPR.DepNO,sum(WOPR.Qty+WOPR.NGQty) as Qty');
           SQL.Add('	from WOPR');
           SQL.Add('	where  SCBH='''+DDBH+''' and DepNO='''+DepID+''' and WOPR.GXLB=''AR''');
           SQL.Add('	Group by WOPR.SCBH,WOPR.DepNO ) SMZLQC');
       end;
       //================
       SQL.Add('  Left join ( ');
       SQL.Add('	  Select WOPR_MA.SCBH,Sum(DefQty) as TodayDefQty  ');
       SQL.Add('	  From WOPR_MA ');
       SQL.Add('	  where   WOPR_MA.DepNO='''+DepID+''' and WOPR_MA.SCBH='''+DDBH+'''  and WOPR_MA.GXLB='''+GXLB+'''  and Convert(smalldatetime,Convert(varchar,WOPR_MA.SCDate,112))='''+FormatDateTime('YYYY/MM/DD',Date())+''' ');
       SQL.Add('    Group by WOPR_MA.SCBH ');
       SQL.Add('	) WOPR_MA on WOPR_MA.SCBH=SMZLQC.SCBH ');
       SQL.Add('  Left join ( ');
       SQL.Add('	  Select WOPR_MA.SCBH,Sum(DefQty) as DefQty  ');
       SQL.Add('	  From WOPR_MA ');
       SQL.Add('	  where   WOPR_MA.DepNO='''+DepID+''' and WOPR_MA.SCBH='''+DDBH+'''  and WOPR_MA.GXLB='''+GXLB+'''  and WOPR_MA.SJXH='''+SJXH+''' and Convert(smalldatetime,Convert(varchar,WOPR_MA.SCDate,112))='''+FormatDateTime('YYYY/MM/DD',Date())+''' ');
       SQL.Add('    Group by WOPR_MA.SCBH ');
       SQL.Add('	)  WOPR_MA_HIDI on WOPR_MA_HIDI.SCBH=SMZLQC.SCBH ');
       SQL.Add('	left join DDZL on SMZLQC.SCBH=DDZL.DDBH');
       SQL.add('  left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
       SQL.Add('  left join kfxxzl ON DDZL.XieXing = kfxxzl.XieXing AND DDZL.SheHao = kfxxzl.SheHao ');
       SQL.Add('	where DDZL.DDBH='''+DDBH+'''  ');
       SQL.Add(') SMZLQC ');
     end else
     begin
       SQL.Add('	Select BDepartment.ID as DepNO,DDZL.DDBH,DDZL.ARTICLE,DDZL.Pairs,LBZLS.ywsm,kfxxzl.DevType,0 as TodayDefQty    ');
       SQL.Add('	from SCZL');
       SQL.Add('	left join WOPR on SCZL.SCBH=WOPR.SCBH and WOPR.DepNO='''+DepID+'''');
       SQL.Add('	left join BDepartment on BDepartment.ID=WOPR.DepNO');
       SQL.Add('	left join ddzl on ddzl.ddbh=SCZL.SCBH');
       SQL.Add('  left join kfxxzl ON DDZL.XieXing = kfxxzl.XieXing AND DDZL.SheHao = kfxxzl.SheHao ');
       SQL.add('  left join LBZLS on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
       SQL.Add('	where 1=1 ');
       SQL.Add('  and SCZL.SCBH='''+DDBH+''' ');
       SQL.Add('  and DDZL.DDZT=''Y'' ');
       SQL.Add('	Group by BDepartment.ID,DDZL.DDBH,DDZL.ARTICLE,DDZL.Pairs,LBZLS.ywsm,kfxxzl.DevType ');
     end;
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
     if RecordCount>0 then
     begin
       if GXLB='HI' then
       begin
         ProdQtyLabelObj := Panel.FindComponent('ProdQtyLabel'+Num2ID) as TLabel;
         if ProdQtyLabelObj<>nil then  ProdQtyLabelObj.Caption:=ProQty;
         InspecQtyComboObj := Panel.FindComponent('InspecQtyCombo'+Num2ID) as TCombobox;
         if InspecQtyComboObj<>nil then
         begin
           with Query2 do
           begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Select SampleQty,Accept,Reject from QCMAStd where QCMAStd.MinQty<='+ProQty+'  and QCMAStd.MaxQty>='+ProQty+' and GXLB=''HI'' ');
              //funcObj.WriteErrorLog(sql.Text);
              Active:=true;
              if RecordCount>0 then
              begin
                 for i:=0 to InspecQtyComboObj.Items.Count-1 do
                 begin
                   if InspecQtyComboObj.Items[i]=FieldByName('SampleQty').AsString then
                   begin
                     InspecQtyComboObj.ItemIndex:=i;
                     break;
                   end;
                 end;
              end;
              AccQtyLabQbj := Panel.FindComponent('AccQtyLab'+Num2ID) as TLabel;
              if AccQtyLabQbj<>nil then  AccQtyLabQbj.Caption:=FieldByName('Accept').AsString;
              RejQtyLabObj := Panel.FindComponent('RejQtyLab'+Num2ID) as TLabel;
              if RejQtyLabObj<>nil then  RejQtyLabObj.Caption:=FieldByName('Reject').AsString;
              Active:=false;
           end;
         end;
       end;
       if GXLB='DI' then
       begin
         ProdQtyLabelObj := Panel.FindComponent('ProdQtyLabel'+Num2ID) as TLabel;
         if ProdQtyLabelObj<>nil then  ProdQtyLabelObj.Caption:=ProQty;
         InspecQtyComboObj := Panel.FindComponent('InspecQtyCombo'+Num2ID) as TCombobox;
         if InspecQtyComboObj<>nil then
         begin
           with Query2 do
           begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Select SampleQty,Accept,Reject,Carton from QCMAStd where QCMAStd.MinQty<='+ProQty+'  and QCMAStd.MaxQty>='+ProQty+' and GXLB=''DI'' ');
              //funcObj.WriteErrorLog(sql.Text);
              Active:=true;
              if RecordCount>0 then
              begin
                 for i:=0 to InspecQtyComboObj.Items.Count-1 do
                 begin
                   if InspecQtyComboObj.Items[i]=FieldByName('SampleQty').AsString then
                   begin
                     InspecQtyComboObj.ItemIndex:=i;
                     break;
                   end;
                 end;
              end;
              AccQtyLabQbj := Panel.FindComponent('AccQtyLab'+Num2ID) as TLabel;
              if AccQtyLabQbj<>nil then  AccQtyLabQbj.Caption:=FieldByName('Accept').AsString;
              RejQtyLabObj := Panel.FindComponent('RejQtyLab'+Num2ID) as TLabel;
              if RejQtyLabObj<>nil then  RejQtyLabObj.Caption:=FieldByName('Reject').AsString;
              CartontQtyEditObj := Panel.FindComponent('CartontQtyEdit'+Num2ID) as TEdit;
              if CartontQtyEditObj<>nil then CartontQtyEditObj.Text:=FieldByName('Carton').AsString;
              Active:=false;
           end;
         end;
       end;
       ArticleLabelObj := Panel.FindComponent('ArticleLabel'+Num2ID) as TLabel;
       if ArticleLabelObj<>nil then  ArticleLabelObj.Caption:=FieldByName('Article').AsString;
       RYLabelObj := Panel.FindComponent('RYLabel'+Num2ID) as TLabel;
       if RYLabelObj<>nil then  RYLabelObj.Caption:=FieldByName('DDBH').AsString;
       RYQtyLabelObj := Panel.FindComponent('RYQtyLabel'+Num2ID) as TLabel;
       CountryLabelObj := Panel.FindComponent('CountryLabel'+Num2ID) as TLabel;
       if CountryLabelObj<>nil then CountryLabelObj.Caption:=FieldByName('ywsm').AsString;
       DevTypeLabelObj := Panel.FindComponent('DevTypeLabel'+Num2ID) as TLabel;
       if DevTypeLabelObj<>nil then DevTypeLabelObj.Caption:=FieldByName('DevType').AsString;
       if RYQtyLabelObj<>nil then  RYQtyLabelObj.Caption:=FieldByName('Pairs').AsString;
       TodayQtyLabelObj := Panel.FindComponent('TodayQtyLabel'+Num2ID) as TLabel;
       if TodayQtyLabelObj<>nil then TodayQtyLabelObj.Caption:=FieldByName('TodayDefQty').AsString;
       DefectQtyEditObj := Panel.FindComponent('DefectQtyEdit'+Num2ID) as TEdit;
//       if DefectQtyEditObj<>nil then DefectQtyEditObj.Text:=FieldByName('DefQty').AsString;
       if DefectQtyEditObj<>nil then DefectQtyEditObj.Text:='0';
       LeanLabelObj := Panel.FindComponent('LeanLabelObj'+Num2ID) as TLabel;
       if LeanLabelObj<>nil then  LeanLabelObj.Caption:=edtLine.Text;
     end;
     Active:=false;
   end;
end;

//-----------------------------------------------------------------------------------------------------------
procedure TMA_Inspection.Show_WOPR_MA_Total();
var  TabSheet:TTabSheet;
     ScrollBox: TScrollBox;
     Panel:TPanel;
     Num2ID:String;
     DDBH,DepID,GXLB,SJXH:String;
     TabInfo:TStringList;
     //
     ProdQtyLabelObj,TodayQtyLabelObj:TLabel;
     InspecQtyComboObj:TCombobox;
begin
   TabSheet := pgcContent.ActivePage;
   Num2ID := RightStr(TabSheet.Name, 2);
   ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
   Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
   //
   TabInfo := TStringlist.Create;
   TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
   if (tabInfo.Count >= 5) then
   begin
     DDBH := tabInfo.Strings[0];
     DepID := tabInfo.Strings[1];
     GXLB:= tabInfo.Strings[3];
     SJXH :=tabInfo.Strings[4];
   end;
   TabInfo.free;
   //
   with QSearch do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select SMZLQC.*,');
     SQL.Add('       IsNull((Select SampleQty from QCMAStd where SMZLQC.Qty>=QCMAStd.MinQty and SMZLQC.Qty<=QCMAStd.MaxQty and QCMAStd.GXLB='''+GXLB+'''),0)  as  IQty, ');
     SQL.Add('       IsNull((Select Accept from QCMAStd where SMZLQC.Qty>=QCMAStd.MinQty and SMZLQC.Qty<=QCMAStd.MaxQty and QCMAStd.GXLB='''+GXLB+'''),0)  as  Accept, ');
     SQL.Add('       IsNull((Select Reject from QCMAStd where SMZLQC.Qty>=QCMAStd.MinQty and SMZLQC.Qty<=QCMAStd.MaxQty and QCMAStd.GXLB='''+GXLB+'''),0)  as  Reject ');
     SQL.Add('from (');
     SQL.Add('	Select SMZLQC.DepNO,DDZL.DDBH,DDZL.ARTICLE,DDZL.Pairs,SMZLQC.Qty,IsNull(WOPR_MA.TodayDefQty,0) as TodayDefQty,IsNull(WOPR_MA_HIDI.DefQty,0) as DefQty   ');
     SQL.Add('	From (');
     //品管包裝品檢雙數
     if GXLB='HI' then
     begin
       SQL.Add('	Select SMZLQC.SCBH,SMZLQC.DepNo,Sum(Pairs) as Qty');
       SQL.Add('	From SMZL_Tablet SMZLQC');
       SQL.Add('	where   SMZLQC.DepNO='''+DepID+''' and SMZLQC.SCBH='''+DDBH+''' ');
       SQL.Add('		 and ScanDate>=DATEADD(hh,-1, Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD '+SJXH+':00:00',Date)+''')) and ScanDate<DATEADD(hh,0, Convert(smalldatetime,'''+FormatDateTime('YYYY/MM/DD '+SJXH+':00:00',Date)+''')  )');
       SQL.Add('	Group by SMZLQC.SCBH,SMZLQC.DepNo ) SMZLQC ');
     end else
     if GXLB='DI' then
     begin
     //成品倉入庫
       if DDZL.RecordCount > 0 then
       begin
         SQL.Add('	Select WOPR.SCBH,WOPR.DepNO,sum(WOPR.Qty+WOPR.NGQty) as Qty');
         SQL.Add('	from WOPR');
         SQL.Add('	where  SCBH='''+DDBH+''' and WOPR.GXLB=''AR'' ');
         SQL.Add('	Group by WOPR.SCBH,WOPR.DepNO) SMZLQC');
       end else
       begin
         SQL.Add('	Select YWCP.DDBH as SCBH,YWCP.DepNO,Sum(YWCP.Qty) as Qty');
         SQL.Add('	from YWCP');
         SQL.Add('	where  DDBH='''+DDBH+''' ');
         SQL.Add('	Group by YWCP.DDBH,YWCP.DepNO ) SMZLQC');
       end;
     //成品倉訂單累積
     //SQL.Add('	where  DDBH='''+DDBH+''' and DepNO='''+DepID+''' ');
     //SQL.Add('	      and convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) ='''+FormatDateTime('YYYY/MM/DD',Date())+''' ');
     end;
     //================
     SQL.Add('  Left join ( ');
     SQL.Add('	  Select WOPR_MA.SCBH,Sum(DefQty) as TodayDefQty  ');
     SQL.Add('	  From WOPR_MA ');
     SQL.Add('	  where   WOPR_MA.DepNO='''+DepID+''' and WOPR_MA.SCBH='''+DDBH+'''  and WOPR_MA.GXLB='''+GXLB+'''  and Convert(smalldatetime,Convert(varchar,WOPR_MA.SCDate,112))='''+FormatDateTime('YYYY/MM/DD',Date())+''' ');
     SQL.Add('    Group by WOPR_MA.SCBH ');
     SQL.Add('	) WOPR_MA on WOPR_MA.SCBH=SMZLQC.SCBH ');
     SQL.Add('  Left join ( ');
     SQL.Add('	  Select WOPR_MA.SCBH,Sum(DefQty) as DefQty  ');
     SQL.Add('	  From WOPR_MA ');
     SQL.Add('	  where   WOPR_MA.DepNO='''+DepID+''' and WOPR_MA.SCBH='''+DDBH+'''  and WOPR_MA.GXLB='''+GXLB+'''  and WOPR_MA.SJXH='''+SJXH+''' and Convert(smalldatetime,Convert(varchar,WOPR_MA.SCDate,112))='''+FormatDateTime('YYYY/MM/DD',Date())+''' ');
     SQL.Add('    Group by WOPR_MA.SCBH ');
     SQL.Add('	)  WOPR_MA_HIDI on WOPR_MA_HIDI.SCBH=SMZLQC.SCBH ');
     SQL.Add('	left join DDZL on SMZLQC.SCBH=DDZL.DDBH');
     SQL.Add('	where DDZL.DDBH='''+DDBH+'''  ');
     SQL.Add(') SMZLQC ');
     //FuncObj.WriteErrorLog(sql.Text);
     Active:=true;
     if RecordCount>0 then
     begin
       TodayQtyLabelObj := Panel.FindComponent('TodayQtyLabel'+Num2ID) as TLabel;
       if TodayQtyLabelObj<>nil then TodayQtyLabelObj.Caption:=FieldByName('TodayDefQty').AsString;
     end;
     Active:=false;
   end;
end;

procedure TMA_Inspection.edtLineClick(Sender: TObject);
begin
  MA_Inspection_Dep:=TMA_Inspection_Dep.Create(self);
  MA_Inspection_Dep.Show;
end;

procedure TMA_Inspection.edtRYClick(Sender: TObject);
begin
  btnRY.Click;
end;

procedure TMA_Inspection.btnRYClick(Sender: TObject);
begin
  MA_Inspection_RY:=TMA_Inspection_RY.Create(self);
  MA_Inspection_RY.Show;
end;
//成品鞋抽檢
procedure TMA_Inspection.Save_WOPR_MA();
var IsInsert:boolean;
    TabSheet:TTabSheet;
    ScrollBox: TScrollBox;
    Panel:TPanel;
    Num2ID:String;
    DDBH,DepID,GXLB,SJXH,L_DATE:String;
    TabInfo:TStringList;
    //
    InspecQtyComboObj,ComboBox1,ComboBox2:TCombobox;
    DefectQtyEditObj,InspecQty,ProdQty :TEdit;
    ProdQtyLabelObj:TLabel;
begin
   TabSheet := pgcContent.ActivePage;
   Num2ID := RightStr(TabSheet.Name, 2);
   ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
   Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
   //
   InspecQtyComboObj := Panel.FindComponent('InspecQtyCombo'+Num2ID) as TCombobox;
   ComboBox1 := Panel.FindComponent('ComboBox1') as TCombobox;
   ComboBox2 := Panel.FindComponent('ComboBox2') as TCombobox;
   DefectQtyEditObj := Panel.FindComponent('DefectQtyEdit'+Num2ID) as TEdit;
   ProdQtyLabelObj := Panel.FindComponent('ProdQtyLabel'+Num2ID) as TLabel;
   InspecQty := Panel.FindComponent('InspecQty') as TEdit;
   ProdQty := Panel.FindComponent('ProdQty') as TEdit;
   //
   TabInfo := TStringlist.Create;
   TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
   if (tabInfo.Count >= 5) then
   begin
     DDBH := tabInfo.Strings[0];
     DepID := tabInfo.Strings[1];
     GXLB := tabInfo.Strings[3];
     SJXH := tabInfo.Strings[4];
   end;
   TabInfo.free;
  //Accept or  Reject
  if ComboBox2.ItemIndex = 0 then
  begin
    with QSearch do
    begin
      Active:=false;
      SQL.Clear;
      if RB2.Checked then
      begin
        SQL.Add('Select Accept,Reject from QCMAStd  where SampleQty='+InspecQtyComboObj.Text+' and GXLB =''DI''');
        Active:=true;
        if RecordCount>0 then
        begin
          if strtoint(DefectQtyEditObj.Text)>strtoint((FieldByName('Accept').AsString)) then
          begin
            AccRejec:='F';
          end else
          begin
            AccRejec:='P';
          end;
        end;
      end;
      if RB1.Checked then
      begin
        SQL.Add('Select Accept,Reject from QCMAStd  where SampleQty='+InspecQtyComboObj.Text+' and GXLB =''HI''');
        Active:=true;
        if RecordCount>0 then
        begin
          if strtoint(DefectQtyEditObj.Text)>=strtoint((FieldByName('Reject').AsString)) then
          begin
            AccRejec:='F';
          end else
          begin
            AccRejec:='P';
          end;
        end;
      end;
      Active:=false;
    end;
  end else
  if ComboBox2.ItemIndex = 1 then
  begin
    AccRejec:=AccRejec;
  end else
  if ComboBox2.ItemIndex = 2 then
  begin
    AccRejec:=AccRejec;
  end;
  if ComboBox2.ItemIndex = 3 then
  begin
    AccRejec:='P';
  end;
  //=====
  if Edit1.Text='' then
  begin
  with QSearch do
  begin
     with query1 do
     begin
       active:=false;
       sql.Clear;
       sql.Add('select ID from WOPR_MA where ID like '+''''+GXLB+'%'+'''');
       sql.add('order by ID');
       active:=true;
       if recordcount >0 then
       begin
         last;
         ID:=fieldbyname('ID').AsString;
         ID:=copy(ID,3,8);
         ID:=inttostr(strtoint(ID)+1);
         while length(ID)<8 do
         begin
           ID:='0'+ID;
         end;
       end else
       begin
         ID:='00000001';
       end;
       ID:=GXLB+ID;
       active:=false;
       sql.Clear;
     end;
     IsInsert:=true;
  end;
  end else
  begin
     ID:=Edit1.Text;
     //IsInsert:=true;
  end;
  if HIorDI='DI' then
  begin
    if Last_Date.Checked then
      L_DATE:='Y'
    else
      L_DATE:='N';
  end;
  if ComboBox2.ItemIndex=0 then
  begin
    if IsInsert=true then
    begin
      with QUpdate do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Insert into WOPR_MA ');
        SQL.Add(' (SCDate, SJXH,  GSBH, DepNo, GXLB, SCBH, CC, PrdQty, InsQty, DefQty, Result, ID, UserID, UserDate, YN, Last_Date) ');
        SQL.Add('Values ');
        SQL.Add(' (Convert(varchar,GetDate(),111),'''+SJXH+''','''+main.Edit2.Text+''','''+DepID+''','''+GXLB+''','''+DDBH+''',''ZZZZ'','+ProdQtyLabelObj.Caption+','+InspecQtyComboObj.Text+','+DefectQtyEditObj.Text+','''+AccRejec+''', '''+ID+''','''+main.Edit1.Text+''','''+Openrytime+''',''1'','''+L_DATE+''' ) ');
        ExecSQL();
      end;
    end else
    begin
      with QUpdate do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update  WOPR_MA Set  PrdQty='+ProdQtyLabelObj.Caption+',InsQty='+InspecQtyComboObj.Text+',DefQty='+DefectQtyEditObj.Text+',Result='''+AccRejec+''',UserID='''+main.Edit1.Text+''',UserDate='''+Openrytime+''' ');
        SQL.Add('where SCDate='''+FormatDateTime('YYYY/MM/DD',Date())+''' and SJXH='''+SJXH+''' and  GSBH='''+main.Edit2.Text+''' and DepNo='''+DepID+'''  and GXLB='''+GXLB+''' and SCBH='''+DDBH+''' and CC=''ZZZZ'' and ID ='''+ID+'''  ');
        ExecSQL();
      end;
    end;
  end else
    if IsInsert=true then
    begin
      with QUpdate do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Insert into WOPR_MA ');
        SQL.Add(' (SCDate, SJXH,  GSBH, DepNo, GXLB, SCBH, CC, PrdQty, InsQty, DefQty, Result, ID, UserID, UserDate, YN, Last_Date) ');
        SQL.Add('Values ');
        SQL.Add(' (Convert(varchar,GetDate(),111),'''+SJXH+''','''+main.Edit2.Text+''','''+DepID+''','''+GXLB+''','''+DDBH+''',''ZZZZ'','+ProdQtyLabelObj.Caption+','+InspecQtyTotal+','+DefectQtyEditObj.Text+','''+AccRejec+''', '''+ID+''','''+main.Edit1.Text+''','''+Openrytime+''',''1'','''+L_DATE+''') ');
        ExecSQL();
      end;
    end else
    begin
      with QUpdate do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update  WOPR_MA Set  PrdQty='+ProdQtyLabelObj.Caption+',InsQty='+InspecQtyTotal+',DefQty='+DefectQtyEditObj.Text+',Result='''+AccRejec+''',UserID='''+main.Edit1.Text+''',UserDate='''+Openrytime+''' ');
        SQL.Add('where SCDate='''+FormatDateTime('YYYY/MM/DD',Date())+''' and SJXH='''+SJXH+''' and  GSBH='''+main.Edit2.Text+''' and DepNo='''+DepID+'''  and GXLB='''+GXLB+''' and SCBH='''+DDBH+''' and CC=''ZZZZ'' and ID ='''+ID+''' ');
        ExecSQL();
      end;
    end;
end;
//儲存全部 Defect資料
procedure TMA_Inspection.Save_WOPR_MA_Defect();
var i,j:integer;
    TabSheet:TTabSheet;
    pnlReason,pnlReason_Sub:TPanel;
    Num2ID:String;
    lblReasonA:TLabel;
    edtReason:TSpinEdit;
    TabInfo,DefectList:TStringlist;
    //
    ProNo:integer;
    DDBH,DepID,GXLB,SJXH:String;

begin
   //
   TabSheet := pgcContent.ActivePage;
   Num2ID := RightStr(TabSheet.Name, 2);
   pnlReason := TabSheet.FindChildControl('pnlReason'+Num2ID) as TPanel;
   //
   TabInfo := TStringlist.Create;
   TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
   if (tabInfo.Count >= 5) then
   begin
     DDBH := tabInfo.Strings[0];
     DepID := tabInfo.Strings[1];
     GXLB := tabInfo.Strings[3];
     SJXH := tabInfo.Strings[4];
   end;
   TabInfo.free;
   //
   DefectList:=TStringlist.Create;
   for i:=0 to pnlReason.ControlCount-1 do
   begin
      if pnlReason.Controls[i] is TPanel then
      begin
        pnlReason_Sub := pnlReason.Controls[i] as TPanel;
        for j:=0 to  pnlReason_Sub.ControlCount-1 do
        begin
          if pnlReason_Sub.Controls[j] is TSpinEdit then
          begin
            edtReason:=pnlReason_Sub.Controls[j] as TSpinEdit;
            if edtReason.value>0 then
            begin
              lblReasonA:=pnlReason_Sub.FindComponent('lblReasonA'+RightStr(edtReason.Name, 4)) as TLabel;
              DefectList.Add(lblReasonA.Caption+'='+inttostr(edtReason.value));
            end;
            break;
          end;
        end;
      end;
   end;
   //Insert into QCMA
   if DefectList.Count>0 then
   begin
     with QSearch do
     begin
        Active := false;
        SQL.Clear;
        SQL.Add('select top 1 ProNo from QCMA where SCDate = '''+FormatDateTime('yyyy/mm/dd', sysDBtime)+''' and SCBH='''+DDBH+''' and GXLB='''+GXLB+''' and DepNo='''+DepID+''' and ID='''+ID+''' ');
        //SQL.Add('and DATEDIFF(second, UserDate, GetDate())<600 order by ProNo desc ');
        //funcObj.WriteErrorLog(sql.Text);
        Active := true;
        if RecordCount>0 then
        begin
          ProNo := FieldByName('ProNO').Value;
        end else
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('select top 1 ProNO from QCMA order by ProNO Desc ;');
          Active := true;
          if RecordCount>0 then
            ProNo := StrToInt(FieldByName('ProNO').Value) + 1
          else
            ProNO :=1;
          //---QCR 新增NG資料主檔
          Active := false;
          SQL.Clear;
          SQL.Add('insert into QCMA (ProNo, SCDate, SJXH, DepNo, GSBH,SCBH,GXLB,CC,USERID, USERDATE,ID) ');
          SQL.Add('values (:ProNo,:SCDate,:SJXH,:DepNo,:GSBH,:SCBH,:GXLB,:CC,:USERID,:USERDATE,:ID);');
          ParamByName('ProNo').Value := Format('%.10d', [ProNo]);
          ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
          ParamByName('SJXH').Value := SJXH;
          ParamByName('DepNo').Value := DepID;
          ParamByName('GSBH').Value := main.Edit2.Text;
          ParamByName('SCBH').Value := DDBH;
          ParamByName('GXLB').Value := GXLB;
          ParamByName('CC').Value := 'ZZZZ';
          ParamByName('userid').Value := main.Edit1.Text;
          ParamByName('userdate').Value := now;
          ParamByName('ID').Value := ID;
          ExecSQL;
        end;
     end;
     //--- 新增錯誤原因細項   QCMAD
     for i := 0 to (DefectList.Count - 1) do //---20151003 因應 允許同時多 NG原因
     begin
       with QSearch do
       begin
        Active := false;
        SQL.Clear;
        SQL.Add('IF Not EXISTS (Select ProNO from QCMAD where ProNO='''+Format('%.10d', [ProNo])+''' and YYBH='''+DefectList.Names[i]+''' )');
        SQL.Add('Begin');
        SQL.Add('  insert into QCMAD (ProNo, YYBH, Qty,USERID, USERDATE)');
        SQL.Add('  values ('''+Format('%.10d', [ProNo])+''', '''+DefectList.Names[i]+''', '+DefectList.ValueFromIndex[i]+','''+main.Edit1.Text+''', GetDate())');
        SQL.Add('End Else');
        SQL.Add('Begin');
        SQL.Add('  Update QCMAD set Qty='+DefectList.ValueFromIndex[i]+', UserID='''+main.Edit1.Text+''',UserDate=GetDate() where ProNO='''+Format('%.10d', [ProNo])+''' and YYBH='''+DefectList.Names[i]+''' ');
        SQL.Add('End');
        //funcObj.WriteErrorLog(sql.Text);
        ExecSQL;
       end;
     end;
   end;
   DefectList.Free;
   //
end;
//儲存單一個Defect
Function TMA_Inspection.Save_WOPR_MA_Defect_Single(YYBH:string;Qty:String):String;
var i,j:integer;
    TabSheet:TTabSheet;
    pnlReason,pnlReason_Sub:TPanel;
    Num2ID:String;
    lblReasonA:TLabel;
    edtReason:TEdit;
    TabInfo,DefectList:TStringlist;
    ScrollBox: TScrollBox;
    Panel:TPanel;
    //
    ProNo:integer;
    DDBH,DepID,GXLB,SJXH:String;
    IDCode:TEdit;
begin
   //
   TabSheet := pgcContent.ActivePage;
   Num2ID := RightStr(TabSheet.Name, 2);
   pnlReason := TabSheet.FindChildControl('pnlReason'+Num2ID) as TPanel;
   ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
   Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
   //
   TabInfo := TStringlist.Create;
   TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
   if (tabInfo.Count >= 5) then
   begin
     DDBH := tabInfo.Strings[0];
     DepID := tabInfo.Strings[1];
     GXLB := tabInfo.Strings[3];
     SJXH := tabInfo.Strings[4];
   end;
   TabInfo.free;
   //單一個Defect
   DefectList:=TStringlist.Create;
   DefectList.Add(YYBH+'='+Qty);
   Edit1.Enabled:=true;
   //Insert into QCMA
   if DefectList.Count>0 then
   begin
     if Edit1.Text='' then ID:=ID else ID:=Edit1.Text;
     with QSearch do
     begin
        Active := false;
        SQL.Clear;
        SQL.Add('select top 1 ProNo from QCMA where SCDate = '''+FormatDateTime('yyyy/mm/dd', sysDBtime)+''' and SCBH='''+DDBH+''' and GXLB='''+GXLB+''' and DepNo='''+DepID+''' and ID='''+ID+''' ');
        //SQL.Add('and DATEDIFF(second, UserDate, GetDate())<600 order by ProNo desc ');
        //funcObj.WriteErrorLog(sql.Text);
        Active := true;
        if RecordCount>0 then
        begin
          ProNo := FieldByName('ProNO').Value;
        end else
        begin
          Active := false;
          SQL.Clear;
          SQL.Add('select top 1 ProNO from QCMA order by ProNO Desc ;');
          Active := true;
          if RecordCount>0 then
            ProNo := StrToInt(FieldByName('ProNO').Value) + 1
          else
            ProNO :=1;

          Active := false;
          SQL.Clear;
          SQL.Add('select top 1 ID from WOPR_MA where WOPR_MA.GXLB='''+GXLB+''' order by ID Desc ;');
          Active := true;
          ID:=fieldbyname('ID').AsString;
          ID:=copy(ID,3,8);
          ID:=inttostr(strtoint(ID)+1);
          while length(ID)<8 do
          begin
             ID:='0'+ID;
          end;
          ID:=GXLB+ID;

          //---QCR 新增NG資料主檔
          Active := false;
          SQL.Clear;
          SQL.Add('insert into QCMA (ProNo, SCDate, SJXH, DepNo, GSBH,SCBH,GXLB,CC,USERID, USERDATE,ID) ');
          SQL.Add('values (:ProNo,:SCDate,:SJXH,:DepNo,:GSBH,:SCBH,:GXLB,:CC,:USERID,:USERDATE,:ID);');
          ParamByName('ProNo').Value := Format('%.10d', [ProNo]);
          ParamByName('SCDate').Value := FormatDateTime('yyyy/mm/dd', sysDBtime);
          ParamByName('SJXH').Value := SJXH;
          ParamByName('DepNo').Value := DepID;
          ParamByName('GSBH').Value := main.Edit2.Text;
          ParamByName('SCBH').Value := DDBH;
          ParamByName('GXLB').Value := GXLB;
          ParamByName('CC').Value := 'ZZZZ';
          ParamByName('userid').Value := main.Edit1.Text;
          ParamByName('userdate').Value := now;
          ParamByName('ID').Value := ID;
          ExecSQL;
          if Edit1.Text='' then
          begin
            with QUpdate do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('select ID from WOPR_MA where ID='''+ID+''' ');
              Active := true;
              if FieldByName('ID').AsString='' then
              begin
                Active:=false;
                SQL.Clear;
                SQL.Add('Insert into WOPR_MA ');
                SQL.Add(' (SCDate, SJXH,  GSBH, DepNo, GXLB, SCBH, CC, PrdQty, InsQty, DefQty, Result, ID, UserID, UserDate, YN) ');
                SQL.Add('Values ');
                SQL.Add(' (Convert(varchar,GetDate(),111),'''+SJXH+''','''+main.Edit2.Text+''','''+DepID+''','''+GXLB+''','''+DDBH+''',''ZZZZ'','''','''','''','''', '''+ID+''','''+main.Edit1.Text+''','''+Openrytime+''',''1'') ');
                ExecSQL();
              end;
            end;
          end;
        end;
     end;
          //--- 新增錯誤原因細項   QCMAD
     for i := 0 to (DefectList.Count - 1) do //---20151003 因應 允許同時多 NG原因
     begin
       with QSearch do
       begin
        Active := false;
        SQL.Clear;
        SQL.Add('IF Not EXISTS (Select ProNO from QCMAD where ProNO='''+Format('%.10d', [ProNo])+''' and YYBH='''+DefectList.Names[i]+''' )');
        SQL.Add('Begin');
        SQL.Add('  insert into QCMAD (ProNo, YYBH, Qty,USERID, USERDATE)');
        SQL.Add('  values ('''+Format('%.10d', [ProNo])+''', '''+DefectList.Names[i]+''', '+DefectList.ValueFromIndex[i]+','''+main.Edit1.Text+''', GetDate())');
        SQL.Add('End Else');
        SQL.Add('Begin');
        SQL.Add('  Update QCMAD set Qty='+DefectList.ValueFromIndex[i]+', UserID='''+main.Edit1.Text+''',UserDate=GetDate() where ProNO='''+Format('%.10d', [ProNo])+''' and YYBH='''+DefectList.Names[i]+''' ');
        SQL.Add('End');
        //funcObj.WriteErrorLog(sql.Text);
        ExecSQL;
       end;
     end;
 end;
   DefectList.Free;
   //
   result:=Format('%.10d', [ProNo]);
   Edit1.Text:=ID;
end;

Function TMA_Inspection.Save_WOPR_MA_Thung(YYBH:string;Qty:String):String;
var i,j:integer;
    TabSheet:TTabSheet;
    pnlReason,pnlReason_Sub:TPanel;
    Num2ID:String;
    lblReasonA:TLabel;
    edtReason:TEdit;
    TabInfo,DefectList:TStringlist;
    //
    ProNo:integer;
    DDBH,DepID,GXLB,SJXH,ID:String;
begin
   //
   TabSheet := pgcContent.ActivePage;
   Num2ID := RightStr(TabSheet.Name, 2);
   pnlReason := TabSheet.FindChildControl('pnlReason'+Num2ID) as TPanel;
   //
   TabInfo := TStringlist.Create;
   TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
   if (tabInfo.Count >= 5) then
   begin
     DDBH := tabInfo.Strings[0];
     DepID := tabInfo.Strings[1];
     GXLB := tabInfo.Strings[3];
     SJXH := tabInfo.Strings[4];
   end;
   TabInfo.free;
   //單一個Defect
   DefectList:=TStringlist.Create;
   DefectList.Add(YYBH+'='+Qty);
   //Insert into QCMA

   with QSearch do
   begin
      Active := false;
      SQL.Clear;
      SQL.Add('select ID from WOPR_MA where SCDate = '''+FormatDateTime('yyyy/mm/dd', sysDBtime)+''' and SCBH='''+DDBH+''' and GXLB='''+GXLB+''' and SJXH='''+SJXH+''' and DepNo='''+DepID+''' ');
      SQL.Add('order by ID desc ');
      //funcObj.WriteErrorLog(sql.Text);
      Active := true;
      if RecordCount>0 then
        ID := FieldByName('ID').Value;
   end;
   DefectList.Free;
   result:=ID;
end;

//=============
procedure TMA_Inspection.FormCreate(Sender: TObject);
var i:integer;
begin
  
  tabNum2ID:=0; //新增分頁TabSheet流水號編碼
  cbbWorkTime.ItemIndex:=0;
  for i:=0 to cbbWorkTime.items.count-1 do
  begin
    if cbbWorkTime.Items[i]=FormatDatetime('HH:30',Time()) then
    begin
      cbbWorkTime.ItemIndex:=i;
      break;
    end;
  end;
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select getdate() as NDate ;');
    Active := true;
    sysDBtime := FieldByName('NDate').Value;
    Active := false;
  end;
  //
  HIorDI:='HI';

end;

procedure TMA_Inspection.imgSave00Click(Sender: TObject);
var
     TabSheet:TTabSheet;
     ScrollBox: TScrollBox;
     Panel:TPanel;
     Num2ID:String;
     DDBH,DepID,GXLB,SJXH,ProQty,OldProQty:String;
     TabInfo:TStringList;
     ProdQtyLabelObj,RYQtyLabelObj,RYLabelObj,ArticleLabelObj,TodayQtyLabelObj,AccQtyLabQbj,RejQtyLabObj,CountryLabelObj,DevTypeLabelObj:TLabel;
     DefectQtyEditObj:TEdit;
begin
   TabSheet := pgcContent.ActivePage;
   Num2ID := RightStr(TabSheet.Name, 2);
   ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
   Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
   if MessageDlg('Ban co muon luu du lieu khong?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     if HIorDI='DI' then
     begin
       if ComboBox2.ItemIndex=1 then
          AC_or_RE();
       if ComboBox2.ItemIndex=2 then
          AC_or_RE_50();
     end;
     Save_WOPR_MA();
     Save_WOPR_MA_Defect();
     //顯示資訊
     MA_Inspection.Show_WOPR_MA_Total();
     ID:='';
     Edit1.Text:='';
     CheckBox1.Checked:=false;
     ProdQtyLabelObj := Panel.FindComponent('ProdQtyLabel'+Num2ID) as TLabel;
     if ProdQtyLabelObj<>nil then  ProdQtyLabelObj.Caption:='0';
     Last_Date.Checked:=false;
     Showmessage('Success');
     MA_Inspection.addTabSheet();
   end else
     Abort;
end;

procedure TMA_Inspection.imgClose00Click(Sender: TObject);
var ai: integer;
    tabSheet: TTabSheet;
    tabSheetTitle: string;
begin
  if pgcContent.ActivePageIndex = 0 then
  begin
    if MessageDlg('Ban co muon dong khong?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      Close;
    end;
  end else
  begin
    tabSheet := pgcContent.ActivePage;
    tabSheetTitle := tabSheet.Caption;
    ClearChildObject();
    tabSheet.Free;
  end;
end;

procedure TMA_Inspection.RB1Click(Sender: TObject);
var i:integer;
begin
  HIorDI:='HI';
  ProductionQtyLab00.Caption:='PRODUCTION QTY';

  for i:=0 to cbbWorkTime.items.count-1 do
  begin
    if cbbWorkTime.Items[i]=FormatDatetime('HH:30',Time()) then
    begin
      cbbWorkTime.ItemIndex:=i;
      break;
    end;
  end;
end;

procedure TMA_Inspection.RB2Click(Sender: TObject);
begin
  HIorDI:='DI';
  ProductionQtyLab00.Caption:='IN WAREHOUSE';
  cbbWorkTime.ItemIndex:=0;
end;
//
procedure TMA_Inspection.TakePhotoImageClick(Sender: TObject);
var
    TabSheet:TTabSheet;
    pnlReason,pnlReason_Sub:TPanel;
    Num2ID:String;
    lblReasonA:TLabel;
    edtReason:TSpinEdit;
    //
    TabInfo:TStringList;
    GXLB:String;
begin
   //
   TabSheet := pgcContent.ActivePage;
   TabInfo := TStringlist.Create;
   TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
   if (tabInfo.Count >= 5) then
   begin
     GXLB := tabInfo.Strings[3];
   end;
   TabInfo.free;
   //
   Num2ID := RightStr(TabSheet.Name, 2);
   pnlReason := TabSheet.FindChildControl('pnlReason'+Num2ID) as TPanel;
   pnlReason_Sub := pnlReason.FindChildControl('pnlReason'+Num2ID+Copy(TImage(Sender).Name,length(TImage(Sender).Name)-1,2)) as TPanel;
   lblReasonA:= pnlReason_Sub.FindComponent('lblReasonA'+Num2ID+Copy(TImage(Sender).Name,length(TImage(Sender).Name)-1,2)) as TLabel;
   edtReason:= pnlReason_Sub.FindComponent('edtReason'+Num2ID+Copy(TImage(Sender).Name,length(TImage(Sender).Name)-1,2)) as TSpinEdit;
   if edtReason.Value=0 then edtReason.value:=1;
   //
   MA_Inspectiontakephoto:=TMA_Inspectiontakephoto.Create(self);
   MA_Inspectiontakephoto.YYBH:=lblReasonA.Caption;//Defect YYBH
   MA_Inspectiontakephoto.DefQty:=edtReason.Text;//Defect Qty
   MA_Inspectiontakephoto.HIorDI:=GXLB;//Defect Qty
   //
   MA_Inspectiontakephoto.Show;
   MA_Inspectiontakephoto.InitialDevice();
   MA_Inspectiontakephoto.ReviewPanel.Align:=alClient;
   MA_Inspectiontakephoto.ReviewPanel.Visible:=true;
end;

procedure TMA_Inspection.imgQCClick(Sender: TObject);
var
  TabSheet:TTabSheet;
  DDBH,DepID,GXLB,SJXH:String;
  TabInfo:TStringlist;
begin
  //
  TabSheet := pgcContent.ActivePage;
  TabInfo := TStringlist.Create;
  TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
  if (tabInfo.Count >= 5) then
  begin
     DDBH := tabInfo.Strings[0];
     DepID := tabInfo.Strings[1];
     GXLB := tabInfo.Strings[3];
     SJXH := tabInfo.Strings[4];
  end;
  TabInfo.free;
  //
  MA_Inspection_Showimg:=TMA_Inspection_Showimg.Create(self);
  MA_Inspection_Showimg.DDBH:=DDBH;
  MA_Inspection_Showimg.DepID:=DepID;
  MA_Inspection_Showimg.GXLB:=GXLB;
  MA_Inspection_Showimg.SJXH:=SJXH;
  MA_Inspection_Showimg.Show;
  //
end;

procedure TMA_Inspection.imgReportClick(Sender: TObject);
begin
  MA_Inspection_rpt:=TMA_Inspection_rpt.Create(self);
  MA_Inspection_rpt.Show;
end;

//
procedure TMA_Inspection.InspecQtyCombo00Change(Sender: TObject);
var TabSheet:TTabSheet;
    Panel:TPanel;
    ScrollBox:TScrollBox;
    //
    InspecQtyComboObj:TCombobox;
    AccQtyLabQbj,RejQtyLabObj:TLabel;
    Num2ID:String;
begin
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
  Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
  InspecQtyComboObj := Panel.FindComponent('InspecQtyCombo'+Num2ID) as TCombobox;
  //
  with QSearch do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select Accept,Reject from QCMAStd  where SampleQty='+InspecQtyComboObj.Text+' and GXLB ='''+HIorDI+'''');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    if RecordCount>0 then
    begin
       AccQtyLabQbj := Panel.FindComponent('AccQtyLab'+Num2ID) as TLabel;
       if AccQtyLabQbj<>nil then  AccQtyLabQbj.Caption:=FieldByName('Accept').AsString;
       RejQtyLabObj := Panel.FindComponent('RejQtyLab'+Num2ID) as TLabel;
       if RejQtyLabObj<>nil then  RejQtyLabObj.Caption:=FieldByName('Reject').AsString;
    end;
    Active:=false;
  end;
  //
end;

procedure TMA_Inspection.AC_or_RE();
function Ceil(const X: Extended): Int64;
begin
  Result := Trunc(X);
  if Frac(X) > 0 then
    Inc(Result);
end;
var TabSheet:TTabSheet;
    Panel:TPanel;
    ScrollBox:TScrollBox;
    //
    ComboBox2:TCombobox;
    InspecQtyComboObj:TCombobox;
    AccQtyLabQbj,RejQtyLabObj:TLabel;
    InspecQtyObj,ACQtyObj,REQtyObj, CartontQtyObj,DefectQtyEditObj:TEdit;
    Num2ID:String;
    inputValue, percentage, result,result1, percentage1: Double;
    intValue: Integer;
begin
    tabSheet:=TTabSheet.Create(pgcContent);
    TabSheet := pgcContent.ActivePage;
    Num2ID := RightStr(TabSheet.Name, 2);
    ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
    Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
    ComboBox2 := Panel.FindComponent('ComboBox2') as TCombobox;
    ProdQty := Panel.FindComponent('ProdQty') as TEdit;
    //InspecQty := Panel.FindComponent('ProdQty') as TEdit;
    DefectQtyEditObj := Panel.FindComponent('DefectQtyEdit'+Num2ID) as TEdit;
    if ProdQty.Text = ''  then  ProdQty.Text:='0';
    inputValue:=StrToInt(ProdQty.Text);
    percentage:=30;
    percentage1:=6.5;
    result := inputValue * (percentage / 100);
    result:=Ceil(result);
    InspecQtyObj := Panel.FindComponent('InspecQty') as TEdit;
    if InspecQtyObj<>nil then InspecQtyObj.Text:=FloatToStr(result);

    if ComboBox2.ItemIndex=1 then
      InspecQtyTotal:=InspecQtyObj.Text
    else
      InspecQtyTotal:=ProdQty.Text;
    // AC
    if InspecQtyObj.Text = ''  then  InspecQtyObj.Text:='0';
    inputValue:=StrToInt(InspecQtyObj.Text);
    result := inputValue * (percentage1 / 100);
    result:=Ceil(result);
    result1 := (inputValue * (percentage1 / 100))+1;
    result1:=Ceil(result1);
    ACQtyObj := Panel.FindComponent('ACQty') as TEdit;
    if ACQtyObj<>nil then ACQtyObj.Text:=FloatToStr(result);
    // RE
    REQtyObj := Panel.FindComponent('REQty') as TEdit;
    if REQtyObj<>nil then REQtyObj.Text:=FloatToStr(result1);
    // AccRejec
    if StrToInt(DefectQtyEditObj.Text)<=result then
        AccRejec:='P'
    else
        AccRejec:='F';
end;

procedure TMA_Inspection.AC_or_RE_50();
function Ceil(const X: Extended): Int64;
begin
  Result := Trunc(X);
  if Frac(X) > 0.5 then
    Inc(Result)
  else
    Result := Trunc(X);
end;
var TabSheet:TTabSheet;
    Panel:TPanel;
    ScrollBox:TScrollBox;
    //
    ComboBox2:TCombobox;
    InspecQtyComboObj:TCombobox;
    AccQtyLabQbj,RejQtyLabObj:TLabel;
    InspecQtyObj,ACQtyObj,REQtyObj, CartontQtyObj,DefectQtyEditObj:TEdit;
    Num2ID:String;
    inputValue, percentage, result,result1, percentage1: Double;
    intValue: Integer;
begin
    tabSheet:=TTabSheet.Create(pgcContent);
    TabSheet := pgcContent.ActivePage;
    Num2ID := RightStr(TabSheet.Name, 2);
    ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
    Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
    ComboBox2 := Panel.FindComponent('ComboBox2') as TCombobox;
    ProdQty := Panel.FindComponent('ProdQty') as TEdit;
    //InspecQty := Panel.FindComponent('ProdQty') as TEdit;
    DefectQtyEditObj := Panel.FindComponent('DefectQtyEdit'+Num2ID) as TEdit;
    if ProdQty.Text = ''  then  ProdQty.Text:='0';
    inputValue:=StrToInt(ProdQty.Text);
    percentage:=50;
    percentage1:=6.5;
    result := inputValue * (percentage / 100);
    result:=Ceil(result);
    InspecQtyObj := Panel.FindComponent('InspecQty') as TEdit;
    if InspecQtyObj<>nil then InspecQtyObj.Text:=FloatToStr(result);

    if ComboBox2.ItemIndex=2 then
      InspecQtyTotal:=InspecQtyObj.Text
    else
      InspecQtyTotal:=ProdQty.Text;
    // AC
    if InspecQtyObj.Text = ''  then  InspecQtyObj.Text:='0';
    inputValue:=StrToInt(InspecQtyObj.Text);
    result := inputValue * (percentage1 / 100);
    result:=Ceil(result);
    result1 := (inputValue * (percentage1 / 100))+1;
    result1:=Ceil(result1);
    ACQtyObj := Panel.FindComponent('ACQty') as TEdit;
    if ACQtyObj<>nil then ACQtyObj.Text:=FloatToStr(result);
    // RE
    REQtyObj := Panel.FindComponent('REQty') as TEdit;
    if REQtyObj<>nil then REQtyObj.Text:=FloatToStr(result1);
    // AccRejec
    if StrToInt(DefectQtyEditObj.Text)<=result then
        AccRejec:='P'
    else
        AccRejec:='F';
end;


procedure TMA_Inspection.Load_DI_HI();
var TabSheet:TTabSheet;
    Panel:TPanel;
    ScrollBox:TScrollBox;
    //
    ComboBox2:TCombobox;
    InspecQtyComboObj:TCombobox;
    AccQtyLabQbj,RejQtyLabObj,Label_AC,Label_RE:TLabel;
    InspecQtyObj,ACQtyObj,REQtyObj, CartontQtyObj,DefectQtyEditObj:TEdit;
    Num2ID:String;
    inputValue, percentage, result, percentage1: Double;
begin
  tabSheet:=TTabSheet.Create(pgcContent);
  TabSheet := pgcContent.ActivePage;
  Num2ID := RightStr(TabSheet.Name, 2);
  ScrollBox := TabSheet.FindChildControl('sbxPairList'+Num2ID) as TScrollBox;
  Panel := ScrollBox.FindChildControl('IinfoPanel'+Num2ID) as TPanel;
  ComboBox2 := Panel.FindComponent('ComboBox2') as TCombobox;
  ProdQty := Panel.FindComponent('ProdQty') as TEdit;
  InspecQty := Panel.FindComponent('InspecQty') as TEdit;
  DefectQtyEditObj := Panel.FindComponent('DefectQtyEdit'+Num2ID) as TEdit;
  if ComboBox2.ItemIndex=0 then
  begin
    InspecQtyComboObj := Panel.FindComponent('InspecQtyCombo'+Num2ID) as TCombobox;
    InspecQtyComboObj.Visible:=true;
    InspecQty.Visible:=false;
    Label3.Visible:=false;
    ComboBox1.Visible:=false;
    MA_Inspection.Load_WOPR_MA();
    if HIorDI='DI' then
    begin
      AccQtyLabQbj := Panel.FindComponent('AccQtyLab'+Num2ID) as TLabel;
      if AccQtyLabQbj<>nil then  AccQtyLabQbj.Caption:='0';
      RejQtyLabObj := Panel.FindComponent('RejQtyLab'+Num2ID) as TLabel;
      if RejQtyLabObj<>nil then  RejQtyLabObj.Caption:='0';
      CartontQtyObj:= Panel.FindComponent('CartontQtyEdit'+Num2ID) as TEdit;
      if CartontQtyObj<>nil then  CartontQtyObj.Text:='0';
    end;
  end;
  if ComboBox2.ItemIndex=1 then
  begin
    if HIorDI='DI' then
    begin
      InspecQtyComboObj := Panel.FindComponent('InspecQtyCombo'+Num2ID) as TCombobox;
      InspecQtyComboObj.Visible:=false;
      InspecQty := Panel.FindComponent('InspecQty') as TEdit;
      InspecQty.Visible:=true;
      Label3.Visible:=false;
      ComboBox1.Visible:=false;
      CartontQtyEdit00.Text:='0';
      with TLabel.Create(Panel) do
      begin
        try
          Parent := Panel;
          Top := ACQtyLab00.Top;
          Left := ACQtyLab00.Left;
          Anchors := ACQtyLab00.Anchors;
          Align := ACQtyLab00.Align;
          Alignment := ACQtyLab00.Alignment;
          Color := ACQtyLab00.Color;
          AutoSize := ACQtyLab00.AutoSize;
          Width := ACQtyLab00.Width;
          Height := ACQtyLab00.Height;
          Font := ACQtyLab00.Font;
          Layout := ACQtyLab00.Layout;
          Transparent := ACQtyLab00.Transparent;
          Caption := ACQtyLab00.Caption;
          Name := Format('ACQtyLab%.2d', [tabNum2ID]);
        finally
        end;
      end;
      with TLabel.Create(Panel) do
      begin
        try
          Parent := Panel;
          Top := REQtyLab00.Top;
          Left := REQtyLab00.Left;
          Anchors := REQtyLab00.Anchors;
          Align := REQtyLab00.Align;
          Alignment := REQtyLab00.Alignment;
          Color := REQtyLab00.Color;
          AutoSize := REQtyLab00.AutoSize;
          Width := REQtyLab00.Width;
          Height := REQtyLab00.Height;
          Font := REQtyLab00.Font;
          Layout := REQtyLab00.Layout;
          Transparent := REQtyLab00.Transparent;
          Caption := REQtyLab00.Caption;
          Name := Format('REQtyLab%.2d', [tabNum2ID]);
        finally
        end;
      end;
      with TEdit.Create(Panel) do
      begin
        try
          Parent := Panel;
          Top := ACQty.Top;
          Left := ACQty.Left;
          Anchors := ACQty.Anchors;
          Align := ACQty.Align;
          Text := '0';
          Font := ACQty.Font;
          Width := ACQty.Width;
          Height := ACQty.Height;
          BorderStyle := ACQty.BorderStyle;
          Enabled := ACQty.Enabled;
          Color := ACQty.Color;
          Name := Format('ACQty', [tabNum2ID]);
        finally
        end;
      end;
      with TEdit.Create(Panel) do
      begin
        try
          Parent := Panel;
          Top := REQty.Top;
          Left := REQty.Left;
          Anchors := REQty.Anchors;
          Align := REQty.Align;
          Text := '0';
          Font := REQty.Font;
          Width := REQty.Width;
          Height := REQty.Height;
          BorderStyle := REQty.BorderStyle;
          Enabled := REQty.Enabled;
          Color := REQty.Color;
          Name := Format('REQty', [tabNum2ID]);
        finally
        end;
      end;
      MA_Inspection.Load_WOPR_MA();
      AccQtyLabQbj := Panel.FindComponent('AccQtyLab'+Num2ID) as TLabel;
      if AccQtyLabQbj<>nil then  AccQtyLabQbj.Caption:='0';
      RejQtyLabObj := Panel.FindComponent('RejQtyLab'+Num2ID) as TLabel;
      if RejQtyLabObj<>nil then  RejQtyLabObj.Caption:='0';
      CartontQtyObj:= Panel.FindComponent('CartontQtyEdit'+Num2ID) as TEdit;
      if CartontQtyObj<>nil then  CartontQtyObj.Text:='0';
      AC_or_RE();
    end;
  end;

  if ComboBox2.ItemIndex=2 then
  begin
    if HIorDI='DI' then
    begin
      InspecQtyComboObj := Panel.FindComponent('InspecQtyCombo'+Num2ID) as TCombobox;
      InspecQtyComboObj.Visible:=false;
      InspecQty := Panel.FindComponent('InspecQty') as TEdit;
      InspecQty.Visible:=true;
      Label3.Visible:=false;
      ComboBox1.Visible:=false;
      CartontQtyEdit00.Text:='0';
      with TLabel.Create(Panel) do
      begin
        try
          Parent := Panel;
          Top := ACQtyLab00.Top;
          Left := ACQtyLab00.Left;
          Anchors := ACQtyLab00.Anchors;
          Align := ACQtyLab00.Align;
          Alignment := ACQtyLab00.Alignment;
          Color := ACQtyLab00.Color;
          AutoSize := ACQtyLab00.AutoSize;
          Width := ACQtyLab00.Width;
          Height := ACQtyLab00.Height;
          Font := ACQtyLab00.Font;
          Layout := ACQtyLab00.Layout;
          Transparent := ACQtyLab00.Transparent;
          Caption := ACQtyLab00.Caption;
          Name := Format('ACQtyLab%.2d', [tabNum2ID]);
        finally
        end;
      end;
      with TLabel.Create(Panel) do
      begin
        try
          Parent := Panel;
          Top := REQtyLab00.Top;
          Left := REQtyLab00.Left;
          Anchors := REQtyLab00.Anchors;
          Align := REQtyLab00.Align;
          Alignment := REQtyLab00.Alignment;
          Color := REQtyLab00.Color;
          AutoSize := REQtyLab00.AutoSize;
          Width := REQtyLab00.Width;
          Height := REQtyLab00.Height;
          Font := REQtyLab00.Font;
          Layout := REQtyLab00.Layout;
          Transparent := REQtyLab00.Transparent;
          Caption := REQtyLab00.Caption;
          Name := Format('REQtyLab%.2d', [tabNum2ID]);
        finally
        end;
      end;
      with TEdit.Create(Panel) do
      begin
        try
          Parent := Panel;
          Top := ACQty.Top;
          Left := ACQty.Left;
          Anchors := ACQty.Anchors;
          Align := ACQty.Align;
          Text := '0';
          Font := ACQty.Font;
          Width := ACQty.Width;
          Height := ACQty.Height;
          BorderStyle := ACQty.BorderStyle;
          Enabled := ACQty.Enabled;
          Color := ACQty.Color;
          Name := Format('ACQty', [tabNum2ID]);
        finally
        end;
      end;
      with TEdit.Create(Panel) do
      begin
        try
          Parent := Panel;
          Top := REQty.Top;
          Left := REQty.Left;
          Anchors := REQty.Anchors;
          Align := REQty.Align;
          Text := '0';
          Font := REQty.Font;
          Width := REQty.Width;
          Height := REQty.Height;
          BorderStyle := REQty.BorderStyle;
          Enabled := REQty.Enabled;
          Color := REQty.Color;
          Name := Format('REQty', [tabNum2ID]);
        finally
        end;
      end;
      MA_Inspection.Load_WOPR_MA();
      AccQtyLabQbj := Panel.FindComponent('AccQtyLab'+Num2ID) as TLabel;
      if AccQtyLabQbj<>nil then  AccQtyLabQbj.Caption:='0';
      RejQtyLabObj := Panel.FindComponent('RejQtyLab'+Num2ID) as TLabel;
      if RejQtyLabObj<>nil then  RejQtyLabObj.Caption:='0';
      CartontQtyObj:= Panel.FindComponent('CartontQtyEdit'+Num2ID) as TEdit;
      if CartontQtyObj<>nil then  CartontQtyObj.Text:='0';
      AC_or_RE_50();
    end;
  end;


  if ComboBox2.ItemIndex=3 then
  begin
    ACQtyObj := Panel.FindComponent('ACQty') as TEdit;
    if ACQtyObj<>nil then ACQtyObj.Visible:=false;
    REQtyObj := Panel.FindComponent('REQty') as TEdit;
    if REQtyObj<>nil then REQtyObj.Visible:=false;
        Label_AC := Panel.FindComponent('ACQtyLab'+Num2ID) as TLabel;
    if Label_AC<>nil then  Label_AC.Visible:=false;
        Label_RE := Panel.FindComponent('REQtyLab'+Num2ID) as TLabel;
    if Label_RE<>nil then  Label_RE.Visible:=false;

    InspecQtyComboObj := Panel.FindComponent('InspecQtyCombo'+Num2ID) as TCombobox;
    InspecQtyComboObj.Visible:=false;
    InspecQty := Panel.FindComponent('InspecQty') as TEdit;
    InspecQty.Visible:=true;
    Label3.Visible:=false;;
    ComboBox1.Visible:=false;
    MA_Inspection.Load_WOPR_MA();
    CartontQtyEdit00.Text:='0';
    AccQtyLabQbj := Panel.FindComponent('AccQtyLab'+Num2ID) as TLabel;
    if AccQtyLabQbj<>nil then  AccQtyLabQbj.Caption:='0';
    RejQtyLabObj := Panel.FindComponent('RejQtyLab'+Num2ID) as TLabel;
    if RejQtyLabObj<>nil then  RejQtyLabObj.Caption:='0';
    CartontQtyObj:= Panel.FindComponent('CartontQtyEdit'+Num2ID) as TEdit;
    if CartontQtyObj<>nil then  CartontQtyObj.Text:='0';
    // InspecQty
    if HIorDI='DI' then
    begin
      InspecQtyObj := Panel.FindComponent('InspecQty') as TEdit;
      if InspecQtyObj<>nil then InspecQtyObj.Text:=ProdQty.Text;
      InspecQtyTotal:=ProdQty.Text;
    end else
    begin
      InspecQtyObj := Panel.FindComponent('InspecQty') as TEdit;
      if InspecQtyObj<>nil then InspecQtyObj.Text:=ProQty;
      InspecQtyTotal:=ProQty;
    end;
    AccRejec:='P';
  end;
end;


procedure TMA_Inspection.ComboBox2Change(Sender: TObject);
begin
  Load_DI_HI();
end;

procedure TMA_Inspection.ProdQtyChange(Sender: TObject);
begin
   MA_Inspection.Load_WOPR_MA();
end;

procedure TMA_Inspection.Button1Click(Sender: TObject);
begin
  Load_WOPR_MA();
end;

procedure TMA_Inspection.Button2Click(Sender: TObject);
var
  StringList: TStringList;
  FilePath: String;
  i,j,k:integer;
  TabSheet:TTabSheet;
  pnlReason,pnlReason_Sub:TPanel;
  Num2ID:String;
  lblReasonB:TLabel;
  edtReason:TSpinEdit;
  TabInfo,DefectList:TStringlist;
    //
  ProNo:integer;
  DDBH,DepID,GXLB,SJXH:String;
begin
   FilePath := 'C:\ID\ID.txt';
   if not DirectoryExists(ExtractFilePath(FilePath)) then
    ForceDirectories(ExtractFilePath(FilePath));
   TabSheet := pgcContent.ActivePage;
   Num2ID := RightStr(TabSheet.Name, 2);
   pnlReason := TabSheet.FindChildControl('pnlReason'+Num2ID) as TPanel;
   //
   TabInfo := TStringlist.Create;
   TabInfo := funcObj.SplitString(TabSheet.Hint, ',');
   if (tabInfo.Count >= 5) then
   begin
     DDBH := tabInfo.Strings[0];
     DepID := tabInfo.Strings[1];
     GXLB := tabInfo.Strings[3];
     SJXH := tabInfo.Strings[4];
   end;
   TabInfo.free;
   //
   DefectList:=TStringlist.Create;
   for i:=0 to pnlReason.ControlCount-1 do
   begin
      if pnlReason.Controls[i] is TPanel then
      begin
        pnlReason_Sub := pnlReason.Controls[i] as TPanel;
        for j:=0 to  pnlReason_Sub.ControlCount-1 do
        begin
          if pnlReason_Sub.Controls[j] is TSpinEdit then
          begin
            edtReason:=pnlReason_Sub.Controls[j] as TSpinEdit;
            if edtReason.value>0 then
            begin
              lblReasonB:=pnlReason_Sub.FindComponent('lblReasonB'+RightStr(edtReason.Name, 4)) as TLabel;
              DefectList.Add(lblReasonB.Caption+'='+inttostr(edtReason.value));
            end;
            break;
          end;
        end;
      end;
   end;
   if Edit1.Text = '' then
      LatestID:=':'+ProQty
   else
      LatestID := Edit1.Text+':'+ProQty;
   StringList := TStringList.Create;
   try
     StringList.Add(LatestID);
     if DefectList.Count>0 then
     begin
       for i := 0 to (DefectList.Count - 1) do
       begin
         TenLoi:= DefectList.Names[i];
         Sloi:=DefectList.ValueFromIndex[i];
         StringList.Add(Sloi+':'+TenLoi);
       end;
     end;
     StringList.SaveToFile(FilePath);
     //DefectList.Free;
     ShowMessage('ID saved successfully!');
   finally
     StringList.Free;
     DefectList.Free;
   end;
  //funcobj.WriteErrorLog(Edit1.Text);
end;

procedure TMA_Inspection.Button3Click(Sender: TObject);

var StringList,splist: TStringList;
    i:integer;
    //ID:string;
    Pro:string;
    FilePath: String;
    trimmedValue: string;
begin

  FilePath := 'C:\ID\ID.txt';
  if not DirectoryExists(ExtractFilePath(FilePath)) then
    ForceDirectories(ExtractFilePath(FilePath));
  begin
    StringList := TStringList.Create;
    StringList.LoadFromFile('C:\ID\ID.txt');
    //if LatestID<>'' then Edit1.Text:=LatestID;
    with QSearch do
    begin
       Active := false;
       SQL.Clear;
       SQL.Add('delete QCMAYY_temporary ');
       ExecSQL;
    end;
    splist:=funcObj.SplitString(StringList.Strings[0],':');
    if splist.Strings[0] <>'' then  Edit1.Text:=splist.Strings[0];
    splist:=funcObj.SplitString(StringList.Strings[0],':');
    if splist.Strings[1] <>'' then  ProQty_disconnected:=splist.Strings[1];

    for i:=1 to StringList.Count-1 do
    begin
      splist:=funcObj.SplitString(StringList.Strings[i],':');
      Sloi:=trim(splist.Strings[0]);
      TenLoi:=trim(splist.Strings[1]);
      with QSearch do
      begin
         SQL.Clear;
         SQL.Add('insert into QCMAYY_temporary (YYBH, Qty) ');
         SQL.Add('values (:YYBH,:Qty);');
         ParamByName('YYBH').Value := TenLoi;
         ParamByName('Qty').Value := Sloi;
         ExecSQL;
      end;
      splist.Free;
    end;
    StringList.Free;
  end;
  CheckBox1.Checked:=true;
  addTabSheet();
  showmessage('Up data ok');
end;





end.
