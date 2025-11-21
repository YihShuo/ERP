unit NewEquipmentClassification_Sup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DB, DBTables;

type
  TNewEquipmentClassification_Sup = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    zsdhEdit: TEdit;
    zsjc_ywEdit: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1zsdh: TStringField;
    Query1zsjc_yw: TStringField;
    Query1zsjc_zw: TStringField;
    Query1zsjc_vw: TStringField;
    zsjc_zwEdit: TEdit;
    zsjc_vwEdit: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);

    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewEquipmentClassification_Sup: TNewEquipmentClassification_Sup;

implementation

uses main1,EquipmentClassification1, FunUnit;

{$R *.dfm}

procedure TNewEquipmentClassification_Sup.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select TSCD_ZSZL.zsdh,TSCD_ZSZL.zsjc_yw,TSCD_ZSZL.zsjc_zw,TSCD_ZSZL.zsjc_vw');
    SQL.Add('from TSCD_ZSZL');
    SQL.Add('where TSCD_ZSZL.ZSDH like'''+zsdhEdit.Text+'%''  ');
    if zsjc_ywEdit.Text<>'' then
    SQL.Add('      and TSCD_ZSZL.zsjc_yw like ''%'+zsjc_ywEdit.Text+'%'' ');
    if zsjc_zwEdit.Text<>'' then
    SQL.Add('      and TSCD_ZSZL.zsjc_zw like ''%'+zsjc_zwEdit.Text+'%'' ');
    if zsjc_vwEdit.Text<>'' then
    SQL.Add('      and TSCD_ZSZL.zsjc_vw like ''%'+zsjc_vwEdit.Text+'%'' ');
    SQL.add('order by ZSZL.ZSDH');
    Active:=true;
  end;
end;

procedure TNewEquipmentClassification_Sup.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with Equipment_Classification.TSCD_SB do
    begin
        edit;
        fieldbyname('ZSDH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('zsjc_yw').value:=query1.fieldbyname('zsjc_yw').value;
    end;
    query1.Active:=false;
    close;
  end;
end;


procedure TNewEquipmentClassification_Sup.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TNewEquipmentClassification_Sup.FormDestroy(Sender: TObject);
begin
  NewEquipmentClassification_Sup:=nil;
end;

procedure TNewEquipmentClassification_Sup.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
