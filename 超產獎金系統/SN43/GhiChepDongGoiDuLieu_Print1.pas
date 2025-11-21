unit GhiChepDongGoiDuLieu_Print1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, qrpctrls, QuickRpt,
  Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, MyADOQuery;

type
  TGhiChepDongGoiDuLieu_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    L1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel_date: TQRLabel;
    QRBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand3: TQRBand;
    DongGoiQry: TMyADOQuery;
    DS1: TDataSource;
    QRShape17: TQRShape;
    QRLabel11: TQRLabel;
    QRShape19: TQRShape;
    QRLabel12: TQRLabel;
    QRShape20: TQRShape;
    QRLabel13: TQRLabel;
    QRISO: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel5: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel58: TQRLabel;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRLabel80: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel98: TQRLabel;
    QRDBText53: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRLabel101: TQRLabel;
    QRLabel102: TQRLabel;
    QRDBText61: TQRDBText;
    QRLabel103: TQRLabel;
    QRDBText62: TQRDBText;
    QRLabel104: TQRLabel;
    TempQry: TMyADOQuery;
    USERIDImg1: TQRImage;
    USERIDImg16: TQRImage;
    USERIDImg2: TQRImage;
    USERIDImg3: TQRImage;
    USERIDImg4: TQRImage;
    USERIDImg5: TQRImage;
    USERIDImg6: TQRImage;
    USERIDImg7: TQRImage;
    USERIDImg8: TQRImage;
    USERIDImg17: TQRImage;
    USERIDImg18: TQRImage;
    USERIDImg19: TQRImage;
    USERIDImg20: TQRImage;
    USERIDImg21: TQRImage;
    USERIDImg22: TQRImage;
    USERIDImg23: TQRImage;
    USERIDImg9: TQRImage;
    USERIDImg10: TQRImage;
    USERIDImg11: TQRImage;
    USERIDImg12: TQRImage;
    USERIDImg13: TQRImage;
    USERIDImg14: TQRImage;
    USERIDImg15: TQRImage;
    USERIDImg24: TQRImage;
    USERIDImg25: TQRImage;
    USERIDImg26: TQRImage;
    USERIDImg27: TQRImage;
    USERIDImg28: TQRImage;
    USERIDImg29: TQRImage;
    USERIDImg30: TQRImage;
    USERIDImg31: TQRImage;
    QRLabel7: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QCFMDate: TQRLabel;
    QCFMDate1: TQRLabel;
    QCFMName: TQRLabel;
    QCFMName1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QUserDate: TQRLabel;
    QUserName: TQRLabel;
    QRShape38: TQRShape;
    QPage1: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRSysData2: TQRSysData;
    DongGoiQryTC1: TStringField;
    DongGoiQryTB1: TStringField;
    DongGoiQryTF1: TStringField;
    DongGoiQryTC2: TStringField;
    DongGoiQryTB2: TStringField;
    DongGoiQryTF2: TStringField;
    DongGoiQryTC3: TStringField;
    DongGoiQryTB3: TStringField;
    DongGoiQryTF3: TStringField;
    DongGoiQryTC4: TStringField;
    DongGoiQryTB4: TStringField;
    DongGoiQryTF4: TStringField;
    DongGoiQryTC5: TStringField;
    DongGoiQryTB5: TStringField;
    DongGoiQryTF5: TStringField;
    DongGoiQryTC6: TStringField;
    DongGoiQryTB6: TStringField;
    DongGoiQryTF6: TStringField;
    DongGoiQryTC7: TStringField;
    DongGoiQryTB7: TStringField;
    DongGoiQryTF7: TStringField;
    DongGoiQryTC8: TStringField;
    DongGoiQryTB8: TStringField;
    DongGoiQryTF8: TStringField;
    DongGoiQryTC9: TStringField;
    DongGoiQryTB9: TStringField;
    DongGoiQryTF9: TStringField;
    DongGoiQryTC10: TStringField;
    DongGoiQryTB10: TStringField;
    DongGoiQryTF10: TStringField;
    DongGoiQryTC11: TStringField;
    DongGoiQryTB11: TStringField;
    DongGoiQryTF11: TStringField;
    DongGoiQryTC12: TStringField;
    DongGoiQryTB12: TStringField;
    DongGoiQryTF12: TStringField;
    DongGoiQryTC13: TStringField;
    DongGoiQryTB13: TStringField;
    DongGoiQryTF13: TStringField;
    DongGoiQryTC14: TStringField;
    DongGoiQryTB14: TStringField;
    DongGoiQryTF14: TStringField;
    DongGoiQryTC15: TStringField;
    DongGoiQryTB15: TStringField;
    DongGoiQryTF15: TStringField;
    DongGoiQryTC16: TStringField;
    DongGoiQryTB16: TStringField;
    DongGoiQryTF16: TStringField;
    DongGoiQryTC17: TStringField;
    DongGoiQryTB17: TStringField;
    DongGoiQryTF17: TStringField;
    DongGoiQryTC18: TStringField;
    DongGoiQryTB18: TStringField;
    DongGoiQryTF18: TStringField;
    DongGoiQryTC19: TStringField;
    DongGoiQryTB19: TStringField;
    DongGoiQryTF19: TStringField;
    DongGoiQryTC20: TStringField;
    DongGoiQryTB20: TStringField;
    DongGoiQryTF20: TStringField;
    DongGoiQryTC21: TStringField;
    DongGoiQryTB21: TStringField;
    DongGoiQryTF21: TStringField;
    DongGoiQryTC22: TStringField;
    DongGoiQryTB22: TStringField;
    DongGoiQryTF22: TStringField;
    DongGoiQryTC23: TStringField;
    DongGoiQryTB23: TStringField;
    DongGoiQryTF23: TStringField;
    DongGoiQryTC24: TStringField;
    DongGoiQryTB24: TStringField;
    DongGoiQryTF24: TStringField;
    DongGoiQryTC25: TStringField;
    DongGoiQryTB25: TStringField;
    DongGoiQryTF25: TStringField;
    DongGoiQryTC26: TStringField;
    DongGoiQryTB26: TStringField;
    DongGoiQryTF26: TStringField;
    DongGoiQryTC27: TStringField;
    DongGoiQryTB27: TStringField;
    DongGoiQryTF27: TStringField;
    DongGoiQryTC28: TStringField;
    DongGoiQryTB28: TStringField;
    DongGoiQryTF28: TStringField;
    DongGoiQryTC29: TStringField;
    DongGoiQryTB29: TStringField;
    DongGoiQryTF29: TStringField;
    DongGoiQryTC30: TStringField;
    DongGoiQryTB30: TStringField;
    DongGoiQryTF30: TStringField;
    DongGoiQryTC31: TStringField;
    DongGoiQryTB31: TStringField;
    DongGoiQryTF31: TStringField;
    DongGoiQryUSERID: TStringField;
    DongGoiQryCFMID: TStringField;
    DongGoiQryUSERNAME: TStringField;
    DongGoiQryUserCFM: TStringField;
    DongGoiQryUserCFM1: TStringField;
    DongGoiQryUserDate: TDateTimeField;
    DongGoiQryCFMDate: TDateTimeField;
    DongGoiQryCFMDate1: TDateTimeField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  GhiChepDongGoiDuLieu_Print: TGhiChepDongGoiDuLieu_Print;
  Month,Year: string;

