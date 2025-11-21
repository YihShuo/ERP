unit OutsoleInspection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, CheckLst, DB, DBTables, colorbutton, Buttons;

type
  TOutsoleInspection = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_Outsole: TEdit;
    B_OutSole: TButton;
    Label2: TLabel;
    ED_SKU: TEdit;
    B_SKU: TButton;
    ED_Size: TEdit;
    B_Size: TButton;
    Label3: TLabel;
    DefectBox: TScrollBox;
    QSearch: TQuery;
    Panel2: TPanel;
    Label4: TLabel;
    QNGReason: TQuery;
    QUpdate: TQuery;
    TitleBox_Base: TScrollBox;
    TitleBox: TScrollBox;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure B_OutSoleClick(Sender: TObject);
    procedure B_SKUClick(Sender: TObject);
    procedure ED_SKUChange(Sender: TObject);
    procedure B_SizeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ED_SizeChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure LoadTitle;
    procedure LoadDefect;
    procedure ReportButtonClick(Sender: TObject);
    procedure DefectButtonMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DefectButtonMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    { Private declarations }
  public
    SizeList: TStringList;
    Outsole_Mold_No: String;
    Appended_Mold_No: String;
    { Public declarations }
  end;

var
  OutsoleInspection: TOutsoleInspection;
  IsPassOnce: Boolean = true;

implementation

uses
  main1, OutsoleInspection_Outsole1, OutsoleInspection_SKU1, OutsoleInspection_Size1;

{$R *.dfm}

procedure TOutsoleInspection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  SizeList.Free;
  Action := caFree;
end;

procedure TOutsoleInspection.FormDestroy(Sender: TObject);
begin
  OutsoleInspection := Nil;
end;
           
procedure TOutsoleInspection.FormCreate(Sender: TObject);
begin
  SizeList := TStringList.Create;
  TitleBox.DoubleBuffered := true;
  DefectBox.DoubleBuffered := true;
  LoadTitle;
end;

procedure TOutsoleInspection.B_OutSoleClick(Sender: TObject);
begin
  if (OutsoleInspection_Outsole <> Nil) then
    OutsoleInspection_Outsole.Close;
  OutsoleInspection_Outsole := TOutsoleInspection_Outsole.Create(Self);
  OutsoleInspection_Outsole.ShowModal;
end;

procedure TOutsoleInspection.B_SKUClick(Sender: TObject);
begin
  if (ED_Outsole.Text <> '') then
  begin
    if (OutsoleInspection_SKU <> Nil) then
      OutsoleInspection_SKU.Close;
    OutsoleInspection_SKU := TOutsoleInspection_SKU.Create(Self);
    OutsoleInspection_SKU.ShowModal;
  end
  else begin
    ShowMessage('Please select an outsole first.');
  end;
end;

procedure TOutsoleInspection.ED_SKUChange(Sender: TObject);
begin
  if (ED_SKU.Text <> '') AND (SizeList.Count > 0) then
    LoadDefect;
end;

procedure TOutsoleInspection.B_SizeClick(Sender: TObject);
begin
  if (OutsoleInspection_Size <> Nil) then
    OutsoleInspection_Size.Close;
  OutsoleInspection_Size := TOutsoleInspection_Size.Create(Self);
  OutsoleInspection_Size.ShowModal;
end;

procedure TOutsoleInspection.ED_SizeChange(Sender: TObject);
begin
  if (ED_SKU.Text <> '') AND (SizeList.Count > 0) then
    LoadDefect;
end;

procedure TOutsoleInspection.LoadTitle;
var
  i: integer;
  Item: TControl;
  BaseBox: TScrollBox;
  InfoPanel: TPanel;
  InfoLabel, InfoCaption: TLabel;
  InfoButton: TColorButton;
  SplitLine: TShape;
