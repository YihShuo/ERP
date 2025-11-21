unit FeeMaterialOrd_Det1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TFeeMaterialOrd_Det = class(TForm)
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1LLNO: TStringField;
    Query1DepName: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1Qty: TCurrencyField;
    Query1VNPrice: TFloatField;
    Query1VNACC: TFloatField;
    Query1SCBH: TStringField;
    Query1DFL: TStringField;
    Query1BLSB: TStringField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FeeMaterialOrd_Det: TFeeMaterialOrd_Det;

implementation

{$R *.dfm}

end.
