unit SampleShoeStock_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DateUtils, IniFiles, fununit;

type
  TSampleShoeStock_Detail = class(TForm)
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1TestNO: TStringField;
    Query1YPDH: TStringField;
    Query1Article: TStringField;
    Query1Complete: TDateTimeField;
    Query1Qty: TFloatField;
    DS2: TDataSource;
    Query2: TQuery;
    Query2TestNO: TStringField;
    Query2YPDH: TStringField;
    Query2Article: TStringField;
    Query2shipdate_final: TDateTimeField;
    Query2Qty: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowDetail();
  end;

var
  SampleShoeStock_Detail: TSampleShoeStock_Detail;

implementation

uses StockShoeMonth1;

{$R *.dfm}

procedure TSampleShoeStock_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSampleShoeStock_Detail.FormDestroy(Sender: TObject);
begin
  SampleShoeStock_Detail:=nil;
end;

procedure TSampleShoeStock_Detail.FormCreate(Sender: TObject);
begin
  ShowDetail();
end;

procedure TSampleShoeStock_Detail.ShowDetail();
begin
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  Shoetest.TestNO,Shoetest.YPDH, Shoetest.Article, Shoetest.Complete,Sum(shoetest2.qty) as Qty');
    SQL.Add('from shoetest');
    SQL.Add('left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('where 1=1  and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('and shoetest.testno=:TestNo');
    SQL.Add('group by Shoetest.TestNO,Shoetest.YPDH, Shoetest.Article, Shoetest.Complete');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select  Shoetest.TestNO,Shoetest.YPDH, Shoetest.Article, shoetestshipping.shipdate_final,Sum(shoetestshipping.qty) as Qty');
    SQL.Add('from shoetest');
    SQL.Add('left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno');
    SQL.Add('where 1=1  and SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('and shoetest.testno =:TestNo');
    SQL.Add('group by  Shoetest.TestNO,Shoetest.YPDH, Shoetest.Article, shoetestshipping.shipdate_final');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

end.
