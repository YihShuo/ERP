unit DebitNote1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TDebitNote = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DebitNote: TDebitNote;

implementation

{$R *.dfm}

procedure TDebitNote.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDebitNote.FormDestroy(Sender: TObject);
begin
debitnote:=nil;
end;

end.
