unit ArticlePicQP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TArticlePicQ = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    CB1: TCheckBox;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1ARTICLE: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1GSBH: TStringField;
    CKJPEG: TCheckBox;
    Label4: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure CKGIFClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    JPGList:TStringlist;
    { Private declarations }
    procedure GetEnityJPGList();

  public
    { Public declarations }
  end;

var
  ArticlePicQ: TArticlePicQ;

implementation

uses ArticlePicP, main1, FunUnit;

{$R *.dfm}

procedure TArticlePicQ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  JPGList.Free;
  action:=cafree;
end;

procedure TArticlePicQ.FormCreate(Sender: TObject);
begin
  //JPEG實體檔案存在目錄清單
  JPGList:=TStringlist.Create;
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select GSBH,DDBH,ARTICLE,XieXing,SheHao,USERDATE from DDZL');
    sql.Add('where DDBH like '+'''%'+ArticlePic.edit1.text+'%'''+'');
    if ArticlePic.CB1.checked then
      sql.Add('and USERDATE >= DATEADD(DD,-180,GETDATE())');
    sql.Add('and ARTICLE like '+'''%'+ArticlePic.edit2.text+'%'''+'');
    sql.Add('and XieXing like '+'''%'+ArticlePic.edit3.text+'%'''+'');
    sql.Add('and GSBH = '+''''+main.edit2.text+''''+'');
    sql.Add('order by DDBH,ARTICLE,XieXing');
    active:=true;
  end;
end;

procedure TArticlePicQ.Button1Click(Sender: TObject);
var SubSQL:string;
    i,count:integer;
begin
  if CKJPEG.Checked=true then
  begin
    SubSQL:='';
    GetEnityJPGList();
    if JPGList.Count>0 then
    begin
      count:=0;
      SubSQL:=' and XieXing+''-''+SheHao in  (';
      for i:=0 to JPGList.Count-1 do
      begin
        SubSQL:=SubSQL+''''+JPGList.Strings[i]+''',';
        Inc(count);
      end;
      SubSQL:=Copy(SubSQL,1,length(SubSQL)-1)+')' ;
      if count=0 then SubSQL:='';
    end;
  end;
  //
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select GSBH,DDBH,ARTICLE,XieXing,SheHao,USERDATE from DDZL');
    sql.Add('where DDBH like '+'''%'+edit1.text+'%'''+'');
    if CB1.checked then
      sql.Add('and USERDATE >= DATEADD(DD,-180,GETDATE())');
    sql.Add('and ARTICLE like '+'''%'+edit2.text+'%'''+'');
    sql.Add('and XieXing like '+'''%'+edit3.text+'%'''+'');
    sql.Add('and SheHao like '+'''%'+edit4.text+'%'''+'');
    sql.Add('and GSBH = '+''''+main.edit2.text+''''+'');
    sql.Add(SubSQL);
    sql.Add('order by DDBH,ARTICLE,XieXing');
    active:=true;
  end;
end;

procedure TArticlePicQ.DBGridEh1DblClick(Sender: TObject);
begin
  ArticlePic.UserArticle:=query1.fieldbyname('Article').Value;
  ArticlePic.UserSheHao:=query1.fieldbyname('Shehao').Value;
  ArticlePic.USerXieXing:=query1.fieldbyname('XieXing').Value;
  ArticlePic.ListAvailPFC(); //非必要過濾沒有實體檔案的目錄
  ArticlePic.GetPFCDocument(); //檢查PFC文件
  ArticlePic.ShowImage();  //顯示圖片和GIF檔
  close;
end;
//取得存在實體JPGE檔案目錄
procedure TArticlePicQ.GetEnityJPGList();
  function CheckIsFormatDir(NM:string):boolean;
  var i,Posi:integer;
      SheHao:string;
      SheHaoP:PChar;
      iRes:boolean;
  begin
    iRes:=true;
    Posi:=Pos('-',NM);
    if Posi>0 then
    begin
      SheHao:=Copy(NM,Posi+1,length(NM));
      SheHaoP:=PChar(SheHao);
      for i:=0 to length(SheHao)-1 do
      begin
        if not (SheHaoP[i]  in ['0'..'9']) then
        begin
          iRes:=false;
          break;
        end;
      end;
    end else
    begin
      iRes:=false;
    end;
    result:=iRes;
  end;
var
  t:TSearchRec;
  found:Integer;
  DirNM:string;
begin
  JPGList.Clear;
  DirNM:=ArticlePic.QCFilePath;//'\\192.168.23.11\rsl\QC\';
  found:=findfirst(DirNM+'*.*',faDirectory,t);
    while found=0 do
    begin
      if CheckIsFormatDir(t.Name)=true then
      begin
        JPGList.Add(t.Name);
      end;
      found:=FindNext(t);
    end;
end;

procedure TArticlePicQ.CKGIFClick(Sender: TObject);
begin
  CKJPEG.Checked:=true;
end;

procedure TArticlePicQ.FormDestroy(Sender: TObject);
begin
  ArticlePicQ:=nil;
end;

end.
