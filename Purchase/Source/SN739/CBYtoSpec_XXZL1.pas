unit CBYtoSpec_XXZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls;

type
  TCBYtoSpec_XXZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    XieXingEdit: TEdit;
    Button1: TButton;
    SheHaoEdit: TEdit;
    XieMingEdit: TEdit;
    JiJieEdit: TEdit;
    DS1: TDataSource;
    ArticleQry: TQuery;
    ArticleQryXieXing: TStringField;
    ArticleQrySheHao: TStringField;
    ArticleQryXieMing: TStringField;
    ArticleQryYSSM: TStringField;
    ArticleQryJiJie: TStringField;
    ArticleQryArticle: TStringField;
    ArticleQryfd: TStringField;
    DBGridEh1: TDBGridEh;
    Label5: TLabel;
    DevcodeEdit: TEdit;
    Label6: TLabel;
    ArticleEdit: TEdit;
    ArticleQryDevCode: TStringField;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CBYtoSpec_XXZL: TCBYtoSpec_XXZL;

implementation
  uses CBYSizeComparison1, FunUnit;
{$R *.dfm}

procedure TCBYtoSpec_XXZL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TCBYtoSpec_XXZL.FormDestroy(Sender: TObject);
begin
  CBYtoSpec_XXZL:=nil;
end;

procedure TCBYtoSpec_XXZL.Button1Click(Sender: TObject);
begin
  with ArticleQry do
  begin
    Active:=false;
    SQL.clear;
    SQL.Add('select KFXXZL.XieXing,KFXXZL.SheHao,KFXXZL.XieMing,KFXXZL.YSSM,KFXXZL.JiJie,KFXXZL.Article,kfxxzl.FD,KFXXZL.DevCode from KFXXZL ');
    SQL.Add('Left join XXZL on XXZL.XieXing=KFXXZL.XieXing and XXZL.SheHao=KFXXZL.SheHao ');
    SQL.Add('where KFXXZL.XieXing like '''+XieXingEdit.Text+'%'' ');
    SQL.Add('and KFXXZL.SheHao like '''+SheHaoEdit.Text+'%'' ');
    if XieMingEdit.Text<>'' then
    SQL.Add('and KFXXZL.XieMing like ''%'+XieMingEdit.Text+'%'' ');
    if JiJieEdit.Text<>'' then
    SQL.Add('and KFXXZL.jijie like ''%'+JiJieEdit.Text+'%'' ');
    if DevcodeEdit.Text<>'' then
    SQL.Add('and KFXXZL.DevCode like ''%'+DevcodeEdit.Text+'%'' ');
    if ArticleEdit.Text<>'' then
    SQL.Add('and KFXXZL.Article like ''%'+ArticleEdit.Text+'%'' ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TCBYtoSpec_XXZL.DBGridEh1DblClick(Sender: TObject);
begin
    CBYSizeComparison.QColor.Edit;
    CBYSizeComparison.QColor.FieldByName('Article').Value:=ArticleQry.FieldByName('Article').Value;
    CBYSizeComparison.QColor.FieldByName('DevCode').Value:=ArticleQry.FieldByName('DevCode').Value;
    CBYSizeComparison.QColor.FieldByName('Season').Value:=ArticleQry.FieldByName('JiJie').Value;
    CBYSizeComparison.QColor.Post;
    Close;
end;



end.
