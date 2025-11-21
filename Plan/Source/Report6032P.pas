unit Report6032P;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, ComCtrls, Grids, DBGrids,comobj,
  GridsEh, DBGridEh;

type
  TReport6032 = class(TForm)
    Panel1: TPanel;
    datalist: TPageControl;
    t1: TTabSheet;
    DBGrid1: TDBGridEh;
    t2: TTabSheet;
    DBGrid2: TDBGridEh;
    t3: TTabSheet;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    q1: TQuery;
    q1gxlb: TStringField;
    q1ysbh: TStringField;
    q1gsbh: TStringField;
    q1article: TStringField;
    q1xieming: TStringField;
    q1qty: TIntegerField;
    q1plandate: TDateTimeField;
    q1planedate: TDateTimeField;
    q1prdate: TDateTimeField;
    q1okdate: TDateTimeField;
    q1diffday: TIntegerField;
    q2: TQuery;
    q2gxlb: TStringField;
    q2ysbh: TStringField;
    q2gsbh: TStringField;
    q2article: TStringField;
    q2xieming: TStringField;
    q2qty: TIntegerField;
    q2plandate: TDateTimeField;
    q2planedate: TDateTimeField;
    q2prdate: TDateTimeField;
    q2okdate: TDateTimeField;
    q2diffday: TIntegerField;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    q3: TQuery;
    q3gxlb: TStringField;
    q3ysbh: TStringField;
    q3gsbh: TStringField;
    q3article: TStringField;
    q3xieming: TStringField;
    q3pairs: TIntegerField;
    q3rqty: TFloatField;
    q3storyqty: TIntegerField;
    q3plandate: TDateTimeField;
    dq: TQuery;
    smdd: TQuery;
    qq1: TQuery;
    qq2: TQuery;
    q4: TQuery;
    q4ysbh: TStringField;
    q4gxlb: TStringField;
    q4gsbh: TStringField;
    q4article: TStringField;
    q4xieming: TStringField;
    q4qty: TIntegerField;
    q4etd: TDateTimeField;
    q4plandate: TDateTimeField;
    q4planedate: TDateTimeField;
    q4prdate: TDateTimeField;
    q4okdate: TDateTimeField;
    DataSource4: TDataSource;
    q1DepName: TStringField;
    q2depname: TStringField;
    q4depname: TStringField;
    Label3: TLabel;
    cb1: TComboBox;
    Label7: TLabel;
    process: TComboBox;
    ed: TDateTimePicker;
    Label2: TLabel;
    sd: TDateTimePicker;
    Label1: TLabel;
    Label5: TLabel;
    cb2: TComboBox;
    Label6: TLabel;
    Label4: TLabel;
    diffday: TEdit;
    os: TEdit;
    Button1: TButton;
    Button2: TButton;
    q1ProDepNM: TStringField;
    q2ProDepNM: TStringField;
    q4ProDepNM: TStringField;
    DBGridEh2: TDBGridEh;
    q1etd: TDateTimeField;
    q1ProdQty: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure cb1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report6032: TReport6032;

implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TReport6032.FormDestroy(Sender: TObject);
begin
  Report6032:=nil;
end;

