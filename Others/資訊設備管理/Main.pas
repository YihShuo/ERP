unit MAIN;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, Menus,
  StdCtrls, Dialogs, Buttons, Messages, ExtCtrls, ComCtrls, StdActns,
  ActnList, ToolWin, ImgList;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileCloseItem: TMenuItem;
    Window1: TMenuItem;
    Help1: TMenuItem;
    HelpAboutItem: TMenuItem;
    FileSaveItem: TMenuItem;
    Edit1: TMenuItem;
    StatusBar: TStatusBar;

    procedure HelpAbout1Execute(Sender: TObject);
    procedure FileNewItemClick(Sender: TObject);
    procedure FileOpenItemClick(Sender: TObject);
    procedure FileCloseItemClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

uses dmp, about, classedit, comeedit, modeedit,  masteredit;



procedure TMainForm.FileOpenItemClick(Sender: TObject);
begin

  application.CreateForm(tfrm_come,frm_come);
  frm_come.ShowModal;
  dm.adscome.Close;
  frm_come.Free;
end;

procedure TMainForm.HelpAbout1Execute(Sender: TObject);
begin
  AboutBox.ShowModal;
end;

procedure TMainForm.Edit1Click(Sender: TObject);
begin
  application.CreateForm(tfrm_master,frm_master);
  frm_master.ShowModal;
  dm.adsmaster.Close;
  frm_master.Free;
end;

procedure TMainForm.FileCloseItemClick(Sender: TObject);
begin
  application.CreateForm(tfrm_mode,frm_mode);
  frm_mode.ShowModal;
  dm.adsmode.Close;
  frm_mode.Free;
end;

procedure TMainForm.FileNewItemClick(Sender: TObject);
begin

  application.CreateForm(Tfrm_class,frm_class);
  frm_class.ShowModal;
  dm.adsclass.Close;
  frm_class.Free;
end;

end.
