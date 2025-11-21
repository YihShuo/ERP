unit ApplyMoldDepName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TApplyMoldDepName = class(TForm)
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
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ApplyMoldDepName: TApplyMoldDepName;

implementation

uses main1, ApplyMold1;

{$R *.dfm}

procedure TApplyMoldDepName.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select ID,DepName,DepMemo from BDepartment');
    sql.add('where ID like '''+edit1.Text+'%''');
    sql.add('and Depname like ''%'+edit2.Text+'%''');
    sql.add('and ID = SGDH_ID');
    sql.add('order by DepMemo,ID ');
    active:=true;
  end;
end;

procedure TApplyMoldDepName.FormDestroy(Sender: TObject);
begin
  ApplyMoldDepName:=nil;
end;

procedure TApplyMoldDepName.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TApplyMoldDepName.DBGridEh1DblClick(Sender: TObject);
begin
  with ApplyMold.SGMas do
  begin
    edit;
    FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
    FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
  end;
  close;
end;

end.
