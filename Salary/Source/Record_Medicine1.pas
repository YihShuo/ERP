unit Record_Medicine1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TRecord_Medicine = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ID: TStringField;
    Query1MedName: TStringField;
    Query1Unit: TStringField;
    Query1Qty: TFloatField;
    Query1MedPrice: TFloatField;
    Query1Memo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Record_Medicine: TRecord_Medicine;

implementation

uses RecordMed1;

{$R *.dfm}

procedure TRecord_Medicine.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
RecordMed.enabled:=true;
end;

procedure TRecord_Medicine.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
 edit2.SetFocus;
end;

procedure TRecord_Medicine.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add('select * from RsMedicine ');
    sql.add('where ID like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and Medname like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by ID');
    active:=true;
  end;
end;

procedure TRecord_Medicine.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.Click;
end;

procedure TRecord_Medicine.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
    DBGrid1DblClick(nil);
end;

procedure TRecord_Medicine.DBGrid1DblClick(Sender: TObject);
begin
RecordMed.QRecDet.edit;
RecordMed.QRecDet.FieldByName('MedID').Value:=query1.fieldbyname('ID').Value;
RecordMed.QRecDet.FieldByName('MedName').Value:=query1.fieldbyname('MedName').Value;
RecordMed.QRecDet.FieldByName('Unit').Value:=query1.fieldbyname('Unit').Value; 
RecordMed.QRecDet.FieldByName('StockQty').Value:=query1.fieldbyname('Qty').Value;
Close;
end;

procedure TRecord_Medicine.FormDestroy(Sender: TObject);
begin
Record_Medicine:=nil;
end;

end.
