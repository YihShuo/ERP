unit OrderPack_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls, QRExport, QRXMLSFilt,
  QRPDFFilt, StdCtrls,IniFiles;

type
  TOrderPack_Print = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    L1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRCompositeReport1: TQRCompositeReport;
    YWDDMT: TQuery;
    YWDDMTDDBH: TStringField;
    YWDDMTXH: TStringField;
    YWDDMTMTBH1: TStringField;
    YWDDMTMTLR1: TStringField;
    YWDDMTMTBH2: TStringField;
    YWDDMTMTLR2: TStringField;
    YWDDMTMTBH3: TStringField;
    YWDDMTMTLR3: TStringField;
    YWDDMTMTBH4: TStringField;
    YWDDMTMTLR4: TStringField;
    YWDDMTUSERDATE: TDateTimeField;
    YWDDMTUSERID: TStringField;
    YWDDMTYN: TStringField;
    PackingMemo: TQuery;
    DS2: TDataSource;
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
    DetailBand2: TQRBand;
    QRDBText9: TQRDBText;
    QRShape4: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    D2: TQRDBText;
    D3: TQRDBText;
    D4: TQRDBText;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    D5: TQRDBText;
    D6: TQRDBText;
    D7: TQRDBText;
    D8: TQRDBText;
    D9: TQRDBText;
    D10: TQRDBText;
    D11: TQRDBText;
    D12: TQRDBText;
    D13: TQRDBText;
    D14: TQRDBText;
    D15: TQRDBText;
    D16: TQRDBText;
    D17: TQRDBText;
    D18: TQRDBText;
    D19: TQRDBText;
    D20: TQRDBText;
    D21: TQRDBText;
    D22: TQRDBText;
    QRShape10: TQRShape;
    QRDBText21: TQRDBText;
    QRShape17: TQRShape;
    QRDBText22: TQRDBText;
    QRShape58: TQRShape;
    QRShape16: TQRShape;
    QRDBText23: TQRDBText;
    QuickRep3: TQuickRep;
    QRBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRBand2: TQRBand;
    TitleBand1: TQRBand;
    QRLabel26: TQRLabel;
    CC: TQuery;
    QRSysData2: TQRSysData;
    QRDBText20: TQRDBText;
    PackingMemoDDBH: TStringField;
    PackingMemoXH: TStringField;
    PackingMemoMENO: TStringField;
    PackingMemoZWSM: TStringField;
    PackingMemoVNSM: TStringField;
    PackingMemoUSERID: TStringField;
    PackingMemoUSERDate: TDateTimeField;
    PackingMemoYN: TStringField;
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
    QRSysData6: TQRSysData;
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
    TitleBand2: TQRBand;
    QRLabel7: TQRLabel;
    QRShape15: TQRShape;
    QRLabel23: TQRLabel;
    QRShape2: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape3: TQRShape;
    QRShape14: TQRShape;
    QRLabel22: TQRLabel;
    QRShape12: TQRShape;
    QRShape6: TQRShape;
    Q2: TQRLabel;
    Q3: TQRLabel;
    QRShape7: TQRShape;
    Q4: TQRLabel;
    QRShape18: TQRShape;
    Q5: TQRLabel;
    QRShape19: TQRShape;
    Q6: TQRLabel;
    QRShape20: TQRShape;
    Q7: TQRLabel;
    QRShape21: TQRShape;
    Q8: TQRLabel;
    QRShape22: TQRShape;
    Q9: TQRLabel;
    QRShape23: TQRShape;
    Q10: TQRLabel;
    QRShape24: TQRShape;
    Q11: TQRLabel;
    QRShape25: TQRShape;
    Q12: TQRLabel;
    QRShape26: TQRShape;
    Q13: TQRLabel;
    QRShape27: TQRShape;
    Q14: TQRLabel;
    QRShape28: TQRShape;
    Q15: TQRLabel;
    QRShape29: TQRShape;
    Q16: TQRLabel;
    QRShape30: TQRShape;
    Q17: TQRLabel;
    QRShape31: TQRShape;
    Q18: TQRLabel;
    QRShape32: TQRShape;
    Q19: TQRLabel;
    QRShape33: TQRShape;
    Q20: TQRLabel;
    QRShape34: TQRShape;
    Q21: TQRLabel;
    QRShape35: TQRShape;
    Q22: TQRLabel;
    TitleBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    QRLabel29: TQRLabel;
    QRDBText16: TQRDBText;
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
    Q23: TQRLabel;
    QRShape5: TQRShape;
    D23: TQRDBText;
    QRBand6: TQRBand;
    QRLabel46: TQRLabel;
    QRBand7: TQRBand;
    QRLabel47: TQRLabel;
    QRBand8: TQRBand;
    QRLabel48: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText33: TQRDBText;
    Q1: TQRLabel;
    D1: TQRDBText;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRShape36: TQRShape;
    Q24: TQRLabel;
    Q25: TQRLabel;
    Q27: TQRLabel;
    D24: TQRDBText;
    D25: TQRDBText;
    D27: TQRDBText;
    QRShape57: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ColumnHeaderBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRCompositeReport1Finished(Sender: TObject);
  private
    ComName:String;
    SaleN12_ISO:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  OrderPack_Print: TOrderPack_Print;

