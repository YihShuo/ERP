unit PlanDate1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,comobj
  ,ehlibbde,dateutils, GridsEh, DBGridEh, ComCtrls;

type
  TPlanDate = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    ZLList: TQuery;
    DS1: TDataSource;
    UpZL: TUpdateSQL;
    Edit2: TEdit;
    ZLListZLBH: TStringField;
    ZLListCDate: TDateTimeField;
    ZLListSDate: TDateTimeField;
    ZLListODate: TDateTimeField;
    ZLListADate: TDateTimeField;
    ZLListCSD: TDateTimeField;
    ZLListAssemble: TStringField;
    ZLListStitching: TStringField;
    ZLListCTQty: TIntegerField;
    ZLListUSERID1: TStringField;
    ZLListUSERDATE1: TDateTimeField;
    ZLListUSERID2: TStringField;
    ZLListUSERDATE2: TDateTimeField;
    ZLListYN: TStringField;
    ZLListXieXing: TStringField;
    ZLListSheHao: TStringField;
    ZLListShipDate: TDateTimeField;
    ZLListXieMing: TStringField;
    ZLListArticle: TStringField;
    ZLListPairs: TIntegerField;
    ZLListKHPO: TStringField;
    ZLListDDGB: TStringField;
    ZLListYSSM: TStringField;
    ZLListBZCC: TStringField;
    ZLListXTMH: TStringField;
    ZLListDDMH: TStringField;
    ZLListDAOMH: TStringField;
    ZLListSCYEAR: TStringField;
    ZLListSCMONTH: TStringField;
    ZLListGSBH: TStringField;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label15: TLabel;
    Label14: TLabel;
    updatesql: TQuery;
    ZLListCEdate: TDateTimeField;
    ZLListSEdate: TDateTimeField;
    ZLListOEdate: TDateTimeField;
    ZLListAEdate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ZLListNewRecord(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlanDate: TPlanDate;
  NDate,sdate,edate:Tdate;

implementation

uses main1, PlanDate_Dep1, PlanDate_DepS1, OrderPlan1;

{$R *.dfm}

procedure TPlanDate.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPlanDate.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TPlanDate.Button1Click(Sender: TObject);
//var y,m:word;
begin
{if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);     }   
sdate:=DTP1.Date;
edate:=DTP2.Date;

