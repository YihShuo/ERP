unit CapacityPer1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TCapacityPer = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }     
  public
    { Public declarations }
  end;

var
  CapacityPer: TCapacityPer;

implementation

{$R *.dfm}

procedure TCapacityPer.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TCapacityPer.FormDestroy(Sender: TObject);
begin
CapacityPer:=nil;
end;

end.
