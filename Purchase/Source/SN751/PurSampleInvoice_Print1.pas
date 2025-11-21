unit PurSampleInvoice_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, StdCtrls;

type
  TPurSampleInvoice_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    Mas: TQuery;
    Det: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    L4: TQRLabel;
    L3: TQRLabel;
    L2: TQRLabel;
    QRShape2: TQRShape;
    L20: TQRLabel;
    L21: TQRLabel;
    L22: TQRLabel;
    L24: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    L13: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRDBText1: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    MasCINO: TStringField;
    MasCLBH: TStringField;
    MasCGNO: TStringField;
    MasQty: TCurrencyField;
    MasFD: TStringField;
    MasZLNO: TMemoField;
    MasInvoice: TStringField;
    MasYWPM: TStringField;
    MasZSYWJC: TStringField;
    QRDBText3: TQRDBText;
    MasPURPOSE: TStringField;
    MasSamplePurchaser: TStringField;
    L14: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    MasSEASON: TStringField;
    QRDBText4: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape15: TQRShape;
    QRLabel4: TQRLabel;
    QRDBText6: TQRDBText;
    QRShape16: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSampleInvoice_Print: TPurSampleInvoice_Print;

implementation

uses PurSampleInvoice1,main1;

{$R *.dfm}

procedure TPurSampleInvoice_Print.FormCreate(Sender: TObject);
var i:integer;
begin
  Mas.ParamByName('GSBH').Value:=main.Edit2.Text;
  Mas.Active:=true;
  Det.Active:=true;
  Mas.First;
//if messagedlg('Just for Print not for Mail?',mtinformation,[mbYes,mbNo],0)=mrYes then

//  PageHeaderBand1.Frame.DrawBottom:= true;
      while not Mas.Eof do
        begin
          Det.First;
          while not Det.Eof do
            begin
              if not Mas.FieldByName('ZLNO').isnull then
                begin
                  Mas.Edit;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('ZLBH').Value;
                end
                else
                  begin
                    Mas.Edit;
                    Mas.FieldByName('ZLNO').asstring:=Det.fieldbyname('ZLBH').Value;
                  end;
              Det.Next;
            end;
          Mas.Next;
        end;
end;

procedure TPurSampleInvoice_Print.FormDestroy(Sender: TObject);
begin
PurSampleInvoice_Print:=nil;
end;

end.
