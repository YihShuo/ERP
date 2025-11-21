unit ModelDepartment_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TModelDepartment_Dep = class(TForm)
    Panel1: TPanel;
    DS1: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    DBGridEh1: TDBGridEh;
    Query1Lean: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowLean();
  end;

var
  ModelDepartment_Dep: TModelDepartment_Dep;

implementation

uses ModelDepartment1, main1;

{$R *.dfm}

procedure TModelDepartment_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TModelDepartment_Dep.FormDestroy(Sender: TObject);
begin
  ModelDepartment_Dep:=nil;
end;

procedure TModelDepartment_Dep.ShowLean();
begin
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select Substring(DepName,1,CHARINDEX(''-'',DepName,4)-1) as ''Lean'' from BDepartment ');
    SQL.Add('where GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('      and GXLB=''A'' ');
    SQL.Add('      and ProYN=1 ');
    SQL.Add('      and CHARINDEX(''-'',DepName,4)>1 ');
    SQL.Add('Group by  Substring(DepName,1,CHARINDEX(''-'',DepName,4)-1) ');
    SQL.Add('order by Substring(DepName,1,CHARINDEX(''-'',DepName,4)-1) ');
    Active:=true;
  end;
end;
procedure TModelDepartment_Dep.FormShow(Sender: TObject);
begin
  ShowLean();
end;

procedure TModelDepartment_Dep.DBGridEh1DblClick(Sender: TObject);
var Article:string;
begin
  if query1.recordcount>0 then
  begin
    with ModelDepartment.qrySCXXDV do
    begin
      while not Eof do
      begin
        Edit;
        if Article='' then Article:=FieldByName('Article').AsString;
        if Article=FieldByName('Article').AsString then
        begin
          FieldByName(ModelDepartment_Dep.Label3.Caption).Value:=query1.fieldbyname('Lean').Value;
          Next;
        end else
        begin
          break;
        end;
      end;
    end;
    close;
  end
end;

procedure TModelDepartment_Dep.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
      DBGridEh1DblClick(nil);
end;

end.
