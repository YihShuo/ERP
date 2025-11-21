unit Replenish_Stamp_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TReplenish_Stamp_Dep = class(TForm)
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
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Replenish_Stamp_Dep: TReplenish_Stamp_Dep;

implementation

uses Replenish_Stamp1, main1;

{$R *.dfm}

procedure TReplenish_Stamp_Dep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TReplenish_Stamp_Dep.FormDestroy(Sender: TObject);
begin
  Replenish_Stamp_Dep:=nil;
end;

procedure TReplenish_Stamp_Dep.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    SQL.clear;
    SQL.Add('select * from BDepartment ');
    SQL.Add('where 1=1 ');
    if Edit1.Text<>'' then
      SQL.Add('and ID like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      SQL.Add('and Depname like ''%'+Edit2.Text+'%'' ');
    SQL.Add('and YN=''1'' ');
    SQL.Add('order by ID');
    active:=true;
  end;
end;

procedure TReplenish_Stamp_Dep.DBGridEh1DblClick(Sender: TObject);
begin
  if Query1.Recordcount>0 then
  begin
    with Replenish_Stamp.BLMas do
      begin
        Edit;
        FieldByName('DepID').Value:=Query1.fieldbyname('ID').Value;
        FieldByName('DepName').Value:=Query1.fieldbyname('DepName').Value;
      end;
    Close;
  end;
end;

procedure TReplenish_Stamp_Dep.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Edit2.setfocus;
end;

procedure TReplenish_Stamp_Dep.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then Button1Click(nil);
end;

procedure TReplenish_Stamp_Dep.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then DBGridEh1DblClick(nil);
end;

procedure TReplenish_Stamp_Dep.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
