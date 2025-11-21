unit SOPProcessFlow1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, Buttons, DB, DBTables,
  ComCtrls, ImgList, Menus, Grids, DateUtils;

type
  TreeNodeSrc = record
  ParNode: TTreeNode;
  Levels: String;
end;

type
  TSOPProcessFlow = class(TForm)
    Panel5: TPanel;
    Label6: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ArticleEdit: TEdit;
    Button3: TButton;
    BuyNoEdit: TEdit;
    XieXingEdit: TEdit;
    SheHaoEdit: TEdit;
    JiJieEdit: TEdit;
    DBGridEh1: TDBGridEh;
    Panel9: TPanel;
    XXZL: TQuery;
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLARTICLE: TStringField;
    XXZLXieMing: TStringField;
    DS1: TDataSource;
    ImageList: TImageList;
    PopupMenu: TPopupMenu;
    tmpQry: TQuery;
    Panel1: TPanel;
    ArticlePopMenu: TPopupMenu;
    Copy1: TMenuItem;
    XXZLcountgc: TIntegerField;
    QProcess: TQuery;
    QParts: TQuery;
    Modify1: TMenuItem;
    DELETE1: TMenuItem;
    SAVE1: TMenuItem;
    CANCEL1: TMenuItem;
    CLEAR1: TMenuItem;
    Panel2: TPanel;
    Label2: TLabel;
    Panel8: TPanel;
    Panel11: TPanel;
    Panel7: TPanel;
    BT2: TBitBtn;
    BT3: TBitBtn;
    BT4: TBitBtn;
    BT5: TBitBtn;
    BT6: TBitBtn;
    BT7: TBitBtn;
    BT1: TBitBtn;
    BT8: TBitBtn;
    BT9: TBitBtn;
    BT10: TBitBtn;
    BT11: TBitBtn;
    BT12: TBitBtn;
    BT13: TBitBtn;
    TreeView: TTreeView;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Splitter1: TSplitter;
    SOPCutS_GCQry: TQuery;
    SOPCutS_GCQryXieXing: TStringField;
    SOPCutS_GCQrySheHao: TStringField;
    SOPCutS_GCQrygcbwdh: TStringField;
    SOPCutS_GCQrylevels: TStringField;
    SOPCutS_GCQryywsm: TStringField;
    SOPCutS_GCQryzwsm: TStringField;
    SOPCutS_GCQryQty1Day: TFloatField;
    SOPCutS_GCQryMemo: TStringField;
    SOPCutS_GCQryZSDH: TStringField;
    SOPCutS_GCQryZSJC: TStringField;
    SOPCutS_GCQryUSERID: TStringField;
    SOPCutS_GCQryUSERDATE: TDateTimeField;
    SOPCutS_GCQryYN: TStringField;
    SOPCutS_GCQrycountBWBH: TIntegerField;
    SOPCutS_GCQryEarlyDay: TFloatField;
    DS2: TDataSource;
    SOPCutS_GCSQry: TQuery;
    SOPCutS_GCSQryXieXing: TStringField;
    SOPCutS_GCSQrySheHao: TStringField;
    SOPCutS_GCSQrygcbwdh: TStringField;
    SOPCutS_GCSQrybwdh: TStringField;
    SOPCutS_GCSQryywsm: TStringField;
    SOPCutS_GCSQryzwsm: TStringField;
    SOPCutS_GCSQryUSERID: TStringField;
    SOPCutS_GCSQryUSERDATE: TDateTimeField;
    SOPCutS_GCSQryYN: TStringField;
    DS3: TDataSource;
    N1: TMenuItem;
    CB_Schedule: TCheckBox;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    DTP2: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure AddRoot1Click(Sender: TObject);
    procedure XXZLAfterScroll(DataSet: TDataSet);
    procedure Copy1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure XXZLAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeViewDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TreeViewDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure StringGrid2StartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure StringGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Modify1Click(Sender: TObject);
    procedure CLEAR1Click(Sender: TObject);
    procedure CANCEL1Click(Sender: TObject);
    procedure SAVE1Click(Sender: TObject);
    procedure TreeViewMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeViewStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure DELETE1Click(Sender: TObject);
    procedure BT1Click(Sender: TObject);
    procedure SOPCutS_GCQryAfterOpen(DataSet: TDataSet);
    procedure BT4Click(Sender: TObject);
    procedure BT5Click(Sender: TObject);
    procedure BT6Click(Sender: TObject);
  private
    Mode: String;
    MoveNode: TTreeNode;
    IsModify: Boolean;
    { Private declarations }
    ProTreeNodeSrc: array of TreeNodeSrc;
    function GetChar(i: integer): string;
    function ShowProcessTree_Loop(Levels: String; Cnt: byte): TTreeNode;
    procedure ShowProcessTree;
    procedure SaveProcessTree;
    procedure ProccessTree_Loop(Node: TTreeNode; Parentlev: String; gcbwdh: string);
    procedure Update_KT_SOPCutS_GCS(gcbwdh: string; levels: string; bwdh: string);
    procedure SetProcess;
    procedure SetParts;
  public

    { Public declarations }
  end;

