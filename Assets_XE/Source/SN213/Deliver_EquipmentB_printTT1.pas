unit Deliver_EquipmentB_printTT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, iniFiles, Data.DB, Data.Win.ADODB,fununit,
  Bde.DBTables ;

type
  TDeliver_EquipmentB_printTT = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText11: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRDBText3: TQRDBText;
    QRISO: TQRLabel;
    QRBand2: TQRBand;
    QRExpr5: TQRExpr;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    LB2: TQRLabel;
    QRLabel11: TQRLabel;
    LB3: TQRLabel;
    QRLabel15: TQRLabel;
    LB5: TQRLabel;
    LB4: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape13: TQRShape;
    QRShape19: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel24: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRLabel26: TQRLabel;
    QRShape4: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel13: TQRLabel;
    KCLLSQry: TQuery;
    KCLLSQryVWPM: TStringField;
    KCLLSQryZWPM: TStringField;
    KCLLSQryLSBH: TStringField;
    KCLLSQryTSBH: TStringField;
    QRShape5: TQRShape;
    QRShape15: TQRShape;
    QRShape23: TQRShape;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    KCLLSQty: TQuery;
    KCLLSQtyQty: TFloatField;
    KCLLSQtyReason: TStringField;
    QRDBText8: TQRDBText;
    QRShape3: TQRShape;
    qry_id: TQuery;
    qry_idUSERNAME: TStringField;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape24: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:string;
    ComName:String;
    { Private declarations }
    procedure Readini();
  public
    { Public declarations }
    IP,DBName,DBUser,DBPass,PW:String;
  end;

var
  Deliver_EquipmentB_printTT: TDeliver_EquipmentB_printTT;

implementation
  uses Deliver_EquipmentB1, main1;
{$R *.dfm}

procedure TDeliver_EquipmentB_printTT.Readini();
var MyIni :Tinifile;
    AppDir,ComName,ComNameCH,AssetsN213_ISO:string;
    // trinh ky
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春責任有限公司';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
      AssetsN213_ISO:=MyIni.ReadString('ERP','AssetsN213_ISO','T-DCC-054E');
    finally
      MyIni.Free;
    end;
  end;
  QRISO.Caption:=AssetsN213_ISO;
end;

procedure TDeliver_EquipmentB_printTT.FormCreate(Sender: TObject);
begin
  ReadIni();
  qry_id.Active:=true;
  KCLLSQry.Active:=true;
  KCLLSQty.Active:=true;
end;

procedure TDeliver_EquipmentB_printTT.FormDestroy(Sender: TObject);
begin
  Deliver_EquipmentB_printTT:=nil;
end;

procedure TDeliver_EquipmentB_printTT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
  qry_id.Active:=false;
  KCLLSQry.Active:=false;
  KCLLSQty.Active:=false;
end;

end.
