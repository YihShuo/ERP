unit RBOMM_CLZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TRBOMM_CLZL = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    CLDHEdit: TEdit;
    YWPMEdit: TEdit;
    gdMain: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1cldh: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure gdMainDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RBOMM_CLZL: TRBOMM_CLZL;

implementation

uses  main1, RBOMM1;
{$R *.dfm}

procedure TRBOMM_CLZL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TRBOMM_CLZL.FormDestroy(Sender: TObject);
begin
  RBOMM_CLZL:=nil;
end;

procedure TRBOMM_CLZL.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CLZL.cldh,CLZL.YWPM,CLZL.ZWPM ');
    SQL.Add('from '+main.LIY_DD+'.dbo.CLZL CLZL ');
    SQL.Add('where cldh like '''+CLDHEdit.Text+'%'' and (cllb=''V'')  ');
    if YWPMEdit.Text<>'' then
    SQL.Add(' and YWPM like ''%'+YWPMEdit.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TRBOMM_CLZL.gdMainDblClick(Sender: TObject);
begin
  if Query1.Active=true then
  begin
     RBOMM.XXZLSQry.Edit;
     RBOMM.XXZLSQry.FieldByName('CLDH').Value:=Query1.FieldByName('CLDH').Value;
     RBOMM.XXZLSQry.FieldByName('YWPM').Value:=Query1.FieldByName('YWPM').Value;
     RBOMM.XXZLSQry.Post;
     self.Close;
  end;
end;

end.