var
  SOPProcessFlow: TSOPProcessFlow;



implementation

uses
  main1, SOPPrcessFlow_Part1, SOPProcessFlow_Copy1, FunUnit;

{$R *.dfm}

function  TSOPProcessFlow.GetChar(i:integer):string;
var reStr:String;
begin
  case i of
    1:reStr := '1';
    2:reStr := '2';
    3:reStr := '3';
    4:reStr := '4';
    5:reStr := '5';
    6:reStr := '6';
    7:reStr := '7';
    8:reStr := '8';
    9:reStr := '9';
    10:reStr := 'A';
    11:reStr := 'B';
    12:reStr := 'C';
    13:reStr := 'D';
    14:reStr := 'E';
    15:reStr := 'F';
    16:reStr := 'G';
    17:reStr := 'H';
    18:reStr := 'I';
    19:reStr := 'J';
    20:reStr := 'K';
    21:reStr := 'L';
    22:reStr := 'M';
    23:reStr := 'N';
    24:reStr := 'O';
    25:reStr := 'P';
    26:reStr := 'Q';
    27:reStr := 'R';
    28:reStr := 'S';
    29:reStr := 'T';
    30:reStr := 'U';
    31:reStr := 'V';
    32:reStr := 'W';
    33:reStr := 'X';
    34:reStr := 'Y';
    35:reStr := 'Z';
  end;
  Result := reStr;
end;

procedure TSOPProcessFlow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSOPProcessFlow.FormDestroy(Sender: TObject);
begin
  SOPProcessFlow := nil;
end;

procedure TSOPProcessFlow.Button3Click(Sender: TObject);
begin
  if (CB_Schedule.Checked = false) AND (ArticleEdit.Text = '') AND (BuyNoEdit.Text = '') AND (XieXingEdit.Text = '') AND (JIJieEdit.Text = '') then
  begin
    ShowMessage('At least one search condition is required');
    Exit;
  end;

  SOPCutS_GCQry.Active:=true;
  with XXZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT XXZL.XieXing, XXZL.SheHao, XXZL.Article, XXZL.XieMing, KT_SOPCutS_GC.CountGC FROM XXZL');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT XieXing, SheHao, COUNT(gcbwdh) AS CountGC FROM KT_SOPCutS_GC');
    SQL.Add('  GROUP BY XieXing, SheHao');
    SQL.Add(') AS KT_SOPCutS_GC ON KT_SOPCutS_GC.XieXing = XXZL.XieXing AND KT_SOPCutS_GC.SheHao = XXZL.SheHao');
    if (CB_Schedule.Checked) then
    begin
      SQL.Add('LEFT JOIN (');
      SQL.Add('  SELECT DISTINCT DDZL.XieXing, DDZL.SheHao FROM schedule_crawler AS SC');
      SQL.Add('  LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(SC.ry) - LEN(REPLACE(SC.ry, ''-'', '''')) < 2 THEN SC.ry ELSE SUBSTRING(SC.ry, 1, LEN(SC.ry) - CHARINDEX(''-'', REVERSE(SC.ry))) END');
      SQL.Add('  WHERE SC.schedule_date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
      SQL.Add(') AS SC ON SC.XieXing = XXZL.XieXing AND SC.SheHao = XXZL.SheHao');
    end;
    SQL.Add('WHERE XXZL.ARTICLE LIKE ''' + ArticleEdit.Text + '%'' AND XXZL.XieXIng LIKE ''' + XieXingEdit.Text + '%'' AND XXZL.SheHao LIKE ''' + SheHaoEdit.Text + '%'' AND XXZL.JiJie LIKE ''' + JiJieEdit.Text + '%''');
    if (BuyNoEdit.Text <> '') then
      SQL.Add('AND EXISTS (SELECT XieXing, SheHao FROM DDZL WHERE DDZL.XieXing = XXZL.XieXing AND DDZL.SheHao = XXZL.SheHao AND DDZL.BUYNO LIKE ''' + BuyNoEdit.Text + '%'' GROUP BY XieXing, SheHao)');
    if (CB_Schedule.Checked) then
      SQL.Add('AND SC.XieXing IS NOT NULL');
    SQL.Add('ORDER BY KT_SOPCutS_GC.CountGC, XXZL.XieXing, XXZL.SheHao');
    Active := true;
  end;
