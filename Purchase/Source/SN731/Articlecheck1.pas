unit Articlecheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, Grids, DBGrids, StdCtrls, Mask,
  DBCtrls, ExtCtrls;

type
  TArticlecheck = class(TForm)
    ypzl: TQuery;
    ds1: TDataSource;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    YPCC: TDBEdit;
    YPCCO: TDBEdit;
    YPCCL: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ypzls: TQuery;
    ypzlYPCC: TStringField;
    ypzlYPCCO: TStringField;
    ypzlYPCCL: TStringField;
    ds2: TDataSource;
    ypzlsbwdh: TStringField;
    ypzlsywsm: TStringField;
    ypzlsclsl: TFloatField;
    Label4: TLabel;
    Quantity: TDBEdit;
    ypzlQuantity: TFloatField;
    ypzlYPCCM: TStringField;
    Label5: TLabel;
    YPCCM: TDBEdit;
    Label6: TLabel;
    YPCCI: TDBEdit;
    Label7: TLabel;
    YPCCIL: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    YPCCSS: TDBEdit;
    YPCCOL: TDBEdit;
    ypzlYPCCI: TStringField;
    ypzlYPCCIL: TStringField;
    ypzlYPCCOL: TStringField;
    ypzlYPCCSS: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Articlecheck: TArticlecheck;

implementation

uses PurSample1;

{$R *.dfm}

procedure TArticlecheck.FormCreate(Sender: TObject);
begin
  ypzl.Active:=true;
  ypzls.Active:=true;
end;

procedure TArticlecheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TArticlecheck.FormDestroy(Sender: TObject);
begin
  Articlecheck:=nil;
end;

end.
