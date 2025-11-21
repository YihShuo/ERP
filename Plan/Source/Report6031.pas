unit Report6031;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, ComCtrls, Grids, DBGrids,comobj,
  GridsEh, DBGridEh;

type
  TReport603 = class(TForm)
    Panel1: TPanel;
    datalist: TPageControl;
    t1: TTabSheet;
    t2: TTabSheet;
    t3: TTabSheet;
    DataSource1: TDataSource;
    sd: TDateTimePicker;
    ed: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    cb1: TComboBox;
    q1: TQuery;
    Label3: TLabel;
    Label4: TLabel;
    diffday: TEdit;
    Button1: TButton;
    q2: TQuery;
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
    Label5: TLabel;
    cb2: TComboBox;
    Button2: TButton;
    dq: TQuery;
    smdd: TQuery;
    Label6: TLabel;
    os: TEdit;
    Label7: TLabel;
    process: TComboBox;
    qq1: TQuery;
    qq2: TQuery;
    DBGrid1: TDBGridEh;
    DBGrid2: TDBGridEh;
    TabSheet1: TTabSheet;
    q4: TQuery;
    DataSource4: TDataSource;
    DBGridEh1: TDBGridEh;
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
    q1DepName: TStringField;
    q2DepName: TStringField;
    q4diffday: TIntegerField;
    q4DepName: TStringField;
    q1ProDepNM: TStringField;
    q2ProDepNM: TStringField;
    q4ProDepNM: TStringField;
    q1etd: TDateTimeField;
    q2etd: TDateTimeField;
    DBGridEh2: TDBGridEh;
    q1ProdQty: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    procedure cb1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report603: TReport603;

implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TReport603.FormDestroy(Sender: TObject);
begin
Report603:=nil;
end;

