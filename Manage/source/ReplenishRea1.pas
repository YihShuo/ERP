unit ReplenishRea1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, ExtCtrls,comobj;

type
  TReplenishRea = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    DBGrid1: TDBGridEh;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Print1: TMenuItem;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    RB2: TRadioButton;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishRea: TReplenishRea;

implementation

uses main1, ReplenishRea_Det1, FunUnit;

{$R *.dfm}

procedure TReplenishRea.FormDestroy(Sender: TObject);
begin
  ReplenishRea:=nil;
end;

procedure TReplenishRea.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReplenishRea.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    DTP1.date:=fieldbyname('NDate').value-7;
    DTP2.date:=fieldbyname('NDate').value-1;
  end;
end;

procedure TReplenishRea.Button1Click(Sender: TObject);
var i : integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSBH from (');
    sql.add('select IsNull(BDepartment.Xuong,BDepartment.GSBH) as GSBH ');
    sql.add('from KCLLS ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.Add('left join DDZL on DDZL.DDBH = KCLLS.SCBH');
    sql.add('where 1=1');
    if RB1.Checked=true then
    begin
      sql.add('    and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
      sql.add('    '''+Formatdatetime('yyyy/MM/dd',DTP1.date-10)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    end;
    if RB2.Checked=true then
      sql.add('    and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    sql.add('      and KCLL.CFMID<>''NO'' ');
    sql.add('      and BDepartment.DepName like '''+Edit2.text+'%'' ');
    sql.add('      and KCLLS.Qty<>0');
    sql.add('      and KCLLS.BLSB=''Y'' ');
    sql.add(') GS ');
    sql.add('Group by GSBH ');
    sql.add('order by GSBH ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select FYACC.YYBH,SCBLYY.YWSM,SCBLYY.ZWSM ');
    while not QTemp.eof do
    begin
      sql.add(',sum(case  when FYACC.GSBH='''+Qtemp.fieldbyname('GSBH').value+'''');
      sql.add(' then isnull(FYACC.ACCUS,0) else 0  end) as '''+Qtemp.fieldbyname('GSBH').value+'''');
      QTemp.Next;
    end;
    sql.add(',isnull(sum(FYACC.ACCUS),0) as Total');
    sql.add('from (select LL.GSBH,LL.YYBH,sum(LL.Qty*CWDJ.USPrice) as ACCUS');
    sql.add('      from (select IsNull(BDepartment.Xuong,BDepartment.GSBH) as GSBH');
    sql.add('                   ,Isnull(KCLLS.YYBH,'''') as YYBH,KCLL.DepID,KCLLS.Qty,CLLBFYS.FYLB,KCLLS.CLBH,KCLL.CFMDate');
    sql.add('            from KCLLS');
    sql.add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('            left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('            left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    sql.Add('            left join DDZL on DDZL.DDBH = KCLLS.SCBH');
    sql.add('            where 1=1');
    if RB1.Checked=true then
    begin
      sql.add('          and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    end;
    if RB2.Checked=true then
      sql.add('          and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    sql.add('                  and KCLL.CFMID<>''NO'' ');
    sql.add('                  and BDepartment.DepName like ''%'+edit2.text+'%'' ');
    sql.add('                  and KCLLS.Qty<>0');
    sql.add('                  and KCLLS.BLSB=''Y'' ');
    sql.add('            ) LL  ');
    sql.add('left join CWDJ on CWDJ.CLBH=LL.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,LL.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,LL.CFMDate)) ');
    sql.add('      group by LL.GSBH,LL.YYBH) FYACC');
    sql.add('left join SCBLYY on SCBLYY.YYBH=FYACC.YYBH ');
    sql.add('group by FYACC.YYBH,SCBLYY.YWSM,SCBLYY.ZWSM');
    sql.add('order by FYACC.YYBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  for i:=0 to  Qtemp.RecordCount-1 do
      DBGrid1.columns[i+3].ButtonStyle:=cbsEllipsis;
end;

procedure TReplenishRea.Print1Click(Sender: TObject);
begin
  printDBgrideh1.Preview;
end;

procedure TReplenishRea.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
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
  for   i:=1   to   query1.fieldcount   do
  begin
    eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
  end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
  begin
    eclApp.Cells(j,1):=j-1;
    for   i:=1   to   query1.fieldcount   do
      begin
        eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
    query1.Next;
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

procedure TReplenishRea.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

procedure TReplenishRea.DBGrid1EditButtonClick(Sender: TObject);
begin
  ReplenishRea_Det:=TReplenishRea_Det.create(self);
  with ReplenishRea_Det.query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select LL.SCBH,LL.GSBH,LL.DepName,LL.CLBH,LL.Qty,CWDJ.USPrice,LL.LLNO,LL.Qty*CWDJ.USPrice as ACCUS,LL.YYBH,CLZL.YWPM,CLZL.ZWPM ');
    sql.add('from (select IsNull(BDepartment.Xuong,BDepartment.GSBH) as GSBH');
    sql.add('             ,KCLL.LLNO,isnull(KCLLS.YYBH,'''') as YYBH,KCLL.DepID,KCLLS.Qty,BDepartment.DepName,KCLLS.CLBH,KCLL.CFMDate,KCLLS.SCBH');
    sql.add('      from KCLLS');
    sql.add('      left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('      left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('      left join CLLBFYS on CLLBFYS.CLBH=KCLLS.CLBH and KCLL.GSBH=CLLBFYS.GSBH');
    sql.add('      where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('            and KCLL.CFMID<>''NO'' ');
    sql.add('            and BDepartment.DepName like ''%'+Edit2.text+'%'' ');
    sql.add('            and KCLLS.Qty<>0');
    sql.add('            and KCLLS.BLSB=''Y''');
    sql.add('            and isnull(KCLLS.YYBH,'''')='''+Query1.fieldbyname('YYBH').value+'''');
    sql.add('            and IsNull(BDepartment.Xuong,BDepartment.GSBH)='''+Dbgrid1.selectedfield.fieldname+''' ');
    sql.add('            ) LL  ');
    sql.add('left join CWDJ on CWDJ.CLBH=LL.CLBH ');
    sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,LL.CFMDate)) ');
    sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,LL.CFMDate)) ');
    sql.add('left join SCBLYY on SCBLYY.YYBH=LL.YYBH ');
    sql.add('left join CLZL on CLZl.CLDH=LL.CLBH  ');
    sql.add('order by LL.GSBH,LL.DepName,LL.CLBH ');
    active:=true;
  end;
  ReplenishRea_Det.show;
end;

procedure TReplenishRea.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
  with  DBGrid1 do
  begin
    for i:=0 to  Qtemp.RecordCount do
      Tfloatfield(DBGrid1.Fields[i+3]).displayformat:='##,#0.00';
  end;
end;

end.
