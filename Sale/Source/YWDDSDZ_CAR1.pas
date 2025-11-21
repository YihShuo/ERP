unit YWDDSDZ_CAR1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TYWDDSDZ_CAR = class(TForm)
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  YWDDSDZ_CAR: TYWDDSDZ_CAR;

implementation

{$R *.dfm}

procedure TYWDDSDZ_CAR.FormDestroy(Sender: TObject);
begin
YWDDSDZ_CAR:=nil;
end;

procedure TYWDDSDZ_CAR.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
