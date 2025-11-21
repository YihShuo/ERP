unit ScanQR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, pngimage, IniFiles;

type
  TScanQR = class(TForm)
    Image1: TImage;
    imgClose00: TImage;
    ImageIN: TImage;
    ImageOUT: TImage;
    lbIN: TLabel;
    lbOUT: TLabel;
    ImageT: TImage;
    lbT: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgClose00Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImageINClick(Sender: TObject);
    procedure ImageOUTClick(Sender: TObject);
    procedure ImageTClick(Sender: TObject);
  private
    { Private declarations }
  public
    WHFilePath: string;
    { Public declarations }
    procedure ReadIni();
  end;

var
  ScanQR: TScanQR;

implementation

uses main1, ScanMaterialQty1, ScanQREntry1, ScanQRDelivery1;

{$R *.dfm}

procedure TScanQR.ReadIni();
  var MyIni :Tinifile;
      AppDir:string;
begin
  WHFilePath := '\\192.168.23.9\liy_erp\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      WHFilePath:=MyIni.ReadString('Warehouse','WarehouseN8D_WHFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TScanQR.FormDestroy(Sender: TObject);
begin
  ScanQR:=nil;
end;

procedure TScanQR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=Cafree;
end;

procedure TScanQR.imgClose00Click(Sender: TObject);
begin
  Close;
end;

procedure TScanQR.FormCreate(Sender: TObject);
var imout: TPNGObject;
begin
  ReadIni();
  imout := TPNGObject.Create;
  imout.LoadFromFile('btnlogout.png');
  imgClose00.Picture.Assign(imout);

  imgClose00.Width:=Round(Screen.Width/20);
  imgClose00.Height:=Round(Screen.Width/20);
  imgClose00.Left:=Round(Screen.Width-(imgClose00.Width+10));
  imgClose00.Top:=Round(Screen.DesktopTop+10);

  ImageIN.Width:=Round(Screen.Height/5);
  ImageIN.Height:=Round(Screen.Height/5);
  ImageIN.Left:=Round((Screen.Width-ImageIN.Width)/5)+Round(ImageIN.Width/2);
  ImageIN.Top:=Round((Screen.Height-ImageIN.Height)/2);

  ImageOUT.Width:=Round(Screen.Height/5);
  ImageOUT.Height:=Round(Screen.Height/5);
  ImageOUT.Left:=Round((Screen.Width-ImageOUT.Width)*4/5)-Round(ImageOUT.Width/2);
  ImageOUT.Top:=Round((Screen.Height-ImageOUT.Height)/2);

  ImageT.Width:=Round(Screen.Height/5);
  ImageT.Height:=Round(Screen.Height/5);
  ImageT.Left:=Round((Screen.Width-ImageT.Width)/2);
  ImageT.Top:=Round((Screen.Height-ImageT.Height)/2);

  lbIN.Font.Height:=-Round(ImageIN.Height/10);
  lbIN.Left:=ImageIN.Left+Round((ImageIN.Width-lbIN.Width)/2);
  lbIN.Top:=ImageIN.Top+Round(ImageIN.Height-lbIN.Height);

  lbOUT.Font.Height:=-Round(ImageOUT.Height/10);
  lbOUT.Left:=ImageOUT.Left+Round((ImageOUT.Width-lbOUT.Width)/2);
  lbOUT.Top:=ImageOUT.Top+Round(ImageOUT.Height-lbOUT.Height);

  lbT.Font.Height:=-Round(ImageT.Height/10);
  lbT.Left:=ImageT.Left+Round((ImageT.Width-lbT.Width)/2);
  lbT.Top:=ImageT.Top+Round(ImageT.Height-lbT.Height);

  imout.free;
end;

procedure TScanQR.ImageINClick(Sender: TObject);
begin
  ScanQREntry:=TScanQREntry.Create(self);
  ScanQREntry.Show;
end;

procedure TScanQR.ImageOUTClick(Sender: TObject);
begin
  ScanQRDelivery:=TScanQRDelivery.Create(self);
  ScanQRDelivery.Show;
end;

procedure TScanQR.ImageTClick(Sender: TObject);
begin
  ScanMaterialQty:=TScanMaterialQty.Create(self);
  ScanMaterialQty.Show;
end;

end.
