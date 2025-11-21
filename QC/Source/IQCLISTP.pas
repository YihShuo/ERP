unit IQCLISTP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, ExtCtrls, StdCtrls, Mask, DBCtrls;

type
  TIQCLIST = class(TForm)
    Panel1: TPanel;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1IQCDATE: TDateTimeField;
    Query1PASS: TStringField;
    Query1memo: TStringField;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IQCLIST: TIQCLIST;

implementation

uses Inspectp;

{$R *.dfm}

procedure TIQCLIST.FormCreate(Sender: TObject);
begin
  query1.Active:=true;
end;

procedure TIQCLIST.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  query1.Active:=false;
  iqclist:=nil;
  action:=Cafree;
end;

end.
