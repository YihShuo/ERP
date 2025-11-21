unit StitchingAssemblyTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, Comobj,
  Menus;

type
  TStitchingAssemblyTracking = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Button1: TButton;
    ZLBHEdit: TEdit;
    Button2: TButton;
    XuongCB1: TComboBox;
    DepNMEdit1: TComboBox;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    Splitter2: TSplitter;
    DBGrid2: TDBGridEh;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    Track: TQuery;
    TrackListNo: TStringField;
    TrackDemandDate: TDateTimeField;
    TrackDemandTime: TStringField;
    StringField2: TStringField;
    TrackYWPM: TStringField;
    TrackZWPM: TStringField;
    TrackDWBH: TStringField;
    StringField6: TStringField;
    TrackLotNO: TStringField;
    CurrencyField1: TCurrencyField;
    StringField9: TStringField;
    CurrencyField2: TCurrencyField;
    TrackRemarkS: TStringField;
    TrackUserID: TStringField;
    TrackUserDate: TDateTimeField;
    DS6: TDataSource;
    PS: TQuery;
    DS1: TDataSource;
    PSSeq: TIntegerField;
    PSDDBH: TStringField;
    PSArticle: TStringField;
    PSBuyNo: TStringField;
    PSZLQty: TIntegerField;
    PSScanQty: TIntegerField;
    PSProgress: TFloatField;
    DBGridEh2: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh3: TDBGridEh;
    PSGXLB: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XuongCB1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
  private
    { Private declarations }
    procedure ExportExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  StitchingAssemblyTracking: TStitchingAssemblyTracking;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TStitchingAssemblyTracking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TStitchingAssemblyTracking.FormDestroy(Sender: TObject);
begin
  StitchingAssemblyTracking:=nil;
end;

