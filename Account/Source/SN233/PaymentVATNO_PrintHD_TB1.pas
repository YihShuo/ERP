unit PaymentVATNO_PrintHD_TB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRExport, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls;

type
  TPaymentVATNO_PrintHD_TB = class(TForm)
    QRPDFFilter1: TQRPDFFilter;
    QRTextFilter1: TQRTextFilter;
    QuickRep2: TQuickRep;
    QRBand6: TQRBand;
    L21: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel51: TQRLabel;
    page2: TQRLabel;
    QRLabel64: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel65: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel66: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel69: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel70: TQRLabel;
    L22: TQRLabel;
    QRLabel72: TQRLabel;
    QRDBText13: TQRDBText;
    QRBand7: TQRBand;
    QRShape29: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRShape39: TQRShape;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel87: TQRLabel;
    QRShape47: TQRShape;
    QRLabel101: TQRLabel;
    QRLabel103: TQRLabel;
    QRBand9: TQRBand;
    QRShape60: TQRShape;
    QRShape63: TQRShape;
    QRShape66: TQRShape;
    QRLabel104: TQRLabel;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    LTTVN1: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRShape71: TQRShape;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRLabel119: TQRLabel;
    QRShape78: TQRShape;
    QRBand10: TQRBand;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel84: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel86: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRShape32: TQRShape;
    QRLabel96: TQRLabel;
    QRShape42: TQRShape;
    QRShape50: TQRShape;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRLabel127: TQRLabel;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRLabel1: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    L23: TQRLabel;
    TW_WORD: TQRLabel;
    VN_WORD: TQRLabel;
    Date: TQRLabel;
    qry_temp: TQuery;
    QRDBText22: TQRDBText;
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
    QRDBText2: TQRDBText;
    qry_TTT: TQuery;
    qry_TTTFKBH_TTT: TMemoField;
    LTTVN4: TQRDBText;
    LTTVN3: TQRLabel;
    LTTVN2: TQRDBText;
    qry_TTTUSACC_TTT: TCurrencyField;
    qry_TTTVNACC_TTT: TCurrencyField;
    LPT: TQRLabel;
    qry_CGPaymentSTT2: TQuery;
    qry_CGPaymentSTT2STT: TIntegerField;
    qry_CGPaymentSTT2FKBH: TStringField;
    qry_CGPaymentSTT2ZSBH_MST: TStringField;
    qry_CGPaymentSTT2VATNO: TStringField;
    qry_CGPaymentSTT2KYHIEU_HOADON: TStringField;
    qry_CGPaymentSTT2VATDATE: TDateTimeField;
    qry_CGPaymentSTT2TONGTIEN_CHUATHUE1: TCurrencyField;
    qry_CGPaymentSTT2TONGTIEN_THUE1: TCurrencyField;
    qry_CGPaymentSTT2TONGTIEN_THANHTOAN1: TCurrencyField;
    qry_CGPaymentSTT2USERID: TStringField;
    qry_CGPaymentSTT2USERDATE: TDateTimeField;
    qry_CGPaymentSTT2YN: TStringField;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail1: TQRSubDetail;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape59: TQRShape;
    QRShape57: TQRShape;
    QRShape56: TQRShape;
    QRShape54: TQRShape;
    QRShape53: TQRShape;
    QRShape49: TQRShape;
    QRDBText48: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel56: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape7: TQRShape;
    QRShape10: TQRShape;
    QRLabel6: TQRLabel;
    khu: TQRLabel;
    Query1: TQuery;
    QRDBText5: TQRDBText;
    Query1TONGTIEN_CHUATHUE: TCurrencyField;
    Query1TONGTIEN_THUE: TCurrencyField;
    QRDBText9: TQRDBText;
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
  PaymentVATNO_PrintHD_TB: TPaymentVATNO_PrintHD_TB;

implementation

uses PaymentVATNO1, main1;

{$R *.dfm}

function TPaymentVATNO_PrintHD_TB.RMBFloatToChinese(ARMBCash: Real): string;
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

function TPaymentVATNO_PrintHD_TB.RMBFloatToVietnam(inputNumber: Real): string;
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

procedure TPaymentVATNO_PrintHD_TB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_PrintHD_TB.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_PrintHD_TB:=nil;
end;

procedure TPaymentVATNO_PrintHD_TB.VN_WORDPrint(sender: TObject;
  var Value: String);
  var acc:string;
begin
  acc:=StringReplace(QRExpr4.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  VN_WORD.Caption:=RMBFloatToVietnam(StrToFloat(acc));
  {with Qry_Temp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT dbo.fnAmountToWords_VN(('+acc+')-('+acc+'%1))+'' dong'' as money');
    Open;
    VN_WORD.Caption:=fieldbyname('money').AsString;
  end;   }
end;

procedure TPaymentVATNO_PrintHD_TB.TW_WORDPrint(sender: TObject;
  var Value: String);
  var acc:string;
begin
  acc:=StringReplace(QRExpr4.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  TW_WORD.Caption:=RMBFloatToChinese(StrToFloat(acc))+' 禫玭';
  {with Qry_Temp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT dbo.fnAmountToWords_TW(('+acc+')-('+acc+'%1)) as money');
    Open;
    TW_WORD.Caption:=RMBFloatToChinese(StrToFloat(acc))+' 禫玭';
  end;   }
end;

procedure TPaymentVATNO_PrintHD_TB.DatePrint(sender: TObject;
  var Value: String);
begin
  date.Caption:=PaymentVATNO.GetChineseDate(PaymentVATNO.qry_CGPayment.FieldByName('USERDATE').value);
end;

procedure TPaymentVATNO_PrintHD_TB.FormCreate(Sender: TObject);
begin
  qry_CGPaymentSTT2.active := false;
  qry_CGPaymentSTT2.cachedupdates := false;
  qry_CGPaymentSTT2.requestlive := false;
  qry_CGPaymentSTT2.active := true;
  qry_TTT.active := false;
  qry_TTT.cachedupdates := false;
  qry_TTT.requestlive := false;
  qry_TTT.active := true;
  query1.active := false;
  query1.cachedupdates := false;
  query1.requestlive := false;
  query1.active := true;
  if qry_TTT.FieldByName('FKBH_TTT').Value='()' then
  begin
    LTTVN2.Enabled:=false;
    LTTVN3.Enabled:=false;
    LTTVN4.Enabled:=false;
  end;
  with qry_temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select Factory from bgszl where gsdh='''+main.edit2.text+'''');
    active:=true;
  end;
  khu.Caption:=qry_temp.FieldByName('Factory').AsString ;
end;

end.
