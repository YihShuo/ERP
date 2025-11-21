unit FindDlg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFindDlg = class(TForm)
    Panel1: TPanel;
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
  FindDlg: TFindDlg;

implementation

uses
  ProductionPlanTracking1;

{$R *.dfm}
   
procedure TFindDlg.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFindDlg.FormDestroy(Sender: TObject);
begin
  FindDlg := Nil;
end;

procedure TFindDlg.Button1Click(Sender: TObject);
begin
  ProductionPlanTracking.SearchByKeyword(UPPERCASE(ED_RY.Text));
end;

procedure TFindDlg.ED_RYKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    Button1Click(Nil);
end;

end.
