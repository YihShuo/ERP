unit MatTotalIn1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TMatTotalIn = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatTotalIn: TMatTotalIn;

implementation

{$R *.dfm}

procedure TMatTotalIn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMatTotalIn.FormDestroy(Sender: TObject);
begin
MatTotalIn:=nil;
end;

end.
