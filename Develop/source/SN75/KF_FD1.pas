unit KF_FD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh;

type
  TKF_FD = class(TForm)
    dbgrdh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1FD: TStringField;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KF_FD: TKF_FD;

implementation
uses  PaperRoom_shoeTest;
{$R *.dfm}





end.
