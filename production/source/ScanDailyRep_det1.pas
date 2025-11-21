unit ScanDailyRep_det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh,comobj;

type
  TScanDailyRep_det = class(TForm)
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1CARTONBAR: TStringField;
    Query1DDBH: TStringField;
    Query1CARTONNO: TIntegerField;
    Query1XH: TStringField;
    Query1Qty: TIntegerField;
    Query1SB: TStringField;
    Query1CKBH: TStringField;
    Query1KCBH: TStringField;
    Query1INCS: TSmallintField;
    Query1INDATE: TDateTimeField;
    Query1DepName: TStringField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Query1sgw: TFloatField;
    Query1rgw: TFloatField;
    Query1ogw: TFloatField;
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure SetAvgWeigth(SGW,RGW:string);
  end;

var
  ScanDailyRep_det: TScanDailyRep_det;

implementation

uses main1;

{$R *.dfm}

procedure TScanDailyRep_det.Print1Click(Sender: TObject);
begin
PrintDBGrideh1.Preview;
end;

procedure TScanDailyRep_det.Excel1Click(Sender: TObject);
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

procedure TScanDailyRep_det.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TScanDailyRep_det.FormDestroy(Sender: TObject);
begin
ScanDailyRep_det:=nil;
end;

procedure TScanDailyRep_det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.Active:=false;
end;
//傳參數給平均標準重量和入庫重量 直接用Footer Avage功能會有bug 當其中SGW值為NULL值會計算不正確
procedure TScanDailyRep_det.SetAvgWeigth(SGW,RGW:string);
begin
  DBGridEh1.Columns[11].Footers[0].Value:=SGW;
  DBGridEh1.Columns[12].Footers[0].Value:=RGW;
end;
//
procedure TScanDailyRep_det.FormShow(Sender: TObject);
begin
    main.FormLanguage(Pointer(self),self.Name);
end;

end.
