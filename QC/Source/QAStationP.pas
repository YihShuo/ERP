unit QAStationP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ExtCtrls, DBTables, StdCtrls, Mask, DBCtrls;

type
  TQAStation = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Table1: TTable;
    Table1GSBH: TStringField;
    Table1csid: TStringField;
    Table1csname: TStringField;
    Table1cglx: TStringField;
    Table1userid: TStringField;
    Table1userdate: TDateTimeField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QAStation: TQAStation;

implementation

{$R *.dfm}

procedure TQAStation.FormDestroy(Sender: TObject);
begin
  QAStation:=nil;
end;

procedure TQAStation.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
