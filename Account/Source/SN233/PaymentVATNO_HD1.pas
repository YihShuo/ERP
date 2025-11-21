unit PaymentVATNO_HD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, ComCtrls;

type
  TPaymentVATNO_HD = class(TForm)
    Panel28: TPanel;
    Label65: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    btn_QryPMHD: TButton;
    edt_code4: TEdit;
    btn_CpPMHD: TButton;
    edt_supp4: TEdit;
    DB_PMHDD: TDBGridEh;
    DS_PMHD: TDataSource;
    qry_PMHD: TQuery;
    qry_PMHDKYHIEU_HOADON: TStringField;
    qry_PMHDVATNO: TStringField;
    qry_PMHDVATDATE: TDateTimeField;
    qry_PMHDTONGTIEN_CHUATHUE: TCurrencyField;
    qry_PMHDTONGTIEN_THUE: TCurrencyField;
    qry_PMHDTONGTIEN_THANHTOAN: TCurrencyField;
    qry_PMHDDONVI_TIENTE: TStringField;
    qry_PMHDTRANGTHAI_HD: TStringField;
    qry_PMHDKETQUA_KIEMTRA: TStringField;
    qry_PMHDTEN_NGUOIBAN: TStringField;
    qry_PMHDZSBH_MST: TStringField;
    qry_PMHDYN: TStringField;
    DTP8: TDateTimePicker;
    Label60: TLabel;
    DTP7: TDateTimePicker;
    Label61: TLabel;
    qry_PMHDKYHIEU: TStringField;
    procedure btn_QryPMHDClick(Sender: TObject);
    procedure btn_CpPMHDClick(Sender: TObject);
    procedure DB_PMHDDDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentVATNO_HD: TPaymentVATNO_HD;
  _type:string;

implementation

uses PaymentVATNO1, main1;

{$R *.dfm}