with ZLList do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SCZLDate.*,DDZL.XieXing,DDZL.SheHao,DDZL.ShipDate,XXZL.XieMing,XXZL.Article ,DDZL.Pairs');
    sql.add('       ,DDZl.KHPO,lbzls.YWSM as DDGB ,XXZL.YSSM,XXZL.BZCC,XXZL.XTMH,XXZL.DDMH,XXZL.DAOMH');
    sql.add('from SCZLDate');
    sql.add('left join ZLZL on ZLZL.ZLBH=SCZLDate.ZLBH');
    sql.add('left join DDZL on ZLZL.DDBH=DDZL.DDBH');
    sql.add('left join XXZL on XXZL.Xiexing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao'); 
    sql.add('left join KFZL on KFZl.KFDH=DDZl.KHBH ') ; 
    sql.add('left join LBZLS on lbzls.lb='+''''+'06'+''''+' and lbzls.lbdh=DDZL.DDGB ');
    sql.Add('where SCZLDate.ZLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and KFZL.KFJC like'+''''+edit2.Text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('      and DDZL.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by SCZLDate.ZLBH');
    active:=true;
  end;
panel3.Visible:=false;
bb2.Enabled:=true;
bbt1.Enabled:=true;
bbt2.Enabled:=true;
bbt3.Enabled:=true;
bbt4.Enabled:=true;
bbt6.Enabled:=true;
end;

procedure TPlanDate.BB7Click(Sender: TObject);
begin
close;
end;

procedure TPlanDate.BBT1Click(Sender: TObject);
begin
ZLList.First;
end;

procedure TPlanDate.BBT2Click(Sender: TObject);
begin
ZLList.prior;
end;

procedure TPlanDate.BBT3Click(Sender: TObject);
begin
ZLList.next;
end;

procedure TPlanDate.BBT4Click(Sender: TObject);
begin
ZLList.last;
end;

procedure TPlanDate.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  ZLList.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   ZLList.fieldcount-1    do
          begin
              eclApp.Cells(1,i+1):=ZLList.fields[i].FieldName;
          end;
        ZLList.First;
        j:=2;
        while   not   ZLList.Eof   do
          begin
            for   i:=0   to   ZLList.fieldcount-1   do
              begin
                eclApp.Cells(j,i+1):=ZLList.Fields[i].Value;
              end;
            ZLList.Next;
            inc(j);
          end;
    eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TPlanDate.FormCreate(Sender: TObject); 
var i:integer;
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        DBGrid1.Columns[15].picklist.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    active:=false;
  end; 
DTP1.date:=startofthemonth(NDate)+5;
DTP2.date:=startofthemonth(incmonth(NDate,1))+4;
end;

procedure TPlanDate.FormDestroy(Sender: TObject);
begin
PlanDate:=nil;
end;

procedure TPlanDate.ZLListNewRecord(DataSet: TDataSet);
begin

abort;
end;

procedure TPlanDate.BB2Click(Sender: TObject);
begin
  {由明細生管排程更新大排程表}

  with updatesql do
  begin
    active:=false;
    sql.clear;
    sql.Add('select ddzl.ddbh,a.gsbh,CONVERT(char(10),ddzl.shipdate,111) as shipdate, ');
    sql.Add('c.scyear,c.scmonth,');
    sql.Add('CONVERT(char(10),c.strt,111) as CSP,CONVERT(char(10),c.strtR,111) as CSR, ');
    sql.Add('CONVERT(char(10),c.endd,111) as CEP,CONVERT(char(10),c.enddr,111) as CER, ');
    sql.Add('CONVERT(char(10),s.strt,111) as SSP,CONVERT(char(10),s.strtR,111) as SSR, ');
    sql.Add('CONVERT(char(10),s.endd,111) as SEP,CONVERT(char(10),s.enddR,111) as SER, ');
    sql.Add('CONVERT(char(10),o.strt,111) as OSP,CONVERT(char(10),o.strtR,111) as OSR, ');
    sql.Add('CONVERT(char(10),o.endd,111) as OEP,CONVERT(char(10),o.enddR,111) as OER, ');
    sql.Add('CONVERT(char(10),a.strt,111) as ASP,CONVERT(char(10),a.strtR,111) as ASR, ');
    sql.Add('CONVERT(char(10),a.endd,111) as AEP,CONVERT(char(10),a.enddR,111) as AER, ');
    sql.add('s.depno as sdep,a.depno as adep ');
    sql.Add('from ddzl ');
    sql.Add('left join ');
    sql.Add('    (select smdd.scyear,smdd.scmonth,smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'C'+ '''');
    sql.Add('      group by smdd.scyear,smdd.scmonth,smdd.ysbh) as c on c.ysbh=ddzl.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,smdd.depno,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'S'+ '''');
    sql.Add('      group by smdd.ysbh,smdd.depno) as S on s.ysbh=ddzl.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,min(smdd.plandate) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'o'+ '''');
    sql.Add('      group by smdd.ysbh) as o on o.ysbh=ddzl.ddbh ');
    sql.Add('left join ');
    sql.Add('    (select smdd.ysbh,smdd.depno,smdd.gsbh,IsNull(min(smdd.plandate),min(smdd.plandate)) as strt,max(smdd.planedate) as endd, ');
    sql.Add('			min(smdd.PRdate) as strtR,max(smdd.OKdate) as enddR ');
    sql.Add('      from smdd ');
    sql.Add('      where smdd.gxlb='+''''+'A'+ '''');
    sql.Add('      group by smdd.ysbh,smdd.depno,smdd.gsbh) as A on A.ysbh=ddzl.ddbh ');

    sql.Add('where ddzl.ddbh like '+''''+edit1.Text+'%'+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');

    sql.Add('group by ddzl.ddbh,a.gsbh,ddzl.shipdate, ');
    sql.add('    c.scyear,c.scmonth,');
    sql.Add('		 c.strt,c.endd,c.strtr,c.enddr, ');
    sql.Add('		 s.strt,s.endd,s.strtr,s.enddr, ');
    sql.Add('		 o.strt,o.endd,o.strtr,o.enddr, ');
    sql.Add('		 a.strt,a.endd,a.strtr,a.enddr, ');
    sql.Add('    s.depno,a.depno');
    sql.Add('order by shipdate ');
    sql.Add(' ');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  with zllist do
  begin
    {依N38資料寫入}
    cachedupdates:=true;
    requestlive:=true;
    First;
    while   not   ZLList.Eof   do
    begin
      if updatesql.Locate('ddbh',FieldByName('zlbh').Value,[]) then
      begin
        edit;
        FieldByName('scyear').Value:=updatesql.FieldByName('scyear').Value;
        FieldByName('SCMONTH').Value:=updatesql.FieldByName('SCMONTH').Value;
        FieldByName('gsbh').Value:=updatesql.FieldByName('gsbh').Value;
        FieldByName('cdate').Value:=updatesql.FieldByName('CSP').Value;
        FieldByName('cedate').Value:=updatesql.FieldByName('CeP').Value;
        FieldByName('sdate').Value:=updatesql.FieldByName('sSP').Value;
        FieldByName('sedate').Value:=updatesql.FieldByName('seP').Value;
        FieldByName('odate').Value:=updatesql.FieldByName('oSP').Value;
        FieldByName('oedate').Value:=updatesql.FieldByName('oeP').Value;
        FieldByName('adate').Value:=updatesql.FieldByName('aSP').Value;
        FieldByName('aedate').Value:=updatesql.FieldByName('aeP').Value;
        FieldByName('Stitching').Value:=updatesql.FieldByName('sdep').Value;
        FieldByName('Assemble').Value:=updatesql.FieldByName('adep').Value;

        fieldbyname('USERID1').Value:=main.edit1.text;
        fieldbyname('USERDATE1').value:=Ndate;
        upzl.Apply(ukmodify);
      end;
      Next;
    end;
  end;
end;

procedure TPlanDate.DBGrid1DblClick(Sender: TObject);
begin
{轉到排程資料並導入RY號}
  if OrderPlan<>nil then
  begin
    OrderPlan.show;
    OrderPlan.windowstate:=wsmaximized;
  end
  else
  begin
    OrderPlan:=TOrderPlan.create(self);
    OrderPlan.show;
  end;
  with OrderPlan.SMDD do
    begin
      active:=false;
      sql.Clear;
      sql.add('select SMDD.*,SCGXDY.MEMO,Bdepartment.DepName,XXZL.DAOMH,DDZL.ShipDate as CSD');
      sql.add(',KFZL.KFJC,ywdd.etd,f.fpd,f.fped ');
      sql.add('from SMDD');
      sql.add('left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  ');
      sql.add('left join Bdepartment on Bdepartment.ID=SMDD.DepNo ');
      sql.add('left join DDZL on DDZl.ZLBH=SMDD.YSBH ');
      sql.add('left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
      sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
      sql.add('left join (select ysbh,etd from  ywdd  group by ysbh,etd) as ywdd on ywdd.ysbh=smdd.ysbh');
      sql.Add('left join (select ddbh,sccx,max(plandate) as fpd,min(planedate) as fped from smdd group by ddbh,sccx) ');
      sql.add(' as f on f.ddbh=smdd.ddbh and f.sccx=smdd.gxlb');
      sql.add('where smdd.ysbh='+''''+zllist.FieldByName('zlbh').Value+'''');
      active:=true;
    end;
  OrderPlan.DDdet.Active:=true;
  OrderPlan.bb4.enabled:=true;
  OrderPlan.bb5.enabled:=false;
  OrderPlan.bb6.enabled:=false;
  OrderPlan.bb7.enabled:=true;
  OrderPlan.bbt1.enabled:=true;
  OrderPlan.bbt2.enabled:=true;
  OrderPlan.bbt3.enabled:=true;
  OrderPlan.bbt4.enabled:=true;
  OrderPlan.bbt5.enabled:=true;
  OrderPlan.bbt6.enabled:=true;
end;

end.
