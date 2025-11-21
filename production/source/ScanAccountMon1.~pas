unit ScanAccountMon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh, ComCtrls,
  StdCtrls, ExtCtrls,dateutils,comobj;

type
  TScanAccountMon = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Qtemp: TQuery;
    Label7: TLabel;
    CBX4: TComboBox;
    Query1GSBH: TStringField;
    Query1DDBH: TStringField;
    Query1YSBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1ETD: TDateTimeField;
    Query1Country: TStringField;
    Query1KFJC: TStringField;
    Query1Qty: TFloatField;
    Query1CTS: TIntegerField;
    Query1endQty: TIntegerField;
    Query1Factory: TStringField;
    Query1endCTS: TIntegerField;
    Query1StartQty: TIntegerField;
    Query1StartCTS: TIntegerField;
    Query1InQty: TIntegerField;
    Query1InCTS: TIntegerField;
    Query1ExeQty: TIntegerField;
    Query1ExeCTS: TIntegerField;
    Query1DZQty: TIntegerField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanAccountMon: TScanAccountMon;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TScanAccountMon.FormDestroy(Sender: TObject);
begin
ScanAccountMon:=nil;
end;

procedure TScanAccountMon.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanAccountMon.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.GSBH,YWDD.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS');
    sql.add('       ,isnull(YWCPnow.nowInQty,0)-isnull(YWCPendIn.endInQty,0)+isnull(YWCPendExe.endExeQty,0) as endQty,YWCPMonIn.Factory');
    sql.add('       ,isnull(YWCPnow.nowInCTS,0)-isnull(YWCPendIn.endInCTS,0)+isnull(YWCPendExe.endExeCTS,0) as endCTS ');
    sql.add('       ,isnull(YWCPStartIn.StartQty,0) as StartQty,isnull(YWCPStartIn.StartCTS,0) as StartCTS,YWCPDZ.DZQty ');
    //sql.add('       ,isnull(YWCPnow.nowInQty,0)-isnull(YWCPendIn.endInQty,0)+isnull(YWCPendExe.endExeQty,0)-isnull(YWCPMonIn.MonInQty,0)+isnull(YWCPMonExe.MonExeQty,0) as StartQty');
    //sql.add('       ,isnull(YWCPnow.nowInCTS,0)-isnull(YWCPendIn.endInCTS,0)+isnull(YWCPendExe.endExeCTS,0)-isnull(YWCPMonIn.MonInCTS,0)+isnull(YWCPMonExe.MonExeCTS,0) as StartCTS ');
    sql.add('       ,isnull(YWCPMonIn.MonInQty,0) as InQty,isnull(YWCPMonIn.MonInCTS,0) as InCTS,isnull(YWCPMonExe.MonExeQty,0) as ExeQty, isnull(YWCPMonExe.MonExeCTS,0) as ExeCTS');
    sql.add('from YWDD  with (nolock) ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    //sql.add('left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepNo ');

    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as nowInQty,count(YWCP.DDBH) as nowInCTS');
    sql.add('           from YWCP ');
    sql.add('           where YWCP.SB<>'+''''+'3'+'''');
    sql.add('           group by YWCP.DDBH) YWCPNow  on YWCPNow.DDBH=YWDD.DDBH ');
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as StartQty,count(YWCP.DDBH) as StartCTS');
    sql.add('           from YWCP ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.InDate,111)) <'+''''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add('                 and (ExeDate is null or convert(smalldatetime,convert(varchar,YWCP.ExeDate,111)) >=') ;
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+')');
    sql.add('           group by YWCP.DDBH) YWCPStartin on YWCPStartIn.DDBH=YWDD.DDBH');
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as endInQty,count(YWCP.DDBH) as endInCTS');
    sql.add('           from YWCP ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.InDate,111)) >');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('           group by YWCP.DDBH) YWCPendin on YWCPendIn.DDBH=YWDD.DDBH');
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as endExeQty,count(YWCP.DDBH) as endExeCTS');
    sql.add('           from YWCP ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.ExeDate,111)) >');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('           group by YWCP.DDBH) YWCPendexe on YWCPendExe.DDBH=YWDD.DDBH ');
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as MonInQty,count(YWCP.DDBH) as MonInCTS');
    sql.add('                 ,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end) as Factory');
    sql.add('           from YWCP ');
    sql.add('           left join BDepartment on BDepartment.ID=YWCP.DepNO ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');

    {2009/12/04 edit by Bill
     加入條件式，本月入庫的數量中扣除被翻箱數}
    sql.add('           and ywcp.sb<>'+''''+'2'+'''');
    //edit end

    sql.add('           group by YWCP.DDBH,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end) ');
    sql.add('                    )YWCPMonIn  on YWCPMonIn.DDBH=YWDD.DDBH');
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as MonExeQty,count(YWCP.DDBH) as MonExeCTS');
    sql.add('           from YWCP ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.ExeDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('           group by YWCP.DDBH) YWCPMonexe  on YWCPMonExe.DDBH=YWDD.DDBH');
    sql.add('left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS ');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS  with (nolock) ) YWBZPO  ');
    sql.add('           group by YWBZPO.DDBH) YWBZPO on YWDD.DDBH=YWBZPO.DDBH ');
    sql.add('left join (select YWCP.DDBH,sum(YWDDSDZ.Qty) as DZQty from YWDDSDZ ');
    sql.add('           left join YWCP on YWCP.CartonBar=YWDDSDZ.CartonBar ');
    sql.add('           group by YWCP.DDBH ) YWCPDZ on YWCPDZ.DDBH=YWDD.DDBH ');
    sql.Add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    //sql.add('      and BDepartment.DepName like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and DDZL.GSBH='+''''+CBX4.Text+'''');
    sql.add('      and not (YWCPNow.nowInQty is null and YWCPenDIN.endInQty is null and YWCPendExe.endExeQty is null ');
    sql.add('               and YWCPMonIn.MonInQty is null and YWCPMonExe.MonExeQty is null )');
    sql.add('order by YWDD.DDBH ');
    active:=true;
  end;
end;

procedure TScanAccountMon.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP2.date:=endofthemonth(incmonth(NDate,-1));
    DTP1.date:=startofthemonth(incmonth(NDate,-1));  
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
  end;
end;

procedure TScanAccountMon.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if query1.Active then
  begin
    if query1.recordcount=0 then
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

procedure TScanAccountMon.Print1Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TScanAccountMon.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
if query1.FieldByName('EndQty').value<=0 then
   dbgrideh1.canvas.font.color:=clBlue;
end;

end.
