unit OutsoleSCBZCL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls, DateUtils
  , Comobj;

type
  TOutsoleSCBZCL = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    panel2: TPanel;
    lbl1: TLabel;
    Label3: TLabel;
    EditMatNo: TEdit;
    btn1: TButton;
    EditMatNM: TEdit;
    DBGrdh1: TDBGridEh;
    OutsoleSCBZCLQry: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    OutsoleSCBZCLQryCLDH: TStringField;
    OutsoleSCBZCLQryQty: TIntegerField;
    OutsoleSCBZCLQryUserID: TStringField;
    OutsoleSCBZCLQryUserDate: TDateTimeField;
    OutsoleSCBZCLQryYN: TStringField;
    TmpQry: TQuery;
    Label2: TLabel;
    CBX1: TComboBox;
    OutsoleSCBZCLQryMDPM: TStringField;
    OutsoleSCBZCLQryYWPM: TStringField;
    OutsoleSCBZCLQryDailyQty: TIntegerField;
    OutsoleSCBZCLQryDQty: TFloatField;
    DBGridEh1: TDBGridEh;
    OutsoleQtyQry: TQuery;
    OutsoleQtyQryCLBH: TStringField;
    OutsoleQtyQrySIZ: TStringField;
    OutsoleQtyQryDQty: TFloatField;
    DS2: TDataSource;
    Splitter1: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure OutsoleSCBZCLQryAfterOpen(DataSet: TDataSet);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrdh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure OutsoleSCBZCLQryQtySetText(Sender: TField;
      const Text: String);
    procedure bbt6Click(Sender: TObject);
  private
    ayear,amonth:string;
    { Private declarations }
    procedure CheckOutsoleList();
  public
    { Public declarations }
  end;

var
  OutsoleSCBZCL: TOutsoleSCBZCL;

implementation
  uses FunUnit, main1;
{$R *.dfm}

procedure TOutsoleSCBZCL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TOutsoleSCBZCL.FormDestroy(Sender: TObject);
begin
  OutsoleSCBZCL:=nil;
end;
//新增楦頭基本資料
procedure TOutsoleSCBZCL.CheckOutsoleList();
var year,month,day:word;
    i:integer;
