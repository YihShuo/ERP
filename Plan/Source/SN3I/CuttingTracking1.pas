unit CuttingTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TCuttingTracking = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    DTP_P1: TDateTimePicker;
    Label2: TLabel;
    CB_Building_P: TComboBox;
    Label3: TLabel;
    CB_Lean_P: TComboBox;
    Button1: TButton;
    DTP_P2: TDateTimePicker;
    Label4: TLabel;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CuttingTracking: TCuttingTracking;

implementation

{$R *.dfm}

procedure TCuttingTracking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCuttingTracking.FormDestroy(Sender: TObject);
begin
  CuttingTracking := Nil;
end;

procedure TCuttingTracking.FormCreate(Sender: TObject);
begin
  DTP_P1.Date := Date;
  DTP_P2.Date := Date;
end;

end.
