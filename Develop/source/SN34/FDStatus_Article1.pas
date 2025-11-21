unit FDStatus_Article1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls;

type
  TFDStatus_Article = class(TForm)
    dbgrdh1: TDBGridEh;
    qry1: TQuery;
    ds1: TDataSource;
    Panel1: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    ArticleEdit: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Button1: TButton;
    qry1Article: TStringField;
    qry1JiJie: TStringField;
    qry1FD: TStringField;
    qry1KFJD: TStringField;
    qry1YPCC: TStringField;
    SREdit: TEdit;
    Label4: TLabel;
    qry1SR: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgrdh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    parentArticle:TEdit;
    parentSR:TEdit;
    parentJiJie:TEdit;
    parentKFJD:TEdit;
    parentFD:TEdit;
    { Public declarations }
  end;

var
  FDStatus_Article: TFDStatus_Article;

implementation

uses FDStatus1;

{$R *.dfm}

procedure TFDStatus_Article.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TFDStatus_Article.FormDestroy(Sender: TObject);
begin
FDStatus_Article:=nil;
end;

procedure TFDStatus_Article.Button1Click(Sender: TObject);
begin
 with qry1 do
  begin
  active:=false;
  Sql.clear;
  sql.add('select KFXXZL.Article,KFXXZL.DEVCODE as SR#,KFXXZL.JiJie,ISNULL(ypzl.FD, KFXXZL.FD) AS FD,ypzl.KFJD,ypzl.YPCC from ypzl  ');
  sql.add('left join KFXXZL on KFXXZL.XieXing=ypzl.XieXing and KFXXZL.SheHao=ypzl.SheHao ');
  sql.add(' where 1=1 ');
  if Edit1.text<>'' then
     sql.add(' and KFXXZL.JiJie='+''''+Edit1.text+'''');
  if ArticleEdit.text<>'' then
     sql.add(' and KFXXZL.ARTICLE like '+'''%'+ArticleEdit.text+'%''');
  if SREdit.text<>'' then
     sql.add(' and KFXXZL.DEVCODE like '+'''%'+SREdit.text+'%''');
  if Edit3.text<>'' then
     sql.add(' and ypzl.KFJD='+''''+Edit3.text+'''');
  active:=true;
 end
end;

procedure TFDStatus_Article.dbgrdh1DblClick(Sender: TObject);
begin
  if (not qry1.Active) then
  begin
    abort;
  end;
  if (qry1.recordcount<1) then
  begin
    abort;
  end;
  if parentArticle<>nil then  parentArticle.Text:=qry1.fieldbyname('Article').AsString;
  if parentSR<>nil then  parentSR.Text:=qry1.fieldbyname('SR#').AsString;
  if parentJiJie<>nil then   parentJiJie.Text:=qry1.fieldbyname('JiJie').AsString;
  if parentKFJD<>nil then   parentKFJD.Text:=qry1.fieldbyname('KFJD').AsString;
  if parentFD<>nil then   parentFD.Text:=qry1.fieldbyname('FD').AsString;

end;

procedure TFDStatus_Article.FormShow(Sender: TObject);
begin
  if parentArticle<>nil then ArticleEdit.Text:=parentArticle.Text;
  if parentSR<>nil then SREdit.Text:=parentSR.Text;
  if parentJiJie<>nil then Edit1.Text:=parentJiJie.Text;
  if parentKFJD<>nil then Edit3.Text:=parentKFJD.Text;
end;

end.
