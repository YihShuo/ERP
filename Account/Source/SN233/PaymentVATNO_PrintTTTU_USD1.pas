unit PaymentVATNO_PrintTTTU_USD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TPaymentVATNO_PrintTTTU_USD = class(TForm)
    QuickRep5: TQuickRep;
    QRBand20: TQRBand;
    QRShape161: TQRShape;
    QRShape162: TQRShape;
    QRShape167: TQRShape;
    QRLabel277: TQRLabel;
    QRLabel278: TQRLabel;
    QRLabel280: TQRLabel;
    QRLabel281: TQRLabel;
    QRLabel282: TQRLabel;
    QRShape168: TQRShape;
    QRLabel283: TQRLabel;
    QRLabel284: TQRLabel;
    QRLabel285: TQRLabel;
    QRShape169: TQRShape;
    QRLabel286: TQRLabel;
    QRLabel287: TQRLabel;
    QRLabel288: TQRLabel;
    QRLabel290: TQRLabel;
    QRBand21: TQRBand;
    QRShape171: TQRShape;
    QRShape173: TQRShape;
    QRShape174: TQRShape;
    QRDBText109: TQRDBText;
    QRDBText110: TQRDBText;
    QRShape175: TQRShape;
    QRShape176: TQRShape;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRBand22: TQRBand;
    QRShape214: TQRShape;
    QRShape213: TQRShape;
    QRShape177: TQRShape;
    QRShape178: TQRShape;
    QRShape179: TQRShape;
    QRLabel298: TQRLabel;
    QRShape180: TQRShape;
    QRShape183: TQRShape;
    QRLabel301: TQRLabel;
    QRShape184: TQRShape;
    QRLabel303: TQRLabel;
    QRLabel304: TQRLabel;
    QRShape185: TQRShape;
    QRShape186: TQRShape;
    QRShape187: TQRShape;
    QRShape188: TQRShape;
    QRShape189: TQRShape;
    QRShape190: TQRShape;
    QRLabel305: TQRLabel;
    QRDBText115: TQRDBText;
    QRLabel309: TQRLabel;
    QRLabel310: TQRLabel;
    QRLabel311: TQRLabel;
    QRLabel312: TQRLabel;
    QRShape192: TQRShape;
    QRShape193: TQRShape;
    QRDBText116: TQRDBText;
    QRExpr21: TQRExpr;
    QRExpr22: TQRExpr;
    QRExpr23: TQRExpr;
    QRLabel316: TQRLabel;
    QRLabel317: TQRLabel;
    QRLabel318: TQRLabel;
    QRLabel319: TQRLabel;
    QRLabel320: TQRLabel;
    QRLabel321: TQRLabel;
    QRLabel268: TQRLabel;
    VN_WORD5: TQRLabel;
    QRLabel270: TQRLabel;
    QRLabel273: TQRLabel;
    QRLabel299: TQRLabel;
    QRLabel330: TQRLabel;
    QRLabel329: TQRLabel;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    TW_WORD5: TQRLabel;
    QRLabel61: TQRLabel;
    QRShape8: TQRShape;
    QRBand23: TQRBand;
    QRLabel322: TQRLabel;
    QRLabel323: TQRLabel;
    L53: TQRLabel;
    QRBand24: TQRBand;
    QRLabel294: TQRLabel;
    QRLabel296: TQRLabel;
    QRShape198: TQRShape;
    QRLabel295: TQRLabel;
    QRShape199: TQRShape;
    QRShape200: TQRShape;
    QRShape203: TQRShape;
    QRShape204: TQRShape;
    QRShape205: TQRShape;
    QRShape208: TQRShape;
    QRShape209: TQRShape;
    QRShape210: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    date4: TQRLabel;
    QRDBText107: TQRDBText;
    QRSysData5: TQRSysData;
    QRLabel217: TQRLabel;
    page1: TQRLabel;
    L51: TQRLabel;
    L52: TQRLabel;
    QRShape1: TQRShape;
    QRDBText98: TQRDBText;
    QRDBText100: TQRDBText;
    QRDBText101: TQRDBText;
    QRDBText105: TQRDBText;
    QRLabel266: TQRLabel;
    QRDBText99: TQRDBText;
    QRDBText106: TQRDBText;
    QRShape2: TQRShape;
    QRLabel276: TQRLabel;
    QRDBText103: TQRDBText;
    QRDBText121: TQRDBText;
    QRShape3: TQRShape;
    QRLabel289: TQRLabel;
    QRDBText118: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel1: TQRLabel;
    QRShape7: TQRShape;
    QRLabel291: TQRLabel;
    qry_TTT: TQuery;
    qry_TTTFKBH_TTT: TMemoField;
    qry_TTTUSACC_TTT: TCurrencyField;
    qry_TTTVNACC_TTT: TCurrencyField;
    qry_TTTVNACC_PTU: TCurrencyField;
    qry_TTTDate_PTU: TDateTimeField;
    qry_TTTDV_TU: TStringField;
    qry_TTTUSERID_TU: TStringField;
    qry_TTTUSERNAME_TU: TStringField;
    qry_temp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  PaymentVATNO_PrintTTTU_USD: TPaymentVATNO_PrintTTTU_USD;

