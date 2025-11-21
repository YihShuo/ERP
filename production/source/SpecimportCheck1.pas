unit SpecimportCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DBTables;

type
  TSpecimportCheck = class(TForm)
    Query1: TQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1DDBH: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1CCGB: TStringField;
    Query1KHBH: TStringField;
    Query1BB: TStringField;
    Query1KHPO: TStringField;
    Query1Version: TSmallintField;
    Query1Trader: TStringField;
    Query1TraderPO: TStringField;
    Query1DDLB: TStringField;
    Query1DDZT: TStringField;
    Query1CPLB: TStringField;
    Query1BZFS: TStringField;
    Query1Dest: TStringField;
    Query1DDGB: TStringField;
    Query1DDRQ: TStringField;
    Query1JYTJ: TStringField;
    Query1FKTJ: TStringField;
    Query1ShipDate: TStringField;
    Query1Pairs: TIntegerField;
    Query1Totals: TFloatField;
    Query1ZLBH: TStringField;
    Query1GSDH: TStringField;
    Query1CFNO: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TStringField;
    Query1DDCZ: TStringField;
    Query1DDPACKSM: TStringField;
    Query1LABELCHARGE: TFloatField;
    Query1SC01: TStringField;
    Query1SC02: TStringField;
    Query1PUMAPO: TStringField;
    Query1Pairs1: TIntegerField;
    Query1balance: TStringField;
    Query1XieMing: TStringField;
    Query1CQDH: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecimportCheck: TSpecimportCheck;

implementation

{$R *.dfm}

procedure TSpecimportCheck.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select LIY_SHOE.dbo.DDZL.*,LIY_SHOE.dbo.XXZL.XieMing,LIY_SHOE.dbo.ZLZL.CQDH');
    sql.add('from LIY_SHOE.dbo.DDZL');
    sql.add('left join LIY_SHOE.dbo.XXZL on LIY_SHOE.dbo.XXZl.XieXing=LIY_SHOE.dbo.DDZl.XieXIng ');
    sql.add('                               and LIY_SHOE.dbo.XXZl.SheHao=LIY_SHOE.dbo.DDZL.SheHao ');
    sql.add('left join LIY_SHOE.dbo.ZLZL on LIY_SHOE.dbo.ZLZL.ZLBH=LIY_SHOE.dbo.DDZL.ZLBH ');
    sql.add('left join LIY_SHOE.dbo.kfzl on LIY_SHOE.dbo.KFZl.KFDH=LIY_SHOE.dbo.DDZL.KHBH');
    sql.add('where LIY_SHOE.dbo.DDZL.DDBH like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and LIY_SHOE.dbo.XXZL.XieMing like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and LIY_SHOE.dbo.KFZl.KFJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('      and LIY_SHOE.dbo.XXZL.Article like '+''''+'%'+edit4.Text+'%'+'''');
    sql.add('order by LIY_SHOE.dbo.DDZl.DDBH ');
    active:=true;
  end;

end;

procedure TSpecimportCheck.FormDestroy(Sender: TObject);
begin
specimportcheck:=nil;
end;

procedure TSpecimportCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
