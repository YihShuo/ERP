unit ReplenishDel_PrintMergNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt, DB, DBTables;

type
  TReplenishDel_PrintMergNo = class(TForm)
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRShape12: TQRShape;
    QRDBText21: TQRDBText;
    ColumnHeaderBand2: TQRBand;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape11: TQRShape;
    QRLabel22: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape13: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    BLDet: TQuery;
    BLDetBWYW: TStringField;
    BLDetMatName: TStringField;
    BLDetCLSL: TFloatField;
    BLDetQty: TCurrencyField;
    BLDetQtyOld: TCurrencyField;
    BLDetNowPer: TFloatField;
    BLDetOldPer: TFloatField;
    QRCompositeReport1: TQRCompositeReport;
    BLMas: TQuery;
    QRPDFFilter1: TQRPDFFilter;
    BLDetSIZE: TStringField;
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText24: TQRDBText;
    DetailBand1: TQRBand;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel48: TQRLabel;
    BLMasGSBH: TStringField;
    BLMasBLDate: TDateTimeField;
    BLMasMergNO: TStringField;
    BLMasKFJC: TStringField;
    BLReason: TQuery;
    BLReasonZLBH: TStringField;
    BLReasonARTICLE: TStringField;
    BLReasonPairs: TIntegerField;
    BLReasonQty: TCurrencyField;
    BLReasonYWSM: TStringField;
    BLReasonZWSM: TStringField;
    QRShape15: TQRShape;
    QRLabel4: TQRLabel;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRDBText4: TQRDBText;
    QRLabel8: TQRLabel;
    BLMasDepName: TStringField;
    BLMasGXLB: TStringField;
    QRDBText5: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText10: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BLDetCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure QRCompositeReport1Finished(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishDel_PrintMergNo: TReplenishDel_PrintMergNo;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TReplenishDel_PrintMergNo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TReplenishDel_PrintMergNo.FormDestroy(Sender: TObject);
begin
  ReplenishDel_PrintMergNo:=nil;
end;

procedure TReplenishDel_PrintMergNo.BLDetCalcFields(DataSet: TDataSet);
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

procedure TReplenishDel_PrintMergNo.FormCreate(Sender: TObject);
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
    //
    SQL.Add('select SCBLS.BWBH+'' ''+BWZL.YWSM as BWYW,SCBLS.CLBH+'' ''+CLZL.YWPM+'' ''+CLZL.DWBH as MatName,REPLACE(SCBLS.SIZE,''ZZZZZZ'','''') as SIZE');
    SQL.Add('       ,IsNull(OrdCL.CLSL,OrdCLAll.CLSL) as CLSL,SCBLS.Qty ,BLOld.QtyOld ');
    SQL.Add('from ( ');
    SQL.Add(' Select BWBH,CLBH,SIZE,Sum(Qty) as Qty from (');
    SQL.Add('	Select SCBLS.BLNO,SCBLS.BWBH,SCBLS.CLBH,IsNull(SCBLSS.SIZE,''ZZZZZZ'') as SIZE,IsNull(SCBLSS.Qty,SCBLS.Qty) as Qty ');
    SQL.Add('	from SCBLS ');
    SQL.Add('	left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS.BWBH=SCBLS.BWBH and SCBLSS.CLBH=SCBLS.CLBH ');
    SQL.Add('	where SCBLS.Qty>0 and SCBLS.BLNO in (Select distinct BLNO from SCBL where MergNO=:MergNo) ');
    if IsMJBH=true then
    SQL.Add('       and  SCBLS.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('   ) SCBLS Group by BWBH,CLBH,SIZE');
    SQL.Add(') SCBLS');
    SQL.Add('left join (select ZLZLS2.BWBH,ZLZLS2.CLBH,SIZE,sum(ZLZLS2.CLSL) as CLSL');
    SQL.Add('        from ZLZLS2');
    SQL.Add('        where ZLZLS2.ZLBH in (Select distinct ZLBH from SCBL where MergNO=:MergNo) ');
    if IsMJBH=true then
    SQL.Add('              and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('        group by ZLZLS2.BWBH,ZLZLS2.CLBH,SIZE) OrdCL  on SCBLS.BWBH=OrdCL.BWBH  and SCBLS.CLBH=OrdCL.CLBH and SCBLS.SIZE=OrdCL.SIZE');
    SQL.Add('left join (select ZLZLS2.BWBH,ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as CLSL');
    SQL.Add('        from ZLZLS2');
    SQL.Add('        where ZLZLS2.ZLBH in (Select distinct ZLBH from SCBL where MergNO=:MergNo) ');
    if IsMJBH=true then
    SQL.Add('              and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('        group by ZLZLS2.BWBH,ZLZLS2.CLBH) OrdCLAll  on SCBLS.BWBH=OrdCLAll.BWBH  and SCBLS.CLBH=OrdCLAll.CLBH ');
    SQL.Add('left join BWZL on BWZL.BWDH=SCBLS.BWBH');
    SQL.Add('left join CLZL on CLZL.CLDH=SCBLS.CLBH');
    SQL.Add('left join (  ');
    SQL.Add(' Select BWBH,CLBH,SIZE,Sum(Qty) as QtyOld from (');
    SQL.Add('	Select SCBLS.BLNO,SCBLS.BWBH,SCBLS.CLBH,IsNull(SCBLSS.SIZE,''ZZZZZZ'') as SIZE,IsNull(SCBLSS.Qty,SCBLS.Qty) as Qty ');
    SQL.Add('	from SCBLS ');
    SQL.Add('	left join SCBL on SCBL.BLNO=SCBLS.BLNO');
    SQL.Add('	left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS.BWBH=SCBLS.BWBH and SCBLSS.CLBH=SCBLS.CLBH ');
    SQL.Add('	where SCBLS.Qty>0 and SCBL.ZLBH in (Select distinct ZLBH from SCBL where MergNO=:MergNo)  ');
    if IsMJBH=true then
    SQL.Add('       and  SCBLS.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('  ) SCBLS Group by BWBH,CLBH,SIZE		 ');
    SQL.Add(') BLOld on BLOld.BWBH=SCBLS.BWBH  and BLOld.CLBH=SCBLS.CLBH and BLOld.SIZE=SCBLS.SIZE');
    SQL.Add('order by SCBLS.BWBH,SCBLS.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
  end;
  BLDet.Active:=true;
  BLMas.Active:=true;
  BLReason.Active:=true;
end;

procedure TReplenishDel_PrintMergNo.QRCompositeReport1AddReports(
  Sender: TObject);
begin
  with QRCompositeReport1 do
  begin
    reports.Add(QuickRep1);
    reports.Add(QuickRep2);
  end;
end;

procedure TReplenishDel_PrintMergNo.QRCompositeReport1Finished(
  Sender: TObject);
begin
  ReplenishDel_PrintMergNo.QRLabel43.Caption:='T-KH-WS001-01A ERP';
end;

end.
