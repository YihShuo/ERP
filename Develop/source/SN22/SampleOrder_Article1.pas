unit SampleOrder_Article1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TSampleOrder_Article = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    XieXingEdit: TEdit;
    Button1: TButton;
    SheHaoEdit: TEdit;
    XieMingEdit: TEdit;
    ArticleQry: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    ArticleQryXieXing: TStringField;
    ArticleQrySheHao: TStringField;
    ArticleQryXieMing: TStringField;
    ArticleQryYSSM: TStringField;
    ArticleQryJiJie: TStringField;
    ArticleQryArticle: TStringField;
    ArticleQryfd: TStringField;
    Label4: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure XieXingEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SheHaoEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure XieMingEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SampleOrder_Article: TSampleOrder_Article;

implementation
  uses SampleOrder1,FunUnit;
{$R *.dfm}

procedure TSampleOrder_Article.Button1Click(Sender: TObject);
begin
  with ArticleQry do
  begin
    active:=false;
    sql.clear;
    sql.Add('select XieXing,SheHao,XieMing,YSSM,JiJie,Article,kfxxzl.FD from KFXXZL ');
    SQL.Add('where XieXing like ''%'+XieXingEdit.Text+'%'' ');
    SQL.Add('and SheHao like ''%'+SheHaoEdit.Text+'%'' ');
    SQL.Add('and XieMing like ''%'+XieMingEdit.Text+'%'' ');
    SQL.Add('and jijie like ''%'+edit1.Text+'%'' ');    
    active:=true;
  end;
end;

procedure TSampleOrder_Article.DBGridEh1DblClick(Sender: TObject);
begin
  SampleOrder.YPZL.Edit;
  SampleOrder.YPZL.FieldByName('XieXing').Value:=ArticleQry.FieldByName('XieXing').Value;
  SampleOrder.YPZL.FieldByName('SheHao').Value:=ArticleQry.FieldByName('SheHao').Value;
  SampleOrder.YPZL.FieldByName('XieMing').Value:=ArticleQry.FieldByName('XieMing').Value;
  SampleOrder.YPZL.FieldByName('JiJie').Value:=ArticleQry.FieldByName('JiJie').Value;
  SampleOrder.YPZL.FieldByName('Article').Value:=ArticleQry.FieldByName('Article').Value;
  SampleOrder.YPZL.FieldByName('ARTNO').Value:=ArticleQry.FieldByName('Article').Value;
  SampleOrder.YPZL.FieldByName('FD').Value:=ArticleQry.FieldByName('FD').Value;  
  SampleOrder.YPZL.Post;
  Close;
end;

procedure TSampleOrder_Article.XieXingEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=13 then Button1.Click;
end;

procedure TSampleOrder_Article.SheHaoEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=13 then Button1.Click;
end;

procedure TSampleOrder_Article.XieMingEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if Key=13 then Button1.Click;
end;

end.
