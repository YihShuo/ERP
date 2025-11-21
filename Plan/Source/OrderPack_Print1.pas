unit OrderPack_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls, QRExport, QRXMLSFilt,
  QRPDFFilt, StdCtrls, IniFiles,funUnit, grimgctrl;

type
  TOrderPack_Print = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    L1: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRCompositeReport1: TQRCompositeReport;
    PackingMemo: TQuery;
    PACKINGDET: TQuery;
    QuickRep2: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText14: TQRDBText;
    QRSysData1: TQRSysData;
    PAGEN2: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText18: TQRDBText;
    IMGName2: TQRImage;
    QuickRep3: TQuickRep;
    QRBand2: TQRBand;
    CC: TQuery;
    IMGName1: TQRImage;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel5: TQRLabel;
    PAGEN1: TQRLabel;
    QRSysData5: TQRSysData;
    QRLabel13: TQRLabel;
    QRSysData3: TQRSysData;
    PAGEN3: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel31: TQRLabel;
    QRDBText19: TQRDBText;
    QRBand3: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QPC1: TQRImage;
    QPC2: TQRImage;
    QPC3: TQRImage;
    QuickRep4: TQuickRep;
    QRBand4: TQRBand;
    QRLabel35: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText28: TQRDBText;
    QRSysData4: TQRSysData;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    YWDDSDZ: TQuery;
    ColumnHeaderBand3: TQRBand;
    LackQty: TQRLabel;
    DetailBand3: TQRBand;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    YWDDSDZT: TQuery;
    QRShape1: TQRShape;
    QRBand6: TQRBand;
    QRLabel46: TQRLabel;
    QRBand7: TQRBand;
    QRLabel47: TQRLabel;
    QRBand8: TQRBand;
    QRLabel48: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText33: TQRDBText;
    QRSubDetail: TQRSubDetail;
    QRMaster: TQRBand;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel9: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText34: TQRDBText;
    DS1: TDataSource;
    YWDDMT: TQuery;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText36: TQRDBText;
    PackingMemoMENO: TStringField;
    PackingMemoZWSM: TStringField;
    PackingMemoVNSM: TStringField;
    QRLabel29: TQRLabel;
    QRDBText16: TQRDBText;
    QRMaster2: TQRBand;
    QRDBText35: TQRDBText;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRDBText38: TQRDBText;
    QRShape7: TQRShape;
    QRShape6: TQRShape;
    QRShape35: TQRShape;
    QRShape34: TQRShape;
    QRShape33: TQRShape;
    QRShape32: TQRShape;
    QRShape31: TQRShape;
    QRShape30: TQRShape;
    QRShape3: TQRShape;
    QRShape29: TQRShape;
    QRShape28: TQRShape;
    QRShape27: TQRShape;
    QRShape26: TQRShape;
    QRShape25: TQRShape;
    QRShape24: TQRShape;
    QRShape23: TQRShape;
    QRShape22: TQRShape;
    QRShape21: TQRShape;
    QRShape20: TQRShape;
    QRShape2: TQRShape;
    QRShape19: TQRShape;
    QRShape18: TQRShape;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRShape13: TQRShape;
    QRShape12: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel21: TQRLabel;
    Q9: TQRLabel;
    Q8: TQRLabel;
    Q7: TQRLabel;
    Q6: TQRLabel;
    Q5: TQRLabel;
    Q4: TQRLabel;
    Q3: TQRLabel;
    Q23: TQRLabel;
    Q22: TQRLabel;
    Q21: TQRLabel;
    Q20: TQRLabel;
    Q2: TQRLabel;
    Q19: TQRLabel;
    Q18: TQRLabel;
    Q17: TQRLabel;
    Q16: TQRLabel;
    Q15: TQRLabel;
    Q14: TQRLabel;
    Q13: TQRLabel;
    Q12: TQRLabel;
    Q11: TQRLabel;
    Q10: TQRLabel;
    Q1: TQRLabel;
    QRSubDetail2: TQRSubDetail;
    QRShape58: TQRShape;
    QRShape56: TQRShape;
    QRShape55: TQRShape;
    QRShape54: TQRShape;
    QRShape53: TQRShape;
    QRShape52: TQRShape;
    QRShape51: TQRShape;
    QRShape50: TQRShape;
    QRShape5: TQRShape;
    QRShape49: TQRShape;
    QRShape48: TQRShape;
    QRShape47: TQRShape;
    QRShape46: TQRShape;
    QRShape45: TQRShape;
    QRShape44: TQRShape;
    QRShape43: TQRShape;
    QRShape42: TQRShape;
    QRShape41: TQRShape;
    QRShape40: TQRShape;
    QRShape4: TQRShape;
    QRShape39: TQRShape;
    QRShape38: TQRShape;
    QRShape37: TQRShape;
    QRShape36: TQRShape;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    QRShape10: TQRShape;
    QRDBText9: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText22: TQRDBText;
    D9: TQRDBText;
    D8: TQRDBText;
    D7: TQRDBText;
    D6: TQRDBText;
    D5: TQRDBText;
    D4: TQRDBText;
    D3: TQRDBText;
    D23: TQRDBText;
    D22: TQRDBText;
    D21: TQRDBText;
    D20: TQRDBText;
    D2: TQRDBText;
    D19: TQRDBText;
    D18: TQRDBText;
    D17: TQRDBText;
    D16: TQRDBText;
    D15: TQRDBText;
    D14: TQRDBText;
    D13: TQRDBText;
    D12: TQRDBText;
    D11: TQRDBText;
    D10: TQRDBText;
    D1: TQRDBText;
    QRMaster3: TQRBand;
    QRDBText40: TQRDBText;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRDBText41: TQRDBText;
    QRSubDetail3: TQRSubDetail;
    QRLabel26: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel50: TQRLabel;
    QRDBText43: TQRDBText;
    QRLabel52: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel53: TQRLabel;
    QRDBText39: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText42: TQRDBText;
    PackingMemoNO: TFloatField;
    PackingMemoDDBH: TStringField;
    PackingMemoXH: TStringField;
    PackingMemoLX: TStringField;
    PackingMemoUSERID: TStringField;
    PackingMemoUSERDate: TDateTimeField;
    PackingMemoYN: TStringField;
    QRDBText44: TQRDBText;
    QRHRule1: TQRHRule;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    Q24: TQRLabel;
    D24: TQRDBText;
    Q25: TQRLabel;
    D25: TQRDBText;
    QRShape11: TQRShape;
    QRShape57: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ComName:String;
    SaleN12_ISO:String;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderPack_Print: TOrderPack_Print;

