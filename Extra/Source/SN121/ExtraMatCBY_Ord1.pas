unit ExtraMatCBY_Ord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls,
  GridsEh, DBGridEh, Menus;

type
  TExtraMatCBY_Ord = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    ED_MOrder: TEdit;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    CB1: TCheckBox;
    Button2: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    Query1MasterOrder: TStringField;
    Query1CLSL: TFloatField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1okQty: TCurrencyField;
    Query1oldCLSL: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ED_MOrderKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    PairsSQL:String;
    { Public declarations }
  end;

var
  ExtraMatCBY_Ord: TExtraMatCBY_Ord;

implementation

uses FunUnit, ExtraMaterial1, main1;

{$R *.dfm}

procedure TExtraMatCBY_Ord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TExtraMatCBY_Ord.FormDestroy(Sender: TObject);
begin
  ExtraMatCBY_Ord := Nil;
end;

procedure TExtraMatCBY_Ord.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQl.Clear;
    SQL.Add('SELECT ZLZLS2.MasterOrder, ZLZLS2.CLSL, ZLZLS2.Article, ZLZLS2.XieMing,');
    SQL.Add('ISNULL(JGZL.okQty, 0) AS okQty, ISNULL(JGZL.oldCLSL, 0) AS oldCLSL FROM (');
    SQL.Add('  SELECT CBY_Orders.MasterOrder, CBY_Orders.style AS Article, CBY_Orders.name AS XieMing, SUM(CBY_Orders_ZLZLS2.CLSL) AS CLSL FROM CBY_Orders_ZLZLS2');
    SQL.Add('  LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = CBY_Orders_ZLZLS2.workorderId');
    SQL.Add('  WHERE CBY_Orders.MasterOrder LIKE ''' + ED_MOrder.Text + '%'' AND CBY_Orders_ZLZLS2.CLBH = :CLBH');
    SQL.Add('  AND CBY_Orders.YN=''1'' ');
    SQL.Add('  GROUP BY CBY_Orders.MasterOrder, CBY_Orders.style, CBY_Orders.name');
    SQL.Add(') AS ZLZLS2');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT JGZLSS.CLBH, JGZLSS.ZLBH, ISNULL(SUM(JGZLSS.Qty), 0) AS okQty, ISNULL(MAX(JGZLSS.CLSL), 0) AS oldCLSL FROM JGZLSS');
    SQL.Add('  WHERE JGZLSS.ZLBH LIKE ''' + ED_MOrder.Text + '%'' AND JGZLSS.CLBH = :CLBH');
    SQL.Add('  GROUP BY JGZLSS.CLBH, JGZLSS.ZLBH');
    SQL.Add(') AS JGZL ON JGZL.ZLBH = ZLZLS2.MasterOrder');
    if (CB1.Checked) then
      SQL.Add('WHERE ISNULL(ZLZLS2.CLSL, 0) > ISNULL(JGZL.okQty, 0)');
    SQL.Add('ORDER BY ZLZLS2.MasterOrder');
    Active:=true;
  end;
end;

procedure TExtraMatCBY_Ord.Button2Click(Sender: TObject);
var
  bm: TBookmark;
  i: integer;
  bookmarklist: TBookmarkListEh;
begin
  if (MessageDlg('Do you really want to copy these record?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    if (not Query1.Active) then
    begin
      Abort;
    end;
    if (Query1.recordcount < 1) then
    begin
      Abort;
    end;
    Query1.DisableControls;
    bm := Query1.GetBookmark;
    bookmarklist := DBGridEh1.SelectedRows;
    if (bookmarklist.Count > 0) then
    begin
      try
        for i:=0 to bookmarklist.Count-1 do
        begin
          Query1.GotoBookmark(Pointer(bookmarklist[i]));
          with ExtraMaterial.JGS do
          begin
            Edit;
            FieldByName('ZLBH').Value := Query1.FieldByName('MasterOrder').Value;
            if (Query1.FieldByName('CLSL').Value >= Query1.FieldByName('okQty').Value) then
            begin
              FieldByName('Qty').Value := Query1.FieldByName('CLSL').Value - Query1.FieldByName('okQty').Value;
            end
            else begin
              FieldByName('Qty').Value := 0;
            end;
            FieldByName('CLSL').Value := Query1.FieldByName('CLSL').Value;
            Insert;
          end;
          Query1.Edit;
          Query1.FieldByName('okQty').Value := Query1.FieldByName('CLSL').Value;
        end;
      finally
        begin
          Query1.GotoBookmark(bm);
          Query1.FreeBookmark(bm);
          Query1.EnableControls;
          ShowMessage('You have finish copy!');
        end;
      end;
    end;
  end;
end;

procedure TExtraMatCBY_Ord.ED_MOrderKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
   Button1.Click;
end;

procedure TExtraMatCBY_Ord.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

procedure TExtraMatCBY_Ord.DBGridEh1DblClick(Sender: TObject);
begin
  if (not Query1.Active) then
  begin
    Abort;
  end;
  if (Query1.recordcount < 1) then
  begin
    Abort;
  end;
  with ExtraMaterial.JGS do
  begin
    Edit;
    FieldByName('ZLBH').Value := Query1.FieldByName('MasterOrder').Value;
    if Query1.FieldByName('CLSL').Value >= Query1.FieldByName('okQty').Value then
    begin
      FieldByName('Qty').Value := Query1.FieldByName('CLSL').Value - Query1.FieldByName('okQty').Value;
    end else
    begin
      FieldByName('Qty').Value := 0;
    end;
    FieldByName('CLSL').Value := Query1.FieldByName('CLSL').Value;
    Insert;
  end;
  Query1.Edit;
  Query1.FieldByName('okQty').Value := Query1.FieldByName('CLSL').Value;
  ShowMessage('Succeed.');
end;

procedure TExtraMatCBY_Ord.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('CLSL').Value <= Query1.FieldByName('okQty').Value then
  begin
    DBGridEh1.Canvas.Font.Color := clRed;
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
  if Query1.FieldByName('CLSL').Value = Query1.FieldByName('okQty').Value then
  begin
    DBGridEh1.Canvas.Font.Color := clBlue;
    DBGridEh1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TExtraMatCBY_Ord.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
    DBGridEh1DblClick(nil);
end;

end.
