unit ExtraMat_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh,fununit;

type
  TExtraMat_ZS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    DBGridEh1: TDBGridEh;
    Query1BOM_Supplier: TStringField;
    Query1ZSDH_JG: TStringField;
    Query1JG_Supplier: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMat_ZS: TExtraMat_ZS;

implementation

uses ExtraMaterial1, main1;

{$R *.dfm}

procedure TExtraMat_ZS.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select Zszl.zsdh,ZSZL.ZSYWJC,zsqm,ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as JG_Supplier from ZSZL');
    sql.add('Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as ZSYWJC ');
    sql.add('FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_JG and ZSZL_DEV.GSBH='''+main.Edit2.Text+''') ZSZL_DEV on ZSZL.ZSDH=ZSZL_DEV.ZSDH');
    sql.add('where Zszl.zsdh like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and zszl.ZSYWJC like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and isnull(TYJH,''N'')<>''Y'' ') ;
    sql.add('order by Zszl.zsdh');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TExtraMat_ZS.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TExtraMat_ZS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  button1click(nil);
end;

procedure TExtraMat_ZS.FormDestroy(Sender: TObject);
begin
  ExtraMat_ZS:=nil;
end;

procedure TExtraMat_ZS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//action:=Cafree;
end;

procedure TExtraMat_ZS.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with ExtraMaterial.JGMas do
      begin
        edit;
        fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TExtraMat_ZS.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1Dblclick(nil);
end;

procedure TExtraMat_ZS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
