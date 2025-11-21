unit PyamentUngHD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls;

type
  TPaymentUngHD = class(TForm)
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
    qry_PMTKVATNO: TStringField;
    qry_PMTKZSBH_MST: TStringField;
    qry_PMTKUSERID: TStringField;
    qry_PMTKUSERDATE: TDateTimeField;
    qry_PMTKYN: TStringField;
    qry_PMTKSTT: TStringField;
    qry_PMTKKYHIEU_HOADON: TStringField;
    qry_PMTKVATDATE: TDateTimeField;
    qry_PMTKTONGTIEN_CHUATHUE: TCurrencyField;
    qry_PMTKTONGTIEN_THUE: TCurrencyField;
    qry_PMTKTONGTIEN_THANHTOAN: TCurrencyField;
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
  PaymentUngHD: TPaymentUngHD;

implementation

uses PaymentVATNO1;

{$R *.dfm}

procedure TPaymentUngHD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentUngHD.FormDestroy(Sender: TObject);
begin
  PaymentUngHD:=nil;
end;

procedure TPaymentUngHD.btn_QryPMTKClick(Sender: TObject);
begin
  with qry_PMTK do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' SELECT CGZL_PAYMENTSS.* ');
    SQL.Add(' FROM CGZL_PAYMENTSS ');
    sql.Add(' LEFT JOIN CGZL_PAYMENT ON CGZL_PAYMENT.FKBH=CGZL_PAYMENTSS.FKBH ');
    SQL.Add(' WHERE CGZL_PAYMENT.HD_LOAI=''4'' AND CGZL_PAYMENT.ZSBH='''+edt_Supplier.Text+''' AND CGZL_PAYMENT.YN=''5''  ');
    SQL.Add(' AND CGZL_PAYMENT.IS_NOTICE=''1'' AND ISNULL(CGZL_PAYMENT.FKBH_S,'''')<>''Y'' ');
    if edt_FKBH.Text<>'' then
    begin
      SQL.Add(' AND CGZL_PAYMENTSS.FKBH = '''+edt_FKBH.Text+''' ');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TPaymentUngHD.FormCreate(Sender: TObject);
begin
  edt_Supplier.Text:=PaymentVATNO.qry_CGPayment.fieldbyname('ZSBH').AsString;
  btn_QryPMTK.Click;
end;

procedure TPaymentUngHD.DB_PMTKDblClick(Sender: TObject);
begin
  if qry_PMTK.FieldByName('FKBH').IsNull then
  begin
    qry_PMTK.Active:=false;
    close;
    abort;
  end;
  with PaymentVATNO.qry_TTHD do
  begin
    edit;
    fieldbyname('FKBH_TTT').value:=qry_PMTK.fieldbyname('FKBH').value;
    fieldbyname('TONGTIEN_CHUATHUE').value:=qry_PMTK.fieldbyname('TONGTIEN_CHUATHUE').value;
    fieldbyname('TONGTIEN_THUE').value:=qry_PMTK.fieldbyname('TONGTIEN_THUE').value;
    fieldbyname('TONGTIEN_THANHTOAN').value:=qry_PMTK.fieldbyname('TONGTIEN_THANHTOAN').value;
    insert;
  end;
end;

end.
