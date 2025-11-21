unit Brand1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TBrand = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1kfdh: TStringField;
    Query1kfqm: TStringField;
    Query1kfjc: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Brand: TBrand;

implementation
uses Lab_TestReason1;

{$R *.dfm}

procedure TBrand.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBrand.FormDestroy(Sender: TObject);
begin
  Brand:=nil;
end;

procedure TBrand.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from kfzl');
    sql.add('where kfdh like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and kfjc like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by kfdh');
    active:=true;
  end;
end;

procedure TBrand.DBGrid1DblClick(Sender: TObject);
begin
if query1.RecordCount>0 then
  begin
    with Lab_TestReason.qry1 do
    begin
       edit;
       FieldByName('Brand').Value:=query1.fieldbyname('kfdh').Value;
       FieldByName('kfjc').Value:=query1.fieldbyname('kfjc').Value;
       post;
    end;
    query1.Active:=false;
    close;
  end;
end;

end.
