unit CostOrderList_R21;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TCostOrderList_R2 = class(TForm)
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostOrderList_R2: TCostOrderList_R2;

implementation

{$R *.dfm}

procedure TCostOrderList_R2.FormDestroy(Sender: TObject);
begin
CostOrderList_R2:=nil;
end;

procedure TCostOrderList_R2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
