unit MatType_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TMatType_Det = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    Query1LBBH: TStringField;
    Query1MEMO: TStringField;
    Query1CMEMO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
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
  MatType_Det: TMatType_Det;

implementation

uses MatType1, main1;

{$R *.dfm}

procedure TMatType_Det.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from CLLBFY ');
    sql.add('where LBBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and XH='+''''+'01'+'''');
    sql.add('      and len(LBBH)>1');
    sql.add('order by LBBH ');
    active:=true;
  end;
end;

procedure TMatType_Det.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
    button1Click(nil);
  end;
end;

procedure TMatType_Det.FormDestroy(Sender: TObject);
begin
MatType_Det:=nil;
end;

procedure TMatType_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TMatType_Det.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with MatType.query1 do
      begin
        edit;
        FieldByName('FYLB').Value:=query1.fieldbyname('LBBH').Value;
        FieldByName('MEMO').Value:=query1.fieldbyname('MEMO').Value;
        FieldByName('CMEMO').Value:=query1.fieldbyname('CMEMO').Value;
        post;
      end;
    close;
  end;
end;

procedure TMatType_Det.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TMatType_Det.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
