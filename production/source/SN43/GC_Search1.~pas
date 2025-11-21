unit GC_Search1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, DB, DBTables, Grids, DBGrids, Mask, DBCtrlsEh,
  DBLookupEh, StdCtrls, DBCtrls, ExtCtrls;

type
  TGC_Search = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBText1: TDBText;
    Edit1: TEdit;
    CB1: TDBLookupComboboxEh;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Button1: TButton;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2DLNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GC_Search: TGC_Search;

implementation

{$R *.dfm}

procedure TGC_Search.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TGC_Search.FormDestroy(Sender: TObject);
begin
  GC_Search:=Nil;
end;

procedure TGC_Search.Edit1Change(Sender: TObject);
begin
 with Query1 do
  begin
   active:=false;
   sql.Clear;
   sql.add ('SELECT DISTINCT bwzl.ywsm,CutDispatchSS_GC.bwbh FROM CutDispatchSS_GC');
   sql.add ('left join bwzl on CutDispatchSS_GC.bwbh=bwzl.bwdh');
   sql.add ('where 1 = 1');
    if edit1.text<>'' then
   sql.add ('And ZLBH like ''%'+Edit1.text+'%''');
   if CB1.Text<>'' then
   sql.add ('And BWBH like '+''''+CB1.Text+'%'+''' ');
   sql.add ('Order by BWBH');
   active:=true;
   CB1.Enabled:=True;
  end;
end;

procedure TGC_Search.Button1Click(Sender: TObject);
begin
 with Query2 do
  begin
   active:=false;
   sql.Clear;
   sql.add ('SELECT DISTINCT DLNO FROM CutDispatchSS_GC');
   sql.add ('where 1 = 1');
    if edit1.text<>'' then
   sql.add ('And ZLBH like ''%'+Edit1.text+'%''');
   if CB1.Text<>'' then
   sql.add ('And BWBH like '+''''+CB1.Text+'%'+''' ');
   sql.add ('Order by DLNO');
   active:=true;
  end;
end;

end.
