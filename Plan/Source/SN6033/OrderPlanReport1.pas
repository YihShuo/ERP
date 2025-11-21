unit OrderPlanReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, PrnDbgeh, DBTables, DB, GridsEh, DBGridEh, StdCtrls,
  Buttons, ExtCtrls, Comobj;

type
  TOrderPlanReport = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    bbt5: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit2: TEdit;
    pedcb: TCheckBox;
    okdcb: TCheckBox;
    etdcb: TCheckBox;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    SMDD: TQuery;
    SMDDDDBH: TStringField;
    SMDDGXLB: TStringField;
    SMDDMEMO: TStringField;
    SMDDYSBH: TStringField;
    SMDDKFJC: TStringField;
    SMDDGSBH: TStringField;
    SMDDArticle: TStringField;
    SMDDXieMing: TStringField;
    SMDDQty: TIntegerField;
    SMDDSCCX: TStringField;
    SMDDSB: TStringField;
    SMDDSCYEAR: TStringField;
    SMDDSCMONTH: TStringField;
    SMDDDepNO: TStringField;
    SMDDDepName: TStringField;
    SMDDPlanDate: TDateTimeField;
    SMDDPlanEdate: TDateTimeField;
    SMDDPRdate: TDateTimeField;
    SMDDOKdate: TDateTimeField;
    SMDDDAOMH: TStringField;
    SMDDUSERDate: TDateTimeField;
    SMDDUSERID: TStringField;
    SMDDYN: TStringField;
    SMDDCSD: TDateTimeField;
    SMDDetd: TDateTimeField;
    SMDDfpd: TDateTimeField;
    SMDDfped: TDateTimeField;
    SMDDRDepNO: TStringField;
    SMDDRPlanDate: TDateTimeField;
    SMDDRPlanEdate: TDateTimeField;
    DS1: TDataSource;
    PrintDBGridEh1: TPrintDBGridEh;
    UserDateCB: TCheckBox;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure SMDDAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderPlanReport: TOrderPlanReport;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TOrderPlanReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end else
  begin
    action:=cafree;
  end;
end;

procedure TOrderPlanReport.FormDestroy(Sender: TObject);
begin
  OrderPlanReport:=nil;
end;

procedure TOrderPlanReport.Button1Click(Sender: TObject);
begin
  with SMDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SMDD.*,SCGXDY.MEMO,Bdepartment.DepName,XXZL.DAOMH,DDZL.ShipDate as CSD');
    sql.add(',KFZL.KFJC,ywdd.etd,f.fpd,f.fped,SMDD.UserID, SMDD.Userdate');
    sql.add('from SMDD');
    sql.add('left join SCGXDY on SCGXDY.GX=SMDD.GXLB and len(SCGXDY.GXLB)=1  ');
    sql.add('left join Bdepartment on Bdepartment.ID=SMDD.DepNo ');
    sql.add('left join DDZL on DDZl.DDBH=SMDD.YSBH ');
    sql.add('left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join (select ysbh,etd from  ywdd  group by ysbh,etd) as ywdd on ywdd.ysbh=smdd.ysbh');
    sql.Add('left join (select ddbh,sccx,max(plandate) as fpd,min(planedate) as fped from smdd group by ddbh,sccx) ');
    sql.add(' as f on f.ddbh=smdd.ddbh and f.sccx=smdd.gxlb');
    sql.add('where SMDD.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and isnull(KFZL.KFJC,'''') like ''%'+edit2.Text+'%''');
    {edit by BillWeng 2013/03/27 更改查詢條件成為出貨日為主+預計完成日及實際完成日)}
    if etdcb.Checked then
    begin
      sql.add('      and year(ywdd.etd)='+CBX1.Text);
      sql.add('      and month(ywdd.etd)='+CBX2.Text);
    end;
    if UserDateCB.Checked then
    begin
      sql.add('      and year(smdd.UserDate)='+CBX1.Text);
      sql.add('      and month(smdd.UserDate)='+CBX2.Text);
    end;
    if CheckBox1.Checked then
    begin
      sql.add('      and year(smdd.Plandate)='+CBX1.Text);
      sql.add('      and month(smdd.Plandate)='+CBX2.Text);
    end;
    if pedcb.Checked then
    begin
      sql.add('      and year(smdd.PlanEdate)='+CBX1.Text);
      sql.add('      and month(smdd.PlanEdate)='+CBX2.Text);
    end;
    if okdcb.Checked then
    begin
      sql.add('      and year(smdd.OKdate)='+CBX1.Text);
      sql.add('      and month(smdd.OKdate)='+CBX2.Text);
    end;
    if ((etdcb.Checked=false) and (UserDateCB.Checked=false) and (pedcb.Checked=false)  and (okdcb.Checked=false) and (checkbox1.Checked=false)) then
    begin
      sql.add('      and SMDD.SCYEAR='+''''+CBX1.Text+'''');
      sql.add('      and SMDD.SCMONTH='+''''+CBX2.Text+'''');
    end;
    //edit end 2013/03/27
    if edit2.Text = '' then
      sql.add('      and SMDD.GSBH='+''''+main.edit2.text+'''');

    sql.add('      and SMDD.SB<>'+''''+'3'+'''');
    if CBX3.itemindex<>0 then
      begin
        sql.add('      and SMDD.GXLB='+''''+CBX3.Text+'''');
      end;
    sql.add('order by ywdd.etd,SMDD.DDBH,SMDD.SCCX ');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  
end;

procedure TOrderPlanReport.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
    begin
      CBX3.Items.Add(fieldbyname('GX').asstring);
      next;
    end;
    CBX3.Itemindex:=0;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    //
    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to CBX1.Items.Count-1 do
    begin
      if strtoint(CBX1.Items[i])=myYear then
      begin
        CBX1.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to CBX2.Items.Count-1 do
    begin
      if strtoint(CBX2.Items[i])=myMonth then
      begin
        CBX2.ItemIndex:=i;
        break;
      end;
    end;
    //
  end;

end;

procedure TOrderPlanReport.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  SMDD.active  then
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
        for   i:=0   to   SMDD.fieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=SMDD.fields[i].FieldName;
        end;
        SMDD.First;
        j:=2;
        while  not  SMDD.Eof   do
        begin
          for   i:=0   to   SMDD.FieldCount-1   do
          begin
            eclApp.Cells(j,i+1):=SMDD.Fields[i].Value;
          end;
          SMDD.Next;
          inc(j);
        end;
        eclapp.columns.autofit;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
  end;

end;

procedure TOrderPlanReport.SMDDAfterOpen(DataSet: TDataSet);
begin
  BBT6.Enabled:=true;
end;

end.
