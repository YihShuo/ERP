unit Module1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables;

type
  TModule = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1MKID: TStringField;
    Query1MKNAME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Module: TModule;

implementation

uses UILanguages1;

{$R *.dfm}

procedure TModule.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MKID, MKNAME FROM BLimit');
    SQL.Add('GROUP BY MKID, MKNAME');
    SQL.Add('ORDER BY MKID');
    Active := true;
  end;
end;

procedure TModule.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TModule.FormDestroy(Sender: TObject);
begin
  Module := Nil;
end;

procedure TModule.DBGridEh1DblClick(Sender: TObject);
begin
  if (UILanguages.PageControl1.ActivePageIndex = 0) then
  begin
    UILanguages.Query1.Edit;
    UILanguages.Query1.FieldByName('MKID').Value := Query1.FieldByName('MKID').AsString;
    UILanguages.Query1.FieldByName('MKNAME').Value := Query1.FieldByName('MKNAME').AsString;
  end
  else if (UILanguages.PageControl1.ActivePageIndex = 1) then
  begin
    UILanguages.Query2.Edit;
    UILanguages.Query2.FieldByName('MKID').Value := Query1.FieldByName('MKID').AsString;
    UILanguages.Query2.FieldByName('MKNAME').Value := Query1.FieldByName('MKNAME').AsString;
  end
  else if (UILanguages.PageControl1.ActivePageIndex = 2) then
  begin
    UILanguages.Query3.Edit;
    UILanguages.Query3.FieldByName('MKID').Value := Query1.FieldByName('MKID').AsString;
    UILanguages.Query3.FieldByName('MKNAME').Value := Query1.FieldByName('MKNAME').AsString;
  end;

  Close;
end;

end.
