unit PaymentVATNO_PrintPTU1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TPaymentVATNO_PrintPTU = class(TForm)
    qry_temp: TQuery;
    QuickRep6: TQuickRep;
    QRBand24: TQRBand;
    L61: TQRLabel;
    QRSysData6: TQRSysData;
    QRLabel272: TQRLabel;
    page1: TQRLabel;
    QRDBText102: TQRDBText;
    QRLabel294: TQRLabel;
    QRDBText104: TQRDBText;
    QRDBText108: TQRDBText;
    QRLabel296: TQRLabel;
    L62: TQRLabel;
    date5: TQRLabel;
    QRDBText119: TQRDBText;
    QRShape198: TQRShape;
    QRLabel364: TQRLabel;
    QRLabel295: TQRLabel;
    QRShape199: TQRShape;
    QRLabel313: TQRLabel;
    QRShape200: TQRShape;
    QRShape203: TQRShape;
    QRShape204: TQRShape;
    QRShape205: TQRShape;
    QRShape208: TQRShape;
    QRLabel314: TQRLabel;
    QRShape209: TQRShape;
    QRShape210: TQRShape;
    QRBand25: TQRBand;
    QRShape206: TQRShape;
    QRShape207: TQRShape;
    QRLabel328: TQRLabel;
    QRLabel331: TQRLabel;
    QRLabel334: TQRLabel;
    QRBand26: TQRBand;
    QRShape211: TQRShape;
    QRShape212: TQRShape;
    QRDBText120: TQRDBText;
    QRDBText122: TQRDBText;
    QRDBText125: TQRDBText;
    QRBand27: TQRBand;
    QRShape216: TQRShape;
    QRLabel338: TQRLabel;
    QRShape218: TQRShape;
    QRLabel340: TQRLabel;
    QRLabel341: TQRLabel;
    QRShape222: TQRShape;
    QRShape223: TQRShape;
    QRShape224: TQRShape;
    QRDBText126: TQRDBText;
    QRShape229: TQRShape;
    QRDBText127: TQRDBText;
    QRExpr26: TQRExpr;
    QRBand28: TQRBand;
    QRLabel361: TQRLabel;
    QRLabel362: TQRLabel;
    L63: TQRLabel;
    VN_WORD5: TQRLabel;
    TW_WORD5: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel52: TQRLabel;
    QRShape2: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText117: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure date5Print(sender: TObject; var Value: String);
    procedure VN_WORD5Print(sender: TObject; var Value: String);
    procedure TW_WORD5Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    function RMBFloatToChinese(ARMBCash: Real): string;
    function RMBFloatToVietnam(inputNumber: Real): string;
  end;

var
  PaymentVATNO_PrintPTU: TPaymentVATNO_PrintPTU;

implementation

uses PaymentVATNO1, main1;

{$R *.dfm}

function TPaymentVATNO_PrintPTU.RMBFloatToChinese(ARMBCash: Real): string;
const
  cNum: WideString = '箂滁禠把竩ヮ嘲琺╤-窾ㄕ珺货ㄕ珺窾ㄕ珺じàだ';
  cCha: array [0 .. 1, 0 .. 11] of string =
    (('箂', '箂ㄕ', '箂珺', '箂箂箂', '箂箂', '箂货', '箂窾', '箂じ', '货窾', '箂à', '箂だ', '箂俱'),
    ('箂', '箂', '箂', '箂', '箂', '货', '窾', 'じ', '货', '箂', '俱', '俱'));
var
  i: Integer;
  sNum: WideString;
begin
  Result := '';
  sNum := FormatFloat('0', ARMBCash * 100);
  for i := 1 to Length(sNum) do
    Result := Result + cNum[Ord(sNum[i]) - 47] + cNum[26 - Length(sNum) + i];
  for i := 0 to 11 do // 奔箂
    Result := StringReplace(Result, cCha[0, i], cCha[1, i], [rfReplaceAll]);
end;

function TPaymentVATNO_PrintPTU.RMBFloatToVietnam(inputNumber: Real): string;
const
  unitNumbers:array [0..9] of String =('khong','mot','hai','ba','bon','nam','sau','bay','tam','chin');
  placeValues:array [0..3] of String =('','nghin','trieu','ty');
var
  sNumber:String;
  isNegative:boolean;
  positionDigit:integer;
  placeValue:integer;
  //
  tens,hundreds,ones:integer;
  sResult:String;
begin
  sResult:='';
  //
  isNegative:=false;
  if inputNumber<0 then
  begin
   inputNumber:=-1*inputNumber;
   isNegative:=true;
  end;
  sNumber:=floattostr(inputNumber);
  positionDigit:=length(sNumber);
  placeValue:=0;
  while positionDigit>0 do
  begin
    tens:=-1; hundreds:=-1;
    ones:=strtoint(Copy(sNumber,positionDigit,1));
    positionDigit:=positionDigit-1;
    if positionDigit>0 then
    begin
      tens:=strtoint(Copy(sNumber,positionDigit,1));
      positionDigit:=positionDigit-1;
      if positionDigit>0 then
      begin
        hundreds:=strtoint(Copy(sNumber,positionDigit,1));
        positionDigit:=positionDigit-1;
      end;
    end;
    //
    if ( (ones>0) or (tens>0) or (hundreds>0) or (placeValue=3)) then
    begin
      sResult:=placeValues[placeValue] + sResult;
    end;
    placeValue:=placeValue+1;
    if (placeValue > 3) then placeValue:= 1;
    //
    if ((ones=1) and (tens>1))  then
    begin
       sResult:='mot ' + sResult;
    end else
    begin
      if ((ones=5) and (tens>0))  then
      begin
        sResult:='lam ' + sResult;
      end else if (ones > 0) then
      begin
        sResult:=unitNumbers[ones] + ' '+ sResult;
      end;
    end;
    if (tens < 0) then
    begin
      break;
    end else
    begin
      if ((tens = 0) and (ones > 0)) then sResult:= 'le ' + sResult;
      if (tens=1)  then sResult:= 'muoi ' + sResult;
      if (tens > 1) then sResult:=unitNumbers[tens] + ' muoi ' + sResult;
    end;
    //
    if (hundreds < 0) then
    begin
      break;
    end else
    begin
      if ( (hundreds>0) or (tens > 0) or (ones > 0))  then
      begin
        sResult:= unitNumbers[hundreds] + ' tram ' + sResult;
      end;
    end;
    sResult:= ' ' + sResult;
  end;
  sResult:=trim(sResult);
  if sResult='' then sResult:='Khong';
  if (isNegative) then sResult:='Am ' + sResult;
  result:= sResult+' dong';
  //
end;

procedure TPaymentVATNO_PrintPTU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_PrintPTU.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_PrintPTU:=nil;
end;

procedure TPaymentVATNO_PrintPTU.date5Print(sender: TObject;
  var Value: String);
begin
  date5.Caption:=PaymentVATNO.GetChineseDate(PaymentVATNO.qry_CGPayment.FieldByName('NGAY_TAMUNG').value);
end;

procedure TPaymentVATNO_PrintPTU.VN_WORD5Print(sender: TObject;
  var Value: String);
  var acc, str:string;
begin
  acc:=StringReplace(QRExpr26.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  VN_WORD5.Caption:=RMBFloatToVietnam(StrToFloat(acc));
end;

procedure TPaymentVATNO_PrintPTU.TW_WORD5Print(sender: TObject;
  var Value: String);
  var acc:string;
begin
  acc:=StringReplace(QRExpr26.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  TW_WORD5.Caption:=RMBFloatToChinese(StrToFloat(acc))+' 禫玭';
end;

end.
