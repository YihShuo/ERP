unit MatchedLeanSelection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables;

type
  TMatchedLeanSelection = class(TForm)
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1building_no: TStringField;
    Query1lean_no: TStringField;
    Query1Date: TDateTimeField;
    Query1DDBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatchedLeanSelection: TMatchedLeanSelection;

implementation

uses
  ProductionPlanTracking1;

{$R *.dfm}

procedure TMatchedLeanSelection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMatchedLeanSelection.FormDestroy(Sender: TObject);
begin
  MatchedLeanSelection := Nil;
end;

procedure TMatchedLeanSelection.DBGridEh1DblClick(Sender: TObject);
var
  i: integer;
begin
  with ProductionPlanTracking do
  begin
    DTP1.Date := Query1.FieldByName('Date').AsDateTime;
    ReloadBuilding(CB_Building, DTP1, DTP1);
    for i := 0 to CB_Building.Items.Count - 1 do
    begin
      if (CB_Building.Items[i] = Query1.FieldByName('building_no').AsString) then
      begin
        CB_Building.ItemIndex := i;
        Break;
      end;
    end;
    ReloadLean(CB_Lean, CB_Building, DTP1, DTP1);

    for i := 0 to CB_Lean.Items.Count - 1 do
    begin
      if (CB_Lean.Items[i] = Query1.FieldByName('lean_no').AsString) then
      begin
        CB_Lean.ItemIndex := i;
        Break;
      end;
    end;
  end;

  ModalResult := mrOk;
end;

end.
