unit Report6021;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, ExtCtrls,dateutils,comobj,ehlibBDE;

type
  TReport602 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CBX4: TComboBox;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
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
    Query1endCTS: TIntegerField;
    Query1StartQty: TIntegerField;
    Query1StartCTS: TIntegerField;
    Query1InQty: TIntegerField;
    Query1InCTS: TIntegerField;
    Query1ExeQty: TIntegerField;
    Query1ExeCTS: TIntegerField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Qtemp: TQuery;
    Query1Factory: TStringField;
    Query1NowQty: TIntegerField;
    Query1NowCTS: TIntegerField;
    Query1CSD: TDateTimeField;
    Query1MinInDate: TDateTimeField;
    Query1MaxInDate: TDateTimeField;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    CheckBox1: TCheckBox;
    Panel2: TPanel;
    DTP3: TDateTimePicker;
    Label10: TLabel;
    DTP4: TDateTimePicker;
    Query1InspectDate: TDateTimeField;
    Query1InspectQty: TIntegerField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure CheckBox1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report602: TReport602;  
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TReport602.FormDestroy(Sender: TObject);
begin
Report602:=nil;
end;

procedure TReport602.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TReport602.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select DDZL.GSBH,YWCPMin.Factory,YWDD.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,DDZL.ShipDate as CSD,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,YWDD.Qty,YWBZPO.CTS');
    sql.add('       ,isnull(YWCPnow.nowQty,0) as NowQty,isnull(YWCPnow.nowCTS,0) as NowCTS,isnull(YWCPStart.StartQty,0) as StartQty,isnull(YWCPStart.StartCTS,0) as StartCTS');
    sql.add('       ,isnull(YWCPIn.InQty,0) as InQty,isnull(YWCPIn.InCTS,0) as InCTS,isnull(YWCPExe.ExeQty,0) as ExeQty,isnull(YWCPExe.ExeCTS,0) as ExeCTS ');
    sql.add('       ,isnull(YWCPEnd.EndQty,0) as EndQty,isnull(YWCPEnd.EndCTS,0) as EndCTS,YWCPMin.MinInDate,YWCPMax.MaxInDate,YWDD.InspectDate,YWDD.InspectQty');
    sql.add('from YWDD  with (nolock) ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    //sql.add('left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepNo ');
    //當前庫存數
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as nowQty,count(YWCP.DDBH) as nowCTS');
    sql.add('           from YWCP ');
    sql.add('           where YWCP.SB<>'+''''+'3'+'''');
    sql.add('           group by YWCP.DDBH) YWCPNow  on YWCPNow.DDBH=YWDD.DDBH ');
    //選取時間的期初庫存數
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as StartQty,count(YWCP.DDBH) as StartCTS');
    sql.add('           from YWCP ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.InDate,111)) < ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add('           group by YWCP.DDBH) YWCPStart on YWCPStart.DDBH=YWDD.DDBH');  
    //調出首箱入庫時間
    sql.add('left join (select YWCP.DDBH,min(InDate) as MinInDate ');
    sql.add('                 ,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end) as Factory');
    sql.add('           from YWCP ');
    sql.add('           left join BDepartment on BDepartment.ID=YWCP.DepNO ');
    sql.add('           where InDate is not null ');
    sql.add('           group by YWCP.DDBH,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end)');
    sql.add('            ) YWCPMin on YWCPMin.DDBH=YWDD.DDBH ');
    //選取期間出貨數
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as ExeQty,count(YWCP.DDBH) as ExeCTS');
    sql.add('                 ,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end) as Factory');
    sql.add('           from YWCP ');    
    sql.add('           left join BDepartment on BDepartment.ID=YWCP.DepNO ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.ExeDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('           group by YWCP.DDBH,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end)');
    sql.add('            ) YWCPexe on YWCPExe.DDBH=YWDD.DDBH and YWCPMin.Factory=YWCPExe.Factory');
    // 選取期間入庫數
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as InQty,count(YWCP.DDBH) as InCTS');
    sql.add('                 ,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end) as Factory');
    sql.add('           from YWCP ');
    sql.add('           left join BDepartment on BDepartment.ID=YWCP.DepNO ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.InDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('           group by YWCP.DDBH,substring(BDepartment.DepName,1,case when charindex('+''''+'_'+''''+',BDepartment.DepName)=0 ');
    sql.add('                                then 4 else  charindex('+''''+'_'+''''+',BDepartment.DepName)-1 end)');
    sql.add('            )YWCPIn  on YWCPIn.DDBH=YWDD.DDBH and YWCPIn.Factory=YWCPMin.Factory');
    //選取期間期未庫存數
    sql.add('left join (select YWCP.DDBH,sum(YWCP.Qty) as EndQty,count(YWCP.DDBH) as EndCTS');
    sql.add('           from YWCP ');
    sql.add('           where convert(smalldatetime,convert(varchar,YWCP.InDate,111)) <=');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('                 and SB<>'+''''+'3'+'''') ;
    sql.add('           group by YWCP.DDBH) YWCPEnd  on YWCPEnd.DDBH=YWDD.DDBH');
    sql.add('left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS ');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS  with (nolock) ) YWBZPO  ');
    sql.add('           group by YWBZPO.DDBH) YWBZPO on YWDD.DDBH=YWBZPO.DDBH ');
    //如滿箱則調出最後滿箱時間    
    sql.add('left join (select CP.DDBH,max(CP.InDate) as MaxInDate ');
    sql.add('           from YWCP CP');
    sql.add('           where not exists(select DDBH from YWCP where YWCP.DDBH=CP.DDBH and YWCP.InDate is null) ');
    sql.add('           group by CP.DDBH) YWCPMax on YWCPMax.DDBH=YWDD.DDBH ');
    sql.Add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    //sql.add('      and BDepartment.DepName like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and DDZL.GSBH='+''''+CBX4.Text+'''');
    if Panel2.Visible then
      begin
        sql.add('      and convert(smalldatetime,convert(varchar,YWDD.ETD,111)) between ');
        sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
      end;
    sql.add('      and not (YWCPNow.nowQty is null and  YWCPExe.ExeQty is null ');
    sql.add('               and YWCPIn.InQty is null and YWCPend.endQty is null )');
    sql.add('order by YWDD.DDBH ');
    active:=true;
  end;
end;

procedure TReport602.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP1.date:=NDate-1;
    DTP2.date:=NDate-1;
    DTP3.date:=startofthemonth(NDate)+5;
    DTP4.Date:=startofthemonth(incmonth(NDate,1))+4;
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

procedure TReport602.Excel1Click(Sender: TObject);
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

procedure TReport602.Print1Click(Sender: TObject);
begin

printdbgrideh1.Preview;
end;

procedure TReport602.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 {
if query1.FieldByName('NowQty').value<=0 then
   dbgrideh1.canvas.font.color:=clYellow;  }
if query1.FieldByName('Qty').value<>query1.FieldByName('NowQty').value  then
  begin
   dbgrideh1.canvas.font.color:=clRed;
   if  query1.FieldByName('NowQty').value=0 then
     begin
       dbgrideh1.canvas.font.color:=clBlue;
     end;
  end;
end;


procedure TReport602.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if query1.FieldByName('InQty').value<>0 then
  begin
    dbgrideh1.canvas.brush.Color:=$00D0FFD0;
    DBGrideh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TReport602.CheckBox1Click(Sender: TObject);
begin
if Checkbox1.Checked then
  Panel2.visible:=true
    else
      panel2.Visible:=false;
end;

procedure TReport602.PrintDBGridEh1BeforePrint(Sender: TObject);
begin

PrintDBGridEh1.SetSubstitutes(['%[Date]',CBX4.text+'      '+formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

end.
