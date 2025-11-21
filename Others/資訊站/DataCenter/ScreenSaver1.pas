unit ScreenSaver1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TScreenSaver = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    SPicture, PictureCount: integer;
    FilePath: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScreenSaver: TScreenSaver;

implementation

uses Languages1;

{$R *.dfm}

procedure TScreenSaver.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  AnimateWindow(Handle, 100, AW_BLEND OR AW_HIDE);
  Languages.Timer1.Enabled := true;
  Action := caFree;
end;

procedure TScreenSaver.FormDestroy(Sender: TObject);
begin
  ScreenSaver := Nil;
end;

procedure TScreenSaver.FormShow(Sender: TObject);
begin
  ANimateWindow(Handle, 100, AW_BLEND);
end;
  
procedure TScreenSaver.FormCreate(Sender: TObject);
var
  SearchRec: TSearchRec;
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
  FilePath := ExtractFileDir(ParamStr(0)) + '/ScreenSaver/';

  if not FileExists(FilePath) then CreateDir(FilePath);

  PictureCount := 0;
  if (FindFirst(FilePath + '*.jpg', faAnyFile AND NOT faDirectory, SearchRec) = 0) then
  begin
    Inc(PictureCount);
    while (FindNext(SearchRec) = 0) do
    begin
      Inc(PictureCount);
    end;
    Image1.Stretch := true;
  end;
  FindClose(SearchRec);

  if (PictureCount > 0) then
  begin
    SPicture := 1;
    Image1.Picture.LoadFromFile(FilePath + 'SS1.jpg');
    Timer1.Enabled := true;
  end;
end;

procedure TScreenSaver.Timer1Timer(Sender: TObject);
begin
  Inc(SPicture);
  if (SPicture > PictureCount) then SPicture := 1;
  Image1.Picture.LoadFromFile(FilePath + 'SS' + IntToStr(SPicture) + '.jpg');
end;

procedure TScreenSaver.Image1Click(Sender: TObject);
begin
  Close;
end;

end.
