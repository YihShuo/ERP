unit MoldData_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls;

type
  TMoldData_Mat = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1cldh: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1userdate: TDateTimeField;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MoldData_Mat: TMoldData_Mat;

implementation

uses MoldData1;

{$R *.dfm}

procedure TMoldData_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMoldData_Mat.FormDestroy(Sender: TObject);
begin
  MoldData_Mat := nil;
end;

procedure TMoldData_Mat.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT cldh, zwpm, ywpm, UserDate FROM clzl WHERE (YN=2 or YN=3)');
    if (Edit1.Text <> '') then
      SQL.Add('AND cldh LIKE ''%' + Edit1.Text + '%''');
    if (Edit2.Text <> '') then
      SQL.Add('AND ywpm LIKE ''%' + Edit2.Text + '%''');
    SQL.Add('ORDER BY UserDate DESC');
    Active := true;
  end;
end;

procedure TMoldData_Mat.DBGridEh1DblClick(Sender: TObject);
begin
  //
  if Query1.Active=false then Exit;
  with MoldData do
  begin
    Query1.Edit;
    Query1.FieldByName('CLBH').Value := MoldData_Mat.Query1.FieldByName('cldh').Value;
    Query1.FieldByName('YWPM').Value := MoldData_Mat.Query1.FieldByName('YWPM').Value;
    Query1.FieldByName('ZWPM').Value := MoldData_Mat.Query1.FieldByName('ZWPM').Value;
    Query1.Post;
  end;
  Close;
end;

end.
