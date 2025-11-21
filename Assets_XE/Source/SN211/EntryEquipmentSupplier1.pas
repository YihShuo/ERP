unit EntryEquipmentSupplier1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TEntryEquipmentSupplier = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1zsjc_yw: TStringField;
    Query1zsjc_zw: TStringField;
    Query1zsjc_vw: TStringField;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryEquipmentSupplier: TEntryEquipmentSupplier;

implementation

uses EntryEquipment1;

{$R *.dfm}

procedure TEntryEquipmentSupplier.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select ZSDH,zsjc_yw,zsjc_zw,zsjc_vw ');
    SQL.Add('from TSCD_ZSZL ');
    SQL.Add('where ZSDH like'''+edit1.Text+'%''  ');
    sql.add('      and zsjc_yw like ''%'+edit2.Text+'%''');
    sql.add('      and isnull(TYJH,''N'')<>''Y'' ') ;
    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TEntryEquipmentSupplier.FormDestroy(Sender: TObject);
begin
  EntryEquipmentSupplier:=nil;
end;

procedure TEntryEquipmentSupplier.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with EntryEquipment.EnMas do
    begin
        edit;
        fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSJC_YW').value:=query1.fieldbyname('ZSJC_YW').value;
    end;
    query1.Active:=false;
    close;
  end;
end;

end.
