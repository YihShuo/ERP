unit RTOVWeeklyScheduler1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables;

type
  TRTOVWeeklyScheduler = class(TForm)
    DS1: TDataSource;
    query1: TQuery;
    DBGridEh1: TDBGridEh;
    query1FACTORY: TStringField;
    query1KHPO: TStringField;
    query1KCLLDT: TStringField;
    query1CutSD: TStringField;
    query1CutED: TStringField;
    query1SteSD: TStringField;
    query1SteED: TStringField;
    query1AseSD: TStringField;
    query1AseED: TStringField;
    query1Mode: TStringField;
    query1UserDate: TStringField;
    query1ShipDate: TDateTimeField;
    query1YN: TStringField;
    query1DDBH: TStringField;
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RTOVWeeklyScheduler: TRTOVWeeklyScheduler;

implementation

{$R *.dfm}

procedure TRTOVWeeklyScheduler.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if Query1.fieldbyname('YN').AsString='Y' then
      DBGridEh1.canvas.font.color:=clred;
end;

end.
