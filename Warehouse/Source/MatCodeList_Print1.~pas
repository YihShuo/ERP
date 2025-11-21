unit MatCodeList_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt;

type
  TMatCodeList_Print = class(TForm)
    QuickRep1: TQuickRep;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatCodeList_Print: TMatCodeList_Print;

implementation

{$R *.dfm}

procedure TMatCodeList_Print.FormDestroy(Sender: TObject);
begin
MatCodeList_Print:=nil;
end;

procedure TMatCodeList_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
