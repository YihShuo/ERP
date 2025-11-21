unit SampleTrackingRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls, DB,
  DBTables,comobj;

type
  TSampleTrackingRpt = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    DBGridEh: TDBGridEh;
    ToolPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    QryBtn: TButton;
    SR: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    SPSCQry: TQuery;
    DS: TDataSource;
    SPSCQrySPNO: TIntegerField;
    SPSCQryArticle: TStringField;
    SPSCQryGSBH: TStringField;
    SPSCQryStage: TStringField;
    SPSCQryODate: TDateTimeField;
    SPSCQryCkDate: TStringField;
    SPSCQryCkExDate: TStringField;
    SPSCQryRelyDate: TStringField;
    SPSCQryZBDate: TStringField;
    SPSCQryZBExDate: TStringField;
    SPSCQrySJDate: TStringField;
    SPSCQrySJExDate: TStringField;
    SPSCQryJDDate: TStringField;
    SPSCQryJDExDate: TStringField;
    SPSCQryWBDate: TStringField;
    SPSCQryWBExDate: TStringField;
    SPSCQrySPDate: TStringField;
    SPSCQrySPExDate: TStringField;
    SPSCQryMLDate: TStringField;
    SPSCQryMLExDate: TStringField;
    SPSCQryFLDate: TStringField;
    SPSCQryFLExDate: TStringField;
    SPSCQryDLDate: TStringField;
    SPSCQryDLExDate: TStringField;
    SPSCQryBOMDate: TStringField;
    SPSCQryBOMExDate: TStringField;
    SPSCQrySKDate: TStringField;
    SPSCQrySKExDate: TStringField;
    SPSCQryYLDate: TStringField;
    SPSCQryYLExDate: TStringField;
    SPSCQryCutDate: TStringField;
    SPSCQryCutExDate: TStringField;
    SPSCQrySteDate: TStringField;
    SPSCQrySteExDate: TStringField;
    SPSCQryAseDate: TStringField;
    SPSCQryAseExDate: TStringField;
    SPSCQryBGDate: TStringField;
    SPSCQryBGExDate: TStringField;
    SPSCQryShipDate: TStringField;
    DateSearch: TComboBox;
    SPSCQryPairs: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEhDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:string;
    NDate:string;
    { Private declarations }
    procedure ExportPlanFormatData();
    procedure ExportDefaultData();
  public
    { Public declarations }
  end;

var
  SampleTrackingRpt: TSampleTrackingRpt;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TSampleTrackingRpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSampleTrackingRpt.FormDestroy(Sender: TObject);
begin
  SampleTrackingRpt:=nil;
