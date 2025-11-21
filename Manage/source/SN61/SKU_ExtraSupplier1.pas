unit SKU_ExtraSupplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls;

type
  TSKU_ExtraSupplier = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    DBGrid1: TDBGrid;
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
  SKU_ExtraSupplier: TSKU_ExtraSupplier;

implementation

uses SKU_ExtraCost1;

{$R *.dfm}

procedure TSKU_ExtraSupplier.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TSKU_ExtraSupplier.FormDestroy(Sender: TObject);
begin
  SKU_ExtraSupplier:=nil;
end;

procedure TSKU_ExtraSupplier.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSDH,ZSYWJC,ZSQM from ZSZL where ZSDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and ZSYWJC like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and YN='+''''+'2'+'''');
    active:=true;
  end;
end;

procedure TSKU_ExtraSupplier.DBGrid1DblClick(Sender: TObject);
begin
  if Query1.recordcount>0 then
  begin
    with SKU_ExtraCost.ExtraVN do
    begin
        edit;
        fieldbyname('CSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
        Post;
    end;
    query1.Active:=false;
    close;
  end;
end;

end.
