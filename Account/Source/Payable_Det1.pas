unit Payable_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Menus, DB, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids, GridsEh, DBGridEh;

type
  TPayable_Det = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CB1: TComboBox;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZSBH: TStringField;
    Query1DJLX: TStringField;
    Query1DJNO: TStringField;
    Query1CGBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Query1CWHL: TIntegerField;
    Query1VNPrice: TFloatField;
    Query1VNACC: TFloatField;
    Query1DJDATE: TDateTimeField;
    Query1CostID: TStringField;
    Query1FKZT: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    CWHLS: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Payable_Det: TPayable_Det;

implementation

{$R *.dfm}

procedure TPayable_Det.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TPayable_Det.FormDestroy(Sender: TObject);
begin
Payable_Det:=nil;
end;

end.
