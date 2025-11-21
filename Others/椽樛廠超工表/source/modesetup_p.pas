unit modesetup_p;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, DBTables, Grids, DBGrids, ExtCtrls, GridsEh,
  DBGridEh, StdCtrls;

type
  Tmoldsetup = class(TForm)
    Panel1: TPanel;
    Table1: TTable;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Table1mjbh: TStringField;
    Table1bz1: TStringField;
    Table1bz2: TStringField;
    Table1trm: TIntegerField;
    DBGridEh1: TDBGridEh;
    Table1lbdh: TStringField;
    Table1pmw: TIntegerField;
    Table1cost: TFloatField;
    Table1Yields: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  moldsetup: Tmoldsetup;

implementation

{$R *.dfm}

procedure Tmoldsetup.FormCreate(Sender: TObject);
begin
  table1.Active:=true;
end;

procedure Tmoldsetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  table1.Active:=false;
  action:=cafree;
end;

procedure Tmoldsetup.DBGridEh1DblClick(Sender: TObject);
begin
if moldsetup<>nil then
  begin
    moldsetup.show;
    moldsetup.windowstate:=wsmaximized;
  end
  else
    begin
      moldsetup:=Tmoldsetup.create(self);
      moldsetup.show;
    end;
end;

end.
