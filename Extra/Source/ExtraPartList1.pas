unit ExtraPartList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TExtraPartList = class(TForm)
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraPartList: TExtraPartList;

implementation

{$R *.dfm}

procedure TExtraPartList.FormDestroy(Sender: TObject);
begin
ExtraPartList:=nil;
end;

procedure TExtraPartList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
