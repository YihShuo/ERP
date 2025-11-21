unit XieXing1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TXieXing = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Query1XieXing: TStringField;
    Query1Shehao: TStringField;
    Query1SKU: TStringField;
    Query1SR: TStringField;
    Label3: TLabel;
    ED_SKU: TEdit;
    Query1DAOMH: TStringField;
    Label4: TLabel;
    ED_SR: TEdit;
    Label5: TLabel;
    ED_DieCut: TEdit;
    Query1YN: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  XieXing: TXieXing;

implementation

uses main1,SKU_SA_CODE1;

{$R *.dfm}

procedure TXieXing.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT XXZL.XieXing, XXZL.SheHao, XXZL.DAOMH, KFXXZL.Article AS SKU, KFXXZL.DEVCODE AS SR, SA.YN FROM XXZL');
    SQL.Add('LEFT JOIN KFXXZL ON XXZL.XieXing = KFXXZL.XieXing AND XXZL.SheHao = KFXXZL.SheHao');
    SQL.Add('LEFT JOIN SKU_SA_CODE AS SA ON SA.XieXing = XXZL.XieXing AND SA.SheHao = XXZL.SheHao');
    SQL.Add('WHERE XXZL.DAOMH LIKE ''' + ED_DieCut.Text + '%'' AND XXZL.Article LIKE ''' + ED_SKU.Text + '%'' AND KFXXZL.DEVCODE LIKE ''' + ED_SR.Text + '%''');
    SQL.Add('ORDER BY XXZL.DAOMH, KFXXZL.Article, KFXXZL.DEVCODE');
    Active := true;
  end;
end;

procedure TXieXing.FormDestroy(Sender: TObject);
begin
  XieXing := Nil;
end;

procedure TXieXing.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TXieXing.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.RecordCount > 0 then
  begin
    if (Query1.FieldByName('YN').IsNull) then
    begin
      with SKU_SA_CODE.Query1 do
      begin
        Edit;
        FieldByName('XieXing').Value := Query1.FieldByName('XieXing').AsString;
        FieldByName('SheHao').Value := Query1.FieldByName('SheHao').AsString;
        FieldByName('DAOMH').Value := Query1.FieldByName('DAOMH').AsString;
        FieldByName('ARTICLE').Value := Query1.FieldByName('SKU').AsString;
        FieldByName('DEVCODE').Value := Query1.FieldByName('SR').AsString;
      end;
      close;
    end
    else begin
      ShowMessage('Already exists !');
    end;
  end;
end;

procedure TXieXing.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1Dblclick(nil);
end;

procedure TXieXing.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Query1.FieldByName('YN').IsNull = false) then
    DBGridEh1.Canvas.Font.Color := clBlue;
end;

end.
