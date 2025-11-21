unit MatMoSon_M1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TMatMoSon_M = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Label3: TLabel;
    Query1zwpm: TStringField;
    DBGridEh1: TDBGridEh;
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
  MatMoSon_M: TMatMoSon_M;

implementation

uses MatMoSon1, main1;

{$R *.dfm}

procedure TMatMoSon_M.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CLZL ');
    sql.add('where CLDH like '+''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and ZWPM like '+''''+'%'+edit4.text+'%'+'''');
    sql.add('and not exists(select distinct CLDH from CLZHZL where CLZHZL.CLDH=CLZL.CLDH)');
    sql.add('order by CLDH ');
    active:=true;
  end;

end;

procedure TMatMoSon_M.FormDestroy(Sender: TObject);
begin
  MatMoSon_M:=nil;
end;

procedure TMatMoSon_M.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TMatMoSon_M.DBGridEh1DblClick(Sender: TObject);
begin
  if not query1.Active then
  begin
    showmessage('Can not do it.');
    abort;
  end;
  if query1.recordcount=0 then
  begin
    showmessage(' No data.');
    abort;
  end;
  with MatMoSon.ZHMas do
  begin
    edit;
    fieldbyname('CLDH').value:=query1.fieldbyname('CLDH').value; 
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    fieldbyname('USERID').value:=main.edit1.text;
    post;
  end;
  close;
  MatMoSon.BB2.Enabled:=false;
  MatMoSon.BB4.Enabled:=false;
  MatMoSon.ZHDet.CachedUpdates:=true;
  MatMoSon.ZHDet.RequestLive:=true;
  MatMoSon.ZHDet.insert;
end;

procedure TMatMoSon_M.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

procedure TMatMoSon_M.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
