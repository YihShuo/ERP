unit PaymentVATNO_TK1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, ComCtrls;

type
  TPaymentVATNO_TK = class(TForm)
    Panel25: TPanel;
    Label64: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    btn_QryPMTK: TButton;
    edt_code3: TEdit;
    btn_CpPMTK: TButton;
    edt_supp3: TEdit;
    DB_PMTK: TDBGridEh;
    qry_PMTK: TQuery;
    qry_PMTKDECLARATION: TStringField;
    qry_PMTKMALOAIHINH: TStringField;
    qry_PMTKNGAYDANGKY: TDateTimeField;
    qry_PMTKTONGTRIGIA_HOADON: TCurrencyField;
    qry_PMTKTENDOITAC: TStringField;
    DS_PMTK: TDataSource;
    qry_PMTKSTT: TFloatField;
    qry_PMTKCWHL: TCurrencyField;
    qry_PMTKYN: TStringField;
    pt: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DTP8: TDateTimePicker;
    Label60: TLabel;
    DTP7: TDateTimePicker;
    Label61: TLabel;
    qry_PMTKDOCNO: TStringField;
    procedure btn_QryPMTKClick(Sender: TObject);
    procedure btn_CpPMTKClick(Sender: TObject);
    procedure DB_PMTKDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaymentVATNO_TK: TPaymentVATNO_TK;
  NDate:Tdate;

implementation

uses PaymentVATNO1, main1,fununit;

{$R *.dfm}

procedure TPaymentVATNO_TK.btn_QryPMTKClick(Sender: TObject);
begin
  with qry_PMTK do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    sql.Clear;
    SQL.Add('  SELECT ROW_NUMBER() OVER(ORDER BY a.DECLARATION DESC) AS STT, a.DECLARATION, a.DOCNO, MALOAIHINH, isnull(NGAYTHONGQUAN,NGAYDANGKY) NGAYDANGKY, b.CWHL,   ');
    SQL.Add('         TONGTRIGIA_HOADON, TENDOITAC, ''1'' YN ');
    SQL.Add('  FROM '+PaymentVATNO.SQL_LinkServer+'.CGZL_Declaration a  ');
    SQL.Add('  LEFT JOIN CWHLS b on b.HLYEAR=YEAR(isnull(NGAYTHONGQUAN,NGAYDANGKY)) and b.HLMONTH=MONTH(isnull(NGAYTHONGQUAN,NGAYDANGKY)) and b.HLDAY=DAY(isnull(NGAYTHONGQUAN,NGAYDANGKY))   ');
    SQL.Add('  WHERE 1=1   ');
    if trim(edt_code3.Text) <>'' then
       SQL.Add('   AND a.DECLARATION like ''%'+edt_code3.Text+'%'' ');
    if trim(edt_supp3.Text) <>'' then
       SQL.Add('   AND a.TENDOITAC like ''%'+edt_supp3.Text+'%'' ');
    sql.add('      AND convert(varchar,a.NGAYDANGKY,111) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP7.Date)+''' ');
    sql.add('      AND '''+formatdatetime('yyyy/MM/dd',DTP8.Date)+''' ');
    SQL.Add('      AND NOT EXISTS ( SELECT CGZL_PaymentS.DECLARATION');
    SQL.Add('                       FROM (Select DECLARATION  from CGZL_PaymentS ');
    if PaymentVATNO.AcountN233_CheckBFactory='Y' then
      SQL.Add('                     union all select  DECLARATION   from LacTyDB.LIY_ERP.dbo.CGZL_PaymentS CGZL_PaymentS ');
    SQL.Add('                      ) CGZL_PaymentS');
    SQL.Add('                       WHERE CGZL_PaymentS.DECLARATION=a.DECLARATION) ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TPaymentVATNO_TK.btn_CpPMTKClick(Sender: TObject);
  var bm:Tbookmark;
      i:integer;
      bookmarklist:tbookmarklistEH;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    if qry_PMTK.FieldByName('DECLARATION').IsNull then
    begin
      qry_PMTK.Active:=false;
      close;
      abort;
    end;
    qry_PMTK.disablecontrols;
    bm:=qry_PMTK.getbookmark;
    bookmarklist:=DB_PMTK.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          qry_PMTK.gotobookmark(pointer(bookmarklist[i]));
          with PaymentVATNO.qry_CGPaymentS do
          begin
            edit;
            fieldbyname('Percent_TT').value:=pt.Text;
            fieldbyname('DECLARATION').value:=qry_PMTK.fieldbyname('DECLARATION').value;
            fieldbyname('LOAIHINH').value:=qry_PMTK.fieldbyname('MALOAIHINH').value;
            fieldbyname('NGAY_THUCLANH').value:=qry_PMTK.fieldbyname('NGAYDANGKY').value;
            fieldbyname('USACC_CHUATHUE').value:=qry_PMTK.fieldbyname('TONGTRIGIA_HOADON').value;
            fieldbyname('DOCNO').value:=qry_PMTK.fieldbyname('DOCNO').value;
            fieldbyname('CWHL').value:=qry_PMTK.fieldbyname('CWHL').value;
            insert;
          end;
        end;
      finally
      begin
        qry_PMTK.gotobookmark(bm);
        qry_PMTK.freebookmark(bm);
        qry_PMTK.enablecontrols;
        showmessage('You have finish copy!');
      end;
      end;
    end;
  end;
end;

procedure TPaymentVATNO_TK.DB_PMTKDblClick(Sender: TObject);
begin
  if qry_PMTK.FieldByName('DECLARATION').IsNull then
  begin
    qry_PMTK.Active:=false;
    close;
    abort;
  end;
  with PaymentVATNO.qry_CGPaymentS do
  begin
    edit;
    fieldbyname('Percent_TT').value:=pt.Text;
    fieldbyname('DECLARATION').value:=qry_PMTK.fieldbyname('DECLARATION').value;
    fieldbyname('LOAIHINH').value:=qry_PMTK.fieldbyname('MALOAIHINH').value;
    fieldbyname('NGAY_THUCLANH').value:=qry_PMTK.fieldbyname('NGAYDANGKY').value;
    fieldbyname('USACC_CHUATHUE').value:=qry_PMTK.fieldbyname('TONGTRIGIA_HOADON').value;
    fieldbyname('DOCNO').value:=qry_PMTK.fieldbyname('DOCNO').value;
    fieldbyname('CWHL').value:=qry_PMTK.fieldbyname('CWHL').value;
    insert;
  end;
end;

procedure TPaymentVATNO_TK.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentVATNO_TK.FormDestroy(Sender: TObject);
begin
  PaymentVATNO_TK:=nil;
end;

procedure TPaymentVATNO_TK.FormCreate(Sender: TObject);
begin
  PT.ItemIndex:=0;
  //DTP7.Date:=NDate-15;
  //DTP8.date:=NDate;
end;

end.