procedure TPaymentVATNO_HD.btn_QryPMHDClick(Sender: TObject);
begin
  with qry_PMHD do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    sql.Clear;
    SQL.Add('SELECT a.KYHIEU_MAUSO+a.KYHIEU_HOADON KYHIEU,a.KYHIEU_HOADON, a.VATNO, a.ZSBH_MST, VATDATE, TONGTIEN_CHUATHUE, TONGTIEN_THUE, TONGTIEN_THANHTOAN, ');
    SQL.Add('       CAST(dbo.fSignsToNoSigns(DONVI_TIENTE) AS VARCHAR(5)) AS DONVI_TIENTE, ');
    SQL.Add('       CAST(dbo.fSignsToNoSigns(TRANGTHAI_HD) AS VARCHAR(50)) AS TRANGTHAI_HD, ');
    SQL.Add('       CAST(dbo.fSignsToNoSigns(KETQUA_KIEMTRA) AS VARCHAR(50)) AS KETQUA_KIEMTRA, ');
    SQL.Add('       CAST(dbo.fSignsToNoSigns(TEN_NGUOIBAN) AS VARCHAR(200)) AS TEN_NGUOIBAN, ''1'' YN ');
    SQL.Add('FROM '+PaymentVATNO.SQL_LinkServer+'.CGZL_VATNO a');
    SQL.Add('WHERE 1=1 ');
    if trim(edt_code4.Text) <>'' then
       SQL.Add('   AND a.VATNO  like ''%'+edt_code4.Text+'%''  ');
    if trim(edt_supp4.Text) <>'' then
       SQL.Add('   AND dbo.fSignsToNoSigns(a.TEN_NGUOIBAN) like ''%'+edt_supp4.Text+'%''  ');
    sql.add('      AND convert(varchar,a.VATDATE,111) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP7.Date)+''' ');
    sql.add('          and '+''''+formatdatetime('yyyy/MM/dd',DTP8.Date)+''' ');
    SQL.Add('      AND NOT EXISTS ( SELECT CGZL_PaymentSS.VATNO,CGZL_PaymentSS.ZSBH_MST,CGZL_PaymentSS.KYHIEU_HOADON');
    SQL.Add('                       FROM (Select CGZL_PaymentSS.VATNO,CGZL_PaymentSS.ZSBH_MST,CGZL_PaymentSS.KYHIEU_HOADON from CGZL_PaymentSS ');
    SQL.Add('                       union all');
    SQL.Add('                             Select CGZL_PaymentSS.VATNO,CGZL_PaymentSS.ZSBH_MST,CGZL_PaymentSS.KYHIEU_HOADON from CGZL_PaymentS_Advance CGZL_PaymentSS ');
    if PaymentVATNO.AcountN233_CheckBFactory='Y' then
    begin
        SQL.Add('                   union all ');
        SQL.Add('                         select CGZL_PaymentSS.VATNO,CGZL_PaymentSS.ZSBH_MST,CGZL_VATNO.KYHIEU_HOADON  ');
        SQL.Add('                         from LacTyDB.LIY_ERP.dbo.CGZL_PaymentSS CGZL_PaymentSS ');
        SQL.Add('                         left join LacTyDB.LIY_ERP.dbo.CGZL_VATNO CGZL_VATNO on CGZL_VATNO.VATNO=CGZL_PaymentSS.VATNO and CGZL_VATNO.ZSBH_MST=CGZL_PaymentSS.ZSBH_MST ');
        SQL.Add('                                                                            and CGZL_VATNO.KYHIEU_MAUSO+CGZL_VATNO.KYHIEU_HOADON=CGZL_PaymentSS.KYHIEU_HOADON ');
        SQL.Add('                   union all ');
        SQL.Add('                         select CGZL_PaymentSS.VATNO,CGZL_PaymentSS.ZSBH_MST,CGZL_VATNO.KYHIEU_HOADON  ');
        SQL.Add('                         from LacTyDB.LIY_ERP.dbo.CGZL_PaymentS_Advance CGZL_PaymentSS ');
        SQL.Add('                         left join LacTyDB.LIY_ERP.dbo.CGZL_VATNO CGZL_VATNO on CGZL_VATNO.VATNO=CGZL_PaymentSS.VATNO and CGZL_VATNO.ZSBH_MST=CGZL_PaymentSS.ZSBH_MST ');
        SQL.Add('                                                                            and CGZL_VATNO.KYHIEU_MAUSO+CGZL_VATNO.KYHIEU_HOADON=CGZL_PaymentSS.KYHIEU_HOADON ');
    end;
    SQL.Add('                       ) CGZL_PaymentSS');
    SQL.Add('                       WHERE CGZL_PaymentSS.VATNO=a.VATNO AND CGZL_PaymentSS.ZSBH_MST=a.ZSBH_MST and CGZL_PaymentSS.KYHIEU_HOADON=a.KYHIEU_HOADON) ');
    SQL.Add('order by a.VATNO ');
    active:=true;
  end;
end;

procedure TPaymentVATNO_HD.btn_CpPMHDClick(Sender: TObject);
  var bm:Tbookmark;
      i:integer;
      bookmarklist:tbookmarklistEH;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if qry_PMHD.FieldByName('VATNO').IsNull then
    begin
      qry_PMHD.Active:=false;
      close;
      abort;
    end;
    qry_PMHD.disablecontrols;
    bm:=qry_PMHD.getbookmark;
    bookmarklist:=DB_PMHDD.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          qry_PMHD.gotobookmark(pointer(bookmarklist[i]));
          if _type='TTTU' then
          begin
            with PaymentVATNO.qry_CGPaymentTAMss do
            begin
              edit;
              fieldbyname('VATNO').value:=qry_PMHD.fieldbyname('VATNO').value;
              fieldbyname('ZSBH_MST').value:=qry_PMHD.fieldbyname('ZSBH_MST').value;
              fieldbyname('KYHIEU_HOADON').value:=qry_PMHD.fieldbyname('KYHIEU_HOADON').value;
              fieldbyname('VATDATE').value:=qry_PMHD.fieldbyname('VATDATE').value;
              fieldbyname('TONGTIEN_CHUATHUE').value:=qry_PMHD.fieldbyname('TONGTIEN_CHUATHUE').value;
              fieldbyname('TONGTIEN_THUE').value:=qry_PMHD.fieldbyname('TONGTIEN_THUE').value;
              fieldbyname('TONGTIEN_THANHTOAN').value:=qry_PMHD.fieldbyname('TONGTIEN_THANHTOAN').value;
              insert;
            end;
          end else
          begin
            with PaymentVATNO.qry_CGPaymentSS do
            begin
              edit;
              fieldbyname('VATNO').value:=qry_PMHD.fieldbyname('VATNO').value;
              fieldbyname('ZSBH_MST').value:=qry_PMHD.fieldbyname('ZSBH_MST').value;
              fieldbyname('KYHIEU_HOADON').value:=qry_PMHD.fieldbyname('KYHIEU_HOADON').value;
              fieldbyname('VATDATE').value:=qry_PMHD.fieldbyname('VATDATE').value;
              fieldbyname('TONGTIEN_CHUATHUE').value:=qry_PMHD.fieldbyname('TONGTIEN_CHUATHUE').value;
              fieldbyname('TONGTIEN_THUE').value:=qry_PMHD.fieldbyname('TONGTIEN_THUE').value;
              fieldbyname('TONGTIEN_THANHTOAN').value:=qry_PMHD.fieldbyname('TONGTIEN_THANHTOAN').value;
              insert;
            end;
          end;
        end;
      finally
      begin
        qry_PMHD.gotobookmark(bm);
        qry_PMHD.freebookmark(bm);
        qry_PMHD.enablecontrols;
        showmessage('You have finish copy!');
      end;
      end;
    end;
  end;
end;

procedure TPaymentVATNO_HD.DB_PMHDDDblClick(Sender: TObject);
begin
  if qry_PMHD.FieldByName('VATNO').IsNull then
  begin
    qry_PMHD.Active:=false;
    close;
    abort;
  end;
  if _type='TTTU' then
  begin
    with PaymentVATNO.qry_CGPaymentTAMss do
    begin
      edit;
      fieldbyname('VATNO').value:=qry_PMHD.fieldbyname('VATNO').value;
      fieldbyname('ZSBH_MST').value:=qry_PMHD.fieldbyname('ZSBH_MST').value;
      fieldbyname('KYHIEU_HOADON').value:=qry_PMHD.fieldbyname('KYHIEU_HOADON').value;
      fieldbyname('VATDATE').value:=qry_PMHD.fieldbyname('VATDATE').value;
      fieldbyname('TONGTIEN_CHUATHUE').value:=qry_PMHD.fieldbyname('TONGTIEN_CHUATHUE').value;
      fieldbyname('TONGTIEN_THUE').value:=qry_PMHD.fieldbyname('TONGTIEN_THUE').value;
      fieldbyname('TONGTIEN_THANHTOAN').value:=qry_PMHD.fieldbyname('TONGTIEN_THANHTOAN').value;
      insert;
    end;
  end else
  begin
    with PaymentVATNO.qry_CGPaymentSS do
    begin
      edit;
      fieldbyname('VATNO').value:=qry_PMHD.fieldbyname('VATNO').value;
      fieldbyname('ZSBH_MST').value:=qry_PMHD.fieldbyname('ZSBH_MST').value;
      fieldbyname('KYHIEU').value:=qry_PMHD.fieldbyname('KYHIEU').value;
      fieldbyname('KYHIEU_HOADON').value:=qry_PMHD.fieldbyname('KYHIEU_HOADON').value;
      fieldbyname('VATDATE').value:=qry_PMHD.fieldbyname('VATDATE').value;
      fieldbyname('TONGTIEN_CHUATHUE').value:=qry_PMHD.fieldbyname('TONGTIEN_CHUATHUE').value;
      fieldbyname('TONGTIEN_THUE').value:=qry_PMHD.fieldbyname('TONGTIEN_THUE').value;
      fieldbyname('TONGTIEN_THANHTOAN').value:=qry_PMHD.fieldbyname('TONGTIEN_THANHTOAN').value;
      insert;
    end;
  end;
end;

procedure TPaymentVATNO_HD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_HD.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_HD:=nil;
end;

procedure TPaymentVATNO_HD.FormCreate(Sender: TObject);
begin
  DTP7.Date:=NDate-15;
  DTP8.date:=NDate;
end;

end.
