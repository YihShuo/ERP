unit OrderCopy1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables;

type
  TOrderCopy = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Query1: TQuery;
    Panel1: TPanel;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderCopy: TOrderCopy;

implementation

uses
  CD_SMDDList1;

{$R *.dfm}

procedure TOrderCopy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOrderCopy.FormDestroy(Sender: TObject);
begin
  OrderCopy := Nil;
end;

procedure TOrderCopy.Button1Click(Sender: TObject);
var
  OrderList: string;
begin
  OrderList := '';

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT ZLBH FROM CutDispatchS WHERE DLNO = ''' + Edit1.Text + ''' ORDER BY ZLBH');
    Active := true;

    while not Eof do
    begin
      OrderList := OrderList + FieldByName('ZLBH').AsString + ',';
      Next;
    end;
    OrderList := Copy(OrderList, 1, Length(OrderList)-1);
    Edit2.Text := OrderList;
  end;
end;

procedure TOrderCopy.Button2Click(Sender: TObject);
begin
  CD_SMDDList.DDBHEdit.Text := Edit2.Text;
  Close;
end;

end.
