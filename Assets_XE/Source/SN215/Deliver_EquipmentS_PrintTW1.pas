unit Deliver_EquipmentS_PrintTW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, iniFiles, Data.DB, Bde.DBTables,DateUtils;

type
  TDeliver_EquipmentS_PrintTW = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    L1: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    TitleBand1: TQRBand;
    QRShape24: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape15: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    L2: TQRLabel;
    QRLabel_USERDATE: TQRLabel;
    QRLabel_USERDATE1: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRBand3: TQRBand;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel3: TQRLabel;
    QRShape2: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRISO: TQRLabel;
    QRShape28: TQRShape;
    DelDetS: TQuery;
    DelDetSLLNO: TStringField;
    DelDetSVALUE2: TStringField;
    DelDetSYWPM: TStringField;
    DelDetSZWPM: TStringField;
    DelDetSVWPM: TStringField;
    DelDetSSBBH: TStringField;
    DelDetSLSBH: TStringField;
    DelDetSTSBH: TStringField;
    DelDetSQty: TFloatField;
    DS3: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Readini();
  public
    { Public declarations }
    function GetVietDate(myDate:TDateTime):string;
  end;

var
  Deliver_EquipmentS_PrintTW: TDeliver_EquipmentS_PrintTW;

implementation

{$R *.dfm}

uses Deliver_EquipmentS1,fununit;

function TDeliver_EquipmentS_PrintTW.GetVietDate(myDate:TDateTime):string;
var myYear, myMonth, myDay : Word;
    myHour, myMin, mySec, myMilli : Word;
begin
  decodedatetime(myDate, myYear, myMonth, myDay ,myHour, myMin, mySec, myMilli);
  result:='Ngày 日'+Format('%.2d',[myDay])+' tháng 月 '+Format('%.2d',[myMonth])+' năm 年 '+inttostr(myYear);
end;

procedure TDeliver_EquipmentS_PrintTW.Readini();
var MyIni :Tinifile;
    AppDir,ComName,ComNameCH,AssetsN215_ISO:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='固定資產異動申請單';
  AssetsN215_ISO:='T-TV-ES003-03A';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','固定資產異動申請單');
      AssetsN215_ISO:=MyIni.ReadString('ERP','AssetsN215_ISO','T-TV-ES003-03A');
    finally
      MyIni.Free;
    end;
  end;
  L1.Caption:=ComName;
  L2.Caption:=ComNameCH;
  QRISO.Caption:=AssetsN215_ISO;
  QRLabel_USERDATE.Caption:=GetVietDate(Deliver_EquipmentS.DelMas.FieldByName('USERDATE').value);
  QRLabel_USERDATE1.Caption:=GetVietDate(Deliver_EquipmentS.DelMas.FieldByName('USERDATE').value);
  //
end;

procedure TDeliver_EquipmentS_PrintTW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDeliver_EquipmentS_PrintTW.FormCreate(Sender: TObject);
begin
  DelDetS.Active:=true;
  Readini();
end;

procedure TDeliver_EquipmentS_PrintTW.FormDestroy(Sender: TObject);
begin
  Deliver_EquipmentS_PrintTW:=nil;
end;

end.
