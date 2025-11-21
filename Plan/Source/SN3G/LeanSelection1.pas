unit LeanSelection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables;

type
  TLeanSelection = class(TForm)
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LeanSelection: TLeanSelection;

implementation

uses
  ShoeUpperInventory1;

{$R *.dfm}

procedure TLeanSelection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLeanSelection.FormDestroy(Sender: TObject);
begin
  LeanSelection := Nil;
end;

procedure TLeanSelection.DBGridEh1DblClick(Sender: TObject);
var
  i: integer;
begin
  with ShoeUpperInventory do
  begin
    DTP_PC3.Date := Query1.FieldByName('Date').AsDateTime;
    if (CB_Building_PC2.Items.IndexOf(Query1.FieldByName('building_no').AsString) < 0) then
      CB_OS_PC2.Checked := false;
    for i := 0 to CB_Building_PC2.Items.Count - 1 do
    begin
      if (CB_Building_PC2.Items[i] = Query1.FieldByName('building_no').AsString) then
      begin
        CB_Building_PC2.ItemIndex := i;
        Break;
      end;
    end;

    if (CB_Lean_PC2.Items.IndexOf(Query1.FieldByName('lean_no').AsString) < 0) then
      CB_OS_PC2.Checked := false;
    for i := 0 to CB_Lean_PC2.Items.Count - 1 do
    begin
      if (CB_Lean_PC2.Items[i] = Query1.FieldByName('lean_no').AsString) then
      begin
        CB_Lean_PC2.ItemIndex := i;
        Break;
      end;
    end;
  end;

  ModalResult := mrOk;
end;

end.
