unit LastData_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls;

type
  TLastData_Mat = class(TForm)
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
    procedure DBGridEh1CellClick(Column: TColumnEh);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LastData_Mat: TLastData_Mat;

implementation

uses LastData1;

{$R *.dfm}

procedure TLastData_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLastData_Mat.FormDestroy(Sender: TObject);
begin
  Lastdata_Mat := nil;
end;

procedure TLastData_Mat.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select cldh,zwpm,ywpm,userdate from clzl where left(cldh,2)=''VD''');
    if edit1.text<>'' then
       sql.Add('and cldh like ''%'+Edit1.Text+'%''');
    if edit2.text<>'' then
       sql.Add('and ywpm like ''%'+Edit2.Text+'%''');
    sql.Add('order by userdate desc');
    active:=true;
  end;
end;

procedure TLastData_Mat.DBGridEh1CellClick(Column: TColumnEh);
begin
  //
  with LastData do
  begin
    Query1.Edit;
    Query1.FieldByName('CLBH').Value := LastData_Mat.Query1.FieldByName('CLDH').Value;
    Query1.FieldByName('YWPM').Value := LastData_Mat.Query1.FieldByName('YWPM').Value;
    Query1.FieldByName('ZWPM').Value := LastData_Mat.Query1.FieldByName('ZWPM').Value;
    Query1.Post;
  end;
  Close;
  //
end;

end.
