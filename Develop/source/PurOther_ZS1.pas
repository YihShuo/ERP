unit PurOther_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls,
  GridsEh, DBGridEh;

type
  TPurOther_ZS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    cda: TDateTimePicker;
    ordercb: TComboBox;
    Label3: TLabel;
    Label19: TLabel;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cdaChange(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure List_MergeSampleOrder();
  public
    { Public declarations }
  end;

var
  PurOther_ZS: TPurOther_ZS;

implementation

uses PurOther1, SuppNew1,FunUnit, main1;

{$R *.dfm}
procedure TPurOther_ZS.List_MergeSampleOrder();
begin
//過濾出合併單

  with PurOther.ypma do
  begin
    active:=false;
    sql.clear;
    sql.add('select ypzlbh from ypzlzl');
    sql.add('where insdate >='+''''+datetostr(cda.date)+'''');
    sql.add(' and gsbh='+''''+main.Edit2.text+'''');
    sql.add(' and pd='+''''+'P'+'''');
    sql.add('order by ypzlbh desc');
    active:=true;
  end;
  PurOther.ypma.First;
  ordercb.Items.Clear;
  ordercb.Items.add('');
  while not PurOther.ypma.Eof do
  begin
    ordercb.Items.Add(PurOther.ypma.FieldByName('ypzlbh').Value);
    PurOther.ypma.Next;
  end;
  if ordercb.Items.Count>0 then ordercb.ItemIndex:=0;
  PurOther.ypma.active:=false;
end;
procedure TPurOther_ZS.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSDH,ZSYWJC,ZSQM from ZSZL ');
    sql.add('where ZSDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and ZSYWJC like '+''''+'%'+edit2.Text+'%'+'''');
//    sql.add('      and YN='+''''+'2'+'''');
    sql.add('      and isnull(TYJH,'+''''+'N'+''''+')<>'+''''+'Y'+'''')  ;
    if ordercb.Text <> '' then
    begin
      sql.add('   and zsdh in (');
      sql.add('     select csbh from ypzlzls1 ');
      sql.add('       where ypzlbh='+''''+ordercb.Text+'''');
      sql.add('       )');
    end;

    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TPurOther_ZS.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.setfocus
end;

procedure TPurOther_ZS.Button2Click(Sender: TObject);
begin
{close;
SuppNew:=TSuppNew.create(self);
SuppNew.show;  }
end;

procedure TPurOther_ZS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TPurOther_ZS.FormDestroy(Sender: TObject);
begin
PurOther_ZS:=nil;
end;

procedure TPurOther_ZS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
query1.active:=false;
end;

procedure TPurOther_ZS.FormCreate(Sender: TObject);
begin
  //載入樣品單
  cda.Date:=now-14;
  List_MergeSampleOrder();
end;

procedure TPurOther_ZS.cdaChange(Sender: TObject);
begin
  List_MergeSampleOrder();//樣品單重新更新List
end;

procedure TPurOther_ZS.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with PurOther.CGMas do
      begin
        edit;
        fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
      //  showmessage('Succeed.');
      end;
    query1.Active:=false;
    close;
  end;
end;

procedure TPurOther_ZS.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
