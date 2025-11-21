unit PaymentVATNO_ZS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables;

type
  TPaymentVATNO_ZS = class(TForm)
    Panel34: TPanel;
    Label62: TLabel;
    btn_QryPMZS: TButton;
    edt_code1: TEdit;
    DB_PMZS: TDBGridEh;
    DS_PMZS: TDataSource;
    qry_PMZS: TQuery;
    qry_PMZSzsdh: TStringField;
    qry_PMZSzsywjc: TStringField;
    qry_PMZSzsqm: TStringField;
    edt_code2: TEdit;
    Label68: TLabel;
    Label69: TLabel;
    procedure btn_QryPMZSClick(Sender: TObject);
    procedure DB_PMZSDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentVATNO_ZS: TPaymentVATNO_ZS;

implementation

uses PaymentVATNO1, main1, PaymentVATNO_DEP1;

{$R *.dfm}

procedure TPaymentVATNO_ZS.btn_QryPMZSClick(Sender: TObject);
begin
  with qry_PMZS do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  SELECT zsdh, zsqm, zsywjc ');
    SQL.Add('  FROM (SELECT zsdh, zsqm, zsywjc,YN FROM zszl UNION ALL SELECT zsdh, CAST(dbo.fSignsToNoSigns(zsqm) AS VARCHAR(200)) AS zsqm, CAST(dbo.fSignsToNoSigns(zsywjc) AS VARCHAR(200)) AS zsywjc,YN FROM zszl_pay )ZSZL  ');
    SQL.Add('  WHERE 1=1    ');
    if trim(edt_code1.Text) <>'' then
       SQL.Add('AND zsdh  like ''%'+edt_code1.Text+'%''  ');
    if trim(edt_code2.Text) <>'' then
       SQL.Add('AND zsywjc  like ''%'+edt_code2.Text+'%''  ');
    SQL.Add('AND YN=''2'' ');
    active:=true;
  end;
end;

procedure TPaymentVATNO_ZS.DB_PMZSDblClick(Sender: TObject);
begin
  if qry_PMZS.recordcount>0 then
  begin
    if PaymentVATNO.PC2.ActivePageIndex = 5 then
    begin
      with PaymentVATNO.qry_CGPayment do
      begin
        edit;
        fieldbyname('USERID_TAMUNG').value:=qry_PMZS.fieldbyname('ZSDH').value;
        fieldbyname('USERNAME_TAMUNG').value:=qry_PMZS.fieldbyname('zsywjc').value;
      end;
    end else begin
      with PaymentVATNO.qry_CGPayment do
      begin
        edit;
        fieldbyname('ZSBH').value:=qry_PMZS.fieldbyname('ZSDH').value;
        fieldbyname('zsqm').value:=qry_PMZS.fieldbyname('zsqm').value;
        fieldbyname('zsywjc').value:=qry_PMZS.fieldbyname('zsywjc').value;
      end;
    end;
  end;
end;

procedure TPaymentVATNO_ZS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_ZS.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_DEP:=nil;
end;

end.
