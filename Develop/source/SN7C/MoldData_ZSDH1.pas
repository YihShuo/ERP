unit MoldData_ZSDH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, DB, DBTables;

type
  TMoldData_ZSDH = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1zsdh: TStringField;
    Query1zsjc: TStringField;
    Query1zsywjc: TStringField;
    DataSource1: TDataSource;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MoldData_ZSDH: TMoldData_ZSDH;

implementation
  uses MoldData1;
{$R *.dfm}

procedure TMoldData_ZSDH.FormDestroy(Sender: TObject);
begin
  MoldData_ZSDH:=nil;
end;

procedure TMoldData_ZSDH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMoldData_ZSDH.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select zsdh,zsjc,zsywjc from zszl where 1=1 ');
    if Edit1.text<>'' then
       SQL.Add('and zsdh like ''%'+Edit1.Text+'%''');
    if Edit2.text<>'' then
       SQL.Add('and zsjc like ''%'+Edit2.Text+'%''');
    Active:=true;
  end;
end;

procedure TMoldData_ZSDH.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.Active=false then Exit;
  with MoldData do
  begin
    Query1.Edit;
    Query1.FieldByName('ZSDH').Value := MoldData_ZSDH.Query1.FieldByName('ZSDH').Value;
    Query1.FieldByName('zsywjc').Value := MoldData_ZSDH.Query1.FieldByName('zsywjc').Value;
    Query1.Post
  end;
  Close;
end;

end.
