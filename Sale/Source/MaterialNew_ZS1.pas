unit MaterialNew_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TMaterialNew_ZS = class(TForm)
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialNew_ZS: TMaterialNew_ZS;

implementation

uses MaterialNew1, main1;

{$R *.dfm}

procedure TMaterialNew_ZS.Button1Click(Sender: TObject);
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

procedure TMaterialNew_ZS.DBGridEh1DblClick(Sender: TObject);
begin

  if query1.recordcount>0 then
  begin
    with MaterialNew.query1 do
      begin
        edit;
        fieldbyname('KfdH').value:=query1.fieldbyname('KFDH').value;
        fieldbyname('KFJC').value:=query1.fieldbyname('KFJC').value;
        post;
      end;
  end;
  close;
end;

procedure TMaterialNew_ZS.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGrideh1dblclick(nil);
end;

procedure TMaterialNew_ZS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialNew_ZS.FormDestroy(Sender: TObject);
begin
  materialnew:=nil;
end;

procedure TMaterialNew_ZS.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
