unit ScanOutRep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, ExtCtrls,comobj;

type
  TScanOutRep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1YSBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Country: TStringField;
    Query1KFJC: TStringField;
    Query1Qty: TFloatField;
    Query1NowQty: TIntegerField;
    Query1CTS: TIntegerField;
    Query1NowCTS: TIntegerField;
    Query1ETD: TDateTimeField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Detail1: TMenuItem;
    Qtemp: TQuery;
    Query1EverQty: TIntegerField;
    Query1EverCTS: TIntegerField;
    lbCKBH: TLabel;
    cbSB: TComboBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Detail1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanOutRep: TScanOutRep;

implementation

uses ScanOutRep_Det1;

{$R *.dfm}

procedure TScanOutRep.FormDestroy(Sender: TObject);
begin
ScanOutRep:=nil;
end;

procedure TScanOutRep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanOutRep.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM as Country,KFZL.KFJC,');
    sql.add('       YWDD.Qty,okYWCP.EverQty,sum(YWCP.Qty) as NowQty,YWBZPO.CTS,okYWCP.EverCTS,count(YWCP.DDBH) as NowCTS');
    sql.add('from YWCP  with (nolock)');
    sql.add('left join YWDD  with (nolock) on YWDD.DDBH=YWCP.DDBH ');
    sql.add('left join DDZL  with (nolock) on YWDD.YSBH=DDZl.DDBH ');
    sql.add('left join XXZL  with (nolock) on DDZl.XieXing=XXZl.XieXing and DDZL.SheHao=XXZL.Shehao ');
    sql.add('left join LBZLS  with (nolock) on LBZLS.LB='+''''+'06'+''''+' and LBZLS.LBDH=DDZL.DDGB');
    sql.add('left join KFZL  with (nolock) on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join BDepartment  with (nolock) on BDepartment.ID=YWCP.DepNo ');
    sql.add('left join (select YWBZPO.DDBH,sum(YWBZPO.CTS) as CTS ');
    sql.add('           from (select distinct YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS from YWBZPOS  with (nolock) ) YWBZPO  ');
    sql.add('           group by YWBZPO.DDBH) YWBZPO on YWCP.DDBH=YWBZPO.DDBH ');
    sql.add('left join (select DDBH,sum(OutCS) as EverCTS,sum(Qty*OutCS) as EverQty from YWCP with (nolock) ');
    sql.add('           where  YWCP.CARTONBAR like '+''''+edit1.Text+'%'+'''');
    sql.add('                  and OutCS is not null ');
    sql.Add('           group by DDBH ) okYWCP on okYWCP.DDBH=YWDD.DDBH ');
    sql.Add('where DDZL.DDBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and BDepartment.DepName like '+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and isnull(KFZL.KFJC,'+''''+''+''''+') like '+''''+'%'+edit3.text+'%'+'''');
    //sql.add('      and DDZL.GSBH='+''''+main.edit2.Text+'''');
    sql.add('      and convert(varchar,YWCP.OutDate,111) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    if cbSB.Text<>'' then
    begin
      SQL.Add(' and YWCP.sb = '+cbSB.Text+'');
    end;
    sql.add('group by YWCP.DDBH,YWDD.YSBH,XXZL.Article,XXZL.XieMing,YWDD.ETD,LBZLS.YWSM,KFZL.KFJC,');
    sql.add('         YWDD.Qty,okYWCP.EverQty,YWBZPO.CTS,okYWCP.EverCTS');
    sql.add('order by YWCP.DDBH ');
    active:=true;
  end;
end;

procedure TScanOutRep.FormCreate(Sender: TObject);
begin
  with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.add('select getdate() as NDate');
    active:=true;
    DTP1.date:=fieldbyname('NDate').Value-7;
    DTP2.date:=fieldbyname('NDate').Value-1;
    active:=false;
  end;
end;

procedure TScanOutRep.Print1Click(Sender: TObject);
begin
  PrintDBGrideh1.Preview;
end;

procedure TScanOutRep.Excel1Click(Sender: TObject);
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

procedure TScanOutRep.Detail1Click(Sender: TObject);
begin
  ScanOutRep_Det:=TScanOutRep_Det.create(self);
  ScanOutRep_Det.show;
end;

procedure TScanOutRep.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[TDate]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

end.
