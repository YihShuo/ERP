unit ScanDailyRep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh, ComCtrls,
  StdCtrls, ExtCtrls,comobj;

type
  TScanDailyRep = class(TForm)
    Panel1: TPanel;
    lbOrderNo: TLabel;
    lbDepName: TLabel;
    lbCustomer: TLabel;
    lbTitle: TLabel;
    lbFrom: TLabel;
    lbTo: TLabel;
    edOrderNo: TEdit;
    edDepName: TEdit;
    edCustomer: TEdit;
    bnQuery: TButton;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    gdMain: TDBGridEh;
    ptMain: TPrintDBGridEh;
    qrMain: TQuery;
    qrMainDDBH: TStringField;
    qrMainYSBH: TStringField;
    qrMainArticle: TStringField;
    qrMainXieMing: TStringField;
    qrMainCountry: TStringField;
    qrMainKFJC: TStringField;
    qrMainQty: TFloatField;
    qrMainokQty: TIntegerField;
    qrMainNowQty: TIntegerField;
    qrMainCTS: TIntegerField;
    qrMainokCTS: TIntegerField;
    qrMainNowCTS: TIntegerField;
    qrMainETD: TDateTimeField;
    dsMain: TDataSource;
    pmMain: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    qrTemp: TQuery;
    Detail1: TMenuItem;
    lbGSBH: TLabel;
    cbGSBH: TComboBox;
    qrMainVarianceQty: TFloatField;
    qrMainVarianceCTS: TIntegerField;
    qrMainTotalSGW: TFloatField;
    qrMainTotalRGW: TFloatField;
    qrMainAvgSGW: TFloatField;
    qrMainAvgRGW: TFloatField;
    qrMainKHPO: TStringField;
    qrMainKCBH: TStringField;
    qrMainDepName: TStringField;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    KCBHEdit: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit1: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bnQueryClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure gdMainGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanDailyRep: TScanDailyRep;

implementation

uses main1, ScanDailyRep_det1,FunUnit;

{$R *.dfm}

procedure TScanDailyRep.FormDestroy(Sender: TObject);
begin
  ScanDailyRep:=nil;
end;

procedure TScanDailyRep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
qrMain.active:=false;
action:=cafree;
end;

