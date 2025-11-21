unit datasetup_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBTables;

type
  TDatasetup = class(TForm)
    DataSource1: TDataSource;
    Table1: TTable;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datasetup: TDatasetup;

implementation
  uses da;
{$R *.dfm}

procedure TDatasetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  table1.Active:=false;
  action:=cafree;
end;

procedure TDatasetup.FormCreate(Sender: TObject);
begin
  table1.Active:=true;
end;

end.
