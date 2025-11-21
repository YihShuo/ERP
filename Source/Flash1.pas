unit Flash1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFlash = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormPaint(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flash: TFlash;

implementation

{$R *.dfm}

procedure TFlash.FormPaint(Sender: TObject);
var i:word;
   dy,y:real;
begin
  dy:=clientheight/256;
  y:=0;
  for i:=255 downto 0 do
  begin
    canvas.brush.color:=$00000000+i*$10000;
    canvas.fillrect(rect(0,round(y),clientwidth,round(y+dy)));
    y:=y+dy;
  end;


end;

procedure TFlash.FormHide(Sender: TObject);
begin
  sleep(2000);
end;

procedure TFlash.FormCreate(Sender: TObject);
begin
if formatdatetime('yyyy/MM/dd',date)<>'2009/02/14' then
  //label3.Caption:='System Error Will Be Reboot!!';
  label3.Caption:='Have a Good Day !!';
end;


end.
