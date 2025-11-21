unit Payable_ACTMA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, PayMentCon1,
  GridsEh, DBGridEh;

type
  TPayable_ACTMA = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    QryBtn: TButton;
    ACTMAQry: TQuery;
    DS: TDataSource;
    ACTMAQryMA001: TStringField;
    ACTMAQryMA003: TStringField;
    ACTMAQryMA004: TStringField;
    DBGridEh1: TDBGridEh;
    procedure QryBtnClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Payable_ACTMA: TPayable_ACTMA;

implementation
   uses  DM3;
{$R *.dfm}

procedure TPayable_ACTMA.QryBtnClick(Sender: TObject);
begin
  with ACTMAQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from ACTMA ');
    SQL.Add('where MA001 like ''%'+Edit1.Text+'%'' ');
    SQL.Add('      and MA003 like ''%'+Edit2.Text+'%'' order by MA001');
    Active:=true;               
  end;
end;

procedure TPayable_ACTMA.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then QryBtn.Click;
end;

procedure TPayable_ACTMA.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then QryBtn.Click;
end;

procedure TPayable_ACTMA.FormCreate(Sender: TObject);
begin
  QryBtn.Click;
end;

procedure TPayable_ACTMA.DBGridEh1DblClick(Sender: TObject);
begin
   PayMentCon.PayMas.Edit;
   PayMentCon.PayMas.FieldByName('KJBH').AsString:=ACTMAQry.fieldByName('MA001').AsString;
   PayMentCon.PayMas.FieldByName('KJNM').AsString:=ACTMAQry.fieldByName('MA003').AsString;
   PayMentCon.PayMas.FieldByName('KJBM').AsString:=ACTMAQry.fieldByName('MA004').AsString;
   PayMentCon.PayMas.Post;
   Close;
end;

end.
