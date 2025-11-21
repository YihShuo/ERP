unit SampleTrackingStatistics1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons, ExtCtrls, DB,
  DBTables,comobj;

type
  TSampleTrackingStatistics = class(TForm)
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
    SPSCQrycount: TIntegerField;
    SPSCQryCKExDate: TIntegerField;
    SPSCQryLackCKExDate: TIntegerField;
    SPSCQryRelyDate: TIntegerField;
    SPSCQryLackRelyDate: TIntegerField;
    SPSCQryZBExDate: TIntegerField;
    SPSCQryLackZBExDate: TIntegerField;
    SPSCQrySJExDate: TIntegerField;
    SPSCQryLackSJExDate: TIntegerField;
    SPSCQryJDExDate: TIntegerField;
    SPSCQryLackJDExDate: TIntegerField;
    SPSCQryWBExDate: TIntegerField;
    SPSCQryLackWBExDate: TIntegerField;
    SPSCQrySPExDate: TIntegerField;
    SPSCQryLackSPExDate: TIntegerField;
    SPSCQryMLExDate: TIntegerField;
    SPSCQryLackMLExDate: TIntegerField;
    SPSCQryFLExDate: TIntegerField;
    SPSCQryLackFLExDate: TIntegerField;
    SPSCQryDLExDate: TIntegerField;
    SPSCQryLackDLExDate: TIntegerField;
    SPSCQryBOMExDate: TIntegerField;
    SPSCQryLackBOMExDate: TIntegerField;
    SPSCQrySKExDate: TIntegerField;
    SPSCQryLackSKExDate: TIntegerField;
    SPSCQryYLExDate: TIntegerField;
    SPSCQryLackYLExDate: TIntegerField;
    SPSCQryCutExDate: TIntegerField;
    SPSCQryLackCutExDate: TIntegerField;
    SPSCQrySteExDate: TIntegerField;
    SPSCQryLackSteExDate: TIntegerField;
    SPSCQryAseExDate: TIntegerField;
    SPSCQryLackAseExDate: TIntegerField;
    SPSCQryBGExDate: TIntegerField;
    SPSCQryLackBGExDate: TIntegerField;
    SPSCQryODate: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEhDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    AppDir:String;
    { Private declarations }
    procedure ExportDefaultData();
    procedure ExportPlanFormatData();
  public
    { Public declarations }
  end;

var
  SampleTrackingStatistics: TSampleTrackingStatistics;

implementation
  uses main1,FunUnit;
{$R *.dfm}

procedure TSampleTrackingStatistics.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSampleTrackingStatistics.FormDestroy(Sender: TObject);
begin
  SampleTrackingStatistics:=nil;
end;

