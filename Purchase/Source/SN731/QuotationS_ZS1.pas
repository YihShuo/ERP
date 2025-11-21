unit QuotationS_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TQuotationS_ZS = class(TForm)
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
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuotationS_ZS: TQuotationS_ZS;

implementation

uses QuotationS1, SuppNew1;

{$R *.dfm}

procedure TQuotationS_ZS.Button1Click(Sender: TObject);
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
    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TQuotationS_ZS.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TQuotationS_ZS.DBGrid1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with QuotationS.BJMas do
      begin
        edit;
        fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
      //  showmessage('Succeed.');
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TQuotationS_ZS.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrid1Dblclick(nil);
end;

procedure TQuotationS_ZS.Button2Click(Sender: TObject);
begin
close;
SuppNew:=TSuppNew.create(self);
SuppNew.show;
end;

procedure TQuotationS_ZS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TQuotationS_ZS.FormDestroy(Sender: TObject);
begin
QuotationS_ZS:=nil;
end;

procedure TQuotationS_ZS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

action:=cafree;
end;

end.
