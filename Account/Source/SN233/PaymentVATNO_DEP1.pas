unit PaymentVATNO_DEP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables;

type
  TPaymentVATNO_DEP = class(TForm)
    Panel22: TPanel;
    Label63: TLabel;
    btn_QryPMDEP: TButton;
    edt_code2: TEdit;
    DB_PMDEP: TDBGridEh;
    DS_PMDEP: TDataSource;
    qry_PMDEP: TQuery;
    qry_PMDEPID: TStringField;
    qry_PMDEPDepName: TStringField;
    qry_PMDEPDepMemo: TStringField;
    qry_PMDEPGSBH: TStringField;
    edt_code1: TEdit;
    Label68: TLabel;
    Label69: TLabel;
    procedure btn_QryPMDEPClick(Sender: TObject);
    procedure DB_PMDEPDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentVATNO_DEP: TPaymentVATNO_DEP;

implementation

uses PaymentVATNO1, main1;

{$R *.dfm}

procedure TPaymentVATNO_DEP.btn_QryPMDEPClick(Sender: TObject);
begin
  with qry_PMDEP do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  SELECT ID, DepName, DepMemo, GSBH FROM BDepartment ');
    SQL.Add('  WHERE 1=1   --and GSBH='''+main.Edit2.Text+'''  ');
    if trim(edt_code1.Text) <>'' then
       SQL.Add('AND ID  like ''%'+edt_code1.Text+'%''  ');
    if trim(edt_code2.Text) <>'' then
       SQL.Add('AND DepName  like ''%'+edt_code2.Text+'%''  ');
    active:=true;
  end;
end;

procedure TPaymentVATNO_DEP.DB_PMDEPDblClick(Sender: TObject);
begin
  if qry_PMDEP.recordcount>0 then
  begin
    with PaymentVATNO.qry_CGPayment do
    begin
      edit;
      fieldbyname('DEPID').value:=qry_PMDEP.fieldbyname('ID').value;
      fieldbyname('DepName').value:=qry_PMDEP.fieldbyname('DepName').value;
      fieldbyname('GSBH').value:=qry_PMDEP.fieldbyname('GSBH').value;
    end;
  end;
end;

procedure TPaymentVATNO_DEP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_DEP.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_DEP:=nil;
end;

end.
