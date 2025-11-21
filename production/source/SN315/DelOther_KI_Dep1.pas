unit DelOther_KI_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TDelOther_KI_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelOther_KI_Dep: TDelOther_KI_Dep;

implementation

uses main1, DelOther_KI1;

{$R *.dfm}

procedure TDelOther_KI_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDelOther_KI_Dep.FormDestroy(Sender: TObject);
begin
  DelOther_KI_Dep:=nil;
end;

procedure TDelOther_KI_Dep.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from BDepartment');
    sql.add('where ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and Depname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('and GSBH='+''''+main.edit2.Text+'''');  
    sql.add('and YN='+''''+'1'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TDelOther_KI_Dep.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then Edit2.SetFocus;
end;

procedure TDelOther_KI_Dep.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then Button1Click(nil);
end;

procedure TDelOther_KI_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with DelOther_KI.DelMas do
      begin
        edit;
        FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
        FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
      end;
    close;
  end;
end;

procedure TDelOther_KI_Dep.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGridEh1DblClick(nil);
end;

procedure TDelOther_KI_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
