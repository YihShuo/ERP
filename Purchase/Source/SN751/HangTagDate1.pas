unit HangTagDate1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  THangTagDate = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    B_OK: TButton;
    B_Cancel: TButton;
    procedure FormCreate(Sender: TObject);
    procedure B_OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HangTagDate: THangTagDate;

implementation

uses
  PurSampleInvoice1;

{$R *.dfm}

procedure THangTagDate.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date;
end;

procedure THangTagDate.B_OKClick(Sender: TObject);
begin
  PurSampleInvoice.TagDate := FormatDateTime('yyyy/MM/dd', DTP1.Date);
end;

end.
