unit ReplenishDaily_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh,comobj;

type
  TReplenishDaily_Det = class(TForm)
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    Query1GSBH: TStringField;
    Query1DepName: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TFloatField;
    Query1ACCUS: TFloatField;
    Query1YYBH: TStringField;
    Query1LLNO: TStringField;
    Query1ZWPM: TStringField;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1DWBH: TStringField;
    Query1BLSB: TStringField;
    Query1SCBH: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishDaily_Det: TReplenishDaily_Det;

implementation

uses main1;

{$R *.dfm}

procedure TReplenishDaily_Det.FormDestroy(Sender: TObject);
begin
  ReplenishDaily_Det:=nil;
end;

procedure TReplenishDaily_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReplenishDaily_Det.Print1Click(Sender: TObject);
begin
  PrintDbgrideh1.Preview;
end;

procedure TReplenishDaily_Det.Excel1Click(Sender: TObject);
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

procedure TReplenishDaily_Det.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('BLSB').value='Y'   then
  begin
    dbgrideh1.canvas.font.Color:=clred;
  end;
end;

procedure TReplenishDaily_Det.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