procedure TReport603.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TReport603.Button1Click(Sender: TObject);
begin

  //與N6031主要差異為主表格由 smddlock => smdd 使用
  if (datalist.ActivePageIndex=0) or (datalist.ActivePageIndex=1) then
  with q1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select smddlock.ysbh,smddlock.gxlb,BDepartment.DepName,(Select DepName from BDepartment where ID=smddlock.pDepNo) as ProDepNM,smddlock.gsbh,article,xieming,qty,plandate,planedate,');
    sql.add('       prdate,okdate,diffday,etd,ProdQty  ');
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
    sql.add('),999) as diffday,ddzl.shipdate as etd,scbbs.ProdQty   ');
    sql.add('from smddlock as sm');
    //20141009 weston新增實際生產部門
    sql.add('left join (select Max(ProNo) as ProNo,SCBH,gxlb,Sum(Qty) as ProdQty  from Scbbs where convert(smalldatetime,convert(varchar,userdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date-10) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date+10)+'''');
    sql.Add(' group by SCBH,gxlb ) Scbbs on Scbbs.SCBH=sm.ysbh and sm.gxlb=scbbs.gxlb ');
    sql.Add('left join scbb on scbb.ProNo=scbbs.ProNo ');
    sql.Add('left join DDZL on sm.ysbh=DDZL.DDBH ');
    //
    sql.add(' group by sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo,ddzl.shipdate,scbbs.ProdQty) as smddlock ');
    sql.Add('left join BDepartment on smddlock.depno=BDepartment.ID ');//20140906 wston添加修正
    sql.add('where convert(smalldatetime,convert(varchar,planDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    if cb1.Text <> 'ALL' then
      sql.add(' and smddlock.gsbh = '''+cb1.Text+'''');
    if cb2.Text <> 'ALL' then
      sql.add(' and depno = (select id from BDepartment where depname ='''+cb2.Text+''''+')');
    if process.Text = 'ALL' then
    begin
      sql.add(' and smddlock.gxlb in (''C'',''S'',''O'',''W'',''Z'',''A'')');
    end else
      sql.add(' and smddlock.gxlb = '+''''+process.Text+'''');
    sql.add(' and abs(diffday) < '+ diffday.Text);
    sql.add(' order by smddlock.ysbh,smddlock.gxlb');
    funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  if (datalist.ActivePageIndex=0) or (datalist.ActivePageIndex=1) then
  with q2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select smddlock.ysbh,smddlock.gxlb,BDepartment.DepName,(Select DepName from BDepartment where ID=smddlock.pDepNo) as ProDepNM,smddlock.gsbh,article,xieming,qty,plandate,planedate,');
    sql.add('prdate,okdate,diffday,etd ');
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
    sql.add('),999) as diffday,ddzl.shipdate as etd  ');
    sql.add('from smddlock as sm');
    //20141009 weston新增實際生產部門
    sql.add('left join (select Max(ProNo) as ProNo,SCBH,gxlb from Scbbs where convert(smalldatetime,convert(varchar,userdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date-10) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date+10)+'''');
    sql.Add(' group by SCBH,gxlb ) Scbbs on Scbbs.SCBH=sm.ysbh and sm.gxlb=scbbs.gxlb ');
    sql.Add('left join scbb on scbb.ProNo=scbbs.ProNo ');
    sql.Add('left join DDZL on sm.ysbh=DDZL.DDBH ');
    //
    sql.add(' group by sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo,ddzl.shipdate ) as smddlock ');
    sql.Add('left join BDepartment on smddlock.depno=BDepartment.ID ');//20140906 wston添加修正
    sql.add('where convert(smalldatetime,convert(varchar,planDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    if cb1.Text <> 'ALL' then
      sql.add(' and smddlock.gsbh = '+''''+cb1.Text+'''');
    if cb2.Text <> 'ALL' then
      sql.add(' and depno = (select id from BDepartment where depname ='+''''+cb2.Text+''''+')');
    if process.Text = 'ALL' then
    begin
      sql.add(' and smddlock.gxlb in ('+''''+'C'+''''+','+''''+'S'+''''+','+'''');
      sql.add('O'+''''+','+''''+'W'+''''+','+''''+'Z'+''''+','+''''+'A'+''''+')');
    end
    else
      sql.add(' and smddlock.gxlb = '+''''+process.Text+'''');
    sql.add(' and abs(diffday) >= '+ diffday.Text);
    sql.add(' order by smddlock.ysbh,smddlock.gxlb');
    active:=true;
  end;

  if datalist.ActivePageIndex=2 then
  with q3 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select smddlock.gxlb,smddlock.ysbh,smddlock.gsbh,smddlock.article,smddlock.xieming,');
    sql.add('ddzl.pairs,ss.rqty,so.storyqty,smddlock.plandate ');
    sql.add('from smddlock ');
    sql.add('left join ddzl on ddzl.ddbh=smddlock.ysbh ');
    sql.add('left join (select scbh,gxlb,sum(qty) as rqty from scbbss ');
    sql.add('  group by scbh,gxlb) as ss on ss.scbh=smddlock.ysbh and ss.gxlb=smddlock.gxlb ');
    sql.add('left join (select ddbh,sum(qty) as storyqty from ywcp');
    sql.add('  where indate is not  null  ');    
    sql.add('  group by ddbh) as so on so.ddbh=smddlock.ysbh  ');
    sql.add('where convert(smalldatetime,convert(varchar,smddlock.planDate,111)) between ');

    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    if cb1.Text <> 'ALL' then
      sql.add(' and smddlock.gsbh = '+''''+cb1.Text+'''');
    if cb2.Text <> 'ALL' then
      sql.add(' and smddlock.depno = (select id from BDepartment where depname ='+''''+cb2.Text+''''+')');
    sql.add(' and storyqty  is not  null');
    sql.add(' and rqty <  storyqty ');
    sql.add('group by smddlock.gxlb,smddlock.ysbh,smddlock.gsbh,smddlock.article,smddlock.xieming,ddzl.pairs,ss.rqty,so.storyqty,smddlock.plandate ');
    sql.add(' order by smddlock.ysbh,smddlock.gxlb');
    active:=true;
  end;

  //
  if datalist.ActivePageIndex=3 then
  with q4 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select smddlock.ysbh,smddlock.gxlb,BDepartment.DepName,(Select DepName from BDepartment where ID=smddlock.pDepNo) as ProDepNM,smddlock.gsbh,smddlock.article,smddlock.xieming,');
    sql.add('smddlock.qty,ywdd.etd,smddlock.plandate,smddlock.planedate,prdate,okdate,diffday ');
    sql.Add('from (');
    sql.add('select sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo as pDepNo,sum(sm.qty) as qty,min(sm.plandate) as plandate,max(sm.planedate) as planedate,');
    sql.add('min(sm.prdate) as prdate,max(sm.okdate) as okdate,isnull(convert(int,min(sm.planDate)) - convert(int,min(sm.PRdate)),999) as diffday  ');
    sql.add('from smddlock as sm');
    //20141009 weston新增實際生產部門
    sql.add('left join (select Max(ProNo) as ProNo,SCBH,gxlb from Scbbs where convert(smalldatetime,convert(varchar,userdate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date-10) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date+10)+'''');
    sql.Add(' group by SCBH,gxlb ) Scbbs on Scbbs.SCBH=sm.ysbh and sm.gxlb=scbbs.gxlb ');
    sql.Add('left join scbb on scbb.ProNo=scbbs.ProNo ');
    //
    sql.add(' group by sm.ysbh,sm.gxlb,sm.gsbh,sm.article,sm.xieming,sm.depNo,scbb.DepNo) as smddlock ');
    sql.Add('left join BDepartment on smddlock.depno=BDepartment.ID ');//20140906 wston添加修正
    sql.add('left join ywdd on ywdd.ddbh=smddlock.ysbh ');
    sql.add('where convert(smalldatetime,convert(varchar,planDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',sD.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eD.Date)+'''');
    if cb1.Text <> 'ALL' then
      sql.add(' and smddlock.gsbh = '+''''+cb1.Text+'''');
    if cb2.Text <> 'ALL' then
      sql.add(' and depno = (select id from BDepartment where depname ='+''''+cb2.Text+''''+')');
    sql.add(' and smddlock.gxlb = '+''''+'A'+'''');
    sql.add(' and convert(int,etd)-convert(int,isnull(okdate,getdate()))<'+ diffday.Text);
    sql.add('  order by smddlock.ysbh,smddlock.gxlb');
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

procedure TReport603.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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

procedure TReport603.cb1Change(Sender: TObject);
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

procedure TReport603.FormCreate(Sender: TObject);
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

procedure TReport603.DBGridEh1GetCellParams(Sender: TObject;
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

  if i>=5 then
    DBGridEh1.canvas.font.color:=clFuchsia;

end;

procedure TReport603.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (q1.FieldByName('DepName').AsString <> q1.FieldByName('ProDepNM').AsString) and (q1.FieldByName('ProDepNM').AsString <> '') then
      DBGrid1.canvas.Font.Color := clred;
end;

procedure TReport603.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if (q2.FieldByName('DepName').AsString <> q2.FieldByName('ProDepNM').AsString) and (q2.FieldByName('ProDepNM').AsString <> '') then
      DBGrid2.canvas.Font.Color := clred;
end;

end.
