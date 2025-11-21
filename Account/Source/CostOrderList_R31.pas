unit CostOrderList_R31;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TCostOrderList_R3 = class(TForm)
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CostOrderList_R3: TCostOrderList_R3;

implementation

{$R *.dfm}

procedure TCostOrderList_R3.FormDestroy(Sender: TObject);
begin
CostOrderList_R3:=nil;
end;

procedure TCostOrderList_R3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
