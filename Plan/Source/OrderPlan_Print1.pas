unit OrderPlan_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, QRPDFFilt, IniFiles;

type
  TOrderPlan_Print = class(TForm)
    Label1: TLabel;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRShape6: TQRShape;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape7: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText2: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape5: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape3: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel44: TQRLabel;
    QRSysData2: TQRSysData;
    QPage1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    L6: TQRLabel;
    L7: TQRLabel;
    L8: TQRLabel;
    L9: TQRLabel;
    L10: TQRLabel;
    L11: TQRLabel;
    QRShape11: TQRShape;
    Q6: TQRDBText;
    Q7: TQRDBText;
    Q8: TQRDBText;
    Q9: TQRDBText;
    Q10: TQRDBText;
    Q11: TQRDBText;
    L16: TQRLabel;
    L15: TQRLabel;
    L14: TQRLabel;
    L13: TQRLabel;
    L12: TQRLabel;
    Q16: TQRDBText;
    Q15: TQRDBText;
    Q14: TQRDBText;
    Q13: TQRDBText;
    Q12: TQRDBText;
    L27: TQRLabel;
    L26: TQRLabel;
    L25: TQRLabel;
    L24: TQRLabel;
    L23: TQRLabel;
    L22: TQRLabel;
    L21: TQRLabel;
    L20: TQRLabel;
    L19: TQRLabel;
    L18: TQRLabel;
    L17: TQRLabel;
    Q17: TQRDBText;
    Q18: TQRDBText;
    Q19: TQRDBText;
    Q20: TQRDBText;
    Q21: TQRDBText;
    Q22: TQRDBText;
    Q23: TQRDBText;
    Q24: TQRDBText;
    Q25: TQRDBText;
    Q26: TQRDBText;
    Q27: TQRDBText;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
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
    QRLabel41: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRSysData1: TQRSysData;
    tempsql: TQuery;
    material: TQuery;
    materialCLBH: TStringField;
    materialBHYWPM: TStringField;
    materialYWPM: TStringField;
    materialCLSL: TFloatField;
    UpdateSQL1: TUpdateSQL;
    SMDDS: TQuery;
    QRLabel45: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure materialAfterOpen(DataSet: TDataSet);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    PlanN38_ISO_Cut:String;
    procedure ReadIni();

    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderPlan_Print: TOrderPlan_Print;

implementation

uses main1, OrderPlan1;

{$R *.dfm}

