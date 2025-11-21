unit SKUQryp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables;

type
  TSKUQry = class(TForm)
    SKUDBGrid: TDBGridEh;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    QryBtn: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Edit3: TEdit;
    DS: TDataSource;
    SKUQuery: TQuery;
    procedure QryBtnClick(Sender: TObject);
    procedure SKUDBGridDblClick(Sender: TObject);
  private
    LB:String;
    MArticle:string;
    SKUChoice:string;//
    { Private declarations }
  public
    { Public declarations }
    procedure SetParam(Action:string;MSKU:string;tmpLB:String);
  end;

var
  SKUQry: TSKUQry;

implementation
   uses FunUnit,PFC_SkuMapp;
{$R *.dfm}
procedure TSKUQry.SetParam(Action:string;MSKU:string;tmpLB:String);
begin
   if  SKUChoice<>Action then SKUQuery.Active:=false;
   SKUChoice:=Action; //來源 Ex. Master  or Detail
   //副Article才要去除過濾 Master Article
   if Action='Detail' then
   begin
     MArticle:=MSKU;
     LB:=tmpLB;
   end;


end;
procedure TSKUQry.QryBtnClick(Sender: TObject);
begin
  with  SKUQuery do
  begin
     Active:=false;
     SQL.Clear;
     if SKUChoice='Master' then
     begin
       SQL.Add('select ARTICLE, XieXing,XieMing, SheHao, DAOMH from xxzl');
       SQL.Add('where ARTICLE like ''%'+Edit1.text+'%'' and  ARTICLE is not null and ');
       SQL.Add('      Article<>''''  and  ');
       SQL.Add('      XieMing like ''%'+Edit2.text+'%'' and ' );
       SQL.Add('      DAOMH like ''%'+Edit3.text+'%'' and ');
       SQL.Add('      KHDH=''036''  ');
       SQL.Add('order by ARTICLE, XieMing, SheHao, DAOMH');
     end;
     if SKUChoice='Detail' then
     begin
       SQL.Add('select ARTICLE, XieXing,XieMing, SheHao, DAOMH from xxzl');
       SQL.Add('where ARTICLE like ''%'+Edit1.text+'%'' and  ARTICLE is not null and ');
       SQL.Add('      Article<>''''  and  ');
       //if MArticle<>'' then SQL.Add('Article<>'''+MArticle+''' and '); //排除過濾母Article  20140103 取消
       SQL.Add('      XieMing like ''%'+Edit2.text+'%'' and ' );
       SQL.Add('      DAOMH like ''%'+Edit3.text+'%'' and ');
       SQL.Add('      KHDH=''036'' and ');
       SQL.Add('      ARTICLE not  in (Select  DArticle from PFCSKUmap where LB='''+LB+''' and MArticle='''+MArticle+''' group by DArticle)');
       SQL.Add('order by ARTICLE, XieMing, SheHao, DAOMH');
     end;
     //funcObj.WriteErrorLog(SQL.Text);
     Active:=true;
  end;
end;
//


procedure TSKUQry.SKUDBGridDblClick(Sender: TObject);
begin
  if SKUQuery.Active=true then
  begin
     if SKUChoice='Master' then //主要Article
        PFC_SkuMap.MArticleEdit.Text:=SKUQuery.fieldByName('Article').AsString;
     if SKUChoice='Detail' then //關聯Article
     begin
        with PFC_SkuMap.PFCQuery do
        begin
          //非新增狀態 則為編輯狀態
          //if PFC_SkuMap.PFCQuery.State<>dsInsert then
          Edit;
          fieldByName('DArticle').AsString:=SKUQuery.fieldByName('Article').AsString;
          fieldByName('FolderNM').AsString:=SKUQuery.fieldByName('XieXing').AsString+'-'+SKUQuery.fieldByName('SheHao').AsString;
          post;
          //自動開啟新增下一筆
          insert;
          FieldByName('LB').AsString:=PFC_SkuMap.LBComBo.Text;
          FieldByName('MArticle').AsString:=PFC_SkuMap.MArticleEdit.Text;
          Post;
        end;
     end;

     Close;
   end;
end;

end.
