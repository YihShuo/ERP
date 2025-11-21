unit Revise_Supp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TRevise_Supp = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSJC: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Revise_Supp: TRevise_Supp;

implementation
  uses ReviseUsage1;
{$R *.dfm}

procedure TRevise_Supp.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select zsdh,zsywjc,zsjc From zszl  ');
    sql.add('Where 1=1 ');
    if edit1.Text <> '' then
      sql.Add('    and zsdh like '''+edit1.Text+'%'' ');
    if edit2.Text <> '' then
      sql.add('    and zsywjc like ''%'+edit2.Text+'%'' ');
    sql.add('Order by zsdh');
    active:=true;
  end;
end;

procedure TRevise_Supp.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ReviseUsage.Query1 do
  begin
    Edit;
    fieldbyname('CSBH').value:=query1.fieldbyname('zsdh').value;
    fieldbyname('ZSMC').value:=query1.fieldbyname('zsywjc').value;
    post;
  end;
  Close;
end;

procedure TRevise_Supp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TRevise_Supp.FormDestroy(Sender: TObject);
begin
  Revise_Supp:=nil;
end;

end.
