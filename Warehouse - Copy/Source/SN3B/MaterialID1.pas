unit MaterialID1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TMaterialID = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    Query1YWPM: TStringField;
    Query1CLDH: TStringField;
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
  MaterialID: TMaterialID;

implementation

uses WarehouseKeyInStock1, AccountKeyInStock1;

{$R *.dfm}

procedure TMaterialID.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree
end;

procedure TMaterialID.FormDestroy(Sender: TObject);
begin
  MaterialID:=nil
end;

procedure TMaterialID.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CLZL ');
    sql.add('where 1=1 ');
    if edit1.Text <> '' then
      sql.Add('and CLDH like '''+edit1.Text+'%'' ');
    if edit2.Text <> '' then
      sql.Add('and YWPM like ''%'+edit1.Text+'%'' ');
    active:=true;
  end;
end;

procedure TMaterialID.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    if label3.Caption='N3B' then
    begin
      with WarehouseKeyInStock.Query1 do
      begin
        edit;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      end;
    end;
    if label3.Caption='N3C' then
    begin
      with AccountKeyInStock.Query1 do
      begin
        edit;
        fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
        fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
      end;
    end;
    query1.Active:=false;
    close;
  end;
end;

end.