implementation

uses PaymentVATNO1;

{$R *.dfm}
function TPaymentVATNO_PrintTTTU_USD.RMBFloatToChinese(ARMBCash: Real): string;
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
  if Length(sNum)=1 then
  begin
    Result := '箂'
  end else begin
    if sNum[Length(sNum)]='0' then Result := Result + ''
    else Result := Result + '俱';
  end;
end;

function TPaymentVATNO_PrintTTTU_USD.RMBFloatToVietnam(inputNumber: Real): string;
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
  result:= sResult;
  //
end;

procedure TPaymentVATNO_PrintTTTU_USD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_PrintTTTU_USD.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_PrintTTTU_USD:=nil;
end;

procedure TPaymentVATNO_PrintTTTU_USD.FormCreate(Sender: TObject);
begin
  qry_TTT.active := false;
  qry_TTT.cachedupdates := false;
  qry_TTT.requestlive := false;
  qry_TTT.active := true;
end;

procedure TPaymentVATNO_PrintTTTU_USD.VN_WORD5Print(sender: TObject;
  var Value: String);
var acc, str:string;
begin
  if PaymentVATNO.qry_CGPaymentTAM.FieldByName('SOTIEN_HOANLAI').value>0 then
  begin
     if QRExpr24.Expression = '' then acc:='0' else
     acc:=StringReplace(QRExpr24.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  end else
  begin
    if QRExpr25.Expression = '' then acc:='0' else
    acc:=StringReplace(QRExpr25.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  end;
  with Qry_Temp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT CAST((('+acc+')-('+acc+'%1)) as INT) as a, CAST((('+acc+'%1)*100) as INT) as b');
    Open;
    if (fieldbyname('b').Value=0) then
      str:=RMBFloatToVietnam(StrToFloat(fieldbyname('a').AsString)) +' do'
    else if (fieldbyname('b').Value>0) and (fieldbyname('b').Value<10) then
      str:=RMBFloatToVietnam(StrToFloat(fieldbyname('a').AsString))+' do va khong '+RMBFloatToVietnam(StrToFloat(fieldbyname('b').AsString))+' cents'
    else str:=RMBFloatToVietnam(StrToFloat(fieldbyname('a').AsString))+' do va '+RMBFloatToVietnam(StrToFloat(fieldbyname('b').AsString))+' cents';
    VN_WORD5.Caption:=Uppercase(Copy(str,1,1))+Lowercase(Copy(str,2,Length(str)));
  end;
end;

procedure TPaymentVATNO_PrintTTTU_USD.TW_WORD5Print(sender: TObject;
  var Value: String);
var acc:string;
begin
  if PaymentVATNO.qry_CGPaymentTAM.FieldByName('SOTIEN_HOANLAI').value>0 then
  begin
    if QRExpr24.Expression = '' then acc:='0' else
    acc:=StringReplace(QRExpr24.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  end else
  begin
    if QRExpr25.Expression = '' then acc:='0' else
    acc:=StringReplace(QRExpr25.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  end;
  TW_WORD5.Caption:=RMBFloatToChinese(StrToFloat(acc));
end;

end.
