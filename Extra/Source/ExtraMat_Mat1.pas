unit ExtraMat_Mat1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TExtraMat_Mat = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMat_Mat: TExtraMat_Mat;

implementation

uses ExtraMaterial1;

{$R *.dfm}

procedure TExtraMat_Mat.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TExtraMat_Mat.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TExtraMat_Mat.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit4.SetFocus;
end;

procedure TExtraMat_Mat.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1.SetFocus;
end;

procedure TExtraMat_Mat.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.*  ');
    sql.add('from clzl');
    sql.add(' where CLZL.CLDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and CLZL.YWPM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and CLZL.YWPM like ');
    sql.add(''''+'%'+edit3.Text+'%'+''''); 
    sql.add('and CLZL.YWPM like ');
    sql.add(''''+'%'+edit4.Text+'%'+'''');
   { if formatdatetime('yyyy/MM/dd',date)>'2008/03/01' then
      begin
          sql.add('and (CLZL.TYJH is null or CLZL.TYJH='+''''+'N'+''''+')');
      end;  }
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TExtraMat_Mat.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
   DBGrid1DblClick(nil);
end;

procedure TExtraMat_Mat.DBGrid1DblClick(Sender: TObject);
begin
 if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
with ExtraMaterial.JGDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    post;
  end;
ExtraMaterial.DBGrid4.Columns[3].ReadOnly:=false;
showmessage('Succeed.');
end;

procedure TExtraMat_Mat.FormDestroy(Sender: TObject);
begin
ExtraMat_Mat:=nil;
end;

procedure TExtraMat_Mat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
