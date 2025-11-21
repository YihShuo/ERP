unit R_PSepcRintss1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TR_PSepcRintss = class(TForm)
    QuickRep2: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    Q1: TQRDBText;
    QRShape2: TQRShape;
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
    Q2: TQRDBText;
    PageHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel54: TQRLabel;
    Titlememo: TQuery;
    QRCompositeReport1: TQRCompositeReport;
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
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel32: TQRLabel;
    QRShape27: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRBand4: TQRBand;
    QRBand2: TQRBand;
    TitlememoDDBH: TStringField;
    TitlememoKHPO: TStringField;
    TitlememoArticle: TStringField;
    TitlememoCOLOR: TStringField;
    TitlememoYSSM: TStringField;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    TempSQL: TQuery;
    Gjtable: TQuery;
    QMatList: TQuery;
    QMatListcldhz: TStringField;
    QMatListzwpm: TStringField;
    QMatListywpm: TStringField;
    QMatListDWBH: TStringField;
    QMatListTCLYL: TFloatField;
    QMatListLOSS: TFloatField;
    QMatListUSAGE: TFloatField;
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure TitlememoAfterOpen(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_PSepcRintss: TR_PSepcRintss;

implementation
  uses main1, DDZL_BOMM1, FunUnit;
{$R *.dfm}

procedure TR_PSepcRintss.QRCompositeReport1AddReports(Sender: TObject);
begin
  with QRCompositeReport1 do
  begin
    reports.Add(QuickRep2);
    reports.Add(QuickRep3);
  end;
end;


procedure TR_PSepcRintss.TitlememoAfterOpen(DataSet: TDataSet);
var DDBH,BOMCC,Qty:string;
begin
  //表頭工具數據的准備＊＊
  DDBH:= TitleMemo.fieldbyname('DDBH').AsString;
  with TempSQL do
  begin
      //計算訂單總數量
    active:=false;
    sql.clear;
    sql.add('select DDBH,sum(Qty) as Qty from '+main.LIY_DD+'.dbo.DDZLS where DDBH='''+DDBH+''' group by DDBH');
    active:=true;
    Qty:=inttostr(TempSQL.fieldbyname('Qty').value);
    active:=false;
  end;

  with TempSQL do
  begin
    active:=false;
    sql.clear;  //  判斷臨時表是否存在,否則刪除
    sql.add('if object_id(''tempdb..#CC'') is not null  ');
    sql.add('  begin   drop table #CC  end  ');
    sql.add('select 0 as NO, ''OrderSize'' as DDType,''     '' as SizeType,CC as BOMCC,CC as DDCC into #CC from '+main.LIY_DD+'.dbo.DDZLS where DDBH='''+DDBH+''' Group by CC ');
    sql.add('insert #CC  select 7 as NO, ''Quantity'' as DDType,'''+Qty+''' as SizeType,CC as BOMCC,Qty as DDCC from '+main.LIY_DD+'.dbo.DDZLS where DDBH='''+DDBH+''' ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;


 //做交叉表
  with TempSQL do      //循環依據
  begin
    Active:=false;
    SQL.Clear;
    sql.add('select BOMCC  from #CC where DDType=''Quantity'' order by BOMCC' );
    //funcObj.WriteErrorLog(sql.Text);
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
        BOMCC:=TempSQL.fieldbyname('BOMCC').asstring;
        sql.add(',max(case when BOMCC='''+BOMCC+'''');
        sql.add('and DDCC<>''0'' then DDCC else '''' end ) as '''+BOMCC+'''');
        TempSQL.Next;
    end;
    sql.add(' from #CC');
    sql.add(' group by NO,DDType,SizeType');
    sql.add('order by NO  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
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
  with QMatList do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select right(ZLZLS3.cldhz,10) as cldhz,CLZL.zwpm,CLZL.ywpm,CLZL.DWBH,Convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,0.00 as LOSS,Round(Convert(float,round(sum(ZLZLS3.TCLYL),2))/30,4) as USAGE');
    SQL.Add('from '+main.LIY_DD+'.dbo.ZLZLS3 ZLZLS3');
    SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
    SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.CLZLSL CLZLSL ON ZLZLS3.cldh = CLZLSL.cldh  and ZLZLS3.cldhz=CLZLSL.cldhz and  CLZLSL.cldh=CLZL.cldh');
    SQL.Add('where DDBH='''+DDBH+''' and ZLZLS3.TCLYL>0');
    SQL.Add('Group by right(ZLZLS3.cldhz,10),CLZL.zwpm,CLZL.ywpm,CLZL.DWBH ');
    Active:=true;
  end;
end;

procedure TR_PSepcRintss.FormDestroy(Sender: TObject);
begin
  R_PSepcRintss:=nil;
end;

procedure TR_PSepcRintss.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Titlememo.close;
 Gjtable.Active:=false;
 QMatList.Active:=false;
 Action:=CaFree;
end;

end.
