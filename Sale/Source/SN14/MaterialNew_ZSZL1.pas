unit MaterialNew_ZSZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TMaterialNew_ZSZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSDH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1ZSQM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialNew_ZSZL: TMaterialNew_ZSZL;

implementation
uses MaterialNew1, main1;
{$R *.dfm}

procedure TMaterialNew_ZSZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TMaterialNew_ZSZL.FormDestroy(Sender: TObject);
begin
  MaterialNew_ZSZL:=nil;
end;

procedure TMaterialNew_ZSZL.Button1Click(Sender: TObject);
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

procedure TMaterialNew_ZSZL.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with MaterialNew.query1 do
    begin
        edit;
        fieldbyname('ZSDH').value:=query1.fieldbyname('ZSDH').value;
        fieldbyname('ZSYWJC').value:=query1.fieldbyname('ZSYWJC').value;
        post;
    end;
  end;
  close;
end;

procedure TMaterialNew_ZSZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TMaterialNew_ZSZL.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGrideh1dblclick(nil);
end;

end.
