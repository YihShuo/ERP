unit MonthStock_Dep_DB_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls;

type
  TMonthStock_Dep_DB_Dep = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    SB:string;
    { Public declarations }
  end;

var
  MonthStock_Dep_DB_Dep: TMonthStock_Dep_DB_Dep;

implementation
  uses MonthStock_Dep_DB1, main1;
{$R *.dfm}

procedure TMonthStock_Dep_DB_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMonthStock_Dep_DB_Dep.FormDestroy(Sender: TObject);
begin
  MonthStock_Dep_DB_Dep:=nil;
end;

procedure TMonthStock_Dep_DB_Dep.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select ID,DepName,DepMemo,YN from BDepartment');
    sql.add('where ID like '''+edit1.Text+'%'' ');
    sql.add('and Depname like ''%'+edit2.Text+'%'' ');
    sql.add('and YN=''1'' ');
    sql.add('Union all ');
    sql.add('Select ''ZZZZZZZZZZ'',''Stock'',''®w¦s'',''1'' as YN ');
    sql.add('order by ID desc,DepName ');
    active:=true;
  end;
end;

procedure TMonthStock_Dep_DB_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.recordcount>0 then
  begin
    if SB='KCLL_Dep_DB.DepID' then
    begin
      with MonthStock_Dep_DB.DelMas do
      begin
        edit;
        FieldByName('DepID').Value:=query1.fieldbyname('ID').Value;
        FieldByName('DepName').Value:=query1.fieldbyname('DepName').Value;
      end;
    end;
    if SB='KCLL_Dep_DBS.DepID1' then
    begin
      with MonthStock_Dep_DB.DelDet do
      begin
        edit;
        FieldByName('DepID1').Value:=query1.fieldbyname('ID').Value;
        FieldByName('DepName1').Value:=query1.fieldbyname('DepName').Value;
      end;
    end;
    Close;
  end;
end;

procedure TMonthStock_Dep_DB_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(MonthStock_Dep_DB_Dep),MonthStock_Dep_DB_Dep.Name);
end;

procedure TMonthStock_Dep_DB_Dep.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
   DBGridEh1Dblclick(nil);
end;

end.
