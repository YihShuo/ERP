unit Apply_Purchase_Printing_Mold_DepName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TApply_Purchase_Printing_Mold_DepName = class(TForm)
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
  Apply_Purchase_Printing_Mold_DepName: TApply_Purchase_Printing_Mold_DepName;

implementation

uses Apply_Purchase_Printing_Mold1;

{$R *.dfm}

procedure TApply_Purchase_Printing_Mold_DepName.Button1Click(
  Sender: TObject);
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

procedure TApply_Purchase_Printing_Mold_DepName.FormDestroy(
  Sender: TObject);
begin
  Apply_Purchase_Printing_Mold_DepName:=nil;
end;

procedure TApply_Purchase_Printing_Mold_DepName.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TApply_Purchase_Printing_Mold_DepName.DBGridEh1DblClick(
  Sender: TObject);
begin
  with Apply_Purchase_Printing_Mold.SGMas do
  begin
    edit;
    FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
    FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
  end;
  close;
end;

end.
