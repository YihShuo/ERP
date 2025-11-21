program Keyboard;

uses
  Forms,
  MyKeyboard in 'MyKeyboard.pas' {KeyBoardForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TKeyBoardForm, KeyBoardForm);
  Application.Run;
end.