end;

function TSOPProcessFlow.ShowProcessTree_Loop(Levels: String; Cnt: byte): TTreeNode;
var
  i: integer;
  Node: TTreeNode;
begin
  for i := 0 to High(ProTreeNodeSrc) do
  begin
    if (ProTreeNodeSrc[i].Levels <> '') then
    begin
      if (Copy(Levels, 1, Length(Levels) - Cnt) = ProTreeNodeSrc[i].Levels) then
      begin
        Node := ProTreeNodeSrc[i].ParNode;
        break;
      end;
    end;
  end;

  Result := Node;
end;

procedure TSOPProcessFlow.ShowProcessTree();
var
  i, j: integer;
  ParentNode, ChildNode: TTreeNode;
  Levels: String;
  NodeText: String;
begin
  if (SOPCutS_GCQry.Active = false) then Exit;
  if (SOPCutS_GCSQry.Active = false) then Exit;

  //初始化節點儲存
  SetLength(ProTreeNodeSrc, SOPCutS_GCQry.RecordCount);
  TreeView.Items.Clear;

  SOPCutS_GCQry.First;
  for i := 0 to SOPCutS_GCQry.RecordCount-1 do
  begin
    Levels := SOPCutS_GCQry.FieldByName('LevelS').AsString;
    NodeText := SOPCutS_GCQry.FieldByName('gcbwdh').AsString + '-' + SOPCutS_GCQry.FieldByName('YWSM').AsString + '-' + SOPCutS_GCQry.FieldByName('ZWSM').AsString;

    with TreeView.Items do
    begin
      if (Length(Levels) = 1) then
      begin
        ParentNode := Add(nil, NodeText);
        ParentNode.ImageIndex := 0;
        ParentNode.SelectedIndex := 0;

        ProTreeNodeSrc[i].ParNode := ParentNode;
        ProTreeNodeSrc[i].Levels := Levels;
      end
      else begin
        ParentNode := ShowProcessTree_Loop(Levels, 1);
        ChildNode := AddChild(ParentNode, NodeText);
        ChildNode.ImageIndex := 0;
        ChildNode.SelectedIndex := 0;

        ProTreeNodeSrc[i].ParNode := ChildNode;
        ProTreeNodeSrc[i].Levels := Levels;
      end;
    end;
    
    //明細部位
    for j := 0 to SOPCutS_GCSQry.RecordCount-1 do
    begin
      Levels := SOPCutS_GCQry.FieldByName('LevelS').AsString;
      NodeText := SOPCutS_GCSQry.FieldByName('bwdh').AsString + '-' + SOPCutS_GCSQry.FieldByName('YWSM').AsString + '-' + SOPCutS_GCSQry.FieldByName('ZWSM').AsString;
      //原材料裁斷部件
      if (Copy(SOPCutS_GCSQry.FieldByName('bwdh').AsString, 1, 2) <> '0G') then
      begin
        with TreeView.Items do
        begin
          ParentNode := ShowProcessTree_Loop(Levels, 0);
          ChildNode := AddChild(ParentNode, NodeText);
          ChildNode.ImageIndex := 1;
          ChildNode.SelectedIndex := 1;
        end;
      end;
      SOPCutS_GCSQry.Next;
    end;
    SOPCutS_GCQry.Next;
  end;
  TreeView.FullExpand;
