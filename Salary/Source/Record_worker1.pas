unit Record_worker1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TRecord_worker = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepID: TStringField;
    Query1WorkName: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Record_worker: TRecord_worker;

implementation

uses RecordMed1;

{$R *.dfm}

procedure TRecord_worker.FormClose(Sender: TObject; var Action: TCloseAction);
begin
RecordMed.enabled:=true;
end;

procedure TRecord_worker.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 edit2.SetFocus;
end;

procedure TRecord_worker.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BWorker ');
    sql.add('where BWorker.ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and workname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TRecord_worker.DBGrid1DblClick(Sender: TObject);
begin
RecordMed.QRecMas.edit;
RecordMed.QRecMas.FieldByName('WorkerID').Value:=query1.fieldbyname('ID').Value;
RecordMed.QRecMas.FieldByName('WorkName').Value:=query1.fieldbyname('WorkName').Value; 
RecordMed.QRecMas.FieldByName('DepID').Value:=query1.fieldbyname('DepID').Value;
Close;
end;

procedure TRecord_worker.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid1DblClick(nil);
end;

procedure TRecord_worker.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.Click;
end;

procedure TRecord_worker.FormDestroy(Sender: TObject);
begin
Record_worker:=nil;
end;

end.
