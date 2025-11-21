unit Exchange_NoSize1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,IniFiles;

type
  TExchange_NoSize = class(TForm)
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
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    DS1: TDataSource;
    Query1CWHL: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
  end;

var
  Exchange_NoSize: TExchange_NoSize;

implementation

  uses PurNoSize_BJ1;

{$R *.dfm}
procedure TExchange_NoSize.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TExchange_NoSize.FormCreate(Sender: TObject);
var sdate,edate:string;
    myYear, myMonth, myDay : Word;
begin
  DecodeDate(now, myYear, myMonth, myDay);
  sdate:=FormatDateTime('YYYY/MM/DD', EncodeDate(myYear, myMonth, 1)); 
  edate:=FormatDateTime('YYYY/MM/DD', now);
  DTP1.Date:=strtodate(sdate);
  DTP2.Date:=strtodate(edate);
  ReadIni();
end;

procedure TExchange_NoSize.FormDestroy(Sender: TObject);
begin
   Exchange_NoSize:=nil;
end;

procedure TExchange_NoSize.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExchange_NoSize.Button1Click(Sender: TObject);
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

procedure TExchange_NoSize.DBGridEh1DblClick(Sender: TObject);
begin
if query1.RecordCount>0 then
  begin
    with PurNoSize_BJ.Query1  do
    begin
       edit;
       FieldByName('CWHL').Value:=query1.fieldbyname('CWHL').Value;
       post;
    end;
    query1.Active:=false;
    close;
  end;
end;

end.
