unit Barcode93Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

const
  cBarCode39CharSet ='0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%';
 {N=Narrow Bar, W=WideBar}
  BarCodeTable: array[1..44, 1..9] of char = (
    'NNNWWNWNN',  {1 - 0}
    'WNNWNNNNW',  {2 - 1}
    'NNWWNNNNW',  {3 - 2}
    'WNWWNNNNN',  {4 - 3}
    'NNNWWNNNW',  {5 - 4}
    'WNNWWNNNN',  {6 - 5}
    'NNWWWNNNN',  {7 - 6}
    'NNNWNNWNW',  {8 - 7}
    'WNNWNNWNN',  {9 - 8}
    'NNWWNNWNN',  {10 - 9}
    'WNNNNWNNW',  {11 - A}
    'NNWNNWNNW',  {12 - B}
    'WNWNNWNNN',  {13 - C}
    'NNNNWWNNW',  {14 - D}
    'WNNNWWNNN',  {15 - E}
    'NNWNWWNNN',  {16 - F}
    'NNNNNWWNW',  {17 - G}
    'WNNNNWWNN',  {18 - H}
    'NNWNNWWNN',  {19 - I}
    'NNNNWWWNN',  {20 - J}
    'WNNNNNNWW',  {21 - K}
    'NNWNNNNWW',  {22 - L}
    'WNWNNNNWN',  {23 - M}
    'NNNNWNNWW',  {24 - N}
    'WNNNWNNWN',  {25 - O}
    'NNWNWNNWN',  {26 - P}
    'NNNNNNWWW',  {27 - Q}
    'WNNNNNWWN',  {28 - R}
    'NNWNNNWWN',  {29 - S}
    'NNNNWNWWN',  {30 - T}
    'WWNNNNNNW',  {31 - U}
    'NWWNNNNNW',  {32 - V}
    'WWWNNNNNN',  {33 - W}
    'NWNNWNNNW',  {34 - X}
    'WWNNWNNNN',  {35 - Y}
    'NWWNWNNNN',  {36 - Z}
    'NWNNNNWNW',  {37 - -}
    'WWNNNNWNN',  {38 - .}
    'NWWNNNWNN',  {39 - blank space}
    'NWNNWNWNN',  {40 - *}
    'NWNWNWNNN',  {41 - $}
    'NWNWNNNWN',  {42 - /}
    'NWNNNWNWN',  {43 - +}
    'NNNWNWNWN'); {44 - %}
      
type
  TBarcode93=Class(TObject)
  private
    myparent:TForm;
    Code39List:TStringlist;
    fRecLen :LongInt;
    fObjTitle: string;
    fPH, fPW: Integer;
    fWS, fHS: Integer;
    fFS, fFH: Integer;
    fCX, fCY: Integer;
    fBH, fBW: Integer;
    fPXy: Integer;
    fNW,fWW: Integer;

    { Private declarations }
    function EnCode39(s:string):string;
    procedure PrintBBar(WN:char;ThisBarIsBlack:boolean;Acanvas:tcanvas;
                               var LeftEdge:integer;
                               Top,Height,NarrowWidth,WideWidth:integer);
  public
   { Public declarations }
    Constructor Create(parent:TForm); overload;
    Destructor  Destroy; override;
    procedure ImBarCodeShow(img:TCanvas;Str:String;IsPrintTitle:boolean);
  end;


var Barcode93Obj:TBarcode93;
implementation

