unit SpecPrint_Im1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TSpecPrint_Im = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecPrint_Im: TSpecPrint_Im;

implementation

{$R *.dfm}

procedure TSpecPrint_Im.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TSpecPrint_Im.FormDestroy(Sender: TObject);
begin
specprint_Im:=nil;
end;

end.