procedure TScanDailyRep.bnQueryClick(Sender: TObject);
begin
  with qrMain do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWCP.DDBH,DDZL.KHPO,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');
    sql.add('       YWDD.Qty,okYWCP.okQty,sum(YWCP.Qty) as NowQty,YWBZPO.CTS,okYWCP.okCTS,count(YWCP.DDBH) as NowCTS,');
    sql.Add('       (YWDD.Qty-okYWCP.okQty) as VarianceQty,(YWBZPO.CTS-okYWCP.okCTS) as VarianceCTS,okYWCP.TotalSGW,okYWCP.TotalRGW,okYWCP.AvgSGW,okYWCP.AvgRGW, ');
    sql.Add('        max (YWCP.KCBH) as KCBH, max(BDepartment.DepName) as DepName');
    sql.add('from YWCP  with (nolock)');
    sql.add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepNo ');
    sql.add('left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS ');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS  with (nolock) ) YWBZPO  ');
    sql.add('           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH ');
    sql.add('left join (select DDBH,count(DDBH) as okCTS,sum(Qty) as okQty,Round(SUM(sgw),3) as TotalSGW,Round(AVG(sgw),3) as AvgSGW,Round(SUM(rgw),3) as TotalRGW,Round(AVG(rgw),3) as AvgRGW from YWCP with (nolock) ');
    sql.add('           where InDate is not null and ywcp.sb not in (''2'',''4'')');
    sql.Add('           group by DDBH ) okYWCP on okYWCP.DDBH=YWDD.DDBH ');
    sql.Add('where DDZL.DDBH like '''+edOrderNo.Text+'%'' ');
    sql.add('      and BDepartment.DepName like ''%'+edDepName.text+'%''');
    sql.add('      and isnull(KFZL.KFJC,'''') like ''%'+edCustomer.Text+'%''');
    sql.add('      and DDZL.GSBH='''+cbGSBH.Text+'''');
    sql.Add('      and DDZL.KHPO like '''+Edit1.Text+'%'' ');
    if KCBHEdit.Text<>'' then
    sql.add('      and YWCP.KCBH like '''+KCBHEdit.Text+'%'' ');
    if CheckBox1.Checked=false then
    sql.add('      and YWCP.SB=''1'' ');
    sql.add('      and convert(varchar,YWCP.Indate,111) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',dtpFrom.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',dtpTo.Date)+'''');
    sql.add('group by YWCP.DDBH,DDZL.KHPO,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,');
    sql.add('         YWDD.Qty,okYWCP.okQty,YWBZPO.CTS,okYWCP.okCTS,okYWCP.TotalSGW,okYWCP.TotalRGW,okYWCP.AvgSGW,okYWCP.AvgRGW');
    sql.add('order by YWCP.DDBH ');
    active:=true;
  end;
end;

procedure TScanDailyRep.FormCreate(Sender: TObject);    
var i:integer;
begin  
with qrTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    dtpFrom.date:=fieldbyname('NDate').Value-1;
    dtpTo.date:=fieldbyname('NDate').Value-1;
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        cbGSBH.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    cbGSBH.Text:=main.edit2.Text;
    active:=false;
  end;
end;

procedure TScanDailyRep.Print1Click(Sender: TObject);
begin
ptMain.preview;
end;

procedure TScanDailyRep.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

if qrMain.Active then
  begin
    if qrMain.recordcount=0 then
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
  for   i:=1   to   qrMain.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=qrMain.fields[i-1].FieldName;
    end;
  qrMain.First;
  j:=2;
  while   not  qrMain.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   qrMain.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=qrMain.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      qrMain.Next;
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

procedure TScanDailyRep.Detail1Click(Sender: TObject);
begin
  ScanDailyRep_det:=TScanDailyRep_det.create(self);
  ScanDailyRep_det.SetAvgWeigth(qrMain.fieldByName('TotalSGW').AsString,qrMain.fieldByName('TotalRGW').AsString);
  ScanDailyRep_det.show;
end;

procedure TScanDailyRep.gdMainGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if qrMain.FieldByName('okQty').value=qrMain.FieldByName('Qty').value then
  begin
    gdMain.canvas.font.color:=clBlue;
  end;
end;

procedure TScanDailyRep.Button1Click(Sender: TObject);
begin
  with qrMain do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWCP.DDBH,DDZL.KHPO,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');
    sql.add('       YWDD.Qty,okYWCP.okQty,sum(YWCP.Qty) as NowQty,YWBZPO.CTS,okYWCP.okCTS,count(YWCP.DDBH) as NowCTS,');
    sql.Add('       (YWDD.Qty-okYWCP.okQty) as VarianceQty,(YWBZPO.CTS-okYWCP.okCTS) as VarianceCTS,okYWCP.TotalSGW,okYWCP.TotalRGW,okYWCP.AvgSGW,okYWCP.AvgRGW, ');
    sql.Add('        max (YWCP.KCBH) as KCBH, max(BDepartment.DepName) as DepName');
    sql.add('from YWCPOld YWCP  with (nolock)');
    sql.add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepNo ');
    sql.add('left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS ');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS  with (nolock) ) YWBZPO  ');
    sql.add('           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH ');
    sql.add('left join (select DDBH,count(DDBH) as okCTS,sum(Qty) as okQty,Round(SUM(sgw),3) as TotalSGW,Round(AVG(sgw),3) as AvgSGW,Round(SUM(rgw),3) as TotalRGW,Round(AVG(rgw),3) as AvgRGW from YWCPOld YWCP with (nolock) ');
    sql.add('           where InDate is not null and ywcp.sb not in (''2'',''4'')');
    sql.Add('           group by DDBH ) okYWCP on okYWCP.DDBH=YWDD.DDBH ');
    sql.Add('where DDZL.DDBH like '''+edOrderNo.Text+'%'' ');
    sql.add('      and BDepartment.DepName like ''%'+edDepName.text+'%''');
    sql.add('      and isnull(KFZL.KFJC,'''') like ''%'+edCustomer.Text+'%''');
    sql.add('      and DDZL.GSBH='''+cbGSBH.Text+'''');
    sql.Add('      and DDZL.KHPO like '''+Edit1.Text+'%'' ');
    if KCBHEdit.Text<>'' then
    sql.add('      and YWCP.KCBH like '''+KCBHEdit.Text+'%'' ');
    if CheckBox1.Checked=false then
    sql.add('      and YWCP.SB=''1'' ');
    sql.add('      and convert(varchar,YWCP.Indate,111) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',dtpFrom.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',dtpTo.Date)+'''');
    sql.add('group by YWCP.DDBH,DDZL.KHPO,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,');
    sql.add('         YWDD.Qty,okYWCP.okQty,YWBZPO.CTS,okYWCP.okCTS,okYWCP.TotalSGW,okYWCP.TotalRGW,okYWCP.AvgSGW,okYWCP.AvgRGW');
    sql.add('order by YWCP.DDBH ');
    active:=true;
  end;
end;

end.
