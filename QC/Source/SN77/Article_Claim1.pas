unit Article_Claim1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TArticle_Claim = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    btn1: TButton;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    dbg_AC: TDBGridEh;
    qry_AC: TQuery;
    ds_AC: TDataSource;
    strngfld_ACARTICLE: TStringField;
    strngfld_ACCategory: TStringField;
    strngfld_ACXieMing: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure dbg_ACDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Article_Claim: TArticle_Claim;

implementation

{$R *.dfm}

uses Claim_Report1;

procedure TArticle_Claim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TArticle_Claim.FormDestroy(Sender: TObject);
begin
  Article_Claim := nil;
end;

procedure TArticle_Claim.btn1Click(Sender: TObject);
begin
  with qry_AC do
  begin
    Close;
    SQL.Clear;
    SQL.Add('  select x.ARTICLE, x.XieMing, xkf.Category from xxzl x ');
    SQL.Add('  LEFT JOIN XXZLKF xkf ON xkf.XieXing = x.XieXing and xkf.SheHao = x.SheHao');
    SQL.Add('  where 1 = 1 ');
    if edt1.Text <> '' then
      SQL.Add(' and x.ARTICLE like ''%'+edt1.Text+'%'' ');
    if edt2.Text <> '' then
      SQL.Add(' and x.XieMing like ''%'+edt2.Text+'%'' ');
    Active := True;
  end;
end;

procedure TArticle_Claim.dbg_ACDblClick(Sender: TObject);
begin
  Claim_Report.qry_CR.Edit;
  Claim_Report.qry_CR.FieldByName('Article').AsString := qry_AC.FieldByName('ARTICLE').AsString;
  Claim_Report.qry_CR.FieldByName('Category').AsString := qry_AC.FieldByName('Category').AsString;
  Close;
end;

end.
