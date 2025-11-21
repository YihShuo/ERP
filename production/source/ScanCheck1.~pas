unit ScanCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls
  ,ehlibBDE, PrnDbgeh,dateutils,Comobj;

type
  TScanCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Button1: TButton;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1CARTONBAR: TStringField;
    Query1DDBH: TStringField;
    Query1CARTONNO: TIntegerField;
    Query1XH: TStringField;
    Query1Qty: TIntegerField;
    Query1SB: TStringField;
    Query1CKBH: TStringField;
    Query1DepNO: TStringField;
    Query1KCBH: TStringField;
    Query1INCS: TSmallintField;
    Query1INDATE: TDateTimeField;
    Query1LastInDate: TDateTimeField;
    Query1OUTCS: TSmallintField;
    Query1OUTDATE: TDateTimeField;
    Query1INSPECTCS: TIntegerField;
    Query1INSPECTDATE: TDateTimeField;
    Query1EXEDATE: TDateTimeField;
    Query1MEMO: TStringField;
    Query1CON_NO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1DepName: TStringField;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    PrintDBGridEh1: TPrintDBGridEh;
    Qtemp: TQuery;
    Button2: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanCheck: TScanCheck;

implementation

{$R *.dfm}

procedure TScanCheck.FormDestroy(Sender: TObject);
begin
ScanCheck:=nil;
end;

procedure TScanCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanCheck.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWCP.*,BDepartment.DepName ');
    sql.add('from YWCP');
    sql.add('left join BDepartment on Bdepartment.ID=YWCp.DepNo');
    sql.add('where BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and YWCP.DDBH like '+''''+edit2.Text+'%'+'''');
    if not checkbox1.Checked then
      begin
        sql.add('      and InDate between ');
        sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP2.Time)+'''');
        sql.add('           and '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''');
        sql.add('order by YWCP.InDate,YWCP.CartonBar');
      end
      else
        begin  
          sql.add('      and LastInDate between '); 
        sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP2.Time)+'''');
        sql.add('           and '+''''+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Time)+'''');
          sql.add('order by YWCP.LastInDate,YWCP.CartonBar');
        end;
    active:=true;
  end;
end;

procedure TScanCheck.FormCreate(Sender: TObject);
var NDate:TDate;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
DTP1.date:=NDate;
DTP2.time:=startoftheday(NDate);
DTP3.date:=NDate  ;
DTP4.time:=endoftheday(NDate);
end;

procedure TScanCheck.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[TDatetime]',formatdatetime('yyyy/MM/dd',DTP1.Date)+' '+formatdatetime('HH:mm:ss',DTP2.Date)+'~~'+formatdatetime('yyyy/MM/dd',DTP3.Date)+' '+formatdatetime('HH:mm:ss',DTP4.Date)]);
end;

procedure TScanCheck.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
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
    for   i:=1   to   DBGridEh1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.fields[i-1].FieldName;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   DBGridEh1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i-1].Value;
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

end.