procedure TOrderPlan_Print.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  PlanN38_ISO_Cut:='ISO NO : T-KH-QP023-07A (ERP)';  //Ty Thac =>'ISO NO : DT-SQ-020A (ERP)'
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      PlanN38_ISO_Cut:=MyIni.ReadString('ERP','PlanN38_ISO_Cut','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TOrderPlan_Print.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TOrderPlan_Print.FormDestroy(Sender: TObject);
begin
OrderPlan_Print:=nil;
end;

procedure TOrderPlan_Print.FormCreate(Sender: TObject);
//var i:integer;
begin

  with tempsql do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct ZLZLS.ZLCC,SMDDS.XXCC from SMDDS  ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDS.DDBH ');
    sql.add('left join ZLZLS on ZLZLS.ZLBH=SMDD.YSBH and ZLZLS.XXCC=SMDDS.XXCC');
    sql.add('where  SMDDS.DDBH='+''''+OrderPlan.SMDD.fieldbyname('DDBH').asstring+'''');
    sql.add('order by  SMDDS.XXCC DESC');
    active:=true;
  end;
  //showmessage('AAA');
  with SMDDS do
  begin
    tempsql.first;
    active:=false;
    sql.Clear;
    sql.add('select SMDD.DDBH,SMDD.Article+'+''''+'/  '+''''+'+XXZL.YSSM as YSSM,XXZL.DAOMH,DDZL.Pairs ,SMDD.Qty as Qty');
    while not tempsql.Eof do
      begin
        sql.add(',Max(case  when SMDDS.XXCC='+''''+tempsql.fieldbyname('XXCC').value+'''');
        sql.add(' then SMDDS.Qty else null end) as '+''''+tempsql.fieldbyname('XXCC').value+'|'+tempsql.fieldbyname('ZLCC').value+'''');
        tempsql.Next;
      end;
    sql.add('from SMDDS ');
    sql.add('left join SMDD on SMDD.DDBH=SMDDS.DDBH ');
    sql.add('left join DDZL on SMDD.YSBH=DDZL.ZLBH ');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and XXZl.SheHao=DDZL.SheHao ');
    sql.add('where  SMDDS.DDBH='+''''+OrderPlan.SMDD.fieldbyname('DDBH').asstring+'''');
    sql.add('       and SMDD.GXLB='+''''+ OrderPlan.SMDD.fieldbyname('GXLB').asstring+'''');
    sql.add('group by  SMDD.DDBH,SMDD.Article,XXZL.YSSM,XXZL.DAOMH,DDZL.Pairs,SMDD.Qty ');
    active:=true;
  end;


  //showmessage('BBB');
  with Material do
  begin
    active:=false;
    sql.Clear;
    sql.Add('declare @p decimal(18,4),@OrdQty decimal(18,4),@Qty  decimal(18,4) ');
    sql.add('set @p=(select Delperson from BasData where GSBH='+''''+main.edit2.text+''''+') ');
    sql.add('set @OrdQty='+''''+SMDDS.fieldbyname('Pairs').asstring+'''');
    sql.add('set @Qty='+''''+OrderPlan.SMDD.fieldbyname('Qty').asstring+'''');
    sql.add('select ZLZLS2.CLBH,CLZL.CLDH+'+''''+'  '+''''+'+CLZL.YWPM as BHYWPM,');
    sql.add('       CLZL.YWPM,round(sum( ZLZLS2.CLSL)*@p/100*@Qty/@OrdQty,1)  as CLSL ');
    sql.add('from ZLZLS2');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join DDZL on DDZL.DDBH=ZLZL.DDBH');
    sql.add('left join XXBWFL on XXBWFL.XieXing=DDZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH');
    sql.add('left join XXBWFLS on XXBWFLS.FLBH=XXBWFL.FLBH');
    sql.add('left join CLZL on CLZL.CLDH=ZLZLS2.CLBH');
    sql.add('where ZLZLS2.ZLBH='+''''+OrderPlan.SMDD.fieldbyname('YSBH').asstring+'''');
    sql.add('      and XXBWFLS.DFL='+''''+'C'+'''');
    sql.add('      and ZLZLS2.MJBH='+''''+'zzzzzzzzzz'+'''');
    sql.add('      and ZLZLS2.CLBH not like '+''''+'W%'+'''');
    sql.add('group by ZLZLS2.CLBH,CLZL.CLDH,CLZL.YWPM');
    sql.add('order by ZLZLS2.CLBH');
    active:=true;
  end;

  
  //showmessage('CCC');
  with SMDDS do
  begin
    if  Fieldcount>5 then
      begin
        L6.caption:=Fields[5].fieldname;
        Q6.datafield:=Fields[5].fieldname;
      end;
    if  Fieldcount>6 then
      begin
        L7.caption:=Fields[6].fieldname;
        Q7.datafield:=Fields[6].fieldname;
      end;  
    if  Fieldcount>7 then
      begin
        L8.caption:=Fields[7].fieldname;
        Q8.datafield:=Fields[7].fieldname;
      end;
    if  Fieldcount>8 then
      begin
        L9.caption:=Fields[8].fieldname;
        Q9.datafield:=Fields[8].fieldname;
      end;
    if  Fieldcount>9 then
      begin
        L10.caption:=Fields[9].fieldname;
        Q10.datafield:=Fields[9].fieldname;
      end;
    if  Fieldcount>10 then
      begin
        L11.caption:=Fields[10].fieldname;
        Q11.datafield:=Fields[10].fieldname;
      end;
    if  Fieldcount>11 then
      begin
        L12.caption:=Fields[11].fieldname;
        Q12.datafield:=Fields[11].fieldname;
      end;
    if  Fieldcount>12 then
      begin
        L13.caption:=Fields[12].fieldname;
        Q13.datafield:=Fields[12].fieldname;
      end; 
    if  Fieldcount>13 then
      begin
        L14.caption:=Fields[13].fieldname;
        Q14.datafield:=Fields[13].fieldname;
      end;
    if  Fieldcount>14 then
      begin
        L15.caption:=Fields[14].fieldname;
        Q15.datafield:=Fields[14].fieldname;
      end;
    if  Fieldcount>15 then
      begin
        L16.caption:=Fields[15].fieldname;
        Q16.datafield:=Fields[15].fieldname;
      end;
    if  Fieldcount>16 then
      begin
        L17.caption:=Fields[16].fieldname;
        Q17.datafield:=Fields[16].fieldname;
      end;  
    if  Fieldcount>17 then
      begin
        L18.caption:=Fields[17].fieldname;
        Q18.datafield:=Fields[17].fieldname;
      end;  
    if  Fieldcount>18 then
      begin
        L19.caption:=Fields[18].fieldname;
        Q19.datafield:=Fields[18].fieldname;
      end;  
    if  Fieldcount>19 then
      begin
        L20.caption:=Fields[19].fieldname;
        Q20.datafield:=Fields[19].fieldname;
      end;
    if  Fieldcount>20 then
      begin
        L21.caption:=Fields[20].fieldname;
        Q21.datafield:=Fields[20].fieldname;
      end;  
    if  Fieldcount>21 then
      begin
        L22.caption:=Fields[21].fieldname;
        Q22.datafield:=Fields[21].fieldname;
      end; 
    if  Fieldcount>22 then
      begin
        L23.caption:=Fields[22].fieldname;
        Q23.datafield:=Fields[22].fieldname;
      end; 
    if  Fieldcount>23 then
      begin
        L24.caption:=Fields[23].fieldname;
        Q24.datafield:=Fields[23].fieldname;
      end;
    if  Fieldcount>24 then
      begin
        L25.caption:=Fields[24].fieldname;
        Q25.datafield:=Fields[24].fieldname;
      end; 
    if  Fieldcount>25 then
      begin
        L26.caption:=Fields[25].fieldname;
        Q26.datafield:=Fields[25].fieldname;
      end;
   { if  Fieldcount>27 then
      begin
        L27.caption:=Fields[27].fieldname;
        Q27.datafield:=Fields[27].fieldname;
      end;  }
  end;
  ReadIni();
end;

procedure TOrderPlan_Print.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
 Quickrep1.NewPage;
end;

procedure TOrderPlan_Print.materialAfterOpen(DataSet: TDataSet);
begin
  with TempSQL do
    begin
      while not Material.Eof do
        begin
          TempSQL.Active:=false;
          TempSQL.sql.clear ;
          TempSQL.sql.add('select distinct ZLZLS2.BWBH,BWZL.YWSM from ZLZLS2 ');
          TempSQL.sql.add('left join BWZL on ZLZLS2.BWBH=BWZL.BWDH');
          TempSQL.SQL.add('left join DDZL on DDZL.ZLBH=ZLZLS2.ZLBH');
          Tempsql.sql.Add('left join XXBWFL on  XXBWFL.XieXing=DDZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH');
          TempSQL.SQL.add('left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH');
          TempSQL.sql.add('where ZLZLS2.ZLBH='+''''+OrderPlan.SMDD.fieldbyname('YSBH').asstring+'''');
          TempSQL.sql.add('and ZLZLS2.MJBH='+''''+'zzzzzzzzzz'+'''');
          TempSQL.SQL.add('and ZLZLS2.CLBH='+''''+material.fieldbyname('CLBH').Value+'''');
          TempSQL.SQL.add('and XXBWFLS.DFL='+''''+'C'+'''');
          TempSQL.sql.add('order by ZLZLS2.BWBH');
          TempSQL.active:=true;
          Material.Edit;
          material.FieldByName('YWPM').Value :='';
          while not eof do                                                          
            begin
              Material.Edit;
              material.FieldByName('YWPM').Value:=material.FieldByName('YWPM').Value+TempSQL.fieldbyname('BWBH').Value  +':'+
                                                  +TempSQL.fieldbyname('YWSM').Value+'; ' ;
              next;
            end;
          Material.next;
        end;
    end;

end;

procedure TOrderPlan_Print.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    OrderPlan_Print.QRLabel45.Caption:=PlanN38_ISO_Cut;
end;

end.
