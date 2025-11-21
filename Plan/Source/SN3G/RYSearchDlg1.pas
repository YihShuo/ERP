unit RYSearchDlg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TRYSearchDlg = class(TForm)
    Label1: TLabel;
    ED_RY: TEdit;
    Button1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure ED_RYKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RYSearchDlg: TRYSearchDlg;

implementation

uses
  ShoeUpperInventory1;

{$R *.dfm}
   
procedure TRYSearchDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TRYSearchDlg.FormDestroy(Sender: TObject);
begin
  RYSearchDlg := Nil;
end;

procedure TRYSearchDlg.Button1Click(Sender: TObject);
begin
  ShoeUpperInventory.SearchByKeyword(UPPERCASE(ED_RY.Text));
end;

procedure TRYSearchDlg.ED_RYKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    Button1Click(Nil);
end;

end.
