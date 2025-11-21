unit OrderCheckOrd_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, PrnDbgeh, Menus,DBGridEhImpExp,ComObj;

type
  TOrderCheckOrd_Det = class(TForm)
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    Query1Ord_Size: TStringField;
    Query1XXCC: TStringField;
    Query1Tot_Qty: TIntegerField;
    Query1C_Qty: TFloatField;
    Query1Z_Qty: TFloatField;
    Query1W_Qty: TFloatField;
    Query1O_Qty: TFloatField;
    Query1S_Qty: TFloatField;
    Query1A_Qty: TFloatField;
    Query1A_Set: TFloatField;
    DataSource1: TDataSource;
    Query1ZLBH: TStringField;
    Query1F_Qty: TFloatField;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Query1B_Qty: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderCheckOrd_Det: TOrderCheckOrd_Det;

implementation

{$R *.dfm}

procedure TOrderCheckOrd_Det.FormDestroy(Sender: TObject);
begin
OrderCheckOrd_Det:=nil;
end;

procedure TOrderCheckOrd_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TOrderCheckOrd_Det.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[DDBH]',query1.FieldByName('ZLBH').asstring]);
end;

procedure TOrderCheckOrd_Det.FormCreate(Sender: TObject);
begin
query1.Active:=true;
end;

procedure TOrderCheckOrd_Det.Print1Click(Sender: TObject);
begin
printDBGrideh1.Preview;
end;

procedure TOrderCheckOrd_Det.Excel1Click(Sender: TObject);
var eclApp,WorkBook,WorkSheet:olevariant;
    i,j:integer;
begin
  if  query1.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
  end;
  try
    WorkBook:=eclApp.workbooks.Add;
    WorkSheet := WorkBook.Worksheets[1];
        
    for   i:=0   to   query1.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
    end;
      query1.First;
      j:=2;
      while   not   query1.Eof   do
        begin
        for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
          end;
          query1.Next;
          inc(j);
        end;
      eclapp.columns.autofit;
      eclApp.Visible:=True;
      showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
