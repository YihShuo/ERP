unit ReplenishDel_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls, DB, DBTables, QRPDFFilt;

type
  TReplenishDel_Print = class(TForm)
    QuickRep1: TQuickRep;
    QRCompositeReport1: TQRCompositeReport;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    ColumnHeaderBand2: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText15: TQRDBText;
    BLDet: TQuery;
    BLDetOldPer: TFloatField;
    BLDetNowPer: TFloatField;
    BLDetBWYW: TStringField;
    BLDetMatName: TStringField;
    BLDetCLSL: TFloatField;
    BLDetQty: TCurrencyField;
    BLDetQtyOld: TCurrencyField;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRShape11: TQRShape;
    QRLabel22: TQRLabel;
    QRShape12: TQRShape;
    QRDBText21: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRShape13: TQRShape;
    QRDBText22: TQRDBText;
    QRLabel35: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText24: TQRDBText;
    BLMas: TQuery;
    BLMasBLNO: TStringField;
    BLMasGSBH: TStringField;
    BLMasZLBH: TStringField;
    BLMasGXLB: TStringField;
    BLMasQty: TCurrencyField;
    BLMasBLACC: TCurrencyField;
    BLMasBLDate: TDateTimeField;
    BLMasUSERDate: TDateTimeField;
    BLMasUSERID: TStringField;
    BLMasYN: TStringField;
    BLMasCFMDate: TDateTimeField;
    BLMasCFMID: TStringField;
    BLMaszlQty: TIntegerField;
    BLMasArticle: TStringField;
    BLMasKFJC: TStringField;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel47: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BLDetCalcFields(DataSet: TDataSet);
    procedure QRCompositeReport1Finished(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishDel_Print: TReplenishDel_Print;

implementation

uses main1;

{$R *.dfm}

procedure TReplenishDel_Print.FormDestroy(Sender: TObject);
begin
ReplenishDel_Print:=nil;
end;

procedure TReplenishDel_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin  
BLMas.Active:=false;
BLDet.Active:=false;
action:=cafree;
end;

procedure TReplenishDel_Print.QRCompositeReport1AddReports(
  Sender: TObject);
begin

with QRCompositeReport1 do
  begin
    reports.Add(QuickRep1);
    reports.Add(QuickRep2);
  end;
end;

procedure TReplenishDel_Print.FormCreate(Sender: TObject);
var IsMJBH:boolean;
begin
  if messagedlg('Only show monther Material/ thay hinh me vat tu',mtCustom, [mbYes,mbNo], 0)=mrYes then
  begin
    IsMJBH:=true;
  end else
  begin
    IsMJBH:=false;
  end;
  with BLDet do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SCBLS.BWBH+'' ''+BWZL.YWSM as BWYW,SCBLS.CLBH+'' ''+CLZL.YWPM+'' ''+CLZL.DWBH as MatName');
    SQL.Add('       ,OrdCL.CLSL,SCBLS.Qty ,BLOld.QtyOld ');
    SQL.Add('from  SCBLS ');
    SQL.Add('left join (select ZLZLS2.BWBH,ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as CLSL');
    SQL.Add('        from ZLZLS2');
    SQL.Add('        where ZLZLS2.ZLBH=:ZLBH ');
    if IsMJBH=true then
    SQL.Add('              and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('        group by ZLZLS2.BWBH,ZLZLS2.CLBH) OrdCL  on SCBLS.BWBH=OrdCL.BWBH  and SCBLS.CLBH=OrdCL.CLBH');
    SQL.Add('left join BWZL on BWZL.BWDH=SCBLS.BWBH');
    SQL.Add('left join CLZL on CLZL.CLDH=SCBLS.CLBH');
    SQL.Add('left join (select SCBLS.BWBH,SCBLS.CLBH,sum(SCBLS.Qty) as QtyOld from SCBLS ');
    SQL.Add('             left join SCBL on SCBL.BLNO=SCBLS.BLNO ');
    SQL.Add('             where SCBL.ZLBH=:ZLBH ');
    SQL.Add('             group by  SCBLS.BWBH,SCBLS.CLBH) BLOld on BLOld.BWBH=SCBLS.BWBH  and BLOld.CLBH=SCBLS.CLBH');
    SQL.Add('where SCBLS.BLNO=:BLNO  ');
    if IsMJBH=true then
    SQL.Add('and  SCBLS.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('order by SCBLS.BWBH,SCBLS.CLBH');
  end;
  BLDet.Active:=true;
  BLMas.Active:=true;
end;

procedure TReplenishDel_Print.BLDetCalcFields(DataSet: TDataSet);
begin

with  BLDet do
  begin
    if fieldbyname('CLSL').Value <>0 then
      begin
        fieldbyname('OldPer').Value:=fieldbyname('QtyOld').Value/fieldbyname('CLSL').Value*100;
        fieldbyname('NowPer').Value:=fieldbyname('Qty').Value/fieldbyname('CLSL').Value*100;
      end;
  end;
end;

procedure TReplenishDel_Print.QRCompositeReport1Finished(Sender: TObject);
begin
 if main.Edit2.Text='VDT' then
  begin
    ReplenishDel_Print.QRLabel43.Caption:='DT-SQ-QP018-02A(ERP)';
  end else
  begin
     ReplenishDel_Print.QRLabel43.Caption:='T-KH-WS001-01A ERP';
  end;
end;

end.
