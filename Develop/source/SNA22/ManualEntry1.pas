unit ManualEntry1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TManualEntry = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_InvoiceNo: TEdit;
    Label2: TLabel;
    ED_PO: TEdit;
    Label3: TLabel;
    ED_MaterialNo: TEdit;
    Button1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ManualEntry: TManualEntry;

implementation

uses
  ColorSwatchScan1;

{$R *.dfm}

procedure TManualEntry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TManualEntry.FormDestroy(Sender: TObject);
begin
  ManualEntry := Nil;
end;

procedure TManualEntry.Button1Click(Sender: TObject);
begin
  ColorSwatchScan.ReadBarcode(ED_InvoiceNo.Text, ED_PO.Text, ED_MaterialNo.Text);
  Close;
end;

end.
