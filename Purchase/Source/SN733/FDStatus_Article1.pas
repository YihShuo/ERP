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
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Button1: TButton;
    qry1Article: TStringField;
    qry1JiJie: TStringField;
    qry1FD: TStringField;
    qry1KFJD: TStringField;
    qry1YPCC: TStringField;
    qry1devcode: TStringField;
    Label4: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure dbgrdh1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    parentArticle:TEdit;
    parentJiJie:TEdit;
    parentKFJD:TEdit;
    parentFD:TEdit;
    { Public declarations }
  end;

var
  FDStatus_Article: TFDStatus_Article;

implementation



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
  sql.add('select KFXXZL.devcode,KFXXZL.Article,KFXXZL.JiJie,KFXXZL.FD,ypzl.KFJD,ypzl.YPCC from ypzl  ');
  sql.add('left join KFXXZL on KFXXZL.XieXing=ypzl.XieXing and KFXXZL.SheHao=ypzl.SheHao ');
  sql.add(' where 1=1 ');
  if Edit1.text<>'' then
     sql.add(' and KFXXZL.JiJie='+''''+Edit1.text+'''');
  if Edit2.text<>'' then
     sql.add(' and kfxxzl.devcode like '+'''%'+Edit2.text+'%''');
  if Edit3.text<>'' then
     sql.add(' and ypzl.KFJD='+''''+Edit3.text+'''');
  if Edit4.text<>'' then
     sql.add(' and kfxxzl.article like '+'''%'+Edit4.text+'%''');
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
  if parentArticle<>nil then  parentArticle.Text:=qry1.fieldbyname('Devcode').AsString;
  if parentJiJie<>nil then   parentJiJie.Text:=qry1.fieldbyname('JiJie').AsString;
  if parentKFJD<>nil then   parentKFJD.Text:=qry1.fieldbyname('KFJD').AsString;
  if parentFD<>nil then   parentFD.Text:=qry1.fieldbyname('FD').AsString;
  Close;
end;

procedure TFDStatus_Article.FormShow(Sender: TObject);
begin
  if parentArticle<>nil then Edit2.Text:=parentArticle.Text;
  if parentJiJie<>nil then Edit1.Text:=parentJiJie.Text;
  if parentKFJD<>nil then Edit3.Text:=parentKFJD.Text;
end;

end.
