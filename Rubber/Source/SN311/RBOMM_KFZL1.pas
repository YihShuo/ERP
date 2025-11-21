unit RBOMM_KFZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TRBOMM_KFZL = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    KFDHEdit: TEdit;
    KFJCEdit: TEdit;
    gdMain: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1KFDH: TStringField;
    Query1KFJC: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure gdMainDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RBOMM_KFZL: TRBOMM_KFZL;

implementation

uses  main1, RBOMM1;
{$R *.dfm}

procedure TRBOMM_KFZL.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select KFDH,KFJC ');
    SQL.Add('from '+main.LIY_DD+'.dbo.KFZL KFZL ');
    SQL.Add('where KFDH like '''+KFDHEdit.Text+'%''');
    if KFJCEdit.Text<>'' then
    SQL.Add(' and KFJC like ''%'+KFJCEdit.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TRBOMM_KFZL.gdMainDblClick(Sender: TObject);
begin
  if Query1.Active=true then
  begin
     RBOMM.XXZLQry.Edit;
     RBOMM.XXZLQry.FieldByName('KHDH').Value:=Query1.FieldByName('KFDH').Value;
     RBOMM.XXZLQry.FieldByName('KFJC').Value:=Query1.FieldByName('KFJC').Value;
     RBOMM.XXZLQry.Post;
     self.Close;
  end;
end;

procedure TRBOMM_KFZL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TRBOMM_KFZL.FormDestroy(Sender: TObject);
begin
  RBOMM_KFZL:=nil;
end;

end.
