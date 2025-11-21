unit EquipmentList_ReportList1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, QuickRpt, Data.Win.ADODB,
  Data.DB, Bde.DBTables, QRCtrls, qrpctrls;

type
  TEquipmentList_ReportList = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    Page1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    TagLabel: TQRLabel;
    DepMemoLabel: TQRLabel;
    ZWPMLabel: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    TSBHLabel: TQRLabel;
    QtyLabel: TQRLabel;
    DepNameLabel: TQRLabel;
    DepIDMemoLabel: TQRLabel;
    DepIDLabel: TQRLabel;
    QRBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape1: TQRShape;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    YWPM: TQRDBText;
    ZWPM: TQRDBText;
    TSBH: TQRDBText;
    Qty: TQRDBText;
    STT: TQRDBText;
    DepID: TQRDBText;
    DepName: TQRDBText;
    DepMemo: TQRDBText;
    DepIDMemo: TQRDBText;
    LabelTag: TQRDBText;
    QRShape9: TQRShape;
    QRLabel6: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel10: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape16: TQRShape;
    QRShape22: TQRShape;
    QRShape21: TQRShape;
    QRShape23: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel5: TQRLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentList_ReportList: TEquipmentList_ReportList;

implementation

{$R *.dfm}

uses EquipmentList1;

procedure TEquipmentList_ReportList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentList_ReportList.FormDestroy(Sender: TObject);
begin
  EquipmentList_ReportList:=nil;
end;



end.
