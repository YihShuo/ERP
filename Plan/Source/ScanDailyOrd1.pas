unit ScanDailyOrd1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  Menus, PrnDbgeh,comobj;

type
  TScanDailyOrd = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Edit1: TEdit;
    CB1: TComboBox;
    CBX3: TComboBox;
    DailyOrd: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    DailyOrdSCBH: TStringField;
    DailyOrdGXLB: TStringField;
    DailyOrdSCDate: TDateTimeField;
    DailyOrdDepName: TStringField;
    DailyOrdDepMemo: TStringField;
    DailyOrdQty: TFloatField;
    Label1: TLabel;
    DTP2: TDateTimePicker;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    SCBHEdit: TEdit;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    IQCQuery: TQuery;
    DS2: TDataSource;
    IQCQuerySCBH: TStringField;
    IQCQueryGXLB: TStringField;
    IQCQueryDepName: TStringField;
    IQCQuerySCDate: TDateTimeField;
    IQCQueryQty: TFloatField;
    IQCQueryIQCQty: TIntegerField;
    IQCQueryPairs: TIntegerField;
    PopupMenu2: TPopupMenu;
    MenuItem2: TMenuItem;
    DailyOrdarticle: TStringField;
    DailyOrdXieMing: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanDailyOrd: TScanDailyOrd;   
  NDate:TDate;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TScanDailyOrd.FormDestroy(Sender: TObject);
begin
  ScanDailyOrd:=nil;
end;

