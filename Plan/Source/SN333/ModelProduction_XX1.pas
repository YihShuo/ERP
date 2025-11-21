unit ModelProduction_XX1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TModelProduction_XX = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1XieMing: TStringField;
    DBGridEh1: TDBGridEh;
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
  ModelProduction_XX: TModelProduction_XX;

implementation

uses ModelProduction1;

{$R *.dfm}

procedure TModelProduction_XX.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TModelProduction_XX.FormDestroy(Sender: TObject);
begin
  ModelProduction_XX:=nil;
end;

procedure TModelProduction_XX.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from xxzl where 1=1');
    if edit1.Text<>'' then
      sql.Add('and Xiexing like '''+edit1.Text+'%''');
    if edit2.Text<>'' then
      sql.Add('and Shehao like '''+edit2.Text+'%''');
    if edit3.Text<>'' then
      sql.Add('and Article like '''+edit3.Text+'%''');
    active:=true;
  end;
end;

procedure TModelProduction_XX.DBGrid1DblClick(Sender: TObject);
begin
 if query1.recordcount>0 then
  begin
    with ModelProduction.qrySCXXLN do
    begin
      edit;
      FieldByName('XieXing').Value:=query1.fieldbyname('XieXing').Value;
      FieldByName('Shehao').Value:=query1.fieldbyname('Shehao').Value;
      FieldByName('Article').Value:=query1.fieldbyname('Article').Value;
      FieldByName('XieMing').Value:=query1.fieldbyname('XieMing').Value;
      post;
    end;
    close;
  end;
end;

end.