implementation

uses OrderList1, main1;

{$R *.dfm}
//20190105 read ini file
procedure TOrderPack_Print.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  SaleN12_ISO:='ISO NO : T-DCC-005A (ERP)';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP',' ComName ','');
      SaleN12_ISO:=MyIni.ReadString('ERP',' SaleN12_ISO ','');
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
{
with QRCompositeReport1 do
  begin
    reports.Add(QuickRep1);
    reports.Add(QuickRep2);
    reports.Add(QuickRep4);
    reports.Add(QuickRep3);
  end; }

   ReadIni();
   ColumnHeaderBand1.Frame.DrawBottom:= true;
   L1.Caption:=ComName;

  with YWDDSDZT do
  begin
    active:=false;
    sql.clear;
    sql.add('select YWCP.DDBH,sum(YWDDSDZ.Qty) as Qty  ');
    sql.add('from YWDDSDZ');
    sql.Add('left join YWCP on YWDDSDZ.CARTONBAR=YWCP.CARTONBAR ');
    sql.add('where YWCP.DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').Value+'''');
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
    sql.add('where YWCP.DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').Value+'''');
    sql.Add('order by YWDDSDZ.CARTONBAR,YWDDSDZ.DDCC' );
    active:=true;
  end;
  with YWDDMT do
  begin
    active:=false;
    sql.clear;
    sql.add('select *  ');
    sql.add('from YWDDMT');
    sql.add('where DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').Value+'''');
    sql.Add('order by XH' );
    active:=true;
  end;

  with CC do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select distinct DDCC ');
    sql.add('from YWBZPOS');
    sql.add('where DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').Value+'''');
    sql.add('and Qty<>0');
    sql.add('order by DDCC');
    CC.Active:=true;
  end;
  {
    try              // 圖片加載不論是否成功都要打印
      a:=SpecMas.fieldbyname('IMGName').AsString  ;
      OrderPack_Print.IMGName1.Picture.LoadFromFile(a);
      OrderPack_Print.IMGName2.Picture.LoadFromFile(a);
    except
      showmessage('No picture of article.');
    end ;  }



  with PACKINGDET do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDBH,MEMO+'+''''+'('+''''+'+convert(varchar,CTQ)+'+''''+'-'+''''+'+convert(varchar,CTZ)+'+''''+')'+'''');
    sql.add('       as MEMO,XH,CTS,(case when XH='+''''+'TT'+''''+' then null else sum(Qty) end ) as Sum,');
    sql.add('(case when XH='+''''+'TT'+''''+' then sum(Qty) else sum(Qty*CTS) end ) as Total');
    while not CC.Eof do
      begin
        sql.add(',max(case when DDCC='+''''+CC.fieldbyname('DDCC').asstring+'''');
        sql.add(' then Qty end ) as '+''''+CC.fieldbyname('DDCC').asstring+'''');
        CC.Next;
      end;
    sql.add('from (select DDBH,MEMO,XH,DDCC,Qty,CTS,CTQ,CTZ from YWBZPOS ');
    sql.add('      where DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').Value+'''');
    sql.add('      union ');
    sql.add('      select YWDDS.DDBH,'+''''+'Order'+''''+' as MEMO, '+''''+'TT'+''''+' as XH,');
    sql.add('             YWDDS.DDCC,YWDDS.Qty,CTS, null as CTQ,null as CTZ');
    sql.add('      from YWDDS ');
    sql.add('      left join (select DDBH,sum( CTS) as CTS ');
    sql.add('                 from( select  distinct DDBH,XH,CTS from YWBZPOS) DDPACKS ');
    sql.add('                 group by DDBH )DDPACKS on DDPACKS.DDBH=YWDDS.DDBH ');
    sql.add('      where YWDDS.Qty<>0 and  YWDDS.DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').Value+'''');
    sql.add('      ) DDPACKS');
    sql.add('group by  DDBH,MEMO,XH,CTS,CTQ,CTZ');
    sql.add('order by  DDBH,XH ');
    active:=true;
  end;

  with PACKINGDET do
  begin
      if  Fieldcount>6 then
      begin
        Q1.Caption:=Fields[6].fieldname;
        D1.datafield:=Fields[6].fieldname;
      end;
      if  Fieldcount>7 then
      begin
        Q2.Caption:=Fields[7].fieldname;
        D2.datafield:=Fields[7].fieldname;
      end;
      if  Fieldcount>8 then
      begin
        Q3.Caption:=Fields[8].fieldname;
        D3.datafield:=Fields[8].fieldname;
      end;
      if  Fieldcount>9 then
      begin
        Q4.Caption:=Fields[9].fieldname;
        D4.datafield:=Fields[9].fieldname;
      end;
      if  Fieldcount>10 then
      begin
        Q5.Caption:=Fields[10].fieldname;
        D5.datafield:=Fields[10].fieldname;
      end;
      if  Fieldcount>11 then
      begin
        Q6.Caption:=Fields[11].fieldname;
        D6.datafield:=Fields[11].fieldname;
      end;
      if  Fieldcount>12 then
      begin
        Q7.Caption:=Fields[12].fieldname;
        D7.datafield:=Fields[12].fieldname;
      end;
      if  Fieldcount>13 then
      begin
        Q8.Caption:=Fields[13].fieldname;
        D8.datafield:=Fields[13].fieldname;
      end;
      if  Fieldcount>14 then
      begin
        Q9.Caption:=Fields[14].fieldname;
        D9.datafield:=Fields[14].fieldname;
      end;
      if  Fieldcount>15 then
      begin
        Q10.Caption:=Fields[15].fieldname;
        D10.datafield:=Fields[15].fieldname;
      end;
      if  Fieldcount>16 then
      begin
        Q11.Caption:=Fields[16].fieldname;
        D11.datafield:=Fields[16].fieldname;
      end;
      if  Fieldcount>17 then
      begin
        Q12.Caption:=Fields[17].fieldname;
        D12.datafield:=Fields[17].fieldname;
      end;
      if  Fieldcount>18 then
      begin
        Q13.Caption:=Fields[18].fieldname;
        D13.datafield:=Fields[18].fieldname;
      end;
      if  Fieldcount>19 then
      begin
        Q14.Caption:=Fields[19].fieldname;
        D14.datafield:=Fields[19].fieldname;
      end;
      if  Fieldcount>20 then
      begin
        Q15.Caption:=Fields[20].fieldname;
        D15.datafield:=Fields[20].fieldname;
      end;
      if  Fieldcount>21 then
      begin
        Q16.Caption:=Fields[21].fieldname;
        D16.datafield:=Fields[21].fieldname;
      end;
      if  Fieldcount>22 then
      begin
        Q17.Caption:=Fields[22].fieldname;
        D17.datafield:=Fields[22].fieldname;
      end;
      if  Fieldcount>23 then
      begin
        Q18.Caption:=Fields[23].fieldname;
        D18.datafield:=Fields[23].fieldname;
      end;
      if  Fieldcount>24 then
      begin
        Q19.Caption:=Fields[24].fieldname;
        D19.datafield:=Fields[24].fieldname;
      end;
      if  Fieldcount>25 then
      begin
        Q20.Caption:=Fields[25].fieldname;
        D20.datafield:=Fields[25].fieldname;
      end;
      if  Fieldcount>26 then
      begin
        Q21.Caption:=Fields[26].fieldname;
        D21.datafield:=Fields[26].fieldname;
      end;
      if  Fieldcount>27 then
      begin
        Q22.Caption:=Fields[27].fieldname;
        D22.datafield:=Fields[27].fieldname;
      end;
      if  Fieldcount>28 then
      begin
        Q23.Caption:=Fields[28].fieldname;
        D23.datafield:=Fields[28].fieldname;
      end;
      if  Fieldcount>29 then
      begin
        Q24.Caption:=Fields[29].fieldname;
        D24.datafield:=Fields[29].fieldname;
      end;
      if  Fieldcount>30 then
      begin
        Q25.Caption:=Fields[30].fieldname;
        D25.datafield:=Fields[30].fieldname;
      end;
  end;

  with PackingMemo do
  begin
    active:=false;
    sql.clear;
    sql.add('select  *   ');
    sql.add('from YWDDBZ ');
    sql.add('where DDBH='+''''+OrderList.SpecMas.fieldbyname('DDBH').Value+'''');
    sql.add('order by XH ');
    active:=true;
  end;
end;

procedure TOrderPack_Print.ColumnHeaderBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
{if main.Edit2.Text='VDT' then
  begin
     OrderPack_Print.L1.Caption:='CONG TY TNHH TY THAC';
  end else
  begin
     OrderPack_Print.L1.Caption:='CONG TY TNHH TY XUAN';
  end;  }
end;

procedure TOrderPack_Print.QRCompositeReport1Finished(Sender: TObject);
var textvar:textfile;
    sline:string;
begin

  OrderPack_Print.QRLabel12.Caption:=ComName;
  OrderPack_Print.L1.Caption:=ComName;
  OrderPack_Print.QRLabel27.Caption:=ComName;
  OrderPack_Print.QRLabel40.Caption:=ComName;

  OrderPack_Print.QRLabel46.Caption:=SaleN12_ISO;
  OrderPack_Print.QRLabel47.Caption:=SaleN12_ISO;
  OrderPack_Print.QRLabel48.Caption:=SaleN12_ISO;

end;

end.
