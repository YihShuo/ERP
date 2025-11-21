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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShowShoePic: TShowShoePic;

implementation

{$R *.dfm}

end.
