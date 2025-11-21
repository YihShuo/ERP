unit ReplenishDep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ComCtrls, DBTables, PrnDbgeh, GridsEh, DBGridEh,
  ExtCtrls, Menus,comobj;

type
  TReplenishDep = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Edit2: TEdit;
    DS1: TDataSource;
    Qtemp: TQuery;
    CBX4: TComboBox;
    Label12: TLabel;
    Query1DepID: TStringField;
    Query1DepName: TStringField;
    Query1ACCUS: TFloatField;
    Query1DepMemo: TStringField;
    Label5: TLabel;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Detail1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishDep: TReplenishDep;
  NDate:TDate;

implementation

uses main1, ReplenishDep_Det1;

{$R *.dfm}

procedure TReplenishDep.FormDestroy(Sender: TObject);
begin
  ReplenishDep:=nil;
end;

procedure TReplenishDep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReplenishDep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select FYACC.DepID,FYACC.DepName,FYACC.DepMemo,round(sum(FYACC.ACCUS),2) as ACCUS  ');
    sql.add('from (select LL.DepID,LL.DepName,LL.DepMemo,LL.CLBH,sum(LL.Qty*CWDJ.USPrice) as ACCUS');
    sql.add('      from (select KCLL.DepID,BDepartment.DepName,BDepartment.DepMemo,KCLLS.Qty,KCLLS.CLBH,KCLL.CFMDate');
    sql.add('            from KCLLS');
    sql.add('            left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('            left join BDepartment on BDepartment.ID=KCLL.DepID');
    //sql.add('            left join CLZHZL on CLZHZL.CLDH=KCLLS.CLBH  and CLZHZL.YN<>'+''''+'3'+'''');
    sql.add('            left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCLL.CKBH=KCZLS.CKBH');
    sql.add('            where convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
    sql.add('                  '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('                  and KCLL.CFMID<>''NO'' ');
    sql.add('                  and BDepartment.DepName like ''%'+edit2.text+'%'' ');
    sql.add('                  and KCLLS.SCBH like '''+edit1.text+'%'' ');
    sql.add('                  and KCLLS.Qty<>0');
    sql.add('                  and KCLLS.BLSB=''Y'' ');
    sql.add('                  and BDepartment.GSBH='+''''+CBX4.Text+'''');
    sql.add('            ) LL  ');
    sql.add('      left join CWDJ on CWDJ.CLBH=LL.CLBH ');
    sql.add('                        and CWDJ.DJYear=convert(varchar,datepart(yyyy,LL.CFMDate)) ');
    sql.add('                        and CWDJ.DJMonth=convert(varchar,datepart(MM,LL.CFMDate)) ');
    sql.add('      group by LL.DepID,LL.DepName,LL.DepMemo,LL.CLBH,CWDJ.USPrice) FYACC');
    sql.add('group by FYACC.DepID,FYACC.DepName,FYACC.DepMemo');
    sql.add('order by FYACC.DepID');
    //memo1.Text:=sql.text;
    active:=true;
  end;
end;

procedure TReplenishDep.FormCreate(Sender: TObject);
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
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.date:=Ndate-7;
  DTP2.date:=Ndate;

end;

procedure TReplenishDep.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

procedure TReplenishDep.Print1Click(Sender: TObject);
begin
  Printdbgrideh1.Preview;
end;

procedure TReplenishDep.Excel1Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
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

procedure TReplenishDep.Detail1Click(Sender: TObject);
begin
  ReplenishDep_Det:=TReplenishDep_Det.create(self);
  ReplenishDep_Det.show;
end;

end.