implementation

uses OrderList1, main1;

{$R *.dfm}

procedure TOrderPack_Print.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  SaleN12_ISO:='ISO NO : T-DCC-005A (ERP)';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      SaleN12_ISO:=MyIni.ReadString('ERP','SaleN12_ISO','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TOrderPack_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
//action:=cafree;
end;

procedure TOrderPack_Print.QRCompositeReport1AddReports(Sender: TObject);
begin 
if YWDDSDZT.recordcount>0 then
  begin
    QRCompositeReport1.reports.Add(QuickRep1);
    QRCompositeReport1.reports.Add(QuickRep2);
    QRCompositeReport1.reports.Add(QuickRep4);
    QRCompositeReport1.reports.Add(QuickRep3);
    LackQty.caption:='Order Qty is '+ OrderList.SpecMas.fieldbyname('Qty').asstring+' pairs, Shortage Qty is '
                     +YWDDSDZT.fieldbyname('Qty').AsString+' pairs,Total is '+ inttostr(OrderList.SpecMas.fieldbyname('Qty').value
                     -YWDDSDZT.fieldbyname('Qty').value)+' pairs.';
  end
  else
    begin
      QRCompositeReport1.reports.Add(QuickRep1);
      QRCompositeReport1.reports.Add(QuickRep2);
      QRCompositeReport1.reports.Add(QuickRep3);
    end;
end;

procedure TOrderPack_Print.FormDestroy(Sender: TObject);
begin
orderpack_print:=nil;
end;

procedure TOrderPack_Print.FormCreate(Sender: TObject);
  var textvar:textfile;
  sline:string;
begin
   ReadIni();
   L1.Caption:=ComName;
   QRLabel12.Caption:=ComName;
   QRLabel27.Caption:=ComName;
   QRLabel40.Caption:=ComName;
   QRLabel46.Caption:=SaleN12_ISO;
   QRLabel47.Caption:=SaleN12_ISO;
   QRLabel48.Caption:=SaleN12_ISO;

  if  OrderList.OrdMas.FieldByName('ZLBH').Value <> OrderList.SpecMas.FieldByName('DDBH').Value then
  begin
      QRLabel29.Visible:=false;
      QRDBText16.DataField :='''';
  end;
  with YWDDSDZT do
  begin
    active:=false;
    sql.clear;
    sql.add('select YWCP.DDBH,sum(YWDDSDZ.Qty) as Qty  ');
    sql.add('from YWDDSDZ');
    sql.Add('left join YWCP on YWDDSDZ.CARTONBAR=YWCP.CARTONBAR ');
    sql.add('where YWCP.DDBH in (select DDBH from YWDD where YSBH='+''''+OrderList.SpecMas.fieldbyname('YSBH').AsString+''')');
    sql.Add('group by YWCP.DDBH ' );
    active:=true;
  end;

  with YWDDSDZ do
  begin
    active:=false;
    sql.clear;
    sql.add('select YWDDSDZ.*  ');
    sql.add('from YWDDSDZ');
    sql.Add('left join YWCP on YWDDSDZ.CARTONBAR=YWCP.CARTONBAR ');
    sql.add('where YWCP.DDBH in (select DDBH from YWDD where YSBH='+''''+OrderList.SpecMas.fieldbyname('YSBH').AsString+''')');
    sql.Add('order by YWDDSDZ.CARTONBAR,YWDDSDZ.DDCC' );
    active:=true;
  end;

  with YWDDMT do
  begin
    active:=false;
    sql.clear;
    sql.add('select *  ');
    sql.add('from YWDDMT');
    sql.add('where DDBH=:DDBH ');
    sql.Add('order by DDBH' );
    active:=true;
  end;

  with CC do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select distinct DDCC ');
    sql.add('from YWBZPOS');
    sql.add('where DDBH in (select DDBH from YWDD where YSBH='+''''+OrderList.SpecMas.fieldbyname('YSBH').AsString+''')');
    sql.add('and Qty<>0');
    sql.add('order by DDCC');
    CC.Active:=true;
  end;

  with PACKINGDET do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ROW_NUMBER() OVER (ORDER BY XH) AS NO,DDBH,MEMO+'+''''+'('+''''+'+convert(varchar,CTQ)+'+''''+'-'+''''+'+convert(varchar,CTZ)+'+''''+')'+'''');
    sql.add('       as MEMO,XH,CTS,(case when XH='+''''+'TT'+''''+' then null else sum(Qty) end ) as Sum,');
    sql.add('(case when XH='+''''+'TT'+''''+' then sum(Qty) else sum(Qty*CTS) end ) as Total');
    while not CC.Eof do
      begin
        sql.add(',max(case when DDCC='+''''+CC.fieldbyname('DDCC').asstring+'''');
        sql.add(' then Qty end ) as '+''''+CC.fieldbyname('DDCC').asstring+'''');
        CC.Next;
      end;
    sql.add('from (select DDBH,MEMO,XH,DDCC,Qty,CTS,CTQ,CTZ from YWBZPOS ');
    sql.add('      where DDBH=:DDBH');
    sql.add('      union ');
    sql.add('      select YWDDS.DDBH,'+''''+'Order'+''''+' as MEMO, '+''''+'TT'+''''+' as XH,');
    sql.add('             YWDDS.DDCC,YWDDS.Qty,CTS, null as CTQ,null as CTZ');
    sql.add('      from YWDDS ');
    sql.add('      left join (select DDBH,sum( CTS) as CTS ');
    sql.add('                 from( select  distinct DDBH,XH,CTS from YWBZPOS) DDPACKS ');
    sql.add('                 group by DDBH )DDPACKS on DDPACKS.DDBH=YWDDS.DDBH ');
    sql.add('      where YWDDS.Qty<>0 and  YWDDS.DDBH=:DDBH');
    sql.add('      ) DDPACKS');
    sql.add('group by  DDBH,MEMO,XH,CTS,CTQ,CTZ');
    sql.add('order by  DDBH ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with PACKINGDET do
  begin
    if  Fieldcount>7 then
      begin
        Q1.Caption:=Fields[7].fieldname;
        D1.datafield:=Fields[7].fieldname;
      end;
    if  Fieldcount>8 then
      begin
        Q2.Caption:=Fields[8].fieldname;
        D2.datafield:=Fields[8].fieldname;
      end;
    if  Fieldcount>9 then
      begin
        Q3.Caption:=Fields[9].fieldname;
        D3.datafield:=Fields[9].fieldname;
      end;
    if  Fieldcount>10 then
      begin
        Q4.Caption:=Fields[10].fieldname;
        D4.datafield:=Fields[10].fieldname;
      end;
    if  Fieldcount>11 then
      begin
        Q5.Caption:=Fields[11].fieldname;
        D5.datafield:=Fields[11].fieldname;
      end;
    if  Fieldcount>12 then
      begin
        Q6.Caption:=Fields[12].fieldname;
        D6.datafield:=Fields[12].fieldname;
      end;
    if  Fieldcount>13 then
      begin
        Q7.Caption:=Fields[13].fieldname;
        D7.datafield:=Fields[13].fieldname;
      end;
    if  Fieldcount>14 then
      begin
        Q8.Caption:=Fields[14].fieldname;
        D8.datafield:=Fields[14].fieldname;
      end;
    if  Fieldcount>15 then
      begin
        Q9.Caption:=Fields[15].fieldname;
        D9.datafield:=Fields[15].fieldname;
      end;
    if  Fieldcount>16 then
      begin
        Q10.Caption:=Fields[16].fieldname;
        D10.datafield:=Fields[16].fieldname;
      end;
    if  Fieldcount>17 then
      begin
        Q11.Caption:=Fields[17].fieldname;
        D11.datafield:=Fields[17].fieldname;
      end;
    if  Fieldcount>18 then
      begin
        Q12.Caption:=Fields[18].fieldname;
        D12.datafield:=Fields[18].fieldname;
      end;
    if  Fieldcount>19 then
      begin
        Q13.Caption:=Fields[19].fieldname;
        D13.datafield:=Fields[19].fieldname;
      end;
    if  Fieldcount>20 then
      begin
        Q14.Caption:=Fields[20].fieldname;
        D14.datafield:=Fields[20].fieldname;
      end;
    if  Fieldcount>21 then
      begin
        Q15.Caption:=Fields[21].fieldname;
        D15.datafield:=Fields[21].fieldname;
      end;
    if  Fieldcount>22 then
      begin
        Q16.Caption:=Fields[22].fieldname;
        D16.datafield:=Fields[22].fieldname;
      end;
    if  Fieldcount>23 then
      begin
        Q17.Caption:=Fields[23].fieldname;
        D17.datafield:=Fields[23].fieldname;
      end;
    if  Fieldcount>24 then
      begin
        Q18.Caption:=Fields[24].fieldname;
        D18.datafield:=Fields[24].fieldname;
      end;
    if  Fieldcount>25 then
      begin
        Q19.Caption:=Fields[25].fieldname;
        D19.datafield:=Fields[25].fieldname;
      end;
    if  Fieldcount>26 then
      begin
        Q20.Caption:=Fields[26].fieldname;
        D20.datafield:=Fields[26].fieldname;
      end;
    if  Fieldcount>27 then
      begin
        Q21.Caption:=Fields[27].fieldname;
        D21.datafield:=Fields[27].fieldname;
      end;
    if  Fieldcount>28 then
      begin
        Q22.Caption:=Fields[28].fieldname;
        D22.datafield:=Fields[28].fieldname;
      end;
    if  Fieldcount>29 then
      begin
        Q23.Caption:=Fields[29].fieldname;
        D23.datafield:=Fields[29].fieldname;
      end;
    if  Fieldcount>30 then
      begin
        Q24.Caption:=Fields[30].fieldname;
        D24.datafield:=Fields[30].fieldname;
      end;
    if  Fieldcount>31 then
      begin
        Q25.Caption:=Fields[31].fieldname;
        D25.datafield:=Fields[31].fieldname;
      end;
  end;

  with PackingMemo do
  begin
    active:=false;
    sql.clear;
    sql.add('select ROW_NUMBER() OVER (ORDER BY XH) AS NO,YWDDBZ.* ');
    sql.add('from YWDDBZ ');
    sql.add('where DDBH=:DDBH ');
    sql.add('order by DDBH ');
    active:=true;
  end;
end;

end.
