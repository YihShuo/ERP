unit DQRBHP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables,comobj;

type
  TDQRBH = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    QCSD: TDateTimePicker;
    Label5: TLabel;
    QCED: TDateTimePicker;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Qtemp: TQuery;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    CK1: TCheckBox;
    CK2: TCheckBox;
    CK3: TCheckBox;
    CK4: TCheckBox;
    Label2: TLabel;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    function Get_QCR_SubSQL():String;
  public
    { Public declarations }
  end;

var
  DQRBH: TDQRBH;

implementation

uses main1, FunUnit;

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
//QCR工段回傳SQL
function TDQRBH.Get_QCR_SubSQL():String;
var SubSQL:string;
begin
   if CK1.Checked then SubSQL:=SubSQL+' QCR.GXLB = ''A'' or ';
   if CK2.Checked then SubSQL:=SubSQL+' QCR.GXLB = ''AR'' or ';
   if CK3.Checked then SubSQL:=SubSQL+' QCR.GXLB = ''C'' or ';
   if CK4.Checked then SubSQL:=SubSQL+' QCR.GXLB = ''C+S'' or ';
   if SubSQL<>'' then SubSQL:=' and ( '+Copy(SubSQL,1,length(SubSQL)-4)+')';
   result:=SubSQL;
end;
procedure TDQRBH.Button1Click(Sender: TObject);
var
  j :word;
begin
  //至少勾選一個工段
  if ((CK1.Checked=false) and (CK2.Checked=false) and (CK3.Checked=false) and (CK4.Checked=false)) then
  begin
    showmessage('Please select 1 GXLB at last!');
    exit;
  end;
  //整理生產工時
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct NHour');
    sql.add('from (select  datepart(HH, QCR.USERDATE) as NHour from QCR');
    sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date+1)+''''+'');
    sql.add('      and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.add('      ) as HourList order by NHour');
    //memo1.Text:=sql.Text;
    active:=true;
  end;

  //整理交叉表的內容
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select QCC.DepNo,QCC.DepName,Replace(QCC.GXLB,''C+S'',''S''),isnull(QCC.YYBH,'''') as YYBH,isnull(QCC.YWSM,'''') as YWSM,QCC.Total');
    while not Qtemp.eof do
    begin
      sql.add(',isnull(sum(case  when NHour='''+Qtemp.fieldbyname('NHour').asstring+'''');
      sql.add(' then Qty  end),0) as '''+Qtemp.fieldbyname('NHour').asstring+'''');
      QTemp.Next;
    end;

    //各部門每小時各個Defect統計
    sql.add('from (select qcr.Depno,BDepartment.Depname,QCR.GXLB,qcrd.YYBH');
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
    sql.add('	   						         and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140305選擇工段回傳子SQL過濾條件
    sql.Add(Get_QCR_SubSQL());
    //
    sql.add('				          group by qcr.Depno,qcrd.YYBH) as QCT on QCR.DepNo = QCT.DepNo and QCBLYY.YYBH = QCT.YYBH');
    sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.Add('             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('	   				  and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140305選擇工段回傳子SQL過濾條件
    sql.Add(Get_QCR_SubSQL());
    //
    sql.add('	     group by qcr.Depno,BDepartment.Depname,QCR.GXLB,qcrd.YYBH');
    if RadioGroup1.ItemIndex = 0 then
      sql.add('             ,qcblyy.ywsm,QCT.Qty,datepart(hh,qcr.userdate)');
    if RadioGroup1.ItemIndex = 1 then
      sql.add('             ,qcblyy.zwsm,QCT.Qty,datepart(hh,qcr.userdate)');

     //產生部門每小時所有Defect合計
    sql.add('	     union all');
    sql.add('	     select qcr.DepNo,BDepartment.Depname,QCR.GXLB,'+''''+'Z'+''''+' as YYBH,'+''''+'Hourly_Total'+''''+' as ywsm,QCT.Qty  as Total');
    sql.add('             ,sum(qcrd.qty) as Qty,datepart(hh,qcr.userdate) as NHour');
    sql.add('	     from QCRD');
    sql.add('	     left join QCR on qcr.prono= qcrd.prono');
    sql.add('	     left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
    sql.add('	     left join bdepartment on bdepartment.id=qcr.depno');
    sql.add('	     left join (select qcr.Depno,qcr.GXLB,sum(qcrd.qty) as Qty');
    sql.add('				          from QCRD');
    sql.add('				          left join QCR on qcr.prono= qcrd.prono');
    sql.add('				          left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
    sql.add('                 where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('                        '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.add('	   						         and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140305選擇工段回傳子SQL過濾條件
    sql.Add(Get_QCR_SubSQL());
    //
    sql.add('				          group by qcr.Depno,qcr.GXLB) as QCT on QCR.DepNo = QCT.DepNo and QCR.GXLB=QCT.GXLB');
    //
    sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.Add('             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('	   					and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140305選擇工段回傳子SQL過濾條件
    sql.Add(Get_QCR_SubSQL());
    //
    sql.add('	     group by qcr.Depno,BDepartment.Depname,QCT.Qty,QCR.GXLB,datepart(hh,qcr.userdate)');
    sql.add('	     ) as QCC');
    sql.add('group by qcc.DepNo,qcc.DepName,QCC.GXLB,qcc.YYBH,qcc.YWSM,QCC.Total');
    sql.add('order by qcc.DepName,QCC.DepNo,QCC.GXLB,QCC.YYBH');
    //memo1.Text:=sql.Text;
    active:=true;
  end;

  with DBGrideh1 do
  begin
    columns[0].Width:=0;
    columns[0].title.caption:='部門編號|DepNo';
    columns[1].Width:=95;
    columns[1].title.caption:='部門名稱|DepName';
    columns[2].Width:=40;
    columns[2].title.caption:='工段|GXLB';
    columns[3].Width:=0;
    columns[3].title.caption:='Deff號|'+columns[3].title.caption;
    columns[4].Width:=200;
    columns[4].title.caption:='不良項目|Defect';
    columns[5].Width:=60;
    columns[5].title.caption:='不良合計|'+columns[5].title.caption;
    columns[5].Color:=$00FCCBCD;
    for j:=6 to Query1.FieldCount-1 do
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

procedure TDQRBH.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  Query1.active  then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
          WorkBook:=eclApp.workbooks.Add;
          for   i:=0   to   Query1.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
            end;

          Query1.First;
          j:=2;
          while   not   Query1.Eof   do
            begin
              for   i:=0   to  Query1.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
              end;
            Query1.Next;
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


end.
