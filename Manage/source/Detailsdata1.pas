unit Detailsdata1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls;

type
  TDetailsData = class(TForm)
    DBGridEh1: TDBGridEh;
    q1: TQuery;
    q1LLNO: TStringField;
    q1DepName: TStringField;
    q1CLBH: TStringField;
    q1YWPM: TStringField;
    q1DWBH: TStringField;
    q1Qty: TCurrencyField;
    q1USPrice: TCurrencyField;
    q1USACC: TFloatField;
    q1BLSB: TStringField;
    q1SCBH: TStringField;
    q1CFMDate: TDateTimeField;
    q1ZWPM: TStringField;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DetailsData: TDetailsData;

implementation

{$R *.dfm}



procedure TDetailsData.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  q1.Active:=false;
end;

procedure TDetailsData.FormDestroy(Sender: TObject);
begin
  DetailsData:=nil;
end;

end.
