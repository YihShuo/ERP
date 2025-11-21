unit ExtraTotal_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TExtraTotal_CL = class(TForm)
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
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1zwpm: TStringField;
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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraTotal_CL: TExtraTotal_CL;

implementation

uses ExtraTotal1, main1;

{$R *.dfm}

procedure TExtraTotal_CL.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit2.SetFocus;
end;

procedure TExtraTotal_CL.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit3.SetFocus;
end;

procedure TExtraTotal_CL.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
edit4.SetFocus;
end;

procedure TExtraTotal_CL.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
button1.SetFocus;
end;

procedure TExtraTotal_CL.Button1Click(Sender: TObject);
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

procedure TExtraTotal_CL.FormDestroy(Sender: TObject);
begin
  ExtraTotal_CL:=nil;
end;

procedure TExtraTotal_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TExtraTotal_CL.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ExtraTotal.JGDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value; 
    fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    post;
  end;
  ExtraTotal.DBGrid4.Columns[4].ReadOnly:=false;
  showmessage('Succeed.');
end;

procedure TExtraTotal_CL.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1DblClick(nil);
end;

procedure TExtraTotal_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