constructor TBarcode93.Create(parent:TForm);
begin
  myparent:=parent;
  fFS := 8;
  Code39List:=TStringlist.Create;
  //
  Code39List.Add('%U');
  Code39List.Add('$A');
  Code39List.Add('$B');
  Code39List.Add('$C');
  Code39List.Add('$D');
  Code39List.Add('$E');
  Code39List.Add('$F');
  Code39List.Add('$G');
  Code39List.Add('$H');
  Code39List.Add('$I');
  Code39List.Add('$J');
  Code39List.Add('$K');
  Code39List.Add('$L');
  Code39List.Add('$M');
  Code39List.Add('$N');
  Code39List.Add('$O');
  Code39List.Add('$P');
  Code39List.Add('$Q');
  Code39List.Add('$R');
  Code39List.Add('$S');
  Code39List.Add('$T');
  Code39List.Add('$U');
  Code39List.Add('$V');
  Code39List.Add('$W');
  Code39List.Add('$X');
  Code39List.Add('$Y');
  Code39List.Add('$Z');
  Code39List.Add('%A');
  Code39List.Add('%B');
  Code39List.Add('%C');
  Code39List.Add('%D');
  Code39List.Add('%E');
  Code39List.Add(' ');
  Code39List.Add('/A');
  Code39List.Add('/B');
  Code39List.Add('/C');
  Code39List.Add('$');
  Code39List.Add('%');
  Code39List.Add('/F');
  Code39List.Add('/G');
  Code39List.Add('/H');
  Code39List.Add('/I');
  Code39List.Add('/J');
  Code39List.Add('+');
  Code39List.Add('/L');
  Code39List.Add('-');
  Code39List.Add('.');
  Code39List.Add('/');
  Code39List.Add('0');
  Code39List.Add('1');
  Code39List.Add('2');
  Code39List.Add('3');
  Code39List.Add('4');
  Code39List.Add('5');
  Code39List.Add('6');
  Code39List.Add('7');
  Code39List.Add('8');
  Code39List.Add('9');
  Code39List.Add('/Z');
  Code39List.Add('%F');
  Code39List.Add('%G');
  Code39List.Add('%H');
  Code39List.Add('%I');
  Code39List.Add('%J');
  Code39List.Add('%V');
  Code39List.Add('A');
  Code39List.Add('B');
  Code39List.Add('C');
  Code39List.Add('D');
  Code39List.Add('E');
  Code39List.Add('F');
  Code39List.Add('G');
  Code39List.Add('H');
  Code39List.Add('I');
  Code39List.Add('J');
  Code39List.Add('K');
  Code39List.Add('L');
  Code39List.Add('M');
  Code39List.Add('N');
  Code39List.Add('O');
  Code39List.Add('P');
  Code39List.Add('Q');
  Code39List.Add('R');
  Code39List.Add('S');
  Code39List.Add('T');
  Code39List.Add('U');
  Code39List.Add('V');
  Code39List.Add('W');
  Code39List.Add('X');
  Code39List.Add('Y');
  Code39List.Add('Z');
  Code39List.Add('%K');
  Code39List.Add('%L');
  Code39List.Add('%M');
  Code39List.Add('%N');
  Code39List.Add('%O');
  Code39List.Add('%W');
  Code39List.Add('+A');
  Code39List.Add('+B');
  Code39List.Add('+C');
  Code39List.Add('+D');
  Code39List.Add('+E');
  Code39List.Add('+F');
  Code39List.Add('+G');
  Code39List.Add('+H');
  Code39List.Add('+I');
  Code39List.Add('+J');
  Code39List.Add('+K');
  Code39List.Add('+L');
  Code39List.Add('+M');
  Code39List.Add('+N');
  Code39List.Add('+O');
  Code39List.Add('+P');
  Code39List.Add('+Q');
  Code39List.Add('+R');
  Code39List.Add('+S');
  Code39List.Add('+T');
  Code39List.Add('+U');
  Code39List.Add('+V');
  Code39List.Add('+W');
  Code39List.Add('+X');
  Code39List.Add('+Y');
  Code39List.Add('+Z');
  Code39List.Add('%P');
  Code39List.Add('%Q');
  Code39List.Add('%R');
  Code39List.Add('%S');
  Code39List.Add('%T');
  //
end;
destructor TBarcode93.Destroy;
begin
  Code39List.Free;
  // Always call the parent destructor after running your own code
  inherited;
end;
function TBarcode93.EnCode39(s:string):string;
var i:integer;
begin
   Result := '';
   for i := 1 to length(s) do
      Result := Result + Code39List[ord(s[i])];
end;
procedure TBarcode93.ImBarCodeShow(img:TCanvas;Str:String;IsPrintTitle:boolean);
var j,k:integer;
    fWW,fNW: Integer;
    fPXx: Integer;
    fCN,fLN: Integer;
    LeftEdge: Integer;
    Index: Integer;
    fT: Integer;
    fs: Integer;
    title:string;
begin
    title:=Str;
    with Img do
    begin
      fPXy := myparent.PixelsPerInch*1;
      fPXx := myparent.PixelsPerInch*2;
      Font.Size := fFs;
      fFH := (fFs * fPXy) div 72;
      fCX := 5;
      fCY := 5;
      fWS := Trunc(0.5 * fPXx);
      fHS := Trunc(0.25 * fPXy);
      fWW := Trunc(3.0 * fPXx/144.0);
      fNW := Trunc(1.0 * fPXx/144.0);
      fBW := fRecLen * ( 3 * fWW + 7 * fNW );
      fs := Trunc( 0.04 * fPXy);
      fBH := Trunc( 0.3 * fPXy);

      if not( Trim(Str) = '') then
      begin
         fT := fCY + fBH + fs;
         Brush.color:=clBlack;
         Brush.style:=bsSolid;
         Pen.color  :=clBlack;
         Pen.style  :=psSolid;
         Pen.width  :=0;
         Str := '*' + Encode39(trim(Str)) + '*';
         LeftEdge := fCX;
         for j := 1 to Length(Str) do
            begin
              Index := Pos(Str[j],cBarCode39CharSet);
              for k := 1 to 9 do
                PrintBBar(BarCodeTable[Index][k], odd(K), Img,LeftEdge,fCY,fBH,fNW,fWW);
              Inc(LeftEdge, fNW);
            end;
         Brush.Color := clWhite;
         if IsPrintTitle=true then
          TextOut(fCX,fT,title);
      end;
    end;
end;
//

procedure TBarcode93.PrintBBar(WN:char;ThisBarIsBlack:boolean;Acanvas:tcanvas;
                               var LeftEdge:integer;
                               Top,Height,NarrowWidth,WideWidth:integer);
var
  CurrentWidth:integer;
begin
  if WN='W' then
    CurrentWidth:=WideWidth
  else
    CurrentWidth:=NarrowWidth;

  if ThisBarIsBlack then       {don't paint a rectangle if bar is white}
    aCanvas.rectangle(LeftEdge,Top,LeftEdge+CurrentWidth,Top+Height);
  inc(LeftEdge,CurrentWidth);  {setup LeftEdge for next bar}
end;


end.
