unit BWorker_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TBWorker_Det = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1WorkName: TStringField;
    Query1InDate: TDateTimeField;
    Query1Education: TStringField;
    Query1Sex: TStringField;
    Query1Certificate: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BWorker_Det: TBWorker_Det;

implementation

uses BWorker1;

{$R *.dfm}

procedure TBWorker_Det.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 edit2.SetFocus;
end;

procedure TBWorker_Det.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from RsIndividual ');
    sql.add('where not exists(select certificate from Bworker where BWorker.certificate=RsIndividual.certificate)');
    sql.add('and Rsindividual.certificate like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and workname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by certificate');
    active:=true;
  end;
end;

procedure TBWorker_Det.DBGrid1DblClick(Sender: TObject);
begin
BWorker.Query1.edit;
BWorker.Query1.FieldByName('certificate').Value:=query1.fieldbyname('certificate').Value;
BWorker.Query1.FieldByName('WorkName').Value:=query1.fieldbyname('WorkName').Value;
close;
end;

procedure TBWorker_Det.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid1DblClick(nil);
end;

procedure TBWorker_Det.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.Click;
end;

procedure TBWorker_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TBWorker_Det.FormDestroy(Sender: TObject);
begin
BWorker_Det:=nil;
end;

end.
