unit EntryRubber_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRXMLSFilt, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls;

type
  TEntryRubber_Print = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRShape17: TQRShape;
    PageHeaderBand1: TQRBand;
    PageN: TQRLabel;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    SDate: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand1: TQRBand;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    Query1: TQuery;
    Query1DGLB: TStringField;
    Query1KSDH: TStringField;
    Query1CQDH: TStringField;
    Query1SH: TStringField;
    Query1CLDH: TStringField;
    Query1MSBZ: TStringField;
    Query1SL: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    QRDBText4: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryRubber_Print: TEntryRubber_Print;

implementation

uses main1;

{$R *.dfm}

procedure TEntryRubber_Print.FormDestroy(Sender: TObject);
begin
  EntryRubber_Print:=Nil;
end;

procedure TEntryRubber_Print.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT KSYDS.DGLB ,KSYDS.KSDH ,KSYDS.CQDH ,KSYDS.SH ,KSYDS.CLDH ,KSYDS.MSBZ ,KSYDS.SL, KSYDS.USERID ,KSYDS.USERDATE ,CLZL.zwpm ,CLZL.ywpm ,CLZL.dwbh');
    sql.Add('FROM '+main.LIY_DD+'.DBO.KSYDS KSYDS');
    sql.Add('LEFT JOIN '+main.LIY_DD+'.DBO.CLZL CLZL ON KSYDS.CLDH = CLZL.cldh');
    sql.Add('where KSYDS.KSDH=:KSDH and KSYDS.CQDH=:CQDH');
    sql.Add('ORDER BY KSYDS.SH');
    active:=true;
  end;
end;

end.
