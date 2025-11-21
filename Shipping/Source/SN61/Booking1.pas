unit Booking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons, DB,
  DBTables, Menus, DBGridEhImpExp, shellAPI, StrUtils, Comobj, EhLibBDE;

type
  TBooking = class(TForm)
    Panel1: TPanel;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    DS2: TDataSource;
    DS1: TDataSource;
    SaveDialog1: TSaveDialog;
    PC1: TPageControl;
    All: TTabSheet;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Pop_Book: TPopupMenu;
    Confirm1: TMenuItem;
    Query1: TQuery;
    Panel3: TPanel;
    btnInsert: TBitBtn;
    btndelete: TBitBtn;
    btnModify: TBitBtn;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnexit: TBitBtn;
    DBGridEh2: TDBGridEh;
    qry_book: TQuery;
    qry_Ry: TQuery;
    qry_bookCUSTID: TStringField;
    qry_bookBook_Date: TDateTimeField;
    qry_bookKind_Loading: TStringField;
    qry_bookForwarder: TStringField;
    qry_bookPlace_Delivery: TStringField;
    qry_bookBook_Remark: TStringField;
    qry_bookCFMID: TStringField;
    qry_bookCFMDate: TDateTimeField;
    qry_bookYN: TStringField;
    qry_bookUserID: TStringField;
    qry_bookUserDate: TDateTimeField;
    qry_bookCOUNTRYEN: TStringField;
    UpdateSQL1: TUpdateSQL;
    qry_RyPACK_NO: TStringField;
    qry_RyPO: TStringField;
    qry_RySTYLE_NAME: TStringField;
    qry_RyCUSTORDNO: TStringField;
    qry_RyARTICLE: TStringField;
    qry_RyMCUSTMER: TStringField;
    qry_RyCOUNTRYEN: TStringField;
    qry_RyCTS: TIntegerField;
    qry_RyPairs: TIntegerField;
    qry_RyNW: TFloatField;
    qry_RyGW: TFloatField;
    qry_RyCBM: TFloatField;
    qry_RyShipmode: TStringField;
    chk2: TCheckBox;
    chk3: TCheckBox;
    Unconfirm1: TMenuItem;
    qry_bookCut_off_Date: TDateTimeField;
    qry_bookExFty_Date: TDateTimeField;
    qry_bookETD: TDateTimeField;
    qry_bookCut_off_time: TStringField;
    Label4: TLabel;
    Edit3: TEdit;
    chk1: TCheckBox;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    chkInv: TCheckBox;
    Label6: TLabel;
    Edit4: TEdit;
    qry_bookBooking_No: TStringField;
    Excel: TTabSheet;
    DBGridEh4: TDBGridEh;
    qry_excel: TQuery;
    DS4: TDataSource;
    qry_excelPO: TStringField;
    qry_excelMCUSTMER: TStringField;
    qry_excelCOUNTRYEN: TStringField;
    qry_excelRYNO: TStringField;
    qry_excelCTS: TIntegerField;
    qry_excelPairs: TIntegerField;
    qry_excelNW: TCurrencyField;
    qry_excelGW: TCurrencyField;
    qry_excelCBM: TCurrencyField;
    qry_excelExFty_Date: TDateTimeField;
    qry_excelBooking_No: TStringField;
    qry_excelBook_Date: TDateTimeField;
    qry_excelKind_Loading: TStringField;
    qry_excelForwarder: TStringField;
    qry_excelPlace_Delivery: TStringField;
    qry_excelBook_Remark: TStringField;
    qry_excelETD: TDateTimeField;
    qry_excelCut_off_time: TStringField;
    qry_excelCut_off_Date: TDateTimeField;
    qry_excelShipmode: TStringField;
    Pop_Excel: TPopupMenu;
    MenuItem1: TMenuItem;
    qry_excelSTT: TFloatField;
    Label7: TLabel;
    chkEx: TCheckBox;
    DTP5: TDateTimePicker;
    Label8: TLabel;
    DTP6: TDateTimePicker;
    qry_excelCFMID: TStringField;
    qry_bookBill_FCR_Date: TDateTimeField;
    qry_bookES_FCR_Date: TDateTimeField;
    qry_bookBill_UserID: TStringField;
    qry_bookCO_UserID: TStringField;
    chksample: TCheckBox;
    chkmass: TCheckBox;
    qry_bookInv_Type: TStringField;
    ConfirmAll1: TMenuItem;
    Query2: TQuery;
    N1: TMenuItem;
    qry_bookPRINT_LOCK: TStringField;
    qry_bookPay_UserID: TStringField;
    qry_RySTATUS: TStringField;
    qry_RyRemark: TStringField;
    ShowProgress: TPanel;
    Label11: TLabel;
    ProgressBar: TProgressBar;
    qry_bookINV_NO: TStringField;
    qry_excelINV_NO: TStringField;
    qry_RyINV_NO: TStringField;
    qry_RyRYNO: TStringField;
    qry_RySPECID: TStringField;
    qry_excelSPECID: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    qry_RyDRCode: TStringField;
    qry_RyDRNAME: TStringField;
    Up_RY: TUpdateSQL;
    Pop_RY: TPopupMenu;
    mniMod_RY: TMenuItem;
    mniSav_RY: TMenuItem;
    mniCan_RY: TMenuItem;
    qry_RyUserID: TStringField;
    qry_RyUserDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Confirm1Click(Sender: TObject);
    procedure qry_bookAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject; var Handled: Boolean);
    procedure DBGridEh1Columns5EditButtonClick(Sender: TObject; var Handled: Boolean);
    procedure DBGridEh1Columns6EditButtonClick(Sender: TObject; var Handled: Boolean);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btndeleteClick(Sender: TObject);
    procedure Unconfirm1Click(Sender: TObject);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qry_bookExFty_DateChange(Sender: TField);
    procedure qry_bookES_FCR_DateChange(Sender: TField);
    procedure ConfirmAll1Click(Sender: TObject);
    procedure Pop_BookPopup(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure qry_bookBeforeClose(DataSet: TDataSet);
    procedure DBGridEh2Columns14EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure mniMod_RYClick(Sender: TObject);
    procedure qry_RyBeforeClose(DataSet: TDataSet);
    procedure Pop_RYPopup(Sender: TObject);
    procedure mniCan_RYClick(Sender: TObject);
    procedure mniSav_RYClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Booking: TBooking;
  BTQueryOpen: boolean;

implementation

uses
  Main1, KindLoading1, PlaceDelivery1, Forwarder1, DelayReason1, Pwd1;
  //, Pwd;
{$R *.dfm}

procedure TBooking.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if qry_book.RequestLive then
  begin
    showmessage('You must save data first.');
    abort;
  end;
  Action := cafree;
end;

procedure TBooking.FormDestroy(Sender: TObject);
begin
  Booking := nil;
end;

procedure TBooking.btnexitClick(Sender: TObject);
begin
  close;
end;

procedure TBooking.Button1Click(Sender: TObject);
begin
  if qry_book.RequestLive then
  begin
    showmessage('You must save data first.');
    abort;
  end;
  BTQueryOpen := False;
  qry_RY.Active := false;
  qry_excel.Active := false;
  qry_book.Active := false;
  if (not chk1.Checked) and (not chkInv.Checked) and (not chkEx.Checked) and (not chk2.Checked) and (not chkSample.Checked) and (not chk3.Checked) and (not chkmass.Checked) and (trim(edit3.Text) = '') and (trim(edit4.Text) = '') and (trim(edit2.Text) = '') and (trim(Edit1.Text) = '') then
  begin
    Messagedlg('Pls, input data for FILLTER first!', mtwarning, [mbyes], 0);
    abort;
  end;
  BTQueryOpen := true;
  PC1Change(nil);
end;

procedure TBooking.btnModifyClick(Sender: TObject);
begin
  if not qry_book.FieldByName('CFMID').IsNull then
  begin
    showmessage('Confirmed already. You can not modify!!!');
    abort;
  end;

  qry_book.RequestLive := true;
  qry_book.CachedUpdates := true;
  qry_book.Edit;
  if qry_book.FieldByName('Book_Date').IsNull then
    qry_book.FieldByName('Book_Date').Value := formatdatetime('yyyy/mm/dd', date);

  btnsave.Enabled := true;
  btncancel.Enabled := true;
  DBGridEh1.FieldColumns['Kind_Loading'].ButtonStyle := cbsEllipsis;
  DBGridEh1.FieldColumns['Forwarder'].ButtonStyle := cbsEllipsis;
  DBGridEh1.FieldColumns['Place_Delivery'].ButtonStyle := cbsEllipsis;
  DBGridEh1.FieldColumns['Book_Date'].ButtonStyle := cbsAuto;
  DBGridEh1.FieldColumns['ExFty_Date'].ButtonStyle := cbsAuto;
  DBGridEh1.FieldColumns['ETD'].ButtonStyle := cbsAuto;
  DBGridEh1.FieldColumns['Cut_off_Date'].ButtonStyle := cbsAuto;
  DBGridEh1.FieldColumns['ES_FCR_Date'].ButtonStyle := cbsAuto;
end;

procedure TBooking.btnCancelClick(Sender: TObject);
begin
  qry_RY.Active := false;
  qry_book.active := false;
  qry_book.RequestLive := False;
  qry_book.CachedUpdates := False;
  qry_book.active := true;
end;

procedure TBooking.btnSaveClick(Sender: TObject);
var
  i: integer;
  j: variant;
  BookingNo: string;
begin
  try
    qry_RY.Active := false;
    qry_book.first;
    for i := 1 to qry_book.RecordCount do
    begin
      case qry_book.updatestatus of
        usmodified:
          begin
            with query1 do
            begin
              active := false;
              sql.Clear;
              j := qry_book.FieldByName('Inv_no').AsString;
              sql.Add('select 1 from Ship_Booking');
              sql.Add('where INV_No=''' + qry_book.fieldbyName('INV_No').AsString + ''' ');
              active := true;
              if eof then
              begin
                qry_book.edit;
                qry_book.FieldByName('Bill_FCR_Date').Value := qry_book.FieldByName('ES_FCR_Date').Value;
                qry_book.FieldByName('UserID').Value := Main.Edit1.Text;
                qry_book.FieldByName('Booking_No').Value := trim(StringReplace(qry_book.FieldByName('Booking_No').AsString, '"', '', [rfReplaceAll, rfIgnoreCase]));
                qry_book.FieldByName('YN').Value := '1';
                UpdateSQL1.apply(ukinsert);
              end
              else
              begin
                if not qry_book.FieldByName('CFMID').IsNull then
                begin
                  showmessage('Confirmed already. You can not modify or delete!!!');
                  exit;
                end;

                if qry_book.FieldByName('YN').AsString = '0' then
                begin 
                  UpdateSQL1.apply(ukdelete);
                end
                else
                begin
                  qry_book.edit;
                  if trim(qry_book.FieldByName('Bill_FCR_Date').AsString) <> '' then
                    qry_book.FieldByName('Bill_FCR_Date').Value := qry_book.FieldByName('ES_FCR_Date').Value;

                  qry_book.FieldByName('Booking_No').Value := trim(StringReplace(qry_book.FieldByName('Booking_No').AsString, '"', '', [rfReplaceAll, rfIgnoreCase]));
                  qry_book.FieldByName('UserID').Value := Main.Edit1.Text;
                  UpdateSQL1.apply(ukmodify);
                end;
              end;
            end;
          end;
      end;
      qry_book.next;
    end;

    qry_book.active := false;
    qry_book.cachedupdates := false;
    qry_book.requestlive := false;
    qry_book.active := true;
    qry_excel.Active := false;
  except
    Messagedlg('Error, can not save data!', mtwarning, [mbyes], 0);
    abort;
  end;
  if j <> ' ' then
    qry_book.Locate('INV_NO', j, []);
end;

procedure TBooking.Excel1Click(Sender: TObject);
var
  eclApp, WorkBook, xlSheet: olevariant;
  i, j: integer;
begin
  if (not qry_excel.Active) or (qry_excel.recordcount = 0) then
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
    ProgressBar.Max := qry_excel.RecordCount;
    ShowProgress.Visible := true;
    ShowProgress.Refresh;

    WorkBook := eclApp.workbooks.Add;
    xlSheet := WorkBook.Worksheets['sheet1'];
    xlSheet.Name := 'Booking';

    for i := 0 to DBGridEh4.FieldCount - 1 do
    begin
      eclApp.Cells(1, i + 1) := DBGridEh4.Columns[i].Title.Caption;
    end;

    qry_excel.First;
    j := 2;
    while not qry_excel.Eof do
    begin
      for i := 0 to DBGridEh4.fieldcount - 1 do
      begin
        if DBGridEh4.Fields[i].FieldName = 'PO' then
          eclApp.Cells(j, i + 1) := #39 + DBGridEh4.Fields[i].Value
        else
          eclApp.Cells(j, i + 1) := DBGridEh4.Fields[i].Value;

        eclApp.ActiveSheet.Rows[j].Font.Size := 10;
        eclApp.ActiveSheet.Rows[j].font.name := 'Calibri';
        eclApp.ActiveSheet.Rows[j].HorizontalAlignment := $FFFFEFF4;

      end;
      ProgressBar.Position := ProgressBar.Position + 1;
      ProgressBar.Refresh;
      qry_excel.Next;
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

procedure TBooking.FormCreate(Sender: TObject);
begin
  DTP1.Date := date - 7;
  DTP2.Date := date;
  DTP3.Date := date - 10;
  DTP4.Date := date;
  DTP5.Date := date - 3;
  DTP6.Date := date;
  pc1.TabIndex := 0;
end;

procedure TBooking.Confirm1Click(Sender: TObject);
var
  j: variant;
begin
  if not qry_book.FieldByName('CFMID').IsNull then
  begin
    showmessage('Confirmed already.');
    abort;
  end;

  if qry_book.FieldByName('PRINT_LOCK').IsNull then
  begin
    showmessage('Invoice has not confirmed yet. You must confirm invoice first!!!.');
    abort;
  end;

  if btnsave.Enabled then
  begin
    showmessage('You must save data first.');
    abort;
  end;

  if qry_book.FieldByName('Booking_No').IsNull then
  begin
    showmessage('Booking No. can not empty.');
    abort;
  end;
  if qry_book.FieldByName('Book_Date').IsNull then
  begin
    showmessage('Book Date can not empty.');
    abort;
  end;
  if qry_book.FieldByName('ExFty_Date').IsNull then
  begin
    showmessage('ExFty Date can not empty.');
    abort;
  end;
  if qry_book.FieldByName('Kind_Loading').IsNull then
  begin
    showmessage('Kind Loading can not empty.');
    abort;
  end;
  if qry_book.FieldByName('Forwarder').IsNull then
  begin
    showmessage('Forwarder can not empty.');
    abort;
  end;
  if qry_book.FieldByName('Place_Delivery').IsNull then
  begin
    showmessage('Place Delivery can not empty.');
    abort;
  end;

  if messageDlg('Are you sure to confirm for this information?', mtwarning, [mbyes, mbno], 0) = mryes then
  begin
    j := qry_book.FieldByName('Inv_no').AsString;
    with query1 do
    begin
      active := false;
      sql.Clear;
      sql.Add('update Ship_Booking set');
      sql.Add('         CFMID=''' + Main.edit1.Text + ''' ');
      sql.Add('         ,CFMDate=getdate()');
      sql.Add('where Inv_no=''' + qry_book.FieldByName('Inv_no').AsString + ''' ');
      execsql;
    end;
    qry_RY.Active := false;
    qry_book.Active := false;
    qry_excel.Active := false;
    qry_book.Active := true;
    qry_excel.Active := true;
    if j <> ' ' then
      qry_book.Locate('INV_NO', j, []);
  end
  else
    abort;
end;

procedure TBooking.qry_bookAfterOpen(DataSet: TDataSet);
begin
  if (qry_book.Active) and (qry_book.RecordCount > 0) then
  begin
    qry_RY.Active := true;
    btnModify.Enabled := true;
    btndelete.Enabled := true;
  end;
end;

procedure TBooking.DBGridEh1Columns4EditButtonClick(Sender: TObject; var Handled: Boolean);
begin
  KindLoading := TKindLoading.create(self);
  KindLoading.show;
end;

procedure TBooking.DBGridEh1Columns5EditButtonClick(Sender: TObject; var Handled: Boolean);
begin
  Forwarder := TForwarder.create(self);
  Forwarder.show;
end;

procedure TBooking.DBGridEh1Columns6EditButtonClick(Sender: TObject; var Handled: Boolean);
begin
  PlaceDelivery := TPlaceDelivery.create(self);
  PlaceDelivery.show;
end;

procedure TBooking.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qry_book.FieldByName('CFMID').IsNull then
    DBGridEh1.Canvas.Font.Color := clblue;

  if qry_book.FieldByName('YN').AsString = '0' then
    DBGridEh1.Canvas.Font.Color := clred;

end;

procedure TBooking.DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qry_book.FieldByName('CFMID').IsNull then
    DBGridEh2.Canvas.Font.Color := clblue;
  if trim(qry_Ry.FieldByName('SPECID').AsString) = 'FX' then
  begin
    DBGridEh2.canvas.Font.Style := [fsBold];
    DBGridEh2.canvas.Font.Size := DBGridEh2.canvas.Font.Size - 1;
  end;

end;

procedure TBooking.btndeleteClick(Sender: TObject);
begin
  if not qry_book.FieldByName('CFMID').IsNull then
  begin
    showmessage('Confirmed already. You can not delete!!!');
    abort;
  end;

  if not qry_book.FieldByName('Bill_UserID').IsNull then
  begin
    showmessage('Information Bill is existsing. You can not delete!!!');
    abort;
  end;

  if not qry_book.FieldByName('CO_UserID').IsNull then
  begin
    showmessage('Information C/O is existsing. You can not delete!!!');
    abort;
  end;

  if not qry_book.FieldByName('Pay_UserID').IsNull then
  begin
    showmessage('Information Payment is existsing. You can not delete!!!');
    abort;
  end;

  if messageDlg('Are you sure to delete this records?', mtwarning, [mbyes, mbno], 0) = mryes then
  begin
    qry_book.RequestLive := true;
    qry_book.CachedUpdates := true;
    qry_book.Edit;
    qry_book.FieldByName('YN').AsString := '0';

    btnsave.Enabled := true;
    btncancel.Enabled := true;
  end;
end;

procedure TBooking.Unconfirm1Click(Sender: TObject);
var J: Variant;
begin
  {Module1 := 'Shipping';
  FormID1 := 'SN51';
  Names1 := 'UnConfirm';  }

  PwdF := TPwdF.Create(self);
  PwdF.Password.Clear;
  PwdF.ShowModal;

  if PwdF.PwdOK then
  begin
    J := qry_book.FieldByName('Inv_no').AsString;
    with query1 do
    begin
      active := false;
      sql.Clear;
      sql.Add('update Ship_Booking set');
      sql.Add('         CFMID=NULL ');
      sql.Add('         ,CFMDate=NULL');
      sql.Add('where Inv_no=''' + qry_book.FieldByName('Inv_no').AsString + ''' ');
      execsql;
    end;
    qry_RY.Active := false;
    qry_book.Active := false;
    qry_excel.Active := false;
    qry_excel.Active := true;
    qry_book.Active := true;
    if J <> ' ' then
      qry_book.Locate('INV_NO', J, []);
    showmessage('UnConfirmed success !!!');
  end
  else
    exit;
end;

procedure TBooking.DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh; AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if not qry_excel.FieldByName('CFMID').IsNull then
    DBGridEh4.Canvas.Font.Color := clblue;
  if trim(qry_excel.FieldByName('SPECID').AsString) = 'FX' then
  begin
    DBGridEh4.canvas.Font.Style := [fsBold];
    DBGridEh4.canvas.Font.Size := DBGridEh4.canvas.Font.Size - 1;
  end;
end;

procedure TBooking.qry_bookExFty_DateChange(Sender: TField);
begin
  if not qry_book.FieldByName('ExFty_Date').IsNull then
  begin
    qry_book.Edit;
    qry_book.FieldByName('ES_FCR_Date').Value := qry_book.FieldByName('ExFty_Date').Value;
    qry_book.FieldByName('Bill_FCR_Date').Value := qry_book.FieldByName('ExFty_Date').Value;
    if main.edit2.Text = 'LHG' then
    begin
      if (qry_book.FieldByName('Kind_Loading').Value = 'CFS') and ((qry_book.FieldByName('Forwarder').Value = 'DAMCO') or (qry_book.FieldByName('Forwarder').Value = 'Kuehne & Nagel') or (qry_book.FieldByName('Forwarder').Value = 'DHL Express') or (qry_book.FieldByName('Forwarder').Value = 'FedEx Freight') or (qry_book.FieldByName('Forwarder').Value = 'Panalpina') ) then
        qry_book.FieldByName('Cut_off_Date').Value := qry_book.FieldByName('ExFty_Date').Value;
    end 
    else if main.edit2.Text = 'JAZ' then
    begin
      if (qry_book.FieldByName('Kind_Loading').Value = 'CFS') and ((qry_book.FieldByName('Forwarder').Value = 'DAMCO') or (qry_book.FieldByName('Forwarder').Value = 'Kuehne & Nagel') or (qry_book.FieldByName('Forwarder').Value = 'DHL Express') or (qry_book.FieldByName('Forwarder').Value = 'FedEx Freight') or (qry_book.FieldByName('Forwarder').Value = 'Panalpina') ) then
        qry_book.FieldByName('Cut_off_Date').Value := qry_book.FieldByName('ExFty_Date').Value;
    end
    else
    begin
      if (qry_book.FieldByName('Kind_Loading').Value = 'CFS') and ((qry_book.FieldByName('Forwarder').Value = 'DAMCO') or (qry_book.FieldByName('Forwarder').Value = 'Kuehne & Nagel') or (qry_book.FieldByName('Forwarder').Value = 'DHL Express') or (qry_book.FieldByName('Forwarder').Value = 'FedEx Freight')) then
        qry_book.FieldByName('Cut_off_Date').Value := qry_book.FieldByName('ExFty_Date').Value;
    end;
  end;
end;

procedure TBooking.qry_bookES_FCR_DateChange(Sender: TField);
begin
  if (not qry_book.FieldByName('ES_FCR_Date').IsNull) and (qry_book.FieldByName('Bill_FCR_Date').IsNull) then
  begin
    qry_book.Edit;
    qry_book.FieldByName('Bill_FCR_Date').Value := qry_book.FieldByName('ES_FCR_Date').Value;
  end;
end;

procedure TBooking.ConfirmAll1Click(Sender: TObject);
begin
  if messageDlg('Are you sure to confirm All for this information?', mtwarning, [mbyes, mbno], 0) = mryes then
  begin
    with query2 do
    begin
      active := false;
      sql.Clear;
      sql.Add('select sb.* ');
      sql.Add('from Ship_Booking sb INNER JOIN INVOICE_M im ON im.INV_NO = sb.INV_NO');
      sql.Add('WHERE isnull(sb.Booking_No,'''') <> '''' AND sb.Book_Date is not null AND ExFty_Date is not null ');
      sql.Add('		AND ISNULL(Kind_Loading,'''') <> '''' AND ISNULL(Forwarder,'''') <> '''' AND ISNULL(Place_Delivery,'''') <> ''''');
      sql.Add('		AND CFMID IS null and im.PRINT_LOCK=''Y''');
      if chkInv.checked then
      begin
        SQL.Add('    and convert(varchar,im.Inv_Date,111) between ');
        SQL.Add('      ''' + formatdatetime('yyyy/MM/dd', DTP3.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP4.Date) + '''');
      end;
      active := true;
    end;

    query2.First;
    while not query2.Eof do
    begin
      with query1 do
      begin
        active := false;
        sql.Clear;
        sql.Add('update Ship_Booking set');
        sql.Add('         CFMID=''' + Main.edit1.Text+ ''' ');
        sql.Add('         ,CFMDate=getdate()');
        sql.Add('where Inv_no=''' + query2.FieldByName('Inv_no').AsString + ''' ');
        execsql;
      end;
      query2.Next;
    end;

    showmessage('Confirmed ' + inttostr(query2.RecordCount) + ' rows.');
    qry_RY.Active := false;
    qry_book.Active := false;
    qry_excel.Active := false;
    qry_book.Active := true;
    qry_excel.Active := true;

  end
  else
  begin
    abort;
  end;

end;

procedure TBooking.Pop_BookPopup(Sender: TObject);
begin
  ConfirmAll1.Visible := false;
  Unconfirm1.Enabled := False;
  Confirm1.Enabled := false;
  if (qry_book.Active) and (qry_book.RecordCount > 0) and ((main.edit1.Text = '10812') or (main.edit1.Text = '24293') or (main.edit1.Text = 'A106')) then
    ConfirmAll1.Visible := true;
  if (qry_book.Active) and (qry_book.RecordCount > 0) and (trim(qry_book.FieldByName('CFMID').AsString) <> '') then
    Unconfirm1.Enabled := true;
  if (qry_book.Active) and (qry_book.RecordCount > 0) and (trim(qry_book.FieldByName('CFMID').AsString) = '') then
    Confirm1.Enabled := true;
end;

procedure TBooking.PC1Change(Sender: TObject);
begin
  if (PC1.ActivePage<>All) and (qry_book.RequestLive or qry_Ry.RequestLive) then
  begin
    ShowMessage('Pls, save data first !');
    PC1.ActivePage:=All;
    Abort;
  end;
  if (BTQueryOpen) and (PC1.ActivePage = All) and (not qry_book.Active) then
  begin
    with qry_book do
    begin
      active := false;
      sql.Clear;
      sql.Add('SELECT im.INV_NO, im.CUSTID,im.TO_WHERE as COUNTRYEN,sb.INV_NO,sb.Book_Date,sb.Kind_Loading');
      sql.Add('      ,sb.Forwarder,sb.Place_Delivery,sb.Book_Remark,sb.CFMID,sb.CFMDate,sb.ETD,sb.YN,sb.UserID');
      sql.Add('      ,sb.UserDate,sb.ExFty_Date,sb.Cut_off_time,sb.Cut_off_Date,sb.Booking_No,sb.Bill_FCR_Date');
      sql.Add('      ,sb.ES_FCR_Date,sb.Bill_UserID,sb.CO_UserID,sb.Pay_UserID,im.Inv_Type,im.PRINT_LOCK');
      sql.Add('FROM INVOICE_M im');
      sql.Add('LEFT JOIN Ship_Booking sb ON sb.INV_NO = im.INV_NO');
      sql.Add('WHERE im.Inv_no like ''' + edit2.Text + '%'' ');
      if trim(Edit1.Text) <> '' then
        sql.Add('AND EXISTS( SELECT 1 FROM INVOICE_D id WHERE id.INV_NO=im.INV_NO AND id.RYNO LIKE''' + Edit1.Text + '%'') ');
      if edit3.Text <> '' then
        sql.Add('and im.TO_WHERE like ''' + edit3.Text + '%'' ');
      if edit4.Text <> '' then
        sql.Add('and sb.Booking_No like ''' + edit4.Text + '%'' ');
      if chk1.Checked then
      begin
        SQL.Add('and convert(varchar,sb.Book_Date,111) between ');
        SQL.Add('''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP2.Date) + '''');
      end;
      if chkInv.checked then
      begin
        SQL.Add('and convert(varchar,im.Inv_Date,111) between ');
        SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP3.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP4.Date) + '''');
      end;
      if chkEx.checked then
      begin
        SQL.Add(' and convert(varchar,sb.ExFty_Date,111) between ');
        SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP5.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP6.Date) + '''');
      end;
      if Edit5.Text <> '' then
      begin
          sql.Add('AND ( EXISTS( SELECT 1 FROM INVOICE_D id2 WHERE id2.INV_NO=im.INV_NO AND id2.PO = '''+Edit5.Text+''') )');
      end;
      if Edit6.Text <> '' then
        sql.Add('AND (im.CUSTID = ''' + Edit6.Text + ''')');
      if chk2.Checked then
        sql.Add('and sb.CFMID is null ');
      if chk3.Checked then
        sql.Add('and sb.CFMID is not null ');
      if chkmass.Checked then
        sql.Add('and im.Inv_Type = ''Mass Production'' ');
      if chkSample.Checked then
        sql.Add('and im.Inv_Type = ''Sample Shoe'' ');
      sql.Add(' AND NOT EXISTS (');
      SQL.Add('   SELECT 1 FROM INVOICE_D id LEFT JOIN YWDD ON id.RYNO=YWDD.DDBH');
      sql.Add('   left join DDZL do on YWDD.YSBH=do.DDBH');
      sql.Add('   WHERE id.INV_NO=im.INV_NO AND do.DDZT= ''C'' )');
      active := true;
    end;
  end
  else if (BTQueryOpen) and (PC1.ActivePage = Excel) and (not qry_excel.Active) then
  begin
    with qry_excel do
    begin
      active := false;
      sql.Clear;
      sql.Add('SELECT ROW_NUMBER() OVER (ORDER BY INVOICE.Booking_No) STT, INVOICE.* FROM (');
      sql.Add('   SELECT inv.INV_NO,inv.PO,INVOICE_M.CustID as MCUSTMER,upper(INVOICE_M.TO_WHERE) as COUNTRYEN, inv.RYNO, pd.CTS, pd.Pairs, pd.NW,pd.GW, pd.CBM ');
      sql.Add('       ,sb.Booking_No,sb.Book_Date,sb.Kind_Loading,sb.Forwarder,sb.Place_Delivery,sb.Book_Remark,sb.ETD,sb.ExFty_Date,sb.Cut_off_time,sb.Cut_off_Date,sb.CFMID ');
      sql.Add('       ,  '' '' as ShipMode');
      SQL.Add('       ,INVOICE_M.Inv_Date,INVOICE_M.Inv_Type,'' '' as SPECID');
      sql.Add('   FROM INVOICE_D inv LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV_NO AND pd.RYNO = inv.RYNO');
      sql.Add('   inner JOIN Ship_Booking sb ON sb.INV_NO = inv.INV_NO');
      sql.Add('   LEFT JOIN YWDD ON YWDD.DDBH=inv.RYNO');
      sql.Add('	  left join DDZL do on do.DDBH=YWDD.YSBH');
      sql.Add('   left join INVOICE_M on INVOICE_M.inv_no=inv.Inv_no');
      sql.Add('   where 1=1 ');
      if edit2.Text <> '' then
        sql.Add('and inv.INV_NO like ''' + edit2.Text + '%'' ');
      if edit1.Text <> '' then
        sql.Add('and inv.RYNO like ''' + edit1.Text + '%'' ');
      if edit3.Text <> '' then
        sql.Add('and upper(INVOICE_M.TO_WHERE) like ''' + edit3.Text + '%'' ');
      if edit4.Text <> '' then
        sql.Add('and sb.Booking_No like ''%' + edit4.Text + '%'' ');
      if chk1.Checked then
      begin
        SQL.Add('and convert(varchar,sb.Book_Date,111) between ');
        SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP1.Date) + ''' and  ''' + formatdatetime('yyyy/MM/dd', DTP2.Date) + '''');
      end;
      if chkInv.checked then
      begin
        SQL.Add('and convert(varchar,INVOICE_M.Inv_Date,111) between ');
        SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP3.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP4.Date) + '''');
      end;
      if chkEx.checked then
      begin
        SQL.Add('and convert(varchar,sb.ExFty_Date,111) between ');
        SQL.Add(' ''' + formatdatetime('yyyy/MM/dd', DTP5.Date) + '''' + ' and  ' + '''' + formatdatetime('yyyy/MM/dd', DTP6.Date) + '''');
      end;
      if Edit5.Text <> '' then
        sql.Add('AND inv.PO = ''' + Edit5.Text + '''');
      if Edit6.Text <> '' then
        sql.Add('AND INVOICE_M.CustID = ''' + Edit6.Text + '''');
      if chk2.Checked then
        sql.Add('and sb.CFMID is null ');
      if chk3.Checked then
        sql.Add('and sb.CFMID is not null ');
      if chkmass.Checked then
        sql.Add('and INVOICE_M.Inv_Type = ''Mass Production'' ');
      if chkSample.Checked then
        sql.Add('and INVOICE_M.Inv_Type = ''Sample Shoe'' ');
      sql.Add(') INVOICE');
      active := true;
    end;
  end;
end;

procedure TBooking.qry_bookBeforeClose(DataSet: TDataSet);
begin
  qry_RY.Active := false;
  btnModify.Enabled := false;
  btndelete.Enabled := false;
  btnsave.Enabled := false;
  btncancel.Enabled := false;
  DBGridEh1.FieldColumns['Kind_Loading'].ButtonStyle := cbsNone;
  DBGridEh1.FieldColumns['Forwarder'].ButtonStyle := cbsNone;
  DBGridEh1.FieldColumns['Place_Delivery'].ButtonStyle := cbsNone;
  DBGridEh1.FieldColumns['Book_Date'].ButtonStyle := cbsNone;
  DBGridEh1.FieldColumns['ExFty_Date'].ButtonStyle := cbsNone;
  DBGridEh1.FieldColumns['ETD'].ButtonStyle := cbsNone;
  DBGridEh1.FieldColumns['Cut_off_Date'].ButtonStyle := cbsNone;
  DBGridEh1.FieldColumns['ES_FCR_Date'].ButtonStyle := cbsNone;
end;

procedure TBooking.DBGridEh2Columns14EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if DelayReason=nil then
    DelayReason := TDelayReason.Create(Self);
  DelayReason.Show;
end;

procedure TBooking.mniMod_RYClick(Sender: TObject);
begin
  with qry_Ry do
  begin
    RequestLive:=True;
    CachedUpdates:=True;
    Edit;
  end;
  DBGridEh2.FieldColumns['DRCode'].ButtonStyle:=cbsEllipsis;
  Panel3.Enabled:=False;
  DBGridEh1.Enabled:=False;
end;

procedure TBooking.qry_RyBeforeClose(DataSet: TDataSet);
begin
  qry_Ry.RequestLive:=False;
  qry_Ry.CachedUpdates:=False;
  DBGridEh2.FieldColumns['DRCode'].ButtonStyle:=cbsNone;
  Panel3.Enabled:=True;
  DBGridEh1.Enabled:=True;
end;

procedure TBooking.Pop_RYPopup(Sender: TObject);
begin
  mniMod_RY.Enabled:=False;
  mniSav_RY.Enabled:=False;
  mniCan_RY.Enabled:=False;
  if (qry_Ry.Active) and (qry_Ry.RecordCount>0) and (not qry_book.RequestLive) then
    mniMod_RY.Enabled:=True;
  if qry_Ry.RequestLive then
  begin
    mniSav_RY.Enabled:=True;
    mniCan_RY.Enabled:=True;
  end;
end;

procedure TBooking.mniCan_RYClick(Sender: TObject);
begin
  qry_Ry.Close;
  qry_Ry.Open;  
end;

procedure TBooking.mniSav_RYClick(Sender: TObject);
begin
  try
    qry_Ry.First;
    while not qry_Ry.Eof do
    begin
      if qry_Ry.UpdateStatus=usModified then
      begin
        qry_Ry.Edit;
        qry_Ry.FieldByName('UserID').AsString:=main.edit1.Text;
        Up_RY.Apply(ukModify);
      end;
      qry_Ry.Next;
    end;
    qry_Ry.Close;
    qry_Ry.RequestLive:=false;
    qry_Ry.CachedUpdates:=false;
    qry_Ry.Open;
  except
    on F:Exception do
      ShowMessage('Have wrong! Can not save data!'+#13+'-----'+#13+F.Message);
  end;
end;

end.

