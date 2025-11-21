unit colorsetupP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBCtrls, DBTables, ExtCtrls;

type
  Tcolorsetup = class(TForm)
    Panel1: TPanel;
    Table1: TTable;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Table1ColorNo: TStringField;
    Table1EnglishName: TStringField;
    Table1ChinaNmae: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  colorsetup: Tcolorsetup;

implementation

{$R *.dfm}

procedure Tcolorsetup.FormCreate(Sender: TObject);
begin
  table1.Active:=true;
end;

procedure Tcolorsetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  table1.Active:=false;
  action:=cafree;
  colorsetup:=nil;  
end;

procedure Tcolorsetup.FormDeactivate(Sender: TObject);
begin
  colorsetup:=nil;
end;

end.
