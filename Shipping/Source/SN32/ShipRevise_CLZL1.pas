unit ShipRevise_CLZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TShipRevise_CLZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    Query1tyjh: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShipRevise_CLZL: TShipRevise_CLZL;

implementation
  uses ShipReviseUsage1, main1;
{$R *.dfm}

procedure TShipRevise_CLZL.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.CLLB,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.TYJH from CLZL  ');
    sql.add('where CLZL.CLDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.ZWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('order by CLZL.CLDH desc');
    active:=true;
  end;
end;

procedure TShipRevise_CLZL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ShipReviseUsage.Query1 do
  begin
    Edit;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('CLMC').value:=query1.fieldbyname('ZWPM').value;
    //fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    post;
  end;
  Close;
end;

procedure TShipRevise_CLZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
