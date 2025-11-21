unit DD_XXZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TDD_XXZL = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edXieXing: TEdit;
    Label2: TLabel;
    edShehao: TEdit;
    Query: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1CC: TStringField;
    Query1Article: TStringField;
    Query1YSSM: TStringField;
    Query1CQDH: TStringField;
    Label3: TLabel;
    ArticleEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QueryClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DD_XXZL: TDD_XXZL;

implementation

uses main1,ImportEx1;

{$R *.dfm}

procedure TDD_XXZL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TDD_XXZL.FormDestroy(Sender: TObject);
begin
  DD_XXZL:=nil;
end;

procedure TDD_XXZL.QueryClick(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select top 100 XXZLS1.XieXing,XXZLS1.SheHao,XXZLS1.CC,XXZL.Article,YSSM,XXZLS1.CQDH from '+main.LIY_DD+'.dbo.XXZLS1 XXZLS1');
    sql.Add('Left join '+main.LIY_DD+'.dbo.XXZL XXZL on XXZL.SheHao=XXZLS1.SheHao and XXZL.XieXing=XXZLS1.XieXing and XXZL.CQDH=XXZLS1.CQDH ');
    sql.Add('where XXZLS1.CQDH='''+main.edit2.text+'''');
    if edXieXing.Text<>'' then
      sql.Add('and XXZLS1.XieXing like '''+edXieXing.Text+'%''');
    if edShehao.Text<> '' then
      sql.Add('and XXZLS1.Shehao like '''+edShehao.Text+'%''');
    if ArticleEdit.Text<>'' then
      sql.Add('and XXZL.Article like ''%'+ArticleEdit.Text+'%'' ');
    active:=true;
  end;
end;

procedure TDD_XXZL.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.RecordCount>0 then
  begin
     ImportEx.Edit1.Text:=Query1.fieldbyname('XieXing').AsString;
     ImportEx.Edit2.Text:=Query1.fieldbyname('Shehao').AsString;
  end;
  DD_XXZL.close;
end;

procedure TDD_XXZL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
