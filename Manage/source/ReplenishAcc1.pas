unit ReplenishAcc1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DB, Grids, DBGrids, DBTables, ExtCtrls ,comobj,
  ehlibBDE, GridsEh, DBGridEh;

type
  TReplenishAcc = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGridEh;
    Query1LLNO: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1DepName: TStringField;
    Query1CLBH: TStringField;
    Query1SCBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Label3: TLabel;
    DTC1: TDateTimePicker;
    Label4: TLabel;
    DTC2: TDateTimePicker;
    Button2: TButton;
    Query1ZLBH: TStringField;
    Query1CLSL: TCurrencyField;
    Query1PerSon: TFloatField;
    Query1Pairs: TIntegerField;
    Label5: TLabel;
    Edit3: TEdit;
    Query1YWSM: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1ACCUS: TFloatField;
    Query1ACCVN: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishAcc: TReplenishAcc;

implementation




{$R *.dfm}

procedure TReplenishAcc.FormCreate(Sender: TObject);
begin
DTC1.date:=Date-7;
DTC2.Date:=date;
end;

procedure TReplenishAcc.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.LLNO,KCLL.CFMDate,KCLL.USERDATE,Bdepartment.DepName,KCLL.SCBH AS ZLBH ,XXZL.Article,XXZl.XieMing ,');
    sql.add('    KCLLS.CLBH,KCLLS.SCBH,KCLLS.Qty,CLZL.YWPM,CLZL.DWBH,KCLLS.CLSL,DDZL.Pairs,SCBLYY.YWSM,CLBJ.USPrice,CLBJ.VNPrice');
    sql.add('from KCLL');
    sql.add('left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join BDepartment on BDepartment.[ID]=KCLL.DepID');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join ZLZL on ZLZL.ZLBH=KCLLS.SCBH');
    sql.add('left join DDZL on DDZL.ZLBH=ZLZL.ZLBH');
    sql.add('left join XXZl on XXZL.XieXing=DDZl.XieXing and DDZL.SheHao=XXZl.SheHao ')  ;
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
    sql.add('left join (select distinct CLBH,max(USPrice) as USPrice,max(VNPrice) as VNPrice,max(USERDATE) as USERDATE  ');
    sql.add('           from KCRKS');
    sql.add('           group by CLBH) CLBJ on CLBJ.CLBH=CLZL.CLDH  ');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.USERDate,111)) between '+''''+formatdatetime('yyyy/mm/dd',DTC1.date)+'''');
    sql.add(' and '+'''' +formatdatetime('yyyy/mm/dd',DTC2.date)+'''');
    sql.add('  and KCLLS.SCBH like '+''''+edit2.Text+'%'+'''');
    sql.add(' and BDepartment.DepName like '+''''+edit1.Text+'%'+'''');
   // sql.add(' and KCLLS.CLBH<'+''''+'O'+'''')  ;
    sql.add(' and KCLLS.Qty<>0');
    sql.add(' and KCLLS.CLBh like '+''''+edit3.Text+'%'+'''');
    if Checkbox1.Checked then
      begin
        sql.add('and KCLL.SCBH='+''''+'ZZZZZZZZZZ'+'''');
      end;
    sql.add('order by KCLL.USERDate,Bdepartment.DepName');
    active:=true;
  end;

end;

procedure TReplenishAcc.Button2Click(Sender: TObject);
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

procedure TReplenishAcc.Query1CalcFields(DataSet: TDataSet);
begin
if  Query1.Fieldbyname('CLSL').value<>0 then
Query1.fieldbyname('Person').value:=Query1.Fieldbyname('Qty').value/Query1.Fieldbyname('CLSL').value*100;


         Query1.fieldbyname('ACCUS').value:=Query1.fieldbyname('Qty').value*Query1.fieldbyname('USPrice').value;
     if  Query1.fieldbyname('USPrice').IsNull then
       begin
         Query1.fieldbyname('ACCVN').value:=Query1.fieldbyname('Qty').value*Query1.fieldbyname('VNPrice').value;
       end;

end;

procedure TReplenishAcc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TReplenishAcc.FormDestroy(Sender: TObject);
begin
replenishacc:=nil;
end;

end.
