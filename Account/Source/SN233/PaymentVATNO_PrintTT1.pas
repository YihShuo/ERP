unit PaymentVATNO_PrintTT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRExport, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls;

type
  TPaymentVATNO_PrintTT = class(TForm)
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
    QuickRep3: TQuickRep;
    QRBand3: TQRBand;
    L31: TQRLabel;
    L32: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel135: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRDBText35: TQRDBText;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    date2: TQRLabel;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRSysData3: TQRSysData;
    page3: TQRLabel;
    QRLabel143: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText59: TQRDBText;
    QRBand11: TQRBand;
    QRShape7: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape43: TQRShape;
    QRLabel144: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel152: TQRLabel;
    QRShape45: TQRShape;
    QRLabel153: TQRLabel;
    QRLabel154: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRShape46: TQRShape;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRShape48: TQRShape;
    QRShape51: TQRShape;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRLabel166: TQRLabel;
    LTT_US2: TQRLabel;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    LTT_VN2: TQRLabel;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRLabel174: TQRLabel;
    QRLabel175: TQRLabel;
    LNT_VN2: TQRLabel;
    QRLabel177: TQRLabel;
    QRShape91: TQRShape;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    LNT_US2: TQRLabel;
    QRBand12: TQRBand;
    VN_WORD3: TQRLabel;
    TW_WORD3: TQRLabel;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRShape101: TQRShape;
    QRShape102: TQRShape;
    QRShape103: TQRShape;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel190: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel195: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel197: TQRLabel;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    QRLabel202: TQRLabel;
    QRLabel203: TQRLabel;
    QRLabel204: TQRLabel;
    QRLabel205: TQRLabel;
    QRLabel206: TQRLabel;
    QRLabel207: TQRLabel;
    QRLabel208: TQRLabel;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr15: TQRExpr;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRShape113: TQRShape;
    QRLabel209: TQRLabel;
    QRBand13: TQRBand;
    QRLabel210: TQRLabel;
    QRLabel211: TQRLabel;
    L33: TQRLabel;
    QRSubDetail3: TQRSubDetail;
    QRShape115: TQRShape;
    QRShape116: TQRShape;
    QRShape118: TQRShape;
    QRShape119: TQRShape;
    QRShape120: TQRShape;
    QRShape121: TQRShape;
    QRShape122: TQRShape;
    QRShape123: TQRShape;
    QRDBText63: TQRDBText;
    QRSubDetail4: TQRSubDetail;
    QRShape124: TQRShape;
    QRShape125: TQRShape;
    QRShape126: TQRShape;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape129: TQRShape;
    QRShape130: TQRShape;
    QRLabel213: TQRLabel;
    QRDBText64: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRExpr14: TQRExpr;
    QRExpr16: TQRExpr;
    qry_TTT: TQuery;
    qry_TTTFKBH_TTT: TMemoField;
    qry_TTTUSACC_TTT: TCurrencyField;
    qry_TTTVNACC_TTT: TCurrencyField;
    QRExpr21: TQRExpr;
    QRShape84: TQRShape;
    QRDBText54: TQRDBText;
    QRDBText58: TQRDBText;
    QRShape81: TQRShape;
    QRLabel1: TQRLabel;
    LTTVN3: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure VN_WORDPrint(sender: TObject; var Value: String);
    procedure TW_WORDPrint(sender: TObject; var Value: String);
    procedure DatePrint(sender: TObject; var Value: String);
    procedure FormCreate(Sender: TObject);
    procedure QRExpr12Print(sender: TObject; var Value: String);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    function RMBFloatToChinese(ARMBCash: Real): string;
    function RMBFloatToVietnam(inputNumber: Real): string;
  end;

var
  PaymentVATNO_PrintTT: TPaymentVATNO_PrintTT;

implementation

uses PaymentVATNO1, main1;

{$R *.dfm}

function TPaymentVATNO_PrintTT.RMBFloatToChinese(ARMBCash: Real): string;
const
  cNum: WideString = '零壹貳參肆伍陸柒捌玖-萬仟佰拾億仟佰拾萬仟佰拾元角分';
  cCha: array [0 .. 1, 0 .. 11] of string =
    (('零仟', '零佰', '零拾', '零零零', '零零', '零億', '零萬', '零元', '億萬', '零角', '零分', '零整'),
    ('零', '零', '零', '零', '零', '億', '萬', '元', '億', '零', '整', '整'));
