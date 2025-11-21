unit Allshoe_List1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, Buttons, ExtCtrls, DB,
  DBTables, comobj;

type
  TAllshoe_List = class(TForm)
    ToolPanel: TPanel;
    Label3: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Excel: TButton;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1RFIDNO: TStringField;
    Query1TestNO: TStringField;
    Query1ARTICLE: TStringField;
    Query1Userdate: TDateTimeField;
    Query1SAMPLEORDER: TStringField;
    Query1Season: TStringField;
    Query1Stage: TStringField;
    Query1WHNO: TStringField;
    Query1SNO: TStringField;
    Query1MEMO: TStringField;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Query1Qty: TFloatField;
    Query1QtyS: TFloatField;
    Edit2: TEdit;
    Label4: TLabel;
    Query1QtyRe: TIntegerField;
    PC: TPageControl;
    TS1: TTabSheet;
    DBGridEh1: TDBGridEh;
    TS2: TTabSheet;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    DateTimeField1: TDateTimeField;
    Query2FD: TStringField;
    Query2SIZ: TStringField;
    Query2DEPARTMENT: TStringField;
    Query2info: TStringField;
    Query2day: TIntegerField;
    Panel1: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    Edit3: TEdit;
    Button3: TButton;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Edit4: TEdit;
    Label9: TLabel;
    Edit5: TEdit;
    Query2USERDATE1: TDateTimeField;
    RB1: TRadioButton;
    RB2: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure PCChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Allshoe_List: TAllshoe_List;

implementation

uses FunUnit;

{$R *.dfm}

procedure TAllshoe_List.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TAllshoe_List.FormDestroy(Sender: TObject);
begin
  Allshoe_List := nil;
end;

procedure TAllshoe_List.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select allrfid.TESTNO, allrfid.RFIDNO, allrfid.USERDATE, isnull(RFID_TRACK.ARTICLE,RFID_TB.ARTICLE) ARTICLE, YPDH SAMPLEORDER, Season, Stage,  ');
    sql.Add('       CASE WHEN RFID_TRACK.IO=''RECEIVE'' and RFID_DEL.MEMO IS NULL THEN RFID_TRACK.WHNO ELSE ''Not in Warehouse'' END AS WHNO, ');
    sql.Add('       CASE WHEN RFID_TRACK.IO=''RECEIVE'' and RFID_DEL.MEMO IS NULL THEN '' ''+RFID_TRACK.SNO+'' '' ELSE '''' END AS SNO, ');
    sql.Add('       CASE WHEN RFID_TRACK.IO=''RECEIVE'' and RFID_DEL.MEMO IS NULL THEN '''' WHEN RFID_DEL.MEMO IS NULL AND RFID_TRACK.DEPARTMENT<>'''' THEN ');
    sql.Add('       isnull(RFID_TRACK.IO,'''')+'' ''+ISNULL(RFID_TRACK.DEPARTMENT,'''')+'' ''+ISNULL(RFID_TRACK.MEMO,'''') ');
    sql.Add('       WHEN RFID_DEL.MEMO IS NULL AND RFID_TRACK.DEPARTMENT='''' THEN RFID_TRACK.IO+'' DC_7Days'' ');
    sql.Add('       ELSE ISNULL(RFID_DEL.MEMO,''Not RECEIVE to Warehouse STAR'') END AS MEMO,  ');
    sql.Add('       ISNULL(shoetest2.Qty,0) Qty, ISNULL(shoetest2.qtyre,0) QtyRe, ISNULL(shoetest2.Qty,0)-ISNULL(shoetest2.qtyre,0) QtyS  ');
    sql.Add('from ( select RFID_TRACK.TESTNO, RFID_TRACK.RFIDNO, MIN(RFID_TRACK.USERDATE) USERDATE from LIY_TYXUAN.dbo.RFID_TRACK RFID_TRACK ');
    sql.Add('       where RFID_TRACK.PROGRAM_ID=''DCWH_STAR'' ');
    sql.Add('       group by RFID_TRACK.TESTNO, RFID_TRACK.RFIDNO ');
    sql.Add('       UNION ALL ');
    sql.Add('       select RFID_TB.TESTNO, RFID_TB.RFIDNO, MIN(RFID_TB.USERDATE) USERDATE from LIY_TYXUAN.dbo.RFID_TB RFID_TB ');
    sql.Add('       left join LIY_TYXUAN.dbo.RFID_TRACK RFID_TRACK on RFID_TRACK.TESTNO = RFID_TB.TestNo and RFID_TRACK.RFIDNO = RFID_TB.RFIDNO ');
    sql.Add('       where RFID_TB.PROGRAM_ID=''DCWH_STAR'' and RFID_TRACK.TESTNO is null ');
    sql.Add('       group by RFID_TB.TESTNO, RFID_TB.RFIDNO ) as allrfid ');
    sql.Add('left join LIY_TYXUAN.dbo.RFID_TRACK RFID_TRACK on RFID_TRACK.TESTNO = allrfid.TestNo and RFID_TRACK.RFIDNO = allrfid.RFIDNO ');
    sql.Add('						                                       and RFID_TRACK.USERDATE = allrfid.USERDATE ');
    sql.Add('left join LIY_TYXUAN.dbo.RFID_TB RFID_TB on allrfid.TESTNO = RFID_TB.TestNo and allrfid.RFIDNO = RFID_TB.RFIDNO ');
    sql.Add('left join LIY_TYXUAN.dbo.RFID_DEL RFID_DEL on allrfid.TESTNO = RFID_DEL.TestNo and allrfid.RFIDNO = RFID_DEL.RFIDNO ');
    sql.Add('left join ShoeTest on isnull(RFID_TRACK.TESTNO,RFID_TB.TESTNO) = ShoeTest.TestNo ');
    sql.Add('left join (select shoetest2.TestNo,DepName,parts,shoetest2.Qty*2 Qty, count(RFID_TB.TestNo) qtyre ');
    sql.Add('           from shoetest2 left join LIY_TYXUAN.dbo.RFID_TB RFID_TB on shoetest2.TESTNO = RFID_TB.TestNo ');
    sql.Add('           where shoetest2.DepName=''MD05'' and shoetest2.parts=''BW01'' ');
    sql.Add('           group by shoetest2.TestNo,DepName,parts,shoetest2.Qty) shoetest2 on shoetest2.TestNo = ShoeTest.TestNo ');
    sql.Add('where convert(varchar, allrfid.USERDATE, 111) between '''+ formatdatetime('YYYY/MM/DD',DTP1.Date) +''' and '''+ formatdatetime('YYYY/MM/DD',DTP2.Date) +'''');
    if edit1.text <> '' then
        sql.Add(' and isnull(RFID_TRACK.ARTICLE,RFID_TB.ARTICLE) LIKE '''+edit1.text+'%'' ');
    if edit2.text <> '' then
        sql.Add(' and isnull(RFID_TRACK.TESTNO,RFID_TB.TESTNO) LIKE '''+edit2.text+'%'' ');
    sql.Add('ORDER BY allrfid.USERDATE DESC');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end
