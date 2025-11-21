unit Dep_lean1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TDep_lean = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    DS1: TDataSource;
    Query1sumline: TStringField;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    LeanType:String;
    { Public declarations }
  end;

var
  Dep_lean: TDep_lean;

implementation

uses main1,MonthOutPut1;

{$R *.dfm}

procedure TDep_lean.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDep_lean.FormDestroy(Sender: TObject);
begin
 Dep_lean:=nil;
end;

procedure TDep_lean.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ID,DepName,DepMemo,Sumline from bdepartment');
    sql.Add('where 1=1  ');
    if CheckBox1.Checked=false then
    sql.add('and GSBH='''+main.Edit2.Text+''' and GXLB=''A'' and Sumline is not null and ProYN=1 ');
    if edit1.Text<>'' then
    begin
      sql.add(' and ID like ''' + edit1.Text + '%' + '''');
    end;
    if edit2.Text<>'' then
    begin
      sql.add('and Depname like ');
      sql.add('''' + '%' + edit2.Text + '%' + '''');
    end;
    active:=true;
  end;
end;

procedure TDep_lean.DBGrid1DblClick(Sender: TObject);
begin
   if query1.recordcount > 0 then
   begin
    if LeanType = 'Sample Room' then
    begin
      MonthOutPut.editPM.Text := query1.fieldbyname('Sumline').Value;
    end;
    if LeanType = 'Baby Lean' then
    begin
      MonthOutPut.editBB.Text := query1.fieldbyname('Sumline').Value;
    end;
   end;
   Close;
end;

end.