procedure TSampleTrackingStatistics.QryBtnClick(Sender: TObject);
begin
  //
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
    SQL.Add('where Article like ''%'+SR.Text+'%''  and GSBH='''+main.sGSBH+''' ');
     if DateSearch.ItemIndex=0 then   // ODate下單日期
     begin
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ODate,111)) between ')
     end else if DateSearch.ItemIndex=1 then // ShipDate 出貨日期
       sql.add('and convert(smalldatetime,convert(varchar,SPSCList.ShipDate,111)) between ');
    SQL.add(''''+Formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
    SQL.add(' and  ');
    SQL.add(''''+Formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    SQL.Add(') SPSCList ');
    //
    SQL.Add('select COUNT(Article) as count ,');
    SQL.Add('        SUM(Case when CKExDate<>'''' and CKExDate IS not null then 1 else 0 end ) as CKExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when CKExDate<>'''' and CKExDate IS not null then 1 else 0 end )) as LackCKExDate, ');
    SQL.Add('        SUM(Case when RelyDate<>'''' and RelyDate IS not null then 1 else 0 end ) as RelyDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when RelyDate<>'''' and RelyDate IS not null then 1 else 0 end )) as LackRelyDate, ');
    SQL.Add('        SUM(Case when ZBExDate<>'''' and ZBExDate IS not null then 1 else 0 end ) as ZBExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when ZBExDate<>'''' and ZBExDate IS not null then 1 else 0 end )) as LackZBExDate,  ');
    SQL.Add('        SUM(Case when SJExDate<>'''' and SJExDate IS not null then 1 else 0 end ) as SJExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when SJExDate<>'''' and SJExDate IS not null then 1 else 0 end )) as LackSJExDate, ');
    SQL.Add('        SUM(Case when JDExDate<>'''' and JDExDate IS not null then 1 else 0 end ) as JDExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when JDExDate<>'''' and JDExDate IS not null then 1 else 0 end )) as LackJDExDate, ');
    SQL.Add('        SUM(Case when WBExDate<>'''' and WBExDate IS not null then 1 else 0 end ) as WBExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when WBExDate<>'''' and WBExDate IS not null then 1 else 0 end )) as LackWBExDate, ');
    SQL.Add('        SUM(Case when SPExDate<>'''' and SPExDate IS not null then 1 else 0 end ) as SPExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when SPExDate<>'''' and SPExDate IS not null then 1 else 0 end )) as LackSPExDate, ');
    SQL.Add('        SUM(Case when MLExDate<>'''' and MLExDate IS not null then 1 else 0 end ) as MLExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when MLExDate<>'''' and MLExDate IS not null then 1 else 0 end )) as LackMLExDate, ');
    SQL.Add('        SUM(Case when FLExDate<>'''' and FLExDate IS not null then 1 else 0 end ) as FLExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when FLExDate<>'''' and FLExDate IS not null then 1 else 0 end )) as LackFLExDate, ');
    SQL.Add('        SUM(Case when DLExDate<>'''' and DLExDate IS not null then 1 else 0 end ) as DLExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when DLExDate<>'''' and DLExDate IS not null then 1 else 0 end )) as LackDLExDate, ');
    SQL.Add('        SUM(Case when BOMExDate<>'''' and BOMExDate IS not null then 1 else 0 end ) as BOMExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when BOMExDate<>'''' and BOMExDate IS not null then 1 else 0 end )) as LackBOMExDate, ');
    SQL.Add('        SUM(Case when SKExDate<>'''' and SKExDate IS not null then 1 else 0 end ) as SKExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when SKExDate<>'''' and SKExDate IS not null then 1 else 0 end )) as LackSKExDate, ');
    SQL.Add('        SUM(Case when YLExDate<>'''' and YLExDate IS not null then 1 else 0 end ) as YLExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when YLExDate<>'''' and YLExDate IS not null then 1 else 0 end )) as LackYLExDate, ');
    SQL.Add('        SUM(Case when CutExDate<>'''' and CutExDate IS not null then 1 else 0 end ) as CutExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when CutExDate<>'''' and CutExDate IS not null then 1 else 0 end )) as LackCutExDate, ');
    SQL.Add('        SUM(Case when SteExDate<>'''' and SteExDate IS not null then 1 else 0 end ) as SteExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when SteExDate<>'''' and SteExDate IS not null then 1 else 0 end )) as LackSteExDate, ');
    SQL.Add('        SUM(Case when AseExDate<>'''' and AseExDate IS not null then 1 else 0 end ) as AseExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when AseExDate<>'''' and AseExDate IS not null then 1 else 0 end )) as LackAseExDate, ');
    SQL.Add('        SUM(Case when BGExDate<>'''' and BGExDate IS not null then 1 else 0 end ) as BGExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when BGExDate<>'''' and BGExDate IS not null then 1 else 0 end )) as LackBGExDate, ');
    SQL.Add('       Convert(varchar,ODate,111) as ODate ');
    SQL.Add('from #SPSCList ');
    SQL.Add('group by ODate ');
    SQL.Add('union all ');
    SQL.Add('select COUNT(Article) as count ,');
    SQL.Add('        SUM(Case when CKExDate<>'''' and CKExDate IS not null then 1 else 0 end ) as CKExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when CKExDate<>'''' and CKExDate IS not null then 1 else 0 end )) as LackCKExDate, ');
    SQL.Add('        SUM(Case when RelyDate<>'''' and RelyDate IS not null then 1 else 0 end ) as RelyDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when RelyDate<>'''' and RelyDate IS not null then 1 else 0 end )) as LackRelyDate, ');
    SQL.Add('        SUM(Case when ZBExDate<>'''' and ZBExDate IS not null then 1 else 0 end ) as ZBExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when ZBExDate<>'''' and ZBExDate IS not null then 1 else 0 end )) as LackZBExDate,  ');
    SQL.Add('        SUM(Case when SJExDate<>'''' and SJExDate IS not null then 1 else 0 end ) as SJExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when SJExDate<>'''' and SJExDate IS not null then 1 else 0 end )) as LackSJExDate, ');
    SQL.Add('        SUM(Case when JDExDate<>'''' and JDExDate IS not null then 1 else 0 end ) as ZBExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when JDExDate<>'''' and JDExDate IS not null then 1 else 0 end )) as LackJDExDate, ');
    SQL.Add('        SUM(Case when WBExDate<>'''' and WBExDate IS not null then 1 else 0 end ) as WBExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when WBExDate<>'''' and WBExDate IS not null then 1 else 0 end )) as LackWBExDate, ');
    SQL.Add('        SUM(Case when SPExDate<>'''' and SPExDate IS not null then 1 else 0 end ) as SPExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when SPExDate<>'''' and SPExDate IS not null then 1 else 0 end )) as LackSPExDate, ');
    SQL.Add('        SUM(Case when MLExDate<>'''' and MLExDate IS not null then 1 else 0 end ) as MLExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when MLExDate<>'''' and MLExDate IS not null then 1 else 0 end )) as LackMLExDate, ');
    SQL.Add('        SUM(Case when FLExDate<>'''' and FLExDate IS not null then 1 else 0 end ) as FLExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when FLExDate<>'''' and FLExDate IS not null then 1 else 0 end )) as LackFLExDate, ');
    SQL.Add('        SUM(Case when DLExDate<>'''' and DLExDate IS not null then 1 else 0 end ) as DLExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when DLExDate<>'''' and DLExDate IS not null then 1 else 0 end )) as LackDLExDate, ');
    SQL.Add('        SUM(Case when DLExDate<>'''' and DLExDate IS not null then 1 else 0 end ) as DLExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when DLExDate<>'''' and DLExDate IS not null then 1 else 0 end )) as LackDLExDate, ');
    SQL.Add('        SUM(Case when BOMExDate<>'''' and BOMExDate IS not null then 1 else 0 end ) as BOMExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when BOMExDate<>'''' and BOMExDate IS not null then 1 else 0 end )) as LackBOMExDate, ');
    SQL.Add('        SUM(Case when SKExDate<>'''' and SKExDate IS not null then 1 else 0 end ) as SKExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when SKExDate<>'''' and SKExDate IS not null then 1 else 0 end )) as LackSKExDate, ');
    SQL.Add('        SUM(Case when YLExDate<>'''' and YLExDate IS not null then 1 else 0 end ) as YLExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when YLExDate<>'''' and YLExDate IS not null then 1 else 0 end )) as LackYLExDate, ');
    SQL.Add('        SUM(Case when CutExDate<>'''' and CutExDate IS not null then 1 else 0 end ) as CutExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when CutExDate<>'''' and CutExDate IS not null then 1 else 0 end )) as LackCutExDate, ');
    SQL.Add('        SUM(Case when SteExDate<>'''' and SteExDate IS not null then 1 else 0 end ) as SteExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when SteExDate<>'''' and SteExDate IS not null then 1 else 0 end )) as LackSteExDate, ');
    SQL.Add('        SUM(Case when BGExDate<>'''' and BGExDate IS not null then 1 else 0 end ) as BGExDate, ');
    SQL.Add('        (COUNT(Article)-SUM(Case when BGExDate<>'''' and BGExDate IS not null then 1 else 0 end )) as LackBGExDate, ');
    SQL.Add('        ''Total'' as ODate ');
    SQL.Add('from #SPSCList ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  ToolPanel.Visible:=false;

end;

procedure TSampleTrackingStatistics.BB1Click(Sender: TObject);
begin
  ToolPanel.Visible:=true;
end;

procedure TSampleTrackingStatistics.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DTp1.Date:=Date()-15;
  DTP2.Date:=Date()+15;
end;
//
procedure TSampleTrackingStatistics.bbt6Click(Sender: TObject);
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
procedure TSampleTrackingStatistics.ExportDefaultData();
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
procedure TSampleTrackingStatistics.ExportPlanFormatData();
var eclApp,WorkBook:olevariant;
    i,j,Voffset,Hoffset,index:integer;
begin
   if FileExists(AppDir+'Additional\SampleStatistics.xls')=false  then
   begin
     if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\SampleStatistics.xls'),Pchar(AppDir+'Additional\SampleStatistics.xls'),false);
   end;
   if FileExists(AppDir+'Additional\SampleStatistics.xls') then
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
          eclApp.WorkBooks.Open(AppDir+'Additional\SampleStatistics.xls');
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
procedure TSampleTrackingStatistics.DBGridEhDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (SPSCQry.FieldByName('ODate').AsString='Total' ) then
  begin
    DBGridEh.canvas.brush.Color:=clAqua;
    DBGridEh.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

end.
