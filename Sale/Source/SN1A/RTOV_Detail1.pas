unit RTOV_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh,comobj, Menus;

type
  TRTOV_Detail = class(TForm)
    DBGridEh1: TDBGridEh;
    RTOV_Detail: TQuery;
    DS_RTOV_Detail: TDataSource;
    RTOV_DetailDate: TStringField;
    RTOV_DetailKHPO: TStringField;
    RTOV_DetailC: TIntegerField;
    RTOV_DetailS: TIntegerField;
    RTOV_DetailA: TIntegerField;
    RTOV_DetailI: TIntegerField;
    RTOV_DetailO: TIntegerField;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RTOV_Detail: TRTOV_Detail;

implementation
  uses RTOVData1;

{$R *.dfm}

procedure TRTOV_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRTOV_Detail.FormDestroy(Sender: TObject);
begin
  RTOV_Detail:=nil;
end;

procedure TRTOV_Detail.FormCreate(Sender: TObject);
begin
  RTOV_Detail.Active:=true;
end;

procedure TRTOV_Detail.Excel1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j,k:integer;
begin
  if  RTOV_Detail.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.Cells(1,1):='NO';
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh1.Columns[i].Title.Caption;
      end;
      RTOV_Detail.First;
      j:=2;
      while   not  RTOV_Detail.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j,i+2].NumberFormatLocal:='@';
          eclApp.Cells(j,i+2):=DBGridEh1.Fields[i].Value;
          eclApp.Cells.Cells.Rows[j].font.size:='10';
          eclApp.ActiveSheet.Rows[j].font.name := 'Calibri';
        end;
        RTOV_Detail.Next;
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
end;

end.
