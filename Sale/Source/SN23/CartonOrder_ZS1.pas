unit CartonOrder_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TCartonOrder_ZS = class(TForm)
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
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure EDIT1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    CartonOrVach:Byte;
    { Public declarations }
  end;

var
  CartonOrder_ZS: TCartonOrder_ZS;

implementation

uses CartonOrder1, main1;

{$R *.dfm}

procedure TCartonOrder_ZS.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select ZSDH,ZSYWJC,ZSQM from ZSZL ');
    sql.add('where ZSDH like'+''''+edit1.Text+'%''');
    sql.add('      and ZSYWJC like ''%'+edit2.Text+'%''');
    sql.add('      and YN=''2''');
    sql.add('      and isnull(TYJH,''N'')<>''Y''');
    sql.add('order by ZSDH');
    active:=true;
  end;
end;

procedure TCartonOrder_ZS.EDIT1KeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 then
    edit2.setfocus
end;

procedure TCartonOrder_ZS.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TCartonOrder_ZS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  query1.active:=false;
end;

procedure TCartonOrder_ZS.DBGridEh1DblClick(Sender: TObject);
begin
  if CartonOrVach=1 then
  begin
    if query1.recordcount>0 then
    begin
      with CartonOrder.CGZL do
      begin
          if recordcount>0 then
          begin
              edit;
              fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
              fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
              post;
          end else
          begin
               insert;
               fieldbyname('ZSBH').value:=query1.fieldbyname('ZSDH').value;
               fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
               post;
          end;
      end;
      query1.Active:=false;
      close;
    end;
  end else   if CartonOrVach=2 then
  begin
    CartonOrder.YWBZPOE.Edit;
    CartonOrder.YWBZPOE.FieldByName('CSBH').Value:=query1.fieldbyname('ZSDH').value;
    CartonOrder.YWBZPOE.FieldByName('ZSYWJC').Value:=query1.fieldbyname('ZSYWJC').value;
    CartonOrder.YWBZPOE.Post;
  end;
end;

procedure TCartonOrder_ZS.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
   DBGridEh1Dblclick(nil);
end;

procedure TCartonOrder_ZS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
