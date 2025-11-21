unit DelTPM_Maintenance1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TDelTPM_Maintenance = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1USERID: TStringField;
    Query1USERNAME: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelTPM_Maintenance: TDelTPM_Maintenance;

implementation

uses main1, DelTPM1;

{$R *.dfm}

procedure TDelTPM_Maintenance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TDelTPM_Maintenance.FormDestroy(Sender: TObject);
begin
  DelTPM_Maintenance := nil;
end;

procedure TDelTPM_Maintenance.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self), self.Name);
end;

procedure TDelTPM_Maintenance.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.clear;
    SQL.Add('SELECT Busers.USERID, Busers.USERNAME FROM Busers');
    SQL.Add('WHERE USERID LIKE ');
    SQL.Add('''' + edit1.Text + '%' + '''');
    SQL.Add('AND USERNAME LIKE ');
    SQL.Add('''' + '%' + edit2.Text + '%' + '''');
    SQL.Add('ORDER BY USERID');
    Active := true;
  end;
end;

procedure TDelTPM_Maintenance.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount > 0 then
  begin
    with DelTPM.DelMas do
    begin
      Edit;
      FieldByName('MaintenanceID').Value := query1.fieldbyname('USERID').Value;
    end;
    close;
  end;
end;

end.
