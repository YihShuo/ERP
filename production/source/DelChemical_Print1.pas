unit DelChemical_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRCtrls, QuickRpt, StdCtrls, ExtCtrls, DB, DBTables;

type
  TDelChemical_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    Label1: TLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText12: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    QRDBText13: TQRDBText;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText9: TQRDBText;
    DelTot: TQuery;
    UpdateSQL1: TUpdateSQL;
    DelTotCLBH: TStringField;
    DelTotYWPM: TStringField;
    DelTotZWPM: TStringField;
    DelTotDWBH: TStringField;
    DelTotQty: TCurrencyField;
    DelTotMEMO: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelChemical_Print: TDelChemical_Print;

implementation

uses DelChemical1;

{$R *.dfm}

procedure TDelChemical_Print.FormDestroy(Sender: TObject);
begin
DelChemical_Print:=nil;
end;

procedure TDelChemical_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDelChemical_Print.FormCreate(Sender: TObject);
begin

with  DelTot do
  begin
    active:=true;
    DelChemical.DelDet.first;
    while not DelChemical.DelDet.eof do
      begin
        if locate('CLBH',DelChemical.DelDet.FieldByName('CLBH').value,[]) then
          begin  
            edit;
            fieldbyname('Memo').Value:=fieldbyname('Memo').asstring+'// '
                            +DelChemical.DelDet.fieldbyname('SCBH').AsString+'('+DelChemical.DelDet.fieldbyname('Qty').AsString+')';
            post;
          end;
        DelChemical.DelDet.next;
      end; 
    DelChemical.DelDet.first;
  end;
end;

end.
