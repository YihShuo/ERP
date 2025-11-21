unit SpecimportCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DBTables;

type
  TSpecimportCheck = class(TForm)
    qrMain: TQuery;
    pnTop: TPanel;
    lbDDBH: TLabel;
    lbXieMing: TLabel;
    lbCustomer: TLabel;
    edDDBH: TEdit;
    edXieMing: TEdit;
    bnQuery: TButton;
    edCustomer: TEdit;
    lbSKU: TLabel;
    edSKU: TEdit;
    gdMain: TDBGridEh;
    dsMain: TDataSource;
    qrMainDDBH: TStringField;
    qrMainXieXing: TStringField;
    qrMainSheHao: TStringField;
    qrMainARTICLE: TStringField;
    qrMainCCGB: TStringField;
    qrMainKHBH: TStringField;
    qrMainBB: TStringField;
    qrMainKHPO: TStringField;
    qrMainVersion: TSmallintField;
    qrMainTrader: TStringField;
    qrMainTraderPO: TStringField;
    qrMainDDLB: TStringField;
    qrMainDDZT: TStringField;
    qrMainCPLB: TStringField;
    qrMainBZFS: TStringField;
    qrMainDest: TStringField;
    qrMainDDGB: TStringField;
    qrMainDDRQ: TStringField;
    qrMainJYTJ: TStringField;
    qrMainFKTJ: TStringField;
    qrMainShipDate: TStringField;
    qrMainPairs: TIntegerField;
    qrMainTotals: TFloatField;
    qrMainZLBH: TStringField;
    qrMainGSDH: TStringField;
    qrMainCFNO: TStringField;
    qrMainUSERID: TStringField;
    qrMainUSERDATE: TStringField;
    qrMainDDCZ: TStringField;
    qrMainDDPACKSM: TStringField;
    qrMainLABELCHARGE: TFloatField;
    qrMainSC01: TStringField;
    qrMainSC02: TStringField;
    qrMainPUMAPO: TStringField;
    qrMainPairs1: TIntegerField;
    qrMainbalance: TStringField;
    qrMainXieMing: TStringField;
    qrMainCQDH: TStringField;
    procedure bnQueryClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SpecimportCheck: TSpecimportCheck;

implementation

uses main1;

{$R *.dfm}

procedure TSpecimportCheck.bnQueryClick(Sender: TObject);
begin
  with qrMain do
  begin
    active:=false;
    sql.Clear;
    sql.add('select LIY_SHOE.dbo.DDZL.*,LIY_SHOE.dbo.XXZL.XieMing,LIY_SHOE.dbo.ZLZL.CQDH');
    sql.add('from LIY_SHOE.dbo.DDZL');
    sql.add('left join LIY_SHOE.dbo.XXZL on LIY_SHOE.dbo.XXZl.XieXing=LIY_SHOE.dbo.DDZl.XieXIng ');
    sql.add('                               and LIY_SHOE.dbo.XXZl.SheHao=LIY_SHOE.dbo.DDZL.SheHao ');
    sql.add('left join LIY_SHOE.dbo.ZLZL on LIY_SHOE.dbo.ZLZL.ZLBH=LIY_SHOE.dbo.DDZL.ZLBH ');
    sql.add('left join LIY_SHOE.dbo.kfzl on LIY_SHOE.dbo.KFZl.KFDH=LIY_SHOE.dbo.DDZL.KHBH');
    sql.add('where LIY_SHOE.dbo.DDZL.DDBH like '+''''+'%'+edDDBH.Text+'%'+'''');
    sql.add('      and LIY_SHOE.dbo.XXZL.XieMing like '+''''+'%'+edXieMing.Text+'%'+'''');
    sql.add('      and LIY_SHOE.dbo.KFZl.KFJC like '+''''+'%'+edCustomer.Text+'%'+'''');
    sql.add('      and LIY_SHOE.dbo.XXZL.Article like '+''''+'%'+edSKU.Text+'%'+'''');
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

procedure TSpecimportCheck.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