procedure TStitchingAssemblyTracking.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Xuong FROM BDepartment');
    SQL.Add('WHERE GSBH = ''' + main.Edit2.Text + ''' AND ISNULL(Xuong, '''') <> '''' ');
    SQL.Add('ORDER BY Xuong ');
    Active := true;
    XuongCB1.Items.Clear;
    XuongCB1.Items.Add('');
    while not Eof do
    begin
      XuongCB1.Items.Add(FieldByName('Xuong').AsString);
      Next;
    end;
  end;
  //
end;

procedure TStitchingAssemblyTracking.XuongCB1Change(Sender: TObject);
begin
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT LEFT(DepName, LEN(DepName)- 2) DepName FROM BDepartment WHERE GSBH = ''' + main.Edit2.Text + ''' AND Xuong = ''' + XuongCB1.Text + '''');
    Active := true;
    DepNMEdit1.Items.Clear;
    DepNMEdit1.ITems.Add('');
    while not Eof do
    begin
      DepNMEdit1.Items.Add(FieldByName('DepName').AsString);
      Next;
    end;
  end;
end;

procedure TStitchingAssemblyTracking.ExportExcel(Query:TQuery);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
  if  Query.active  then
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
      for   i:=0   to   Query.fieldcount-1   do
      begin
          eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
      end;
      Query.First;
      j:=2;
      while   not   Query.Eof   do
      begin
        for   i:=0   to  Query.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=Query.Fields[i].Value;
        end;
        Query.Next;
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

procedure TStitchingAssemblyTracking.Button1Click(Sender: TObject);
begin
  if ((XuongCB1.Text='') and (ZLBHEdit.Text='')) then
  begin
    Showmessage('Please Select Factory or OrderNo ');
    Exit;
  end;
  with PS do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#PS'') IS NOT NULL ');
    SQL.Add('BEGIN DROP TABLE #PS END ');

    SQL.Add('SELECT DISTINCT PS.ry_index, CONVERT(VARCHAR, CONVERT(SmallDateTime, PS.schedule_date), 111) AS AssemblyDate, DDZL.Article, CycleDispatch.GXLB, ');
    SQL.Add('       CAST(CAST(SUBSTRING(DDZL.BUYNO, 5, 2) AS INT) AS VARCHAR) + '' BUY'' AS BuyNo, CASE WHEN LEN(PS.ry) - LEN(REPLACE(PS.ry, ''-'', '''')) < 2 THEN PS.ry ');
    SQL.Add('       ELSE SUBSTRING(PS.ry, 1, LEN(PS.ry) - CHARINDEX(''-'', REVERSE(PS.ry))) END AS DDBH INTO #PS FROM CycleDispatch ');
    SQL.Add('LEFT JOIN schedule_crawler AS PS ON CASE WHEN LEN(PS.ry) - LEN(REPLACE(PS.ry, ''-'', '''')) < 2 THEN PS.ry ');
    SQL.Add('                                    ELSE SUBSTRING(PS.ry, 1, LEN(PS.ry) - CHARINDEX(''-'', REVERSE(PS.ry))) END = CycleDispatch.ZLBH ');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CASE WHEN LEN(PS.ry) - LEN(REPLACE(PS.ry, ''-'', '''')) < 2 THEN PS.ry ');
    SQL.Add('                              ELSE SUBSTRING(PS.ry, 1, LEN(PS.ry) - CHARINDEX(''-'', REVERSE(PS.ry))) END ');
    SQL.Add('WHERE CONVERT(SmallDateTime, PS.schedule_date) >= DATEADD(MONTH, -6, GETDATE()) AND PS.ry IS NOT NULL ');
    if (DepNMEdit1.Text<>'') then
      SQL.Add('      AND PS.building_no + ''_'' + PS.lean_no LIKE '''+DepNMEdit1.Text+'%'' ')
    else SQL.Add('      AND PS.building_no + ''_'' + PS.lean_no LIKE '''+XuongCB1.Text+'%'' ');
    if PageControl2.ActivePageIndex=0 then
      SQL.Add('    AND CycleDispatch.GXLB = ''S'' ')
    else if PageControl2.ActivePageIndex=1 then
      SQL.Add('    AND CycleDispatch.GXLB = ''A'' ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
    SQL.Clear;

    //query
    SQL.add('SELECT CAST(ROW_NUMBER() OVER(ORDER BY PS.AssemblyDate, PS.ry_index) AS INT) AS Seq, PS.DDBH, PS.Article, PS.BuyNo, ISNULL(StitchingDispatchZL.ZLQty, 0) ZLQty, ');
    SQL.add('       GXLB, ISNULL(StitchingDispatched.ScanQty, 0) ScanQty, CAST(CASE WHEN ISNULL(StitchingDispatchZL.ZLQty, 0) > 0 ');
    SQL.add('       THEN ISNULL(StitchingDispatched.ScanQty, 0) * 100.0 / StitchingDispatchZL.ZLQty ELSE 0 END AS NUMERIC(4, 1)) AS Progress FROM #PS AS PS ');
    SQL.add('LEFT JOIN (SELECT SMDD.YSBH AS ZLBH, SUM(SMDDSS.CTS*SMDDSS.Qty) AS ZLQty FROM SMDD ');
    SQL.add('           LEFT JOIN SMDDSS ON SMDDSS.DDBH = SMDD.DDBH AND SMDDSS.GXLB = SMDD.GXLB ');
    SQL.add('           WHERE SMDD.YSBH IN(SELECT DDBH FROM #PS) ');
    if PageControl2.ActivePageIndex=0 then
      SQL.Add('               AND SMDD.GXLB = ''S'' ')
    else if PageControl2.ActivePageIndex=1 then
      SQL.Add('               AND SMDD.GXLB = ''A'' ');
    SQL.add('           GROUP BY SMDD.YSBH) AS StitchingDispatchZL ON StitchingDispatchZL.ZLBH = PS.DDBH ');
    SQL.add('LEFT JOIN (SELECT CycleDispatch.ZLBH, SUM(SMDDSS.okCTS*SMDDSS.Qty) AS ScanQty FROM CycleDispatch ');
    SQL.add('           LEFT JOIN SMDDSS ON SMDDSS.DDBH = CycleDispatch.DDBH AND SMDDSS.GXLB = CycleDispatch.GXLB ');
    SQL.add('           WHERE CycleDispatch.ZLBH IN(SELECT DDBH FROM #PS) ');
    if PageControl2.ActivePageIndex=0 then
      SQL.Add('               AND CycleDispatch.GXLB = ''S'' ')
    else if PageControl2.ActivePageIndex=1 then
      SQL.Add('               AND CycleDispatch.GXLB = ''A'' ');
    SQL.add('           GROUP BY CycleDispatch.ZLBH) AS StitchingDispatched ON StitchingDispatched.ZLBH = PS.DDBH ');
    SQL.Add('where PS.DDBH like '''+ZLBHEdit.Text+'%'' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  Track.Active:=true;
end;

procedure TStitchingAssemblyTracking.Button2Click(Sender: TObject);
begin
  ExportExcel(PS);
end;

procedure TStitchingAssemblyTracking.MenuItem1Click(Sender: TObject);
begin
  ExportExcel(Track);
end;

procedure TStitchingAssemblyTracking.PageControl2Change(Sender: TObject);
begin
  Button1.Click;
end;

end.