end;
//
procedure TSampleTrackingRpt.QryBtnClick(Sender: TObject);
begin
  with SPSCQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#SPSCList'') is not null  ');
    SQL.Add('   begin   drop table #SPSCList end ');
    SQL.Add('select * into #SPSCList ');
    SQL.Add('from(');
    SQL.Add('  Select SPSCList.SPNO,SPSCList.Article,SPSCList.GSBH,SPSCList.Stage,SPSCList.Pairs,SPSCList.ODate,Convert(Varchar,SPSCList.CkDate,111) as CkDate, ');
    SQL.Add('  Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''CkExDate''),111) as CkExDate, ');
    SQL.Add('  Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''RelyDate''),111) as RelyDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.ZBDate,111) as ZBDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''ZBExDate''),111) as ZBExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.SJDate,111) as SJDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SJExDate''),111) as SJExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.JDDate,111) as JDDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''JDExDate''),111) as JDExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.WBDate,111) as WBDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''WBExDate''),111) as WBExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.SPDate,111) as SPDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SPExDate''),111) as SPExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.MLDate,111) as MLDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''MLExDate''),111) as MLExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.FLDate,111) as FLDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''FLExDate''),111) as FLExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.DLDate,111) as DLDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''DLExDate''),111) as DLExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.BOMDate,111) as BOMDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''BOMExDate''),111) as BOMExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.SKDate,111) as SKDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SKExDate''),111) as SKExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.YLDate,111) as YLDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''YLExDate''),111) as YLExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.CutDate,111) as CutDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''CutExDate''),111) as CutExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.SteDate,111) as SteDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''SteExDate''),111) as SteExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.AseDate,111) as AseDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''AseExDate''),111) as AseExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.BGDate,111) as BGDate,Convert(Varchar,(Select MAX(ExeDate) from SPSCRm A where A.SPNO=SPSCList.SPNO and ItemNM=''BGExDate''),111) as BGExDate, ');
    SQL.Add('  Convert(Varchar,SPSCList.ShipDate,111) as ShipDate  ');
    SQL.Add('from SPSCList ');
    SQL.Add('where Article like ''%'+SR.Text+'%'' and GSBH='''+main.sGSBH+'''  ');
     if DateSearch.ItemIndex=0 then   // ODate下單日期
     begin
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) between ')
     end else if DateSearch.ItemIndex=1 then // ShipDate 出貨日期
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ShipDate,111)) between ');
    SQL.add(''''+Formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    SQL.add(' and  ');
    SQL.add(''''+Formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    SQL.Add(') SPSCList ');
    //SQL.Add('order by SPSCList.ODate ');

    SQL.Add('Select * from #SPSCList');
    SQL.Add('Union All ');
    SQL.Add('select NULL,''Total'',NULL,NULL,NULL,NULL,convert(varchar,COUNT(CkDate)),NULL,NULL,convert(varchar,Count(ZBDate)), ');
    SQL.Add('       NULL,convert(varchar,Count(SJDate)),NULL,convert(varchar,Count(JDDate)),NULL,convert(varchar,Count(WBDate)),NULL,convert(varchar,Count(SPDate)),');
    SQL.Add('       NULL,convert(varchar,Count(MLDate)),NULL,convert(varchar,Count(FLDate)),NULL,convert(varchar,Count(DLDate)),NULL,convert(varchar,Count(BOMDate)),');
    SQL.Add('       NULL,convert(varchar,Count(SKDate)),NULL,convert(varchar,Count(YLDate)),NULL,convert(varchar,Count(CutDate)),NULL,convert(varchar,Count(SteDate)),');
    SQL.Add('       NULL,convert(varchar,Count(AseDate)),NULL,convert(varchar,COUNT(BGDate)),NULL,NULL ');
    SQL.Add('from #SPSCList ');
    //完成率
    SQL.Add('Union All ');
    SQL.Add('Select NULL,''Finish Rate'',NULL,NULL,NULL,NULL,convert(varchar,100*SUM(Case when CkDate is not NULL and CkExDate IS not null then 1 else 0 end )/SUM(Case when CkDate is not NULL then 1 else 0 end ))+''%'',NULL, ');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when ZBDate is not NULL and ZBExDate IS not null then 1 else 0 end )/SUM(Case when ZBDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when SJDate is not NULL and SJExDate IS not null then 1 else 0 end )/SUM(Case when SJDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when JDDate is not NULL and JDExDate IS not null then 1 else 0 end )/SUM(Case when JDDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when WBDate is not NULL and WBExDate IS not null then 1 else 0 end )/SUM(Case when WBDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when SPDate is not NULL and SPExDate IS not null then 1 else 0 end )/SUM(Case when SPDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when MLDate is not NULL and MLExDate IS not null then 1 else 0 end )/SUM(Case when MLDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when FLDate is not NULL and FLExDate IS not null then 1 else 0 end )/SUM(Case when FLDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when DLDate is not NULL and DLExDate IS not null then 1 else 0 end )/SUM(Case when DLDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when BOMDate is not NULL and BOMExDate IS not null then 1 else 0 end )/SUM(Case when BOMDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when SKDate is not NULL and SKExDate IS not null then 1 else 0 end )/SUM(Case when SKDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when YLDate is not NULL and YLExDate IS not null then 1 else 0 end )/SUM(Case when YLDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when CutDate is not NULL and CutExDate IS not null then 1 else 0 end )/SUM(Case when CutDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when SteDate is not NULL and SteExDate IS not null then 1 else 0 end )/SUM(Case when SteDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when AseDate is not NULL and AseExDate IS not null then 1 else 0 end )/SUM(Case when AseDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when BGDate is not NULL and BGExDate IS not null then 1 else 0 end )/SUM(Case when BGDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,NULL ');
    SQL.Add('from #SPSCList ');
    //準時率
    SQL.Add('Union All ');
    SQL.Add('Select NULL,''No Delay Rate'',NULL,NULL,NULL,NULL,convert(varchar,100*SUM(Case when CkDate >= CkExDate  then 1 else 0 end )/SUM(Case when CkDate is not NULL then 1 else 0 end ))+''%'',NULL,');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when ZBDate >= ZBExDate  then 1 else 0 end )/SUM(Case when ZBDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when SJDate >= SJExDate  then 1 else 0 end )/SUM(Case when SJDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when JDDate >= JDExDate  then 1 else 0 end )/SUM(Case when JDDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when WBDate >= WBExDate  then 1 else 0 end )/SUM(Case when WBDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when SPDate >= SPExDate  then 1 else 0 end )/SUM(Case when SPDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when MLDate >= MLExDate  then 1 else 0 end )/SUM(Case when MLDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when FLDate >= FLExDate  then 1 else 0 end )/SUM(Case when FLDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when DLDate >= DLExDate  then 1 else 0 end )/SUM(Case when DLDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when BOMDate >=  BOMExDate  then 1 else 0 end )/SUM(Case when BOMDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when SKDate >=  SKExDate  then 1 else 0 end )/SUM(Case when SKDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when YLDate >=  YLExDate  then 1 else 0 end )/SUM(Case when YLDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when CutDate >= CutExDate  then 1 else 0 end )/SUM(Case when CutDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when SteDate >=  SteExDate  then 1 else 0 end )/SUM(Case when SteDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when AseDate >=  AseExDate  then 1 else 0 end )/SUM(Case when AseDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100*SUM(Case when BGDate >=  BGExDate  then 1 else 0 end )/SUM(Case when BGDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,NULL ');
    SQL.Add('from #SPSCList ');
    //不準時率
    SQL.Add('Union All ');
    SQL.Add('Select NULL,''Delay Rate'',NULL,NULL,NULL,NULL,convert(varchar,100-100*SUM(Case when CkDate >= CkExDate  then 1 else 0 end )/SUM(Case when CkDate is not NULL then 1 else 0 end ))+''%'',NULL,');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when ZBDate >= ZBExDate  then 1 else 0 end )/SUM(Case when ZBDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when SJDate >= SJExDate  then 1 else 0 end )/SUM(Case when SJDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when JDDate >= JDExDate  then 1 else 0 end )/SUM(Case when JDDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when WBDate >= WBExDate  then 1 else 0 end )/SUM(Case when WBDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when SPDate >= SPExDate  then 1 else 0 end )/SUM(Case when SPDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when MLDate >= MLExDate  then 1 else 0 end )/SUM(Case when MLDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when FLDate >= FLExDate  then 1 else 0 end )/SUM(Case when FLDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when DLDate >= DLExDate  then 1 else 0 end )/SUM(Case when DLDate is not NULL then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when BOMDate >=  BOMExDate  then 1 else 0 end )/SUM(Case when BOMDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when SKDate >=  SKExDate  then 1 else 0 end )/SUM(Case when SKDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when YLDate >=  YLExDate  then 1 else 0 end )/SUM(Case when YLDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when CutDate >= CutExDate  then 1 else 0 end )/SUM(Case when CutDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when SteDate >=  SteExDate  then 1 else 0 end )/SUM(Case when SteDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when AseDate >=  AseExDate  then 1 else 0 end )/SUM(Case when AseDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,convert(varchar,100-100*SUM(Case when BGDate >=  BGExDate  then 1 else 0 end )/SUM(Case when BGDate is not NULL  then 1 else NULL end ))+''%'',');
    SQL.Add('       NULL,NULL ');
    SQL.Add('from #SPSCList ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  ToolPanel.Visible:=true;
end;
//
procedure TSampleTrackingRpt.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;
//
procedure TSampleTrackingRpt.ExportDefaultData();
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
procedure TSampleTrackingRpt.bbt6Click(Sender: TObject);
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

procedure TSampleTrackingRpt.DBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //
  if ((SPSCQry.FieldByName('CkExDate').IsNull=false) and (SPSCQry.FieldByName('RelyDate').IsNull=false) and (SPSCQry.FieldByName('ZBExDate').IsNull=false)  and (SPSCQry.FieldByName('SJExDate').IsNull=false)  and (SPSCQry.FieldByName('JDExDate').IsNull=false)
       and (SPSCQry.FieldByName('WBExDate').IsNull=false) and (SPSCQry.FieldByName('SpExDate').IsNull=false)  and (SPSCQry.FieldByName('MLExDate').IsNull=false)  and (SPSCQry.FieldByName('FLExDate').IsNull=false)  and (SPSCQry.FieldByName('DLExDate').IsNull=false)
       and (SPSCQry.FieldByName('YLExDate').IsNull=false) and (SPSCQry.FieldByName('BOMExDate').IsNull=false) and (SPSCQry.FieldByName('SKExDate').IsNull=false)   and (SPSCQry.FieldByName('BGExDate').IsNull=false) and (SPSCQry.FieldByName('CutExDate').IsNull=false)
        and (SPSCQry.FieldByName('SteExDate').IsNull=false)  and (SPSCQry.FieldByName('AseExDate').IsNull=false) ) then
  begin
    DBGridEh.Canvas.Font.Color:=clBlue;
    DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  if SPSCQry.FieldByName('SPNO').AsString<>'' then
  begin
    DBGridEh.Canvas.Font.Color:=clBlack;
    DBGridEh.Canvas.Brush.Color:=clYellow;
    if ((SPSCQry.FieldByName('CkDate').AsString<SPSCQry.FieldByName('CkExDate').AsString ) or ((SPSCQry.FieldByName('CkDate').Value < NDate) and (SPSCQry.FieldByName('CkExDate').AsString=''))) then
    begin
     if DataCol = 6 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('ZBDate').AsString<SPSCQry.FieldByName('ZBExDate').AsString ) or ((SPSCQry.FieldByName('ZBDate').Value < NDate) and (SPSCQry.FieldByName('ZBExDate').AsString=''))) then
    begin
     if DataCol = 9 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('SJDate').AsString<SPSCQry.FieldByName('SJExDate').AsString ) or ((SPSCQry.FieldByName('SJDate').AsString < NDate) and (SPSCQry.FieldByName('SJExDate').AsString=''))) then
    begin
     if DataCol = 11 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('JDDate').AsString<SPSCQry.FieldByName('JDExDate').AsString ) or ((SPSCQry.FieldByName('JDDate').Value < NDate) and (SPSCQry.FieldByName('JDExDate').AsString=''))) then
    begin
     if DataCol = 13 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('WBDate').AsString<SPSCQry.FieldByName('WBExDate').AsString ) or ((SPSCQry.FieldByName('WBDate').Value < NDate) and (SPSCQry.FieldByName('WBExDate').AsString=''))) then
    begin
     if DataCol = 15 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('SPDate').AsString<SPSCQry.FieldByName('SPExDate').AsString ) or ((SPSCQry.FieldByName('SPDate').AsString < NDate) and (SPSCQry.FieldByName('SPExDate').AsString=''))) then
    begin
     if DataCol = 17 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('MLDate').AsString<SPSCQry.FieldByName('MLExDate').AsString ) or ((SPSCQry.FieldByName('MLDate').AsString < NDate) and (SPSCQry.FieldByName('MLExDate').AsString=''))) then
    begin
     if DataCol = 19 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('FLDate').AsString<SPSCQry.FieldByName('FLExDate').AsString ) or ((SPSCQry.FieldByName('FLDate').AsString < NDate) and (SPSCQry.FieldByName('FLExDate').AsString=''))) then
    begin
     if DataCol = 21 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('DLDate').AsString<SPSCQry.FieldByName('DLExDate').AsString ) or ((SPSCQry.FieldByName('DLDate').AsString < NDate) and (SPSCQry.FieldByName('DLExDate').AsString=''))) then
    begin
     if DataCol = 23 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('BOMDate').AsString<SPSCQry.FieldByName('BOMExDate').AsString ) or ((SPSCQry.FieldByName('BOMDate').AsString < NDate) and (SPSCQry.FieldByName('BOMExDate').AsString=''))) then
    begin
     if DataCol = 25 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('SKDate').AsString<SPSCQry.FieldByName('SKExDate').AsString ) or ((SPSCQry.FieldByName('SKDate').AsString < NDate) and (SPSCQry.FieldByName('SKExDate').AsString=''))) then
    begin
     if DataCol = 27 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('YLDate').AsString<SPSCQry.FieldByName('YLExDate').AsString ) or ((SPSCQry.FieldByName('YLDate').AsString < NDate) and (SPSCQry.FieldByName('YLExDate').AsString=''))) then
    begin
     if DataCol = 29 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('CutDate').AsString<SPSCQry.FieldByName('CutExDate').AsString ) or ((SPSCQry.FieldByName('CutDate').AsString < NDate) and (SPSCQry.FieldByName('CutExDate').AsString=''))) then
    begin
     if DataCol = 31 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('SteDate').AsString<SPSCQry.FieldByName('SteExDate').AsString ) or ((SPSCQry.FieldByName('SteDate').AsString < NDate) and (SPSCQry.FieldByName('SteExDate').AsString=''))) then
    begin
     if DataCol = 33 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('AseDate').AsString<SPSCQry.FieldByName('AseExDate').AsString ) or ((SPSCQry.FieldByName('AseDate').AsString < NDate) and (SPSCQry.FieldByName('AseExDate').AsString=''))) then
    begin
     if DataCol = 35 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
    if ((SPSCQry.FieldByName('BGDate').AsString<SPSCQry.FieldByName('BGExDate').AsString ) or ((SPSCQry.FieldByName('BGDate').AsString < NDate) and (SPSCQry.FieldByName('BGExDate').AsString=''))) then
    begin
     if DataCol = 37 then
       DBGridEh.DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end;
    //
  end else
  begin
    DBGridEh.canvas.brush.Color:=clAqua;
    DBGridEh.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;

end;

procedure TSampleTrackingRpt.FormCreate(Sender: TObject);
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  DTp1.Date:=Date()-15;
  DTP2.Date:=Date()+15;
  NDate:=FormatDateTime('YYYY/MM/DD',Date());
  //

end;

//
procedure TSampleTrackingRpt.ExportPlanFormatData();
var eclApp,WorkBook:olevariant;
    i,j,Voffset,Hoffset,index:integer;
begin
   if FileExists(AppDir+'Additional\SampleTracking.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SampleTracking.xls'),Pchar(AppDir+'Additional\SampleTracking.xls'),false);
   end;
   if FileExists(AppDir+'Additional\SampleTracking.xls') then
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
          eclApp.WorkBooks.Open(AppDir+'Additional\SampleTracking.xls');
          eclApp.WorkSheets[1].Activate;//第一頁為主
          index:=0;
          Hoffset:=4;
          Voffset:=9;
          //Tracking List Data
          SPSCQry.First;
          for i:=1 to SPSCQry.RecordCount-4 do
          begin
            eclApp.Cells(Voffset+index,1):=index+1; //SPNO
            eclApp.Cells(Voffset+index,2):=SPSCQry.FieldByName('Article').Value; //Article
            eclApp.Cells(Voffset+index,3):=SPSCQry.FieldByName('Pairs').Value; //Pairs
            for   j:=Hoffset   to  SPSCQry.Fieldcount-2  do
            begin
              eclApp.Cells(Voffset+index,j):=SPSCQry.Fields[j+1].Value;//ODDate Start 下單日開始
            end;
            SPSCQry.Next;
            inc(index);
          end;
          //Statistics Data
          while Not SPSCQry.Eof do
          begin
            eclApp.Cells(Voffset+index,1):=''; //SPNO
            eclApp.Cells(Voffset+index,2):=SPSCQry.FieldByName('Article').Value; //Article
            eclApp.Cells(Voffset+index,3):=''; //Pairs
            for   j:=Hoffset   to  SPSCQry.Fieldcount-2  do
            begin
              eclApp.Range[eclApp.Cells[Voffset+index,j],eclApp.Cells[Voffset+index,j]].NumberFormatLocal:='@';
              eclApp.Cells(Voffset+index,j):=SPSCQry.Fields[j+1].Value;//ODDate Start 下單日開始
            end;
            SPSCQry.Next;
            inc(index);
          end;
          //
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