begin
  for i := TitleBox.ControlCount - 1 downto 0 do
  begin
    Item := TitleBox.Controls[i];
    Item.Free;
  end;

  with QNGReason do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT YYBH, ZWSM FROM QCBLYY WHERE GSBH = ''' + main.Edit2.Text + ''' AND DFL = ''O'' ORDER BY YYBH');
    Active := true;
  end;

  TitleBox.DisableAlign;

  //尺碼Title
  InfoPanel := TPanel.Create(Self);
  InfoPanel.Name := 'Panel_Size_Title';
  InfoPanel.Parent := TitleBox;
  InfoPanel.Align := alLeft;
  InfoPanel.BevelOuter := bvNone;
  InfoPanel.Color := clBlack;
  InfoPanel.Width := 100;
  InfoPanel.Left := 9999;
  InfoPanel.Caption := '';

  InfoLabel := TLabel.Create(Self);
  InfoLabel.Name := 'Label_Size_Title';
  InfoLabel.Parent := InfoPanel;
  InfoLabel.Align := alClient;
  InfoLabel.Alignment := taCenter;
  InfoLabel.Color := $003C3C3C;
  InfoLabel.Layout := tlCenter;
  InfoLabel.Font.Color := clWhite;
  InfoLabel.Font.Size := 12; 
  InfoLabel.Font.Style := [fsBold];
  InfoLabel.Caption := 'SIZE';

  SplitLine := TShape.Create(Self);
  SplitLine.Parent := InfoPanel;
  SplitLine.Align := alRight;
  SplitLine.Pen.Color := clBlack;
  SplitLine.Width := 1;

  //已報總雙數Title
  InfoPanel := TPanel.Create(Self);
  InfoPanel.Name := 'Panel_Pairs_Title';
  InfoPanel.Parent := TitleBox;
  InfoPanel.Align := alLeft;  
  InfoPanel.BevelOuter := bvNone; 
  InfoPanel.Color := clBlack;
  InfoPanel.Width := 100;
  InfoPanel.Left := 9999;   
  InfoPanel.Caption := '';

  InfoLabel := TLabel.Create(Self);
  InfoLabel.Name := 'Label_Pairs_Title';
  InfoLabel.Parent := InfoPanel;
  InfoLabel.Align := alClient;
  InfoLabel.Alignment := taCenter;  
  InfoLabel.Color := $003C3C3C;
  InfoLabel.Layout := tlCenter; 
  InfoLabel.Font.Color := clWhite;
  InfoLabel.Font.Size := 12;
  InfoLabel.Font.Style := [fsBold];
  InfoLabel.WordWrap := true;
  InfoLabel.Caption := 'Total Pairs';

  SplitLine := TShape.Create(Self);
  SplitLine.Parent := InfoPanel;  
  SplitLine.Align := alRight;
  SplitLine.Pen.Color := clBlack;
  SplitLine.Width := 1;

  //報工按鈕
  InfoPanel := TPanel.Create(Self);
  InfoPanel.Name := 'Panel_Pass_Title';
  InfoPanel.Parent := TitleBox;
  InfoPanel.Align := alLeft;   
  InfoPanel.BevelOuter := bvNone;
  InfoPanel.Color := clBlack;
  InfoPanel.Width := 80;
  InfoPanel.Left := 9999;  
  InfoPanel.Caption := '';

  InfoLabel := TLabel.Create(Self);
  InfoLabel.Name := 'Label_Pass_Title';
  InfoLabel.Parent := InfoPanel;
  InfoLabel.Align := alClient;
  InfoLabel.AutoSize := false;
  InfoLabel.Alignment := taCenter;  
  InfoLabel.Color := $003C3C3C;
  InfoLabel.Layout := tlCenter;
  InfoLabel.Font.Size := 12;
  InfoLabel.Font.Color := clWhite;
  InfoLabel.Font.Style := [fsBold];
  InfoLabel.Caption := 'PASS';

  SplitLine := TShape.Create(Self);
  SplitLine.Parent := InfoPanel;
  SplitLine.Align := alRight;
  SplitLine.Pen.Color := clBlack;
  SplitLine.Width := 1;

  QNGReason.First;
  while not QNGReason.Eof do
  begin
    InfoPanel := TPanel.Create(Self);
    InfoPanel.Name := 'Panel_' + QNGReason.FieldByName('YYBH').AsString + '_Title';
    InfoPanel.Parent := TitleBox;
    InfoPanel.Align := alLeft;   
    InfoPanel.BevelOuter := bvNone;
    InfoPanel.Color := clBlack;
    InfoPanel.Width := 80;
    InfoPanel.Left := 9999;  
    InfoPanel.Caption := '';

    InfoLabel := TLabel.Create(Self);
    InfoLabel.Name := 'Label_' + QNGReason.FieldByName('YYBH').AsString + '_Title';
    InfoLabel.Parent := InfoPanel;
    InfoLabel.Align := alClient;
    InfoLabel.AutoSize := false;
    InfoLabel.Alignment := taCenter;  
    InfoLabel.Color := $003C3C3C;
    InfoLabel.Layout := tlCenter;
    InfoLabel.Font.Size := 12;
    InfoLabel.Font.Color := clWhite;
    InfoLabel.Font.Style := [fsBold];
    InfoLabel.WordWrap := true;
    InfoLabel.Caption := UpperCase(QNGReason.FieldByName('ZWSM').AsString);

    SplitLine := TShape.Create(Self);
    SplitLine.Parent := InfoPanel;
    SplitLine.Align := alRight;
    SplitLine.Pen.Color := clBlack;
    SplitLine.Width := 1;

    QNGReason.Next;
  end;
  
  TitleBox.EnableAlign;
  TitleBox.Perform(WM_VSCROLL, MakeWParam(SB_BOTTOM, 0), 0);
  TitleBox.Perform(WM_VSCROLL, MakeWParam(SB_TOP, 0), 0);
  TitleBox.Perform(WM_HSCROLL, MakeWParam(SB_RIGHT, 0), 0);
  TitleBox.Perform(WM_HSCROLL, MakeWParam(SB_LEFT, 0), 0);
