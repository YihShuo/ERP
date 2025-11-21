unit MaterialCost_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, Menus, PrnDbgeh, DB, DBTables,comobj;

type
  TMaterialCost_Dep = class(TForm)
    Query1: TQuery;
    Query1GSBH: TStringField;
    Query1TotACC: TFloatField;
    DS1: TDataSource;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    DBGrid1: TDBGridEh;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1A: TFloatField;
    Query1B: TFloatField;
    Query1C: TFloatField;
    Query1D: TFloatField;
    Query1E: TFloatField;
    Query1F: TFloatField;
    Query1G: TFloatField;
    Query1H: TFloatField;
    Query1I: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialCost_Dep: TMaterialCost_Dep;

implementation

uses main1;

{$R *.dfm}

procedure TMaterialCost_Dep.FormDestroy(Sender: TObject);
begin
  MaterialCost_Dep:=nil;
end;

procedure TMaterialCost_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  action:=cafree;
end;

procedure TMaterialCost_Dep.Query1CalcFields(DataSet: TDataSet);
var N1,N2,N3,N4,N5,N6,N7,N8,N9:real;
begin
  with query1 do
  begin
    N1:= fieldbyname('A').value ;
    N2:= fieldbyname('B').value ;
    N3:= fieldbyname('C').value ;
    N4:= fieldbyname('D').value ;
    N5:= fieldbyname('E').value ;
    N6:= fieldbyname('F').value ;
    N7:= fieldbyname('G').value ;
    N8:= fieldbyname('H').value ;
    N9:= fieldbyname('I').value ;
    fieldbyname('TotACC').value:=N1+N2+N3+N4+N5+N6+N7+N8+N9;
  end;

end;

procedure TMaterialCost_Dep.Print1Click(Sender: TObject);
begin
  printdbgrideh1.Preview;
end;

procedure TMaterialCost_Dep.Excel1Click(Sender: TObject);
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

procedure TMaterialCost_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
