unit AD_Article1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, GridsEh, DBGridEh, DBTables;

type
  TAD_Article = class(TForm)
    XXZLS: TQuery;
    XXZLSXH: TStringField;
    XXZLSBWBH: TStringField;
    XXZLSBWMC: TStringField;
    XXZLSCLBH: TStringField;
    XXZLSCLMC: TStringField;
    XXZLSCLZW: TStringField;
    XXZLSBWZW: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSLYCC: TStringField;
    XXZLSBZ: TStringField;
    XXZLSBWLB: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSLOSS: TFloatField;
    XXZLSCLSL: TFloatField;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    XXZLSCLZMLB: TStringField;
    DBGrid2: TDBGridEh;
    DS2: TDataSource;
    Panel1: TPanel;
    Button1: TButton;
    Label5: TLabel;
    XXZLSXieXing: TStringField;
    XXZLSSheHao: TStringField;
    XXZLSArticle: TStringField;
    CheckBox1: TCheckBox;
    CheckFilterAD: TCheckBox;
    ArticleEdit: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AD_Article: TAD_Article;

implementation
  uses Cons_AD1,FunUnit;
{$R *.dfm}

procedure TAD_Article.Button1Click(Sender: TObject);
begin
  //
  if ArticleEdit.Text='' then
  begin
    Showmessage('Please key in Articel');
    exit;
  end;
  with XXZLS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select XXZL.Article,XXZLS.XieXing,XXZLS.SheHao,XXZLS.XH, XXZLS.BWBH,BWZL.ywsm BWMC,XXZLS.CLBH,');
    SQL.Add('         CLZL.YWPM as CLMC, CLZL.ZWPM as CLZW,BWZL.zwsm  as BWZW,');
    SQL.Add('         CLZL.DWBH,CLZL.LYCC,LBZLS.BZ,XXZLS.BWLB,ZSZL.ZSYWJC,XXZLS.LOSS,XXZLS.CLSL,');
    SQL.Add('        XXZLS.CCQQ,XXZLS.CCQZ,CLZL.CLZMLB');
    SQL.Add(' FROM XXZLS  ');
    SQL.Add('LEFT JOIN XXZL on XXZL.XieXing=XXZLS.XieXing and XXZLS.SheHao=XXZL.SheHao ');
    SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh                               ');
    SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh                              ');
    SQL.Add('LEFT JOIN LBZLS ON SUBSTRING(XXZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05'' ');
    SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
    SQL.Add('Left JOIN Cons_Avery AD on AD.XieXing=XXZLS.XieXing and AD.SheHao=XXZLS.SheHao and AD.BWBH=XXZLS.BWBH ');
    SQL.Add('where XXZL.Article like ''%'+ArticleEdit.Text+'%'' ');
    if CheckFilterAD.Checked=true then
    SQL.Add(' and XXZLS.CSBH=''P024'' and CLZL.YWPM like ''%NO:BA%'' ');
    if CheckBox1.Checked=true then
    SQL.Add(' and AD.XieXing is null');
    SQL.Add('order by XXZL.Article');
    Active:=true;
  end;
  //
end;

procedure TAD_Article.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAD_Article.FormDestroy(Sender: TObject);
begin
  AD_Article:=nil;
end;

procedure TAD_Article.DBGrid2DblClick(Sender: TObject);
begin
  Cons_AD.ADQry.Insert;
  Cons_AD.ADQry.FieldByName('SKU').AsString:=XXZLS.FieldByName('Article').AsString;
  Cons_AD.ADQry.FieldByName('XieXing').AsString:=XXZLS.FieldByName('XieXing').AsString;
  Cons_AD.ADQry.FieldByName('SheHao').AsString:=XXZLS.FieldByName('SheHao').AsString;
  Cons_AD.ADQry.FieldByName('BWBH').AsString:=XXZLS.FieldByName('BWBH').AsString;
  Cons_AD.ADQry.FieldByName('YWPM').AsString:=XXZLS.FieldByName('CLMC').AsString;
  Cons_AD.ADQry.Post;
end;

end.
