unit FirstStock_Price1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFirstStock_Price = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TFloatField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FirstStock_Price: TFirstStock_Price;

implementation

uses main1, FirstStock1;

{$R *.dfm}

procedure TFirstStock_Price.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select distinct CLBH,USPrice,VNPrice ');
    sql.add('from KCRKS ');
    sql.add('where ((USPrice is not null) or (VNPrice is not null)) ');
    sql.add('       and CLBH='+''''+edit1.Text+'''');
    active:=true;
  end;

end;

procedure TFirstStock_Price.FormDestroy(Sender: TObject);
begin
  Firststock_Price:=nil;
end;

procedure TFirstStock_Price.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TFirstStock_Price.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;

  if (Query1.recordcount<1) then
  begin
    abort;
  end;

  with Firststock.KCCLMONTH do
  begin
    edit;
    if query1.fieldbyname('USPrice').isnull then
    begin
      fieldbyname('VNPrice').value:=query1.fieldbyname('VNPrice').value;
      fieldbyname('VNACC').value:=trunc(query1.fieldbyname('VNPrice').value*fieldbyname('Qty').value+0.5);
    end else
    begin
      fieldbyname('VNPrice').value:=trunc(query1.fieldbyname('USPrice').value*16484+0.5);
      fieldbyname('VNACC').value:=trunc(trunc(query1.fieldbyname('USPrice').value*16484+0.5)*fieldbyname('Qty').value+0.5);
    end;
  end;
  close;
end;

procedure TFirstStock_Price.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

end.
