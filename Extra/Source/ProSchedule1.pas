unit ProSchedule1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TProSchedule = class(TForm)
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProSchedule: TProSchedule;

implementation

{$R *.dfm}

procedure TProSchedule.FormDestroy(Sender: TObject);
begin
ProSchedule:=nil;
end;

procedure TProSchedule.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