end;

procedure TAllshoe_List.ExcelClick(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Query1.active  then
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
      for i:=0 to DBGridEh1.Columns.Count-1 do
        eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
          eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        Query1.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TAllshoe_List.FormCreate(Sender: TObject);
begin
  DTP1.Date := now - 7;
  DTP2.Date := now;
  DTP3.Date := now - 7;
  DTP4.Date := now;
  PC.ActivePage:=TS1;
  ToolPanel.visible:=true;
  Panel1.visible:=false;
end;

procedure TAllshoe_List.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (Query1.Fieldbyname('QtyS').Value>0) then
    TDBGridEh(Sender).canvas.font.color:=clRed ;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TAllshoe_List.PCChange(Sender: TObject);
begin
  if PC.ActivePage=TS1 then
  begin
    ToolPanel.visible:=true;
    Panel1.visible:=false;
  end else
  begin
    ToolPanel.visible:=false;
    Panel1.visible:=true;
  end;
end;

procedure TAllshoe_List.Button3Click(Sender: TObject);
var   eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  Query2.active  then
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
      for i:=0 to DBGridEh2.Columns.Count-1 do
        eclApp.Cells(1,i+1):=DBGridEh2.Columns[i].Title.Caption;
      Query2.First;
      j:=2;
      while   not   Query2.Eof   do
      begin
        for i:=0 to DBGridEh2.Columns.Count-1 do
          eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].Value;
        Query2.Next;
        inc(j);
      end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TAllshoe_List.Button2Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select RFID_TB.TESTNO, RFID_TB.RFIDNO, YPDH SAMPLEORDER, Shoetest.Article, Season, stage, FD, SIZ, isnull(t1.USERDATE,RFID_TB.USERDATE) USERDATE, ');
    sql.Add('       t3.DEPARTMENT, case when RFID_TB.WHNO is null or t5.WHNO is null then ');
    sql.Add('       ''Not in warehouse'' else t5.WHNO end as WHNO, case when RFID_TB.SNO is null or t5.SNO is null then ''Not in warehouse'' else t5.SNO end as SNO, ');
    sql.Add('       case when t3.WorkID is not null and t3.DEPARTMENT=''QC'' then t3.DEPARTMENT + '': '' + t3.WorkID + '': '' + isnull(t3.MEMO,'''') ');
    sql.Add('       when t3.WorkID is not null and t3.DEPARTMENT='''' then ''DC_REF_7D: '' + t3.WorkID + '': '' + isnull(t3.MEMO,'''') ');
    sql.Add('       when t3.WorkID is not null and t3.DEPARTMENT=''DC_REF'' then ''DC_REF_30D: '' + t3.WorkID + '': '' + isnull(t3.MEMO,'''') else '''' end as info, ');
    sql.Add('       case when t3.IO=''MOVE OUT'' and t6.PROGRAM_ID=''DCWH_STAR'' and t6.DEPARTMENT=''QC'' then DATEDIFF(day,GETDATE(),t3.USERDATE) ');
    sql.Add('       when t3.IO=''MOVE OUT'' and (isnull(t6.PROGRAM_ID,''DCWH_QC'')=''DCWH_QC'' or t6.DEPARTMENT<>''QC'') then DATEDIFF(day,t3.USERDATE,GETDATE()) else 0 end as day, ');
    sql.Add('       case when t3.IO=''MOVE OUT'' then t3.USERDATE else NULL end USERDATE1 ');
    sql.Add('from LIY_TYXUAN.dbo.RFID_TB RFID_TB ');
    sql.Add('left join ShoeTest on RFID_TB.TESTNO = ShoeTest.TestNo ');
    sql.Add('left join LIY_TYXUAN.dbo.RFID_TRACK t1 on RFID_TB.TESTNO = t1.TestNo and RFID_TB.RFIDNO = t1.RFIDNO ');
    sql.Add('          and t1.USERDATE = (select MIN(USERDATE) from LIY_TYXUAN.dbo.RFID_TRACK t2 ');
    sql.Add('                             where t2.TESTNO = t1.TESTNO and t2.RFIDNO = t1.RFIDNO and t2.PROGRAM_ID=''DCWH_STAR'') ');
    sql.Add('left join LIY_TYXUAN.dbo.RFID_TRACK t3 on RFID_TB.TESTNO = t3.TestNo and RFID_TB.RFIDNO = t3.RFIDNO ');
    sql.Add('          and t3.USERDATE = (select MAX(USERDATE) from LIY_TYXUAN.dbo.RFID_TRACK t2 ');
    sql.Add('                             where t2.TESTNO = t3.TESTNO and t2.RFIDNO = t3.RFIDNO and t2.PROGRAM_ID=''DCWH_STAR'') ');
    sql.Add('left join LIY_TYXUAN.dbo.RFID_WH t5 on t5.WHNO=RFID_TB.WHNO and t5.SNO=RFID_TB.SNO ');
    sql.Add('          and EXISTS (select WHNO,SNO from LIY_TYXUAN.dbo.RFID_WH t2 where t5.WHNO=t2.WHNO and t2.SNO=''#####'') ');
    sql.Add('left join LIY_TYXUAN.dbo.RFID_TRACK t6 on RFID_TB.TESTNO = t6.TestNo and RFID_TB.RFIDNO = t6.RFIDNO ');
    sql.Add('					 and t6.USERDATE = (select MAX(USERDATE) from LIY_TYXUAN.dbo.RFID_TRACK t2 ');
    sql.Add('                             where t2.TESTNO = t6.TESTNO and t2.RFIDNO = t6.RFIDNO) ');
    sql.Add('where (t3.DEPARTMENT is not null or RFID_TB.PROGRAM_ID=''DCWH_STAR'') ');
    if RB1.Checked then
    begin
      sql.Add('      and isnull(t1.USERDATE,RFID_TB.USERDATE) between '''+ formatdatetime('YYYY/MM/DD',DTP3.Date) +''' and '''+ formatdatetime('YYYY/MM/DD',DTP4.Date) +''' ');
    end else if RB2.Checked then
      sql.Add('      and t3.IO=''MOVE OUT'' ');
      sql.Add('      and t3.USERDATE between '''+ formatdatetime('YYYY/MM/DD',DTP3.Date) +''' and '''+ formatdatetime('YYYY/MM/DD',DTP4.Date) +''' ');
    begin
    end;
    if edit3.text <> '' then
        sql.Add('  and Shoetest.Article LIKE '''+edit3.text+'%'' ');
    if edit4.text <> '' then
        sql.Add('  and RFID_TB.TESTNO LIKE '''+edit4.text+'%'' ');
    if edit5.text <> '' then
        sql.Add('  and isnull(t3.WorkID,'''') LIKE '''+edit5.text+'%'' ');
    sql.Add('order by t1.USERDATE desc');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end
end;

procedure TAllshoe_List.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((Query2.Fieldbyname('DEPARTMENT').AsString='DC_REF') and (Query2.Fieldbyname('day').Value=30)) or
     ((Query2.Fieldbyname('DEPARTMENT').AsString='') and (Query2.Fieldbyname('day').Value=7)) or
     (Query2.Fieldbyname('day').Value=-1) then
    TDBGridEh(Sender).canvas.font.color:=clBlue;
  if ((Query2.Fieldbyname('DEPARTMENT').AsString='DC_REF') and (Query2.Fieldbyname('day').Value>30)) or
     ((Query2.Fieldbyname('DEPARTMENT').AsString='') and (Query2.Fieldbyname('day').Value>7)) or
     (Query2.Fieldbyname('day').Value<-1) then
    TDBGridEh(Sender).canvas.font.color:=clRed;
  TDBGridEh(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

end.
