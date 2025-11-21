unit FoodPurchaseList1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB,
  Data.Win.ADODB, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.StdCtrls,
  Vcl.ComCtrls, MyADOQuery, MyADOUpdateSQL, ComObj;

type
  TFoodPurchaseList = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel2: TPanel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    UpdateSQL1: TMyADOUpdateSQL;
    Query1: TMyADOQuery;
    Query1Date: TDateTimeField;
    Query1Item: TWideStringField;
    Query1ItemCN: TWideStringField;
    Query1Qty: TFloatField;
    Query1Unit: TWideStringField;
    Query1UnitPrice: TIntegerField;
    Query1TotalPrice: TIntegerField;
    Query1Condition: TWideStringField;
    Query1Remark: TWideStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    QUpdate: TMyADOQuery;
    QSearch: TMyADOQuery;
    CB1: TComboBox;
    Label2: TLabel;
    Query1Type: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1Columns2UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure DBGridEh1Columns4UpdateData(Sender: TObject; var Text: string;
      var Value: Variant; var UseText, Handled: Boolean);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure DTP1Change(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure CB1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FoodPurchaseList: TFoodPurchaseList;

implementation

uses DM1, main1, Foodstuff1;

{$R *.dfm}

procedure TFoodPurchaseList.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    First;
    Insert;
  end;

  DBGridEh1.ReadOnly := false;
  DBGridEh1.Columns[0].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[1].ButtonStyle := cbsEllipsis;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TFoodPurchaseList.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    if (LockType <> ltBatchOptimistic) then
    begin
      Active := false;
      LockType := ltBatchOptimistic;
      Active := true;
    end;
    Edit;
  end;

  DBGridEh1.ReadOnly := false;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TFoodPurchaseList.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    LockType := ltBatchOptimistic;
    Active := true;
    Edit;
    FieldByName('YN').Value := '0';
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TFoodPurchaseList.BB5Click(Sender: TObject);
var
  i: integer;
begin
  Query1.First;
  for i := 0 to Query1.RecordCount-1 do
  begin
    case Query1.UpdateStatus of
      usInserted:
      begin
        if (Query1.FieldByName('Item').AsString = '') then
        begin
          Query1.Delete;
        end
        else begin
          with QSearch do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT * FROM Foodstuff WHERE Item = N''' + Query1.FieldByName('Item').AsString + '''');
            Active := true;

            if (RecordCount = 0) then
            begin
              QUpdate.SQL.Clear;
              QUpdate.SQL.Add('INSERT INTO Foodstuff (Item, ItemCN, Unit)');
              QUpdate.SQL.Add('VALUES (N''' + Query1.FieldByName('Item').AsString + ''', N''' + Query1.FieldByName('ItemCN').AsString + ''', N''' + Query1.FieldByName('Unit').AsString + ''')');
              QUpdate.ExecSQL;
            end
            else if (FieldByName('ItemCN').AsString = '') OR (FieldByName('Unit').AsString = '') then
            begin
              QUpdate.SQL.Clear;
              QUpdate.SQL.Add('UPDATE Foodstuff');
              QUpdate.SQL.Add('SET ItemCN = N''' + Query1.FieldByName('ItemCN').AsString + ''', Unit = N''' + Query1.FieldByName('Unit').AsString + '''');
              QUpdate.SQL.Add('WHERE Item = ''' + Query1.FieldByName('Item').AsString + '''');
              QUpdate.ExecSQL;
            end;
          end;

          Query1.Edit;
          Query1.FieldByName('Type').AsString := CB1.Text;
          Query1.FieldByName('UserID').AsString := main.UserID;
          UpdateSQL1.Apply(ukInsert);
        end;
      end;

      usModified:
      begin
        if (Query1.FieldByName('YN').AsString = '0') then
        begin
          UpdateSQL1.Apply(ukDelete);
        end
        else begin
          if (Query1.FieldByName('Item').AsString <> '') then
          begin
            with QSearch do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT * FROM Foodstuff WHERE Item = N''' + Query1.FieldByName('Item').AsString + '''');
              Active := true;

              if (RecordCount = 0) then
              begin
                QUpdate.SQL.Clear;
                QUpdate.SQL.Add('INSERT INTO Foodstuff (Item, ItemCN, Unit)');
                QUpdate.SQL.Add('VALUES (N''' + Query1.FieldByName('Item').AsString + ''', N''' + Query1.FieldByName('ItemCN').AsString + ''', N''' + Query1.FieldByName('Unit').AsString + ''')');
                QUpdate.ExecSQL;
              end
              else if (FieldByName('ItemCN').AsString = '') OR (FieldByName('Unit').AsString = '') then
              begin
                QUpdate.SQL.Clear;
                QUpdate.SQL.Add('UPDATE Foodstuff');
                QUpdate.SQL.Add('SET ItemCN = N''' + Query1.FieldByName('ItemCN').AsString + ''', Unit = N''' + Query1.FieldByName('Unit').AsString + '''');
                QUpdate.SQL.Add('WHERE Item = N''' + Query1.FieldByName('Item').AsString + '''');
                QUpdate.ExecSQL;
              end;
            end;

            Query1.Edit;
            Query1.FieldByName('UserID').AsString := main.UserID;
            UpdateSQL1.Apply(ukModify);
          end;
        end;
      end;
    end;
    Query1.Next;
  end;

  Query1.Active := false;
  Query1.LockType := ltReadOnly;
  Query1.Active := true;
  DBGridEh1.ReadOnly := true;
  DBGridEh1.Columns[0].ButtonStyle := cbsNone;
  DBGridEh1.Columns[1].ButtonStyle := cbsNone;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TFoodPurchaseList.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    LockType := ltReadOnly;
    Active := true;
  end;

  DBGridEh1.ReadOnly := true;
  DBGridEh1.Columns[0].ButtonStyle := cbsNone;
  DBGridEh1.Columns[1].ButtonStyle := cbsNone;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TFoodPurchaseList.BB7Click(Sender: TObject);
var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  i: integer;
begin
  try
    ExcelApp := CreateOleObject('Excel.Application');
    WorkBook := ExcelApp.Workbooks.Add;
  except
    Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if (Query1.Active) then
  begin
    try
      Query1.DisableControls;
      WorkSheet := ExcelApp.WorkSheets.Add;
      WorkSheet.Name := FormatDateTime('yyyy.MM.dd', DTP1.Date);
      ExcelApp.WorkSheets[FormatDateTime('yyyy.MM.dd', DTP1.Date)].Activate;
      ExcelApp.Columns.Font.Name := 'Arial';
      ExcelApp.Cells[1, 1] := 'BẢNG CHI TIẾT MUA THỰC PHẨM NGÀY ' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ' MS:00759' + Chr(10) + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ' 食品採購明細表';
      ExcelApp.Cells[1, 1].Font.Size := 14;
      ExcelApp.Cells[1, 1].HorizontalAlignment := -4108;
      ExcelApp.Rows[1].RowHeight := 40;
      ExcelApp.Range[ExcelApp.Cells[1, 1], ExcelApp.Cells[1, 8]].MergeCells := true;

      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        if (i < 1) then
        begin
          ExcelApp.Cells[2, i+2] := Copy(DBGridEh1.Columns[i].Title.Caption, Pos('|', DBGridEh1.Columns[i].Title.Caption)+1, Length(DBGridEh1.Columns[i].Title.Caption) - Pos('|', DBGridEh1.Columns[i].Title.Caption)+1) + Chr(10) + Copy(DBGridEh1.Columns[i].Title.Caption, 1, Pos('|', DBGridEh1.Columns[i].Title.Caption)-1);
          ExcelApp.Cells[2, i+2].HorizontalAlignment := -4108;
        end
        else if (i > 1) then
        begin
          ExcelApp.Cells[2, i+1] := Copy(DBGridEh1.Columns[i].Title.Caption, Pos('|', DBGridEh1.Columns[i].Title.Caption)+1, Length(DBGridEh1.Columns[i].Title.Caption) - Pos('|', DBGridEh1.Columns[i].Title.Caption)+1) + Chr(10) + Copy(DBGridEh1.Columns[i].Title.Caption, 1, Pos('|', DBGridEh1.Columns[i].Title.Caption)-1);
          ExcelApp.Cells[2, i+1].HorizontalAlignment := -4108;
        end;
      end;

      i := 3;
      Query1.First;
      while not Query1.Eof do
      begin
        ExcelApp.Cells[i, 1] := i - 2;
        ExcelApp.Cells[i, 1].HorizontalAlignment := -4108;
        ExcelApp.Cells[i, 2] := Query1.FieldByName('Item').AsString + ' ' + Query1.FieldByName('ItemCN').AsString;
        ExcelApp.Cells[i, 2].HorizontalAlignment := -4108;
        ExcelApp.Cells[i, 3] := Query1.FieldByName('Qty').AsString;
        ExcelApp.Cells[i, 3].HorizontalAlignment := -4108;
        ExcelApp.Cells[i, 4] := Query1.FieldByName('Unit').AsString;
        ExcelApp.Cells[i, 4].HorizontalAlignment := -4108;
        ExcelApp.Cells[i, 5] := Query1.FieldByName('UnitPrice').AsString;
        ExcelApp.Cells[i, 6] := Query1.FieldByName('TotalPrice').AsString;
        ExcelApp.Cells[i, 7] := Query1.FieldByName('Condition').AsString;
        ExcelApp.Cells[i, 7].HorizontalAlignment := -4108;
        ExcelApp.Cells[i, 8] := Query1.FieldByName('Remark').AsString;

        Inc(i);
        Query1.Next;
      end;
      ExcelApp.Cells[i, 5] := '總金額';
      ExcelApp.Cells[i, 6] := '=SUM(F3:F' + IntToStr(i-1) + ')';
      ExcelApp.Range['A2', 'H' + IntToStr(i)].Borders.Linestyle := 1;

      ExcelApp.Range[ExcelApp.Cells[i+1, 1], ExcelApp.Cells[i+1, 8]].MergeCells := true;
      ExcelApp.Cells[i+1, 1].HorizontalAlignment := -4108;
      ExcelApp.Range[ExcelApp.Cells[i+2, 1], ExcelApp.Cells[i+2, 8]].MergeCells := true;
      ExcelApp.Cells[i+2, 1].HorizontalAlignment := -4108;

      ExcelApp.Cells[i+3, 1] := 'BAN GIÁM ĐỐC';
      ExcelApp.Cells[i+3, 1].HorizontalAlignment := -4108;
      ExcelApp.Range[ExcelApp.Cells[i+3, 1], ExcelApp.Cells[i+3, 2]].MergeCells := true;
      ExcelApp.Cells[i+4, 1] := '主管部';
      ExcelApp.Cells[i+4, 1].HorizontalAlignment := -4108;
      ExcelApp.Range[ExcelApp.Cells[i+4, 1], ExcelApp.Cells[i+4, 2]].MergeCells := true;

      ExcelApp.Cells[i+3, 3] := 'KẾ TOÁN TRƯỞNG';
      ExcelApp.Cells[i+3, 3].HorizontalAlignment := -4108;
      ExcelApp.Cells[i+4, 3] := '會計長';
      ExcelApp.Cells[i+4, 3].HorizontalAlignment := -4108;

      ExcelApp.Cells[i+3, 4] := 'CHỦ QUẢN TỔNG VỤ';
      ExcelApp.Cells[i+3, 4].HorizontalAlignment := -4108;
      ExcelApp.Range[ExcelApp.Cells[i+3, 4], ExcelApp.Cells[i+3, 5]].MergeCells := true;
      ExcelApp.Cells[i+4, 4] := '總務主管';
      ExcelApp.Cells[i+4, 4].HorizontalAlignment := -4108;
      ExcelApp.Range[ExcelApp.Cells[i+4, 4], ExcelApp.Cells[i+4, 5]].MergeCells := true;

      ExcelApp.Cells[i+3, 6] := 'BẢO VỆ';
      ExcelApp.Cells[i+3, 6].HorizontalAlignment := -4108;
      ExcelApp.Range[ExcelApp.Cells[i+3, 6], ExcelApp.Cells[i+3, 7]].MergeCells := true;
      ExcelApp.Cells[i+4, 6] := '保衛';
      ExcelApp.Cells[i+4, 6].HorizontalAlignment := -4108;
      ExcelApp.Range[ExcelApp.Cells[i+4, 6], ExcelApp.Cells[i+4, 7]].MergeCells := true;

      ExcelApp.Cells[i+3, 8] := 'NGƯỜI LẬP BIỂU';
      ExcelApp.Cells[i+3, 8].HorizontalAlignment := -4108;
      ExcelApp.Cells[i+4, 8] := '製表';
      ExcelApp.Cells[i+4, 8].HorizontalAlignment := -4108;



      ExcelApp.Columns.Autofit;
      ShowMessage('Succeed');
      ExcelApp.Visible := True;
    except on ex: Exception do
      ShowMessage(ex.Message);
    end;
  end;
end;

procedure TFoodPurchaseList.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM FoodPurchaseList');
    SQL.Add('WHERE Date = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND Type = N''' + CB1.Text + '''');
    Active := true;
  end;

  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TFoodPurchaseList.CB1Change(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TFoodPurchaseList.DBGridEh1Columns2UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  Qty: double;
begin
  if (TryStrToFloat(Text, Qty)) then
  begin
    if (Query1.FieldByName('UnitPrice').AsString <> '') then
      Query1.FieldByName('TotalPrice').Value := Qty * Query1.FieldByName('UnitPrice').AsInteger;
  end
  else begin
    Text := '';
  end;
end;

procedure TFoodPurchaseList.DBGridEh1Columns4UpdateData(Sender: TObject;
  var Text: string; var Value: Variant; var UseText, Handled: Boolean);
var
  UnitPrice: integer;
begin
  if (TryStrToInt(Text, UnitPrice)) then
  begin
    if (Query1.FieldByName('Qty').AsString <> '') then
      Query1.FieldByName('TotalPrice').Value := Query1.FieldByName('Qty').AsFloat * UnitPrice;
  end
  else begin
    Text := '';
  end;
end;

procedure TFoodPurchaseList.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if (Foodstuff <> Nil) then
    Foodstuff.Close;
  Foodstuff := TFoodstuff.Create(Self);
  Foodstuff.Show;
end;

procedure TFoodPurchaseList.DTP1Change(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TFoodPurchaseList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFoodPurchaseList.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date;
  Button1Click(Nil);
end;

procedure TFoodPurchaseList.FormDestroy(Sender: TObject);
begin
  FoodPurchaseList := Nil;
end;

procedure TFoodPurchaseList.Query1NewRecord(DataSet: TDataSet);
begin
  Query1.FieldByName('Date').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
  Query1.FieldByName('Condition').Value := 'TỐT';
end;

end.
