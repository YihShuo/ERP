unit ExtraMatList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TExtraMatList = class(TForm)
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMatList: TExtraMatList;

implementation

{$R *.dfm}

procedure TExtraMatList.FormDestroy(Sender: TObject);
begin
ExtraMatList:=nil;
end;

procedure TExtraMatList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
