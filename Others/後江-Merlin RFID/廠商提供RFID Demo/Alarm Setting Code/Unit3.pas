unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    edtIPAddress: TEdit;
    lbl2: TLabel;
    edtMask: TEdit;
    lbl3: TLabel;
    edtGateway: TEdit;
    lbl4: TLabel;
    edtPort: TEdit;
    btnOK: TButton;
    btnCancel: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
