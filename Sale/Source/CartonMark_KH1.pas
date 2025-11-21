unit CartonMark_KH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TCartonMark_KH = class(TForm)
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
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CartonMark_KH: TCartonMark_KH;

implementation

uses CartonMark1, main1;

{$R *.dfm}

procedure TCartonMark_KH.Button1Click(Sender: TObject);
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

procedure TCartonMark_KH.DBGridEh1DblClick(Sender: TObject);
begin

  if query1.recordcount>0 then
  begin
    with cartonMark.query1 do
    begin
      edit;
      fieldbyname('KHBH').value:=query1.fieldbyname('KFDH').value;
      fieldbyname('KFJC').value:=query1.fieldbyname('KFJC').value;
      post;
    end;
  end;
  close;
end;

procedure TCartonMark_KH.FormDestroy(Sender: TObject);
begin
  cartonmark_KH:=nil;
end;

procedure TCartonMark_KH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCartonMark_KH.FormShow(Sender: TObject);
begin
   main.FormLanguage(Pointer(self),self.Name);
end;

end.
