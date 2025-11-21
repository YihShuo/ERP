unit MatConsumption1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, ExtCtrls,comobj, Menus,
  ComCtrls,dateutils;

type
  TMatConsumption = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit3: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label8: TLabel;
    Button2: TButton;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Qtemp: TQuery;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatConsumption: TMatConsumption;
  sdate,edate:Tdate;

implementation

uses MatConsumption_Detail1, main1;

{$R *.dfm}

procedure TMatConsumption.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  Edit2.SetFocus;
end;

procedure TMatConsumption.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  Edit3.SetFocus;
end;

procedure TMatConsumption.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  Edit4.SetFocus;
end;

procedure TMatConsumption.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  Edit5.SetFocus;
end;

procedure TMatConsumption.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TMatConsumption.Button1Click(Sender: TObject);
var y,m:word;
begin
if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
y:=strtoint(CBX2.Text);
m:=strtoint(CBX3.Text);
if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
sdate:=encodedate(y,m,1);
edate:=endofthemonth(sdate);


with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('if   object_id('+''''+'tempdb..#OrdCL'+''''+')   is  not null  ');
    sql.add('begin  drop table #OrdCL end');
    sql.add('if   object_id('+''''+'tempdb..#OrdCL2'+''''+')  is  not null   ');
    sql.add('begin  drop table #OrdCL2  end');
    sql.add('declare @p decimal(18,4)');
    sql.add('set @p=(select Delperson from BasData where GSBH='+''''+main.edit2.Text+''''+')');
    sql.add('select ZLZLS2.ZLBH,ZLZLS2.CLBH,max(ZLZLS2.USAGE) as USAGE,');
    sql.add('sum(ZLZLS2.CLSL)   CLSL,isnull(XXBWFLS.DFL,'+''''+'N'+''''+') as DFL');
    sql.add(',CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing, ');
    sql.add('isnull(XXZLS.CLTX,3) as CLTX');
    sql.add('into #OrdCL from ZLZLS2');
    sql.add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    sql.add('left join XXZL on XXZL.XieXing=DDZL.XieXing and XXZL.SheHao=DDZL.SheHao');
    sql.add('left join XXBWFL on ZLZLS2.BWBH=XXBWFL.BWBH and XXZL.XieXing=XXBWFL.XieXing');
    sql.add('left join XXBWFLS on XXBWFL.FLBH=XXBWFLS.FLBH');
    sql.Add('left join XXZLS on XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZL.SheHao and XXZLS.BWBH=ZLZLS2.BWBH');
    sql.add('where convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
    sql.add(''''+formatdatetime('yyyy/mm/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/mm/dd',edate)+'''');
    sql.add('and XXZL.XieXing like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('and XXZL.SheHao like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and XXZL.XieMing like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('and XXZl.Article like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('and ZLZLS2.ZLBH like '+''''+'%'+edit5.Text+'%'+'''');

    //»õ¬K¯S®í
    sql.add('and DDZl.GSBH='+''''+main.Edit2.Text+'''');
    sql.add('and exists(select SCBH from SCZL where SCZL.ZLBH=ZLZL.ZLBH) ');

    
    sql.add('and MJBH='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('group by  ZLZLS2.ZLBH,ZLZLS2.CLBH,XXBWFLS.DFL,');
    sql.add('CLZL.YWPM,CLZL.DWBH,CLZL.LYCC,DDZL.XieXing,DDZL.SheHao,XXZL.Article,XXZL.XieMing,XXZLS.CLTX ');
    sql.add('order by ZLZLS2.CLBH,XXBWFL.DFL');

    sql.add('select  #OrdCL.ZLBH,#OrdCL.CLBH,sum(#OrdCL.USAGE) as USAGE, sum(#OrdCL.CLSL) as CLSL,');
    sql.add('#OrdCL.DFL,#OrdCL.YWPM,#OrdCL.DWBH,#OrdCL.LYCC,#OrdCL.Article,#OrdCL.XieMing,');
    sql.add('#OrdCL.XieXing,#OrdCL.SheHao,#OrdCL.CLTX');
    sql.add(' into #OrdCL2 from #OrdCL');
    sql.add('group by #OrdCL.ZLBH,#OrdCL.CLBH,#OrdCL.DFL,#OrdCL.YWPM,#OrdCL.DWBH,');
    sql.add('#OrdCL.LYCC,#OrdCL.Article,#OrdCL.XieMing,#OrdCL.XieXing,#OrdCL.SheHao,#OrdCL.CLTX');
    sql.add('update #OrdCL2');
    sql.add('set CLSL=CLSL*@p/100');
    sql.add('where  CLTX='+''''+'3'+'''');
    sql.add('select CLBH,YWPM,DWBH,sum(CLSL) as CLSL,DFL,LYCC ');
    sql.add('from #OrdCL group by CLBH,DFL,YWPM,DWBH,LYCC order by CLBH');
    active:=true;
    label8.caption:=inttostr(recordcount);
  end;
DTP1.Date:=sdate;
DTP2.Date:=edate;
end;

procedure TMatConsumption.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
free;
end;

procedure TMatConsumption.Button2Click(Sender: TObject);
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

procedure TMatConsumption.Detail1Click(Sender: TObject);
begin
MatConsumption_Detail:=TMatConsumption_Detail.create(self);
MatConsumption_Detail.show;
end;

procedure TMatConsumption.FormDestroy(Sender: TObject);
begin
MatConsumption:=nil;
end;

procedure TMatConsumption.FormCreate(Sender: TObject);
var i:integer;
    myYear, myMonth, myDay : Word;
    NDate :Tdate;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    for i:=QTemp.fieldbyname('Oldyear').value to  QTemp.fieldbyname('Newyear').value  do
    begin
      CBX2.Items.Add(inttostr(i));
      next;
    end;
    active:=false;

    DecodeDate(Date(), myYear, myMonth, myDay);
    for i:=0 to CBX2.Items.Count-1 do
    begin
      if strtoint(CBX2.Items[i])=myYear then
      begin
        CBX2.ItemIndex:=i;
        break;
      end;
    end;
    for i:=0 to CBX3.Items.Count-1 do
    begin
      if strtoint(CBX3.Items[i])=myMonth then
      begin
        CBX3.ItemIndex:=i;
        break;
      end;
    end;
    {for i:=0 to CBX3.Items.Count-1 do
    begin
      if strtoint(CBX3.Items[i])=myDay then
      begin
        CBX3.ItemIndex:=i;
        break;
      end;
    end;    }
  end;
end;

end.
