unit SampleTrackingReason1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB,
  DBTables,comobj;

type
  TSampleTrackingReason = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    ToolPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    QryBtn: TButton;
    SR: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DateSearch: TComboBox;
    DBGridEh: TDBGridEh;
    SPSCQry: TQuery;
    DS: TDataSource;
    SPSCQryItem: TStringField;
    SPSCQryCKDate: TStringField;
    SPSCQryTotal: TIntegerField;
    SPSCQryCKExDate: TIntegerField;
    SPSCQryLackCKExDate: TIntegerField;
    SPSCQryYWSM: TStringField;
    SPSCQryZWSM: TStringField;
    SPSCQrySym: TStringField;
    tmpQuery: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure ExportDefaultData();
    procedure ExportPlanFormatData();
  public
    { Public declarations }
  end;

var
  SampleTrackingReason: TSampleTrackingReason;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TSampleTrackingReason.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSampleTrackingReason.FormDestroy(Sender: TObject);
begin
  SampleTrackingReason:=nil;
end;

procedure TSampleTrackingReason.QryBtnClick(Sender: TObject);
begin
  //

  with tmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#SPSCList'') is not null  ');
    SQL.Add('   begin   drop table #SPSCList end ');
    SQL.Add('select * into #SPSCList ');
    SQL.Add('from(');
    SQL.Add('  Select SPSCList.SPNO,SPSCList.Article,SPSCList.GSBH,SPSCList.Stage,SPSCList.Pairs,SPSCList.ODate,Convert(Varchar,SPSCList.CkDate,111) as CkDate, ');
    SQL.Add('  Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''CkExDate''),111) as CkExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''CkExDate'' and (ExeDate is null or ExeDate>SPSCList.CKDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as CKExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''CkExDate'' and (ExeDate is null or ExeDate>SPSCList.CKDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as CKExRemCount, ');
    SQL.Add('  Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''RelyDate''),111) as RelyDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''RelyDate'' and (ExeDate is null or ExeDate>SPSCList.RelyDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as ReplyRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''RelyDate'' and (ExeDate is null or ExeDate>SPSCList.RelyDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as ReplyRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.ZBDate,111) as ZBDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''ZBExDate''),111) as ZBExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''ZBExDate'' and (ExeDate is null or ExeDate>SPSCList.ZBDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as ZBExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''ZBExDate'' and (ExeDate is null or ExeDate>SPSCList.ZBDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as ZBExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.SJDate,111) as SJDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SJExDate''),111) as SJExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''SJExDate'' and (ExeDate is null or ExeDate>SPSCList.SJDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as SJExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''SJExDate'' and (ExeDate is null or ExeDate>SPSCList.SJDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as SJExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.JDDate,111) as JDDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''JDExDate''),111) as JDExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''JDExDate'' and (ExeDate is null or ExeDate>SPSCList.JDDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as JDExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''JDExDate'' and (ExeDate is null or ExeDate>SPSCList.JDDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as JDExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.WBDate,111) as WBDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''WBExDate''),111) as WBExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''WBExDate'' and (ExeDate is null or ExeDate>SPSCList.WBDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as WBExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''WBExDate'' and (ExeDate is null or ExeDate>SPSCList.WBDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as WBExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.SPDate,111) as SPDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SPExDate''),111) as SPExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''SPExDate'' and (ExeDate is null or ExeDate>SPSCList.SPDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as SPExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''SPExDate'' and (ExeDate is null or ExeDate>SPSCList.SPDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as SPExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.MLDate,111) as MLDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''MLExDate''),111) as MLExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''MLExDate'' and (ExeDate is null or ExeDate>SPSCList.MLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as MLExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''MLExDate'' and (ExeDate is null or ExeDate>SPSCList.MLDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as MLExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.FLDate,111) as FLDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''FLExDate''),111) as FLExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''FLExDate'' and (ExeDate is null or ExeDate>SPSCList.FLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as FLExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''FLExDate'' and (ExeDate is null or ExeDate>SPSCList.FLDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as FLExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.DLDate,111) as DLDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''DLExDate''),111) as DLExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''DLExDate'' and (ExeDate is null or ExeDate>SPSCList.DLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as DLExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''DLExDate'' and (ExeDate is null or ExeDate>SPSCList.DLDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as DLExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.BOMDate,111) as BOMDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''BOMExDate''),111) as BOMExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''BOMExDate'' and (ExeDate is null or ExeDate>SPSCList.BOMDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as BOMExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''BOMExDate'' and (ExeDate is null or ExeDate>SPSCList.BOMDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as BOMExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.SKDate,111) as SKDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SKExDate''),111) as SKExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''SKExDate'' and (ExeDate is null or ExeDate>SPSCList.SKDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as SKExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''SKExDate'' and (ExeDate is null or ExeDate>SPSCList.SKDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as SKExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.YLDate,111) as YLDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''YLExDate''),111) as YLExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''YLExDate'' and (ExeDate is null or ExeDate>SPSCList.YLDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as YLExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''YLExDate'' and (ExeDate is null or ExeDate>SPSCList.YLDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as YLExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.CutDate,111) as CutDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''CutExDate''),111) as CutExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''CutExDate'' and (ExeDate is null or ExeDate>SPSCList.CutDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as CutExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''CutExDate'' and (ExeDate is null or ExeDate>SPSCList.CutDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as CutExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.SteDate,111) as SteDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SteExDate''),111) as SteExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''SteExDate'' and (ExeDate is null or ExeDate>SPSCList.SteDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as SteExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''SteExDate'' and (ExeDate is null or ExeDate>SPSCList.SteDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as SteExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.AseDate,111) as AseDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''AseExDate''),111) as AseExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''AseExDate'' and (ExeDate is null or ExeDate>SPSCList.AseDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as AseExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''AseExDate'' and (ExeDate is null or ExeDate>SPSCList.AseDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as AseExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.BGDate,111) as BGDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''BGExDate''),111) as BGExDate, ');
    SQL.Add('  IsNull((Select top 1 LYBH  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''BGExDate'' and (ExeDate is null or ExeDate>SPSCList.BGDate) Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),'''') as BGExRem, ');
    SQL.Add('  IsNull((Select top 1 Count(LYBH)  from SPSCRm A where A.SPNO=SPSCList.SPNO and A.ItemNM=''BGExDate'' and (ExeDate is null or ExeDate>SPSCList.BGDate)  Group by  LYBH Order by COUNT(LYBH) desc,Max(ExeDate) asc),0) as BGExRemCount, ');
    SQL.Add('  Convert(Varchar,SPSCList.ShipDate,111) as ShipDate  ');
    SQL.Add('from SPSCList ');
    SQL.Add('where Article like ''%'+SR.Text+'%'' and GSBH='''+main.sGSBH+''' ');
     if DateSearch.ItemIndex=0 then   // ODate下單日期
     begin
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) between ')
     end else if DateSearch.ItemIndex=1 then // ShipDate 出貨日期
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ShipDate,111)) between ');
    SQL.add(''''+Formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    SQL.add(' and  ');
    SQL.add(''''+Formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    SQL.Add(') SPSCList ');
    SQL.Add('select * from #SPSCList');
    Active:=true;
  End;
  //
  if tmpQuery.RecordCount>0 then
  begin
    with SPSCQry do
    begin
      Active:=false;
      SQL.Clear;
      //
      SQL.Add('select ''檢查SPec'' as Item,''CKDate'' as Sym,CKDate,COUNT(CKDate) as Total, ');
      SQL.Add('      SUM(Case when CKDate>=CKExDate then 1 else 0 end ) as CKExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when CKDate>=CKExDate then 1 else 0 end )) as LackCKExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 CKExRem from #SPSCList A where (A.CKDate<A.CkExDate or A.CkExDate is null ) and A.CkDate=#SPSCList.CkDate order by A.CKExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 CKExRem from #SPSCList A where (A.CKDate<A.CkExDate or A.CkExDate is null ) and A.CkDate=#SPSCList.CkDate order by A.CKExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem ');
      SQL.Add('Group by CKDate ');//where CkDate<CkExDate or CkExDate is null
      //
      SQL.Add('Union all ');
      SQL.Add('select ''做紙版'' as Item,''ZBDate'' as Sym,ZBDate,COUNT(ZBDate) as Total, ');
      SQL.Add('      SUM(Case when ZBDate>=ZBExDate then 1 else 0 end ) as ZBExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when ZBDate>=ZBExDate then 1 else 0 end )) as LackZBExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 ZBExRem from #SPSCList A where (A.ZBDate<A.ZBExDate or A.ZBExDate is null ) and A.ZBDate=#SPSCList.ZBDate order by A.ZBExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 ZBExRem from #SPSCList A where (A.ZBDate<A.ZBExDate or A.ZBExDate is null ) and A.ZBDate=#SPSCList.ZBDate order by A.ZBExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where ZBDate<ZBExDate or ZBExDate is null group by ZBDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''手剪試做'' as Item,''SJDate'' as Sym,SJDate,COUNT(SJDate) as Total, ');
      SQL.Add('      SUM(Case when SJDate>=SJExDate then 1 else 0 end ) as SJExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when SJDate>=SJExDate then 1 else 0 end )) as LackSJExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 SJExRem from #SPSCList A where (A.SJDate<A.SJExDate or A.SJExDate is null ) and A.SJDate=#SPSCList.SJDate order by A.SJExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 SJExRem from #SPSCList A where (A.SJDate<A.SJExDate or A.SJExDate is null ) and A.SJDate=#SPSCList.SJDate order by A.SJExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where SJDate<SJExDate or SJExDate is null group by SJDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''斬刀'' as Item,''JDDate'' as Sym,JDDate,COUNT(JDDate) as Total, ');
      SQL.Add('      SUM(Case when JDDate>=JDExDate then 1 else 0 end ) as JDExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when JDDate>=JDExDate then 1 else 0 end )) as LackJDExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 JDExRem from #SPSCList A where (A.JDDate<A.JDExDate or A.JDExDate is null ) and A.JDDate=#SPSCList.JDDate order by A.JDExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 JDExRem from #SPSCList A where (A.JDDate<A.JDExDate or A.JDExDate is null ) and A.JDDate=#SPSCList.JDDate order by A.JDExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where JDDate<JDExDate or JDExDate is null group by JDDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''網版'' as Item,''WBDate'' as Sym,WBDate,COUNT(WBDate) as Total, ');
      SQL.Add('      SUM(Case when WBDate>=WBExDate then 1 else 0 end ) as WBExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when WBDate>=WBExDate then 1 else 0 end )) as LackWBExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 WBExRem from #SPSCList A where (A.WBDate<A.WBExDate or A.WBExDate is null ) and A.WBDate=#SPSCList.WBDate order by A.WBExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 WBExRem from #SPSCList A where (A.WBDate<A.WBExDate or A.WBExDate is null ) and A.WBDate=#SPSCList.WBDate order by A.WBExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where WBDate<WBExDate or WBExDate is null group by WBDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''送Spec給採購'' as Item,''SPDate'' as Sym,SPDate,COUNT(SPDate) as Total, ');
      SQL.Add('      SUM(Case when SPDate>=SPExDate then 1 else 0 end ) as SPExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when SPDate>=SPExDate then 1 else 0 end )) as LackSPExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 SPExRem from #SPSCList A where (A.SPDate<A.SPExDate or A.SPExDate is null ) and A.SPDate=#SPSCList.SPDate order by A.SPExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 SPExRem from #SPSCList A where (A.SPDate<A.SPExDate or A.SPExDate is null ) and A.SPDate=#SPSCList.SPDate order by A.SPExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where SPDate<SPExDate or SPExDate is null group by SPDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''採購面料'' as Item,''MLDate'' as Sym,MLDate,COUNT(MLDate) as Total, ');
      SQL.Add('      SUM(Case when MLDate>=MLExDate then 1 else 0 end ) as MLExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when MLDate>=MLExDate then 1 else 0 end )) as LackMLExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 MLExRem from #SPSCList A where (A.MLDate<A.MLExDate or A.MLExDate is null ) and A.MLDate=#SPSCList.MLDate order by A.MLExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 MLExRem from #SPSCList A where (A.MLDate<A.MLExDate or A.MLExDate is null ) and A.MLDate=#SPSCList.MLDate order by A.MLExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where MLDate<MLExDate or MLExDate is null group by MLDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''採購副料'' as Item,''FLDate'' as Sym,FLDate,COUNT(FLDate) as Total, ');
      SQL.Add('      SUM(Case when FLDate>=FLExDate then 1 else 0 end ) as FLExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when FLDate>=FLExDate then 1 else 0 end )) as LackFLExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 FLExRem from #SPSCList A where (A.FLDate<A.FLExDate or A.FLExDate is null ) and A.FLDate=#SPSCList.FLDate order by A.FLExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 FLExRem from #SPSCList A where (A.FLDate<A.FLExDate or A.FLExDate is null ) and A.FLDate=#SPSCList.FLDate order by A.FLExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where FLDate<FLExDate or FLExDate is null group by FLDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''採購底料'' as Item,''DLDate'' as Sym,DLDate,COUNT(DLDate) as Total, ');
      SQL.Add('      SUM(Case when DLDate>=DLExDate then 1 else 0 end ) as DLExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when DLDate>=DLExDate then 1 else 0 end )) as LackDLExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 DLExRem from #SPSCList A where (A.DLDate<A.DLExDate or A.DLExDate is null ) and A.DLDate=#SPSCList.DLDate order by A.DLExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 DLExRem from #SPSCList A where (A.DLDate<A.DLExDate or A.DLExDate is null ) and A.DLDate=#SPSCList.DLDate order by A.DLExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where DLDate<DLExDate or DLExDate is null group by DLDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''BOM表'' as Item,''BOMDate'' as Sym,BOMDate,COUNT(BOMDate) as Total, ');
      SQL.Add('      SUM(Case when BOMDate>=BOMExDate then 1 else 0 end ) as BOMExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when BOMDate>=BOMExDate then 1 else 0 end )) as LackBOMExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 BOMExRem from #SPSCList A where (A.BOMDate<A.BOMExDate or A.BOMExDate is null ) and A.BOMDate=#SPSCList.BOMDate order by A.BOMExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 BOMExRem from #SPSCList A where (A.BOMDate<A.BOMExDate or A.BOMExDate is null ) and A.BOMDate=#SPSCList.BOMDate order by A.BOMExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where BOMDate<BOMExDate or BOMExDate is null group by BOMDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''做色卡/吊牌'' as Item,''SKDate'' as Sym,SKDate,COUNT(SKDate) as Total, ');
      SQL.Add('      SUM(Case when SKDate>=SKExDate then 1 else 0 end ) as SKExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when SKDate>=SKExDate then 1 else 0 end )) as LackSKExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 SKExRem from #SPSCList A where (A.SKDate<A.SKExDate or A.SKExDate is null ) and A.SKDate=#SPSCList.SKDate order by A.SKExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 SKExRem from #SPSCList A where (A.SKDate<A.SKExDate or A.SKExDate is null ) and A.SKDate=#SPSCList.SKDate order by A.SKExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where SKDate<SKExDate or SKExDate is null group by SKDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''用量計算'' as Item,''YLDate'' as Sym,YLDate,COUNT(YLDate) as Total, ');
      SQL.Add('      SUM(Case when YLDate>=YLExDate then 1 else 0 end ) as YLExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when YLDate>=YLExDate then 1 else 0 end )) as LackYLExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 YLExRem from #SPSCList A where (A.YLDate<A.YLExDate or A.YLExDate is null ) and A.YLDate=#SPSCList.YLDate order by A.YLExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 YLExRem from #SPSCList A where (A.YLDate<A.YLExDate or A.YLExDate is null ) and A.YLDate=#SPSCList.YLDate order by A.YLExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where YLDate<YLExDate or YLExDate is null group by YLDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''裁斷'' as Item,''CutDate'' as Sym,CutDate,COUNT(CutDate) as Total, ');
      SQL.Add('      SUM(Case when CutDate>=CutExDate then 1 else 0 end ) as CutExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when CutDate>=CutExDate then 1 else 0 end )) as LackCutExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 CutExRem from #SPSCList A where (A.CutDate<A.CutExDate or A.CutExDate is null ) and A.CutDate=#SPSCList.CutDate order by A.CutExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 CutExRem from #SPSCList A where (A.CutDate<A.CutExDate or A.CutExDate is null ) and A.CutDate=#SPSCList.CutDate order by A.CutExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where CutDate<CutExDate or CutExDate is null group by CutDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''針車'' as Item,''SteDate'' as Sym,SteDate,COUNT(SteDate) as Total, ');
      SQL.Add('      SUM(Case when SteDate>=SteExDate then 1 else 0 end ) as SteExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when SteDate>=SteExDate then 1 else 0 end )) as LackSteExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 SteExRem from #SPSCList A where (A.SteDate<A.SteExDate or A.SteExDate is null ) and A.SteDate=#SPSCList.SteDate order by A.SteExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 SteExRem from #SPSCList A where (A.SteDate<A.SteExDate or A.SteExDate is null ) and A.SteDate=#SPSCList.SteDate order by A.SteExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where SteDate<SteExDate or SteExDate is null group by SteDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''成型'' as Item,''AseDate'' as Sym,AseDate,COUNT(AseDate) as Total, ');
      SQL.Add('      SUM(Case when AseDate>=AseExDate then 1 else 0 end ) as AseExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when AseDate>=AseExDate then 1 else 0 end )) as LackAseExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 AseExRem from #SPSCList A where (A.AseDate<A.AseExDate or A.AseExDate is null ) and A.AseDate=#SPSCList.AseDate order by A.AseExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 AseExRem from #SPSCList A where (A.AseDate<A.AseExDate or A.AseExDate is null ) and A.AseDate=#SPSCList.AseDate order by A.AseExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where AseDate<AseExDate or AseExDate is null group by AseDate ');
      //
      SQL.Add('Union all ');
      SQL.Add('select ''報價'' as Item,''BGDate'' as Sym,BGDate,COUNT(BGDate) as Total, ');
      SQL.Add('      SUM(Case when BGDate>=BGExDate then 1 else 0 end ) as BGExDate, ');
      SQL.Add('      (COUNT(Article)-SUM(Case when BGDate>=BGExDate then 1 else 0 end )) as LackBGExDate, ');
      SQL.Add('      (Select YWSM from SPSCRmS where LYBH=(select  top 1 BGExRem from #SPSCList A where (A.BGDate<A.BGExDate or A.BGExDate is null ) and A.BGDate=#SPSCList.BGDate order by A.BGExRemCount desc)) as YWSM, ');
      SQL.Add('      (Select ZWSM from SPSCRmS where LYBH=(select  top 1 BGExRem from #SPSCList A where (A.BGDate<A.BGExDate or A.BGExDate is null ) and A.BGDate=#SPSCList.BGDate order by A.BGExRemCount desc)) as ZWSM ');
      SQL.Add('from #SPSCList ');
      SQL.Add('left join SPSCRms on SPSCRmS.LYBH=CKExRem  ');
      SQL.Add('where BGDate<BGExDate or BGExDate is null group by BGDate ');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
  //
  tmpQuery.Active:=false;
  ToolPanel.Visible:=false;

end;

procedure TSampleTrackingReason.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TSampleTrackingReason.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DTp1.Date:=Date()-15;
  DTP2.Date:=Date()+15;
end;
//
procedure TSampleTrackingReason.bbt6Click(Sender: TObject);
begin
   //判斷是否匯出全部
  if  Messagedlg(Pchar('Export Plan Department Format?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportPlanFormatData();
  end else
  begin
    ExportDefaultData();
  end;
end;
//
procedure TSampleTrackingReason.ExportDefaultData();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  SPSCQry.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   SPSCQry.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=SPSCQry.fields[i].FieldName;
            end;

          SPSCQry.First;
          j:=2;
          while   not   SPSCQry.Eof   do
            begin
              for   i:=0   to  SPSCQry.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=SPSCQry.Fields[i].Value;
              end;
            SPSCQry.Next;
            inc(j);
            end;
         eclapp.columns.autofit;
         showmessage('Succeed');
         eclApp.Visible:=True;
      except
          on   F:Exception   do
            showmessage(F.Message);
      end;
    end;
end;
//
procedure TSampleTrackingReason.ExportPlanFormatData();
var eclApp,WorkBook:olevariant;
    i,j,Voffset,Hoffset,index:integer;
begin
   if FileExists(AppDir+'Additional\SampleReason.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SampleReason.xls'),Pchar(AppDir+'Additional\SampleReason.xls'),false);
   end;
   if FileExists(AppDir+'Additional\SampleReason.xls') then
   begin
      if  SPSCQry.active  then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\SampleReason.xls');
          eclApp.WorkSheets[1].Activate;//第一頁為主
          index:=0;
          Hoffset:=1;
          Voffset:=9;
          //Tracking List Data
          SPSCQry.First;
          for i:=0 to SPSCQry.RecordCount-1 do
          begin
            for   j:=0   to  SPSCQry.Fieldcount-1  do
            begin
              eclApp.Cells(Voffset+index,j+1):=SPSCQry.Fields[j].Value;//ODDate Start 下單日開始
            end;
            SPSCQry.Next;
            inc(index);
          end;
          showmessage('Succeed');
          eclApp.Visible:=True;
        except
            on   F:Exception   do
              showmessage(F.Message);
        end;
      end;
   end;
end;
//
end.
