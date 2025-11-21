unit AdjustDeliver_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TAdjustDeliver_CL = class(TForm)
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
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdjustDeliver_CL: TAdjustDeliver_CL;

implementation

uses AdjustDeliver1;

{$R *.dfm}

procedure TAdjustDeliver_CL.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin

if key=#13 then
   DBGrid1DblClick(nil);
end;

procedure TAdjustDeliver_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit3.SetFocus;
end;

procedure TAdjustDeliver_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit4.SetFocus;
end;

procedure TAdjustDeliver_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
button1.SetFocus;
end;

procedure TAdjustDeliver_CL.Button1Click(Sender: TObject);
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
    sql.add('and (CLZL.TYJH is null or CLZL.TYJH='+''''+'N'+''''+')');
    sql.add('order by CLZL.CLDH');
    active:=true;
  end;
end;

procedure TAdjustDeliver_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit2.SetFocus;
end;

procedure TAdjustDeliver_CL.DBGrid1DblClick(Sender: TObject);
begin

 if (not query1.Active) then
  begin
    abort;
  end;
if (Query1.recordcount<1) then
  begin
    abort;
  end;
with AdjustDeliver.DelDet do
  begin
    edit;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    post;
  end;
showmessage('Succeed.');
end;

procedure TAdjustDeliver_CL.FormDestroy(Sender: TObject);
begin

AdjustDeliver_CL:=nil;
end;

procedure TAdjustDeliver_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
