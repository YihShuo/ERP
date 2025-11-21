unit TestItemChoose1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, GridsEh, DBGridEh;

type
  TTestItemChoose = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    ComboBox1: TComboBox;
    Query1GSBH: TStringField;
    Query1Brand: TStringField;
    Query1TestID: TStringField;
    Query1TestReason: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestItemChoose: TTestItemChoose;

implementation

uses Shoetest1, main1;

{$R *.dfm}

procedure TTestItemChoose.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TTestItemChoose.FormCreate(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select GSBH,Brand,TestID,TestReason,UserID,UserDate from Lab_TestReason where gsbh='''+main.edit2.text+'''');
    Active:=true;
  end;
end;

procedure TTestItemChoose.DBGridEh1CellClick(Column: TColumnEh);
begin
   ShoeTest.query2.Edit;
   ShoeTest.query2.FieldByName('TestID').Value := query1.FieldByName('testID').Value;
   query1.active:=false;
   TestItemChoose.close;
end;

procedure TTestItemChoose.FormDestroy(Sender: TObject);
begin
  TestItemChoose := nil;
end;

procedure TTestItemChoose.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
