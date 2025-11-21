unit ThreadBOM_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TThreadBOM_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1cllb: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    DBGridEh1: TDBGridEh;
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ThreadBOM_CL: TThreadBOM_CL;

implementation

uses ThreadBOM1;

{$R *.dfm}

procedure TThreadBOM_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit2.SetFocus;
end;

procedure TThreadBOM_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TThreadBOM_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit4.SetFocus;
end;

procedure TThreadBOM_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1Click(nil);
end;

procedure TThreadBOM_CL.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLDH,CLLB,YWPM,DWBH from CLZL where CLDH like');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit3.Text+'%'+''''); 
    sql.add('and YWPM like ');
    sql.add(''''+'%'+edit4.Text+'%'+'''');  
    sql.add('and (TYJH is null or TYJH='+''''+'N'+''''+')');
    sql.add('order by CLDH');
    active:=true;
  end;
end;

procedure TThreadBOM_CL.FormDestroy(Sender: TObject);
begin
  ThreadBOM_CL:=nil;
end;

procedure TThreadBOM_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TThreadBOM_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ThreadBOM.XXZLSVN do
  begin
    edit;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
  end;
  close;
end;

procedure TThreadBOM_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   DBGridEh1DblClick(nil);
end;

end.
