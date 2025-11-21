unit ScanRubStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, PrnDbgeh, DB, DBTables, GridsEh, DBGridEh,
  ExtCtrls;

type
  TScanRubStock = class(TForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Button1: TButton;
    CB1: TComboBox;
    CBX3: TComboBox;
    DBGridEh1: TDBGridEh;
    DailyOrd: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Print1: TMenuItem;
    Excel1: TMenuItem;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanRubStock: TScanRubStock;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TScanRubStock.FormDestroy(Sender: TObject);
begin
ScanRubStock:=nil;
end;

procedure TScanRubStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TScanRubStock.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.Text:=main.edit2.Text;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate '); 
    active:=true;
    NDate:=fieldbyname('NDate').value;     
    active:=false;
    sql.Clear;
    sql.add('select distinct GX from SCGXDY order by GX');
    active:=true;
    for i:=1 to recordcount do
      begin
        CBX3.Items.Add(fieldbyname('GX').asstring);
        next;
      end;
    active:=false;
  end;

end;

end.
