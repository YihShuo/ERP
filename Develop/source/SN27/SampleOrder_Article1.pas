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
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
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
    sql.Add('select XieXing,SheHao,XieMing,YSSM,JiJie,Article from KFXXZL ');
    SQL.Add('where XieXing like ''%'+XieXingEdit.Text+'%'' ');
    SQL.Add('and SheHao like ''%'+SheHaoEdit.Text+'%'' ');
    SQL.Add('and XieMing like ''%'+XieMingEdit.Text+'%'' ');
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
  SampleOrder.YPZL.Post;
  Close;
end;

end.
