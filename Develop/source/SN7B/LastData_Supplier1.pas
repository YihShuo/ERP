unit LastData_Supplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls;

type
  TLastData_Supplier = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1zsdh: TStringField;
    Query1zsjc: TStringField;
    Query1zsywjc: TStringField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
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
  LastData_Supplier: TLastData_Supplier;

implementation

uses LastData1;

{$R *.dfm}

procedure TLastData_Supplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLastData_Supplier.FormDestroy(Sender: TObject);
begin
  Lastdata_Supplier := nil;
end;

procedure TLastData_Supplier.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select zsdh,zsjc,zsywjc from zszl where 1=1 ');
    if edit1.text<>'' then
       sql.Add('and zsdh like ''%'+edit1.Text+'%''');
    if edit2.text<>'' then
       sql.Add('and zsjc like ''%'+edit2.Text+'%''');
    active:=true;
  end;
end;

procedure TLastData_Supplier.DBGridEh1DblClick(Sender: TObject);
begin
   with LastData do
   begin
     Query1.Edit;
     Query1.FieldByName('ZSDH').Value := LastData_Supplier.query1.FieldByName('ZSDH').Value;
     Query1.FieldByName('zsywjc').Value := LastData_Supplier.query1.FieldByName('zsywjc').Value;
     Query1.Post;
   end;
   Close;
end;

end.
