unit PayableTW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TPayableTW = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PayableTW: TPayableTW;

implementation

{$R *.dfm}

procedure TPayableTW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
