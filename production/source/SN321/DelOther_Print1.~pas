unit DelOther_Print1;

interface       

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DBTables, DB, StdCtrls, QRPDFFilt;
                                          
type
  TDelOther_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;           
    QRDBText3: TQRDBText;                   
    QRDBText4: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCWHL: TIntegerField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetCLSL: TCurrencyField;
    DelDetPerson: TFloatField;
    DelDetYYBH: TStringField;
    DelDetYWSM: TStringField;
    DelDetVNPrice: TFloatField;
    DelDetVNACC: TFloatField;
    DelDetMEMO: TStringField;
    UPDet: TUpdateSQL;
    DelDetZWSM: TStringField;
    Label1: TLabel;
    QRDBText13: TQRDBText;
    DelDetMEMO1: TMemoField;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormCreate(Sender: TObject);
    procedure DelDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_Print: TDelOther_Print;

implementation

{$R *.dfm}

procedure TDelOther_Print.FormCreate(Sender: TObject);
begin

with DelDet do
  begin
    active:=true;
    while not eof do
      begin
        edit;
        if fieldbyname('Memo1').isnull then
          begin
            fieldbyname('Memo1').value:='';
          end;
        fieldbyname('Memo1').value:=fieldbyname('YWSM').value+'/'+fieldbyname('ZWSM').value+'//'+fieldbyname('Memo1').value; 
        post;
        next;
      end;
  end;
end;

procedure TDelOther_Print.DelDetCalcFields(DataSet: TDataSet);
begin
if deldet.FieldByName('CLSL').value<>0 then
  begin
     deldet.FieldByName('person').value:=deldet.FieldByName('tempqty').value/deldet.FieldByName('CLSL').value*100;
  end
  else
    begin
      deldet.FieldByName('person').value:=0;
    end;
end;

procedure TDelOther_Print.FormDestroy(Sender: TObject);
begin
DelOther_Print:=nil;
end;

procedure TDelOther_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
