unit Consumer1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,
  ComObj, StrUtils, Math, IniFiles;

type
  TConsumer = class(TForm)
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    DBGridEh4: TDBGridEh;
    qry_Consumer: TQuery;
    qry_ConsumerExFty_Date: TDateTimeField;
    qry_ConsumerINV_DATE: TDateTimeField;
    qry_ConsumerPAIRS: TIntegerField;
    qry_ConsumerUNIT_PRICE: TCurrencyField;
    qry_ConsumerAMOUNT: TCurrencyField;
    qry_ConsumerCustoms_No: TStringField;
    qry_ConsumerSailing_Date: TDateTimeField;
    qry_ConsumerBill_FCR_No: TStringField;
    qry_ConsumerKind_Loading: TStringField;
    qry_ConsumerForwarder: TStringField;
    qry_ConsumerCUSTID: TStringField;
    qry_ConsumerCOUNTRYEN: TStringField;
    DS4: TDataSource;
    ShowProgress: TPanel;
    Label11: TLabel;
    ProgressBar: TProgressBar;
    qry_ConsumerINV_NO: TStringField;
    qry_ConsumerRYNO: TStringField;
    qry_ConsumerSPECID: TStringField;
    qry_ConsumerARTICLE: TStringField;
    qry_ConsumerREF: TStringField;
    qry_ConsumerTC_PL_Date: TDateTimeField;
    qry_ConsumerBooking_No: TStringField;
    qry_ConsumerQTY: TIntegerField;
    Up_Consumer: TUpdateSQL;
    Pop_Consumer: TPopupMenu;
    qry_ConsumerCWHL: TIntegerField;
    mniCalculate: TMenuItem;
    N1: TMenuItem;
    mniMod_Consumer: TMenuItem;
    mniSav_Consumer: TMenuItem;
    mniCan_Consumer: TMenuItem;
    Qry_Temp: TQuery;
    qry_ConsumerRISK: TStringField;
    qry_ConsumerCompany_Name: TStringField;
    qry_ConsumerIODate: TStringField;
    qry_ConsumerAcVNACC: TCurrencyField;
    TabSheet1: TTabSheet;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1ExFtyDate: TDateTimeField;
    Query1YPDH: TStringField;
    Query1QTY: TFloatField;
    Query1InvoiceNo: TStringField;
    Query1Company: TStringField;
    Query1InvoiceDate: TDateTimeField;
    Query1TCPackingListSubmissionDate: TDateTimeField;
    Query1BookingNO: TStringField;
    Query1SR: TStringField;
    Query1CustomsNo: TStringField;
    Query1SailingDate: TDateTimeField;
    Query1FCRNo_BillNo: TStringField;
    Query1CUSTID: TStringField;
    Query1Country: TStringField;
    Query1KindLoading: TStringField;
    Query1Forwarder: TStringField;
    Query1IODate: TStringField;
    Query1QTY1: TFloatField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1TestNo: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    chkInv: TCheckBox;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    chk1: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    chkETD: TCheckBox;
    DTP5: TDateTimePicker;
    DTP6: TDateTimePicker;
    Button2: TButton;
    Edt_Art: TEdit;
    btnInvoiceExchange: TButton;
    Panel2: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    CheckBox1: TCheckBox;
    DTP7: TDateTimePicker;
    DTP8: TDateTimePicker;
    Edit4: TEdit;
    Button3: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    CheckBox2: TCheckBox;
    DTP9: TDateTimePicker;
    DTP10: TDateTimePicker;
    CheckBox5: TCheckBox;
    DTP11: TDateTimePicker;
    DTP12: TDateTimePicker;
    Button4: TButton;
    Edit7: TEdit;
    Button5: TButton;
    Query1CWHL: TIntegerField;
    Query1AcVNACC: TFloatField;
    Query1REF: TStringField;
    Query1UnitPrice: TCurrencyField;
    Query1Amount: TCurrencyField;
    Label16: TLabel;
    qry_ConsumerYSBH: TStringField;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    CheckBox3: TCheckBox;
    DTP13: TDateTimePicker;
    DTP14: TDateTimePicker;
    Edit8: TEdit;
    Button6: TButton;
    Edit9: TEdit;
    Edit10: TEdit;
    CheckBox4: TCheckBox;
    DTP15: TDateTimePicker;
    DTP16: TDateTimePicker;
    CheckBox8: TCheckBox;
    DTP17: TDateTimePicker;
    DTP18: TDateTimePicker;
    Button7: TButton;
    Edit11: TEdit;
    Button8: TButton;
    DBGridEh2: TDBGridEh;
    qryCBY: TQuery;
    DateTimeField10: TDateTimeField;
    DateTimeField11: TDateTimeField;
    IntegerField5: TIntegerField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    StringField33: TStringField;
    DateTimeField12: TDateTimeField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    StringField43: TStringField;
    DateTimeField13: TDateTimeField;
    StringField44: TStringField;
    StringField45: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    CurrencyField8: TCurrencyField;
    StringField46: TStringField;
    StringField47: TStringField;
    DS_CBY: TDataSource;
    qry_ConsumerVAT_NO: TStringField;
    qry_ConsumerVAT_Date: TDateTimeField;
    Query1VAT_NO: TStringField;
    Query1VAT_Date: TDateTimeField;
    qryCBYVAT_NO: TStringField;
    qryCBYVAT_Date: TDateTimeField;
    Pop_CDC: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    mniMod_CDC: TMenuItem;
    mniSav_CDC: TMenuItem;
    mniCan_CDC: TMenuItem;
    Up_CDC: TUpdateSQL;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Pop_CBY: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    mniMod_CBY: TMenuItem;
    mniSav_CBY: TMenuItem;
    mniCan_CBY: TMenuItem;
    Up_CBY: TUpdateSQL;
    TabSheet4: TTabSheet;
    Qry_Report: TQuery;
    DS_Report: TDataSource;
    Panel4: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    CheckBox6: TCheckBox;
    DTP19: TDateTimePicker;
    DTP20: TDateTimePicker;
    Edit12: TEdit;
    Button12: TButton;
    Edit13: TEdit;
    Edit14: TEdit;
    CheckBox7: TCheckBox;
    DTP21: TDateTimePicker;
    DTP22: TDateTimePicker;
    CheckBox9: TCheckBox;
    DTP23: TDateTimePicker;
    DTP24: TDateTimePicker;
    Button13: TButton;
    Edit15: TEdit;
    Button14: TButton;
    DBGridEh3: TDBGridEh;
    Qry_ReportExFty_Date: TDateTimeField;
    Qry_ReportINV_DATE: TDateTimeField;
    Qry_ReportRISK: TStringField;
    Qry_ReportTienTe: TStringField;
    Qry_ReportCWHL: TIntegerField;
    Qry_ReportINV_NO: TStringField;
    Qry_ReportMaThueSuat: TStringField;
    Qry_ReportVAT_NO: TStringField;
    Qry_ReportVAT_Date: TDateTimeField;
    Qry_Reportmemo1: TStringField;
    Qry_ReportCustoms_No: TStringField;
    Qry_ReportAMOUNT: TFloatField;
    Qry_ReportAcVNACC: TCurrencyField;
    Qry_ReportTienThue1: TIntegerField;
    Qry_ReportTienThue2: TIntegerField;
    Qry_ReportTKKT: TStringField;
    Qry_ReportBoPhan: TStringField;
    Qry_Reportmemo2: TStringField;
    Qry_ReportCURRENCY: TStringField;
    Qry_ReportCFMID: TStringField;
    Qry_ReportCFMDate: TDateTimeField;
    Qry_ReportMaKH: TStringField;
    CheckBox10: TCheckBox;
    DTP25: TDateTimePicker;
    Label31: TLabel;
    DTP26: TDateTimePicker;
    chkConfirm: TCheckBox;
    chkUnConfirm: TCheckBox;
    btnTransferWF: TButton;
    Pop_Report: TPopupMenu;
    mni_Confirm: TMenuItem;
    mni_ConfirmAll: TMenuItem;
    mni_UnConfirm: TMenuItem;
    Qry_ReportInv_Type: TStringField;
    mni_UnConfirmAll: TMenuItem;
    pnlInf: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    mmoInf: TMemo;
    Panel7: TPanel;
    btn_Yes: TButton;
    btn_No: TButton;
    CheckBox11: TCheckBox;
    DTP27: TDateTimePicker;
    Label32: TLabel;
    DTP28: TDateTimePicker;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh4TitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
    procedure FormResize(Sender: TObject);
    procedure mniCalculateClick(Sender: TObject);
    procedure mniMod_ConsumerClick(Sender: TObject);
    procedure mniCan_ConsumerClick(Sender: TObject);
    procedure mniSav_ConsumerClick(Sender: TObject);
    procedure btnInvoiceExchangeClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure mniMod_CDCClick(Sender: TObject);
    procedure mniSav_CDCClick(Sender: TObject);
    procedure mniCan_CDCClick(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure mniMod_CBYClick(Sender: TObject);
    procedure mniSav_CBYClick(Sender: TObject);
    procedure mniCan_CBYClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure mni_ConfirmClick(Sender: TObject);
    procedure mni_ConfirmAllClick(Sender: TObject);
    procedure mni_UnConfirmClick(Sender: TObject);
    procedure mni_UnConfirmAllClick(Sender: TObject);
    procedure btnTransferWFClick(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    MaKH,MaThueSuat,TKKT,BoPhan_Mass,BoPhan_KT,MKS,LinkSV:string;
    AppDir:string;
    { Private declarations }
    procedure ExportDefaultExcel();
    procedure ExportFormatExcel();
    procedure Readini();
    procedure TransferWF();
  public
    { Public declarations }
  end;

var
  Consumer: TConsumer;

implementation

uses
  main1, frmCWHL_Invoice1, FunUnit, Import_VATNo1;

{$R *.dfm}
procedure TConsumer.Readini();
var MyIni:TiniFile;
begin
  MaKH:='KF05';
  MaThueSuat:='B00';
  TKKT:='5111';
  BoPhan_Mass:='A-TX';
  BoPhan_KT:='KTHAC';
  MKS:='614';
  LinkSV:='WF.TYXUAN_TEST.dbo';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      MaKH:=MyIni.ReadString('Acount_N81','MaKH','KF05');
      MaThueSuat:=MyIni.ReadString('Acount_N81','MaThueSuat','B00');
      TKKT:=MyIni.ReadString('Acount_N81','TKKT','5111');
      BoPhan_Mass:=MyIni.ReadString('Acount_N81','BoPhan_Mass','A-TX');
      BoPhan_KT:=MyIni.ReadString('Acount_N81','BoPhan_KT','KTHAC');
      MKS:=MyIni.ReadString('Acount_N81','MKS','614');
      LinkSV:=MyIni.ReadString('Account_N81','LinkSV','WF.TYXUAN_TEST.dbo');
    finally
      MyIni.Free;
    end;
  end;
end;


procedure TConsumer.FormDestroy(Sender: TObject);
begin
  Consumer := nil;
end;

procedure TConsumer.Button1Click(Sender: TObject);
begin
  qry_consumer.Active := false;
  if (not chk1.Checked) and (not chkInv.Checked) and (not chkETD.Checked) and (trim(edit3.Text) = '') and (trim(edit2.Text) = '') and (trim(Edit1.Text) = '') and (trim(Edt_Art.Text) = '') then
  begin
    Messagedlg('Pls, input data for FILLTER first!', mtwarning, [mbyes], 0);
    abort;
  end;
  with qry_consumer do
  begin
    active := false;
    sql.Clear;
    SQL.Add('SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_Name,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,');
    SQL.Add('	    	inv.AMOUNT,case when inv.Customs_No is not null then inv.Customs_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date,sb.Bill_FCR_No,sb.Kind_Loading,');
    sql.Add('       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im.inv_Type,');
    sql.Add('       '' '' AS Shipmode,'' '' as SPECID,im.REF as REF,sb.TC_PL_Date,sb.Booking_No,');
    sql.Add('       DDZLWHEX.IODate as IODate,');
    sql.Add('       DDZLWHEX.QTY as Qty,');
    sql.Add('       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) as AcVNACC,YWDD.YSBH,inv.VAT_NO,inv.VAT_Date ');   // INTO #N8_INVOICE_D
    SQL.Add('FROM Ship_Booking sb INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO');
    SQL.Add('LEFT JOIN INVOICE_D inv ON inv.INV_NO = im.INV_NO');
    SQL.Add('LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID');
    sql.Add('LEFT JOIN YWDD ON YWDD.DDBH=inv.RYNO');
    sql.Add('left join DDZL do on do.DDBH=YWDD.YSBH ');
    Sql.Add('LEFT JOIN ( SELECT DDBH,CONVERT(VARCHAR(7),Exedate,111) IODate, SUM(YWCP.QTY) QTY ,INV_NO');
    sql.Add('			       FROM (select * from YWCP union all select * from YWCPOld) YWCP left join  (select INV_NO,ryno,xh,ctq,ctz from packing  group by INV_NO,ryno,xh,ctq,ctz)  packing');
    sql.Add(' on ywcp.ddbh=packing.ryno and ywcp.xh =packing.XH and CARTONNO between packing.ctq and packing.ctz ');
    sql.Add('       		 WHERE SB=''3'' GROUP BY DDBH, CONVERT(VARCHAR(7),Exedate,111),INV_NO) DDZLWHEX ON DDZLWHEX.DDBH=inv.RYNO AND DDZLWHEX.IODate=CONVERT(VARCHAR(7),sb.ExFty_Date,111) and  DDZLWHEX.INV_NO=sb.INV_NO');
    SQL.Add('LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date');
    SQL.Add('LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK');
    sql.Add('WHERE ( sb.CO_CFMID IS NOT NULL');
    sql.Add('	       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR,GETDATE(),111)');
    sql.Add('			        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NOT NULL )');
    sql.Add('	  )');
    sql.Add('   and im.inv_Type = ''Mass Production'' ');
    if edit2.Text <> '' then
      sql.Add(' and im.INV_NO like ''' + edit2.Text + '%'' ');
    if chk1.Checked then
    begin
      SQL.Add(' and convert(varchar,sb.ExFty_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP2.Date) + '''');
    end;
    if chkInv.checked then
    begin
      SQL.Add(' and convert(varchar,im.INV_DATE,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP3.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP4.Date) + '''');
    end;
    if chkETD.checked then
    begin
      SQL.Add(' and convert(varchar,sb.Sailing_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP5.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP6.Date) + '''');
    end;
    if edit3.Text <> '' then
      sql.Add(' and upper(im.TO_WHERE) like ''' + edit3.Text + '%'' ');
    if edit1.Text <> '' then
      sql.Add(' and inv.RYNO like ''' + edit1.Text + '%'' ');
    if Edt_Art.Text <> '' then
      sql.Add('and inv.ARTICLE like ''' + trim(Edt_Art.Text) + '%'' ');
     //funcobj.WriteErrorLog(sql.Text); 
    active := true;
  end;
end;

procedure TConsumer.Button2Click(Sender: TObject);
var
  eclApp, WorkBook, xlSheet: olevariant;
  i, j: integer;
begin
  if ((qry_consumer.Active) and (qry_consumer.recordcount = 0)) or (not qry_consumer.Active) then
  begin
    Messagedlg('No record.', mtwarning, [mbyes], 0);
    abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    ProgressBar.Position := 0;
    ProgressBar.Max := qry_consumer.RecordCount;
    ShowProgress.Visible := true;
    ShowProgress.Refresh;

    WorkBook := eclApp.workbooks.Add;

    for i := 0 to DBGridEh4.FieldCount - 1 do
    begin
      eclApp.Cells(1, i + 1) := DBGridEh4.Columns[i].Title.Caption;
    end;

    qry_consumer.First;
    j := 2;
    while not qry_consumer.Eof do
    begin
      for i := 0 to DBGridEh4.fieldcount - 1 do
      begin
        eclApp.Cells(j, i + 1) := DBGridEh4.Fields[i].Value;

        if DBGridEh4.Fields[i].FieldName = 'PAIRS' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,##0';

        if DBGridEh4.Fields[i].FieldName = 'QTY' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,#';

        if DBGridEh4.Fields[i].FieldName = 'AMOUNT' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,##0.00';

        if DBGridEh4.Fields[i].FieldName = 'Customs_No' then
          eclApp.Cells(j, i + 1) := #39 + DBGridEh4.Fields[i].Value;

        eclApp.ActiveSheet.Rows[j].Font.Size := 10;
        eclApp.ActiveSheet.Rows[j].font.name := 'Calibri';
        eclApp.ActiveSheet.Rows[j].HorizontalAlignment := $FFFFEFF4;

      end;
      ProgressBar.Position := ProgressBar.Position + 1;
      ProgressBar.Refresh;
      qry_consumer.Next;
      inc(j);
    end;

    eclApp.columns.autofit;
    ShowProgress.Visible := false;
    showmessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
    begin
      ShowProgress.Visible := false;
      showmessage(F.Message);
    end;
  end;
end;

procedure TConsumer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TConsumer.FormCreate(Sender: TObject);
begin
  DTP1.Date := date - 7;
  DTP2.Date := date;
  DTP3.Date := date - 7;
  DTP4.Date := date;
  DTP5.Date := date - 7;
  DTP6.Date := date;
  DTP7.Date := date - 7;
  DTP8.Date := date;
  DTP9.Date := date - 7;
  DTP10.Date := date;
  DTP11.Date := date - 7;
  DTP12.Date := date;
  DTP13.Date := date - 7;
  DTP14.Date := date;
  DTP15.Date := date - 7;
  DTP16.Date := date;
  DTP17.Date := date - 7;
  DTP18.Date := date;
  DTP19.Date := date  -7;
  DTP20.Date := date;
  DTP21.Date := date - 7;
  DTP22.Date := date;
  DTP23.Date := date - 7;
  DTP24.Date := date;
  DTP25.Date := date - 7;
  DTP26.Date := date;
  DTP27.Date := date - 7;
  DTP28.Date := date;
  PageControl1.ActivePageIndex:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  Readini();
end;

procedure TConsumer.DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if trim(qry_Consumer.FieldByName('SPECID').AsString) = 'FX' then
  begin
    DBGridEh4.canvas.Font.Style := [fsBold];
    DBGridEh4.canvas.Font.Size := DBGridEh4.canvas.Font.Size - 1;
  end;
end;

procedure TConsumer.DBGridEh4TitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumnEh);
begin
  if (not qry_Consumer.Active) or (qry_Consumer.RecordCount < 2) or (qry_Consumer.RequestLive) then
    Abort;
end;

procedure TConsumer.FormResize(Sender: TObject);
begin
  ShowProgress.Left := Round((Width - ShowProgress.Width) / 2);
  ShowProgress.Top := Round((Height - ShowProgress.Height) / 2);
end;

procedure TConsumer.mniCalculateClick(Sender: TObject);
begin
  if MessageDlg('Are you sure calculate AcVNACC?', mtWarning, [mbYes, mbNo], 0) <> mrYes then
    Abort;
  with Qry_Temp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('UPDATE INVOICE_D SET AcVNACC=ROUND(inv.AMOUNT*ci.CWHL,0),AcUserID=''' + main.Edit1.Text + ''',AcUserDate=GETDATE()');
    SQL.Add('FROM INVOICE_D inv INNER JOIN INVOICE_M im ON im.INV_NO=inv.INV_NO AND im.Inv_Type=''Mass Production''');
    sql.Add('left join Ship_Booking sb  on sb.INV_NO=im.INV_NO');
    SQL.Add('LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date');
    SQL.Add('WHERE EXISTS (SELECT 1 FROM #N8_INVOICE_D WHERE INV_NO=inv.INV_NO AND RYNO=inv.RYNO)');
    ExecSQL;

  end;
  Button1.Click;
end;

procedure TConsumer.mniMod_ConsumerClick(Sender: TObject);
begin
  with qry_Consumer do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
  end;
  mniSav_Consumer.Enabled := True;
  mniCan_Consumer.Enabled := True;
end;

procedure TConsumer.mniCan_ConsumerClick(Sender: TObject);
begin
  with qry_Consumer do
  begin
    Close;
    RequestLive := False;
    CachedUpdates := False;
    Open;
  end;
  mniSav_Consumer.Enabled := False;
  mniCan_Consumer.Enabled := False;
end;

procedure TConsumer.mniSav_ConsumerClick(Sender: TObject);
begin
  try
    with qry_Consumer do
    begin
      First;
      while not Eof do
      begin
        case UpdateStatus of
          usModified:
            begin
              with Qry_Temp do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE INVOICE_D ');
                SQL.Add('SET AcVNACC=' + qry_Consumer.FieldByName('AcVNACC').AsString + ',AcUserID=''' + main.Edit1.Text + ''',AcUserDate=GETDATE() ');
                SQL.Add('WHERE Inv_No=''' + qry_Consumer.FieldByName('INV_NO').AsString + ''' AND RYNO=''' + qry_Consumer.FieldByName('RYNO').AsString + '''');
                //funcobj.WriteErrorLog(sql.Text);
                ExecSQL;
              end;
            end;
        end;
        Next;
      end;
    end;
    mniSav_Consumer.Enabled := False;
    mniCan_Consumer.Enabled := False;
    Button1.Click;
  except
    on E: Exception do
      ShowMessage('Have wrong! Can not save data!' + #13 + E.Message);
  end;
end;

procedure TConsumer.btnInvoiceExchangeClick(Sender: TObject);
begin
  if frmCWHL_Invoice=nil then
    frmCWHL_Invoice:=TfrmCWHL_Invoice.Create(Self);
  frmCWHL_Invoice.Show;
end;

procedure TConsumer.Button3Click(Sender: TObject);
begin
  Query1.Active := false;
  if (not checkbox1.Checked) and (not checkbox2.Checked) and (not checkbox5.Checked) and (trim(edit4.Text) = '') and (trim(edit5.Text) = '') and (trim(Edit6.Text) = '') and (trim(Edit7.Text) = '') then
  begin
    Messagedlg('Pls, input data for FILLTER first!', mtwarning, [mbyes], 0);
    abort;
  end;
  with Query1 do
  begin
    active := false;
    sql.Clear;
    //SQL.Add('SELECT DEVTOSIMIS.*,CWHL,DevtoSimis.InvoiceNo as REF ');
    sql.Add('SELECT DevtoSimis.ExFtyDate,DevtoSimis.YPDH,DevtoSimis.QTY,DevtoSimis.UnitPrice,DevtoSimis.Amount,DevtoSimis.InvoiceNo,DevtoSimis.Company,DevtoSimis.InvoiceDate,DevtoSimis.TCPackingListSubmissionDate ');
    sql.Add('       ,DevtoSimis.BookingNO,DevtoSimis.SR,DevtoSimis.CustomsNo,DevtoSimis.SailingDate,DevtoSimis.FCRNo_BillNo,DevtoSimis.CUSTID,DevtoSimis.Country,DevtoSimis.KindLoading ');
    sql.Add('       ,DevtoSimis.Forwarder,DevtoSimis.IODate,DevtoSimis.QTY1,DevtoSimis.UserID,DevtoSimis.UserDate,DevtoSimis.YN,DevtoSimis.TestNo,DevtoSimis.Complete,CWHL,DevtoSimis.InvoiceNo as REF   ');
    sql.Add('       ,isnull(DevtoSimis.AcVNACC,round(DevtoSimis.AMOUNT*ci.CWHL,0)) as AcVNACC,DevtoSimis.VAT_NO,DevtoSimis.VAT_Date ');
    SQL.Add('FROM DEVTOSIMIS');
    SQL.Add('LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=DEVTOSIMIS.ExFtyDate');
    sql.Add('WHERE 1=1 ');
    if edit5.Text <> '' then
      sql.Add(' and DEVTOSIMIS.InvoiceNo like ''' + edit5.Text + '%'' ');
    if CheckBox2.Checked then
    begin
      SQL.Add(' and convert(varchar,DEVTOSIMIS.ExFtyDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP9.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP10.Date) + '''');
    end;
    if CheckBox1.checked then
    begin
      SQL.Add(' and convert(varchar,DEVTOSIMIS.InvoiceDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP7.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP8.Date) + '''');
    end;
    if CheckBox5.checked then
    begin
      SQL.Add(' and convert(varchar,DEVTOSIMIS.SailingDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP11.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP12.Date) + '''');
    end;
    if edit6.Text <> '' then
      sql.Add(' and upper(DEVTOSIMIS.Country) like ''' + edit6.Text + '%'' ');
    if edit4.Text <> '' then
      sql.Add(' and DEVTOSIMIS.YPDH like ''' + edit4.Text + '%'' ');
    if edit7.Text <> '' then
      sql.Add('and DEVTOSIMIS.SR like ''' + trim(edit7.Text) + '%'' ');
    //memo1.Lines:=sql;
    active := true;
  end;
end;

procedure TConsumer.Button4Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if ((Query1.Active) and (Query1.recordcount = 0)) or (not Query1.Active) then
  begin
    Messagedlg('No record.', mtwarning, [mbyes], 0);
    abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    ProgressBar.Position := 0;
    ProgressBar.Max := Query1.RecordCount;
    ShowProgress.Visible := true;
    ShowProgress.Refresh;

    WorkBook := eclApp.workbooks.Add;
//    mSheet := eclApp.WorkBooks[1].WorkSheets[1];
    for i := 0 to DBGridEh1.Columns.Count -1 do
    begin
      eclApp.Cells(1, i + 1) := DBGridEh1.Columns[i].Title.Caption;
        if (DBGridEh1.Fields[i].FieldName = 'CustomsNo')  then
          eclApp.activesheet.Columns[13].NumberFormatLocal := '@';

        if (DBGridEh1.Fields[i].FieldName = 'CUSTID') then
          eclApp.activesheet.Columns[16].NumberFormatLocal := '@';

        if DBGridEh1.Fields[i].FieldName = 'BookingNO' then
          eclApp.activesheet.Columns[11].NumberFormatLocal := '@';

        if DBGridEh1.Fields[i].FieldName = 'QTY' then begin
          eclApp.activesheet.Columns[3].NumberFormatLocal := '#,#0.0';
          eclApp.activesheet.Columns[21].NumberFormatLocal := '#,#0.0';
        end;

        if DBGridEh1.Fields[i].FieldName = 'AMOUNT' then
          eclApp.activesheet.Columns[5].NumberFormatLocal := '#,##0.00';
    end;
    Query1.First;
    j := 2;
    while not Query1.Eof do
    begin
      for i := 0 to DBGridEh1.fieldcount - 1 do
      begin
        eclApp.Cells(j, i + 1) := DBGridEh1.Fields[i].Value;

        eclApp.ActiveSheet.Rows[j].Font.Size := 10;
        eclApp.ActiveSheet.Rows[j].font.name := 'Calibri';
        eclApp.ActiveSheet.Rows[j].HorizontalAlignment := $FFFFEFF4;
      end;
      ProgressBar.Position := ProgressBar.Position + 1;
      ProgressBar.Refresh;
      Query1.Next;
      inc(j);
    end;

    eclApp.columns.autofit;
    ShowProgress.Visible := false;
    showmessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
    begin
      ShowProgress.Visible := false;
      showmessage(F.Message);
    end;
  end;
end;

Function ERPTrunc(value:double;demical:integer):double;
var valueF:double;
    valueFStr:String;
begin
  valueF:=value*power(10,-1*demical)+0.5;
  valueFStr := FloatToStr(valueF);
  IF Pos('.', valueFStr) > 0 Then  valueF:=strtofloat(copy(valueFStr, 1, Pos('.', valueFStr) - 1));
  result:=valueF/power(10,-1*demical);
end;

procedure TConsumer.Query1CalcFields(DataSet: TDataSet);
begin

   { if   not (Query1.FieldByName('CWHL').IsNull)  then
    begin
      //Query1.FieldByName('AcVNACC').Value := SimpleRoundTo((Query1.FieldByName('Amount').Value * Query1.FieldByName('CWHL').Value),0);
      Query1.FieldByName('AcVNACC').Value := ERPTrunc((Query1.FieldByName('Amount').Value * Query1.FieldByName('CWHL').Value),0);
    end;  }

end;

procedure TConsumer.Button6Click(Sender: TObject);
begin
  qryCBY.Active := false;
  if (not checkbox3.Checked) and (not checkbox4.Checked) and (not checkbox8.Checked) and (trim(edit8.Text) = '') and (trim(edit9.Text) = '') and (trim(Edit10.Text) = '') and (trim(Edit11.Text) = '') then
  begin
    Messagedlg('Pls, input data for FILLTER first!', mtwarning, [mbyes], 0);
    abort;
  end;
  with qryCBY do
  begin
    active := false;
    sql.Clear;
    SQL.Add('SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_Name,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,');
    SQL.Add('	    	inv.AMOUNT,case when inv.Customs_No is not null then inv.Customs_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date,sb.Bill_FCR_No,sb.Kind_Loading,');
    sql.Add('       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im.inv_Type,');
    sql.Add('       '' '' AS Shipmode,'' '' as SPECID,im.REF as REF,sb.TC_PL_Date,sb.Booking_No,');
    sql.Add('       CBYEX.IODate as IODate, CBYEX.QTY as Qty,');
    sql.Add('       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) as AcVNACC,inv.VAT_NO,inv.VAT_Date');
    SQL.Add('FROM Ship_Booking sb INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO');
    SQL.Add('LEFT JOIN INVOICE_D inv ON inv.INV_NO = im.INV_NO');
    SQL.Add('LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID');
    sql.Add('left join ( select workOrderId as DDBH, CONVERT(VARCHAR(7),Shipdate,111) IODate, sum (CBY_Orders.total * CBY_Orders.itemNumber) as Qty');
    sql.Add('			       from CBY_Orders where shipdate is not null  GROUP BY workOrderId, CONVERT(VARCHAR(7),Shipdate,111)) CBYEX on CBYEX.DDBH=inv.RYNO AND CBYEX.IODate=CONVERT(VARCHAR(7),sb.ExFty_Date,111)');
    SQL.Add('LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date');
    SQL.Add('LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK');
    sql.Add('WHERE ( sb.CO_CFMID IS NOT NULL');
    sql.Add('	       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR,GETDATE(),111)');
    sql.Add('			        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NOT NULL )');
    sql.Add('	  )');
    if edit9.Text <> '' then
      sql.Add(' and im.INV_NO like ''' + edit9.Text + '%'' ');
    if checkbox4.Checked then
    begin
      SQL.Add(' and convert(varchar,sb.ExFty_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP15.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP16.Date) + '''');
    end;
    if checkbox3.checked then
    begin
      SQL.Add(' and convert(varchar,im.INV_DATE,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP13.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP14.Date) + '''');
    end;
    if checkbox8.checked then
    begin
      SQL.Add(' and convert(varchar,sb.Sailing_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP17.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP18.Date) + '''');
    end;
    if edit10.Text <> '' then
      sql.Add(' and upper(im.TO_WHERE) like ''' + edit10.Text + '%'' ');
    if edit8.Text <> '' then
      sql.Add(' and inv.RYNO like ''' + edit8.Text + '%'' ');
    if edit11.Text <> '' then
      sql.Add('and inv.ARTICLE like ''' + trim(edit11.Text) + '%'' ');
    sql.Add('  and Inv_Type=''CBY'' and convert(varchar,sb.ExFty_Date,111) <= ''2022/10/20''');

    sql.Add('UNION ALL');

    SQL.Add('SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_Name,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,');
    SQL.Add('	    	inv.AMOUNT,case when inv.Customs_No is not null then inv.Customs_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date,sb.Bill_FCR_No,sb.Kind_Loading,');
    sql.Add('       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im.inv_Type,');
    sql.Add('       '' '' AS Shipmode,'' '' as SPECID,im.REF as REF,sb.TC_PL_Date,sb.Booking_No,');
    sql.Add('       CONVERT(VARCHAR(7),CBYEX.IODate,111) IODate, CBYEX.QTY as Qty,');
    sql.Add('       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) as AcVNACC,inv.VAT_NO,inv.VAT_Date');
    SQL.Add('FROM Ship_Booking sb INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO');
    sql.Add('LEFT JOIN (  select INVOICE_D.INV_NO,MasterOrder as RYNO, sum(CBY_Orders.total*CBY_Orders.itemNumber) as pairs,ARTICLE,UNIT_PRICE,sum(CBY_Orders.total*CBY_Orders.itemNumber*UNIT_PRICE) as Amount,CO_HSCode,AcVNACC,Customs_No');
    sql.Add('                    ,VAT_NO,VAT_Date ');
    sql.Add('			        from INVOICE_D left join INVOICE_M on INVOICE_D.INV_NO=INVOICE_M.INV_NO');
    sql.Add('             LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = INVOICE_D.RYNO');
    sql.Add('       			where Inv_Type=''CBY''');
    sql.Add('			        group by INVOICE_D.INV_NO,MasterOrder,ARTICLE,UNIT_PRICE,CO_HSCode,AcVNACC,Customs_No,VAT_NO,VAT_Date)inv ON inv.INV_NO = im.INV_NO ');
    SQL.Add('LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID');
    sql.Add('LEFT JOIN (  select INVOICE_D.INV_NO,MasterOrder as DDBH, Shipdate as IODate,INVOICE_D.UNIT_PRICE, sum (CBY_Orders.total * CBY_Orders.itemNumber) as Qty');
    sql.Add('			        from CBY_Orders');
    sql.Add('             left join INVOICE_D on CBY_Orders.workOrderId =INVOICE_D.RYNO where shipdate is not null');
    sql.Add('			        GROUP BY INVOICE_D.INV_NO,MasterOrder, Shipdate,INVOICE_D.UNIT_PRICE) CBYEX on CBYEX.DDBH=inv.RYNO AND CBYEX.IODate=sb.ExFty_Date and IODate=sb.ExFty_Date and CBYEX.INV_NO=im.INV_NO and CBYEX.UNIT_PRICE=inv.UNIT_PRICE ');
    SQL.Add('LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date');
    SQL.Add('LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK');
    sql.Add('WHERE ( sb.CO_CFMID IS NOT NULL');
    sql.Add('	       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR,GETDATE(),111)');
    sql.Add('			        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NOT NULL )');
    sql.Add('	  )');
    if edit9.Text <> '' then
      sql.Add(' and im.INV_NO like ''' + edit9.Text + '%'' ');
    if checkbox4.Checked then
    begin
      SQL.Add(' and convert(varchar,sb.ExFty_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP15.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP16.Date) + '''');
    end;
    if checkbox3.checked then
    begin
      SQL.Add(' and convert(varchar,im.INV_DATE,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP13.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP14.Date) + '''');
    end;
    if checkbox8.checked then
    begin
      SQL.Add(' and convert(varchar,sb.Sailing_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP17.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP18.Date) + '''');
    end;
    if edit10.Text <> '' then
      sql.Add(' and upper(im.TO_WHERE) like ''' + edit10.Text + '%'' ');
    if edit8.Text <> '' then
      sql.Add(' and inv.RYNO like ''' + edit8.Text + '%'' ');
    if edit11.Text <> '' then
      sql.Add('and inv.ARTICLE like ''' + trim(edit11.Text) + '%'' ');
    sql.Add('  and Inv_Type=''CBY'' and convert(varchar,sb.ExFty_Date,111) > ''2022/10/20''');
    //funcobj.WriteErrorLog(sql.Text);
    active := true;
  end;
end;

procedure TConsumer.Button7Click(Sender: TObject);
var
  eclApp, WorkBook, xlSheet: olevariant;
  i, j: integer;
begin
  if ((qryCBY.Active) and (qryCBY.recordcount = 0)) or (not qryCBY.Active) then
  begin
    Messagedlg('No record.', mtwarning, [mbyes], 0);
    abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    ProgressBar.Position := 0;
    ProgressBar.Max := qryCBY.RecordCount;
    ShowProgress.Visible := true;
    ShowProgress.Refresh;

    WorkBook := eclApp.workbooks.Add;
//    xlSheet := WorkBook.Worksheets['sheet1'];
//    xlSheet.Name := 'Consumer';

    for i := 0 to DBGridEh2.FieldCount - 1 do
    begin
      eclApp.Cells(1, i + 1) := DBGridEh2.Columns[i].Title.Caption;
    end;

    qryCBY.First;
    j := 2;
    while not qryCBY.Eof do
    begin
      for i := 0 to DBGridEh2.fieldcount - 1 do
      begin
        eclApp.Cells(j, i + 1) := DBGridEh2.Fields[i].Value;

        if DBGridEh2.Fields[i].FieldName = 'PAIRS' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,##0';

        if DBGridEh2.Fields[i].FieldName = 'QTY' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,#';

        if DBGridEh2.Fields[i].FieldName = 'AMOUNT' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,##0.00';

        if DBGridEh2.Fields[i].FieldName = 'Customs_No' then
          eclApp.Cells(j, i + 1) := #39 + DBGridEh2.Fields[i].Value;

        eclApp.ActiveSheet.Rows[j].Font.Size := 10;
        eclApp.ActiveSheet.Rows[j].font.name := 'Calibri';
        eclApp.ActiveSheet.Rows[j].HorizontalAlignment := $FFFFEFF4;

      end;
      ProgressBar.Position := ProgressBar.Position + 1;
      ProgressBar.Refresh;
      qryCBY.Next;
      inc(j);
    end;

    eclApp.columns.autofit;
    ShowProgress.Visible := false;
    showmessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
    begin
      ShowProgress.Visible := false;
      showmessage(F.Message);
    end;
  end;
end;

procedure TConsumer.Button8Click(Sender: TObject);
begin
  if frmCWHL_Invoice=nil then
    frmCWHL_Invoice:=TfrmCWHL_Invoice.Create(Self);
  frmCWHL_Invoice.Show;
end;

procedure TConsumer.mniMod_CDCClick(Sender: TObject);
begin
  with query1 do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
  end;
  mniSav_CDC.Enabled := True;
  mniCan_CDC.Enabled := True;
end;

procedure TConsumer.mniSav_CDCClick(Sender: TObject);
begin
   try
    with query1 do
    begin
      First;
      while not Eof do
      begin
        case UpdateStatus of
          usModified:
            begin
              with Qry_Temp do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE DevtoSimis ');
                SQL.Add('SET AcVNACC=' + query1.FieldByName('AcVNACC').AsString + ',AcUserID=''' + main.Edit1.Text + ''',AcUserDate=GETDATE() ');
                SQL.Add('WHERE InvoiceNo=''' + query1.FieldByName('InvoiceNo').AsString + ''' AND YPDH=''' + query1.FieldByName('YPDH').AsString + ''' and TestNo=''' + query1.FieldByName('TestNo').AsString + ''' ');
                //funcobj.WriteErrorLog(sql.Text);
                ExecSQL;
              end;
            end;
        end;
        Next;
      end;
    end;
    mniSav_CDC.Enabled := False;
    mniCan_CDC.Enabled := False;
    Button3.Click;
  except
    on E: Exception do
      ShowMessage('Have wrong! Can not save data!' + #13 + E.Message);
  end;
end;

procedure TConsumer.mniCan_CDCClick(Sender: TObject);
begin
  with query1 do
  begin
    Close;
    RequestLive := False;
    CachedUpdates := False;
    Open;
  end;
  mniSav_CDC.Enabled := False;
  mniCan_CDC.Enabled := False;
end;

procedure TConsumer.Button9Click(Sender: TObject);
begin
  Import_VATNo:=TImport_VATNo.create(self);
  Import_VATNo.Label6.caption:='Mass';
  Import_VATNo.show;
end;

procedure TConsumer.Button10Click(Sender: TObject);
begin
  Import_VATNo:=TImport_VATNo.create(self);
  Import_VATNo.Label6.caption:='Dev';
  Import_VATNo.show;
end;

procedure TConsumer.Button11Click(Sender: TObject);
begin
  Import_VATNo:=TImport_VATNo.create(self);
  Import_VATNo.Label6.caption:='CBY';
  Import_VATNo.show;
end;

procedure TConsumer.mniMod_CBYClick(Sender: TObject);
begin
  with qryCBY do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
  end;
  mniSav_CBY.Enabled := True;
  mniCan_CBY.Enabled := True;
end;

procedure TConsumer.mniSav_CBYClick(Sender: TObject);
begin
  try
    with qryCBY do
    begin
      First;
      while not Eof do
      begin
        case UpdateStatus of
          usModified:
            begin
              with Qry_Temp do
              begin
                Close;
                SQL.Clear;
                SQL.Add('UPDATE INVOICE_D ');
                SQL.Add('SET AcVNACC=' + qryCBY.FieldByName('AcVNACC').AsString + ',AcUserID=''' + main.Edit1.Text + ''',AcUserDate=GETDATE() ');
                SQL.Add('FROM INVOICE_D  ');
                SQL.Add('LEFT JOIN CBY_Orders ON INVOICE_D.RYNO=CBY_Orders.workOrderId ');
                SQL.Add('WHERE Inv_No=''' + qryCBY.FieldByName('INV_NO').AsString + ''' AND MasterOrder=''' + qryCBY.FieldByName('RYNO').AsString + '''');
                //funcobj.WriteErrorLog(sql.Text);
                ExecSQL;
              end;
            end;
        end;
        Next;
      end;
    end;
    mniSav_CBY.Enabled := False;
    mniCan_CBY.Enabled := False;
    Button6.Click;
  except
    on E: Exception do
      ShowMessage('Have wrong! Can not save data!' + #13 + E.Message);
  end;
end;

procedure TConsumer.mniCan_CBYClick(Sender: TObject);
begin
  with qryCBY do
  begin
    Close;
    RequestLive := False;
    CachedUpdates := False;
    Open;
  end;
  mniSav_CBY.Enabled := False;
  mniCan_CBY.Enabled := False;
end;

procedure TConsumer.Button12Click(Sender: TObject);
begin
  qry_Report.Active := false;
  if (not CheckBox6.Checked) and (not CheckBox7.Checked) and (not CheckBox9.Checked) and (not CheckBox10.Checked) and (not CheckBox11.Checked) and (trim(edit13.Text) = '') and (trim(edit12.Text) = '') and (trim(Edit14.Text) = '') and (trim(Edit15.Text) = '') then
  begin
    Messagedlg('Pls, input data for FILLTER first!', mtwarning, [mbyes], 0);
    abort;
  end;
  with Qry_Temp do
  begin
    active := false;
    sql.Clear;
    SQL.Add('IF OBJECT_ID (''tempdb..#N8_INVOICE_D'') IS NOT NULL DROP TABLE #N8_INVOICE_D');
    SQL.Add('SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_Name,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,');
    SQL.Add('	    	inv.AMOUNT,case when inv.Customs_No is not null then inv.Customs_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date,sb.Bill_FCR_No,sb.Kind_Loading,');
    sql.Add('       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im.inv_Type,');
    sql.Add('       '' '' AS Shipmode,'' '' as SPECID,im.REF as REF,sb.TC_PL_Date,sb.Booking_No,');
    sql.Add('       DDZLWHEX.IODate as IODate,');
    sql.Add('       DDZLWHEX.QTY as Qty,');
    sql.Add('       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) as AcVNACC,inv.VAT_NO,inv.VAT_Date, ');   // INTO #N8_INVOICE_D
    sql.Add('       im.CFMID,im.CFMDate,''USD'' AS TienTe,''B00'' AS MaThueSuat, ''Xuat hang theo hoa don so: ''+isnull(inv.VAT_NO,'' '')+''.根據發票號..出貨 thuoc to khai'' AS memo1, ');
    sql.Add('   	  CAST(0 AS int) AS TienThue1, CAST(0 AS int) AS TienThue2, ''51111'' AS TKKT, '''+BoPhan_Mass+''' AS BoPhan, CAST(NULL AS VARCHAR(50)) AS memo2,im.CURRENCY  ');
    sql.Add('INTO #N8_INVOICE_D');
    SQL.Add('FROM Ship_Booking sb INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO');
    SQL.Add('LEFT JOIN INVOICE_D inv ON inv.INV_NO = im.INV_NO');
    SQL.Add('LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID');
    sql.Add('LEFT JOIN YWDD ON YWDD.DDBH=inv.RYNO');
    sql.Add('left join DDZL do on do.DDBH=YWDD.YSBH ');
    Sql.Add('LEFT JOIN ( SELECT DDBH,CONVERT(VARCHAR(7),Exedate,111) IODate, SUM(YWCP.QTY) QTY ,INV_NO');
    sql.Add('			       FROM (select * from YWCP union all select * from YWCPOld) YWCP left join  (select INV_NO,ryno,xh,ctq,ctz from packing  group by INV_NO,ryno,xh,ctq,ctz)  packing');
    sql.Add(' on ywcp.ddbh=packing.ryno and ywcp.xh =packing.XH and CARTONNO between packing.ctq and packing.ctz ');
    sql.Add('       		 WHERE SB=''3'' GROUP BY DDBH, CONVERT(VARCHAR(7),Exedate,111),INV_NO) DDZLWHEX ON DDZLWHEX.DDBH=inv.RYNO AND DDZLWHEX.IODate=CONVERT(VARCHAR(7),sb.ExFty_Date,111) and  DDZLWHEX.INV_NO=sb.INV_NO');
    SQL.Add('LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date');
    SQL.Add('LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK');
    sql.Add('WHERE ( sb.CO_CFMID IS NOT NULL');
    sql.Add('	       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR,GETDATE(),111)');
    sql.Add('			        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NOT NULL )');
    sql.Add('	  )');
    sql.Add('   and im.inv_Type = ''Mass Production'' ');
    if edit13.Text <> '' then
      sql.Add(' and im.INV_NO like ''' + edit13.Text + '%'' ');
    if checkbox7.Checked then
    begin
      SQL.Add(' and convert(varchar,sb.ExFty_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP21.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP22.Date) + '''');
    end;
    if checkbox6.checked then
    begin
      SQL.Add(' and convert(varchar,im.INV_DATE,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP19.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP20.Date) + '''');
    end;
    if checkbox9.checked then
    begin
      SQL.Add(' and convert(varchar,sb.Sailing_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP23.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP24.Date) + '''');
    end;
    if checkbox10.checked then
    begin
      SQL.Add(' and convert(varchar,im.CFMDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP25.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP26.Date) + '''');
    end;
    if checkbox11.checked then
    begin
      SQL.Add(' and convert(varchar,inv.VAT_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP27.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP28.Date) + '''');
    end;
    if edit14.Text <> '' then
      sql.Add(' and upper(im.TO_WHERE) like ''' + edit14.Text + '%'' ');
    if edit12.Text <> '' then
      sql.Add(' and inv.RYNO like ''' + edit12.Text + '%'' ');
    if edit15.Text <> '' then
      sql.Add('and inv.ARTICLE like ''' + trim(edit15.Text) + '%'' ');
    if (chkConfirm.Checked) or (chkUnConfirm.Checked) then
    begin
      SQL.Add(' AND (1=2');
      if chkConfirm.Checked then
        SQL.Add('    OR ISNULL(im.CFMID,'''')<>'''' ');
      if chkUnConfirm.Checked then
        SQL.Add('    OR ISNULL(im.CFMID,'''')='''' ');
      SQL.Add(')');
    end;
    sql.Add('UNION ALL ');
    SQL.Add('SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_Name,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,');
    SQL.Add('	    	inv.AMOUNT,case when inv.Customs_No is not null then inv.Customs_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date,sb.Bill_FCR_No,sb.Kind_Loading,');
    sql.Add('       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im.inv_Type,');
    sql.Add('       '' '' AS Shipmode,'' '' as SPECID,im.REF as REF,sb.TC_PL_Date,sb.Booking_No,');
    sql.Add('       CBYEX.IODate as IODate, CBYEX.QTY as Qty,');
    sql.Add('       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) as AcVNACC,inv.VAT_NO,inv.VAT_Date,');
    sql.Add('       im.CFMID,im.CFMDate,''USD'' AS TienTe,''B00'' AS MaThueSuat, ''Xuat hang theo hoa don so: ''+isnull(inv.VAT_NO,'' '')+''.根據發票號..出貨 thuoc to khai'' AS memo1, ');
    sql.Add('   	  CAST(0 AS int) AS TienThue1, CAST(0 AS int) AS TienThue2, ''51111'' AS TKKT, '''+BoPhan_KT+''' AS BoPhan, CAST(NULL AS VARCHAR(50)) AS memo2,im.CURRENCY  ');
    SQL.Add('FROM Ship_Booking sb INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO');
    SQL.Add('LEFT JOIN INVOICE_D inv ON inv.INV_NO = im.INV_NO');
    SQL.Add('LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID');
    sql.Add('left join ( select workOrderId as DDBH, CONVERT(VARCHAR(7),Shipdate,111) IODate, sum (CBY_Orders.total * CBY_Orders.itemNumber) as Qty');
    sql.Add('			       from CBY_Orders where shipdate is not null  GROUP BY workOrderId, CONVERT(VARCHAR(7),Shipdate,111)) CBYEX on CBYEX.DDBH=inv.RYNO AND CBYEX.IODate=CONVERT(VARCHAR(7),sb.ExFty_Date,111)');
    SQL.Add('LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date');
    SQL.Add('LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK');
    sql.Add('WHERE ( sb.CO_CFMID IS NOT NULL');
    sql.Add('	       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR,GETDATE(),111)');
    sql.Add('			        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NOT NULL )');
    sql.Add('	  )');
    if edit13.Text <> '' then
      sql.Add(' and im.INV_NO like ''' + edit13.Text + '%'' ');
    if checkbox7.Checked then
    begin
      SQL.Add(' and convert(varchar,sb.ExFty_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP21.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP22.Date) + '''');
    end;
    if checkbox6.checked then
    begin
      SQL.Add(' and convert(varchar,im.INV_DATE,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP19.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP20.Date) + '''');
    end;
    if checkbox9.checked then
    begin
      SQL.Add(' and convert(varchar,sb.Sailing_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP23.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP24.Date) + '''');
    end;
    if checkbox10.checked then
    begin
      SQL.Add(' and convert(varchar,im.CFMDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP25.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP26.Date) + '''');
    end;
    if checkbox11.checked then
    begin
      SQL.Add(' and convert(varchar,inv.VAT_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP27.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP28.Date) + '''');
    end;
    if edit14.Text <> '' then
      sql.Add(' and upper(im.TO_WHERE) like ''' + edit14.Text + '%'' ');
    if edit12.Text <> '' then
      sql.Add(' and inv.RYNO like ''' + edit12.Text + '%'' ');
    if edit15.Text <> '' then
      sql.Add('and inv.ARTICLE like ''' + trim(edit15.Text) + '%'' ');
    sql.Add('  and Inv_Type=''CBY'' and convert(varchar,sb.ExFty_Date,111) <= ''2022/10/20''');
    if (chkConfirm.Checked) or (chkUnConfirm.Checked) then
    begin
      SQL.Add(' AND (1=2');
      if chkConfirm.Checked then
        SQL.Add('    OR ISNULL(im.CFMID,'''')<>'''' ');
      if chkUnConfirm.Checked then
        SQL.Add('    OR ISNULL(im.CFMID,'''')='''' ');
      SQL.Add(')');
    end;
    sql.Add('UNION ALL');
    SQL.Add('SELECT sb.ExFty_Date,im.INV_NO, im.INV_DATE,im.RISK,si.Company_Name,inv.RYNO,inv.ARTICLE,inv.PAIRS, inv.UNIT_PRICE,');
    SQL.Add('	    	inv.AMOUNT,case when inv.Customs_No is not null then inv.Customs_No else  sb.Customs_No end as Customs_No, sb.Sailing_Date,sb.Bill_FCR_No,sb.Kind_Loading,');
    sql.Add('       sb.Forwarder,im.CUSTID,upper(im.TO_WHERE) as COUNTRYEN,im.inv_Type,');
    sql.Add('       '' '' AS Shipmode,'' '' as SPECID,im.REF as REF,sb.TC_PL_Date,sb.Booking_No,');
    sql.Add('       CONVERT(VARCHAR(7),CBYEX.IODate,111) IODate, CBYEX.QTY as Qty,');
    sql.Add('       ci.CWHL,isnull(inv.AcVNACC,round(inv.AMOUNT*ci.CWHL,0)) as AcVNACC,inv.VAT_NO,inv.VAT_Date,');
    sql.Add('       im.CFMID,im.CFMDate,''USD'' AS TienTe,''B00'' AS MaThueSuat, ''Xuat hang theo hoa don so: ''+isnull(inv.VAT_NO,'' '')+''.根據發票號..出貨 thuoc to khai'' AS memo1, ');
    sql.Add('   	  CAST(0 AS int) AS TienThue1, CAST(0 AS int) AS TienThue2, ''51111'' AS TKKT, '''+BoPhan_KT+''' AS BoPhan, CAST(NULL AS VARCHAR(50)) AS memo2,im.CURRENCY  ');
    SQL.Add('FROM Ship_Booking sb INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO');
    sql.Add('LEFT JOIN (  select INVOICE_D.INV_NO,MasterOrder as RYNO, sum(CBY_Orders.total*CBY_Orders.itemNumber) as pairs,ARTICLE,UNIT_PRICE,sum(CBY_Orders.total*CBY_Orders.itemNumber*UNIT_PRICE) as Amount,CO_HSCode,AcVNACC,Customs_No ');
    sql.Add('                    ,VAT_NO,VAT_Date ');
    sql.Add('			        from INVOICE_D left join INVOICE_M on INVOICE_D.INV_NO=INVOICE_M.INV_NO');
    sql.Add('             LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = INVOICE_D.RYNO');
    sql.Add('       			where Inv_Type=''CBY''');
    sql.Add('			        group by INVOICE_D.INV_NO,MasterOrder,ARTICLE,UNIT_PRICE,CO_HSCode,AcVNACC,Customs_No,VAT_NO,VAT_Date)inv ON inv.INV_NO = im.INV_NO ');
    SQL.Add('LEFT JOIN DE_CUST de ON de.CUSTID=im.CUSTID');
    sql.Add('LEFT JOIN (  select INVOICE_D.INV_NO,MasterOrder as DDBH, Shipdate as IODate,INVOICE_D.UNIT_PRICE, sum (CBY_Orders.total * CBY_Orders.itemNumber) as Qty');
    sql.Add('			        from CBY_Orders');
    sql.Add('             left join INVOICE_D on CBY_Orders.workOrderId =INVOICE_D.RYNO where shipdate is not null');
    sql.Add('			        GROUP BY INVOICE_D.INV_NO,MasterOrder, Shipdate,INVOICE_D.UNIT_PRICE) CBYEX on CBYEX.DDBH=inv.RYNO AND CBYEX.IODate=sb.ExFty_Date and IODate=sb.ExFty_Date and CBYEX.INV_NO=im.INV_NO and CBYEX.UNIT_PRICE=inv.UNIT_PRICE ');
    SQL.Add('LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=sb.ExFty_Date');
    SQL.Add('LEFT JOIN Ship_InfoCustomer si ON si.COMID=im.RISK');
    sql.Add('WHERE ( sb.CO_CFMID IS NOT NULL');
    sql.Add('	       OR ( CONVERT(VARCHAR,sb.ExFty_Date,111)<=CONVERT(VARCHAR,GETDATE(),111)');
    sql.Add('			        AND sb.Customs_No IS NOT NULL AND inv.CO_HSCode IS NOT NULL )');
    sql.Add('	  )');
    if edit13.Text <> '' then
      sql.Add(' and im.INV_NO like ''' + edit13.Text + '%'' ');
    if checkbox7.Checked then
    begin
      SQL.Add(' and convert(varchar,sb.ExFty_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP21.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP22.Date) + '''');
    end;
    if checkbox6.checked then
    begin
      SQL.Add(' and convert(varchar,im.INV_DATE,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP19.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP20.Date) + '''');
    end;
    if checkbox9.checked then
    begin
      SQL.Add(' and convert(varchar,sb.Sailing_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP23.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP24.Date) + '''');
    end;
    if checkbox10.checked then
    begin
      SQL.Add(' and convert(varchar,im.CFMDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP25.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP26.Date) + '''');
    end;
    if checkbox11.checked then
    begin
      SQL.Add(' and convert(varchar,inv.VAT_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP27.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP28.Date) + '''');
    end;
    if edit14.Text <> '' then
      sql.Add(' and upper(im.TO_WHERE) like ''' + edit14.Text + '%'' ');
    if edit12.Text <> '' then
      sql.Add(' and inv.RYNO like ''' + edit12.Text + '%'' ');
    if edit15.Text <> '' then
      sql.Add('and inv.ARTICLE like ''' + trim(edit15.Text) + '%'' ');
    sql.Add('  and Inv_Type=''CBY'' and convert(varchar,sb.ExFty_Date,111) > ''2022/10/20''');
    if (chkConfirm.Checked) or (chkUnConfirm.Checked) then
    begin
      SQL.Add(' AND (1=2');
      if chkConfirm.Checked then
        SQL.Add('    OR ISNULL(im.CFMID,'''')<>'''' ');
      if chkUnConfirm.Checked then
        SQL.Add('    OR ISNULL(im.CFMID,'''')='''' ');
      SQL.Add(')');
    end;
    sql.Add('UNION ALL ');
    sql.Add('SELECT DEVTOSIMIS.ExFtyDate,DEVTOSIMIS.InvoiceNo as INV_NO,DEVTOSIMIS.InvoiceDate,DEVTOSIMIS.Company,NULL as Company_Name,DEVTOSIMIS.YPDH as RYNO,DEVTOSIMIS.SR as ARTICLE,DEVTOSIMIS.QTY as PAIRS,DEVTOSIMIS.UnitPrice as UNIT_PRICE,DEVTOSIMIS.Amount, ');
    sql.Add('	      DEVTOSIMIS.CustomsNo,DEVTOSIMIS.SailingDate,DEVTOSIMIS.FCRNo_BillNo,DEVTOSIMIS.KindLoading,DEVTOSIMIS.Forwarder,DEVTOSIMIS.CUSTID,DEVTOSIMIS.Country,'''' as inv_Type,'''' as Shipmode,'''' as SPECID,');
    sql.Add('     	DevtoSimis.InvoiceNo as REF,DEVTOSIMIS.TCPackingListSubmissionDate,DEVTOSIMIS.BookingNO,DEVTOSIMIS.IODate,DEVTOSIMIS.QTY as Qty,CWHL,isnull(AcVNACC,round(AMOUNT*ci.CWHL,0)) as AcVNACC,VAT_NO,VAT_Date, ');
    sql.Add('	      CFMID,CFMDate,''USD'' AS TienTe,''B00'' AS MaThueSuat, ''Xuat hang theo hoa don so: ''+isnull(VAT_NO,'' '')+''.根據發票號..出貨 thuoc to khai'' AS memo1, ');
    sql.Add('       CAST(0 AS int) AS TienThue1, CAST(0 AS int) AS TienThue2, ''51111'' AS TKKT, '''+BoPhan_KT+''' AS BoPhan, CAST(NULL AS VARCHAR(50)) AS memo2,''USD'' as CURRENCY ');
    sql.Add('FROM DEVTOSIMIS ');
    sql.Add('LEFT JOIN CWHL_Invoice ci ON ci.InvoiceDate=DEVTOSIMIS.ExFtyDate ');
    sql.Add('WHERE 1=1 ');
    if edit13.Text <> '' then
      sql.Add(' and DEVTOSIMIS.InvoiceNo like ''' + edit13.Text + '%'' ');
    if CheckBox7.Checked then
    begin
      SQL.Add(' and convert(varchar,DEVTOSIMIS.ExFtyDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP21.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP22.Date) + '''');
    end;
    if checkbox6.checked then
    begin
      SQL.Add(' and convert(varchar,DEVTOSIMIS.InvoiceDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP19.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP20.Date) + '''');
    end;
    if checkbox9.checked then
    begin
      SQL.Add(' and convert(varchar,DEVTOSIMIS.SailingDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP23.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP24.Date) + '''');
    end;
    if checkbox10.checked then
    begin
      SQL.Add(' and convert(varchar,CFMDate,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP25.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP26.Date) + '''');
    end;
    if checkbox11.checked then
    begin
      SQL.Add(' and convert(varchar,VAT_Date,111) between ');
      SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP27.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP28.Date) + '''');
    end;
    if edit14.Text <> '' then
      sql.Add(' and upper(DEVTOSIMIS.Country) like ''' + edit14.Text + '%'' ');
    if edit12.Text <> '' then
      sql.Add(' and DEVTOSIMIS.YPDH like ''' + edit12.Text + '%'' ');
    if edit15.Text <> '' then
      sql.Add('and DEVTOSIMIS.SR like ''' + trim(edit15.Text) + '%'' ');
    if (chkConfirm.Checked) or (chkUnConfirm.Checked) then
    begin
      SQL.Add(' AND (1=2');
      if chkConfirm.Checked then
        SQL.Add('    OR ISNULL(CFMID,'''')<>'''' ');
      if chkUnConfirm.Checked then
        SQL.Add('    OR ISNULL(CFMID,'''')='''' ');
      SQL.Add(')');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
  end;
  with qry_Report do
  begin
    active := false;
    SQL.Clear;
    sql.Add(' SELECT ExFty_Date,INV_DATE,'''+MaKH+''' as MaKH,RISK,TienTe,CWHL,INV_NO,'''+MaThueSuat+''' MaThueSuat,VAT_NO,VAT_Date,memo1,Customs_No,sum(AMOUNT) as AMOUNT,sum(AcVNACC) as AcVNACC, ');
    sql.Add('	       TienThue1,TienThue2,'''+TKKT+''' as TKKT,BoPhan,memo2,CURRENCY,CFMID,CFMDate,Inv_Type ');
    sql.Add(' FROM (');
    SQL.Add('         SELECT * FROM #N8_INVOICE_D');
    SQL.Add('       ) Report ');
    SQL.Add(' WHERE 1=1 ');
    sql.Add(' GROUP BY ExFty_Date,INV_NO,INV_DATE,RISK,Customs_No,CWHL,VAT_NO,VAT_Date,TienTe,memo1,TienThue1,TienThue2,inv_type,memo2,CURRENCY,CFMID,CFMDate,BoPhan ');
    //funcobj.WriteErrorLog(sql.Text);
    active := true;
  end;
end;

procedure TConsumer.Button14Click(Sender: TObject);
begin
  if frmCWHL_Invoice=nil then
    frmCWHL_Invoice:=TfrmCWHL_Invoice.Create(Self);
  frmCWHL_Invoice.Show;
end;

procedure TConsumer.Button5Click(Sender: TObject);
begin
  if frmCWHL_Invoice=nil then
    frmCWHL_Invoice:=TfrmCWHL_Invoice.Create(Self);
  frmCWHL_Invoice.Show;
end;

procedure TConsumer.Button13Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel();
  end else
  begin
    ExportDefaultExcel();
  end;
end;
procedure TConsumer.ExportDefaultExcel();
var
  eclApp, WorkBook, xlSheet: olevariant;
  i, j: integer;
begin
  if ((qry_Report.Active) and (qry_Report.recordcount = 0)) or (not qry_Report.Active) then
  begin
    Messagedlg('No record.', mtwarning, [mbyes], 0);
    abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    ProgressBar.Position := 0;
    ProgressBar.Max := qry_Report.RecordCount;
    ShowProgress.Visible := true;
    ShowProgress.Refresh;

    WorkBook := eclApp.workbooks.Add;
    xlSheet := WorkBook.Worksheets['sheet1'];
    xlSheet.Name := 'Consumer';

    for i := 0 to DBGridEh3.FieldCount - 1 do
    begin
      eclApp.Cells(1, i + 1) := DBGridEh3.Columns[i].Title.Caption;
    end;

    qry_Report.First;
    j := 2;
    while not qry_Report.Eof do
    begin
      for i := 0 to DBGridEh3.fieldcount - 1 do
      begin
        eclApp.Cells(j, i + 1) := DBGridEh3.Fields[i].Value;

        if DBGridEh3.Fields[i].FieldName = 'PAIRS' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,##0';

        if DBGridEh3.Fields[i].FieldName = 'QTY' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,#';

        if DBGridEh3.Fields[i].FieldName = 'AMOUNT' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,##0.00';

        if DBGridEh3.Fields[i].FieldName = 'AcVNACC' then
          eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := '#,##0';

        if DBGridEh3.Fields[i].FieldName = 'Customs_No' then
          eclApp.Cells(j, i + 1) := #39 + DBGridEh3.Fields[i].Value;

        eclApp.ActiveSheet.Rows[j].Font.Size := 10;
        eclApp.ActiveSheet.Rows[j].font.name := 'Calibri';
        eclApp.ActiveSheet.Rows[j].HorizontalAlignment := $FFFFEFF4;

      end;
      ProgressBar.Position := ProgressBar.Position + 1;
      ProgressBar.Refresh;
      qry_Report.Next;
      inc(j);
    end;

    eclApp.columns.autofit;
    ShowProgress.Visible := false;
    showmessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
    begin
      ShowProgress.Visible := false;
      showmessage(F.Message);
    end;
  end;
end;
procedure TConsumer.ExportFormatExcel();
var
  eclApp, WorkBook, xlSheet: olevariant;
  i, j: integer;
begin
  if ((qry_Report.Active) and (qry_Report.recordcount = 0)) or (not qry_Report.Active) then
  begin
    Messagedlg('No record.', mtwarning, [mbyes], 0);
    abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    ProgressBar.Position := 0;
    ProgressBar.Max := qry_Report.RecordCount;
    ShowProgress.Visible := true;
    ShowProgress.Refresh;

    WorkBook := eclApp.workbooks.Add;
    xlSheet := WorkBook.Worksheets['sheet1'];
    
    eclApp.Cells(1, 1) := '日期'+char(10)+'Ngay CT';
    eclApp.Cells(1, 2) := '發票日期'+char(10)+'Ngay hoa don';
    eclApp.Cells(1, 3) := '客戶代號'+char(10)+'Ma KH';
    eclApp.Cells(1, 4) := '幣別'+char(10)+'Tien te';
    eclApp.Cells(1, 5) := '匯率'+char(10)+'Ty gia';
    eclApp.Cells(1, 6) := 'INVOICE NO';
    eclApp.Cells(1, 7) := '稅別碼'+char(10)+'Ma thue suat';
    eclApp.Cells(1, 8) := '發票號碼'+char(10)+'Ma hoa don';
    eclApp.Cells(1, 9) := '備註（單頭）'+char(10)+'Ghi chu (Dau don)';
    eclApp.Cells(1, 10) := '銷貨單號'+char(10)+'Ma to khai - Don hang';
    eclApp.Cells(1, 11) := '原幣應收金額'+char(10)+'So tien nguyen te';
    eclApp.Cells(1, 12) := '本幣應收金額'+char(10)+'So tien noi te chua thue';
    eclApp.Cells(1, 13) := '原幣稅額'+char(10)+'Tien thue nguyen te';
    eclApp.Cells(1, 14) := '本幣稅額'+char(10)+'Tien thue noi te';
    eclApp.Cells(1, 15) := '會計科目'+char(10)+'TKKT doi ung';
    eclApp.Cells(1, 16) := '部門'+char(10)+'Bo phan';
    eclApp.Cells(1, 17) := '備註(單身)'+char(10)+'Ghi chu (Than don)';
    eclApp.Cells(1, 18) := '專案代號'+char(10)+'Ma to khai';

    eclApp.ActiveSheet.Range['A1:R1'].VerticalAlignment:=2;


    qry_Report.First;
    j:=2;
    for i:=1 to qry_Report.RecordCount do
    begin
      eclApp.Cells(j,1):=qry_Report.FieldByName('VAT_Date').Value;
      eclApp.Cells(j,2):=qry_Report.FieldByName('VAT_Date').Value;
      eclApp.Cells(j,3):=qry_Report.FieldByName('MaKH').Value;
      eclApp.Cells(j,4):=qry_Report.FieldByName('TienTe').Value;
      eclApp.Cells(j,5):=qry_Report.FieldByName('CWHL').Value;
      eclApp.Cells[j,5].NumberFormat := '#,##0';
      eclApp.Cells(j,6):=qry_Report.FieldByName('Inv_No').Value;
      eclApp.Cells(j,7):=qry_Report.FieldByName('MaThueSuat').Value;
      eclApp.Cells(j,9):=qry_Report.FieldByName('Memo1').Value;
      eclApp.Cells(j,10):=#39+qry_Report.FieldByName('Customs_No').Value;
      eclApp.Cells(j,11):=qry_Report.FieldByName('AMOUNT').Value;
      eclApp.Cells[j,11].NumberFormat := '#,##0.00';
      eclApp.Cells(j,12):=qry_Report.FieldByName('AcVNacc').Value;
      eclApp.Cells[j,12].NumberFormat := '#,##0';
      eclApp.Cells(j,13):=qry_Report.FieldByName('TienThue1').Value;
      eclApp.Cells(j,14):=qry_Report.FieldByName('TienThue2').Value;
      eclApp.Cells(j,15):=qry_Report.FieldByName('TKKT').Value;
      eclApp.Cells(j,16):=qry_Report.FieldByName('BoPhan').Value;
      eclApp.Cells(j,18):=#39+qry_Report.FieldByName('Customs_No').Value;
      qry_Report.Next;
      inc(j);
    end;

    eclApp.columns.autofit;
    ShowProgress.Visible := false;
    showmessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
    begin
      ShowProgress.Visible := false;
      showmessage(F.Message);
    end;
  end;
end;
procedure TConsumer.mni_ConfirmClick(Sender: TObject);
var j:Variant;
begin
  if MessageDlg('Do you want to confirm this?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    Abort;

  j:=qry_Report.FieldByName('INV_NO').Value;

  with Qry_Temp do
  begin
    Close;
    SQL.Clear;
    if ((qry_Report.FieldByName('Inv_Type').AsString='Mass Production') or (qry_Report.FieldByName('Inv_Type').AsString='CBY')) then
    begin
      SQL.Add('UPDATE INVOICE_M SET CFMID=''' + main.Edit1.Text + ''',CFMDate=GETDATE()');
      SQL.Add('WHERE Inv_No=''' + qry_Report.FieldByName('INV_NO').AsString + '''');
    end else
    begin
      SQL.Add('UPDATE DEVTOSIMIS SET CFMID=''' + main.Edit1.Text + ''',CFMDate=GETDATE()');
      SQL.Add('WHERE InvoiceNo=''' + qry_Report.FieldByName('INV_NO').AsString + '''');
    end;
    ExecSQL;
  end;
  Button12.Click;
  qry_Report.Locate('INV_NO', j, []);

end;

procedure TConsumer.mni_ConfirmAllClick(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    bookmarklist:tbookmarklistEH;
begin
  if MessageDlg('Do you really want to confirm data?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    Abort;

  qry_Report.First;
  while not qry_Report.Eof do
  begin
    with Qry_Temp do
    begin
      active := false;
      sql.Clear;
      if ((qry_Report.FieldByName('Inv_Type').AsString='Mass Production') or (qry_Report.FieldByName('Inv_Type').AsString='CBY')) then
      begin
        SQL.Add('UPDATE INVOICE_M SET CFMID=''' + main.Edit1.Text + ''',CFMDate=GETDATE()');
        SQL.Add('WHERE Inv_No=''' + qry_Report.FieldByName('INV_NO').AsString + '''');
      end else
      begin
        SQL.Add('UPDATE DEVTOSIMIS SET CFMID=''' + main.Edit1.Text + ''',CFMDate=GETDATE()');
        SQL.Add('WHERE InvoiceNo=''' + qry_Report.FieldByName('INV_NO').AsString + '''');
      end;
      execsql;
    end;
    qry_Report.Next;
  end;

  Button12.Click;
end;

procedure TConsumer.mni_UnConfirmClick(Sender: TObject);
var j:Variant;
begin
  if MessageDlg('Do you want to unconfirm this?',mtConfirmation,[mbYes,mbNo],0)<>mrYes then
    Abort;

  j:=qry_Report.FieldByName('INV_NO').AsString;

  with Qry_Temp do
  begin
    Close;
    SQL.Clear;
    if ((qry_Report.FieldByName('Inv_Type').AsString='Mass Production') or (qry_Report.FieldByName('Inv_Type').AsString='CBY')) then
    begin
      SQL.Add('UPDATE INVOICE_M SET CFMID=NULL,CFMDate=NULL');
      SQL.Add('WHERE Inv_No=''' + qry_Report.FieldByName('INV_NO').AsString + '''');
    end else
    begin
      SQL.Add('UPDATE DEVTOSIMIS SET CFMID=NULL,CFMDate=NULL');
      SQL.Add('WHERE InvoiceNo=''' + qry_Report.FieldByName('INV_NO').AsString + '''');
    end;
    ExecSQL;
  end;
  Button12.Click;
  qry_Report.Locate('INV_NO', j, []);
end;

procedure TConsumer.mni_UnConfirmAllClick(Sender: TObject);
begin
  qry_Report.First;
  while not qry_Report.Eof do
  begin
    with Qry_Temp do
    begin
      active := false;
      sql.Clear;
      if ((qry_Report.FieldByName('Inv_Type').AsString='Mass Production') or (qry_Report.FieldByName('Inv_Type').AsString='CBY')) then
      begin
        SQL.Add('UPDATE INVOICE_M SET CFMID=NULL,CFMDate=NULL');
        SQL.Add('WHERE Inv_No=''' + qry_Report.FieldByName('INV_NO').AsString + '''');
      end else
      begin
        SQL.Add('UPDATE DEVTOSIMIS SET CFMID=NULL,CFMDate=NULL');
        SQL.Add('WHERE InvoiceNo=''' + qry_Report.FieldByName('INV_NO').AsString + '''');
      end;
      //funcobj.WriteErrorLog(sql.Text);
      execsql;
    end;
    qry_Report.Next;
  end;

  Button12.Click;
end;
procedure TConsumer.TransferWF();
begin
  with Qry_Temp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE '+LinkSV+'.ACRXB');
    SQL.Add('WHERE EXISTS(SELECT 1 FROM '+LinkSV+'.ACRXA WHERE XA002=XB002 AND ISNULL(XA015,0)=0)  ');
    SQL.Add('  AND (EXISTS (SELECT 1 FROM #N8_INVOICE_D WHERE INV_NO=XB002 COLLATE Chinese_Taiwan_Stroke_CI_AS AND RYNO=XB004 COLLATE Chinese_Taiwan_Stroke_CI_AS))  ');
    SQL.Add('DELETE '+LinkSV+'.ACRXA');
    SQL.Add('WHERE ISNULL(XA015,0)=0  ');
    SQL.Add('  AND(EXISTS (SELECT 1 FROM #N8_INVOICE_D WHERE INV_NO=XA002 COLLATE Chinese_Taiwan_Stroke_CI_AS))  ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;

    SQL.Clear;
    SQL.Add('INSERT INTO '+LinkSV+'.ACRXB');
    SQL.Add('(XB001,XB002,XB003,XB004,XB005,XB006,XB007,XB008,XB009');
    SQL.Add(',XB010,XB011,XB012,XB013,XB014,XB015,XB016,XB017,XB018,XB019)');
    SQL.Add('SELECT XB001,XB002,CASE WHEN LEN(XB003)=1 THEN ''000''');
    SQL.Add('						             WHEN LEN(XB003)=2 THEN ''00''');
    SQL.Add('						             WHEN LEN(XB003)=3 THEN ''0''');
    SQL.Add('						             ELSE '''' END+XB003 XB003');
    SQL.Add('      ,XB004,XB005,XB006,XB007,XB008,XB009,XB010');
    SQL.Add('      ,XB011,XB012,XB013,XB014,XB015,ACRXB.XB016,XB017,XB018,XB019');
    SQL.Add('FROM (SELECT CONVERT(VARCHAR,GETDATE(),112) XB001,INV_NO XB002');
    SQL.Add('			       ,CAST(ROW_NUMBER() OVER (PARTITION BY INV_NO ORDER BY RYNO) AS VARCHAR) XB003');
    SQL.Add('			       ,RYNO XB004,ARTICLE XB005,QTY XB006,''PRS'' XB007');
    SQL.Add('			       ,UNIT_PRICE XB008,AMOUNT XB009,AMOUNT XB010,0 XB011');
    SQL.Add('			       ,CASE WHEN CURRENCY=''USD'' THEN AcVNACC ELSE AMOUNT END XB012');
    SQL.Add('			       ,CASE WHEN CURRENCY=''USD'' THEN AcVNACC ELSE AMOUNT END XB013');
    SQL.Add('			       ,0 XB014,'''' XB015,'''' XB016,'''' XB017,'''' XB018,BoPhan XB019');
    SQL.Add('      FROM #N8_INVOICE_D');
    SQL.Add('	     ) ACRXB');
    SQL.Add('WHERE NOT EXISTS(SELECT 1 FROM '+LinkSV+'.ACRXA A INNER JOIN '+LinkSV+'.ACRXB B ON A.XA001=B.XB001 AND A.XA002=B.XB002  ');
    SQL.Add('                 WHERE ISNULL(XA015,0)<>0  ');
    SQL.Add('  				          AND XB002=ACRXB.XB002 COLLATE Chinese_Taiwan_Stroke_CI_AS)  ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;

    SQL.Clear;
    SQL.Add('INSERT INTO '+LinkSV+'.ACRXA');
    SQL.Add('(XA001,XA002,XA003,XA004,XA005,XA006,XA007,XA008,XA009,XA010,XA011');
    SQL.Add(',XA012,XA013,XA014,XA015,XA016,XA017,XA018,XA019,XA020,XA021,XA022,XA023)');

    SQL.Add('SELECT CONVERT(VARCHAR,GETDATE(),112) XA001,INV_NO XA002,CONVERT(VARCHAR,VAT_Date,112) XA003,'''+MaKH+''' XA004');
    SQL.Add('	     ,''USD'' XA005,CWHL XA006,'''+MaThueSuat+''' XA007');
    SQL.Add('	     ,(SELECT COUNT(1) FROM '+LinkSV+'.ACRXB WHERE XB001=CONVERT(VARCHAR,GETDATE(),112) AND XB002=INV_NO COLLATE Chinese_Taiwan_Stroke_BIN) XA008');
    SQL.Add('	     ,SUM(AcVNACC) XA009,SUM(AcVNACC) XA010,0 XA011');
    SQL.Add('	     ,SUM(AcVNACC) XA012,SUM(AcVNACC) XA013,0 XA014');
    SQL.Add('	     ,''0'' XA015,'''' XA016,'''+MKS+''' XA017,'''' XA018');
    SQL.Add('	     ,VAT_NO XA019,CONVERT(VARCHAR,VAT_DATE,112) XA020,SUM(AcVNACC) XA021,0 XA022,memo1 XA023');
    SQL.Add('FROM #N8_INVOICE_D');
    SQL.Add('GROUP BY INV_NO,CONVERT(VARCHAR,INV_DATE,112),CWHL,VAT_NO,CONVERT(VARCHAR,VAT_DATE,112),memo1');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;
  end;
  pnlInf.Visible:=False;
  ShowMessage('Success');
end;

procedure TConsumer.btnTransferWFClick(Sender: TObject);
begin

  if (not checkbox10.Checked) then
  begin
    ShowMessage('Pls choose Confirm Date!');
    Abort;
  end;
  if MessageDlg('Are you sure transfer to WF!',mtWarning,[mbYes,mbNo],0)<>mrYes then
    Abort;
  with Qry_Temp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON');
    SQL.Add('SET ANSI_WARNINGS ON');
    ExecSQL;

    SQL.Clear;
    SQL.Add('SELECT XA002 FROM '+LinkSV+'.ACRXA');
    SQL.Add('WHERE EXISTS (SELECT 1 FROM #N8_INVOICE_D WHERE INV_NO=XA002 COLLATE Chinese_Taiwan_Stroke_CI_AS)');
    SQL.Add('      AND ISNULL(XA015,0)<>0');
    //funcobj.WriteErrorLog(sql.Text);
    Open;
    mmoInf.Text:='';
    if not Eof then
    begin
      mmoInf.Text:='Nhung invoice sau da duoc xu ly tren DingXin, vui long vao he thong DingXin kiem tra lai!'+#13+' Hoac bo qua nhung Invoice nay va tiep tuc chuyen du lieu?';
      mmoInf.Text:=mmoInf.Text+#13+' Yes: Tiep tuc. No: Huy thao tac ----- ';
    end;
    First;
    while not Eof do
    begin
      mmoInf.Text:=mmoInf.Text+#13+FieldByName('XA002').AsString+', ';
      Next;
    end;
    if mmoInf.Text<>'' then
    begin
      pnlInf.Visible:=True;
      Abort;
    end else
    begin
      TransferWF();
    end;
  end;

end;

procedure TConsumer.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (not qry_Report.FieldByName('CFMID').IsNull) then
  begin
    DBGridEh3.Canvas.Font.Color:=clBlue;
  end;
end;

end.

