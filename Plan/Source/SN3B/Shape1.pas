unit Shape1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls, jpeg, DB, DBTables;

type
  TF_Shape = class(TForm)
    StringGrid1: TStringGrid;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    ScrollBox2: TScrollBox;
    Image2: TImage;
    ScrollBox3: TScrollBox;
    Image3: TImage;
    ScrollBox4: TScrollBox;
    Image4: TImage;
    QUpdate: TQuery;
    ScrollBox5: TScrollBox;
    Image5: TImage;
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Shape: TF_Shape;
  TCol, TRow: integer;

implementation

{$R *.dfm}
uses
  PreArrange;

procedure TF_Shape.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with TStringGrid(Sender) do
  begin
    if (ACol = 1) AND (ARow = 1) then
      Canvas.Draw(Rect.Left+(StringGrid1.ColWidths[1]-Image1.Width) div 2, Rect.Top, Image1.Picture.Graphic)
    else if (ACol = 1) AND (ARow = 2) then
      Canvas.Draw(Rect.Left+(StringGrid1.ColWidths[1]-Image2.Width) div 2, Rect.Top, Image2.Picture.Graphic)
    else if (ACol = 1) AND (ARow = 3) then
      Canvas.Draw(Rect.Left+(StringGrid1.ColWidths[1]-Image3.Width) div 2, Rect.Top, Image3.Picture.Graphic)
    else if (ACol = 1) AND (ARow = 4) then
      Canvas.Draw(Rect.Left+(StringGrid1.ColWidths[1]-Image4.Width) div 2, Rect.Top, Image4.Picture.Graphic)
    else if (ACol = 1) AND (ARow = 5) then
      Canvas.Draw(Rect.Left+(StringGrid1.ColWidths[1]-Image5.Width) div 2, Rect.Top, Image5.Picture.Graphic);
  end;
end;

procedure TF_Shape.StringGrid1DblClick(Sender: TObject);
begin
  if (TCol = 1) AND (TRow >= 1) then
  begin
    F_PreArrange.StringGrid2.Cells[1, 9] := IntToStr(StringGrid1.Row);
    QUpdate.SQL.Clear;
    QUpdate.SQL.Add('UPDATE SCZL SET Shape = ' + IntToStr(StringGrid1.Row) + ' WHERE ZLBH = ''' + F_PreArrange.StringGrid2.Cells[1, 1] + '''');
    QUpdate.ExecSQL;
    QUpdate.SQL.Clear;
    Close;
  end;
end;

procedure TF_Shape.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TF_Shape.FormDestroy(Sender: TObject);
begin
  F_Shape := nil;
end;

procedure TF_Shape.FormCreate(Sender: TObject);
begin
  StringGrid1.ColWidths[1] := 150;
  StringGrid1.RowHeights[0] := 24;
end;

procedure TF_Shape.StringGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StringGrid1.MouseToCell(X, Y, TCol, TRow);
end;

end.
