unit DQRBHP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables;

type
  TDQRBH = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    QCSD: TDateTimePicker;
    Label5: TLabel;
    QCED: TDateTimePicker;
    Label1: TLabel;
    CBX3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Qtemp: TQuery;
    RadioGroup1: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DQRBH: TDQRBH;

implementation

uses main1;

{$R *.dfm}

procedure TDQRBH.FormCreate(Sender: TObject);
begin
  QCSD.Date:=Now;
  QCED.Date:=Now;
end;

procedure TDQRBH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDQRBH.FormDestroy(Sender: TObject);
begin
  DQRBH:=nil;
end;

procedure TDQRBH.Button1Click(Sender: TObject);
var
  j :word;
begin

  //整理生產工時
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct NHour');
    sql.add('from (select  datepart(HH, QCR.USERDATE) as NHour from QCR');
    sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date+1)+''''+'');
    sql.add('      and QCR.GSBH ='+''''+main.edit2.Text+''''+'');
    sql.add('      ) as HourList order by NHour');
    //memo1.Text:=sql.Text;
    active:=true;
  end;

  //整理交叉表的內容
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select QCC.DepNo,QCC.DepName,QCC.YYBH,QCC.YWSM,QCC.Total');
    while not Qtemp.eof do
    begin
      sql.add(',sum(case  when NHour='+''''+Qtemp.fieldbyname('NHour').asstring+'''');
      sql.add(' then Qty  end) as '+''''+Qtemp.fieldbyname('NHour').asstring+'''');
      QTemp.Next;
    end;

    //各部門每小時各個Defect統計
    sql.add('from (select qcr.Depno,BDepartment.Depname,qcrd.YYBH');
    if RadioGroup1.ItemIndex = 0 then   //顯示Defect原因為英/越文
      sql.add('           ,QCBLYY.YWSM');
    if RadioGroup1.ItemIndex = 1 then
      sql.add('           ,QCBLYY.ZWSM as YWSM');
    sql.add('             ,QCT.Qty as Total,sum(qcrd.qty) as Qty,datepart(hh,qcr.userdate) as NHour');
    sql.add('	     from QCRD');
    sql.add('	     left join QCR on qcr.prono= qcrd.prono');
    sql.add('	     left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
    sql.add('	     left join bdepartment on bdepartment.id=qcr.depno');
    sql.add('	     left join (select qcr.Depno,qcrd.YYBH,sum(qcrd.qty) as Qty');
    sql.add('				          from QCRD');
    sql.add('				          left join QCR on qcr.prono= qcrd.prono');
    sql.add('				          left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
    sql.add('                 where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('                        '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.add('	   						         and QCR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('                      and QCR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('                      and QCR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('                      and (QCR.GXLB = '+''''+'A'+''''+' or QCR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('				          group by qcr.Depno,qcrd.YYBH) as QCT on QCR.DepNo = QCT.DepNo and QCBLYY.YYBH = QCT.YYBH');
    sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.add('	   				  and QCR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('           and QCR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('           and QCR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('           and (QCR.GXLB = '+''''+'A'+''''+' or QCR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('	     group by qcr.Depno,BDepartment.Depname,qcrd.YYBH');
    if RadioGroup1.ItemIndex = 0 then
      sql.add('             ,qcblyy.ywsm,QCT.Qty,datepart(hh,qcr.userdate)');
    if RadioGroup1.ItemIndex = 1 then
      sql.add('             ,qcblyy.zwsm,QCT.Qty,datepart(hh,qcr.userdate)');

     //產生部門每小時所有Defect合計
    sql.add('	     union all');
    sql.add('	     select qcr.DepNo,BDepartment.Depname,'+''''+'Z'+''''+' as YYBH,'+''''+'Hourly_Total'+''''+' as ywsm,'+''''+'0'+''''+' as Total');
    sql.add('             ,sum(qcrd.qty) as Qty,datepart(hh,qcr.userdate) as NHour');
    sql.add('	     from QCRD');
    sql.add('	     left join QCR on qcr.prono= qcrd.prono');
    sql.add('	     left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
    sql.add('	     left join bdepartment on bdepartment.id=qcr.depno');
    sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.add('	   					and QCR.GSBH ='+''''+main.edit2.Text+''''+'');
    if CBX3.text = 'A' then
      sql.add('           and QCR.GXLB = '+''''+'A'+''''+'');
    if CBX3.text = 'S' then
      sql.add('           and QCR.GXLB = '+''''+'C+S'+''''+'');
    if CBX3.text = 'A+S' then
      sql.add('           and (QCR.GXLB = '+''''+'A'+''''+' or QCR.GXLB = '+''''+'C+S'+''''+')');
    sql.add('	     group by qcr.Depno,BDepartment.Depname,datepart(hh,qcr.userdate)');
    sql.add('	     ) as QCC');
    sql.add('group by qcc.DepNo,qcc.DepName,qcc.YYBH,qcc.YWSM,QCC.Total');
    sql.add('order by QCC.DepNo,QCC.YYBH');
    //memo1.Text:=sql.Text;
    active:=true;
  end;

  with DBGrideh1 do
  begin
    columns[0].Width:=0;
    columns[0].title.caption:='部門編號|DepNo';
    columns[1].Width:=95;
    columns[1].title.caption:='部門名稱|DepName';
    columns[2].Width:=0;
    columns[2].title.caption:='Deff號|'+columns[2].title.caption;
    columns[3].Width:=200;
    columns[3].title.caption:='不良項目|Defect';
    columns[4].Width:=60;
    columns[4].title.caption:='不良合計|'+columns[4].title.caption;
    columns[4].Color:=$00FCCBCD;
    for j:=5 to Query1.FieldCount-1 do
    begin
      columns[j].Width:=35;
      columns[j].Title.Caption:='時   間   Working Hour|'+columns[j].Title.Caption;
      if j mod 2 = 0 then
        columns[j].Color:=clInfoBk;
    end;
  end;
end;

procedure TDQRBH.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(query1.FieldByName('YWSM').value)='Hourly_Total' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

end.
