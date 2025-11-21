unit EquipmentSupplier_Sup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, DBTables;

type
  TEquipmentSupplier_Sup = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1zsdh: TStringField;
    Query1zsywjc: TStringField;
    Query1zsjc: TStringField;
    Query1zsqm: TStringField;
    Query1tybh: TStringField;
    Query1fpdz: TStringField;
    Query1yjdz: TStringField;
    Query1dh: TStringField;
    Query1cz: TStringField;
    Query1fzr: TStringField;
    Query1bb: TStringField;
    Query1llr2: TStringField;
    Query1llr: TStringField;
    Query1dybh: TStringField;
    Query1mark: TStringField;
    Query1TYJH: TStringField;
    Query1yn: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);

    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentSupplier_Sup: TEquipmentSupplier_Sup;

implementation

uses EquipmentSupplier1;

{$R *.dfm}

procedure TEquipmentSupplier_Sup.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select zszl.zsdh,zszl.zsywjc,zszl.zsjc,zszl.zsqm,zszl.tybh,zszl.fpdz,zszl.yjdz,zszl.dh, ');
    sql.add('       zszl.cz,zszl.fzr,zszl.bb,zszl.llr2,zszl.llr,zszl.dybh,zszl.mark,zszl.TYJH,zszl.yn ');
    sql.add('from ZSZL ');
    sql.add('where ZSDH like'''+edit1.Text+'%'' ');
    sql.add('      and ZSYWJC like ''%'+edit2.Text+'%''');
    sql.add('      and isnull(TYJH,'''+'N'+''')<>''Y'' ') ;
    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TEquipmentSupplier_Sup.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with EquipmentSupplier.TSCD_ZSZL do
    begin
        edit;
        fieldbyname('ZSDH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('zsjc_yw').value:=query1.fieldbyname('ZSJC').value;
        fieldbyname('tybh').value:=query1.fieldbyname('tybh').value;
        fieldbyname('fpdz').value:=query1.fieldbyname('fpdz').value;
        fieldbyname('yjdz').value:=query1.fieldbyname('yjdz').value;
        fieldbyname('dh').value:=query1.fieldbyname('dh').value;
        fieldbyname('cz').value:=query1.fieldbyname('cz').value;
        fieldbyname('fzr').value:=query1.fieldbyname('fzr').value;
        fieldbyname('llr').value:=query1.fieldbyname('llr').value;
        fieldbyname('LB1').value:=0;
        fieldbyname('LB2').value:=0;
        fieldbyname('LB3').value:=0;
        fieldbyname('AuthCE').value:=0;
    end;
    query1.Active:=false;
    close;
  end;
end;


procedure TEquipmentSupplier_Sup.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TEquipmentSupplier_Sup.FormDestroy(Sender: TObject);
begin
  EquipmentSupplier_Sup:=nil;
end;

end.
