unit ManufacturerChoose1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, StdCtrls, ExtCtrls;

type
  TManufacturerChoose = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Panel2: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ManufacturerChoose: TManufacturerChoose;

implementation

uses materialCompany1;

{$R *.dfm}

procedure TManufacturerChoose.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select zsdh,zsjc,zsywjc from zszl where YN=''1''');
    if edit1.text<>'' then
      sql.add('and zsjc like '+''''+'%'+edit1.Text+'%'+'''');
    if edit2.text<>'' then
      sql.add('and zsdh like '+''''+'%'+edit2.Text+'%'+'''');
    active:=true;
  end;
end;

procedure TManufacturerChoose.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    if MaterialCompany.CSBH_Flag=1 then
      MaterialCompany.leftall.text:= query1.fieldbyname('zsdh').value ;
    if MaterialCompany.CSBH_Flag=2 then
      MaterialCompany.rightAll.text:= query1.fieldbyname('zsdh').value ;
    if MaterialCompany.CSBH_Flag=3 then
      MaterialCompany.leftalla.text:= query1.fieldbyname('zsdh').value ;
    if MaterialCompany.CSBH_Flag=4 then
      MaterialCompany.leftallson.text:= query1.fieldbyname('zsdh').value ;
    query1.Active:=false;
    close;
  end;
end;



end.
