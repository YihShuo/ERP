unit LYV_TLReturn_S1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TLYV_TLReturn_S = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel25: TQRLabel;
    SummaryBand1: TQRBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LYV_TLReturn_S: TLYV_TLReturn_S;

implementation

uses LYV_TLreturn1;
{$R *.dfm}

procedure TLYV_TLReturn_S.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TLYV_TLReturn_S.FormDestroy(Sender: TObject);
begin
  LYV_TLReturn_S:=nil;
end;

procedure TLYV_TLReturn_S.FormCreate(Sender: TObject);
begin
  if LYV_TLreturn.DelMas.FieldByName('SFL').AsString='1' then
  begin
    QRLabel7.Caption:='PHIEU TRA TRUC TALON';
    QRLabel20.Caption:='花輪借用歸還單';
  end;
  if LYV_TLreturn.DelMas.FieldByName('SFL').AsString='2' then
  begin
    QRLabel7.Caption:='PHIEU NHAP KHO TRUC TALON';
    QRLabel20.Caption:='花輪增加入庫單';
  end;
end;

end.
