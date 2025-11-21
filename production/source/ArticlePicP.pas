unit ArticlePicP;

interface

uses
  Windows, Messages, SysUtils, jpeg, gifimage, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TArticlePic = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Image2: TImage;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    CB1: TCheckBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Timer2: TTimer;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ArticlePic: TArticlePic;
  plist:tstringlist;
  picnum:integer;
  i:integer;
  pic:Tjpegimage;
  GifPlist:tstringlist;
  GifPicnum:integer;
  g:integer;
  gif: TGIFImage;

implementation

uses ArticlePicQP;

{$R *.dfm}

procedure TArticlePic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TArticlePic.Button1Click(Sender: TObject);
begin
  ArticlePicQ:=TArticlePicQ.create(self);
  ArticlePicQ.show;
end;

procedure wenjian(mulu:string);
var
  t:TSearchRec;
  found:Integer;
begin
  plist:=tstringlist.Create;
  found:=findfirst(mulu+'*.jpg',faanyfile,t);
    while found=0 do
    begin
      if (t.Attr and faDirectory)<>0 then   // 是一個目錄
      begin
      end
      else                       //是一個文件
      begin
        plist.Add(mulu+t.Name);
      end;
      found:=FindNext(t);
    end;
end;

procedure GifWenjian(GifMulu:string);
var
  s:TSearchRec;
  GifFound:Integer;
begin
  GifPlist:=tstringlist.Create;
  GifFound:=findfirst(GifMulu+'*.gif',faanyfile,s);
    while GifFound=0 do
    begin
      if (s.Attr and faDirectory)<>0 then   // 是一個目錄
      begin
      end
      else                       //是一個文件
      begin
        GifPlist.Add(GifMulu+s.Name);
      end;
      GifFound:=FindNext(s);
    end;
end;

procedure showa(photo:string);
begin
  pic:=Tjpegimage.Create;
  pic.LoadFromFile(photo);
  ArticlePic.Image2.Picture.Bitmap.Assign(pic);
  pic.Free;
end;

procedure GifShowa(GifPhoto:string);
begin
  gif:=TGIFImage.Create;
  gif.LoadFromFile(GifPhoto);
  ArticlePic.Image1.Picture.Assign(gif);
  gif.Free;
end;

procedure TArticlePic.Edit5Change(Sender: TObject);
begin
  //顯示Deff jpg圖片
  wenjian('\\192.168.23.11\rsl\QC\'+edit4.Text+'-'+edit5.Text+'\');
  picnum:=plist.Count;
  if picnum <> 0 then
  begin
    Timer2.Enabled:=true;
    showa(plist.Strings[0]);
  end
  else
  begin
    showmessage('No Deff Pictures!!');
  end;
  //顯示樣品鞋gif圖片
  GifWenjian('\\192.168.23.11\rsl\QC\'+edit4.Text+'-'+edit5.Text+'\GIF\');
  GifPicnum:=GifPlist.Count;
  if GifPicnum <> 0 then
  begin
//    Timer1.Enabled:=true;  Gif圖片輪播功能disable, 因為使用同個物件處理不同圖片類別造成執行錯誤
    GifShowa(GifPlist.Strings[0]);
  end
  else
  begin
    showmessage('No Sample Shoes Pictures!!');
  end;
end;

procedure TArticlePic.Timer2Timer(Sender: TObject);
begin
  i:=i+1;
  if i=picnum then
     i:=0;
  showa(plist.Strings[i]);
end;

procedure TArticlePic.Timer1Timer(Sender: TObject);
begin
  g:=g+1;
  if g=GifPicnum then
     g:=0;
  showa(GifPlist.Strings[g]);
end;

procedure TArticlePic.FormDestroy(Sender: TObject);
begin
ArticlePic:=nil;
end;

procedure TArticlePic.FormResize(Sender: TObject);
begin
  Image1.Width:=ArticlePic.Width div 2;
  Image2.Width:=ArticlePic.Width-Image1.Width;
end;

end.