procedure TReport6032.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReport6032.Button1Click(Sender: TObject);
begin

  qq1.ExecSQL;
  qq2.ExecSQL;
  if (datalist.ActivePageIndex=0) or (datalist.ActivePageIndex=1) then
  with q1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select smdd.ysbh,smdd.gxlb,ysbh,BDepartment.DepName,(Select DepName from BDepartment where ID=smdd.pDepNo) as ProDepNM,smdd.gsbh,article,xieming,qty,plandate,planedate,');
    sql.add('prdate,okdate,diffday,etd,ProdQty ');
    sql.Add('from (');
    sql.add('select sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo as pDepNo,sum(sm.qty) as qty,min(sm.plandate) as plandate,max(sm.planedate) as planedate,');
    sql.add('min(sm.prdate) as prdate,max(sm.okdate) as okdate,');
    sql.add('isnull((');
    sql.add(' DATEDIFF(DAY,min(sm.prdate),min(sm.planDate))-ROUND(DATEDIFF(DAY,min(sm.prdate),min(sm.planDate))/7,0,1) +');//Star
    sql.add(' case when DATEDIFF(DAY,min(sm.prdate),min(sm.planDate)) < 0 then');
    sql.add('   case when DATEpart(dw, min(sm.prdate)) < DATEpart(dw, min(sm.planDate)) then 1 else 0 end');
    sql.add(' else ');
    sql.add('	  case when DATEpart(dw, min(sm.prdate)) > DATEpart(dw, min(sm.planDate)) then -1 else 0 end');
    sql.add(' end');
    sql.add('),999) as diffday,ddzl.shipdate as etd,scbbs.ProdQty  ');
    sql.add('from smdd as sm');
    //20141009 weston新增實際生產部門
    sql.add('left join (select Max(ProNo) as ProNo,SCBH,gxlb,Sum(Qty) as ProdQty from Scbbs where convert(smalldatetime,convert(varchar,userdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date-10) +''' and '''+formatdatetime('yyyy/MM/dd',eD.Date+10)+'''');
    sql.Add(' group by SCBH,gxlb ) Scbbs on Scbbs.SCBH=sm.ysbh and sm.gxlb=scbbs.gxlb ');
    sql.Add('left join scbb on scbb.ProNo=scbbs.ProNo ');
    sql.Add('left join DDZL on sm.ysbh=DDZL.DDBH ');
    //
    sql.add(' group by sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo,ddzl.shipdate,scbbs.ProdQty ) as smdd ');
    sql.Add('left join BDepartment on smdd.depno=BDepartment.ID ');//20140906 wston添加修正
    sql.add('where convert(smalldatetime,convert(varchar,planDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    if cb1.Text <> 'ALL' then
      sql.add(' and smdd.gsbh = '+''''+cb1.Text+'''');
    if cb2.Text <> 'ALL' then
      sql.add(' and depno = (select id from BDepartment where depname ='+''''+cb2.Text+''''+')');
    if process.Text = 'ALL' then
    begin
      sql.add(' and smdd.gxlb in (''C'',''S'',''O'',''W'',''Z'',''A'')');
    end
    else
      sql.add(' and smdd.gxlb = '+''''+process.Text+'''');
    sql.add(' and abs(diffday) < '+ diffday.Text);
    sql.add(' order by smdd.ysbh,smdd.gxlb');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  if (datalist.ActivePageIndex=0) or (datalist.ActivePageIndex=1) then
  with q2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select smdd.ysbh,smdd.gxlb,ysbh,BDepartment.DepName,(Select DepName from BDepartment where ID=smdd.pDepNo) as ProDepNM,smdd.gsbh,article,xieming,qty,plandate,planedate,');
    sql.add('prdate,okdate,diffday ');
    sql.Add('from (');
    sql.add('select sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo as pDepNo,sum(sm.qty) as qty,min(sm.plandate) as plandate,max(sm.planedate) as planedate,');
    sql.add('min(sm.prdate) as prdate,max(sm.okdate) as okdate,');
    sql.add('isnull((');
    sql.add(' DATEDIFF(DAY,min(sm.prdate),min(sm.planDate))-ROUND(DATEDIFF(DAY,min(sm.prdate),min(sm.planDate))/7,0,1) +');//Star
    sql.add(' case when DATEDIFF(DAY,min(sm.prdate),min(sm.planDate)) < 0 then');
    sql.add('   case when DATEpart(dw, min(sm.prdate)) < DATEpart(dw, min(sm.planDate)) then 1 else 0 end');
    sql.add(' else ');
    sql.add('	  case when DATEpart(dw, min(sm.prdate)) > DATEpart(dw, min(sm.planDate)) then -1 else 0 end');
    sql.add(' end');
    sql.add('),999) as diffday  ');
    sql.add('from smdd as sm');
    //20141009 weston新增實際生產部門
    sql.add('left join (select Max(ProNo) as ProNo,SCBH,gxlb from Scbbs where convert(smalldatetime,convert(varchar,userdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date-10) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date+10)+'''');
    sql.Add(' group by SCBH,gxlb ) Scbbs on Scbbs.SCBH=sm.ysbh and sm.gxlb=scbbs.gxlb ');
    sql.Add('left join scbb on scbb.ProNo=scbbs.ProNo ');
    //
    sql.add(' group by sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo) as smdd ');
    sql.Add('left join BDepartment on smdd.depno=BDepartment.ID ');//20140906 wston添加修正
    sql.add('where convert(smalldatetime,convert(varchar,planDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    if cb1.Text <> 'ALL' then
      sql.add(' and smdd.gsbh = '+''''+cb1.Text+'''');
    if cb2.Text <> 'ALL' then
      sql.add(' and depno = (select id from BDepartment where depname ='+''''+cb2.Text+''''+')');
    if process.Text = 'ALL' then
    begin
      sql.add(' and smdd.gxlb in ('+''''+'C'+''''+','+''''+'S'+''''+','+'''');
      sql.add('O'+''''+','+''''+'W'+''''+','+''''+'Z'+''''+','+''''+'A'+''''+')');
    end
    else
      sql.add(' and smdd.gxlb = '+''''+process.Text+'''');
    sql.add(' and abs(diffday) >= '+ diffday.Text);
    sql.add(' order by smdd.ysbh,smdd.gxlb');
    active:=true;
  end;

  if datalist.ActivePageIndex=2 then
  with q3 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select smdd.gxlb,smdd.ysbh,smdd.gsbh,smdd.article,smdd.xieming,');
    sql.add('ddzl.pairs,ss.rqty,so.storyqty,smdd.plandate ');
    sql.add('from smdd ');
    sql.add('left join ddzl on ddzl.ddbh=smdd.ysbh ');
    sql.add('left join (select scbh,gxlb,sum(qty) as rqty from scbbss ');
    sql.add('  group by scbh,gxlb) as ss on ss.scbh=smdd.ysbh and ss.gxlb=smdd.gxlb ');
    sql.add('left join (select ddbh,sum(qty) as storyqty from ywcp');
    sql.add('  where indate is not  null  ');    
    sql.add('  group by ddbh) as so on so.ddbh=smdd.ysbh  ');
    sql.add('where convert(smalldatetime,convert(varchar,smdd.planDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    if cb1.Text <> 'ALL' then
      sql.add(' and smdd.gsbh = '+''''+cb1.Text+'''');
    if cb2.Text <> 'ALL' then
      sql.add(' and smdd.depno = (select id from BDepartment where depname ='+''''+cb2.Text+''''+')');
    sql.add(' and storyqty  is not  null');
    sql.add(' and rqty <  storyqty ');
    sql.add('group by smdd.gxlb,smdd.ysbh,smdd.gsbh,smdd.article,smdd.xieming,ddzl.pairs,ss.rqty,so.storyqty,smdd.plandate ');
    sql.add(' order by smdd.ysbh,smdd.gxlb');
    active:=true;
  end;

  if datalist.ActivePageIndex=3 then
  with q4 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select smdd.ysbh,smdd.gxlb,BDepartment.DepName,(Select DepName from BDepartment where ID=smdd.pDepNo) as ProDepNM,smdd.gsbh,smdd.article,smdd.xieming,');
    sql.add('smdd.qty,ywdd.etd,smdd.plandate,smdd.planedate,prdate,okdate,diffday ');
    sql.Add('from (');
    sql.add('select sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo as pDepNo,sum(sm.qty) as qty,min(sm.plandate) as plandate,max(sm.planedate) as planedate,');
    sql.add('min(sm.prdate) as prdate,max(sm.okdate) as okdate,isnull(convert(int,min(sm.planDate)) - convert(int,min(sm.PRdate)),999) as diffday  ');
    sql.add('from smdd as sm');
    //20141009 weston新增實際生產部門
    sql.add('left join (select Max(ProNo) as ProNo,SCBH,gxlb from Scbbs where convert(smalldatetime,convert(varchar,userdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date-10) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date+10)+'''');
    sql.Add(' group by SCBH,gxlb ) Scbbs on Scbbs.SCBH=sm.ysbh and sm.gxlb=scbbs.gxlb ');
    sql.Add('left join scbb on scbb.ProNo=scbbs.ProNo ');
    //
    sql.add(' group by sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo) as smdd ');
    sql.Add('left join BDepartment on smdd.depno=BDepartment.ID ');//20140906 wston添加修正
    sql.add('left join ywdd on ywdd.ddbh=smdd.ysbh ');
    sql.add('where convert(smalldatetime,convert(varchar,planDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    if cb1.Text <> 'ALL' then
      sql.add(' and smdd.gsbh = '+''''+cb1.Text+'''');
    if cb2.Text <> 'ALL' then
      sql.add(' and depno = (select id from BDepartment where depname ='+''''+cb2.Text+''''+')');
    sql.add(' and smdd.gxlb = '+''''+'A'+'''');
    sql.add(' and convert(int,etd)-convert(int,isnull(okdate,getdate()))<'+ diffday.Text);
    sql.add('  order by smdd.ysbh,smdd.gxlb');
    active:=true;
  end;

  if (q1.RecordCount = 0) and (q2.RecordCount = 0) then
  begin
    os.Text:='0';
  end else
  begin
    os.Text:=floattostr((q1.RecordCount/(q1.RecordCount+q2.recordcount))*100);
  end;
end;

procedure TReport6032.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin

try
  eclApp:=CreateOleObject('Excel.Application');
  WorkBook:=CreateOleObject('Excel.Sheet');
except
  Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
  Exit;
end;

smdd.Active:=false;
smdd.SQL.Clear;
case datalist.ActivePageIndex of
  0:
    begin
      smdd.SQL.Text:=q1.SQL.Text;
      smdd.Active:=true;
    end;
  1:
    begin
      smdd.SQL.Text:=q2.SQL.Text;
      smdd.Active:=true;
    end;
  2:
    begin
      smdd.SQL.Text:=q3.SQL.Text;
      smdd.Active:=true;
    end;
  3:
    begin
      smdd.SQL.Text:=q4.SQL.Text;
      smdd.Active:=true;
    end;

end;
try
  WorkBook:=eclApp.workbooks.Add;
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   SMDD.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=SMDD.fields[i-1].FieldName;
    end;
  SMDD.First;
  j:=2;
  while   not  SMDD.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   SMDD.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=SMDD.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      SMDD.Next;
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

procedure TReport6032.cb1Change(Sender: TObject);
var i:integer;
begin
  if cb1.Text <> 'ALL'  then
  dq.Active:=false;
  dq.SQL.Clear;
  dq.SQL.Add('select id,depname from BDepartment ');
  dq.sql.add('where gxlb in ('+''''+'C'+''''+','+'''');
  dq.sql.Add('S'+''''+','+''''+'O'+''''+','+'''');
  dq.sql.add('W'+''''+','+''''+'Z'+''''+','+''''+'A'+''''+')');
  dq.sql.add('      and gsbh='+''''+cb1.Text+'''');
  dq.Active:=true;
  cb2.Items.Clear;
  cb2.Items.Add('ALL');
  for i:=1 to dq.RecordCount do
  begin
    CB2.Items.Add(dq.fieldbyname('depname').asstring);
    dq.next;
  end;
  CB2.Itemindex:=0;
end;

procedure TReport6032.FormCreate(Sender: TObject);
var i:integer;
begin
with dq do
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
  end;
  sd.Date:=now-7;
  ed.Date:=now;
end;

procedure TReport6032.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var i:integer;
begin
  if q4.FieldByName('OKdate').isnull then
    i:=q4.FieldByName('etd').Value-date
  else
    i:=q4.FieldByName('etd').Value-q4.FieldByName('OKdate').Value;

  if i < 1 then
    DBGridEh1.canvas.font.color:=clred;

  if (i>=1) and (i<5) then
    DBGridEh1.canvas.font.color:=clblue;

  if i=5 then
    DBGridEh1.canvas.font.color:=clFuchsia;

end;

end.