var
  i: Integer;
  sNum: WideString;
begin
  Result := '';
  sNum := FormatFloat('0', ARMBCash * 100);
  for i := 1 to Length(sNum) do
    Result := Result + cNum[Ord(sNum[i]) - 47] + cNum[26 - Length(sNum) + i];
  for i := 0 to 11 do // 去掉多余的零
    Result := StringReplace(Result, cCha[0, i], cCha[1, i], [rfReplaceAll]);
  if Length(sNum)=1 then
  begin
    Result := '零美金'
  end else begin
    if sNum[Length(sNum)]='0' then Result := Result + '美金'
    else Result := Result + '整美金';
  end;
end;

function TPaymentVATNO_PrintTT.RMBFloatToVietnam(inputNumber: Real): string;
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

procedure TPaymentVATNO_PrintTT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_PrintTT.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_PrintTT:=nil;
end;

procedure TPaymentVATNO_PrintTT.VN_WORDPrint(sender: TObject;
  var Value: String);
  var acc, str:string;
begin
  acc:=StringReplace(QRExpr12.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
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
    VN_WORD3.Caption:=Uppercase(Copy(str,1,1))+Lowercase(Copy(str,2,Length(str)));
  end;
  //VN_WORD3.Caption:=RMBFloatToVietnam(StrToFloat(acc));
  {with Qry_Temp do
  begin
    Close;
    sql.Clear;
    //sql.Add('SELECT dbo.fnAmountToWords_VN(('+acc+')-('+acc+'%1))+'' do va ''+dbo.fnAmountToWords_VN(('+acc+'%1)*100)+'' cents'' as money');
    sql.Add('SELECT dbo.fnAmountToWords_VN(('+acc+')-('+acc+'%1))+'' do ''+ ');
    sql.Add('case when (('+acc+'%1)*10)<1 and (('+acc+'%1)*10)>0 then ''va Khong ''+LOWER(dbo.fnAmountToWords_VN(('+acc+'%1)*100))+'' cents'' ');
    sql.Add('when (('+acc+'%1)*10)=0 then '''' else ''va ''+dbo.fnAmountToWords_VN(('+acc+'%1)*100)+'' cents'' end as money ');
    Open;
    VN_WORD3.Caption:=fieldbyname('money').AsString;
  end;   }
end;

procedure TPaymentVATNO_PrintTT.TW_WORDPrint(sender: TObject;
  var Value: String);
  var acc:string;
begin
  acc:=StringReplace(QRExpr12.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  TW_WORD3.Caption:=RMBFloatToChinese(StrToFloat(acc));//'整美金';
  {with Qry_Temp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT dbo.fnAmountToWords_TW(('+acc+')-('+acc+'%1))+'' 元 ''+dbo.fnAmountToWords_TW(('+acc+'%1)*100) as money');
    Open;
    TW_WORD3.Caption:=RMBFloatToChinese(StrToFloat(acc))+'整美金';    //美金
  end;     }
end;

procedure TPaymentVATNO_PrintTT.DatePrint(sender: TObject;
  var Value: String);
begin
  date2.Caption:=PaymentVATNO.GetChineseDate(PaymentVATNO.qry_CGPayment.FieldByName('USERDATE').value);
end;

procedure TPaymentVATNO_PrintTT.FormCreate(Sender: TObject);
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

procedure TPaymentVATNO_PrintTT.QRExpr12Print(sender: TObject;
  var Value: String);
begin
  if value='0.00' then
    QRExpr12.Expression:='FORMATNUMERIC(''#,##0'',SUM(USACC_THANHTOAN)-qry_CGPaymentSTT.USACC_THANHTOAN1-qry_TTT.USACC_TTT)';
end;

procedure TPaymentVATNO_PrintTT.QRSubDetail3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if PaymentVATNO.qry_CGPaymentUNG.FieldByName('DOCNO').AsString='...' then
    QRLabel1.Caption:=PaymentVATNO.qry_CGPaymentUNG.FieldByName('MEMO').AsString
  else QRLabel1.Caption:=PaymentVATNO.qry_CGPaymentUNG.FieldByName('DOCNO').AsString;
end;

end.
