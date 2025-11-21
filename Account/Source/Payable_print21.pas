unit Payable_print21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, IniFiles, QRPDFFilt;

type
  TPayable_print2 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    Page1: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRLabel23: TQRLabel;
    QRDBText21: TQRDBText;
    TitleBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRShape10: TQRShape;
    QRShape21: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape24: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape17: TQRShape;
    DetailBand1: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape15: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRDBText5: TQRDBText;
    QRShape22: TQRShape;
    QRDBText13: TQRDBText;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    Query1: TQuery;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRBand1: TQRBand;
    QRLabel6: TQRLabel;
    Query1DJLX: TStringField;
    Query1DJNO: TStringField;
    Query1DJDATE: TDateTimeField;
    Query1Qty: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1USQty: TCurrencyField;
    Query1VNACC: TFloatField;
    Query1VNQty: TFloatField;
    L1: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    ComName:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Payable_print2: TPayable_print2;

implementation

uses PayableLit1, FunUnit;

{$R *.dfm}
procedure TPayable_print2.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP',' ComName ','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TPayable_print2.FormDestroy(Sender: TObject);
begin
Payable_print2:=nil;
end;

procedure TPayable_print2.FormCreate(Sender: TObject);
begin
  ReadIni();
  with query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select CWYF.DJLX,CWYF.DJNO,CWYF.DJDATE,Sum(Qty) as Qty,Sum(USACC) as USACC,Sum(USQty) as USQty,Sum(VNACC) as VNACC,Sum(VNQty) as VNQty  ');
    SQL.Add('from CWYF');
    SQL.Add('where CWYF.FKBH='''+PayableLit.PayMas.FieldByName('FKBH').value+'''');
    SQL.Add('Group by CWYF.DJLX,CWYF.DJNO,CWYF.DJDATE');
    SQL.Add('order by CWYF.DJLX,CWYF.DJNO');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  TCurrencyField(query1.FieldByName('VNQty')).DisplayFormat:=PayableLit.VNPrice_DiplayFormat;
  TCurrencyField(query1.FieldByName('VNACC')).DisplayFormat:=PayableLit.VNPrice_DiplayFormat;
end;

procedure TPayable_print2.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  Payable_print2.L1.Caption:=ComName;
end;

end.