end;

procedure TSOPProcessFlow.AddRoot1Click(Sender: TObject);
begin
  SOPPrcessFlow_Part:=TSOPPrcessFlow_Part.Create(self);
  SOPPrcessFlow_Part.SetParameter(true,'Insert');
  SOPPrcessFlow_Part.Show;
end;

procedure TSOPProcessFlow.Update_KT_SOPCutS_GCS(gcbwdh: string; levels: string; bwdh: string);
begin
  if (bwdh = '') then
  begin
    with tmpQry do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('INSERT INTO KT_SOPCutS_GC(XieXing, SheHao, gcbwdh, Levels, USERID, USERDATE, YN)');
      SQL.Add('VALUES(''' + XXZL.FieldByName('XieXing').AsString + ''', ''' + XXZL.FieldByName('SheHao').AsString + ''', ''' + gcbwdh + ''', ''' + Levels + ''', ''' + main.Edit1.Text + ''', GetDate(), ''1'')');
      ExecSQL();
    end;
  end
  else begin
    with tmpQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('INSERT INTO KT_SOPCutS_GCS(XieXing, SheHao, gcbwdh, bwdh, USERID, USERDATE, YN)');
      SQL.Add('VALUES(''' + XXZL.FieldByName('XieXing').AsString + ''', ''' + XXZL.FieldByName('SheHao').AsString + ''', ''' + gcbwdh + ''', ''' + bwdh + ''', ''' + main.Edit1.Text + ''', GetDate(), ''1'')');
      ExecSQL();
    end;
  end;
end;

procedure TSOPProcessFlow.ProccessTree_Loop(Node:TTreeNode;Parentlev:String;gcbwdh:string);
var
  i: integer;
  FChild: TTreeNode;
  tmpgcbwdh, Levels: string;
begin
 for i := 0 to Node.Count-1 do
 begin
   FChild := Node.Item[i];
   Levels := Parentlev + GetChar(i+1);
   tmpgcbwdh := Copy(FChild.Text, 1, 6);
   if (Copy(tmpgcbwdh, 1, 2) <> '0G') then tmpgcbwdh := Copy(FChild.Text, 1, 4); //裁斷部件
   if (Copy(tmpgcbwdh, 1, 2) = '0G') then Update_KT_SOPCutS_GCS(tmpgcbwdh, Levels, ''); //Add KT_SOPCutS_GC
   Update_KT_SOPCutS_GCS(gcbwdh, Parentlev, tmpgcbwdh); //Add KT_SOPCutS_GCS
   if (FChild.Count > 0) then ProccessTree_Loop(FChild, Levels, tmpgcbwdh);
 end;
end;

procedure TSOPProcessFlow.SaveProcessTree;
  function CheckIsRepeat: TTreeNode;
  var
    i, j: integer;
    Node1, Node2: TTreeNode;
    gcbwdh1, gcbwdh2: String;
    IsBreak: boolean;
    resNode: TTreeNode;
  begin
    resNode := nil;
    for i := 0 to TreeView.Items.Count-1 do
    begin
      Node1 := TreeView.Items[i];
      for j := i+1 to TreeView.Items.Count-1 do
      begin
        Node2 := TreeView.Items[j];
        gcbwdh1 := Copy(Node1.Text,1,6);
        if (Copy(gcbwdh1,1,2) <> '0G') then gcbwdh1 := Copy(Node1.Text, 1, 4);
        gcbwdh2 := Copy(Node2.Text, 1, 6);
        if (Copy(gcbwdh2, 1, 2) <> '0G') then gcbwdh2 := Copy(Node2.Text, 1, 4);
        if (gcbwdh1 = gcbwdh2) then
        begin
          resNode := Node2;
          IsBreak := true;
        end;
        if (IsBreak = true) then break;
      end;
      if (IsBreak = true) then break;
    end;
    result := resNode;
  end;
var
  i, rootindex: integer;
  RootNode, CheckRepeatNode: TTreeNode;
  tmpgcbwdh, Levels: string;
begin
 CheckRepeatNode := CheckIsRepeat;
 if (CheckRepeatNode <> nil) then
 begin
   Showmessage('Process can''t repeat:'+CheckRepeatNode.Text);
   Exit;
 end;

 //刪除加工資料
 with tmpQry do
 begin
   Active := false;
   SQL.Clear;
   SQL.Add('DELETE FROM KT_SOPCutS_GC WHERE XieXing = ''' + XXZL.FieldByName('XieXing').AsString + ''' AND SheHao = ''' + XXZL.FieldByName('SheHao').AsString + '''');
   SQL.Add('DELETE FROM KT_SOPCutS_GCS WHERE XieXing = ''' + XXZL.FieldByName('XieXing').AsString + ''' AND SheHao = ''' + XXZL.FieldByName('SheHao').AsString + '''');
   ExecSQL();
 end;
 rootindex := 0;
 for i := 0 to TreeView.Items.Count-1 do
 begin
   RootNode := TreeView.Items[i];
   if (RootNode.Parent = nil) then
   begin
     Levels := GetChar(rootindex+1);
     rootindex := rootindex+1;
     tmpgcbwdh := Copy(RootNode.Text, 1, 6);
     Update_KT_SOPCutS_GCS(tmpgcbwdh, Levels, ''); //Add KT_SOPCutS_GC
     if (RootNode.Count > 0) then
       ProccessTree_Loop(RootNode, Levels, tmpgcbwdh);
   end;
 end;

 ShowMessage('Success');
end;

procedure TSOPProcessFlow.XXZLAfterScroll(DataSet: TDataSet);
begin
  Label2.Caption := ' SHOES : ' + XXZL.FieldByName('XieXing').AsString + '　　　COLOR : ' + XXZL.FieldByName('SheHao').AsString;
  ShowProcessTree;
  SetProcess;
  SetParts;
  {if (XXZL.FieldByName('CountGC').AsInteger > 0) then
  begin

  end
  else begin

  end;}
end;

procedure TSOPProcessFlow.Copy1Click(Sender: TObject);
begin
  if (XXZL.Active = false) then Exit;
  if (SOPProcessFlow_Copy = Nil) then
  begin
    SOPProcessFlow_Copy := TSOPProcessFlow_Copy.Create(self);
    SOPProcessFlow_Copy.SetArticleInfo(XXZL.FieldByName('XieXing').AsString, XXZL.FieldByName('SheHao').AsString);
    SOPProcessFlow_Copy.XieXingEdit.Text := XXZL.FieldByName('XieXing').AsString;
    SOPProcessFlow_Copy.Show;
  end
  else begin
    SOPProcessFlow_Copy.Show;
  end;
end;

procedure TSOPProcessFlow.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (XXZl.FieldByName('CountGC').IsNull=false) then
  begin
    DBGridEh1.Canvas.Font.Color := clBlue;
  end;
end;

procedure TSOPProcessFlow.XXZLAfterOpen(DataSet: TDataSet);
begin
  Label2.Caption := ' SHOES : ' + XXZL.FieldByName('XieXing').AsString + '　　　COLOR : ' + XXZL.FieldByName('SheHao').AsString;
  ShowProcessTree;
  SetProcess;
  SetParts;
end;

procedure TSOPProcessFlow.SetProcess;
var
  i: integer;
begin

  with QProcess do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GCBW.gcbwdh AS BWBH, GCBWD.YWSM, GCBWD.ZWSM, GCBWD.Qty1Day, GCBWD.ZSDH, ZSZL.ZSJC');
    SQL.Add('FROM KT_SOPCutS_GCBW AS GCBW');
    SQL.Add('LEFT JOIN KT_SOPCutS_GCBWD as GCBWD on GCBW.GCBWDH=GCBWD.GCBWDH ');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = GCBWD.ZSDH');
    SQL.Add('WHERE GCBW.XieXing = ''' + XXZL.FieldByName('XieXing').AsString + '''');
    Active := true;

    i := 1;
    StringGrid1.Cols[0].Clear;
    StringGrid1.Cols[1].Clear;
    if (RecordCount = 0) then
      StringGrid1.RowCount := 2
    else if (RecordCount > 0) then
      StringGrid1.RowCount := RecordCount + 1;
    StringGrid1.Cells[0, 0] := '加工Process';
    StringGrid1.Cells[1, 0] := '廠商Supplier';
    while not Eof do
    begin
      StringGrid1.Cells[0, i] := FieldByName('ZWSM').AsString+'-'+FieldByName('YWSM').AsString;
      StringGrid1.Cells[1, i] := FieldByName('ZSJC').AsString;
      Inc(i);
      Next;
    end;
  end;

end;

procedure TSOPProcessFlow.SetParts;
var
  i, j: integer;
begin

  with QParts do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT BWBH, YWSM, ZWSM FROM KT_SOPCut');
    SQL.Add('LEFT JOIN BWZL ON BWZL.BWDH = KT_SOPCut.BWBH');
    SQL.Add('WHERE XieXing = ''' + XXZL.FieldByName('XieXing').AsString + ''' AND SheHao = ''' + XXZL.FieldByName('SheHao').AsString + '''');
    //funcObj.WriteErrorLog(SQL.Text);
    Active := true;
    //清空
    for i:=0 to StringGrid2.RowCount-1 do
      StringGrid2.Rows[i].Clear;
    //
    i := 1;
    j := 0;
    if (RecordCount = 0) then
      StringGrid2.RowCount := 2
    else if (RecordCount > 0) then
      StringGrid2.RowCount := (RecordCount DIV 2) + 1+ (RecordCount mod 2);
    StringGrid2.Cells[0, 0] := '部位Parts';

    while not Eof do
    begin
      StringGrid2.Cells[j, i] := FieldByName('BWBH').AsString+#13#10+FieldByName('ZWSM').AsString+'-'+FieldByName('YWSM').AsString;
      if (j = 1) then
      begin
        j := 0;
        Inc(i);
      end else if (j < 2) then
      begin
        Inc(j);
      end;

      Next;
    end;
  end;
end;

procedure TSOPProcessFlow.FormCreate(Sender: TObject);
begin
  Label2.Caption := '';
  IsModify := false;

  DTP1.Date := StartOfTheMonth(Date);
  DTP2.Date := EndOfTheMonth(IncMonth(Date));
end;

procedure TSOPProcessFlow.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with StringGrid1 do
  begin
    Canvas.FillRect(Rect);
    if (gdSelected in State) then
    begin
      Canvas.Font.Color := clWhite;
      Canvas.Brush.Color := clHighlight;
      Canvas.Rectangle(Rect);
    end;
    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER); //置中
  end;
end;

procedure TSOPProcessFlow.StringGrid2DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin

  with StringGrid2 do
  begin
    Canvas.FillRect(Rect);
    if (gdSelected in State) then
    begin
      Canvas.Font.Color := clWhite;
      Canvas.Brush.Color := clHighlight;
      Canvas.Rectangle(Rect);
    end;

    DrawText(Canvas.Handle, PChar(Cells[ACol, ARow]), Length(Cells[ACol, ARow]), Rect, DT_CENTER or DT_SINGLELINE or DT_VCENTER);
  end;

end;

procedure TSOPProcessFlow.StringGrid1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  Mode := 'Process';
end;

procedure TSOPProcessFlow.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  SCol, SRow: integer;
begin
  StringGrid1.MouseToCell(X, Y, SCol, SRow);
  if (Button = mbLeft) AND (SCol >= 0) AND (SRow > 0) AND (StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row] <> '') then
  begin
    QProcess.First;
    QProcess.MoveBy(StringGrid1.Row-1);
    StringGrid1.BeginDrag(False, 5);
  end;
end;

procedure TSOPProcessFlow.TreeViewDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := true;
end;

procedure TSOPProcessFlow.TreeViewDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  TargetNode, AddNode: TTreeNode;
begin
  TargetNode := TreeView.GetNodeAt(X, Y);
  if (Mode = 'Process') then
  begin
    if (TreeView.Items.Count = 0) then
      AddNode := TreeView.Items.Add(nil, QProcess.FieldByName('BWBH').AsString + '-' + QProcess.FieldByName('ZWSM').AsString)
    else
      AddNode := TreeView.Items.AddChild(TargetNode, QProcess.FieldByName('BWBH').AsString + '-' + QProcess.FieldByName('ZWSM').AsString);
    AddNode.ImageIndex := 0;
    AddNode.SelectedIndex := 0;
  end
  else if (Mode = 'Part') then
  begin
    if ((TreeView.Items.Count = 0) or (TargetNode=nil)) then
    begin
      ShowMessage('Please select a process first');
      Exit;
    end;
    AddNode := TreeView.Items.AddChild(TargetNode, QParts.FieldByName('BWBH').AsString + '-' + QParts.FieldByName('YWSM').AsString + '-' + QParts.FieldByName('ZWSM').AsString);
    AddNode.ImageIndex := 1;
    AddNode.SelectedIndex := 1;
  end
  else if (Mode = 'Move') then
  begin
    MoveNode.MoveTo(TargetNode, naAddChild);
  end;
  TreeView.FullExpand;
end;

procedure TSOPProcessFlow.StringGrid2StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  Mode := 'Part';
end;

procedure TSOPProcessFlow.StringGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  SCol, SRow: integer;
begin
  StringGrid2.MouseToCell(X, Y, SCol, SRow);
  if (Button = mbLeft) AND (SCol >= 0) AND (SRow > 0) AND (StringGrid2.Cells[StringGrid2.Col, StringGrid2.Row] <> '') then
  begin
    //QParts.First;
    //QParts.MoveBy(StringGrid2.Row-1);
    QParts.Locate('BWBH', Copy(StringGrid2.Cells[StringGrid2.Col, StringGrid2.Row],1,4), []);
    StringGrid2.BeginDrag(False, 5);
  end;
end;

procedure TSOPProcessFlow.TreeViewKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE)  then
    TreeView.Selected.Delete;
end;

procedure TSOPProcessFlow.Modify1Click(Sender: TObject);
begin
  IsModify := true;
end;

procedure TSOPProcessFlow.CANCEL1Click(Sender: TObject);
begin
  ShowProcessTree;
  IsModify := false;
end;

procedure TSOPProcessFlow.CLEAR1Click(Sender: TObject);
begin
  TreeView.Items.Clear;
end;

procedure TSOPProcessFlow.SAVE1Click(Sender: TObject);
var
  XieXing, SheHao: string;
begin
  SaveProcessTree;
  XieXing := XXZL.FieldByName('XieXing').AsString;
  SheHao := XXZL.FieldByName('SheHao').AsString;
  XXZL.Active := false;
  XXZL.Active := true;
  XXZL.Locate('XieXing;SheHao', VarArrayOf([XieXing, SheHao]), []);
  ShowProcessTree;
  IsModify := false;
end;

procedure TSOPProcessFlow.TreeViewMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  MoveNode := TreeView.GetNodeAt(X, Y);
  TreeView.Select(MoveNode);
  if (Button = mbLeft)  then
    TreeView.BeginDrag(False, 5);
end;

procedure TSOPProcessFlow.TreeViewStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  Mode := 'Move';
end;

procedure TSOPProcessFlow.DELETE1Click(Sender: TObject);
begin
  if (TreeView.Selected<>nil)  then
  TreeView.Selected.Delete;
end;

procedure TSOPProcessFlow.BT1Click(Sender: TObject);
begin
  Panel5.Visible:=true;
end;

procedure TSOPProcessFlow.SOPCutS_GCQryAfterOpen(DataSet: TDataSet);
begin
  SOPCutS_GCSQry.Active:=true;
end;

procedure TSOPProcessFlow.BT4Click(Sender: TObject);
begin
  Modify1.Click;
end;

procedure TSOPProcessFlow.BT5Click(Sender: TObject);
begin
  Save1.Click;
end;

procedure TSOPProcessFlow.BT6Click(Sender: TObject);
begin
  Cancel1.Click;
end;

end.
