unit AccountCal_entry1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt;

type
  TAccountCal_entry = class(TForm)
    QuickRep1: TQuickRep;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountCal_entry: TAccountCal_entry;

implementation

{$R *.dfm}

procedure TAccountCal_entry.FormDestroy(Sender: TObject);
begin
AccountCal_entry:=nil;
end;

procedure TAccountCal_entry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