end;

procedure TOutsoleInspection.LoadDefect;
var
  i: integer;
  Item: TControl;
  BaseBox: TScrollBox;
  InfoPanel, InfoButton: TPanel;
  InfoLabel, InfoCaption: TLabel;
  SplitLine: TShape;
  SplitStringList: TStringList;
begin
  LoadTitle;

  for i := DefectBox.ControlCount - 1 downto 0 do
  begin
    Item := DefectBox.Controls[i];
    Item.Free;
  end;

  with QNGReason do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT YYBH, ZWSM FROM QCBLYY WHERE GSBH = ''' + main.Edit2.Text + ''' AND DFL = ''O'' ORDER BY YYBH');
    Active := true;
  end;

  DefectBox.DisableAlign;

  for i := 0 to SizeList.Count - 1 do
  begin
    //底容器
    BaseBox := TScrollBox.Create(Self);
    BaseBox.Name := 'Box_Base_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
    BaseBox.Parent := DefectBox;
    BaseBox.Align := alTop;
    BaseBox.BevelInner := bvSpace;
    BaseBox.BevelKind := bkFlat;
    BaseBox.BevelOuter := bvRaised;
    BaseBox.BorderStyle := bsNone;
    BaseBox.Height := 100;
    BaseBox.Top := 9999; 
    BaseBox.Color := clBlack;

    //尺碼資訊
    InfoPanel := TPanel.Create(Self);
    InfoPanel.Name := 'Panel_Size_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
    InfoPanel.Parent := BaseBox;
    InfoPanel.Align := alLeft;
    InfoPanel.BevelOuter := bvNone;
    InfoPanel.Color := clBlack;
    InfoPanel.Width := 100;
    InfoPanel.Left := 9999;
    InfoPanel.Caption := '';

    InfoLabel := TLabel.Create(Self);
    InfoLabel.Name := 'Label_Size_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
    InfoLabel.Parent := InfoPanel;
    InfoLabel.Align := alClient;
    InfoLabel.Alignment := taCenter;
    InfoLabel.Layout := tlCenter;
    InfoLabel.Font.Size := 20;
    InfoLabel.Caption := SizeList[i];

    SplitLine := TShape.Create(Self);
    SplitLine.Parent := InfoPanel;
    SplitLine.Align := alRight;
    SplitLine.Pen.Color := clWhite;
    SplitLine.Width := 1;

    // 模具編號、追加模具編號
    try
      SplitStringList := TStringList.Create;
      SplitStringList.Delimiter := '|';
      SplitStringList.DelimitedText := ED_Outsole.Text;
      Outsole_Mold_No := SplitStringList[0];
      Appended_Mold_No := SplitStringList[1];
    finally
      SplitStringList.Free;
    end;
    
    //已報總雙數
    with QSearch do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ISNULL(SUM(Qty), 0) AS Qty FROM WOPR_Outsole');
      SQL.Add('WHERE DDMH = ''' + Outsole_Mold_No + ''' AND Appended_Mold_Number = ''' + Appended_Mold_No +  ''' AND Article = ''' + ED_SKU.Text + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''O''');
      SQL.Add('AND Size = ''' + SizeList[i] + ''' AND CONVERT(VARCHAR, SCDate, 111) = CONVERT(VARCHAR, GetDate(), 111)');
      Active := true;
    end;

    InfoPanel := TPanel.Create(Self);
    InfoPanel.Name := 'Panel_Pairs_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
    InfoPanel.Parent := BaseBox;
    InfoPanel.Align := alLeft;  
    InfoPanel.BevelOuter := bvNone; 
    InfoPanel.Color := clBlack;
    InfoPanel.Width := 100;
    InfoPanel.Left := 9999;   
    InfoPanel.Caption := '';

    InfoLabel := TLabel.Create(Self);
    InfoLabel.Name := 'Label_Pairs_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
    InfoLabel.Parent := InfoPanel;
    InfoLabel.Align := alClient;
    InfoLabel.Alignment := taCenter;
    InfoLabel.Layout := tlCenter;
    InfoLabel.Font.Size := 20;
    if (QSearch.RecordCount > 0) then
      InfoLabel.Caption := QSearch.FieldByName('Qty').AsString
    else
      InfoLabel.Caption := '0';

    SplitLine := TShape.Create(Self);
    SplitLine.Parent := InfoPanel;  
    SplitLine.Align := alRight;
    SplitLine.Pen.Color := clWhite;
    SplitLine.Width := 1;

    //報工按鈕
    with QSearch do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ISNULL(SUM(Qty), 0) AS Qty FROM WOPR_Outsole');
      SQL.Add('WHERE DDMH = ''' + Outsole_Mold_No + ''' AND Appended_Mold_Number = ''' + Appended_Mold_No + ''' AND Article = ''' + ED_SKU.Text + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''O''');
      SQL.Add('AND Size = ''' + SizeList[i] + ''' AND Defect = ''Pass'' AND CONVERT(VARCHAR, SCDate, 111) = CONVERT(VARCHAR, GetDate(), 111)');
      Active := true;
    end;

    InfoPanel := TPanel.Create(Self);
    InfoPanel.Name := 'Panel_Pass_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
    InfoPanel.Parent := BaseBox;
    InfoPanel.Align := alLeft;   
    InfoPanel.BevelOuter := bvNone;
    InfoPanel.Color := clBlack;
    InfoPanel.Width := 80;
    InfoPanel.Left := 9999;  
    InfoPanel.Caption := '';

    InfoLabel := TLabel.Create(Self);
    InfoLabel.Name := 'Label_Pass_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
    InfoLabel.Parent := InfoPanel;
    InfoLabel.Align := alCustom;
    InfoLabel.AutoSize := false;
    InfoLabel.Alignment := taCenter;
    InfoLabel.Layout := tlCenter;
    InfoLabel.Font.Size := 16;
    InfoLabel.Font.Color := clBlack;
    InfoLabel.Color := clSilver; 
    InfoLabel.Height := 30;
    InfoLabel.Width := 78;
    InfoLabel.Top := 0;
    InfoLabel.Left := 0;
    if (QSearch.RecordCount > 0) then
      InfoLabel.Caption := QSearch.FieldByName('Qty').AsString
    else
      InfoLabel.Caption := '0';

    InfoButton := TPanel.Create(Self);
    InfoButton.Name := 'Button_Pass_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
    InfoButton.Parent := InfoPanel;
    InfoButton.Align := alBottom;
    InfoButton.BevelInner := bvRaised;
    InfoButton.BevelOuter := bvSpace;
    InfoButton.Color := clBtnFace;
    InfoButton.Font.Color := $0000D700;
    InfoButton.Height := 67;
    InfoButton.Caption := '';

    InfoLabel := TLabel.Create(Self);
    InfoLabel.Name := 'LabelCode_Pass_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
    InfoLabel.Parent := InfoButton;
    InfoLabel.Align := alClient;
    InfoLabel.AutoSize := false;
    InfoLabel.Alignment := taCenter;
    InfoLabel.Layout := tlCenter;
    InfoLabel.Font.Size := 16;
    InfoLabel.Font.Color := $0000DC00;
    InfoLabel.Height := 68;
    InfoLabel.Transparent := true;
    InfoLabel.WordWrap := true;
    InfoLabel.Caption := 'PASS';
    InfoLabel.OnClick := ReportButtonClick;
    InfoLabel.OnMouseDown := DefectButtonMouseDown;
    InfoLabel.OnMouseUp := DefectButtonMouseUp;

    QNGReason.First;
    while not QNGReason.Eof do
    begin
      with QSearch do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('SELECT ISNULL(SUM(Qty), 0) AS Qty FROM WOPR_Outsole');
        SQL.Add('WHERE DDMH = ''' + Outsole_Mold_No + ''' AND Appended_Mold_Number = ''' + Appended_Mold_No + ''' AND Article = ''' + ED_SKU.Text + ''' AND GSBH = ''' + main.Edit2.Text + ''' AND GXLB = ''O''');
        SQL.Add('AND Size = ''' + SizeList[i] + ''' AND Defect = ''' + QNGReason.FieldByName('YYBH').AsString + ''' AND CONVERT(VARCHAR, SCDate, 111) = CONVERT(VARCHAR, GetDate(), 111)');
        Active := true;
      end;

      InfoPanel := TPanel.Create(Self);
      InfoPanel.Name := 'Panel_' + QNGReason.FieldByName('YYBH').AsString + '_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
      InfoPanel.Parent := BaseBox;
      InfoPanel.Align := alLeft;
      InfoPanel.BevelOuter := bvNone;
      InfoPanel.Color := clBlack;
      InfoPanel.Width := 80;
      InfoPanel.Left := 9999;  
      InfoPanel.Caption := '';

      InfoLabel := TLabel.Create(Self);
      InfoLabel.Name := 'Label_' + QNGReason.FieldByName('YYBH').AsString + '_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
      InfoLabel.Parent := InfoPanel;
      InfoLabel.Align := alCustom;
      InfoLabel.AutoSize := false;
      InfoLabel.Alignment := taCenter;
      InfoLabel.Layout := tlCenter;
      InfoLabel.Font.Size := 16;
      InfoLabel.Font.Color := clBlack;
      InfoLabel.Color := clSilver;
      InfoLabel.Height := 30;
      InfoLabel.Width := 78;
      InfoLabel.Top := 0;
      InfoLabel.Left := 0;
      if (QSearch.RecordCount > 0) then
        InfoLabel.Caption := QSearch.FieldByName('Qty').AsString
      else
        InfoLabel.Caption := '0';

      InfoButton := TPanel.Create(Self);
      InfoButton.Name := 'Button_' + QNGReason.FieldByName('YYBH').AsString + '_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
      InfoButton.Parent := InfoPanel;
      InfoButton.Align := alBottom;
      InfoButton.BevelInner := bvRaised;
      InfoButton.BevelOuter := bvSpace;
      InfoButton.Color := clBtnFace;
      InfoButton.Font.Color := clRed;
      InfoButton.Height := 67;
      InfoButton.Caption := '';

      InfoLabel := TLabel.Create(Self);
      InfoLabel.Name := 'LabelCode_' + QNGReason.FieldByName('YYBH').AsString + '_' + StringReplace(SizeList[i], '.', 'dot', [rfReplaceAll]);
      InfoLabel.Parent := InfoButton;
      InfoLabel.Align := alClient;
      InfoLabel.AutoSize := false;
      InfoLabel.Alignment := taCenter;
      InfoLabel.Layout := tlCenter;
      InfoLabel.Font.Size := 16;
      InfoLabel.Font.Color := clRed;
      InfoLabel.Height := 68;
      InfoLabel.Transparent := true;
      InfoLabel.WordWrap := true;
      InfoLabel.Caption := 'CODE' + #13#10 + QNGReason.FieldByName('YYBH').AsString;
      InfoLabel.OnClick := ReportButtonClick;
      InfoLabel.OnMouseDown := DefectButtonMouseDown;
      InfoLabel.OnMouseUp := DefectButtonMouseUp;

      QNGReason.Next;
    end;
  end;
  DefectBox.EnableAlign;
  DefectBox.Perform(WM_VSCROLL, MakeWParam(SB_BOTTOM, 0), 0);
  DefectBox.Perform(WM_VSCROLL, MakeWParam(SB_TOP, 0), 0);
end;

procedure TOutsoleInspection.ReportButtonClick(Sender: TObject);
var
  TempID, DefectID, Size, Size_dot: string;
  ReportQty: Double;
  ContainBox: TScrollBox;
  TotalPairs, DefectPairs: TLabel;
begin
  if ED_SKU.Text = '' then
  begin
    ShowMessage('Please select an outsole first.');
    Abort;
  end;
  
  TempID := StringReplace(TLabel(Sender).Name, 'LabelCode_', '', [rfReplaceAll]);
  DefectID := Copy(TempID, 1, Pos('_', TempID)-1);
  Size_dot := Copy(TempID, Pos('_', TempID)+1, Length(TempID)-Pos('_', TempID));
  Size := StringReplace(Size_dot, 'dot', '.', [rfReplaceAll]);

  // REPORT 次數
  if (DefectID = 'Pass') then
  begin
    ReportQty := StrToFloat(Button1.Hint);
  end else
  begin
    ReportQty := 0.5;
  end;


  ContainBox := TScrollBox(Self.FindComponent('Box_Base_' + Size_dot));
  DefectPairs := TLabel(Self.FindComponent('Label_' + DefectID + '_' + Size_dot));
  DefectPairs.Caption := FloatToStr(StrToFloat(DefectPairs.Caption)+ReportQty);
  TotalPairs := TLabel(Self.FindComponent('Label_Pairs_' + Size_dot));
  TotalPairs.Caption := FloatToStr(StrToFloat(TotalPairs.Caption)+ReportQty);

  with QUpdate do
  begin
    SQL.Clear;
    SQL.Add('INSERT INTO WOPR_Outsole (SCDate, GSBH, DepNo, GXLB, DDMH, Appended_Mold_Number, Article, Defect, Size, Qty, UserID, UserDate)');
    SQL.Add('VALUES (GetDate(), ''' + main.Edit2.Text + ''', '''', ''O'', ''' + Outsole_Mold_No + ''', ''' + Appended_Mold_No + ''', ''' + ED_SKU.Text + ''', ''' + DefectID + ''', ''' + Size + ''', ''' + FloatToStr(ReportQty) + ''', ''' + main.Edit1.Text + ''', GetDate())');
    ExecSQL;
  end;

  ContainBox.SetFocus;
end;

procedure TOutsoleInspection.DefectButtonMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TPanel(TLabel(Sender).Parent).Color := clGray;
end;

procedure TOutsoleInspection.DefectButtonMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  TPanel(TLabel(Sender).Parent).Color := clBtnFace;
end;

procedure TOutsoleInspection.Button1Click(Sender: TObject);
begin
  if IsPassOnce then
  begin
    IsPassOnce := false;
    Button1.Caption := 'PASS=12';
    Button1.Hint := '12';
  end else
  begin
    IsPassOnce := true;
    Button1.Caption := 'PASS=1';
    Button1.Hint := '1';
  end;
end;

end.
