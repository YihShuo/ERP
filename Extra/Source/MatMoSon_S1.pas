unit MatMoSon_S1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TMatMoSon_S = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit4: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1zwpm: TStringField;
    Query1dwbh: TStringField;
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
  MatMoSon_S: TMatMoSon_S;

implementation

uses MatMoSon1, main1;

{$R *.dfm}

procedure TMatMoSon_S.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CLZL ');
    sql.add('where CLDH like '+''''+edit1.Text+'%'+'''');
    sql.add('and YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('and ZWPM like '+''''+'%'+edit4.text+'%'+'''');  
    sql.add('order by CLDH ');
    active:=true;
  end;
end;

procedure TMatMoSon_S.FormDestroy(Sender: TObject);
begin
  MatMoSon_S:=nil;
end;

procedure TMatMoSon_S.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TMatMoSon_S.DBGridEh1DblClick(Sender: TObject);
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
  with MatMoSon.ZHDet do
  begin
    edit;
    fieldbyname('CLDH').value:=MatMoSon.ZHMas.fieldbyname('CLDH').value;
    fieldbyname('CLDH1').value:=query1.fieldbyname('CLDH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('ZWPM').value:=query1.fieldbyname('ZWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value; 
    fieldbyname('CCQ').value:=''  ;
    fieldbyname('USERDate').value:=date;
    fieldbyname('USERID').value:=main.edit1.Text;
    fieldbyname('YN').value:='2';
    post;
  end;
  close;
end;

procedure TMatMoSon_S.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
  DBGridEh1dblclick(nil);
end;

procedure TMatMoSon_S.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
