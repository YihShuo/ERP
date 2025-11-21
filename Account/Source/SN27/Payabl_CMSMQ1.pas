unit Payabl_CMSMQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,PayMentCon1,
  GridsEh, DBGridEh;

type
  TPayable_CMSMQ = class(TForm)
    Panel1: TPanel;
    DS: TDataSource;
    CMSMQry: TQuery;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    QryBtn: TButton;
    DBGridEh1: TDBGridEh;
    CMSMQryMQ001: TStringField;
    CMSMQryMQ002: TStringField;
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
  Payable_CMSMQ: TPayable_CMSMQ;

implementation
   uses  DM3;
{$R *.dfm}

procedure TPayable_CMSMQ.QryBtnClick(Sender: TObject);
begin
  with CMSMQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from CMSMQ ');
    SQL.Add('where MQ001 like ''%'+Edit1.Text+'%'' ');
    SQL.Add('      and MQ002 like ''%'+Edit2.Text+'%'' order by MQ001');
    Active:=true;
  end;
end;

procedure TPayable_CMSMQ.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then QryBtn.Click;
end;

procedure TPayable_CMSMQ.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then QryBtn.Click;
end;

procedure TPayable_CMSMQ.FormCreate(Sender: TObject);
begin
  QryBtn.Click;
end;

procedure TPayable_CMSMQ.DBGridEh1DblClick(Sender: TObject);
begin
   PayMentCon.PayMas.Edit;
   PayMentCon.PayMas.FieldByName('PDBH').AsString:=CMSMQry.fieldByName('MQ001').AsString;
   PayMentCon.PayMas.Post;
   Close;
end;

end.



