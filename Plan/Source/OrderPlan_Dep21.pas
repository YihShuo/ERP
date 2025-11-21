unit OrderPlan_Dep21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TOrderPlan_Dep2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    CheckBox1: TCheckBox;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1DepName: TStringField;
    Query1DepMemo: TStringField;
    Query1YN: TStringField;
    Query1GXLB: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderPlan_Dep2: TOrderPlan_Dep2;

implementation

uses main1, OrderPlan1;

{$R *.dfm}

procedure TOrderPlan_Dep2.FormDestroy(Sender: TObject);
begin
  OrderPlan_Dep2:=nil;
end;

procedure TOrderPlan_Dep2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
  Action:=CaFree;
end;

procedure TOrderPlan_Dep2.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select ID,DepName,DepMemo,GXLB,YN from BDepartment');
    sql.add('where ID like '''+edit1.Text+'%'' ');
    sql.add('      and Depname like ''%'+edit2.Text+'%'' ');
    if not Checkbox1.Checked then
    begin
      sql.add('  and GSBH='''+main.edit2.Text+'''');
    end;
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TOrderPlan_Dep2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.setfocus
end;

procedure TOrderPlan_Dep2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TOrderPlan_Dep2.DBGrid1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with OrderPlan do
    begin
      DepID:=query1.fieldbyname('ID').AsString;
      DepNMEdit.text:=query1.fieldbyname('DepName').AsString;
      CBX4.Text:=query1.fieldbyname('GXLB').AsString;
    end;
    close;
  end;
end;

procedure TOrderPlan_Dep2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    DBGrid1Dblclick(nil);
end;

procedure TOrderPlan_Dep2.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
