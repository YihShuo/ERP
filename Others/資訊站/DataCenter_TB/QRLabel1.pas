unit QRLabel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,DelphiZXingQRCode, ExtCtrls, StdCtrls;

type
  TQRLabel = class(TForm)
    Panel1: TPanel;
    LB_ORDER: TLabel;
    LB_PART: TLabel;
    Label1: TLabel;
    LB_SIZE: TLabel;
    Label2: TLabel;
    LB_DATE: TLabel;
    Label3: TLabel;
    LB_XXCC: TLabel;
    Panel2: TPanel;
    PaintBox1: TPaintBox;
    Shape1: TShape;
    LB_QTY: TLabel;
    LB_MACHINE: TLabel;
    Panel3: TPanel;
    LB_DIECUT: TLabel;
    IMG_MACHINE: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    QRCodeBitmap: TBitmap;
    procedure SetLanguage;
    procedure RotateBitmap(ABitMap: TBitmap);
    { Private declarations }
  public
    procedure QRUpdate(PrintType, ListID, Order, Cycle, PartID, Part, Size, XXCC, Material, Qty, Lean, Machine, DieCut: string; Encode, QuietZone: integer);
    { Public declarations }
  end;

var
  QRLabel: TQRLabel;

implementation

uses Languages1;

{$R *.dfm}

procedure TQRLabel.SetLanguage;
begin
  if (Languages.Language = 'VN') then
  begin
    Label2.Caption := 'SO DOI:';
    Label2.Font.Size := 12;
  end;
end;

procedure TQRLabel.FormCreate(Sender: TObject);
begin
  QRCodeBitmap := TBitmap.Create;
  SetLanguage;
end;
  
procedure TQRLabel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQRLabel.FormDestroy(Sender: TObject);
begin
  QRCodeBitmap.Free;
  QRLabel := Nil;
end;

procedure TQRLabel.QRUpdate(PrintType, ListID, Order, Cycle, PartID, Part, Size, XXCC, Material, Qty, Lean, Machine, DieCut: string; Encode, QuietZone: integer);
var
  QRCode: TDelphiZXingQRCode;
  //MachineBitmap: TBitmap;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  {MachineBitmap := TBitmap.Create;
  MachineBitmap.Width := IMG_MACHINE.Height;
  MachineBitmap.Height := IMG_MACHINE.Width;
  MachineBitmap.Canvas.Font.Name := 'Microsoft YaHei';
  MachineBitmap.Canvas.Font.Size := 10;
  MachineBitmap.Canvas.Brush.Color := clWhite;
  MachineBitmap.Canvas.FillRect(Rect(0, 0, MachineBitmap.Width, MachineBitmap.Height));
  MachineBitmap.Canvas.TextOut((MachineBitmap.Width - Languages.GetTextWidth(Machine, MachineBitmap.Canvas.Font)) DIV 2, -5, Machine);
  RotateBitmap(MachineBitmap);}

  try
    LB_MACHINE.Caption := Lean + #13#10 + Machine;
    LB_DIECUT.Caption := DieCut;
    LB_ORDER.Caption := Cycle;
    LB_PART.Caption := Part;
    LB_SIZE.Caption := StringReplace(Size, ' ', '', [rfReplaceAll]);
    LB_XXCC.Caption := StringReplace(XXCC, ' ', '', [rfReplaceAll]);
    LB_QTY.Caption := Qty;
    LB_DATE.Caption := FormatDateTime('yyyy/MM/dd hh:mm:ss', Now);
    //IMG_MACHINE.Picture.Bitmap.Assign(MachineBitmap);
    if (PrintType = 'NORMAL') then
      QRCode.Data := ListID + ';' + Order + ';' + Cycle + ';' + PartID + ';' + Size + ';' + Material + ';' + Qty
    else if (PrintType = 'LIST') then
      QRCode.Data := ListID + ';' + Size + ';' + Qty;
    QRCode.Encoding := TQRCodeEncoding(Encode); //0.Auto 1.Numeric 2.Alphanumeric 3.ISO-8859-1 4.UTF-8 without BOM 5.UTF-8 with BOM
    QRCode.QuietZone := StrToIntDef(IntToStr(QuietZone), 4);
    QRCodeBitmap.Width := QRCode.Columns;
    QRCodeBitmap.Height := QRCode.Rows;
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack
        else
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
      end;
    end;
  finally
    QRCode.Free;
    //MachineBitmap.Free;
  end;

  PaintBox1.Repaint;
end;

procedure TQRLabel.PaintBox1Paint(Sender: TObject);
var
  Scale: Double;
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
  
  if ((QRCodeBitmap.Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then
    begin
      Scale := PaintBox1.Width / QRCodeBitmap.Width;
    end else
    begin
      Scale := PaintBox1.Height / QRCodeBitmap.Height;
    end;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;
end;

procedure TQRLabel.RotateBitmap(ABitMap: TBitmap);
var
  oBitmap: TBitmap;
  x, y: integer;
begin
  oBitmap := TBitmap.Create;
  try
    oBitmap.Height := ABitmap.Height;
    oBitmap.Width := ABitmap.Width;
    oBitmap.Assign(ABitmap);
    ABitmap.Height := oBitmap.Width;
    ABitmap.Width := oBitmap.Height;
    for x := 0 to oBitmap.Width - 1 do
    begin
      for y := 0 to oBitmap.Height - 1 do
      begin
        ABitmap.Canvas.Pixels[ABitmap.Width-y-1, x] := oBitmap.Canvas.Pixels[x, y];
      end;
    end;
  finally
    oBitmap.Free;
  end;
end;

end.
