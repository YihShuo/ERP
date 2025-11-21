unit BarPrint_P1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, QRPDFFilt;

type
  TBarPrint_P = class(TForm)
    QRPDFFilter1: TQRPDFFilter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BarPrint_P: TBarPrint_P;

implementation

{$R *.dfm}

procedure TBarPrint_P.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TBarPrint_P.FormDestroy(Sender: TObject);
begin
barprint_P:=nil;
end;

end.
