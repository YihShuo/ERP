unit ExecInvoice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TExecInvoice = class(TForm)
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExecInvoice: TExecInvoice;

implementation

{$R *.dfm}

procedure TExecInvoice.FormDestroy(Sender: TObject);
begin
ExecInvoice:=nil
end;

procedure TExecInvoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
