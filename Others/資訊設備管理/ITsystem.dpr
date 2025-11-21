program ITsystem;

uses
  Forms,
  Main in 'Main.pas' {MainForm},
  about in 'about.pas' {AboutBox},
  dmp in 'dmp.pas' {dm: TDataModule},
  classedit in 'classedit.pas' {frm_class},
  comeedit in 'comeedit.pas' {frm_come},
  modeedit in 'modeedit.pas' {frm_mode},
  masteredit in 'masteredit.pas' {frm_master};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrm_class, frm_class);
  Application.CreateForm(Tfrm_come, frm_come);
  Application.CreateForm(Tfrm_mode, frm_mode);
  Application.CreateForm(Tfrm_master, frm_master);
  Application.Run;
end.
