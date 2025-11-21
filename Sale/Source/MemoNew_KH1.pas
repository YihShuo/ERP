unit MemoNew_KH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TMemoNew_KH = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1kfdh: TStringField;
    Query1kfjc: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MemoNew_KH: TMemoNew_KH;

implementation

uses MemoNew1, main1;

{$R *.dfm}

procedure TMemoNew_KH.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from KFZL ');
    sql.add('where KFJC like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('order by KFDH ');
    active:=true;
  end;
end;

procedure TMemoNew_KH.DBGridEh1DblClick(Sender: TObject);
begin
if query1.recordcount>0 then
  begin
    with MemoNew.query1 do
      begin
        edit;
        fieldbyname('KHBH').value:=query1.fieldbyname('KFDH').value;
        fieldbyname('KFJC').value:=query1.fieldbyname('KFJC').value;
        post;
      end;
  end;
close;
end;

procedure TMemoNew_KH.DBGridEh1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  DBGrideh1dblclick(nil);
end;

procedure TMemoNew_KH.FormDestroy(Sender: TObject);
begin
memonew_KH:=nil;
end;

procedure TMemoNew_KH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMemoNew_KH.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
