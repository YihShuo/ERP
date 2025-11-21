unit monthcost1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls,comobj;

type
  TMonthCost = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    cb1: TComboBox;
    qtemp: TQuery;
    datashow: TQuery;
    DataSource1: TDataSource;
    datashowcostyear: TStringField;
    datashowcostmonth: TStringField;
    datashowcostRYNO: TStringField;
    datashowcostEC: TFloatField;
    datashowcostRC: TFloatField;
    datashowcostOrderQ: TIntegerField;
    datashowcostCollar: TFloatField;
    datashowcostClastdate: TDateTimeField;
    datashowcostFeeding: TFloatField;
    datashowcostFlastdate: TDateTimeField;
    datashowcostWip: TFloatField;
    datashowcostStorage: TIntegerField;
    datashowcostINmonth: TFloatField;
    datashowcostOut: TBooleanField;
    datashowcostNGQ: TIntegerField;
    datashowuserid: TStringField;
    datashowlastuserdate: TDateTimeField;
    Label2: TLabel;
    cb2: TComboBox;
    Label3: TLabel;
    cb3: TComboBox;
    Label4: TLabel;
    Button1: TButton;
    ch1: TCheckBox;
    ch2: TCheckBox;
    Button2: TButton;
    costc: TQuery;
    costtemp: TQuery;
    updataq: TQuery;
    dbg: TDBGridEh;
    upsql: TUpdateSQL;
    Button3: TButton;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cb2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);


    procedure DBGrid1Columns5EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGrid1Columns4EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGrid1Columns7EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DBGrid1Columns9EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure dbgColumns12EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure Button4Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthCost: TMonthCost;

implementation

uses main1, Detailsdata1, storkin1;

{$R *.dfm}

