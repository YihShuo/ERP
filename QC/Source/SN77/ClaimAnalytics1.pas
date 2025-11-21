unit ClaimAnalytics1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, DBTables, ComCtrls, Series, TeEngine,
  TeeFunci, TeeProcs, Chart, DbChart, GridsEh, DBGridEh;

type
  TClaimAnalytics = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Button3: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX8: TComboBox;
    Qry_Temp: TQuery;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    TS3: TTabSheet;
    qry_Cou: TQuery;
    qry_Mod: TQuery;
    qry_Art: TQuery;
    DS2: TDataSource;
    DS3: TDataSource;
    DS4: TDataSource;
    DBGridEh1: TDBGridEh;
    DBChart2: TDBChart;
    BarSeries2: TBarSeries;
    AddTeeFunction2: TAddTeeFunction;
    DBGridEh3: TDBGridEh;
    DBChart3: TDBChart;
    BarSeries3: TBarSeries;
    AddTeeFunction3: TAddTeeFunction;
    qry_Modpri: TStringField;
    qry_ModPO_Qty: TIntegerField;
    qry_ModTotal_Cost: TCurrencyField;
    qry_ArtArticle_num: TStringField;
    qry_ArtPO_Qty: TIntegerField;
    qry_ArtTotal_Cost: TCurrencyField;
    DBGridEh2: TDBGridEh;
    DBChart1: TDBChart;
    BarSeries1: TBarSeries;
    AddTeeFunction1: TAddTeeFunction;
    qry_CouSo: TStringField;
    qry_CouPO_Qty: TIntegerField;
    qry_CouTotal_Cost: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClaimAnalytics: TClaimAnalytics;

implementation

{$R *.dfm}

procedure TClaimAnalytics.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TClaimAnalytics.FormDestroy(Sender: TObject);
begin
  ClaimAnalytics:=Nil;
end;

procedure TClaimAnalytics.FormCreate(Sender: TObject);
var i : integer;
    Ndate:TDate;
begin
with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GETDATE() NDate');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
  end;

  i:=strtoint(formatdatetime('yyyy',Ndate))-5;
  CBX1.Clear;
  while i<(strtoint(formatdatetime('yyyy',Ndate))+3) do
  begin
    CBX1.Items.Add(inttostr(i));
    i:=i+1;
  end;
  CBX1.ItemIndex:=CBX1.Items.IndexOf(formatdatetime('yyyy',Ndate));
  CBX2.ItemIndex:=CBX2.Items.IndexOf(formatdatetime('MM',Ndate));
  CBX8.ItemIndex:=CBX8.Items.IndexOf(formatdatetime('MM',Ndate));
end;

procedure TClaimAnalytics.Button3Click(Sender: TObject);
begin
  with qry_Cou do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  SELECT top 3 SO,sum(cr.PO_Qty) PO_Qty,sum(isnull(cr.Total_Cost,0))Total_Cost   ');
    SQL.Add('  FROM Claim_Report cr   ');
    SQL.Add('  WHERE year(cr.Date_Claim_Initiated)='''+CBX1.Text+''' AND month(cr.Date_Claim_Initiated)='''+CBX2.Text+'''   ');
    SQL.Add('  AND ISNULL(SO,'''')<>'''' GROUP BY cr.SO  ');
    SQL.Add('  order by PO_Qty desc  ');
    active:=true;
  end;
  //
  with qry_Art do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  SELECT top 3 Article_num,sum(cr.PO_Qty) PO_Qty,sum(isnull(cr.Total_Cost,0))Total_Cost   ');
    SQL.Add('  FROM Claim_Report cr   ');
    SQL.Add('  WHERE year(cr.Date_Claim_Initiated)='''+CBX1.Text+''' AND month(cr.Date_Claim_Initiated)='''+CBX2.Text+'''   ');
    SQL.Add('  AND ISNULL(Article_num,'''')<>'''' GROUP BY cr.Article_num  ');
    SQL.Add('  order by PO_Qty DESC  ');
    active:=true;
  end;
  //
  with qry_Mod do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  SELECT top 3 pri,sum(cr.PO_Qty) PO_Qty,sum(isnull(cr.Total_Cost,0))Total_Cost   ');
    SQL.Add('  FROM Claim_Report cr   ');
    SQL.Add('  WHERE year(cr.Date_Claim_Initiated)='''+CBX1.Text+''' AND month(cr.Date_Claim_Initiated)='''+CBX2.Text+'''   ');
    SQL.Add('  AND ISNULL(pri,'''')<>'''' GROUP BY cr.pri  ');
    SQL.Add('  order by PO_Qty DESC  ');
    active:=true;
  end;
end;

end.
