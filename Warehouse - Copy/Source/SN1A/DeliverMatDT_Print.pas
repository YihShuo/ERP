unit DeliverMatDT_Print;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, DB, DBTables;

type
  TCCLDPrintForm = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    L1: TQRLabel;
    L2: TQRLabel;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRBand3: TQRBand;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRDBText1: TQRDBText;
    reportQuery: TQuery;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    PntDateLabel: TQRLabel;
    QRBand4: TQRBand;
    sumQtyLabel: TQRLabel;
    sumPackageLabel: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText5: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadData(CCLDNO:string);
  end;

var
  CCLDPrintForm: TCCLDPrintForm;

implementation
  uses DeliverMatDTp,funUnit;
{$R *.dfm}

procedure TCCLDPrintForm.LoadData(CCLDNO:string);
var sumQty,sumPackage:integer;
begin
  with reportQuery do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select CCLD.CCLDNO,CCLD.DDBH,');
    sql.Add('  (select top 1 B1.DepName from BDepartment B1 where (CCLD.LCBM=B1.ID)) as LCBMNM,');
    sql.Add('  (select top 1 B2.DepName from BDepartment B2 where (CCLD.SCBM=B2.ID)) as SCBMNM,');
    sql.Add('  (select top 1 B3.DepName from BDepartment B3 where (CCLD.SYBM=B3.ID)) as SYBMNM,');
    sql.Add('   CCLD.CLMC,CCLD.CSHJS,CCLD.GSBH,CCLDS.*');
    sql.Add('from CCLD ');
    sql.Add('left join  CCLDS on (CCLD.CCLDNO=CCLDS.CCLDNO) and (CCLD.DDBH=CCLDS.DDBH) and (CCLDS.Qty>0) ');
    sql.Add(' where (CCLD.CCLDNO='''+CCLDNO+''') ');
    Active:=true;
  end;
  //≠p∫‚¡`∂q
  sumQty:=0;
  sumPackage:=0;
  reportQuery.First;
  while not reportQuery.Eof do
  begin
     sumQty:=sumQty+reportQuery.FieldByName('Qty').AsInteger;
     sumPackage:=sumPackage+reportQuery.FieldByName('Package').AsInteger;
     reportQuery.Next;
  end;

  sumQtyLabel.Caption:=inttostr(sumQty);
  sumPackageLabel.Caption:=inttostr(sumPackage);
  PntDateLabel.Caption:=FormatDatetime('YYYY/MM/DD',date());
end;
end.
