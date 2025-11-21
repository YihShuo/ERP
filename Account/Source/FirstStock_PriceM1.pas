unit FirstStock_PriceM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFirstStock_PriceM = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLDH: TStringField;
    Query1CLBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TFloatField;
    DBGridEh1: TDBGridEh;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FirstStock_PriceM: TFirstStock_PriceM;

implementation

uses main1;

{$R *.dfm}

procedure TFirstStock_PriceM.Button1Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select distinct CLZHZL.CLDH,KCRKS.CLBH,KCRKS.USPrice,KCRKS.VNPrice ');
    sql.add('from CLZHZL ');
    sql.add('left join KCRKS on KCRKS.CLBH=CLZHZL.CLDH');
    sql.add('where ((KCRKS.USPrice is not null) or (KCRKS.VNPrice is not null)) ');
    sql.add('       and CLZHZL.CLDH='+''''+edit1.Text+'''');
    active:=true;
  end;
end;

procedure TFirstStock_PriceM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

procedure TFirstStock_PriceM.FormDestroy(Sender: TObject);
begin
Firststock_priceM:=nil;
end;

end.
