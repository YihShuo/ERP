unit Process1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DB, DBTables;

type
  TF_Process = class(TForm)
    StringGrid1: TStringGrid;
    QUpdate: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Process: TF_Process;
  TCol, TRow: integer;

implementation

{$R *.dfm}
uses
  PreArrange;

procedure TF_Process.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TF_Process.FormDestroy(Sender: TObject);
begin
  F_Process := nil;
end;

procedure TF_Process.FormCreate(Sender: TObject);
begin
  StringGrid1.ColWidths[1] := 150;
  StringGrid1.Cells[1, 1] := 'Lam Thu';   
  StringGrid1.Cells[1, 2] := 'Lam Thu+PEAC';
  StringGrid1.Cells[1, 3] := 'In';
  StringGrid1.Cells[1, 4] := 'In+Theu';
  StringGrid1.Cells[1, 5] := 'Theu';
  StringGrid1.Cells[1, 6] := 'Theu+PEAC';
  StringGrid1.Cells[1, 7] := 'In+Theu+PEAC';
  StringGrid1.Cells[1, 8] := 'In TL';
  StringGrid1.Cells[1, 9] := 'PEAC';
  StringGrid1.Cells[1, 10] := 'FDPA';
  StringGrid1.Cells[1, 11] := 'JOURNEY';
  StringGrid1.Cells[1, 12] := 'JOURNEYS+PEAC';
  StringGrid1.Cells[1, 13] := 'K Hop Fom';
  StringGrid1.Cells[1, 14] := 'Ep Kim';
end;

procedure TF_Process.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  S: string;
  R: TRect;
begin
  with TStringGrid(Sender) do
  begin
    Canvas.Font.Color := clBlack;
    Canvas.Font.Size := 12;
    Canvas.FillRect(Rect);
    
    S := Cells[ACol, ARow];
    R := Rect;
    DrawText(Canvas.Handle, PChar(S), Length(S), R, DT_CENTER or DT_SINGLELINE or DT_VCENTER);
  end;
end;

procedure TF_Process.StringGrid1DblClick(Sender: TObject);
begin
  if (TCol = 1) AND (TRow >= 1) then
  begin
    F_PreArrange.StringGrid2.Cells[1, 6] := StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row];
    QUpdate.SQL.Clear;
    QUpdate.SQL.Add('UPDATE SCZL SET Process = ''' + StringGrid1.Cells[StringGrid1.Col, StringGrid1.Row] + ''' WHERE ZLBH = ''' + F_PreArrange.StringGrid2.Cells[1, 1] + '''');
    QUpdate.ExecSQL;
    QUpdate.SQL.Clear;
    Close;
  end;
end;

procedure TF_Process.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StringGrid1.MouseToCell(X, Y, TCol, TRow);
end;

end.
