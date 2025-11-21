unit EmbroiderPay1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TEmbroiderPay = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button3: TButton;
    DB1: TCheckBox;
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmbroiderPay: TEmbroiderPay;

implementation

{$R *.dfm}

procedure TEmbroiderPay.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TEmbroiderPay.FormDestroy(Sender: TObject);
begin
EmbroiderPay:=nil;
end;

end.
