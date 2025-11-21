unit OutsoleSTOCK_PRINT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, DBTables;

type
  TOutsoleSTOCK_PRINT = class(TForm)
    QApprover: TADOQuery;
    QApproverApplicantID: TWideStringField;
    QApproverApplicant: TWideStringField;
    QApproverApplicantDate: TStringField;
    QApproverSupvervisorID: TWideStringField;
    QApproverSupvervisor: TWideStringField;
    QApproverSupvervisorDate: TStringField;
    QApproverLeaderID: TWideStringField;
    QApproverLeader: TWideStringField;
    QApproverLeaderDate: TStringField;
    QApproverManagerID: TWideStringField;
    QApproverManager: TWideStringField;
    QApproverManagerDate: TStringField;
    QApproverTopManagerID: TWideStringField;
    QApproverTopManager: TWideStringField;
    QApproverTopManagerDate: TStringField;
    QApproverHardwareID: TWideStringField;
    QApproverHardware: TWideStringField;
    QApproverHardwareDate: TStringField;
    QApproverHardwareMID: TWideStringField;
    QApproverHardwareM: TWideStringField;
    QApproverHardwareMDate: TStringField;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape26: TQRShape;
    QRShape28: TQRShape;
    QRShape33: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape19: TQRShape;
    QRShape16: TQRShape;
    QRShape40: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape4: TQRShape;
    QRBand2: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel23: TQRLabel;
    L16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel24: TQRLabel;
    L14: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel36: TQRLabel;
    QRBand3: TQRBand;
    QRShape10: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape24: TQRShape;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape23: TQRShape;
    QRShape2: TQRShape;
    QRBand4: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape5: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel40: TQRLabel;
    PageN: TQRLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutsoleSTOCK_PRINT: TOutsoleSTOCK_PRINT;

implementation

uses main1,OutsoleSTOCK_new1;

{$R *.dfm}



procedure TOutsoleSTOCK_PRINT.FormDestroy(Sender: TObject);
begin
   OutsoleSTOCK_PRINT:=nil;
end;

procedure TOutsoleSTOCK_PRINT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

end.
