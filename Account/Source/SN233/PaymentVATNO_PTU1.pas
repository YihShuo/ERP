unit PaymentVATNO_PTU1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls;

type
  TPaymentVATNO_PTU = class(TForm)
    Panel22: TPanel;
    Label63: TLabel;
    Label68: TLabel;
    btn_QryPMDEP: TButton;
    edt_code1: TEdit;
    qry5: TQuery;
    qry5FKBH: TStringField;
    DS5: TDataSource;
    DBGridEh6: TDBGridEh;
    qry5THANHTOAN: TCurrencyField;
    qry5NGAY_TAMUNG: TDateTimeField;
    qry5NGAY_DUTINH_TT: TDateTimeField;
    qry5USERID_TAMUNG: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_QryPMDEPClick(Sender: TObject);
    procedure DBGridEh6DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentVATNO_PTU: TPaymentVATNO_PTU;

implementation

uses PaymentVATNO1, main1;

{$R *.dfm}

procedure TPaymentVATNO_PTU.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_PTU:=nil;
end;

procedure TPaymentVATNO_PTU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_PTU.btn_QryPMDEPClick(Sender: TObject);
begin
  with qry5 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SELECT CGZL_AdvanceS.FKBH, sum(SOTIEN_TT) THANHTOAN, NGAY_TAMUNG, NGAY_DUTINH_TT,CGZL_Payment.USERID_TAMUNG FROM CGZL_AdvanceS ');
    SQL.Add('LEFT JOIN CGZL_Payment ON CGZL_Payment.FKBH=CGZL_AdvanceS.FKBH AND CGZL_Payment.HD_LOAI=''6'' ');
    SQL.Add('WHERE 1=1 AND isnull(CGZL_Payment.FKBH_S,''N'')<>''Y'' and CGZL_Payment.YN=''5'' --and GSBH='''+main.Edit2.Text+'''  ');
    if trim(edt_code1.Text) <>'' then
       SQL.Add('   AND CGZL_AdvanceS.FKBH  like ''%'+edt_code1.Text+'%''  ');
    SQL.Add('GROUP BY CGZL_AdvanceS.FKBH, NGAY_TAMUNG, NGAY_DUTINH_TT,CGZL_Payment.USERID_TAMUNG ');
    active:=true;
  end;
end;

procedure TPaymentVATNO_PTU.DBGridEh6DblClick(Sender: TObject);
begin
  if qry5.recordcount>0 then
  begin
    with PaymentVATNO.qry_TTPTU do
    begin
      edit;
      fieldbyname('fkbh_ttt').value:=qry5.fieldbyname('FKBH').value;
      fieldbyname('THANHTOAN').value:=qry5.fieldbyname('THANHTOAN').value;
      fieldbyname('USERID_TAMUNG').value:=qry5.fieldbyname('USERID_TAMUNG').value;
    end;
  end;
end;

end.
