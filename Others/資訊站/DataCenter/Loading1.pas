unit Loading1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg;

type
  TLoading = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Timer1: TTimer;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ImageOrder: integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Loading: TLoading;

implementation

{$R *.dfm}

procedure TLoading.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TLoading.FormDestroy(Sender: TObject);
begin
  Loading := Nil;
end;
       
procedure TLoading.FormCreate(Sender: TObject);
begin
  ImageOrder := 1;
end;

procedure TLoading.Timer1Timer(Sender: TObject);
var
  PreOrder: integer;
begin
  PreOrder := ImageOrder;
  Inc(ImageOrder);
  if (ImageOrder > 12) then ImageOrder := 1;
  TImage(Self.FindComponent('Image' + IntToStr(ImageOrder))).Visible := true;
  TImage(Self.FindComponent('Image' + IntToStr(PreOrder))).Visible := false;
  Panel1.Repaint;
end;

end.
