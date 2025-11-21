unit OrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TOrderList = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    edt1: TEdit;
    edt2: TEdit;
    pnl2: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1DDBH: TStringField;
    Query1XieMing: TStringField;
    Query1Pairs: TIntegerField;
    Query1KHPO: TStringField;
    Query1ShipDate: TDateTimeField;
    Query1Article: TStringField;
    Label1: TLabel;
    edt3: TEdit;
    Query1Category: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderList: TOrderList;

implementation

{$R *.dfm}

uses main1, Claim_Report1;

procedure TOrderList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOrderList.FormDestroy(Sender: TObject);
begin
  OrderList:=nil;
end;

procedure TOrderList.btn1Click(Sender: TObject);
begin
  if (edt1.Text = '') and (edt2.Text='') and (edt3.Text='') then
  begin
    ShowMessage('Pls enter at least one condition.');
    Abort;
  end;
  //
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('  select DDZL.DDBH, XXZL.XieMing,DDZL.Pairs,DDZL.KHPO,DDZL.ShipDate,DDZL.Article,kfxxzl.Category  ');
    SQL.Add('  from DDZL  ');
    SQL.Add('  left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao  ');
    SQL.Add('  left join DDZLQC qc ON qc.DDBH = DDZL.DDBH   ');
    SQL.Add('  left join kfxxzl ON kfxxzl.XieXing = DDZL.XieXing AND kfxxzl.SheHao = DDZL.SheHao');
    SQL.Add('  where DDZL.GSBH='''+main.Edit2.Text+''' ');
    if edt1.Text <> '' then
      SQL.Add('  and DDZL.DDBH like '''+edt1.Text+'%'' ');
    if edt2.Text <> '' then
      SQL.Add('  and DDZL.ARTICLE like '''+edt2.Text+'%'' ');
    if edt3.Text <> '' then
      SQL.Add(' and DDZL.KHPO like '''+edt3.Text+'%''');
    SQL.Add('  and DDZL.DDZT <> ''C''  ');
    active:=true;
  end;
end;

procedure TOrderList.DBGridEh1DblClick(Sender: TObject);
begin
  with Query1 do
  begin
    Claim_Report.Qry_Inspection.Edit;
    Claim_Report.Qry_Inspection.FieldByName('DDBH').AsString := FieldByName('DDBH').AsString;
    Claim_Report.Qry_Inspection.FieldByName('Article').AsString := FieldByName('Article').AsString;
    Claim_Report.Qry_Inspection.FieldByName('XieMing').AsString := FieldByName('XieMing').AsString;
    Claim_Report.Qry_Inspection.FieldByName('Pairs').AsString := FieldByName('Pairs').AsString;
    Claim_Report.Qry_Inspection.FieldByName('KHPO').AsString := FieldByName('KHPO').AsString;
    Claim_Report.Qry_Inspection.FieldByName('Category').AsString := FieldByName('Category').AsString;
  end;
  Close;
end;

end.
