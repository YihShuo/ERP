unit PaymentVATNO_PrintTTHD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRExport, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls;

type
  TPaymentVATNO_PrintTTHD = class(TForm)
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    qry_temp: TQuery;
    qry_CGPaymentSTT: TQuery;
    qry_CGPaymentSTTFKBH: TStringField;
    qry_CGPaymentSTTSO_TOKHAI: TStringField;
    qry_CGPaymentSTTUSACC_CHUATHUE: TCurrencyField;
    qry_CGPaymentSTTCWHL: TCurrencyField;
    qry_CGPaymentSTTVNACC_CHUATHUE: TCurrencyField;
    qry_CGPaymentSTTUSACC_NHATHAU: TCurrencyField;
    qry_CGPaymentSTTVNACC_NHATHAU: TCurrencyField;
    qry_CGPaymentSTTUSACC_THANHTOAN: TCurrencyField;
    qry_CGPaymentSTTVNACC_THANHTOAN: TCurrencyField;
    qry_CGPaymentSTTPercent_TT: TIntegerField;
    qry_TTT: TQuery;
    qry_TTTFKBH_TTT: TMemoField;
    qry_TTTUSACC_TTT: TCurrencyField;
    qry_TTTVNACC_TTT: TCurrencyField;
    QuickRep4: TQuickRep;
    QRBand14: TQRBand;
    L41: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel116: TQRLabel;
    page1: TQRLabel;
    QRLabel167: TQRLabel;
    QRDBText69: TQRDBText;
    QRLabel170: TQRLabel;
    QRDBText70: TQRDBText;
    QRLabel176: TQRLabel;
    QRDBText71: TQRDBText;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRDBText72: TQRDBText;
    QRLabel187: TQRLabel;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRLabel212: TQRLabel;
    L42: TQRLabel;
    QRLabel215: TQRLabel;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRLabel216: TQRLabel;
    date3: TQRLabel;
    QRDBText77: TQRDBText;
    QRDBText78: TQRDBText;
    QRBand15: TQRBand;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRShape133: TQRShape;
    QRShape134: TQRShape;
    QRLabel218: TQRLabel;
    QRLabel219: TQRLabel;
    QRLabel220: TQRLabel;
    QRLabel221: TQRLabel;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    QRShape135: TQRShape;
    QRLabel225: TQRLabel;
    QRLabel226: TQRLabel;
    QRLabel227: TQRLabel;
    QRShape136: TQRShape;
    QRLabel228: TQRLabel;
    QRLabel229: TQRLabel;
    QRLabel230: TQRLabel;
    QRLabel231: TQRLabel;
    QRLabel233: TQRLabel;
    QRShape137: TQRShape;
    QRLabel234: TQRLabel;
    QRLabel235: TQRLabel;
    QRLabel236: TQRLabel;
    QRLabel237: TQRLabel;
    QRLabel238: TQRLabel;
    QRLabel239: TQRLabel;
    LPTTT: TQRLabel;
    QRLabel217: TQRLabel;
    QRBand16: TQRBand;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRDBText79: TQRDBText;
    QRDBText80: TQRDBText;
    QRDBText81: TQRDBText;
    QRShape142: TQRShape;
    QRShape143: TQRShape;
    QRDBText82: TQRDBText;
    QRDBText83: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText85: TQRDBText;
    QRBand17: TQRBand;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRShape146: TQRShape;
    QRLabel240: TQRLabel;
    QRShape147: TQRShape;
    QRShape148: TQRShape;
    QRShape149: TQRShape;
    QRShape150: TQRShape;
    QRLabel241: TQRLabel;
    QRLabel242: TQRLabel;
    QRLabel243: TQRLabel;
    QRLabel244: TQRLabel;
    QRShape151: TQRShape;
    QRLabel245: TQRLabel;
    QRLabel246: TQRLabel;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRLabel247: TQRLabel;
    QRShape158: TQRShape;
    QRDBText86: TQRDBText;
    QRLabel248: TQRLabel;
    QRLabel249: TQRLabel;
    QRLabel250: TQRLabel;
    QRLabel251: TQRLabel;
    QRLabel252: TQRLabel;
    QRLabel253: TQRLabel;
    QRLabel254: TQRLabel;
    QRShape159: TQRShape;
    QRLabel255: TQRLabel;
    QRShape160: TQRShape;
    QRDBText87: TQRDBText;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    TW_WORD4: TQRLabel;
    VN_WORD4: TQRLabel;
    QRLabel258: TQRLabel;
    QRLabel259: TQRLabel;
    QRLabel260: TQRLabel;
    QRLabel261: TQRLabel;
    QRLabel262: TQRLabel;
    QRLabel263: TQRLabel;
    QRBand18: TQRBand;
    QRLabel264: TQRLabel;
    QRLabel265: TQRLabel;
    L43: TQRLabel;
    LTTVN3: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure VN_WORDPrint(sender: TObject; var Value: String);
    procedure TW_WORDPrint(sender: TObject; var Value: String);
    procedure DatePrint(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function RMBFloatToChinese(ARMBCash: Real): string;
    function RMBFloatToVietnam(inputNumber: Real): string;
  end;

var
  PaymentVATNO_PrintTTHD: TPaymentVATNO_PrintTTHD;

implementation

uses PaymentVATNO1, main1;

{$R *.dfm}

function TPaymentVATNO_PrintTTHD.RMBFloatToChinese(ARMBCash: Real): string;
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

function TPaymentVATNO_PrintTTHD.RMBFloatToVietnam(inputNumber: Real): string;
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

procedure TPaymentVATNO_PrintTTHD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_PrintTTHD.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_PrintTTHD:=nil;
end;

procedure TPaymentVATNO_PrintTTHD.VN_WORDPrint(sender: TObject;
  var Value: String);
  var acc:string;
begin
  acc:=StringReplace(QRExpr20.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  VN_WORD4.Caption:=RMBFloatToVietnam(StrToFloat(acc));
  {with Qry_Temp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT dbo.fnAmountToWords_VN(('+acc+')-('+acc+'%1))+'' dong'' as money');
    Open;
    VN_WORD4.Caption:=fieldbyname('money').AsString;
  end;        }
end;

procedure TPaymentVATNO_PrintTTHD.TW_WORDPrint(sender: TObject;
  var Value: String);
  var acc:string;
begin
  acc:=StringReplace(QRExpr20.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  TW_WORD4.Caption:=RMBFloatToChinese(StrToFloat(acc))+'禫玭';
  {with Qry_Temp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT dbo.fnAmountToWords_TW(('+acc+')-('+acc+'%1)) as money');
    Open;
    TW_WORD4.Caption:=RMBFloatToChinese(StrToFloat(acc))+'禫玭';
  end;      }
end;

procedure TPaymentVATNO_PrintTTHD.DatePrint(sender: TObject;
  var Value: String);
begin
  date3.Caption:=PaymentVATNO.GetChineseDate(PaymentVATNO.qry_CGPayment.FieldByName('USERDATE').value);
end;

procedure TPaymentVATNO_PrintTTHD.FormCreate(Sender: TObject);
begin
  qry_CGPaymentSTT.active := false;
  qry_CGPaymentSTT.cachedupdates := false;
  qry_CGPaymentSTT.requestlive := false;
  qry_CGPaymentSTT.active := true;
  qry_TTT.active := false;
  qry_TTT.cachedupdates := false;
  qry_TTT.requestlive := false;
  qry_TTT.active := true;
  if qry_TTT.FieldByName('FKBH_TTT').Value='()' then
  begin
    LTTVN3.Caption:='0';
  end;
end;

end.
