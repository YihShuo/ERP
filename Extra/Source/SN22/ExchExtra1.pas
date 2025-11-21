unit ExchExtra1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls;

type
  TExchExtra = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1HLYEAR: TStringField;
    Query1HLMONTH: TStringField;
    Query1HLDAY: TStringField;
    Query1CWHL: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    DS1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExchExtra: TExchExtra;

implementation

uses ExtraPur_BJ1;

{$R *.dfm}

procedure TExchExtra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExchExtra.FormDestroy(Sender: TObject);
begin
  ExchExtra:=nil;
end;

procedure TExchExtra.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CWHLS ');
    sql.add('where HLYEAR+'+''''+ '/'+''''+'+HLMONTH+'+''''+'/'+''''+'+HLDAY between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+ formatdatetime('yyyy/MM/dd',DTP2.Date)+'''')   ;
    sql.add('order by HLYEAR,HLMONTH,HLDAY');
    active:=true;
  end;
end;

procedure TExchExtra.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.RecordCount>0 then
  begin
    with  ExtraPur_BJ.Query1 do
    begin
       edit;
       FieldByName('CWHL').Value:=query1.fieldbyname('CWHL').Value;
       post;
    end;
    query1.Active:=false;
    close;
  end;
end;

procedure TExchExtra.FormCreate(Sender: TObject);
var sdate,edate:string;
    myYear, myMonth, myDay : Word;
begin
  DecodeDate(now, myYear, myMonth, myDay);
  sdate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1));  //¤ëªì¤é´Á
  edate:=FormatDateTime('YYYY/MM/DD', now);
  DTP1.Date:=strtodate(sdate);
  DTP2.Date:=strtodate(edate);
end;

end.