implementation

uses DM1, GhiChepDongGoiDuLieu1, FunUnit;

{$R *.dfm}

procedure TGhiChepDongGoiDuLieu_Print.ReadIni();
begin
  AppDir:=ExtractFilePath(Application.ExeName);

  CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Images\'+DongGoiQry.FieldByName('USERID').AsString+'.bmp'),Pchar(AppDir+'Images\'+DongGoiQry.FieldByName('USERID').AsString+'.bmp'),false);
  if FileExists(AppDir+'Images\'+DongGoiQry.FieldByName('USERID').AsString+'.bmp') then
  begin
if (DongGoiQry.FieldByName('TC1').AsString<>'') or (DongGoiQry.FieldByName('TB1').AsString<>'')then
      USERIDImg1.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF1').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC2').AsString<>'') or (DongGoiQry.FieldByName('TB2').AsString<>'')then
      USERIDImg2.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF2').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC3').AsString<>'') or (DongGoiQry.FieldByName('TB3').AsString<>'')then
      USERIDImg3.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF3').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC4').AsString<>'') or (DongGoiQry.FieldByName('TB4').AsString<>'')then
      USERIDImg4.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF4').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC5').AsString<>'') or (DongGoiQry.FieldByName('TB5').AsString<>'')then
      USERIDImg5.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF5').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC6').AsString<>'') or (DongGoiQry.FieldByName('TB6').AsString<>'')then
      USERIDImg6.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF6').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC7').AsString<>'') or (DongGoiQry.FieldByName('TB7').AsString<>'')then
      USERIDImg7.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF7').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC8').AsString<>'') or (DongGoiQry.FieldByName('TB8').AsString<>'')then
      USERIDImg8.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF8').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC9').AsString<>'') or (DongGoiQry.FieldByName('TB9').AsString<>'')then
      USERIDImg9.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF9').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC10').AsString<>'') or (DongGoiQry.FieldByName('TB10').AsString<>'')then
      USERIDImg10.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF10').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC11').AsString<>'') or (DongGoiQry.FieldByName('TB11').AsString<>'')then
      USERIDImg11.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF11').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC12').AsString<>'') or (DongGoiQry.FieldByName('TB12').AsString<>'')then
      USERIDImg12.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF12').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC13').AsString<>'') or (DongGoiQry.FieldByName('TB13').AsString<>'')then
      USERIDImg13.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF13').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC14').AsString<>'') or (DongGoiQry.FieldByName('TB14').AsString<>'')then
      USERIDImg14.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF14').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC15').AsString<>'') or (DongGoiQry.FieldByName('TB15').AsString<>'')then
      USERIDImg15.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF15').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC16').AsString<>'') or (DongGoiQry.FieldByName('TB16').AsString<>'')then
      USERIDImg16.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF16').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC17').AsString<>'') or (DongGoiQry.FieldByName('TB17').AsString<>'')then
      USERIDImg17.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF17').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC18').AsString<>'') or (DongGoiQry.FieldByName('TB18').AsString<>'')then
      USERIDImg18.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF18').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC19').AsString<>'') or (DongGoiQry.FieldByName('TB19').AsString<>'')then
      USERIDImg19.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF19').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC20').AsString<>'') or (DongGoiQry.FieldByName('TB20').AsString<>'')then
      USERIDImg20.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF20').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC21').AsString<>'') or (DongGoiQry.FieldByName('TB21').AsString<>'')then
      USERIDImg21.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF21').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC22').AsString<>'') or (DongGoiQry.FieldByName('TB22').AsString<>'')then
      USERIDImg22.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF22').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC23').AsString<>'') or (DongGoiQry.FieldByName('TB23').AsString<>'')then
      USERIDImg23.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF23').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC24').AsString<>'') or (DongGoiQry.FieldByName('TB24').AsString<>'')then
      USERIDImg24.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF24').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC25').AsString<>'') or (DongGoiQry.FieldByName('TB25').AsString<>'')then
      USERIDImg25.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF25').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC26').AsString<>'') or (DongGoiQry.FieldByName('TB26').AsString<>'')then
      USERIDImg26.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF26').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC27').AsString<>'') or (DongGoiQry.FieldByName('TB27').AsString<>'')then
      USERIDImg27.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF27').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC28').AsString<>'') or (DongGoiQry.FieldByName('TB28').AsString<>'')then
      USERIDImg28.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF28').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC29').AsString<>'') or (DongGoiQry.FieldByName('TB29').AsString<>'')then
      USERIDImg29.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF29').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC30').AsString<>'') or (DongGoiQry.FieldByName('TB30').AsString<>'')then
      USERIDImg30.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF30').AsString+'.bmp');
    if (DongGoiQry.FieldByName('TC31').AsString<>'') or (DongGoiQry.FieldByName('TB31').AsString<>'')then
      USERIDImg31.Picture.LoadFromFile(AppDir+'\Images\'+DongGoiQry.FieldByName('TF31').AsString+'.bmp');
  end;

  QUserName.Caption:= DongGoiQry.FieldByName('UserName').AsString;
  QUserDate.Caption:=GhiChepDongGoiDuLieu.GetTaiwnDateTime(DongGoiQry.FieldByName('UserDate').Value);
  QCFMName.Caption:= DongGoiQry.FieldByName('UserCFM').AsString;
  QCFMDate.Caption:= GhiChepDongGoiDuLieu.GetTaiwnDateTime(DongGoiQry.FieldByName('CFMDate').Value);
  QCFMName1.Caption:= DongGoiQry.FieldByName('UserCFM1').AsString;
  QCFMDate1.Caption:= GhiChepDongGoiDuLieu.GetTaiwnDateTime(DongGoiQry.FieldByName('CFMDate1').Value);

  CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Images\'+DongGoiQry.FieldByName('CFMID').AsString+'.bmp'),Pchar(AppDir+'Images\'+DongGoiQry.FieldByName('CFMID').AsString+'.bmp'),false);
  if FileExists(AppDir+'Images\'+DongGoiQry.FieldByName('CFMID').AsString+'.bmp') then
  begin
   // CFMIDImg.Picture.LoadFromFile(AppDir+'Images\'+DongGoiQry.FieldByName('CFMID').AsString+'.bmp');
  end;
end;

procedure TGhiChepDongGoiDuLieu_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGhiChepDongGoiDuLieu_Print.FormCreate(Sender: TObject);
  var i: integer;
begin
  with DongGoiQry do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select ');
    for i := 1 to 31 do
    begin
      sql.Add('max(case when DAY(NgayThucHien)='+IntToStr(i)+' and KetQua=1 then ''V'' else '''' end) as TC'+IntToStr(i)+', ');
      sql.Add('max(case when DAY(NgayThucHien)='+IntToStr(i)+' and KetQua=0 and a.USERID is not null then ''V'' else '''' end) as TB'+IntToStr(i)+', ');
      sql.Add('max(case when DAY(NgayThucHien)='+IntToStr(i)+' and KetQua=1 and a.USERID is not null then a.USERID else '''' end) as TF'+IntToStr(i)+', ');
    end;
    sql.Add('  max(a.USERID) USERID, max(a.CFMID) CFMID, max(Busers.USERNAME) USERNAME,  ');
    sql.Add('  max(Busers_CFM.USERNAME) UserCFM, max(Busers_CFM1.USERNAME) UserCFM1, ');
    sql.Add('  max(a.UserDate) as UserDate, max(a.CFMDate) CFMDate, max(a.CFMDate1) CFMDate1 ');
    sql.Add('from ITPC_DongGoiDuLieu a ');
    sql.Add('left join LIY_ERP.dbo.Busers Busers on a.USERID=Busers.USERID ');
    sql.Add('left join LIY_ERP.dbo.Busers Busers_CFM on a.CFMID=Busers_CFM.USERID ');
    sql.Add('left join LIY_ERP.dbo.Busers Busers_CFM1 on a.CFMID1=Busers_CFM1.USERID ');
    sql.Add('where MONTH(NgayThucHien)='''+Month+''' and YEAR(NgayThucHien)='''+Year+'''');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  ReadIni();
end;

procedure TGhiChepDongGoiDuLieu_Print.FormDestroy(Sender: TObject);
begin
  GhiChepDongGoiDuLieu_Print:=nil;
end;

end.
