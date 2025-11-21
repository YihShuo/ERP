unit dmp;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm = class(TDataModule)
    ADOConnection1: TADOConnection;
    inv_calss: TADOQuery;
    inv_come: TADOQuery;
    inv_mode: TADOQuery;
    inv_master: TADOQuery;
    inv_se: TADOQuery;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    adsclass: TADODataSet;
    adscome: TADODataSet;
    adsmode: TADODataSet;
    adsmaster: TADODataSet;
    adsse: TADODataSet;
    ADODataSet6: TADODataSet;
    ADODataSet7: TADODataSet;
    dsclass: TDataSource;
    dscome: TDataSource;
    dsmode: TDataSource;
    damaster: TDataSource;
    dsse: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
