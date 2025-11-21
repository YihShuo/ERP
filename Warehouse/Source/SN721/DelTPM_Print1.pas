unit DelTPM_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, DBTables, DB, ADODB, QRCtrls, QuickRpt, StdCtrls,
  ExtCtrls;

type
  TDelTPM_Print = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand2: TQRBand;
    QRSysData4: TQRSysData;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetQty: TCurrencyField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetDWBH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelTPM_Print: TDelTPM_Print;

implementation

uses DelTPM1;

{$R *.dfm}

procedure TDelTPM_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  {}
  Action := Cafree;
end;

procedure TDelTPM_Print.FormCreate(Sender: TObject);
begin
  {}
  with DelDet do
  begin
    Active := true;
  end;
end;

procedure TDelTPM_Print.FormDestroy(Sender: TObject);
begin
  {}
  DelTPM_Print := nil;
end;

end.
