unit Barcode1281;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

const
  EncodeArray: Array[0..106, 0..3] Of String = (
   //     Bar        A    B    C
    ('11011001100', ' ', ' ', '00'),
    ('11001101100', '!', '!', '01'),
    ('11001100110', '"', '"', '02'),
    ('10010011000', '#', '#', '03'),
    ('10010001100', '$', '$', '04'),
    ('10001001100', '%', '%', '05'),
    ('10011001000', '&', '&', '06'),
    ('10011000100', '''', '''', '07'),
    ('10001100100', '(', '(', '08'),
    ('11001001000', ')', ')', '09'),
    ('11001000100', '*', '*', '10'),
    ('11000100100', '+', '+', '11'),
    ('10110011100', ',', ',', '12'),
    ('10011011100', '-', '-', '13'),
    ('10011001110', '.', '.', '14'),
    ('10111001100', '/', '/', '15'),
    ('10011101100', '0', '0', '16'),
    ('10011100110', '1', '1', '17'),
    ('11001110010', '2', '2', '18'),
    ('11001011100', '3', '3', '19'),
    ('11001001110', '4', '4', '20'),
    ('11011100100', '5', '5', '21'),
    ('11001110100', '6', '6', '22'),
    ('11101101110', '7', '7', '23'),
    ('11101001100', '8', '8', '24'),
    ('11100101100', '9', '9', '25'),
    ('11100100110', ':', ':', '26'),
    ('11101100100', ';', ';', '27'),
    ('11100110100', '<', '<', '28'),
    ('11100110010', '=', '=', '29'),
    ('11011011000', '>', '>', '30'),
    ('11011000110', '?', '?', '31'),
    ('11000110110', '@', '@', '32'),
    ('10100011000', 'A', 'A', '33'),
    ('10001011000', 'B', 'B', '34'),
    ('10001000110', 'C', 'C', '35'),
    ('10110001000', 'D', 'D', '36'),
    ('10001101000', 'E', 'E', '37'),
    ('10001100010', 'F', 'F', '38'),
    ('11010001000', 'G', 'G', '39'),
    ('11000101000', 'H', 'H', '40'),
    ('11000100010', 'I', 'I', '41'),
    ('10110111000', 'J', 'J', '42'),
    ('10110001110', 'K', 'K', '43'),
    ('10001101110', 'L', 'L', '44'),
    ('10111011000', 'M', 'M', '45'),
    ('10111000110', 'N', 'N', '46'),
    ('10001110110', 'O', 'O', '47'),
    ('11101110110', 'P', 'P', '48'),
    ('11010001110', 'Q', 'Q', '49'),
    ('11000101110', 'R', 'R', '50'),
    ('11011101000', 'S', 'S', '51'),
    ('11011100010', 'T', 'T', '52'),
    ('11011101110', 'U', 'U', '53'),
    ('11101011000', 'V', 'V', '54'),
    ('11101000110', 'W', 'W', '55'),
    ('11100010110', 'X', 'X', '56'),
    ('11101101000', 'Y', 'Y', '57'),
    ('11101100010', 'Z', 'Z', '58'),
    ('11100011010', '[', '[', '59'),
    ('11101111010', '\', '\', '60'),
    ('11001000010', ']', ']', '61'),
    ('11110001010', '^', '^', '62'),
    ('10100110000', '_', '_', '63'),
    ('10100001100', 'NUL', '`', '64'),
    ('10010110000', 'SOH', 'a', '65'),
    ('10010000110', 'STX', 'b', '66'),
    ('10000101100', 'ETX', 'c', '67'),
    ('10000100110', 'EOT', 'd', '68'),
    ('10110010000', 'ENQ', 'e', '69'),
    ('10110000100', 'ACK', 'f', '70'),
    ('10011010000', 'BEL', 'g', '71'),
    ('10011000010', 'BS', 'h', '72'),
    ('10000110100', 'HT', 'i', '73'),
    ('10000110010', 'LF', 'j', '74'),
    ('11000010010', 'VT', 'k', '75'),
    ('11001010000', 'FF', 'l', '76'),
    ('11110111010', 'CR', 'm', '77'),
    ('11000010100', 'SO', 'n', '78'),
    ('10001111010', 'SI', 'o', '79'),
    ('10100111100', 'DLE', 'p', '80'),
    ('10010111100', 'DC1', 'q', '81'),
    ('10010011110', 'DC2', 'r', '82'),
    ('10111100100', 'DC3', 's', '83'),
    ('10011110100', 'DC4', 't', '84'),
    ('10011110010', 'NAK', 'u', '85'),
    ('11110100100', 'SYN', 'v', '86'),
    ('11110010100', 'ETB', 'w', '87'),
    ('11110010010', 'CAN', 'x', '88'),
    ('11011011110', 'EM', 'y', '89'),
    ('11011110110', 'SUB', 'z', '90'),
    ('11110110110', 'ESC', '{', '91'),
    ('10101111000', 'FS', '|', '92'),
    ('10100011110', 'GS', '}', '93'),
    ('10001011110', 'RS', '~', '94'),
    ('10111101000', 'US', 'DEL', '95'),
    ('10111100010', 'FNC 3', 'FNC 3', '96'),
    ('11110101000', 'FNC 2', 'FNC 2', '97'),
    ('11110100010', 'Shift B', 'Shift A', '98'),
    ('10111011110', 'Code C', 'Code C', '99'),
    ('10111101110', 'Code B', 'FNC 4', 'Code B'),
    ('11101011110', 'FNC 4', 'Code A', 'Code A'),
    ('11110101110', 'FNC 1', 'FNC 1', 'FNC 1'),
    ('11010000100', 'Start A', '', ''),
    ('11010010000', 'Start B', '', ''),
    ('11010011100', 'Start C', '', ''),
    ('1100011101011', 'Stop', '', '')
  );

type
  TBarcode128 = class(TObject)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    procedure DrawLine(Image: TImage; X1, Y1, X2, Y2, PenWidth: Integer);
    function StrToCode128(Text, CodeType: String): String;
    { Private declarations }
  public
    procedure GenerateCode128(Image: TImage; CodeType, Barcode: String; X0, Y0, Height, PenWidth: Integer; Direction: string);
    { Public declarations }
  end;

var
  Barcode128: TBarcode128;

implementation

{$R *.dfm}

procedure TBarcode128.DrawLine(Image: TImage; X1, Y1, X2, Y2, PenWidth: Integer);
begin
   Image.Canvas.Pen.Width := PenWidth;
   Image.Canvas.MoveTo(X1, Y1);
   Image.Canvas.LineTo(X2, Y2);
end;

procedure TBarcode128.GenerateCode128(Image: TImage; CodeType, Barcode: String; X0, Y0, Height, PenWidth: Integer; Direction: string);
var
  i, j, x, x1, x2, y, y1, y2: integer;
  code: Char;
  printcode: string;
begin
  printcode := StrToCode128(Barcode, CodeType);
  if (Direction = 'Vertical') then
    Image.Height := Length(printcode) * PenWidth
  else
    Image.Width := Length(printcode) * PenWidth;
  Image.Picture.Assign(Nil);
  Image.Canvas.Pen.Width := 1;
  Image.Canvas.Pen.Color := clBlack;
  x := X0;
  y := Y0;

  if (Direction = 'Vertical') then
  begin
    for i:=1 to Length(printcode) do
    begin
      if (printcode[i] = '1') then
      begin
        x1 := Y0;
        x2 := Y0 + Height;

        for j:=0 to PenWidth-1 do
        begin
          DrawLine(Image, x1, y+j, x2, y+j, 1);
        end;
      end; 
      y := y + PenWidth;
    end;
  end
  else begin
    for i:=1 to Length(printcode) do
    begin  
      if (printcode[i] = '1') then
      begin
        y1 := Y0;
        y2 := Y0 + Height;

        for j:=0 to PenWidth-1 do
        begin
          DrawLine(Image, x+j, y1, x+j, y2, 1);
        end;
      end;
      x := x + PenWidth;
    end;
  end;
end;

function TBarcode128.StrToCode128(Text, CodeType: String): String;
var
  Code: string;
  FirstID, TypeID, LastID, CheckSum, i, j, k, Test: integer;
begin
  if (CodeType = 'A') then
    TypeID := 1
  else if (CodeType = 'B') then
    TypeID := 2
  else if (CodeType = 'C') then
  begin
    if (TryStrToInt(Text, Test)) then
      TypeID := 3
    else
      CodeType := 'Auto';
  end
  else
    CodeType := 'Auto';

  if (CodeType = 'A') OR (CodeType = 'B') OR (CodeType = 'C') then
  begin
    CheckSum := 102 + TypeID;
    Code := EncodeArray[102 + TypeID][0];

    for i := 1 to Length(Text) do
    begin
      for j := 0 to Length(EncodeArray)-1 do
      begin
        if (Text[i] = EncodeArray[j][TypeID]) then
        begin
          Code := Code + EncodeArray[j][0];
          CheckSum := CheckSum + i * j;
          Continue;
        end;
      end;
    end;

    CheckSum := CheckSum MOD (102 + TypeID);
    Code := Code + EncodeArray[CheckSum][0] + EncodeArray[106][0];
  end
  else if (CodeType = 'Auto') then
  begin
    if (Length(Text) <= 1) then
    begin
      TypeID := 1;
      LastID := 1;
    end
    else if (TryStrToInt(Text[1] + Text[2], Test)) then
    begin
      TypeID := 3;
      LastID := 3;
    end
    else begin
      TypeID := 1;
      LastID := 1;
    end;

    CheckSum := 102 + TypeID;
    Code := EncodeArray[102 + TypeID][0];

    i := 1;
    k := 1;
    while i <= Length(Text) do
    begin
      if (i < Length(Text)) then
      begin
        if (TryStrToInt(Text[i] + Text[i+1], Test)) then
        begin
          TypeID := 3;
          if (TypeID <> LastID) then
          begin
            Code := Code + EncodeArray[99][0];
            CheckSum := CheckSum + k * 99;
            LastID := TypeID;
            Inc(k);
          end;

          for j := 0 to Length(EncodeArray)-1 do
          begin
            if ((Text[i] + Text[i+1]) = EncodeArray[j][TypeID]) then
            begin
              Code := Code + EncodeArray[j][0];
              CheckSum := CheckSum + k * j; 
              Inc(k);
              Inc(i, 2);
              Continue;
            end;
          end;
        end
        else begin
          TypeID := 1;
          if (TypeID <> LastID) then
          begin
            Code := Code + EncodeArray[101][0];
            CheckSum := CheckSum + k * 101;
            LastID := TypeID;
            Inc(k);
          end;

          for j := 0 to Length(EncodeArray)-1 do
          begin
            if ((Text[i]) = EncodeArray[j][TypeID]) then
            begin
              Code := Code + EncodeArray[j][0];
              CheckSum := CheckSum + k * j;
              Inc(k);
              Inc(i);
              Continue;
            end;
          end;
        end;
      end
      else begin
        TypeID := 1;
        if (TypeID <> LastID) then
        begin
          Code := Code + EncodeArray[101][0];
          CheckSum := CheckSum + k * 101; 
          LastID := TypeID;
          Inc(k);
        end;

        for j := 0 to Length(EncodeArray)-1 do
        begin
          if ((Text[i]) = EncodeArray[j][TypeID]) then
          begin
            Code := Code + EncodeArray[j][0];
            CheckSum := CheckSum + k * j;
            Inc(k);
            Inc(i);
            Continue;
          end;
        end;
      end;
    end;

    CheckSum := CheckSum MOD 103;
    Code := Code + EncodeArray[CheckSum][0] + EncodeArray[106][0];
  end;

  Result := Code;
end;

procedure TBarcode128.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TBarcode128.FormDestroy(Sender: TObject);
begin
  Barcode128 := Nil;
end;

end.
 