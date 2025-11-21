unit Nosearch1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TNosearch = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Nosearch: TNosearch;

implementation

{$R *.dfm}

procedure TNosearch.FormClose(Sender: TObject; var Action: TCloseAction);
begin
free;
end;

procedure TNosearch.FormDestroy(Sender: TObject);
begin
Nosearch:=nil;
end;

end.
