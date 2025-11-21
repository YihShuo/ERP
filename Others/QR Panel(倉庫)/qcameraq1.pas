unit qcameraq1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  VFrames, VSample, Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg;

type
  TQrcodeForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    StopImage: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StopImageClick(Sender: TObject);
  private
    IsFindQrCode:boolean;
    procedure StartCamera();
    procedure NewVideoFrameEvent(Sender: TObject; Width, Height: integer; DataPtr: pointer);
  public
    fVideoImage: TVideoImage;
    { Public declarations }
  end;

var
  QrcodeForm: TQrcodeForm;

implementation

{$R *.dfm}

uses
 main1,
 ZXing.ReadResult,
 ZXing.BarCodeFormat,
 ZXing.ScanManager;

procedure TQrcodeForm.StartCamera();
var
  listcams: TStringList;
begin
  listcams := TStringList.Create;
  try
    IsFindQrCode:=false;
    fVideoImage.GetListOfDevices(listcams);
    if not(listcams.count = 0) then
    begin
      fVideoImage.VideoStart(listcams[listcams.count-1]);
    end;

  finally
    listcams.Free;
  end;

end;
procedure TQrcodeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fVideoImage.VideoStop;
  Action:=CaFree;
end;

procedure TQrcodeForm.FormCreate(Sender: TObject);
begin
  self.DoubleBuffered:=true;
  fVideoImage := TVideoImage.Create();
  fVideoImage.OnNewVideoFrame := NewVideoFrameEvent;
  //
  StartCamera();
  //
 {
 with (bakImage.Picture.Graphic as TGifImage) do
  begin
    AnimationSpeed := 100;  // percent of normal speed, range 0 through 1000
    Animate := True;
  end;
 }
end;


procedure TQrcodeForm.FormDestroy(Sender: TObject);
begin
  fVideoImage.Free;
  QrcodeForm:=nil;
end;

procedure TQrcodeForm.StopImageClick(Sender: TObject);
begin
  fVideoImage.VideoStop;
  QrcodeForm.Close;
end;

procedure TQrcodeForm.NewVideoFrameEvent(Sender: TObject; Width, Height: integer; DataPtr: pointer);
var
  bitmap: TBitmap;
  ReadResult: TReadResult;
  ScanManager: TScanManager;
begin
  bitmap := TBitmap.Create;
  try
    bitmap.PixelFormat := pf24bit;
    fVideoImage.GetBitmap(bitmap);
    Image1.Picture.Assign(bitmap);

    // scan code
    try
      ScanManager := TScanManager.Create(TBarcodeFormat.AUTO, nil);
      ReadResult := ScanManager.Scan(bitmap);
      if ReadResult<>nil then
      begin
        IsFindQrCode:=true;
        mainform.ShowQrcodeDate(ReadResult.text);
        fVideoImage.VideoStop;
      end;
    finally
      FreeAndNil(ScanManager);
      FreeAndNil(ReadResult);
    end;
  finally
    bitmap.Free;
  end;
  //¦pªG§ä¨ìQrocde
  if IsFindQrCode=true then
  begin
    fVideoImage.VideoStop;
    QrcodeForm.Close;
  end;
  Application.ProcessMessages;
end;

end.