begin
  decodedate(Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //
  with TmpQry  do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Insert into OutsoleSCBZCL ');
    SQL.Add('select distinct CLBH,null as MDPM,null as Qty,null DailyQty,''SYSTEM'' as USERID,GetDate() as UserDate,1 as YN from (');
    SQL.Add('select OSRKSS.CLBH from OSRKSS,OSRK ');
    SQL.Add('where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and OSRKSS.ZLBH=''NEWL'' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111))  between '''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''' and '''+formatdatetime('yyyy/MM/dd',date)+'''');
    SQL.Add('Union All ');
    SQL.Add('select CLBH from Outsolemonth where CKBH='''+CBX1.Text+'#L'' and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' ) Outsole');
    SQL.Add('where CLBH not in (select CLDH from OutsoleSCBZCL)');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
    Active:=false;
  end;
  //
end;

procedure TOutsoleSCBZCL.btn1Click(Sender: TObject);
begin

  CheckOutsoleList();
  with OutsoleSCBZCLQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select OutsoleSCBZCL.*,CLZL.YWPM,OutsoleS.DQty  ');
    SQL.Add('from OutsoleSCBZCL ');
    SQL.Add('Left join CLZL on CLZL.cldh=OutsoleSCBZCL.CLDH ');
    SQL.Add('left join (');
    SQL.Add('  select OutsoleS.CLBH,SUM(DQty) as DQty from (');
    SQL.Add('  select CLBH,SIZ,Sum(RKQty) as DQty from (');
    SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
    SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and OSRKSS.ZLBH=''NEWL'' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''' and '''+formatdatetime('yyyy/MM/dd',date)+'''');
    SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ ');
    SQL.Add('  Union All ');
    SQL.Add('  select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+CBX1.Text+'#L'' and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' ) as tmpRKTLFL ');
    SQL.Add('  group by CKBH,CLBH,SIZ ) OutsoleS');
    SQL.Add('  Group by OutsoleS.CLBH ) OutsoleS on OutsoleS.CLBH=OutsoleSCBZCL.CLDH');
    SQL.Add('where 1=1 ');
    if EditMatNo.Text<>'' then
       SQL.Add('and OutsoleSCBZCL.CLDH like '''+EditMatNo.Text+'%'' ');
    if EditMatNM.Text<>'' then
       SQL.Add('and CLZL.YWPM like ''%'+EditMatNM.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
  with OutsoleQtyQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  select OutsoleS.* from (');
    SQL.Add('  select CLBH,SIZ,Sum(RKQty) as DQty from (');
    SQL.Add('  select OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ,SUM(OSRKSS.Qty) as RKQty from OSRKSS,OSRK ');
    SQL.Add('  where OSRKSS.RKNO=OSRK.RKNO  and OSRK.CKBH='''+CBX1.Text+''' and OSRKSS.ZLBH=''NEWL'' and convert(smalldatetime,convert(varchar,OSRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(date))+''' and '''+formatdatetime('yyyy/MM/dd',date)+''' ');
    SQL.Add('        and  OSRKSS.CLBH=:CLDH ');
    SQL.Add('  Group by OSRK.CKBH,OSRKSS.CLBH,OSRKSS.SIZ ');
    SQL.Add('  Union All ');
    SQL.Add('  select CKBH,CLBH,SIZ,QTY as OutsoleRem from Outsolemonth where CKBH='''+CBX1.Text+'#L'' and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' and Outsolemonth.CLBH=:CLDH ) as tmpRKTLFL ');
    SQL.Add('  group by CKBH,CLBH,SIZ ) OutsoleS');
    Active:=true;
  end;
end;
//=======

procedure TOutsoleSCBZCL.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
end;

procedure TOutsoleSCBZCL.OutsoleSCBZCLQryAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TOutsoleSCBZCL.BB2Click(Sender: TObject);
begin
  with OutsoleSCBZCLQry do
  begin
      requestlive:=true;
      cachedupdates:=true;
      insert;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGrdh1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TOutsoleSCBZCL.BB4Click(Sender: TObject);
begin
  with OutsoleSCBZCLQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TOutsoleSCBZCL.BB3Click(Sender: TObject);
begin
  with OutsoleSCBZCLQry do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TOutsoleSCBZCL.FormCreate(Sender: TObject);
begin
  with TmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CKBH ');
    active:=true;
    CBX1.items.clear;
    while not eof do
    begin
      CBX1.items.add(fieldbyname('CKBH').AsString);
      Next;
    end;
    CBX1.itemindex:=0;
    active:=false;
  end;
end;

procedure TOutsoleSCBZCL.DBGrdh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if OutsoleSCBZCLQry.FieldByName('YN').value='0' then
  begin
    DBGrdh1.canvas.font.color:=clred;
  end;
end;

procedure TOutsoleSCBZCL.BB6Click(Sender: TObject);
begin
  with OutsoleSCBZCLQry do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TOutsoleSCBZCL.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    OutsoleSCBZCLQry.first;
    for i:=1 to OutsoleSCBZCLQry.RecordCount do
    begin
        case OutsoleSCBZCLQry.updatestatus of
          usinserted:
          begin
            OutsoleSCBZCLQry.edit;
            OutsoleSCBZCLQry.FieldByName('userID').Value:=main.edit1.text;
            OutsoleSCBZCLQry.FieldByName('userdate').Value:=Date;
            OutsoleSCBZCLQry.FieldByName('YN').Value:='1';
            UpdateSQL1.apply(ukinsert);
          end;
          usmodified:
          begin
             if OutsoleSCBZCLQry.fieldbyname('YN').value='0'then
             begin
                 UpdateSQL1.apply(ukdelete);
             end else
             begin
                 OutsoleSCBZCLQry.edit;
                 OutsoleSCBZCLQry.FieldByName('userID').Value:=main.edit1.text;
                 OutsoleSCBZCLQry.FieldByName('userdate').Value:=Date;
                 UpdateSQL1.apply(ukmodify);
             end;
          end;
        end;
        OutsoleSCBZCLQry.next;
    end;
  //
  OutsoleSCBZCLQry.active:=false;
  OutsoleSCBZCLQry.cachedupdates:=false;
  OutsoleSCBZCLQry.requestlive:=false;
  OutsoleSCBZCLQry.active:=true;

  BB5.Enabled:=false;
  BB6.Enabled:=false;
  DBGrdh1.columns[0].ButtonStyle:=cbsNone;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TOutsoleSCBZCL.OutsoleSCBZCLQryQtySetText(Sender: TField;
  const Text: String);
begin
   Sender.Value:=Text;
   with OutsoleSCBZCLQry do
   begin
     Edit;
     FieldByName('DailyQty').Value:=FieldByName('Qty').Value*FieldByName('DQty').Value;
     Post;
   end;
end;

procedure TOutsoleSCBZCL.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if OutsoleSCBZCLQry.Active then
  begin
    if OutsoleSCBZCLQry.recordcount=0 then
    begin
     showmessage('No record.');
     abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  //
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
    for   i:=1   to   OutsoleSCBZCLQry.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=OutsoleSCBZCLQry.fields[i-1].FieldName;
    end;
    OutsoleSCBZCLQry.First;
    j:=2;
    while   not  OutsoleSCBZCLQry.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   OutsoleSCBZCLQry.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=OutsoleSCBZCLQry.Fields[i-1].Value;
        end;
        OutsoleSCBZCLQry.Next;
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

end.


