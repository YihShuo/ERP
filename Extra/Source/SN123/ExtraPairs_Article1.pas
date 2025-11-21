unit ExtraPairs_Article1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  GridsEh, DBGridEh,dateutils;

type
  TExtraPairs_Article = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1XieXing: TStringField;
    Query1XieMing: TStringField;
    Button2: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    Query1DAOMH: TStringField;
    Query1KFJC: TStringField;
    CB2: TCheckBox;
    Edit4: TEdit;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    Edit5: TEdit;
    Label5: TLabel;
    Query1jijie: TStringField;
    Query1article: TStringField;
    Label6: TLabel;
    Edit6: TEdit;
    Query1SheHao: TStringField;
    Label7: TLabel;
    Edit7: TEdit;
    Button3: TButton;
    CB3: TCheckBox;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraPairs_Article: TExtraPairs_Article;

implementation

uses ExtraPairs_Material1, FunUnit, main1;

{$R *.dfm}

procedure TExtraPairs_Article.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TExtraPairs_Article.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TExtraPairs_Article.Button1Click(Sender: TObject);
begin

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select XieXing,SheHao,XieMing,DAOMH ,KFZL.KFJC,article,jijie  ');
    sql.add('from XXZL');
    sql.add('left join KFZL on KFZL.KFDH=XXZL.KHDH ');
    sql.add('where 1=1 ');
    if Edit1.Text<>'' then
      sql.add(' and XXZL.XieXing like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
      sql.add(' and XXZL.XieMing like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text<>'' then
      sql.add(' and XXZL.DAOMH like ''%'+Edit3.Text+'%'' ');
    if Edit4.Text<>'' then
      sql.add(' and XXZL.Article like ''%'+Edit4.Text+'%'' ');
    if Edit5.Text<>'' then
      sql.add(' and XXZL.jijie like ''%'+Edit5.Text+'%'' ');
    if Edit6.Text<>'' then
      sql.add(' and KFZL.KFJC like ''%'+Edit6.Text+'%'' ');
    if CB2.Checked=true then
    begin
      sql.add(' and exists ( select XieXing from XXZLS,CLZL');
      sql.add('             where CLZL.CLDH=XXZLS.CLBH ');
      sql.add('                   and XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZl.SheHao');
      sql.add('                   and CLZL.YWPM like ''%SHRINKPROOF%'' ');
      sql.add('                   and XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
      sql.add('                   and XXZl.XieMing like '+''''+'%'+edit2.text+'%'+''''+')');
    end;
    if CB3.Checked=true then
    begin
      sql.add(' and exists ( select XieXing from XXZLS,CLZL');
      sql.add('             where CLZL.CLDH=XXZLS.CLBH ');
      sql.add('                   and XXZLS.XieXing=XXZL.XieXing and XXZLS.SheHao=XXZl.SheHao');
      sql.add('                   and CLZL.YWPM like ''%EMBROIDERY%'' ');
      sql.add('                   and XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
      sql.add('                   and XXZl.XieMing like '+''''+'%'+edit2.text+'%'+''''+')');
    end;    
    if Edit7.Text<>'' then
    begin
      sql.add(' and exists ( select XieXing from DDZL');
      sql.add('             where 1=1 ');
      sql.add('                   and DDZL.XieXing=XXZL.XieXing and DDZl.SheHao=XXZl.SheHao');
      sql.add('                   and DDZL.BUYNO like '''+Edit7.Text+'%'' ');
      sql.add('                   and XXZL.XieXing like '+''''+edit1.Text+'%'+'''');
      sql.add('                   and XXZl.XieMing like '+''''+'%'+edit2.text+'%'+''''+')');
    end;
    sql.add('order by KFZL.KFJC,XieXing');
    active:=true;
    //memo1.Lines:=sql;
  end;

end;

procedure TExtraPairs_Article.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  query1.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
        begin
          eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;
        query1.First;
        j:=2;
        while   not   query1.Eof   do
        begin
          for   i:=0   to  query1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=query1.Fields[i].Value;
          end;
          query1.Next;
          inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.Visible:=True;
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;

end;

procedure TExtraPairs_Article.FormDestroy(Sender: TObject);
begin
  ExtraPairs_Article:=nil;
end;

procedure TExtraPairs_Article.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TExtraPairs_Article.DBGridEh1DblClick(Sender: TObject);
var i:integer;
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ExtraPairs_Material.JGDet do
  begin
      Edit;
      fieldbyname('XieXing').value:=query1.fieldbyname('XieXing').value;
      fieldbyname('SheHao').value:=query1.fieldbyname('SheHao').value;
      fieldbyname('Article').value:=query1.fieldbyname('Article').value;
      Post;          //¥Îpost
  end;
  showmessage('Succeed.');
  close;
end;

procedure TExtraPairs_Article.Button3Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:TbookmarklistEh;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    Qty:=0;
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;
    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with ExtraPairs_Material.JGDet do
          begin
              edit;
              fieldbyname('XieXing').value:=query1.fieldbyname('XieXing').value;
              fieldbyname('SheHao').value:=query1.fieldbyname('SheHao').value;
              fieldbyname('Article').value:=query1.fieldbyname('Article').value;
              insert;
          end;
        end;
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;

end;

procedure TExtraPairs_Article.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
