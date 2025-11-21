unit ScanReturnRep_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh,comobj;

type
  TScanReturnRep_Det = class(TForm)
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    Query1CARTONBAR: TStringField;
    Query1DDBH: TStringField;
    Query1CARTONNO: TIntegerField;
    Query1XH: TStringField;
    Query1Qty: TIntegerField;
    Query1SB: TStringField;
    Query1CKBH: TStringField;
    Query1DepName: TStringField;
    Query1KCBH: TStringField;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Query1OUTCS: TSmallintField;
    Query1OUTDATE: TDateTimeField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanReturnRep_Det: TScanReturnRep_Det;

implementation

uses main1, ScanReturnRep1;

{$R *.dfm}

procedure TScanReturnRep_Det.FormDestroy(Sender: TObject);
begin
  ScanReturnRep_Det:=nil;
end;

procedure TScanReturnRep_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;

end;

procedure TScanReturnRep_Det.Print1Click(Sender: TObject);
begin
  PrintDBGrideh1.Preview;
end;

procedure TScanReturnRep_Det.Excel1Click(Sender: TObject);
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

procedure TScanReturnRep_Det.FormCreate(Sender: TObject);
begin
  Query1.Active:=true;
end;

procedure TScanReturnRep_Det.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
