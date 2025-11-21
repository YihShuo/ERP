unit SMDDLOCKP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TSMDDLOCK = class(TForm)
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
    DBGridEh2: TDBGridEh;
    Qtemp: TQuery;
    SMDD: TQuery;
    DS1: TDataSource;
    DDdet: TQuery;
    DDdetDDBH: TStringField;
    DDdetXXCC: TStringField;
    DDdetQty: TIntegerField;
    DS2: TDataSource;
    Q1: TQuery;
    q2: TQuery;
    SMDDLOCK: TQuery;
    Button2: TButton;
    Button3: TButton;
    SMDDDDBH: TStringField;
    SMDDGXLB: TStringField;
    SMDDYSBH: TStringField;
    SMDDGSBH: TStringField;
    SMDDArticle: TStringField;
    SMDDXieMing: TStringField;
    SMDDQty: TIntegerField;
    SMDDSCCX: TStringField;
    SMDDSB: TStringField;
    SMDDSCYEAR: TStringField;
    SMDDSCMONTH: TStringField;
    SMDDDepNO: TStringField;
    SMDDPlanDate: TDateTimeField;
    SMDDUSERDate: TDateTimeField;
    SMDDUSERID: TStringField;
    SMDDYN: TStringField;
    SMDDPlanEdate: TDateTimeField;
    SMDDPRdate: TDateTimeField;
    SMDDOKdate: TDateTimeField;
    SMDDMEMO: TStringField;
    SMDDDepName: TStringField;
    SMDDDAOMH: TStringField;
    SMDDCSD: TDateTimeField;
    SMDDKFJC: TStringField;
    SMDDetd: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SMDDLOCK: TSMDDLOCK;

implementation

uses main1;

{$R *.dfm}

procedure TSMDDLOCK.FormCreate(Sender: TObject);
var i:integer;
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
  end;
end;

procedure TSMDDLOCK.Button2Click(Sender: TObject);
Var
  i:integer;
begin
    with SMDDLOCK do
    begin
      sql.Clear;
      sql.Add('insert into SMDDLOCK');  //抓取本月已排程訂單至SMDDLOCK中,如已抓過則不再抓取
      sql.Add('select DDBH,GXLB,YSBH,GSBH,Article,XieMing,Qty,SCCX,SB,SCYEAR,SCMONTH,');
      sql.Add('       DepNO,PlanDate,GETDATE(),'+''''+main.Edit1.Text+''''+',YN,PlanEdate,PRdate,OKdate');
      sql.Add('from smdd');
      sql.Add('where not exists (select DDBH from SMDDLOCK');
      sql.Add('                  where SMDD.DDBH = SMDDLOCK.DDBH and SMDD.GXLB = SMDDLOCK.GXLB)');
      sql.Add('      and PlanDate is not null and CONVERT(varchar(7),PlanDate,111) = CONVERT(varchar(7),GETDATE(),111)');
      ExecSQL;
    end;
    i:=SMDDLOCK.RowsAffected;
    showmessage('Update Success: '+IntToStr(i)+' Record');
end;

procedure TSMDDLOCK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSMDDLOCK.Button1Click(Sender: TObject);
begin
  with SMDD do
  begin
    active:=false;
    sql.Clear;
    sql.add('select SMDDLOCK.*,SCGXDY.MEMO,Bdepartment.DepName,XXZL.DAOMH,DDZL.ShipDate as CSD,KFZL.KFJC,ywdd.etd');
//    sql.add(',f.fpd,f.fped');
    sql.add('from SMDDLOCK');
    sql.add('left join SCGXDY on SCGXDY.GX=SMDDLOCK.GXLB and len(SCGXDY.GXLB)=1  ');
    sql.add('left join Bdepartment on Bdepartment.ID=SMDDLOCK.DepNo ');
    sql.add('left join DDZL on DDZl.ZLBH=SMDDLOCK.YSBH ');
    sql.add('left join XXZL on XXZL.XieXing=.DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join (select ysbh,etd from  ywdd  group by ysbh,etd) as ywdd on ywdd.ysbh=SMDDLOCK.ysbh');
//    sql.Add('left join (select ddbh,sccx,max(plandate) as fpd,min(planedate) as fped from SMDDLOCK group by ddbh,sccx) ');
//    sql.add(' as f on f.ddbh=SMDDLOCK.ddbh and f.sccx=SMDDLOCK.gxlb');
    sql.add('where SMDDLOCK.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and isnull(KFZL.KFJC,'+''''+''+''''+') like '+''''+'%'+edit2.Text+'%'+'''');
    {edit by BillWeng 2013/03/27 更改查詢條件成為出貨日為主+預計完成日及實際完成日)}
    if etdcb.Checked then
    begin
      sql.add('      and year(ywdd.etd)='+CBX1.Text);
      sql.add('      and month(ywdd.etd)='+CBX2.Text);
    end
    else
    begin
      sql.add('      and SMDDLOCK.SCYEAR='+''''+CBX1.Text+'''');
      sql.add('      and SMDDLOCK.SCMONTH='+''''+CBX2.Text+'''');
    end;

    if pedcb.Checked then
    begin
      sql.add('      and year(SMDDLOCK.PlanEdate)='+CBX1.Text);
      sql.add('      and month(SMDDLOCK.PlanEdate)='+CBX2.Text);
    end;
    if okdcb.Checked then
    begin
      sql.add('      and year(SMDDLOCK.OKdate)='+CBX1.Text);
      sql.add('      and month(SMDDLOCK.OKdate)='+CBX2.Text);
    end;
    //edit end 2013/03/27
    if edit2.Text = '' then
      sql.add('      and SMDDLOCK.GSBH='+''''+main.edit2.text+'''');

    sql.add('      and SMDDLOCK.SB<>'+''''+'3'+'''');
    if CBX3.itemindex<>0 then
      begin
        sql.add('      and SMDDLOCK.GXLB='+''''+CBX3.Text+'''');
      end;
    sql.add('order by ywdd.etd,SMDDLOCK.DDBH,SMDDLOCK.SCCX ');
    //memo1.Text:=sql.Text;
    active:=true;
  end;
  DDdet.Active:=true;
end;

procedure TSMDDLOCK.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
var
  i,j:string;
begin
  i:=DateToStr(Now);       //抓取系統時間
  j:=copy(smdd.FieldByName('userdate').AsString,1,10);   //抓取資料建立時間
  if j = i then
  begin
    dbgrideh1.Canvas.Font.Color:=clblue;
  end;
end;

procedure TSMDDLOCK.Button3Click(Sender: TObject);
begin
  q1.ExecSQL;
  q2.ExecSQL;
end;

end.
