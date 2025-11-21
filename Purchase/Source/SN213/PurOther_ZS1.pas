unit PurOther_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

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
    chkTW: TCheckBox;
    Query1YN: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
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
  PurOther_ZS: TPurOther_ZS;

implementation

uses PurOther1, SuppNew1, FunUnit, main1;

{$R *.dfm}

procedure TPurOther_ZS.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSDH,ZSYWJC,ZSQM, case when YN=1 then ''BOM'' else ''KT'' end as YN from ZSZL ');
    sql.add('where ZSDH like'+''''+edit1.Text+'%'+'''');
    sql.add('      and ZSYWJC like '+''''+'%'+edit2.Text+'%'+'''');
    if not chkTW.Checked then
    begin
      sql.add('      and YN='+''''+'2'+'''');
    end;
    if chkTW.Checked then
    begin
      sql.add('      and YN='+''''+'1'+'''');
    end;
    sql.add('      and isnull(TYJH,'+''''+'N'+''''+')<>'+''''+'Y'+'''')  ;
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
  DBGridEh1Dblclick(nil);
end;

procedure TPurOther_ZS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
