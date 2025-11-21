unit PaymentUng1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls;

type
  TPaymentUng = class(TForm)
    Panel25: TPanel;
    Label66: TLabel;
    Label67: TLabel;
    btn_QryPMTK: TButton;
    edt_Supplier: TEdit;
    edt_FKBH: TEdit;
    DB_PMTK: TDBGridEh;
    qry_PMTK: TQuery;
    DS_PMTK: TDataSource;
    qry_PMTKFKBH: TStringField;
    qry_PMTKDECLARATION: TStringField;
    qry_PMTKCWHL: TCurrencyField;
    qry_PMTKPercent_TT: TIntegerField;
    qry_PMTKTONGTRIGIA_HOADON: TCurrencyField;
    qry_PMTKUSERID: TStringField;
    qry_PMTKUSERDATE: TDateTimeField;
    qry_PMTKYN: TStringField;
    qry_PMTKVNACC_CHUATHUE: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn_QryPMTKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DB_PMTKDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentUng: TPaymentUng;

implementation
  uses PaymentVATNO1,fununit;

{$R *.dfm}

procedure TPaymentUng.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentUng.FormDestroy(Sender: TObject);
begin
 PaymentUng:=nil;
end;

procedure TPaymentUng.btn_QryPMTKClick(Sender: TObject);
begin
  with qry_PMTK do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' SELECT CGZL_PAYMENTS.* ');
    SQL.Add(' FROM CGZL_PAYMENTS ');
    sql.Add(' LEFT JOIN CGZL_PAYMENT ON CGZL_PAYMENT.FKBH=CGZL_PAYMENTS.FKBH ');
    SQL.Add(' WHERE CGZL_PAYMENT.HD_LOAI=''3'' AND CGZL_PAYMENT.ZSBH='''+edt_Supplier.Text+''' AND CGZL_PAYMENT.YN=''5''  ');
    SQL.Add(' AND CGZL_PAYMENT.IS_NOTICE=''1'' AND ISNULL(CGZL_PAYMENT.FKBH_S,'''')<>''Y'' ');
    if edt_FKBH.Text<>'' then
    begin
      SQL.Add(' AND CGZL_PAYMENTS.FKBH = '''+edt_FKBH.Text+''' ');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TPaymentUng.FormCreate(Sender: TObject);
begin
  edt_Supplier.Text:=PaymentVATNO.qry_CGPayment.fieldbyname('ZSBH').AsString;
  btn_QryPMTK.Click;
end;

procedure TPaymentUng.DB_PMTKDblClick(Sender: TObject);
begin
  if qry_PMTK.FieldByName('FKBH').IsNull then
  begin
    qry_PMTK.Active:=false;
    close;
    abort;
  end;
  with PaymentVATNO.qry_TTTK do
  begin
    edit;
    fieldbyname('FKBH_TTT').value:=qry_PMTK.fieldbyname('FKBH').value;
    fieldbyname('TONGTRIGIA_HOADON').value:=qry_PMTK.fieldbyname('TONGTRIGIA_HOADON').value;
    fieldbyname('Percent_TT').value:=qry_PMTK.fieldbyname('Percent_TT').value;
    insert;
  end;
end;

end.
