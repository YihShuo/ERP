unit SampleFinishShoeStock_Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, ComCtrls, GridsEh, DBGridEh, ExtCtrls, Menus,
  DBTables, DateUtils, Comobj ,IniFiles;

type
  TSampleFinishShoeStock_Detail = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    DBGridEh2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query2: TQuery;
    Query1TestNO: TStringField;
    Query1YPDH: TStringField;
    Query1Article: TStringField;
    Query1Complete: TDateTimeField;
    Query1Qty: TFloatField;
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
  SampleFinishShoeStock_Detail: TSampleFinishShoeStock_Detail;

implementation
  uses SampeFinishShoeStock1,FunUnit;
{$R *.dfm}

procedure TSampleFinishShoeStock_Detail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSampleFinishShoeStock_Detail.FormDestroy(Sender: TObject);
begin
  SampleFinishShoeStock_Detail:=nil;
end;

procedure TSampleFinishShoeStock_Detail.ShowDetail();
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

procedure TSampleFinishShoeStock_Detail.FormCreate(Sender: TObject);
begin
  ShowDetail();
end;

end.
