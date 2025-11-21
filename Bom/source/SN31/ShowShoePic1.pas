unit ShowShoePic1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, jpeg;

type
  TShowShoePic = class(TForm)
    ShoeImage: TImage;
    PopupMenu1: TPopupMenu;
    Saveas1: TMenuItem;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowShoePic: TShowShoePic;

implementation

uses main1;

{$R *.dfm}

procedure TShowShoePic.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
