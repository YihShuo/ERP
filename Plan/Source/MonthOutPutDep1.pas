unit MonthOutPutDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, ExtCtrls, Grids, GridsEh, DBGridEh,
  dateutils, PrnDbgeh,comobj, Menus;

type
  TMonthOutPutDep = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Edit1: TEdit;
    CB1: TComboBox;
    Button2: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    Button3: TButton;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthOutPutDep: TMonthOutPutDep;
  sdate,edate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TMonthOutPutDep.FormDestroy(Sender: TObject);
begin
MonthOutPutDep:=nil;
end;

procedure TMonthOutPutDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMonthOutPutDep.Button1Click(Sender: TObject);
var a,b,c :word;
i:word;
begin
a:=strtoint(CBX1.text);
b:=strtoint(CBX2.text);
c:=1;
sdate:=EncodeDate(a,b,c);
edate:=endofthemonth(sdate);
decodedate(edate,a,b,c);

 with Query1 do
   begin
     active:=false;
     sql.clear;
     active:=false;
     sql.clear;
     sql.add('select SCBBS.DepNo,SCBBS.DepName');
     for i:=1 to c do
       begin
         sql.add(',sum(case  when NDay='+''''+inttostr(i)+'''');
         sql.add(' then Qty else 0 end) as '+''''+inttostr(i)+'''');
       end;
     sql.add(',sum(case  when NDay='+''''+'32'+'''');
     sql.add(' then Qty else 0 end) as '+''''+'32'+'''');

     //原表內容      //每日實際產量
     sql.add('from  (select  SCBB.DepNo,BDepartment.DepName,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay  ');
     sql.add('       from SCBBS ');
     sql.add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('              and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
     if CB1.text<>'VR1' then
       begin
         sql.add('             and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
     sql.add('       group by SCBB.DepNo,BDepartment.DepName,datepart(day, SCBB.SCDate)  ');
     sql.add('      union   all');
     sql.add('      select  SCBB.DepNo,BDepartment.DepName,isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay  ');
     sql.add('      from SCBBS ');
     sql.add('      left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('             and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
     if CB1.text<>'VR1' then
       begin
         sql.add('             and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
     sql.add('      group by SCBB.DepNo,BDepartment.DepName )SCBBS ');
     sql.add('group by SCBBS.DepNo,SCBBS.DepName');
     sql.add('order by SCBBS.DepNo,SCBBS.DepName');
     active:=true;
   end;
end;

procedure TMonthOutPutDep.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.Text:=main.edit2.Text;
    active:=false;
  end;

end;

procedure TMonthOutPutDep.Query1AfterOpen(DataSet: TDataSet);
var i:word;
begin
 with DBGrideh1 do
   begin
     columns[0].Width:=0;
     columns[0].title.caption:='部門編號|DepNo';
     columns[1].Width:=60;
     columns[1].title.caption:='部門名稱|DepName';
     for i:=2 to query1.FieldCount-2 do
       begin
         Tfloatfield(query1.Fields[i]).displayformat:='##,#0' ;
         //columns[i].title.font.size:=10;
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
           begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
           end;  
         columns[i].Width:=40;
         columns[i].Title.Caption:='日  期  ( '+CBX1.text+' / '+CBX2.text+' )|'+columns[i].Title.Caption;
         columns[i].footer.ValueType := fvtSum;
       end;
     columns[query1.FieldCount-1].Width:=60;
     Tfloatfield(query1.Fields[query1.FieldCount-1]).displayformat:='##,#0' ;
     columns[query1.FieldCount-1].font.style:=[fsbold];
     columns[query1.FieldCount-1].title.caption:='合計|Total';
     columns[query1.FieldCount-1].footer.ValueType := fvtSum;
   end;
end;

procedure TMonthOutPutDep.Button3Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TMonthOutPutDep.Button2Click(Sender: TObject);
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

procedure TMonthOutPutDep.Excel1Click(Sender: TObject);
begin
button2click(nil);

end;

procedure TMonthOutPutDep.Print1Click(Sender: TObject);
begin

button3click(nil);
end;

procedure TMonthOutPutDep.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[Date]',CB1.text+'      '+CBX1.Text+'/'+CBX2.text]);
end;

end.
