unit XXZLRuber1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TXXZLRuber = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    SKUEdit: TEdit;
    XieXingEdit: TEdit;
    SheHaoEdit: TEdit;
    gdMain: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1Article: TStringField;
    Query1YSSM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure gdMainDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  XXZLRuber: TXXZLRuber;

implementation
  uses OrderRubber1, main1;
{$R *.dfm}

procedure TXXZLRuber.Button1Click(Sender: TObject);
begin
  if ((XieXingEdit.Text='') and (SheHaoEdit.Text='') and (SKUEdit.Text='')) then
  begin
    showmessage('Please input at least 1 value ');
    abort;
  end;
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select XieXing,SheHao,Article,YSSM from '+main.LIY_DD+'.dbo.XXZL XXZL where 1=1 ');
    if XieXingEdit.Text<>'' then
    SQL.Add('and XieXing like '''+XieXingEdit.Text+'%'' ');
    if SheHaoEdit.Text<>'' then
    SQL.Add('and SheHao like '''+SheHaoEdit.Text+'%'' ');
    if SKUEdit.Text<>'' then
    SQL.Add('and Article like '''+SKUEdit.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TXXZLRuber.gdMainDblClick(Sender: TObject);
begin
  if Query1.Active=true then
  begin
     OrderRubber.DDZLQry.Edit;
     OrderRubber.DDZLQry.FieldByName('XieXing').Value:=Query1.FieldByName('XieXing').Value;
     OrderRubber.DDZLQry.FieldByName('SheHao').Value:=Query1.FieldByName('SheHao').Value;
     OrderRubber.DDZLQry.FieldByName('Article').Value:=Query1.FieldByName('Article').Value;
     OrderRubber.DDZLQry.Post;
     self.Close;
  end;
end;

procedure TXXZLRuber.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TXXZLRuber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TXXZLRuber.FormDestroy(Sender: TObject);
begin
  XXZLRuber:=nil;
end;

end.
