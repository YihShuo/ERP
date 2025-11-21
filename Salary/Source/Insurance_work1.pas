unit Insurance_work1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TInsurance_work = class(TForm)
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
    Query1Sex: TStringField;
    Query1Education: TStringField;
    Query1InDate: TDateTimeField;
    Query1Certificate: TStringField;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Insurance_work: TInsurance_work;

implementation

uses Insurance1;

{$R *.dfm}

procedure TInsurance_work.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 edit2.SetFocus;
end;

procedure TInsurance_work.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from RsIndividual ');
    sql.add('where not exists(select ID from Bworker where BWorker.ID=RsIndividual.ID)');
    sql.add('and Rsindividual.ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and workname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TInsurance_work.DBGrid1DblClick(Sender: TObject);
begin
Insurance.Query1.edit;
Insurance.Query1.FieldByName('ID').Value:=query1.fieldbyname('ID').Value;
Insurance.Query1.FieldByName('WorkName').Value:=query1.fieldbyname('WorkName').Value;
close;
end;

procedure TInsurance_work.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.Click;
end;

procedure TInsurance_work.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid1DblClick(nil);
end;

procedure TInsurance_work.FormDestroy(Sender: TObject);
begin
insurance_work:=nil;
end;

procedure TInsurance_work.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
