unit MQRBDefP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables,dateutils,comobj;

type
  TMQRBDef = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    CBX1: TComboBox;
    Label7: TLabel;
    CBX2: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Qtemp: TQuery;
    RadioGroup1: TRadioGroup;
    GroupBox1: TGroupBox;
    CK1: TCheckBox;
    CK2: TCheckBox;
    CK3: TCheckBox;
    CK4: TCheckBox;
    Label3: TLabel;
    Edit1: TEdit;
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
  MQRBDef: TMQRBDef;
  sdate,edate:Tdate;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TMQRBDef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMQRBDef.FormDestroy(Sender: TObject);
begin
  MQRBDef:=nil;
end;
//QCR工段回傳SQL
function TMQRBDef.Get_QCR_SubSQL():String;
var SubSQL:string;
begin
   if CK1.Checked then SubSQL:=SubSQL+' QCR.GXLB = ''A'' or ';
   if CK2.Checked then SubSQL:=SubSQL+' QCR.GXLB = ''AR'' or ';
   if CK3.Checked then SubSQL:=SubSQL+' QCR.GXLB = ''C'' or ';
   if CK4.Checked then SubSQL:=SubSQL+' QCR.GXLB = ''C+S'' or ';
   if SubSQL<>'' then SubSQL:=' and ( '+Copy(SubSQL,1,length(SubSQL)-4)+')';
   result:=SubSQL;
end;

procedure TMQRBDef.Button1Click(Sender: TObject);
var
  a,b,c,j :word;
begin
  //至少勾選一個工段
  if ((CK1.Checked=false) and (CK2.Checked=false) and (CK3.Checked=false) and (CK4.Checked=false)) then
  begin
    showmessage('Please select 1 GXLB at last!');
    exit;
  end;
  //
  a:=strtoint(CBX1.text);
  b:=strtoint(CBX2.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  edate:=endofthemonth(sdate);

  //整理當月工作日期
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct NDay ');
    sql.add('from (select  datepart(day, QCRD.USERDATE) as NDay from QCRD');
    sql.add('      left join QCR on QCR.ProNo = QCRD.ProNo ');
    sql.add('      where  convert(smalldatetime,convert(varchar,QCRD.USERDATE,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate)+''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.add('      ) as DayList order by NDay');
    //memo1.text:=sql.text;
    active:=true;
  end;

  //整理交叉表的日期
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select QCC.DepNo,QCC.DepName,Replace(QCC.GXLB,''C+S'',''S''),isnull(QCC.YYBH,'''') as YYBH,isnull(QCC.YWSM,'''') as YWSM');
    while not QTemp.eof do
    begin
      //e:=Qtemp.fieldbyname('NDay').asstring;
      sql.add(',isnull(sum(case  when NDay='''+Qtemp.fieldbyname('NDay').asstring+'''');
      sql.add(' then Qty  end),0) as '''+Qtemp.fieldbyname('NDay').asstring+'''');
      QTemp.Next;
    end;

    //defect每日各部門發生次數
    sql.add('from(select QCR.DepNo,BDepartment.DepName,QCR.GXLB,QCBLYY.YYBH');
    if RadioGroup1.ItemIndex = 0 then   //顯示Defect原因為英/越文
      sql.add('          ,QCBLYY.YWSM');
    if RadioGroup1.ItemIndex = 1 then
      sql.add('          ,QCBLYY.ZWSM as YWSM');
    sql.add('            ,sum(QCRD.Qty) as Qty,DATEPART(DAY,QCRD.USERDATE) as NDay');
    sql.add('	    from QCR');
    sql.add('	    left join QCRD on QCR.ProNo = QCRD.ProNo');
    sql.add('     left join BDepartment on QCR.DepNo = BDepartment.ID');
    sql.add('	    left join QCBLYY on QCR.GSBH = QCBLYY.GSBH and QCRD.YYBH = QCBLYY.YYBH');
    sql.add('     where  convert(smalldatetime,convert(varchar,QCRD.USERDATE,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('            and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140305選擇工段回傳子SQL過濾條件
    sql.Add(Get_QCR_SubSQL());
    //
    sql.add('	    group by QCR.DepNo,BDepartment.DepName,QCR.GXLB,QCBLYY.YYBH');
    if RadioGroup1.ItemIndex = 0 then
      sql.add('            ,QCBLYY.YWSM,DATEPART(DAY,QCRD.USERDATE)');
    if RadioGroup1.ItemIndex = 1 then
      sql.add('            ,QCBLYY.ZWSM,DATEPART(DAY,QCRD.USERDATE)');

    //部門合計Defect數
    sql.add('	    union all');
    sql.add('	    select QCR.DepNo,BDepartment.DepName,QCR.GXLB,'+''''+'Z'+''''+' as YYBH,'+''''+'2.Total Defect'+''''+' as YWSM,sum(QCRD.Qty) as Qty,DATEPART(DAY,QCRD.USERDATE) as NDay');
    sql.add('	    from QCR');
    sql.add('	    left join QCRD on QCR.ProNo = QCRD.ProNo');
    sql.add('	    left join BDepartment on QCR.DepNo = BDepartment.ID');
    sql.add('	    left join QCBLYY on QCR.GSBH = QCBLYY.GSBH and QCRD.YYBH = QCBLYY.YYBH');
    sql.add('     where  convert(smalldatetime,convert(varchar,QCRD.USERDATE,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.Add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('            and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    //20140305選擇工段回傳子SQL過濾條件
    sql.Add(Get_QCR_SubSQL());
    //
    sql.add('	    group by QCR.DepNo,BDepartment.DepName,QCR.GXLB,DATEPART(DAY,QCRD.USERDATE)');
    sql.add('	    ) as QCC');
    sql.add('group by QCC.DepNo,QCC.DepName,QCC.GXLB,QCC.YYBH,QCC.YWSM');
    sql.add('order by QCC.DepName,QCC.DepNo,QCC.GXLB,QCC.YYBH');
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
    for j:=5 to Query1.FieldCount-1 do
    begin
      columns[j].Width:=35;
      columns[j].Title.Caption:='日   期   WeekDay|'+columns[j].Title.Caption;
      if j mod 2 = 0 then
        columns[j].Color:=clInfoBk;
    end;
  end;
  
end;

procedure TMQRBDef.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(query1.FieldByName('YWSM').value)='2.Total Defect' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TMQRBDef.Button2Click(Sender: TObject);
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
