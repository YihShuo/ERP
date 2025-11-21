unit ModelRY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TModelRY = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1DDBH: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1BUYNO: TStringField;
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
  ModelRY: TModelRY;

implementation

uses ModelDepartment1, main1;

{$R *.dfm}

procedure TModelRY.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 action:=cafree;
end;

procedure TModelRY.FormDestroy(Sender: TObject);
begin
 ModelRY:=nil;
end;

procedure TModelRY.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select * from DDZL');
    sql.Add('where GSBH='+''''+main.edit2.Text+'''');
    if edit1.Text<>'' then
      sql.Add('and DDBH like '''+edit1.Text+'%''');
    if edit2.Text<>'' then
      sql.Add('and Buyno like '''+edit2.Text+'%''');
    active:=true;
  end;
end;

procedure TModelRY.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ModelDepartment.qrySCXXDV do
    begin
      edit;
      FieldByName('Xiexing').Value:=query1.fieldbyname('Xiexing').Value;
      FieldByName('Shehao').Value:=query1.fieldbyname('Shehao').Value;
    end;
  end;
  close; 
end;

end.
