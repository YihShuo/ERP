unit DelPreview1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TDelPreview = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelPreview: TDelPreview;

implementation

{$R *.dfm}

procedure TDelPreview.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

end.
