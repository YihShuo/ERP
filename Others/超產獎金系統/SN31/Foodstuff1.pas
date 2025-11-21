unit Foodstuff1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, MyADOQuery, Vcl.Menus;

type
  TFoodstuff = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    DS1: TDataSource;
    Query1: TMyADOQuery;
    Query1Item: TWideStringField;
    Query1ItemCN: TWideStringField;
    Query1Unit: TWideStringField;
    PopupMenu1: TPopupMenu;
    Delete1: TMenuItem;
    QUpdate: TMyADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Foodstuff: TFoodstuff;

implementation

uses DM1, FoodPurchaseList1;

{$R *.dfm}

procedure TFoodstuff.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM Foodstuff');
    SQL.Add('WHERE Item LIKE ''' + Edit1.Text + '%''');
    SQL.Add('ORDER BY Item');
    Active := true;
  end;
end;

procedure TFoodstuff.DBGridEh1DblClick(Sender: TObject);
begin
  if (FoodPurchaseList.Query1.Locate('Item', Query1.FieldByName('Item').AsString, []) = false) then
  begin
    FoodPurchaseList.BB2Click(Nil);
    FoodPurchaseList.Query1.FieldByName('Item').Value := Query1.FieldByName('Item').AsString;
    FoodPurchaseList.Query1.FieldByName('ItemCN').Value := Query1.FieldByName('ItemCN').AsString;
    FoodPurchaseList.Query1.FieldByName('Unit').Value := Query1.FieldByName('Unit').AsString;
    Close;
  end
  else begin
    FoodPurchaseList.BB2Click(Nil);
    ShowMessage('重複選取購買項目!');
  end;
end;

procedure TFoodstuff.Delete1Click(Sender: TObject);
begin
  if (MessageDlg('確定要刪除 ' + Query1.FieldByName('Item').AsString + ' ?', mtConfirmation, [mbYes, mbNo], 0, mbYes) = mrYes) then
  begin
    with QUpdate do
    begin
      SQL.Clear;
      SQL.Add('DELETE FROM Foodstuff WHERE Item = N''' + Query1.FieldByName('Item').AsString + '''');
      ExecSQL;
    end;

    Button1Click(Nil);
  end;
end;

procedure TFoodstuff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFoodstuff.FormCreate(Sender: TObject);
begin
  Button1Click(Nil);
end;

procedure TFoodstuff.FormDestroy(Sender: TObject);
begin
  Foodstuff := Nil;
end;

end.