procedure TScanDailyOrd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TScanDailyOrd.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.Text:=main.edit2.Text;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate '); 
    active:=true;
    NDate:=fieldbyname('NDate').value;     
    active:=false;
    sql.Clear;
    sql.add('Select distinct GX from SCGXDY where DepGXLB is not null order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX3.Items.Add(fieldbyname('GX').asstring);
      Next;
    end;
    active:=false;
  end;
  DTP1.Date:=NDate;
  DTP2.Date:=NDate;

end;

procedure TScanDailyOrd.Button1Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    with DailyOrd do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('Select * from (');
      SQL.Add('	Select SCBB.*,DDZL.ARTICLE,xxzl.XieMing from (');
      SQL.Add('	Select SCBBS.SCBH,SCBBS.GXLB,convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) as SCDate   ');
      SQL.Add('		   ,BDepartment.DepName,BDepartment.DepMemo,sum(SCBBS.Qty) as Qty');
      SQL.Add('	from SCBBS');
      SQL.Add('	left join SCBB on SCBB.ProNo=SCBBS.ProNO');
      SQL.Add('	left join Bdepartment on BDepartment.ID=SCBB.DepNO');
      SQL.Add('	where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      SQL.Add('		  and BDepartment.DepName like ''%'+edit1.text+'%'' ');
      SQL.Add('		  and BDepartment.GSBH='''+CB1.Text+'''');
      if SCBHEdit.Text<>'' then
      SQL.Add('     and SCBBS.SCBH like '''+SCBHEdit.Text+'%'' ');
      if CBX3.itemindex<>0 then
      begin
        SQL.add('             and SCBBS.GXLB='''+CBX3.Text+'''');
      end;
      SQL.Add('	Group by SCBBS.SCBH,SCBBS.GXLB,convert(smalldatetime,convert(varchar,SCBB.SCDate,111))');
      SQL.Add('			 ,BDepartment.DepName,BDepartment.DepMemo');
      if FormatDatetime('YYYYMMDD',DTP2.Date)=FormatDatetime('YYYYMMDD',NDate) then
      begin
      SQL.Add('	union all');
      SQL.Add('	Select SCBB.YSBH as SCBH,SCBB.GXLB,SCBB.ScanDate,BDepartment.DepName,BDepartment.DepMemo,SUM(Qty) as Qty');
      SQL.Add('	from (');
      SQL.Add('	Select SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) as ScanDate,SMZL.DepNO ');
      SQL.Add('	from SMZL');
      SQL.Add('	left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR');
      SQL.Add('	left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      SQL.Add('	where convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',NDate) +''' and '''+formatdatetime('yyyy/MM/dd',NDate)+'''');
      if SCBHEdit.Text<>'' then
      SQL.Add('     and SMDDSS.DDBH like '''+SCBHEdit.Text+'%'' ');
      SQL.Add('	and SMDDSS.GXLB in (''C'',''T'',''S'',''B'',''A'')');
      SQL.Add('	Group by convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)),SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,SMZL.DepNO ) SCBB');
      SQL.Add('	left join Bdepartment on BDepartment.ID=SCBB.DepNO ');
      SQL.Add('	where BDepartment.DepName like ''%'+edit1.text+'%'' ');
      SQL.Add('		    and BDepartment.GSBH='''+CB1.Text+'''');
      if CBX3.itemindex<>0 then
      begin
        SQL.add('             and SCBB.GXLB='''+CBX3.Text+'''');
      end;
      SQL.Add('	Group by SCBB.YSBH,SCBB.GXLB,SCBB.ScanDate,BDepartment.DepName,BDepartment.DepMemo ');
      end;
      SQL.Add(' ) SCBB      ');
      if CheckBox1.Checked=true then
      begin
      SQL.Add('	union all');
      SQL.Add('	Select * from (');
      SQL.Add('	select ''總計'' as SCBH,SCBBS.GXLB,convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) as SCDate ');
      SQL.Add('			 ,BDepartment.DepName,BDepartment.DepMemo,sum(SCBBS.Qty) as Qty');
      SQL.Add('	from SCBBS');
      SQL.Add('	left join SCBB on SCBB.ProNo=SCBBS.ProNO');
      SQL.Add('	left join Bdepartment on BDepartment.ID=SCBB.DepNO');
      SQL.Add('	where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      SQL.Add('		  and BDepartment.DepName like ''%'+edit1.text+'%'' ');
      SQL.Add('		  and BDepartment.GSBH='''+CB1.Text+'''');
      if CBX3.itemindex<>0 then
      begin
        SQL.add('             and SCBBS.GXLB='''+CBX3.Text+'''');
      end;
      SQL.Add('	group by  SCBBS.GXLB,convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) ');
      SQL.Add('			  ,BDepartment.DepName,BDepartment.DepMemo');
      SQL.Add('	union all');
      SQL.Add('	Select ''總計'' as SCBH,SCBB.GXLB,SCBB.ScanDate,BDepartment.DepName,BDepartment.DepMemo,SUM(Qty) as Qty');
      SQL.Add('	from (');
      SQL.Add('	Select SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) as ScanDate,SMZL.DepNO ');
      SQL.Add('	from SMZL');
      SQL.Add('	left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR');
      SQL.Add('	left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      SQL.Add('	where convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',NDate) +''' and '''+formatdatetime('yyyy/MM/dd',NDate)+'''');
      SQL.Add('	and SMDDSS.GXLB in (''C'',''T'',''S'',''B'',''A'')');
      SQL.Add('	Group by convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)),SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,SMZL.DepNO ) SCBB');
      SQL.Add('	left join Bdepartment on BDepartment.ID=SCBB.DepNO ');
      SQL.Add('	where BDepartment.DepName like ''%'+edit1.text+'%'' ');
      SQL.Add('		    and BDepartment.GSBH='''+CB1.Text+'''');
      if CBX3.itemindex<>0 then
      begin
        SQL.add('             and SCBB.GXLB='''+CBX3.Text+'''');
      end;
      SQL.Add('	Group by SCBB.GXLB,SCBB.ScanDate,BDepartment.DepName,BDepartment.DepMemo ) SCBB_ALL');
      end;
      SQL.Add(' left join DDZL on DDZL.DDBH = SCBB.SCBH');
      SQL.Add(' left join xxzl on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao = xxzl.SheHao');
      SQL.Add(') AllDate         ');
      SQL.Add('order by AllDate.GXLB,AllDate.DepName,convert(smalldatetime,convert(varchar,AllDate.SCDate,111)),AllDate.SCBH');
      //funcObj.WriteErrorLog(sql.Text);
      //showmessage(SQL.Text);
      active:=true;
    end;
  end;
  if PC1.ActivePageIndex=1 then
  begin
    with IQCQuery do
    begin
      Active:=false;
      SQL.Clear;
      //
      SQL.Add('Select AllDate.*,WORP.Qty as IQCQty,DDZL.Pairs from (');
      SQL.Add('	Select SCBH,GXLB,Max(DepName) as DepName,Max(SCDate) as SCDate,Sum(Qty) as Qty from (');
      SQL.Add('	Select SCBBS.SCBH,SCBBS.GXLB');
      SQL.Add('		   ,sum(SCBBS.Qty) as Qty  ,Max(BDepartment.DepName) as DepName, Max(convert(smalldatetime,convert(varchar,SCBB.SCDate,111))) as SCDate   ');
      SQL.Add('	from SCBBS');
      SQL.Add('	left join SCBB on SCBB.ProNo=SCBBS.ProNO');
      SQL.Add('	left join Bdepartment on BDepartment.ID=SCBB.DepNO');
      SQL.Add('	left join DDZL on DDZL.DDBH=SCBBS.SCBH');
      SQL.Add('	where DDZL.YN=''1''	     ');
      SQL.Add('		  and BDepartment.DepName like ''%%'' ');
      SQL.Add('		  and BDepartment.GSBH='''+CB1.Text+'''');
      SQL.Add('             and SCBBS.GXLB=''A''');
      SQL.Add('	Group by SCBBS.SCBH,SCBBS.GXLB');
      SQL.Add('	union all');
      SQL.Add('	Select SCBB.YSBH as SCBH,SCBB.GXLB,SUM(Qty) as Qty ,Max(BDepartment.DepName) as DepName, Max(SCBB.ScanDate) as SCDate');
      SQL.Add('	from (');
      SQL.Add('	Select SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) as ScanDate,SMZL.DepNO ');
      SQL.Add('	from SMZL');
      SQL.Add('	left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR');
      SQL.Add('	left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      SQL.Add('	where convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between');
      SQL.add('      '''+formatdatetime('yyyy/MM/dd',NDate) +''' and '''+formatdatetime('yyyy/MM/dd',NDate)+'''');
      SQL.Add('	and SMDDSS.GXLB in (''C'',''T'',''S'',''B'',''A'')');
      SQL.Add('	Group by convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)),SMDD.YSBH,SMDDSS.DDBH,SMDDSS.XXCC,SMDDSS.GXLB,SMZL.DepNO ) SCBB');
      SQL.Add('	left join Bdepartment on BDepartment.ID=SCBB.DepNO ');
      SQL.Add('	left join DDZL on DDZL.DDBH=SCBB.YSBH');
      SQL.Add('	where BDepartment.DepName like ''%%'' and  DDZL.YN=''1'' ');
      SQL.Add('		    and BDepartment.GSBH='''+CB1.Text+'''');
      SQL.Add('             and SCBB.GXLB=''A''	');
      SQL.Add('	Group by SCBB.YSBH,SCBB.GXLB');
      SQL.Add(' ) SCBB      ');
      SQL.Add(' Group by SCBH,GXLB');
      SQL.Add(') AllDate         ');
      SQL.Add('Left join (');
      SQL.Add('Select SCBH,Sum(Qty) as Qty');
      SQL.Add('from WOPR');
      SQL.Add('where GXLB=''AR''');
      SQL.Add('Group by SCBH ) WORP on WORP.SCBH=AllDate.SCBH');
      SQL.Add('left join DDZL on DDZL.DDBH=AllDate.SCBH');
      SQL.Add('where AllDate.Qty<WORP.Qty');
      if SCBHEdit.Text<>'' then
      SQL.Add('     and DDZL.DDBH like '''+SCBHEdit.Text+'%'' ');
      if Edit1.Text<>'' then
      SQL.Add('     and AllDate.DepName like '''+Edit1.Text+'%'' ');
      Active:=true;
    end;
  end;
end;

procedure TScanDailyOrd.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
   {
  if  DailyOrd.FieldByName('SCBH').value='zTOTAL' then
  begin
    dbgrid1.canvas.font.color:=clblue;
  end; }
end;

procedure TScanDailyOrd.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if  DailyOrd.FieldByName('SCBH').value='zTotal' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGrideh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TScanDailyOrd.Print1Click(Sender: TObject);
begin
printdbgrideh1.preview;
end;

procedure TScanDailyOrd.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if DailyOrd.Active then
  begin
    if DailyOrd.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end else
  begin
      showmessage('No record.');
      abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   DailyOrd.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=DailyOrd.fields[i-1].FieldName;
      end;
    DailyOrd.First;
    j:=2;
    while   not  DailyOrd.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   DailyOrd.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=DailyOrd.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        DailyOrd.Next;
        inc(j);
      end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TScanDailyOrd.MenuItem2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if IQCQuery.Active then
  begin
    if IQCQuery.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end else
  begin
      showmessage('No record.');
      abort;
  end;
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   IQCQuery.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=IQCQuery.fields[i-1].FieldName;
      end;
    IQCQuery.First;
    j:=2;
    while   not  IQCQuery.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   IQCQuery.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=IQCQuery.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        IQCQuery.Next;
        inc(j);
      end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

end.
