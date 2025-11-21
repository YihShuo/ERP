unit PaymentVATNO_Print_TB_VN1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRExport, QRPDFFilt, QuickRpt, QRCtrls, ExtCtrls;

type
  TPaymentVATNO_Print_TB_VN = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    L11: TQRLabel;
    L12: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText23: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel45: TQRLabel;
    Date1: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRSysData2: TQRSysData;
    page1: TQRLabel;
    QRLabel134: TQRLabel;
    QRDBText28: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel67: TQRLabel;
    khu: TQRLabel;
    QRBand2: TQRBand;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape30: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape6: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape8: TQRShape;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel41: TQRLabel;
    LTT_US: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    LTT_VN: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    LNT_VN: TQRLabel;
    QRLabel102: TQRLabel;
    QRShape52: TQRShape;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel2: TQRLabel;
    LNT_US: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel51: TQRLabel;
    QRBand4: TQRBand;
    VN_WORD1: TQRLabel;
    TW_WORD1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    LTTUS1: TQRLabel;
    QRLabel93: TQRLabel;
    QRExpr11: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRDBText18: TQRDBText;
    QRDBText20: TQRDBText;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape31: TQRShape;
    QRShape44: TQRShape;
    QRExpr5: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRShape55: TQRShape;
    QRLabel21: TQRLabel;
    LTTUS4: TQRDBText;
    LTTUS2: TQRDBText;
    LTTUS3: TQRLabel;
    QRShape7: TQRShape;
    QRShape10: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRBand5: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    L13: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRShape80: TQRShape;
    QRShape79: TQRShape;
    QRShape65: TQRShape;
    QRShape64: TQRShape;
    QRShape62: TQRShape;
    QRShape61: TQRShape;
    QRShape58: TQRShape;
    QRDBText43: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText2: TQRDBText;
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
    qry_CGPaymentSTTMEMO: TStringField;
    qry_TTT: TQuery;
    qry_TTTFKBH_TTT: TMemoField;
    qry_TTTUSACC_TTT: TCurrencyField;
    qry_TTTVNACC_TTT: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TW_WORD1Print(sender: TObject; var Value: String);
    procedure VN_WORD1Print(sender: TObject; var Value: String);
    procedure QRExpr11Print(sender: TObject; var Value: String);
    procedure Date1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
    function RMBFloatToChinese(ARMBCash: Real): string;
    function RMBFloatToVietnam(inputNumber: Real): string;
  end;

var
  PaymentVATNO_Print_TB_VN: TPaymentVATNO_Print_TB_VN;

implementation

uses main1, PaymentVATNO1;

{$R *.dfm}
function TPaymentVATNO_Print_TB_VN.RMBFloatToChinese(ARMBCash: Real): string;
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

function TPaymentVATNO_Print_TB_VN.RMBFloatToVietnam(inputNumber: Real): string;
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
procedure TPaymentVATNO_Print_TB_VN.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TPaymentVATNO_Print_TB_VN.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_Print_TB_VN:=nil;
end;

procedure TPaymentVATNO_Print_TB_VN.FormCreate(Sender: TObject);
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
    LTTUS2.Enabled:=false;
    LTTUS3.Enabled:=false;
    LTTUS4.Enabled:=false;
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

procedure TPaymentVATNO_Print_TB_VN.TW_WORD1Print(sender: TObject;
  var Value: String);
  var acc:string;
begin
  acc:=StringReplace(QRExpr11.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  TW_WORD1.Caption:=RMBFloatToChinese(StrToFloat(acc))+' 禫玭';
end;

procedure TPaymentVATNO_Print_TB_VN.VN_WORD1Print(sender: TObject;
  var Value: String);
  var acc:string;
begin
  acc:=StringReplace(QRExpr11.Value.strResult,',','',[rfReplaceAll, rfIgnoreCase]);
  VN_WORD1.Caption:=RMBFloatToVietnam(StrToFloat(acc));
end;

procedure TPaymentVATNO_Print_TB_VN.QRExpr11Print(sender: TObject;
  var Value: String);
begin
  if value='0.00' then
    QRExpr11.Expression:='FORMATNUMERIC(''#,##0'',SUM(USACC_THANHTOAN)-qry_CGPaymentSTT.USACC_THANHTOAN1-qry_TTT.USACC_TTT)';
end;

procedure TPaymentVATNO_Print_TB_VN.Date1Print(sender: TObject;
  var Value: String);
begin
  date1.Caption:=PaymentVATNO.GetChineseDate(PaymentVATNO.qry_CGPayment.FieldByName('USERDATE').value);
end;

end.
