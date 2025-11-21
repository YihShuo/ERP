unit D_PSpecPrintssTW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, DBTables, DB, QuickRpt, QRCtrls, ExtCtrls,IniFiles;

type
  TD_PSpecPrintssTW = class(TForm)
    QuickRep2: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    Q1: TQRDBText;
    QRShape2: TQRShape;
    Q2: TQRDBText;
    Q3: TQRDBText;
    Q10: TQRDBText;
    Q20: TQRDBText;
    Q4: TQRDBText;
    Q5: TQRDBText;
    Q6: TQRDBText;
    Q7: TQRDBText;
    Q8: TQRDBText;
    Q9: TQRDBText;
    Q11: TQRDBText;
    Q12: TQRDBText;
    Q13: TQRDBText;
    Q14: TQRDBText;
    Q15: TQRDBText;
    Q16: TQRDBText;
    Q17: TQRDBText;
    Q18: TQRDBText;
    Q19: TQRDBText;
    Q21: TQRDBText;
    Q22: TQRDBText;
    Q23: TQRDBText;
    Q24: TQRDBText;
    Q25: TQRDBText;
    Q26: TQRDBText;
    Q27: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
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
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape33: TQRShape;
    Q28: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    PageN1: TQRLabel;
    QRLabel3: TQRLabel;
    QDate2: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText14: TQRDBText;
    QRImage1: TQRImage;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    Fac1: TQRLabel;
    QuickRep3: TQuickRep;
    DetailBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRBand1: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRDBText26: TQRDBText;
    QRSysData2: TQRSysData;
    PageN2: TQRLabel;
    QRLabel35: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText30: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText38: TQRDBText;
    QDate3: TQRLabel;
    QRImage2: TQRImage;
    QRLabel2: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText36: TQRDBText;
    Fac2: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel32: TQRLabel;
    QRShape27: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRBand4: TQRBand;
    QuickRep4: TQuickRep;
    DetailBand3: TQRBand;
    QMemo: TQRDBText;
    ColumnHeaderBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRSysData3: TQRSysData;
    PageN3: TQRLabel;
    QRLabel21: TQRLabel;
    QDate4: TQRLabel;
    QRLabel26: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel28: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel30: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel55: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel56: TQRLabel;
    QRDBText31: TQRDBText;
    QRLabel57: TQRLabel;
    QRDBText33: TQRDBText;
    QRLabel58: TQRLabel;
    QRDBText35: TQRDBText;
    QRImage3: TQRImage;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel34: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel40: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel43: TQRLabel;
    QRDBText24: TQRDBText;
    Fac3: TQRLabel;
    QRCompositeReport1: TQRCompositeReport;
    Titlememo: TQuery;
    TitlememoZLBH: TStringField;
    TitlememoDDBH: TStringField;
    TitlememoXieXing: TStringField;
    TitlememoSheHao: TStringField;
    TitlememoARTICLE: TStringField;
    TitlememoKHBH: TStringField;
    TitlememoKHPO: TStringField;
    TitlememoVersion: TSmallintField;
    TitlememoTrader: TStringField;
    TitlememoTraderPO: TStringField;
    TitlememoDDLB: TStringField;
    TitlememoDDCC: TStringField;
    TitlememoBOMCC: TStringField;
    TitlememoDest: TStringField;
    TitlememoDDRQ: TDateTimeField;
    TitlememoShipDate: TDateTimeField;
    TitlememoPairs: TIntegerField;
    TitlememoXieMing: TStringField;
    TitlememoYSSM: TStringField;
    TitlememoBZCC: TStringField;
    TitlememoKHDH: TStringField;
    TitlememoXTMH: TStringField;
    TitlememoDMGJ: TStringField;
    TitlememoDDMH: TStringField;
    TitlememoMSGJ: TStringField;
    TitlememoMDMH: TStringField;
    TitlememoDAOGJ: TStringField;
    TitlememoDAOMH: TStringField;
    TitlememoIMGName: TStringField;
    TitlememoKFJC: TStringField;
    TitlememoYWSM: TStringField;
    Gjtable: TQuery;
    TempSQL: TQuery;
    QMatList: TQuery;
    QMatListXH: TStringField;
    QMatListbwbh: TStringField;
    QMatListBWMCY: TStringField;
    QMatListclbh: TStringField;
    QMatListCLMCY: TStringField;
    QMatListdwbh: TStringField;
    QMatListLOSS: TFloatField;
    QMatListUSAGE: TFloatField;
    QMatListclsl: TFloatField;
    QMatListmjbh: TStringField;
    QMatListCQDH: TStringField;
    MemoTemp: TQuery;
    MemoSQL: TQuery;
    UpMemo: TUpdateSQL;
    MemoOth: TQuery;
    QRPDFFilter1: TQRPDFFilter;
    QRBand2: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel54: TQRLabel;
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TitlememoAfterOpen(DataSet: TDataSet);
    procedure ColumnHeaderBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure MemoTempAfterOpen(DataSet: TDataSet);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure QRCompositeReport1Finished(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ComName:String;
    ComFullName:String;
    BomN53_ISO:String;
    procedure ReadIni();
    { Private declarations }
  public

  end;

var
  D_PSpecPrintssTW: TD_PSpecPrintssTW;

implementation
   uses FunUnit;
{$R *.dfm}

procedure TD_PSpecPrintssTW.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComFullName:='VINH LONG FOOTWEAR CO., LTD';
  BomN53_ISO:='ISO NO : T-KH-QP007-01A (ERP)';  //Ty Thac =>'ISO NO : DT-SQ-022A(ERP)'
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
      BomN53_ISO:=MyIni.ReadString('ERP','BomN53_ISO','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TD_PSpecPrintssTW.QRCompositeReport1AddReports(Sender: TObject);
begin

with QRCompositeReport1 do
  begin
    reports.Add(QuickRep2);
    reports.Add(QuickRep3);
    reports.Add(QuickRep4);
  end;
end;

procedure TD_PSpecPrintssTW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Titlememo.close;
  MemoTemp.Active:=false;
  Gjtable.Active:=false;
  QMatList.Active:=false;
  MemoOth.Active:=false;
  Action:=CaFree;
end;

procedure TD_PSpecPrintssTW.TitlememoAfterOpen(DataSet: TDataSet);
var a,b,c,d,e,f,g,Qty:string;
begin

  //表頭工具數據的准備＊＊
  f:= TitleMemo.fieldbyname('DDBH').value;
  with TempSQL do
  begin
      //計算訂單總數量
    active:=false;
    sql.clear;
    sql.add('select DDBH,sum(Quantity) as Qty from DDZLS where DDBH='+''''+f+''''+'group by DDBH');
    active:=true;
    Qty:=inttostr(TempSQL.fieldbyname('Qty').value);
    active:=false;
  end;
// 取主表相關信息  備用
    a:=TitleMemo.fieldbyname('DDCC').value  ;
    b:=TitleMemo.fieldbyname('BOMCC').value;
    e:=TitleMemo.fieldbyname('XieXing').value;
    //取SKU資料與XXZLSVNS2比對判斷是否列印前包頭  edit by Gary 2014.03.18
    g:=TitleMemo.fieldbyname('Article').value;
    c:=a;
    d:=b;
     //找出所有國別尺寸的對應關係
    if a='K' then
      begin
        a:='XXZLS3.UK_Size as DDCC,';
        c:='UK';
      end;
    if a='J' then
    begin
      a:='XXZLS3.JPN_Size as DDCC,';
      c:='JPN';
    end;
    if a='E' then
    begin
      a:='XXZLS3.EUR_Size as DDCC,';
      c:='EUR';
    end;
    if a='F' then
    begin
      a:='XXZLS3.FRN_Size as DDCC,';
      c:='FRN';
    end;
    if a='M' then
    begin
      a:='XXZLS3.MX_Size as DDCC,';
      c:='MX';
    end;
    if a='U' then
    begin
      a:='XXZLS3.US_Size as DDCC,';
      c:='US';
    end;
    if a='O' then
    begin
      a:='XXZLS3.OTH_Size as DDCC,';
      C:='OTH';
    end;
    if b='K' then
      b:='XXZLS3.UK_Size as BOMCC';
      d:='UK';
    if b='J' then
    begin
      b:='XXZLS3.JPN_Size as BOMCC';
      d:='JPN';
    end;
    if b='E' then
    begin
      b:='XXZLS3.EUR_Size as BOMCC';
      d:='EUR';
    end;
    if b='F' then
    begin
      b:='XXZLS3.FRN_Size as BOMCC';
      d:='FRN';
    end;
    if b='M' then
    begin
      b:='XXZLS3.MX_Size as BOMCC';
      d:='MX';
    end;
    if b='U' then
    begin
      b:='XXZLS3.US_Size as BOMCC';
      d:='US';
    end;
    if b='O' then
    begin
      b:=' XXZLS3.OTH_Size as BOMCC';
      d:='OTH';
    end;



  with TempSQL do
  begin
    active:=false;
    sql.clear;  //  判斷臨時表是否存在,否則刪除
    sql.add('  if object_id('+''''+'tempdb..#XXCC'+''''+') is not null  ');
    sql.add('begin   drop table #XXCC end   ');
    sql.add('if object_id('+''''+'tempdb..#CC'+''''+') is not null  ');
    sql.add('  begin   drop table #CC  end  ');

    //找出表頭的所有對應數據
    sql.add('select DDZL.DDBH,'+a+b);
    sql.add('into #XXCC from  XXZLS3 ');
    sql.add('left join DDZL on DDZL.XieXing=XXZLS3.XieXing');
    sql.add('where DDZL.DDBH=');
    sql.add(''''+ f+'''');

    //訂單號碼明細
    sql.add('select 7 as NO,'+''''+'Quantity  '+''''+' as DDType,'+''''+Qty+' '+''''+' as SizeType,#XXCC.BOMCC,');
    sql.Add(' convert(varchar(5),DDZLS.Quantity) as DDCC into #CC from #XXCC ');
    sql.add('left join DDZLS on DDZLS.DDBH=#XXCC.DDBH and DDZLS.CC=#XXCC.DDCC');
     //訂單號碼數量
    sql.add('insert #CC  select 0 as NO, '+''''+'OrderSize'+''''+' as DDType,'+''''+c+''''+' as SizeType, #XXCC.BOMCC,#XXCC.DDCC from #XXCC ');
    //鞋型號碼
    sql.add('insert #CC  select 1 as NO, '+''''+'Article'    +''''+' as DDType,'+''''+d+''''+' as SizeType, #XXCC.BOMCC,#XXCC.BOMCC as DDCC from #XXCC');
    //楦頭號碼對應
    sql.add('insert #CC select  2 as NO,'+''''+'LAST'+''''+' as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add(' from XXGJS  where  XXGJS.GJLB='+''''+'100'+''''+'and XXGJS.XieXing='+''''+e+'''');
    //大底號碼對應
    sql.add('insert #CC select  3 as NO,'+''''+'OUTSOLE'+''''+'as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add(' from XXGJS  where XXGJS.GJLB='+''''+'101'+''''+'and XXGJS.XieXing='+''''+e+'''');
    //中底號碼對應
    sql.add('insert #CC select  4 as NO,'+''''+'WEDGE'+''''+'as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add(' from XXGJS  where  XXGJS.GJLB='+''''+'102'+''''+'and XXGJS.XieXing='+''''+e+'''');
    //斬刀號碼對應
    sql.add('insert #CC select  5 as NO,'+''''+'CUT DIE'+''''+'as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add(' from XXGJS  where  XXGJS.GJLB='+''''+'200'+''''+'and XXGJS.XieXing='+''''+e+'''');
    //前包頭對應
    sql.add('insert #CC select  6 as NO,'+''''+'TOE CAP'+''''+'as DDType,'+''''+'    '+''''+' as SizeType,XXGJS.XXCC as BOMCC,XXGJS.GJCC as DDCC');
    sql.add('from XXGJS');
    sql.add('left join XXZLSVNS2 on xxgjs.XieXing = XXZLSVNS2.XieXing');
    sql.add('where  XXZLSVNS2.Article='+''''+g+''' and XXGJS.GJLB='+''''+'280'+''''+'and XXGJS.XieXing='+''''+e+'''');
    sql.add('select * from #CC ');
    active:=true;
    //active:=true;
  end;


 //做交叉表
  with TempSQL do      //循環依據
  begin
    Active:=false;
    SQL.Clear;
    sql.add('select BOMCC  from #CC where DDType='+''''+'Quantity'+''''+'order by BOMCC' );
    active:=true;
  end;
  TempSQL.first;
  with  GJTable do   //交叉主表　
  begin
    active:=false;
    sql.clear;
    sql.add('select NO,DDType,SizeType');
      while not TempSQL.eof do
      begin
        a:=TempSQL.fieldbyname('BOMCC').asstring;
        sql.add(',max(case when BOMCC='+''''+a+'''');
        sql.add('and DDCC<>'+''''+'0'+''''+' then DDCC else'+''''+''+''''+' end ) as '+''''+a+'''');
        TempSQL.Next;
      end;
    sql.add(' from #CC');
    sql.add(' group by NO,DDType,SizeType');
    sql.add('order by NO  ');
    active:=true;
  end;
//確定工具表頭值
QDate2.caption:=formatdatetime('yyyy/MM/dd',date);
QDate3.caption:=formatdatetime('yyyy/MM/dd',date);
QDate4.caption:=formatdatetime('yyyy/MM/dd',date);
    if  Gjtable.Fieldcount>1 then
      begin
      Q1.DataField:=Gjtable.Fields[1].fieldname;
      end;
    if Gjtable.Fieldcount>2 then
      begin
      Q2.DataField:=Gjtable.Fields[2].fieldname;
      end;
    if Gjtable.Fieldcount>3 then
      begin
      Q3.DataField:=Gjtable.Fields[3].fieldname;
      end;
    if Gjtable.Fieldcount>4 then
    begin
      Q4.DataField:=Gjtable.Fields[4].fieldname;
    end;
    if Gjtable.Fieldcount>5 then
    begin
      Q5.DataField:=Gjtable.Fields[5].fieldname;
    end;
    if Gjtable.Fieldcount>6 then
    begin
      Q6.DataField:=Gjtable.Fields[6].fieldname;
    end;
    if Gjtable.Fieldcount>7 then
    begin
      Q7.DataField:=Gjtable.Fields[7].fieldname;
    end;
    if Gjtable.Fieldcount>8 then
    begin
      Q8.DataField:=Gjtable.Fields[8].fieldname;
    end;
    if Gjtable.Fieldcount>9 then
    begin
      Q9.DataField:=Gjtable.Fields[9].fieldname;
    end;
    if Gjtable.Fieldcount>10 then
    begin
      Q10.DataField:=Gjtable.Fields[10].fieldname;
    end;
    if Gjtable.Fieldcount>11 then
    begin
      Q11.DataField:=Gjtable.Fields[11].fieldname;
    end;
    if Gjtable.Fieldcount>12 then
    begin
      Q12.DataField:=Gjtable.Fields[12].fieldname;
    end;
    if Gjtable.Fieldcount>13 then
    begin
      Q13.DataField:=Gjtable.Fields[13].fieldname;
    end;
    if Gjtable.Fieldcount>14 then
    begin
      Q14.DataField:=Gjtable.Fields[14].fieldname;
    end;
    if Gjtable.Fieldcount>15 then
    begin
      Q15.DataField:=Gjtable.Fields[15].fieldname;
    end;
    if Gjtable.Fieldcount>16 then
    begin
      Q16.DataField:=Gjtable.Fields[16].fieldname;
    end;
    if Gjtable.Fieldcount>17 then
    begin
      Q17.DataField:=Gjtable.Fields[17].fieldname;
    end;
    if Gjtable.Fieldcount>18 then
    begin
      Q18.DataField:=Gjtable.Fields[18].fieldname;
    end;
    if Gjtable.Fieldcount>19 then
    begin
      Q19.DataField:=Gjtable.Fields[19].fieldname;
    end;
    if Gjtable.Fieldcount>20 then
    begin
      Q20.DataField:=Gjtable.Fields[20].fieldname;
    end;
    if Gjtable.Fieldcount>21 then
    begin
      Q21.DataField:=Gjtable.Fields[21].fieldname;
    end;
    if Gjtable.Fieldcount>22 then
    begin
      Q22.DataField:=Gjtable.Fields[22].fieldname;
    end;
    if Gjtable.Fieldcount>23 then
    begin
      Q23.DataField:=Gjtable.Fields[23].fieldname;
    end;
    if Gjtable.Fieldcount>24 then
    begin
      Q24.DataField:=Gjtable.Fields[24].fieldname;
    end;
    if Gjtable.Fieldcount>25 then
    begin
      Q25.DataField:=Gjtable.Fields[25].fieldname;
    end;
    if Gjtable.Fieldcount>26 then
    begin
      Q26.DataField:=Gjtable.Fields[26].fieldname;
    end;
    if Gjtable.Fieldcount>27 then
    begin
      Q27.DataField:=Gjtable.Fields[27].fieldname;
    end;   
    if Gjtable.Fieldcount>28 then
    begin
      Q28.DataField:=Gjtable.Fields[28].fieldname;
    end;
    //材料主表的准備及整理**
    QMatList.Active:=true;

    //子母材料的准備及標准寫入
    MemoTemp.active:=true;
//
end;

procedure TD_PSpecPrintssTW.ColumnHeaderBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
 Quickrep4.NewPage;
end;

procedure TD_PSpecPrintssTW.MemoTempAfterOpen(DataSet: TDataSet);
var a,b,c:string;
i,j:integer;
begin                   //加MEO說明文檔
MemoSQL.requestlive:=true;
MemoSQL.cachedupdates:=true;
MemoSQL.active:=true;
i:=0;
j:=0;
//加注訂單說明文檔
{
with MemoOth do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select XH,BZ from DDBZZL where DDBH=:DDBH and ZYLB='+''''+'E'+'''');
    sql.add('order by XH');
    active:=true;
    first;
    if Memooth.recordcount>0 then
      begin
        with MemoSQL do
          begin
            insert;
            FieldByName('RecN').asstring:='01';
            FieldByName('YWPM').AsString:='ORDER MEMO:';
          end;
        for i:=1 to recordcount do
          begin
            b:=inttostr(i+1) ;
            if length(b)<2 then
              begin
                b:='0'+b;
              end;
             MemoSQL.Insert;
             MemoSQL.FieldByName('RecN').asstring:=b;
             MemoSQL.FieldByName('YWPM').asstring:=fieldbyname('BZ').asstring;
             next;
          end;
        i:=i+1;
      end;
  end; }

//加注鞋型說明檔
with MemoOth do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LineNum,Remark from XXZLS2 where XieXing=:XieXing ');
    sql.add('and SheHao=:SheHao and ZYLB='+''''+'C'+'''');
    sql.add('order by LineNum');
    active:=true;
    first;
    if Memooth.recordcount>0 then
      begin
        with MemoSQL do
          begin    
            insert;
            b:=inttostr(i+1) ;
            if length(b)<2 then
              begin
                b:='0'+b;
              end;
            FieldByName('RecN').asstring:=b;
            FieldByName('YWPM').AsString:='------------------------------------------------------------------------------------------------------------------------------';
            insert;
            b:=inttostr(i+2) ;
            if length(b)<2 then
              begin
                b:='0'+b;
              end;
            FieldByName('RecN').asstring:=b;
            FieldByName('YWPM').AsString:='Article Memo:';
         end;
        for j:=1 to recordcount do
          begin
            b:=inttostr(i+j+1) ;
            if length(b)<2 then
              begin
                b:='0'+b;
              end;
             MemoSQL.Insert;
             MemoSQL.FieldByName('RecN').asstring:=b;
             MemoSQL.FieldByName('YWPM').asstring:=fieldbyname('Remark').asstring;
             next;
          end;
        i:=i+j+2;
      end;
  end;

  //加注材料說明檔

 with MemoOth do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CLBZZL.CLDH,CLBZZL.XH,CLBZZL.BZ from CLBZZL  ');
    sql.add('where exists(select  zlzls2.CLBH from zlzls2');
    sql.Add('where  zlzls2.CLBH=CLBZZL.CLDH and  zlzls2.ZLBH=:ZLBH)')   ;
    sql.add('and ZYBB='+''''+'C'+'''');
    sql.add('order by CLBZZL.CLDH,CLBZZL.XH');
    active:=true;
    first;
    if Memooth.recordcount>0 then
      begin
        with MemoSQL do
          begin
            insert;
            b:=inttostr(i+1) ;
            if length(b)<2 then
              begin
                b:='0'+b;
              end;
            FieldByName('RecN').asstring:=b;
            FieldByName('YWPM').AsString:='--------------------------------------------------------------------------------------------------------------------------------';
            insert;
            b:=inttostr(i+2) ;
            if length(b)<2 then
              begin
                b:='0'+b;
              end;
            FieldByName('RecN').asstring:=b;
            FieldByName('YWPM').AsString:='材料備注:';
        end;
        c:='';
        for j:=1 to recordcount do
          begin
            b:=inttostr(i+j+1) ;
            if length(b)<2 then
              begin
                b:='0'+b;
              end;
            if  c= fieldbyname('CLDH').asstring then
              begin
                a:='                    ';
              end
              else
                begin
                  a:=fieldbyname('CLDH').asstring;
                end;
             MemoSQL.Insert;
             MemoSQL.FieldByName('RecN').asstring:=b;
             MemoSQL.FieldByName('YWPM').asstring:=a+'  '+fieldbyname('BZ').asstring;
             next;
             c:=fieldbyname('CLDH').asstring;
          end;
        i:=i+j+2;
      end;
  end;


 //加注子母材料說明
MemoTemp.first;
with MemoSQL do
  begin
    insert;
    b:=inttostr(i+1) ;
      if length(b)<2 then
        begin
          b:='0'+b;
        end;
    FieldByName('RecN').asstring:=b;
    FieldByName('YWPM').AsString:='----------------------------------------------------------------------------------------------------------------------------------------';
    insert;
    b:=inttostr(i+2) ;
      if length(b)<2 then
        begin
          b:='0'+b;
        end;
    FieldByName('RecN').asstring:=b;
    FieldByName('YWPM').AsString:='COMPLEX:';
    insert ; 
    b:=inttostr(i+3) ;
        if length(b)<2 then
          begin
            b:='0'+b;
          end;
    FieldByName('RecN').asstring:=b;
    FieldByName('YWPM').AsString:='MOTHER NO    SON NO        USAGE  UNIT      DESCRIPTION';

    insert;
    b:=inttostr(i+4) ;
      if length(b)<2 then
        begin
          b:='0'+b;
        end;
    FieldByName('RecN').asstring:=b;
    FieldByName('YWPM').AsString:='------------------------------------------------------------------------------------------------------------------------------------------';
  end;
i:=i+4;

c:='';
while not MemoTemp.eof do
  begin
    MemoSQL.insert ;
    if  c= MemoTemp.fieldbyname('MJBH').asstring then
      begin
        a:='                    ';
      end
        else
          begin
            a:=MemoTemp.fieldbyname('MJBH').asstring;
          end;
    b:=inttostr(i) ;
    if length(b)<2 then
      begin
        b:='0'+b;
      end;
    MemoSQL.FieldByName('RecN').asstring:=b;
    MemoSQL.FieldByName('YWPM').AsString:=a+'   '+MemoTemp.fieldbyname('CLBH').asstring+'   '
                                          +MemoTemp.fieldbyname('SYL').asstring
                                          +'  '+MemoTemp.fieldbyname('DWBH').asstring+'  '+
                                            MemoTemp.fieldbyname('YWPM').asstring;
    i:=i+1;
    c:= MemoTemp.fieldbyname('MJBH').asstring  ;
    MemoTemp.next;
  end;
end;


procedure TD_PSpecPrintssTW.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
// Quickrep3.NewPage;
end;

procedure TD_PSpecPrintssTW.FormDestroy(Sender: TObject);
begin
  D_PSpecPrintssTW:=nil;
end;

procedure TD_PSpecPrintssTW.QRCompositeReport1Finished(Sender: TObject);
begin
     D_PSpecPrintssTW.QRLabel60.Caption:=ComName;
     D_PSpecPrintssTW.QRLabel18.Caption:=ComName;
     D_PSpecPrintssTW.QRLabel23.Caption:=ComName;
     D_PSpecPrintssTW.QRLabel54.Caption:=ComFullName;
     D_PSpecPrintssTW.QRLabel46.Caption:=ComFullName;
     D_PSpecPrintssTW.QRLabel4.Caption:=ComFullName;
     D_PSpecPrintssTW.QRLabel22.Caption:=BomN53_ISO;
end;


procedure TD_PSpecPrintssTW.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
