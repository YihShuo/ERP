unit Department_BC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, jpeg, DB, DBTables, GridsEh,
  DBGridEh;

type
  TDepartment_BC = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    CB1: TComboBox;
    QSearch: TQuery;
    Query1Xuong: TStringField;
    Query1DepMemo: TStringField;
    Label2: TLabel;
    CB2: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure CB1Change(Sender: TObject);
    procedure CB2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Department_BC: TDepartment_BC;
const
  SectionList: array[0..2] of string = ('A', 'S', 'C');

implementation

uses
  StockIn_BC1, main1;

{$R *.dfm}
         
procedure TDepartment_BC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDepartment_BC.FormDestroy(Sender: TObject);
begin
  Department_BC := Nil;
end;

procedure TDepartment_BC.FormCreate(Sender: TObject);
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Xuong FROM BDepartment');
    SQL.Add('WHERE Xuong IS NOT NULL AND ProYN = ''1'' AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('ORDER BY Xuong');
    Active := true;

    CB1.Items.Clear;
    CB1.Items.Add('ALL');
    while not Eof do
    begin
      CB1.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;
    CB1.ItemIndex := 0;
  end;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Xuong, ID, DepName, DepMemo FROM BDepartment');
    SQL.Add('WHERE Xuong IS NOT NULL AND ProYN = ''1'' AND GSBH = ''' + main.Edit2.Text + '''');
    if (CB1.ItemIndex > 0) then
      SQL.Add('AND Xuong = ''' + CB1.Text + '''');
    SQL.Add('AND GXLB = ''' + SectionList[CB2.ItemIndex] + '''');
    SQL.Add('ORDER BY Xuong, DepName');
    Active := true;
  end;
end;
  
procedure TDepartment_BC.CB1Change(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Xuong, ID, DepName, DepMemo FROM BDepartment');
    SQL.Add('WHERE Xuong IS NOT NULL AND ProYN = ''1'' AND GSBH = ''' + main.Edit2.Text + '''');
    if (CB1.ItemIndex > 0) then
      SQL.Add('AND Xuong = ''' + CB1.Text + '''');
    SQL.Add('AND GXLB = ''' + SectionList[CB2.ItemIndex] + '''');
    SQL.Add('ORDER BY Xuong, DepName');
    Active := true;
  end;
end;
        
procedure TDepartment_BC.CB2Change(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Xuong, ID, DepName, DepMemo FROM BDepartment');
    SQL.Add('WHERE Xuong IS NOT NULL AND ProYN = ''1'' AND GSBH = ''' + main.Edit2.Text + '''');
    if (CB1.ItemIndex > 0) then
      SQL.Add('AND Xuong = ''' + CB1.Text + '''');
    SQL.Add('AND GXLB = ''' + SectionList[CB2.ItemIndex] + '''');
    SQL.Add('ORDER BY Xuong, DepName');
    Active := true;
  end;
end;

procedure TDepartment_BC.DBGridEh1DblClick(Sender: TObject);
begin
  StockIn_BC.QKCRK.Edit;
  StockIn_BC.QKCRK.FieldByName('Building').Value := Query1.FieldByName('Xuong').AsString;
  StockIn_BC.QKCRK.FieldByName('DepID').Value := Query1.FieldByName('ID').AsString;
  StockIn_BC.QKCRK.FieldByName('DepName').Value := Query1.FieldByName('DepName').AsString;
  StockIn_BC.QKCRK.FieldByName('DepMemo').Value := Query1.FieldByName('DepMemo').AsString;
  Close;
end;

end.

