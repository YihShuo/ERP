unit DozcBill1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls, DB,
  DBTables, Menus,DBGridEhImpExp,shellAPI,Comobj,StrUtils, Registry;

type
  TDozcBill = class(TForm)
    PC1: TPageControl;
    All: TTabSheet;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    btnInsert: TBitBtn;
    btndelete: TBitBtn;
    btnModify: TBitBtn;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnexit: TBitBtn;
    DBGridEh2: TDBGridEh;
    Excel: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
    qry_bill: TQuery;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    qry_Ry: TQuery;
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
    DS2: TDataSource;
    qry_billKind_Loading: TStringField;
    qry_billForwarder: TStringField;
    qry_billPlace_Delivery: TStringField;
    qry_billETD: TDateTimeField;
    qry_billExFty_Date: TDateTimeField;
    qry_billBill_FCR_Date: TDateTimeField;
    qry_billSailing_Date: TDateTimeField;
    qry_billBill_RCVD_Draf: TDateTimeField;
    qry_billBill_RCV_From: TDateTimeField;
    qry_billBill_Provide_From: TDateTimeField;
    qry_billBill_Submit_Dox: TDateTimeField;
    qry_billBill_RCV_Org: TDateTimeField;
    qry_billBill_Remark: TStringField;
    qry_billBill_UserID: TStringField;
    qry_billBill_UserDate: TDateTimeField;
    qry_billCUSTID: TStringField;
    qry_billCOUNTRYEN: TStringField;
    DBGridEh3: TDBGridEh;
    qry_excel: TQuery;
    DS3: TDataSource;
    qry_excelINV_DATE: TDateTimeField;
    qry_excelExFty_Date: TDateTimeField;
    qry_excelKind_Loading: TStringField;
    qry_excelForwarder: TStringField;
    qry_excelPlace_Delivery: TStringField;
    qry_excelSailing_Date: TDateTimeField;
    qry_excelBill_RCVD_Draf: TDateTimeField;
    qry_excelBill_RCV_From: TDateTimeField;
    qry_excelBill_Provide_From: TDateTimeField;
    qry_excelBill_Submit_Dox: TDateTimeField;
    qry_excelBill_RCV_Org: TDateTimeField;
    qry_excelBill_Remark: TStringField;
    qry_excelBill_UserID: TStringField;
    qry_excelBill_UserDate: TDateTimeField;
    qry_excelPO: TStringField;
    qry_excelMCUSTMER: TStringField;
    qry_excelCOUNTRYEN: TStringField;
    qry_excelRYNO: TStringField;
    qry_excelCTS: TIntegerField;
    qry_excelPairs: TIntegerField;
    qry_excelNW: TCurrencyField;
    qry_excelGW: TCurrencyField;
    qry_excelCBM: TCurrencyField;
    SaveDialog1: TSaveDialog;
    Pop_Excel: TPopupMenu;
    Excel1: TMenuItem;
    Label6: TLabel;
    qry_excelSTT: TFloatField;
    qry_billBill_YN: TStringField;
    Query1: TQuery;
    qry_excelBill_FCR_No: TStringField;
    qry_excelBill_FCR_Date: TDateTimeField;
    qry_billINV_DATE: TDateTimeField;
    qry_billCO_Vessel: TStringField;
    qry_billCO_Voyage: TStringField;
    chkmass: TCheckBox;
    chksample: TCheckBox;
    qry_billBill_CFMID: TStringField;
    qry_billBill_CFMDate: TDateTimeField;
    chkNoCFM: TCheckBox;
    chkCFM: TCheckBox;
    qry_excelBill_CFMID: TStringField;
    qry_excelBill_CFMDate: TDateTimeField;
    Pop_Bill: TPopupMenu;
    Confirm1: TMenuItem;
    Unconfirm1: TMenuItem;
    qry_billBill_FCR_No: TStringField;
    ConfirmAll1: TMenuItem;
    N1: TMenuItem;
    Query2: TQuery;
    qry_billBill_RCV_Org_CO: TStringField;
    qry_excelBill_RCV_Org_CO: TStringField;
    qry_billCO_Provide_Org: TStringField;
    Label7: TLabel;
    Edit4: TEdit;
    qry_RyStatus: TStringField;
    chkSubmit: TCheckBox;
    DTP5: TDateTimePicker;
    Label8: TLabel;
    DTP6: TDateTimePicker;
    Label9: TLabel;
    FCR2: TDateTimePicker;
    FCR1: TDateTimePicker;
    FCR_BillDate: TCheckBox;
    ShowProgress: TPanel;
    Label11: TLabel;
    ProgressBar: TProgressBar;
    qry_excelINV_NO: TStringField;
    qry_billINV_NO: TStringField;
    qry_RyINV_NO: TStringField;
    qry_RyRYNO: TStringField;
    qry_RySPECID: TStringField;
    qry_excelSPECID: TStringField;
    Label10: TLabel;
    Edit5: TEdit;
    Label12: TLabel;
    Edit6: TEdit;
    qry_RyCO_HSCode: TStringField;
    qry_excelCO_HSCode: TStringField;
    qry_excelShipmode: TStringField;
    MultiSelect1: TMenuItem;
    qry_billBill_RCV_Org_File: TStringField;
    Qry_Temp: TQuery;
    btnUpload_PDF: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog2: TSaveDialog;
    btnDownload_PDF: TMenuItem;
    btnDelete_PDF: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnexitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qry_billAfterOpen(DataSet: TDataSet);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btndeleteClick(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Confirm1Click(Sender: TObject);
    procedure Unconfirm1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ConfirmAll1Click(Sender: TObject);
    procedure Pop_BillPopup(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure qry_billBeforeClose(DataSet: TDataSet);
    procedure MultiSelect1Click(Sender: TObject);
    procedure Confirmdata(Sender: TObject);
    procedure btnUpload_PDFClick(Sender: TObject);
    procedure btnDownload_PDFClick(Sender: TObject);
    procedure btnDelete_PDFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DozcBill: TDozcBill;
  BTQueryOpen:boolean;
  IPFile,UserLog,PassLog,FileAddress,File_s:String;

implementation
uses Main1,  ToolCtrlsEh, Pwd1;
  //Pwd,
{$R *.dfm}

procedure TDozcBill.FormDestroy(Sender: TObject);
begin
   DozcBill:=nil;
end;

procedure TDozcBill.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if qry_bill.RequestLive then
   begin
      showmessage('You must save data first.');
      abort;
   end;
   Action:=cafree;
end;

procedure TDozcBill.btnexitClick(Sender: TObject);
begin
   close;
end;

procedure TDozcBill.Button1Click(Sender: TObject);
begin
  if qry_bill.RequestLive then
  begin
      showmessage('You must save data first.');
      abort;
  end;
  BTQueryOpen:=false;
  qry_Ry.Active:=false;
  qry_excel.Active:=false;
  qry_bill.Active:=false;
  if( not chk1.Checked) and(not chkInv.Checked)and(not FCR_BillDate.Checked ) and( not chkCFM.Checked ) and( not chkNoCFM.Checked)
  and(not chkSubmit.Checked)and(not chkSample.Checked)and(not chkmass.Checked)and(trim(edit3.Text)='')and(trim(edit4.Text)='')
  and(trim(edit2.Text)='')and(trim(Edit1.Text)='')then
  begin
    Messagedlg('Pls, input data for FILLTER first!',mtwarning,[mbyes],0);
    abort;
  end;
  BTQueryOpen:=true;
  PC1Change(nil);
end;

procedure TDozcBill.qry_billAfterOpen(DataSet: TDataSet);
begin
    if qry_bill.RecordCount > 0 then
    begin
        qry_Ry.Active:=true;
        btnmodify.Enabled:=true;
        btndelete.Enabled:=true;
    end;
end;

procedure TDozcBill.btnModifyClick(Sender: TObject);
begin
    qry_bill.RequestLive:=true;
    qry_bill.CachedUpdates:=true;
    qry_bill.Edit;

    btnsave.Enabled:=true;
    btncancel.Enabled:=true;
    DBGridEh1.FieldColumns['Sailing_Date'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['Bill_RCVD_Draf'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['Bill_RCV_From'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['Bill_Provide_From'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['Bill_RCV_Org_CO'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['Bill_Submit_Dox'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['Bill_RCV_Org'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['Bill_FCR_Date'].ButtonStyle:= cbsAuto;

end;

procedure TDozcBill.btnCancelClick(Sender: TObject);
begin 
    qry_bill.Active:=false;
    qry_bill.RequestLive:=false;
    qry_bill.CachedUpdates:=false;
    qry_bill.Active:=true;
end;

procedure TDozcBill.btnSaveClick(Sender: TObject);
var i:integer;
    j:variant;
begin
  try
    qry_Ry.Active:=false;
    qry_bill.first;
    for i:=1 to qry_bill.RecordCount do
      begin
        case qry_bill.updatestatus of
          usmodified:
          begin
             if not qry_bill.FieldByName('Bill_CFMID').IsNull then
             begin
                showmessage('Confirmed already. You can not modify!!!');
                exit;
             end;
             if qry_bill.FieldByName('Bill_YN').Value = '0' then
             begin
                  with query1 do
                  begin
                      active:=false;
                      sql.Clear;
                      sql.Add('UPDATE Ship_Booking SET');
                      sql.Add('      Bill_FCR_No =NULL');
                      sql.Add('      ,Bill_FCR_Date = NULL');
                      sql.Add('      ,Sailing_Date = NULL');
                      sql.Add('      ,Bill_RCVD_Draf = NULL');
                      sql.Add('      ,Bill_RCV_From = NULL');
                      sql.Add('      ,Bill_Provide_From =NULL');
                      sql.Add('      ,Bill_RCV_Org_CO = NULL');
                      sql.Add('      ,Bill_Submit_Dox = NULL');
                      sql.Add('      ,Bill_RCV_Org =NULL');
                      sql.Add('      ,Bill_Remark = NULL');
                      sql.Add('      ,Bill_UserID = NULL ');
                      sql.Add('      ,Bill_UserDate = NULL');
                      sql.Add('      ,UserDate=GETDATE() ');
                      sql.Add(' WHERE INV_NO ='''+qry_bill.FieldByName('INV_NO').Value+''' ');
                      execsql;
                  end;
             end
             else
             begin
                 qry_bill.edit;
                 if qry_bill.FieldByName('Bill_RCV_Org_CO').Value = 'No Need' then
                     qry_bill.FieldByName('CO_Provide_Org').AsString := 'No Need'
                 else
                    qry_bill.FieldByName('CO_Provide_Org').AsString := '';
                 qry_bill.FieldByName('Bill_UserID').Value:= Main.Edit1.Text;
                 qry_bill.FieldByName('Bill_YN').Value:= '1';
                 UpdateSQL1.apply(ukmodify);
                 with query1 do
                 begin
                    active:=false;
                    sql.Clear;
                    sql.Add('UPDATE sb SET CO_CFMID='''+Main.Edit1.Text+''',Co_CFMDate=getdate()');
                    sql.Add('FROM Ship_Booking sb');
                    sql.Add('where INV_NO='''+qry_bill.FieldByName('INV_NO').AsString+''' ');
                    sql.add(' AND ISNULL(CO_CFMID,'''')='''' AND Sailing_Date IS NOT NULL ');
                    sql.Add(' AND ISNULL(Customs_No,'''')<>'''' AND ISNULL(CO_Provide_Org,'''')=''No need''');
                    sql.Add(' AND EXISTS(SELECT 1 FROM INVOICE_D id WHERE id.INV_NO=sb.INV_NO and ISNULL(id.CO_HSCode,'''')<>'''' )');
                    execsql;
                end;
             end;
           end;
        end;
       qry_bill.next;
      end;

    qry_bill.active:=false;
    qry_bill.cachedupdates:=false;
    qry_bill.requestlive:=false;
    qry_bill.active:=true; 
    qry_excel.Active:=false;
  except
    Messagedlg('Error, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;
  IF J<>' ' THEN qry_bill.Locate('INV_NO',J,[]) ;

end;

procedure TDozcBill.Excel1Click(Sender: TObject);
var eclApp,WorkBook,xlSheet:olevariant;
    i,j:integer;
begin
    if ((qry_excel.Active) and (qry_excel.recordcount = 0)) or (not qry_excel.Active) then
     begin
        Messagedlg('No record.',mtwarning,[mbyes],0);
        abort;
     end;

  try
      eclApp:=CreateOleObject('Excel.Application');
  except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
  end;

  try
      ProgressBar.Position:=0;
      ProgressBar.Max:=qry_excel.RecordCount;
      ShowProgress.Visible:=true;
      ShowProgress.Refresh;

      WorkBook:=eclApp.workbooks.Add;
      xlSheet := workbook.Worksheets['sheet1'];
      xlSheet.Name:='Bill';

      for i:=0 to DBGridEh3.FieldCount -1 do
      begin
          eclApp.Cells(1,i+1):= DBGridEh3.Columns[i].Title.Caption;
      end;

     qry_excel.First;
     j:=2;
     while not qry_excel.Eof do
     begin
        for i:=0 to DBGridEh3.fieldcount -1 do
        begin
            if DBGridEh3.Fields[i].FieldName = 'PO' then
                eclApp.Cells(j,i+1):= #39 + DBGridEh3.Fields[i].Value
            else
                eclApp.Cells(j,i+1):=DBGridEh3.Fields[i].Value;

            eclApp.ActiveSheet.Rows[j].Font.Size:= 10;
            eclApp.ActiveSheet.Rows[j].font.name:='Calibri';
            eclApp.ActiveSheet.Rows[j].HorizontalAlignment := $FFFFEFF4;

        end;
      ProgressBar.Position:=ProgressBar.Position+1;
      ProgressBar.Refresh;
      qry_excel.Next;
      inc(j);
     end;

     eclapp.columns.autofit;
     ShowProgress.Visible:=false;
     showmessage('Succeed.');
     eclApp.Visible:=True;
    except
      on F:Exception do
      begin
        ShowProgress.Visible:=false;
        showmessage(F.Message);
      end;
    end;


end;
procedure DisconnectShare(DriveLetter : String);
begin
   WNetCancelConnection2(PChar(DriveLetter), 0, false);
end;

function MakeDriveMapping(DriveLetter: string; DirectoryPath: string;
  Username: string; Password: string; RestoreAtLogon: Boolean): DWORD;
var
  NetResource: TNetResource;
  dwFlags: DWORD;
  Reg: TRegistry;
  driveBinValue: integer;
  Letter : string;
begin
  Letter:=trim(DriveLetter);
  Reg := TRegistry.Create(KEY_SET_VALUE);
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\', true) then
    try
          driveBinValue := (1 shl (Ord(UpCase(Letter[1])) - Ord('A')));
          Reg.WriteInteger('NoDrives', driveBinValue);
    finally
       Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
  with NetResource do
  begin
    dwType := RESOURCETYPE_DISK;
    lpLocalName := PChar(DriveLetter);
    lpRemoteName := PChar(DirectoryPath);
    lpProvider := nil;
  end;
  if (RestoreAtLogon) then
    dwFlags := CONNECT_UPDATE_PROFILE
  else
    dwFlags := 0;
  WNetAddConnection2(NetResource, PChar(Password), PChar(UserName), 0); //Connect first
  Result := WNetAddConnection2(NetResource, PChar(Password),PChar(Username), dwFlags); // check connect ok or no
end;

procedure Check_Error();
begin
  {DisconnectShare('W:');
  if (MakeDriveMapping('W:',Copy(FileAddress,0,Length(FileAddress)-1), UserLog, PassLog,False) = 0) then
  begin
    ShowMessage('Pls, Call IT check Folder "'+FileAddress+'" on server fisrt (Error 0.96) !');
    Abort;
  end;  }
end;

procedure TDozcBill.FormCreate(Sender: TObject);
begin
    DTP1.Date:=date-7;
    DTP2.Date:=date;
    DTP3.Date:=date-7;
    DTP4.Date:=date;
    DTP5.Date:=date-7;
    DTP6.Date:=date;
    FCR1.Date:=date-7;
    FCR2.Date:=date;
    PC1.TabIndex:=0;

end;

procedure TDozcBill.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if qry_bill.FieldByName('Bill_YN').Value = '0' then
        DBGridEh1.Canvas.Font.Color:=clred;

    if not qry_bill.FieldByName('Bill_CFMID').IsNull then
        DBGridEh1.Canvas.Font.Color:=clblue;

end;

procedure TDozcBill.btndeleteClick(Sender: TObject);
begin
    if qry_bill.FieldByName('Bill_UserDate').Value + 3 < date then
    begin
        showmessage('You can not delete after 3 days.');
        abort;
    end;
    if not qry_bill.FieldByName('Bill_CFMID').IsNull then
    begin
        showmessage('Confirmed already. You can not modify!!!');
        abort;
    end;

    if messageDlg('Are you sure to delete data???',mtwarning,[mbyes,mbno],0) = mryes then
    begin
        qry_bill.RequestLive:=true;
        qry_bill.CachedUpdates:=true;
        qry_bill.Edit;
        qry_bill.FieldByName('Bill_YN').Value:= '0';

        btnsave.Enabled:=true;
        btncancel.Enabled:=true;
    end
    else abort;
end;

procedure TDozcBill.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if not qry_excel.FieldByName('Bill_CFMID').IsNull then
        DBGridEh3.Canvas.Font.Color:=clblue;
    if trim(qry_excel.FieldByName('SPECID').AsString) = 'FX' then
    begin
      DBGridEh3.canvas.Font.Style:=[fsBold];
      DBGridEh3.canvas.Font.Size:=DBGridEh3.canvas.Font.Size-1;
    end;
end;

procedure TDozcBill.Confirmdata(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('update Ship_Booking set');
      sql.Add('         Bill_CFMID='''+Main.Edit1.Text+''' ');
      sql.Add('         ,Bill_CFMDate=getdate()');
      sql.Add('where Inv_no='''+qry_bill.FieldByName('Inv_no').AsString+''' ');
      execsql;
  end;
end;

procedure TDozcBill.Confirm1Click(Sender: TObject);
var j:variant;
    i:integer;
    bm:TBookmark;
    bookMarkList:TBookmarkListEh;
begin
   if messageDlg('Are you sure to confirm for this information?',mtwarning,[mbyes,mbno],0)= mrNo then
      abort;
   j:=qry_bill.FieldByName('Inv_no').AsString;
   if DBGridEh1.SelectedRows.Count > 0 then
   begin
        qry_bill.DisableControls;
        bm:=qry_bill.GetBookmark;
        bookMarkList:=DBGridEh1.SelectedRows;
        try
          for i:=0 to bookMarkList.Count-1 do
          begin
            qry_bill.GotoBookmark(pointer(bookMarkList[i]));

            if not qry_bill.FieldByName('Bill_CFMID').IsNull then

            else if qry_bill.FieldByName('Bill_FCR_No').IsNull then

            else if qry_bill.FieldByName('Bill_FCR_Date').IsNull then
            
            else
            Confirmdata(nil);
          end;
        finally
        begin
          qry_bill.GotoBookmark(bm);
          qry_bill.FreeBookmark(bm);
          qry_bill.EnableControls;
        end;
        end;
   end else
   begin
          if not qry_bill.FieldByName('Bill_CFMID').IsNull then
          begin
            showmessage('Confirmed already.');
            abort;
          end;

          if qry_bill.FieldByName('Bill_FCR_No').IsNull then
          begin
              showmessage('Bill/FCR No. can not empty.');
              abort;
          end;
          if qry_bill.FieldByName('Bill_FCR_Date').IsNull then
          begin
            showmessage('FCR Date can not empty.');
            abort;
          end;
          Confirmdata(nil);
   end;
   qry_bill.Active:=false;
   qry_excel.Active:=false;
   qry_bill.Active:=true;
   IF J<>' ' THEN qry_bill.Locate('INV_NO',J,[]) ;
end;

procedure TDozcBill.Unconfirm1Click(Sender: TObject);
var j:variant;
begin
  {Module1:='Shipping';
  FormID1:='SN52';
  Names1:='UnConfirm';  }

  PwdF:=TPwdF.Create(self);
  PwdF.Password.Clear;
  PwdF.ShowModal;

  if PwdF.PwdOK then
  begin
        j:=qry_bill.FieldByName('Inv_no').AsString;
        with query1 do
        begin
            active:=false;
            sql.Clear;
            sql.Add('update Ship_Booking set');
            sql.Add('         Bill_CFMID=NULL ');
            sql.Add('         ,Bill_CFMDate=NULL');
            sql.Add('where Inv_no='''+qry_bill.FieldByName('Inv_no').AsString+''' ');
            execsql;
        end;
        qry_bill.Active:=false;
        qry_excel.Active:=false;
        qry_bill.Active:=true;
        IF J<>' ' THEN qry_bill.Locate('INV_NO',J,[]) ;
        showmessage('UnConfirmed success !!!');
   end
   else Exit;

end;

procedure TDozcBill.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if not qry_bill.FieldByName('Bill_CFMID').IsNull then
        DBGridEh2.Canvas.Font.Color:=clblue;
    if trim(qry_Ry.FieldByName('SPECID').AsString) = 'FX' then
    begin
      DBGridEh2.canvas.Font.Style:=[fsBold];
      DBGridEh2.canvas.Font.Size:=DBGridEh2.canvas.Font.Size-1;
    end;
end;

procedure TDozcBill.ConfirmAll1Click(Sender: TObject);
begin
    if not chkNoCFM.Checked then
    begin
        showmessage('You must search condition No confirm first.');
        abort;
    end;

    if messageDlg('Are you sure to confirm all these invoice?',mtwarning,[mbyes,mbno],0) = mryes then
    begin
         with query2 do
         begin
              active:=false;
              sql.Clear;
              sql.Add('SELECT sb.Inv_No FROM Ship_Booking sb inner join Invoice_M on Invoice_M.Inv_No=sb.Inv_No');
              sql.Add('WHERE sb.CFMID IS NOT NULL and sb.Bill_CFMID IS null AND isnull(sb.Bill_FCR_No,'''') <> '''' AND isnull(sb.Bill_FCR_Date,'''') <> '''' ');
              if chk1.Checked then
              begin
                SQL.Add('    and convert(varchar,sb.ExFty_Date,111)  between ');
                SQL.Add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
              end;
              if chkInv.checked then
              begin
                SQL.Add('    and convert(varchar,Invoice_M.Inv_Date,111)  between ');
                SQL.Add('      '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
              end;
              sql.Add('order by sb.Inv_No');

              active:=true;
         end;

         query2.First;
         while not query2.Eof do
         begin
            with query1 do
            begin
                active:=false;
                sql.Clear;
                sql.Add('update Ship_Booking set');
                sql.Add('         Bill_CFMID='''+Main.Edit1.Text+''' ');
                sql.Add('         ,Bill_CFMDate=getdate()');
                sql.Add('where Inv_no='''+query2.FieldByName('Inv_no').AsString+''' ');
                execsql;
            end;
            query2.Next;
         end;

         showmessage(inttostr(query2.RecordCount) + ' rows confirmed!!!');
         qry_Ry.Active:=false;
         qry_bill.Active:=false;
         qry_bill.Active:=true;
         qry_excel.Active:=false;
         qry_excel.Active:=true;
    end;
end;

procedure TDozcBill.Pop_BillPopup(Sender: TObject);
begin
  ConfirmAll1.Visible:=false;
  Unconfirm1.Enabled:=False;
  Confirm1.Enabled:=False;
  MultiSelect1.Enabled:=false;
  btnUpload_PDF.Enabled:=False;
  btnDownload_PDF.Enabled:=False;
  btnDelete_PDF.Enabled:=False;
  if (qry_bill.Active) and (qry_bill.RecordCount > 0) and (not qry_bill.RequestLive) then
  begin
     MultiSelect1.Enabled:=true;
     btnUpload_PDF.Enabled:=True;

     if (Main.Edit1.Text = '10812') or (Main.Edit1.Text='24293') or (Main.Edit1.Text='A106') then
        ConfirmAll1.Visible:=true;
     if (trim(qry_bill.FieldByName('Bill_CFMID').AsString)<>'') then
       Unconfirm1.Enabled:=true;
     if (trim(qry_bill.FieldByName('Bill_CFMID').AsString)='')or(DBGridEh1.SelectedRows.Count > 0) then
       Confirm1.Enabled:=true;
     if (qry_bill.FieldByName('Bill_RCV_Org_File').AsString<>'') then
     begin
      btnDelete_PDF.Enabled:=True;
      btnDownload_PDF.Enabled:=True;
     end;
  end;

end;

procedure TDozcBill.PC1Change(Sender: TObject);
begin
  if(BTQueryOpen)and(PC1.ActivePage=All)and(not qry_bill.Active)then
  begin
      with qry_bill do
      begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT Ship_Booking.INV_NO,im.INV_Date,Kind_Loading,Ship_Booking.Forwarder,Place_Delivery,Ship_Booking.ETD,ExFty_Date');
        sql.Add('      ,Bill_FCR_No,Bill_FCR_Date,Sailing_Date,Bill_RCVD_Draf,Bill_RCV_From,Bill_Provide_From,Bill_RCV_Org_CO,Bill_Submit_Dox');
        sql.Add('      ,Bill_RCV_Org,Bill_Remark,Bill_UserID,Bill_UserDate,im.CUSTID,im.TO_WHERE as COUNTRYEN,Bill_YN');
        sql.Add('      ,CO_Vessel+'' ''+CO_Voyage AS CO_Vessel,CO_Voyage,Bill_CFMID, Bill_CFMDate,CO_Provide_Org, Bill_RCV_Org_File');
        sql.Add('FROM Ship_Booking');
        sql.Add('LEFT JOIN INVOICE_M im ON im.INV_NO=Ship_Booking.Inv_No');
        sql.Add('WHERE Ship_Booking.CFMID IS NOT NULL ');
        if trim(edit2.Text)<>''then
          sql.Add(' and Ship_Booking.Inv_no like '''+edit2.Text+'%'' ');
        if edit1.Text <> '' then
          sql.Add(' AND EXISTS( SELECT 1 FROM INVOICE_D id WHERE id.INV_NO=im.INV_NO AND id.RYNO LIKE''' + Edit1.Text + '%'') ');
        if edit3.Text <> '' then
            sql.Add('and im.TO_WHERE like '''+edit3.Text+'%'' ');
        if Edit5.Text <> '' then
        begin
          sql.Add('AND( EXISTS(SELECT 1 FROM INVOICE_D id2 WHERE id2.INV_NO=im.INV_NO AND id2.PO = '''+Edit5.Text+''')');
          sql.Add('    OR EXISTS(SELECT 1 FROM INVOICE_SAMPLE is1 WHERE is1.Inv_No = im.INV_NO AND is1.Inv_No = ''' + Edit5.Text + '''))');
        end;
        {if Edit6.Text <> '' then
            sql.Add('AND (Ship_Booking.Forwarder Like '''+edit6.Text+'%'' OR EXISTS(SELECT 1 FROM INVOICE_SAMPLE is1 WHERE is1.Inv_No = im.INV_NO AND is1.CustID = '''+Edit6.Text+'''))');}
        if Edit6.Text <> '' then
            sql.Add('AND Ship_Booking.Forwarder Like '''+edit6.Text+'%''');
        if chkmass.Checked then
            sql.Add('and im.Inv_Type = ''Mass Production'' ');
        if chkSample.Checked then
            sql.Add('and im.Inv_Type = ''Sample Shoe'' ');
        if chkNoCFM.Checked then
            sql.Add('and Bill_CFMID is null ');
        if chkCFM.Checked then
            sql.Add('and Bill_CFMID is not null '); 
        if Edit4.Text <> '' then
            sql.Add('and Bill_FCR_No like '''+Edit4.Text+'%'' ');
        if FCR_BillDate.Checked then
        begin
            SQL.Add('and convert(varchar,Bill_FCR_Date,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',FCR1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',FCR2.Date) +'''');
        end;
        if chk1.Checked then
        begin
            SQL.Add('and convert(varchar,Ship_Booking.ExFty_Date,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        if chkInv.checked then
        begin
            SQL.Add('and convert(varchar,im.Inv_Date,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
        end;
        if chkSubmit.checked then
        begin
            SQL.Add('and convert(varchar,Bill_Submit_Dox,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP5.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP6.Date) +'''');
        end;
        active:=true;
      end;
  end else
  if(BTQueryOpen)and(PC1.ActivePage=Excel)and(not qry_excel.Active)then
  begin
      with qry_excel do
      begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT ROW_NUMBER() OVER (ORDER BY INVOICE.Inv_no) STT, INVOICE.* FROM (');
        sql.Add('SELECT inv.INV_NO,im.INV_DATE,sb.ExFty_Date,sb.Kind_Loading, sb.Forwarder,');
        sql.Add('       sb.Place_Delivery,sb.Sailing_Date, sb.Bill_RCVD_Draf, sb.Bill_RCV_From,inv.CO_HSCode,');
        sql.Add('       sb.Bill_Provide_From, sb.Bill_RCV_Org_CO, sb.Bill_Submit_Dox,Bill_FCR_No,Bill_FCR_Date,');
        sql.Add('       sb.Bill_RCV_Org, sb.Bill_Remark,sb.Bill_UserID, sb.Bill_UserDate');
        sql.Add('		,inv.PO,im.CustID as MCUSTMER,upper(im.TO_WHERE) as COUNTRYEN, inv.RYNO, pd.CTS, pd.Pairs, pd.NW,pd.GW, pd.CBM');
        sql.Add('   ,'' '' AS Shipmode,im.Inv_Type,Bill_CFMID, Bill_CFMDate,'' '' as SPECID');
        sql.Add('FROM INVOICE_D inv ');
        sql.Add('LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV_NO AND pd.RYNO = inv.RYNO');
        sql.Add('INNER JOIN Ship_Booking sb ON sb.INV_NO = inv.INV_NO');
        sql.Add('INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO');
        sql.Add('LEFT JOIN YWDD ON YWDD.DDBH=inv.RYNO');
			  sql.Add('left join DDZL do on do.DDBH=YWDD.YSBH');
        sql.Add('WHERE sb.CFMID IS NOT NULL --and do.DDZT <>''C''  ');
        if edit2.Text <> '' then
            sql.Add('and inv.INV_NO like '''+edit2.Text+'%'' ');
        if edit3.Text <> '' then
            sql.Add('and upper(im.TO_WHERE) like '''+edit3.Text+'%'' ');
        if edit1.Text <> '' then
            sql.Add('and inv.RYNO like '''+edit1.Text+'%'' ');
        if Edit4.Text <> '' then
            sql.Add('and Bill_FCR_No like '''+Edit4.Text+'%'' ');
        if Edit5.Text <> '' then
         sql.Add('AND inv.PO = '''+Edit5.Text+'''');
        if Edit6.Text <> '' then
         sql.Add('AND sb.Forwarder Like '''+Edit6.Text+'%''');
        if chk1.Checked then
        begin
            SQL.Add('and convert(varchar,sb.ExFty_Date,111) between ');
            SQL.Add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        if chkInv.checked then
        begin
            SQL.Add('and convert(varchar,im.INV_DATE,111) between ');
            SQL.Add(''''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
        end;
        if chkSubmit.checked then
        begin
            SQL.Add('and convert(varchar,sb.Bill_Submit_Dox,111) between ');
            SQL.Add(''''+formatdatetime('yyyy/MM/dd',DTP5.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP6.Date) +'''');
        end;
        if FCR_BillDate.Checked then
        begin
            SQL.Add('and convert(varchar,Bill_FCR_Date,111) between ');
            SQL.Add(''''+formatdatetime('yyyy/MM/dd',FCR1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',FCR2.Date) +'''');
        end;
        if chkmass.Checked then
            sql.Add('and im.Inv_Type = ''Mass Production'' ');
        if chkSample.Checked then
            sql.Add('and im.Inv_Type = ''Sample Shoe'' ');

        if chkNoCFM.Checked then
            sql.Add('and Bill_CFMID is null ');
        if chkCFM.Checked then
            sql.Add('and Bill_CFMID is not null ');
        sql.Add(') INVOICE');
        active:=true;
      end;
  end;
end;

procedure TDozcBill.qry_billBeforeClose(DataSet: TDataSet);
begin
  qry_Ry.Active:=false;
  btnmodify.Enabled:=false;
  btndelete.Enabled:=false;
  btnsave.Enabled:=false;
  btncancel.Enabled:=false;
  DBGridEh1.FieldColumns['Sailing_Date'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['Bill_RCVD_Draf'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['Bill_RCV_From'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['Bill_Provide_From'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['Bill_RCV_Org_CO'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['Bill_Submit_Dox'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['Bill_RCV_Org'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['Bill_FCR_Date'].ButtonStyle:= cbsNone;
end;

procedure TDozcBill.MultiSelect1Click(Sender: TObject);
begin
  if leftstr(trim(MultiSelect1.Caption),2)<>'Un' then
  begin
    DBGridEh1.Options:=DBGridEh1.Options+[dgMultiSelect,dgRowSelect];
    qry_Ry.Active:=False;
    MultiSelect1.Caption:='Un'+MultiSelect1.Caption;
  end else
  begin
    DBGridEh1.Options:=DBGridEh1.Options-[dgMultiSelect,dgRowSelect];
    qry_Ry.Active:=true;
    MultiSelect1.Caption:='Multi Select';
  end;
end;

procedure TDozcBill.btnUpload_PDFClick(Sender: TObject);
var ID: Variant;
begin
  Check_Error;
  OpenDialog1.Title:='Please choose PDF file.';
  if not OpenDialog1.Execute then
    abort;
  File_s:=extractfilename(OpenDialog1.FileName);
  File_s:=ReverseString(copy(ReverseString(File_s),1,Pos ('.', ReverseString(File_s))));
  if (File_s<>'.PDF') and (File_s<>'.pdf') then
  begin
    ShowMessage('File upload must have extension (.PDF)');
    Abort;
  end;

  if (ExtractFileName(OpenDialog1.FileName)<> qry_bill.FieldByName('Bill_RCV_Org_File').AsString) and (FileExists(FileAddress+ExtractFileName(OpenDialog1.FileName))) then
  begin
    ShowMessage('Cannot Upload! Duplicate File Name');
    Abort;
  end;
  try
    if trim(qry_bill.FieldByName('Bill_RCV_Org_File').AsString)<>'' then
    begin
      DeleteFile(FileAddress+qry_bill.FieldByName('Bill_RCV_Org_File').AsString);
      if FileExists(FileAddress+qry_bill.FieldByName('Bill_RCV_Org_File').AsString) then
        Abort;
    end;
    CopyFile(PChar(OpenDialog1.FileName), PChar(FileAddress+ExtractFileName(OpenDialog1.FileName)), false);
    if not FileExists(FileAddress+ExtractFileName(OpenDialog1.FileName)) then
      Abort;
  except
    showmessage('Can not Upload ! Try again !');
    DisconnectShare('W:');
    Abort;
  end;

  with Qry_Temp do
  begin
    Close;
    sql.Clear;
    sql.Add('Update Ship_Booking Set Bill_RCV_Org_File='''+ExtractFileName(OpenDialog1.FileName)+''' ');
    sql.Add('Where INV_NO='''+qry_bill.FieldByName('INV_NO').AsString+'''');
    ExecSQL;
  end;
  ID:=qry_bill.FIeldByName('INV_NO').AsString;
  qry_bill.Close;
  qry_bill.Open;
  qry_bill.Locate('INV_NO',ID,[]);
  DisconnectShare('W:');
  ShowMessage('Upload Success!');
end;

procedure TDozcBill.btnDelete_PDFClick(Sender: TObject);
var ID: Variant;
begin
  Check_Error;
  if MessageDlg('Do You Want Delete PDF File?',mtwarning,[mbyes,mbno],0) = mryes then
  begin
    DeleteFile(FileAddress+qry_bill.FieldByName('Bill_RCV_Org_File').AsString);
    with Qry_Temp do
    begin
      Close;
      sql.Clear;
      sql.Add('Update Ship_Booking Set Bill_RCV_Org_File=Null ');
      sql.Add('Where INV_NO='''+qry_bill.FieldByName('INV_NO').AsString+'''');
      ExecSQL;
    end;
  end;
  ID:=qry_bill.FIeldByName('INV_NO').AsString;
  qry_bill.Close;
  qry_bill.Open;
  qry_bill.Locate('INV_NO',ID,[]);
  DisconnectShare('W:');
  ShowMessage('Delete File Success!');
end;

procedure TDozcBill.btnDownload_PDFClick(Sender: TObject);
begin
  Check_Error;
  if not SaveDialog2.Execute then
    Abort;
  CopyFile(PChar(FileAddress+qry_bill.FieldByName('Bill_RCV_Org_File').AsString),PChar(SaveDialog2.FileName+'.PDF'),  false);
  ShowMessage('Download Success');
end;


end.
