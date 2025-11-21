unit DeliveryRubber_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRXMLSFilt, QRPDFFilt, DB, DBTables;

type
  TDeliveryRubber_Print = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    PageN: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    SDate: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRShape17: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText4: TQRDBText;
    QRBand1: TQRBand;
    QRLabel15: TQRLabel;
    Query1: TQuery;
    Query1LLBH: TStringField;
    Query1CQDH: TStringField;
    Query1CLDH: TStringField;
    Query1KGS_LL: TFloatField;
    Query1KGS_YL: TFloatField;
    Query1KGS_CL: TFloatField;
    Query1ZWPM: TStringField;
    Query1YWPM: TStringField;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText5: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel40: TQRLabel;
    Query1DDBHList: TStringField;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliveryRubber_Print: TDeliveryRubber_Print;

implementation
   uses DeliveryRubber1, main1;
{$R *.dfm}

procedure TDeliveryRubber_Print.FormDestroy(Sender: TObject);
begin
DeliveryRubber_Print:=nil;
end;

procedure TDeliveryRubber_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeliveryRubber_Print.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT LLZLS.LLBH,LLZLS.CQDH,LLZLS.CLDH,SUM(LLZLS.KGS_LL) KGS_LL,SUM(LLZLS.KGS_YL) KGS_YL,SUM(LLZLS.KGS_CL) KGS_CL,MIN(CLZL.zwpm) ZWPM ,MIN(CLZL.ywpm) YWPM');
    sql.Add(',cast( (select DDBH + '','' from '+main.LIY_DD+'.dbo.LLZLS LL  where LL.LLBH=LLZLS.LLBH and LL.CLDH=LLZLS.CLDH  group by DDBH for XML Path ('''')) as varchar(500))  as DDBHList');
    sql.Add('FROM '+main.LIY_DD+'.dbo.LLZLS LLZLS');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON LLZLS.cldh = CLZL.cldh');
    sql.Add('where (LLBH=:LLBH)');
    sql.Add('GROUP BY LLZLS.LLBH,LLZLS.CQDH,LLZLS.CLDH');
    Active:=true;
  end;
end;

end.
