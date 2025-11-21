unit SonMaterial1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBTables, Grids, DBGrids, ExtCtrls;

type
  TSonMaterial = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label1: TLabel;
    Query1cldh1: TStringField;
    Query1ccq: TStringField;
    Query1ccq1: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SonMaterial: TSonMaterial;

implementation

{$R *.dfm}

procedure TSonMaterial.Button1Click(Sender: TObject);
begin
query1.Active:=false;
query1.Params.Items[0].Value:=edit1.Text;
query1.Active:=true;

end;

procedure TSonMaterial.FormDestroy(Sender: TObject);
begin
SonMaterial:=nil;
end;

procedure TSonMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
