unit AndonPicP;

interface

uses
  Windows, Messages, SysUtils,jpeg, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
    TAndonPic = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AndonPic: TAndonPic;
  plist:tstringlist;
  picnum:integer;
  i:integer;
  pic:Tjpegimage;

implementation

uses AndonInput1;

{$R *.dfm}

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

procedure showa(photo:string);
begin
  pic:=Tjpegimage.Create;
  pic.LoadFromFile(photo);
//  AndonPic.Width:=pic.Width;  //照片視窗自動調整大小符合照片
//  AndonPic.Height:=pic.Height;
  AndonPic.Image1.Picture.Bitmap.Assign(pic);
  pic.Free;
end;

procedure TAndonPic.FormCreate(Sender: TObject);
begin
  wenjian('\\192.168.23.11\rsl\QC\'+AndonInput.qrySize.FieldByName('xiexing').AsString+'-'+AndonInput.qrySize.FieldByName('shehao').AsString+'\');
  picnum:=plist.Count;
end;

procedure TAndonPic.Timer1Timer(Sender: TObject);
begin
  i:=i+1;
  if i=picnum then
     i:=0;
  showa(plist.Strings[i]);
end;

procedure TAndonPic.FormActivate(Sender: TObject);
begin
  if picnum <> 0 then
  begin
    AndonPic.Timer1.Enabled:=true;
    showa(plist.Strings[0]);
  end
  else
  begin
    showmessage('No Pictures!!');
  end;
end;

end.
