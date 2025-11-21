unit PayableLit_Check1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids,dateutils, GridsEh, DBGridEh,comobj, PrnDbgeh,IniFiles;

type
  TPayableLit_Check = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    CB1: TComboBox;
    Qtemp: TQuery;
    Query1ZSBH: TStringField;
    Query1RKSB: TStringField;
    Query1CGBH: TStringField;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1CostID: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1ZSYWJC: TStringField;
    Query1CWHL: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  PayableLit_Check: TPayableLit_Check;

implementation

uses  main1;

{$R *.dfm}
procedure TPayableLit_Check.ReadIni();
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
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//


procedure TPayableLit_Check.FormCreate(Sender: TObject);
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
    CB1.itemindex:=0;
    active:=false;
  end;
  DTP1.Date:=startofthemonth(date,);
  DTP2.Date:=date;
  ReadIni();
end;

procedure TPayableLit_Check.Button1Click(Sender: TObject);
var y,m,d:word;
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRK.ZSBH,KCRKS.RKSB,KCRKS.CGBH,KCRKS.RKNO ,KCRKS.CLBH,KCRK.USERDATE,KCRKS.Qty,KCRKS.USPrice');
    sql.add('       ,KCRKS.USACC,KCRKS.CWHL,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.CostID,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC');
    sql.add('from KCRKS');
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('left join CLZL on KCRKS.CLBH=CLZL.CLDH');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between   ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and KCRK.ZSBH like  '+''''+edit1.Text+'%'+'''');
    sql.add('      and KCRK.CFMDate is not null');
    if CB1.itemindex<>0 then
      begin
        sql.add('      and KCRK.GSBH='+''''+CB1.Text+'''');
      end;
    sql.add('order by KCRK.ZSBH,KCRKS.RKNO,KCRKS.CLBH,KCRKS.RKSB,KCRKS.CGBH');
    active:=true;
  end;

end;

procedure TPayableLit_Check.FormDestroy(Sender: TObject);
begin
Payablelit_check:=nil;
end;

procedure TPayableLit_Check.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TPayableLit_Check.Print1Click(Sender: TObject);
begin

printdbgrideh1.preview;
end;

procedure TPayableLit_Check.Excel1Click(Sender: TObject);
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

end.