procedure TMonthCost.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMonthCost.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select costyear+'+''''+'/'+''''+'+costmonth as yearmonth from monthcost group by costyear,costmonth');
    CB1.Items.Add('ALL');
    //memo1.Text:=sql.Text;
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('yearmonth').asstring);
        next;
      end;
    CB1.Text:='ALL';
    active:=false;

    active:=false;
    sql.Clear;
    if cb2.Text='ALL' then
      sql.add('select ddbh from ywdd group by ddbh')
    else
    begin
      if cb2.text='ERR RY' then
        sql.Add('select ddbh from ywdd where gsbh is null group by ddbh')
      else
        sql.add('select ddbh from ywdd where gsbh='+''''+cb2.text+''''+' group by ddbh');
    end;
    
    CB3.Items.Add('ALL');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB3.Items.Add(fieldbyname('ddbh').asstring);
        next;
      end;
    CB3.Text:='ALL';
    active:=false;
  end;

end;

procedure TMonthCost.cb2Change(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    if (cb2.Text='ALL') or (cb2.text='ERR RY') then
      sql.add('select ddbh from ywdd group by ddbh')
    else
      sql.add('select ddbh from ywdd where gsbh='+''''+'V'+cb2.text+''''+' group by ddbh');
    cb3.Items.Clear;
    CB3.Items.Add('ALL');
    //memo1.text:=sql.text;
    active:=true;
    for i:=1 to recordcount do
      begin
        CB3.Items.Add(fieldbyname('ddbh').asstring);
        next;
      end;
    CB3.Text:='ALL';
    active:=false;
  end;
end;

procedure TMonthCost.Button2Click(Sender: TObject);
//var i:integer;
//var coste:double;
var edate:Tdate;
var y,m:word;
//var ryno:string;
begin
  with costc do
  begin
  //找出可能未結算完成的資料(以最後更新日期判定，如小於結算月年視為未結算
    active:=false;
    sql.Clear;
    sql.add('update monthcost');
    sql.add('set  costinmonth= isnull(p.llqty,0)+isnull(p.ppqty,0),');
    sql.add('     costcollar= isnull(p.llqty,0),');
    sql.add('     costfeeding=isnull(p.ppqty,0),');
    sql.add('     costclastdate=getdate(),');
    sql.add('     costflastdate=getdate(),');
    sql.add('     costorderq=p.pairs,');
    sql.add('     userid='+''''+main.Edit1.Text+''''+',');
    sql.add('     lastuserdate=getdate()');
    sql.add('from monthcost as t,');
    //取出當月的領,補料
    sql.add(' (select year(cfmdate) as cy,month(cfmdate) as cm,kclls.scbh,ddzl.pairs,');
    sql.add('sum(case when blsb is null then KCLLS.Qty*cwdj.usprice end)  as llqty,');
    sql.add('sum(case when blsb ='+''''+'Y'+''''+' then KCLLS.Qty*cwdj.usprice end)  as ppqty');
    sql.add(' from KCLLS');
    sql.add(' left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add(' left join DDZL on DDZL.ZLBH=KCLLS.SCBH ');
    sql.add(' left join cwdj on cwdj.clbh=kclls.clbh ');
    sql.add('      and djyear= year(cfmdate) and djmonth=month(cfmdate)');
    sql.add('left join monthcost on monthcost.costryno=kclls.scbh');
    sql.add('     and costyear=year(cfmdate) and costmonth=month(cfmdate)');
    sql.add(' where KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('      and KCLLS.SCBH =costryno');
    sql.add('      and costout=0 and year(monthcost.lastuserdate) = costyear');
    sql.add('      and month(monthcost.lastuserdate) = costmonth');
    sql.add('      and KCLLS.Qty<>0');
    sql.add('      and substring(KCLL.DepId,1,1)<>'+''''+'R'+'''');
    sql.add('group by year(cfmdate),month(cfmdate),kclls.scbh,ddzl.pairs) as p');
    sql.add('where t.costyear=p.cy and t.costmonth=p.cm and p.scbh=t.costryno');
    //memo1.text:=sql.text;
    execsql;


  //計算標準成本(以最接近的月平均成本->最接近的採購成本,如有一材料找不到單價則以零計)
    active:=false;
    sql.Clear;
    sql.add('update monthcost');
    sql.add(' set  costec= p.ec ');
    sql.add('from monthcost as t, ');
    sql.add('(select zlzls2.zlbh,sum(zlzls2.clsl*isnull(cwdj.usprice,0)) as ec,k.sym ');
    sql.add(' from zlzls2 ');
    sql.add('left join (select min(costyear+costmonth) as sym,costryno from monthcost ');
    sql.add('	group by costryno) as k on k.costryno=zlzls2.zlbh ');
    sql.add('left join cwdj on cwdj.clbh=zlzls2.clbh and (cwdj.djyear+cwdj.djmonth)=k.sym ');
    sql.add('where mjbh = '+''''+'ZZZZZZZZZZ'+'''');
    sql.add('	and substring(zlzls2.clbh,1,1)<>'+''''+'W'+'''');
    sql.add(' group by zlzls2.zlbh,k.sym) as p ');
    sql.add('where t.costryno=p.zlbh ');
    //sql.add('');
    //memo1.text:=sql.text;
    execsql;
    //計算總領料金額,WIP,入庫數
    with datashow do
    begin
      //取出月份最後一天,如未選日期則記算當月
      if (cb1.text <> 'ALL') and (cb1.text <> 'ERR RY') then
      begin
        y:=strtoint(copy(cb1.Text,1,4));
        m:=strtoint(copy(cb1.Text,6,2));
        edate:=incmonth(encodedate(y,m,1));
      end
      else
      begin
        edate:=incmonth(now);
      end;  
      //showmessage(datetostr(edate));
      //edate:=endofthemonth(sdate);
      if datashow.Active then
      begin
        datashow.active:=false;
        datashow.Active:=true;
        while  not datashow.Eof do
        begin
          datashow.Edit;
          //更新總領料金額
          costc.active:=false;
          costc.sql.Clear;
          costc.sql.add('select ');
          costc.sql.add(' sum(isnull( KCLLS.Qty,0)*isnull(cwdj.usprice,0)) as costf ');
          costc.sql.add(' from kclls');
          costc.sql.add(' left join kcll on kcll.llno=kclls.llno');
          costc.sql.add(' left join cwdj on cwdj.clbh=kclls.clbh and ');
          costc.sql.add('     djyear= year(cfmdate) and djmonth=month(cfmdate) ');
          costc.sql.add(' where  KCLL.CFMID<>'+''''+'NO'+'''');
          costc.sql.add('     and KCLLS.Qty<>0');
          costc.sql.add('     and substring(KCLL.DepId,1,1)<>'+''''+'R'+'''');
          costc.sql.add('     and kclls.scbh<>'+''''+'ZZZZZZZZZZ'+'''');
          costc.sql.add('     and cfmdate<'+''''+datetostr(edate)+'''');
          costc.sql.add('     and kclls.scbh='+''''+datashow.fieldbyname('costryno').Value+'''');
          //memo1.text:=costc.sql.text;
          costc.active:=true;
          dbg.Fields[4].Value:=costc.Fieldbyname('costf').Value;
          //求出當月入庫數量 ---2010/4/14
          costc.active:=false;
          costc.sql.Clear;
          costc.sql.add('select sum(qty) as q  from ywcp');
          costc.sql.add('where lastindate is not null ');
          costc.sql.add('      and lastindate<'+''''+datetostr(edate)+'''');
          costc.sql.add('      and ddbh='+''''+datashow.fieldbyname('costryno').Value+'''');
          costc.sql.add('');
          //memo1.text:=costc.sql.text;
          costc.active:=true;
          if costc.Fieldbyname('q').Value>0 then
            dbg.Fields[12].Value:=costc.Fieldbyname('q').Value
          else
            dbg.Fields[12].Value:=0;
          //求出當月的WIP數
          if (dbg.Fields[12].Value=dbg.Fields[6].Value) then
            dbg.Fields[11].Value:=0
          else
            begin
              if dbg.Fields[6].Value<>0 then
                dbg.Fields[11].Value:=dbg.Fields[4].Value-(dbg.Fields[3].Value/dbg.Fields[6].Value*dbg.Fields[12].Value)
              else
                dbg.Fields[11].Value:=0;
            end;
          //end;

          upsql.Apply(ukmodify);
          datashow.next;
        end;
      end;
    end;

  end;
end;

procedure TMonthCost.Button1Click(Sender: TObject);
begin
  with datashow do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from monthcost');

    if (cb1.text='ALL') then
      sql.add('where costyear>'+''''+'2008'+'''')
    else
      sql.add('where costyear+'+''''+'/'+''''+'+costmonth='+''''+cb1.Text+'''');


    if (cb2.text<>'ALL') and (cb2.text<>'ERR RY') then
      sql.add(' and costfat='+''''+'V'+cb2.Text+'''')
    else
      if cb2.text='ERR RY' then
        sql.Add('   and costfat is null');

    if cb3.text<>'ALL' then
      sql.Add(' and costryno='+''''+cb3.text+'''');

    if ch1.Checked then
      sql.add(' and costorderq=coststorage ' );

    if ch2.Checked then
      sql.add(' and costout=1 ' );  

    sql.add('order by costryno');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
end;







procedure TMonthCost.DBGrid1Columns5EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  //顯示出當月正單及補單的加總
  if DetailsData<>nil then
  begin
    DetailsData.show;
    DetailsData.windowstate:=wsNormal;
  end
  else
    begin
      DetailsData:=TDetailsData.create(self);
      DetailsData.show;
  end;
  with detailsdata.q1 do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select kclls.llno,BDepartment.depname,kclls.clbh,clzl.ywpm,clzl.dwbh,kclls.qty,');
    sql.Add('isnull(cwdj.usprice,0) as usprice,(isnull(cwdj.usprice,0)*isnull(kclls.qty,0)) as usacc,');
    sql.Add('kclls.blsb,kclls.scbh,kcll.cfmdate,clzl.zwpm ');
    sql.Add('from kclls');
    sql.Add(' left join kcll on kclls.llno=kcll.llno');
    sql.Add(' left join clzl on kclls.clbh=clzl.cldh');
    sql.Add(' left join BDepartment on kcll.depid=BDepartment.id');
    sql.Add(' left join cwdj on cwdj.clbh=kclls.clbh and djyear= year(cfmdate) and djmonth=month(cfmdate)');
    sql.Add(' where kclls.scbh='+''''+datashow.fieldbyname('costryno').Value+'''');
    sql.Add('      and substring(KCLL.DepId,1,1)<>'+''''+'R'+'''');
    sql.Add('      and kclls.scbh<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('      and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.Add('      and KCLLS.Qty<>0');
    sql.Add('      and year(kcll.cfmdate)='+''''+datashow.fieldbyname('costyear').Value+'''');
    sql.Add('      and month(kcll.cfmdate)='+''''+datashow.fieldbyname('costmonth').Value+'''');

    active:=true;
  end;
end;


procedure TMonthCost.DBGrid1Columns4EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
var edate:Tdate;
var y,m:word;
begin
  //顯示出全部領料的加總
  if DetailsData<>nil then
  begin
    DetailsData.show;
    DetailsData.windowstate:=wsNormal;
  end
  else
    begin
      DetailsData:=TDetailsData.create(self);
      DetailsData.show;
  end;
  //取出月份最後一天
  y:=strtoint(copy(cb1.Text,1,4));
  m:=strtoint(copy(cb1.Text,6,2));
  edate:=incmonth(encodedate(y,m,1));
  with detailsdata.q1 do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select kclls.llno,BDepartment.depname,kclls.clbh,clzl.ywpm,clzl.dwbh,kclls.qty,');
    sql.Add('isnull(cwdj.usprice,0) as usprice,(isnull(cwdj.usprice,0)*isnull(kclls.qty,0)) as usacc,');
    sql.Add('kclls.blsb,kclls.scbh,kcll.cfmdate,clzl.zwpm ');
    sql.Add('from kclls');
    sql.Add(' left join kcll on kclls.llno=kcll.llno');
    sql.Add(' left join clzl on kclls.clbh=clzl.cldh');
    sql.Add(' left join BDepartment on kcll.depid=BDepartment.id');
    sql.Add(' left join cwdj on cwdj.clbh=kclls.clbh and djyear= year(cfmdate) and djmonth=month(cfmdate)');
    sql.Add(' where kclls.scbh='+''''+datashow.fieldbyname('costryno').Value+'''');
    sql.Add('      and substring(KCLL.DepId,1,1)<>'+''''+'R'+'''');
    sql.Add('      and kclls.scbh<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('      and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.Add('      and KCLLS.Qty<>0');
    sql.Add('      and kcll.cfmdate<'+''''+datetostr(edate)+'''');

    active:=true;
  end;
end;

procedure TMonthCost.DBGrid1Columns7EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  //顯示當月正單領料
  if DetailsData<>nil then
  begin
    DetailsData.show;
    DetailsData.windowstate:=wsNormal;
  end
  else
    begin
      DetailsData:=TDetailsData.create(self);
      DetailsData.show;
  end;
  with detailsdata.q1 do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select kclls.llno,BDepartment.depname,kclls.clbh,clzl.ywpm,clzl.dwbh,kclls.qty,');
    sql.Add('isnull(cwdj.usprice,0) as usprice,(isnull(cwdj.usprice,0)*isnull(kclls.qty,0)) as usacc,');
    sql.Add('kclls.blsb,kclls.scbh,kcll.cfmdate,clzl.zwpm ');
    sql.Add('from kclls');
    sql.Add(' left join kcll on kclls.llno=kcll.llno');
    sql.Add(' left join clzl on kclls.clbh=clzl.cldh');
    sql.Add(' left join BDepartment on kcll.depid=BDepartment.id');
    sql.Add(' left join cwdj on cwdj.clbh=kclls.clbh and djyear= year(cfmdate) and djmonth=month(cfmdate)');
    sql.Add(' where kclls.scbh='+''''+datashow.fieldbyname('costryno').Value+'''');
    sql.Add('      and substring(KCLL.DepId,1,1)<>'+''''+'R'+'''');
    sql.Add('      and kclls.scbh<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('      and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.Add('      and KCLLS.Qty<>0');
    sql.Add('      and year(kcll.cfmdate)='+''''+datashow.fieldbyname('costyear').Value+'''');
    sql.Add('      and month(kcll.cfmdate)='+''''+datashow.fieldbyname('costmonth').Value+'''');
    sql.add('      and (kclls.blsb <> '+''''+'Y'+''''+' or kclls.blsb is Null)');
    active:=true;
  end;
end;

procedure TMonthCost.DBGrid1Columns9EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  //顯示當月補料明細
  if DetailsData<>nil then
  begin
    DetailsData.show;
    DetailsData.windowstate:=wsNormal;
  end
  else
    begin
      DetailsData:=TDetailsData.create(self);
      DetailsData.show;
  end;
  with detailsdata.q1 do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select kclls.llno,BDepartment.depname,kclls.clbh,clzl.ywpm,clzl.dwbh,kclls.qty,');
    sql.Add('isnull(cwdj.usprice,0) as usprice,(isnull(cwdj.usprice,0)*isnull(kclls.qty,0)) as usacc,');
    sql.Add('kclls.blsb,kclls.scbh,kcll.cfmdate,clzl.zwpm ');
    sql.Add('from kclls');
    sql.Add(' left join kcll on kclls.llno=kcll.llno');
    sql.Add(' left join clzl on kclls.clbh=clzl.cldh');
    sql.Add(' left join BDepartment on kcll.depid=BDepartment.id');
    sql.Add(' left join cwdj on cwdj.clbh=kclls.clbh and djyear= year(cfmdate) and djmonth=month(cfmdate)');
    sql.Add(' where kclls.scbh='+''''+datashow.fieldbyname('costryno').Value+'''');
    sql.Add('      and substring(KCLL.DepId,1,1)<>'+''''+'R'+'''');
    sql.Add('      and kclls.scbh<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('      and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.Add('      and KCLLS.Qty<>0');
    sql.Add('      and year(kcll.cfmdate)='+''''+datashow.fieldbyname('costyear').Value+'''');
    sql.Add('      and month(kcll.cfmdate)='+''''+datashow.fieldbyname('costmonth').Value+'''');
    sql.add('      and kclls.blsb = '+''''+'Y'+'''');
    active:=true;
  end;
end;

procedure TMonthCost.Button3Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if datashow.Active then
  begin
    if datashow.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  for   i:=1   to   datashow.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=datashow.fields[i-1].FieldName;
    end;
  datashow.First;
  j:=2;
  while   not  datashow.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   datashow.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=datashow.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      datashow.Next;
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

procedure TMonthCost.dbgColumns12EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
begin
  //顯示當月入庫明細
  if storkin<>nil then
  begin
    storkin.show;
    storkin.windowstate:=wsNormal;
  end
  else
    begin
      storkin:=Tstorkin.create(self);
      storkin.show;
  end;
  with storkin.q1 do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select ddbh,qty,ckbh,kcbh,depname,lastindate,exedate ');
    sql.Add('from ywcp ');
    sql.Add('left join bdepartment on ywcp.depno=bdepartment.id');
    sql.Add(' where ddbh='+''''+datashow.fieldbyname('costryno').Value+'''');
    sql.Add('      and year(lastindate)<='+''''+datashow.fieldbyname('costyear').Value+'''');
    sql.Add('      and month(lastindate)<='+''''+datashow.fieldbyname('costmonth').Value+'''');
    sql.add('union all');
    sql.Add('select ddbh,qty,ckbh,kcbh,depname,lastindate,exedate ');
    sql.Add('from ywcpold ');
    sql.Add('left join bdepartment on ywcpold.depno=bdepartment.id');
    sql.Add(' where ddbh='+''''+datashow.fieldbyname('costryno').Value+'''');
    sql.Add('      and year(lastindate)<='+''''+datashow.fieldbyname('costyear').Value+'''');
    sql.Add('      and month(lastindate)<='+''''+datashow.fieldbyname('costmonth').Value+'''');
    sql.add('order by lastindate');
    //storkin.memo1.text:=sql.text;
    active:=true;
  end;
end;

procedure TMonthCost.Button4Click(Sender: TObject);
begin
  with costc do
  begin
  //取出新領料的資料
    active:=false;
    sql.Clear;
    sql.add('insert into monthcost ');
    sql.add('select year(cfmdate) as cy,month(cfmdate) as cm,kclls.scbh,0,0,isnull(ywdd.qty,0), ');
    sql.add('isnull(sum(case when blsb is null then isnull(KCLLS.Qty,0)*isnull(cwdj.usprice,0) end),0)  as llqty, ');
    sql.add('getdate(), ');
    sql.add('isnull(sum(case when blsb ='+''''+'Y'+'''');
    sql.add(' then isnull(KCLLS.Qty,0)*isnull(cwdj.usprice,0) end),0)  as ppqty, ');
    sql.add('getdate(),0,0, ');
    sql.add('sum( isnull(KCLLS.Qty,0)*isnull(cwdj.usprice,0)) as rcqty, ');
    sql.add('(case when ywdd.exesb ='+''''+'OK'+''''+'  then '+''''+'1'+'''');
    sql.Add('  else '+''''+'0'+''''+'  end) as outp, ');
    sql.add('0,'+''''+main.Edit1.Text+''''+',getdate(),ywdd.gsbh ');
    sql.add(' from KCLLS ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join ywdd on ywdd.ddBH=KCLLS.SCBH ');
    sql.add('left join cwdj on cwdj.clbh=kclls.clbh and djyear= year(cfmdate) and djmonth=month(cfmdate) ');
    sql.add('left join (select ddbh,MAX(lastindate) as ld  from ywcp group by  ddbh) as stockin on stockin.ddbh=kclls.scbh ');
    sql.add(' where KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('      and KCLLS.Qty<>0');
    sql.add('      and substring(KCLL.DepId,1,1)<>'+''''+'R'+'''');
    sql.add('      and kclls.scbh<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.add('      and cfmdate > '+''''+'2010/01/01'+'''');
    sql.add('      and  cast(year(cfmdate) as char(4))+cast(month(cfmdate) as char(2))');
    sql.add('           +kclls.scbh not in (select costyear+costmonth+costryno from monthcost)');
    sql.add(' group by year(cfmdate),month(cfmdate),kclls.scbh,ywdd.qty,ywdd.exesb,ywdd.gsbh');
    //memo1.text:=sql.text;
    execsql;
  end;
end;
end.
