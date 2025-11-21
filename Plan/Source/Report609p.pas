unit Report609p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TReport609 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    sd: TDateTimePicker;
    Label3: TLabel;
    ed: TDateTimePicker;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report609: TReport609;

implementation

{$R *.dfm}

procedure TReport609.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TReport609.FormDestroy(Sender: TObject);
begin
Report609:=nil;
end;

procedure TReport609.FormCreate(Sender: TObject);
begin
   sd.Date:=now-30;
   ed.Date:=now;
end;

end.
