unit InvoicePL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ComCtrls, StdCtrls, ExtCtrls, Menus, DBTables, DB, ADODB,Math,
  GridsEh, DBGridEh, Mask, DBCtrls,strUtils,NumberToWords,comobj, iniFiles;

type
  TInvoicePL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    chkIndate: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    chkNoLock: TCheckBox;
    Edit2: TEdit;
    chkLock: TCheckBox;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    Panel5: TPanel;
    btnInsert: TBitBtn;
    btndelete: TBitBtn;
    btnModify: TBitBtn;
    btnSave: TBitBtn;
    btnCancel: TBitBtn;
    btnexit: TBitBtn;
    btnPrint: TBitBtn;
    qrytemp: TQuery;
    Query1: TQuery;
    Query1INV_NO: TStringField;
    Query1INV_DATE: TDateTimeField;
    Query1RISK: TStringField;
    Query1SHIP_BY: TStringField;
    Query1FROM_WHERE: TStringField;
    Query1TO_WHERE: TStringField;
    Query1TOTAL_AMOUNT: TCurrencyField;
    Query1TOTAL_AMOUNT_WORD: TStringField;
    Query1BRAND: TStringField;
    Query1NO: TIntegerField;
    Query1FACTORY: TStringField;
    Query1YEAR: TStringField;
    Query1SAVE_USER: TStringField;
    Query1SAVE_TIME: TDateTimeField;
    Query1PRINT_LOCK: TStringField;
    Query1CFM_USER: TStringField;
    Query1CFM_TIME: TDateTimeField;
    Query1CFMED: TStringField;
    Query1PRINT_USER: TStringField;
    Query1PRINT_TIME: TDateTimeField;
    Query1UNLOCK_USER: TStringField;
    Query1UNLOCK_TIME: TDateTimeField;
    Query1YN: TStringField;
    Query1CUSTID: TStringField;
    Query1TOTAL_PAIRS: TIntegerField;
    Query1CURRENCY: TStringField;
    Query1Inv_Type: TStringField;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Pop_M: TPopupMenu;
    LockAll1: TMenuItem;
    Unclock1: TMenuItem;
    qrytemp1: TQuery;
    qrytemp2: TQuery;
    qry_total: TQuery;
    qry_totalT_CTS: TIntegerField;
    qry_totalT_PAIRS: TIntegerField;
    qry_totalT_NW: TFloatField;
    qry_totalT_GW: TFloatField;
    qry_totalT_CBM: TFloatField;
    DS5: TDataSource;
    Query2: TQuery;
    Query2INV_NO: TStringField;
    Query2PACK_NO: TStringField;
    Query2RYNO: TStringField;
    Query2STYLE_NAME: TStringField;
    Query2PO: TStringField;
    Query2CUSTORDNO: TStringField;
    Query2ARTICLE: TStringField;
    Query2SIZE_RUN: TStringField;
    Query2PAIRS: TIntegerField;
    Query2UNIT_PRICE: TCurrencyField;
    Query2AMOUNT: TCurrencyField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    DS2: TDataSource;
    Pop_D: TPopupMenu;
    RevisePrice2: TMenuItem;
    Excel1: TMenuItem;
    Query3: TQuery;
    Query3INV_NO: TStringField;
    Query3RYNO: TStringField;
    Query3XH: TStringField;
    Query3SIZ: TStringField;
    Query3CTS: TIntegerField;
    Query3PAIRS: TIntegerField;
    Query3NW: TFloatField;
    Query3GW: TFloatField;
    Query3L: TFloatField;
    Query3W: TFloatField;
    Query3H: TFloatField;
    Query3CBM: TFloatField;
    Query3UserID: TStringField;
    Query3UserDate: TDateTimeField;
    Query3CTQ: TIntegerField;
    Query3CTZ: TIntegerField;
    DS3: TDataSource;
    Pop_P: TPopupMenu;
    RevisePackingList2: TMenuItem;
    Splitter1: TSplitter;
    qry_PD: TQuery;
    qry_PDINV_NO: TStringField;
    qry_PDRYNO: TStringField;
    qry_PDCTS: TIntegerField;
    qry_PDPairs: TIntegerField;
    qry_PDNW: TFloatField;
    qry_PDGW: TFloatField;
    qry_PDUserID: TStringField;
    qry_PDUserDate: TDateTimeField;
    qry_PDCBM: TFloatField;
    qry_PDWord: TStringField;
    Pop_PD: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    DS_PD: TDataSource;
    Upd_PD: TUpdateSQL;
    Label4: TLabel;
    Edit3: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    DBGridEh2: TDBGridEh;
    Panel6: TPanel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Splitter3: TSplitter;
    Panel4: TPanel;
    Splitter4: TSplitter;
    DBGridEh3: TDBGridEh;
    Panel7: TPanel;
    DBGridEh4: TDBGridEh;
    DS_Checks: TDataSource;
    Label5: TLabel;
    cboSign: TComboBox;
    Query3SIZ_US: TStringField;
    Query1status: TStringField;
    chkDrop: TCheckBox;
    Query2YSSM: TStringField;
    Query3TNW: TFloatField;
    Query3TGW: TFloatField;
    btnExcel: TBitBtn;
    Query3rgw: TFloatField;
    Query3TRGW: TFloatField;
    qry_PDtotalTRGW: TFloatField;
    qry_totalT_TRGW: TFloatField;
    Query3CtnboxCode: TStringField;
    Query3InboxCode: TStringField;
    btnAnnex: TBitBtn;
    Query1Declaretion: TStringField;
    Query2KHDDBH1: TStringField;
    Query2YSBH: TStringField;
    btnExcel_TB: TBitBtn;
    rbtTX: TRadioButton;
    rbtTB: TRadioButton;
    Query3Qty: TStringField;
    Query3Inboxbar: TStringField;
    btnExcel_TT: TBitBtn;
    Query1REF: TStringField;
    btnExcel_CA: TBitBtn;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    ExcelPR: TBitBtn;
    Query4: TQuery;
    Query5: TQuery;
    BitBtn1: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnexitClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure Unclock1Click(Sender: TObject);
    procedure RevisePackingList2Click(Sender: TObject);
    procedure RevisePrice2Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Query3AfterScroll(DataSet: TDataSet);
    procedure btnPrintClick(Sender: TObject);
    procedure AddRY1Click(Sender: TObject);
    procedure qry_PDAfterScroll(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure LockAll1Click(Sender: TObject);
    procedure FuncRevise;
    procedure btnExcelClick(Sender: TObject);
    procedure btnAnnexClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcel_TBClick(Sender: TObject);
    procedure rbtTXClick(Sender: TObject);
    procedure rbtTBClick(Sender: TObject);
    procedure btnExcel_TTClick(Sender: TObject);
    procedure btnExcel_CAClick(Sender: TObject);
    procedure ExcelPRClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    AppDir:String;
    ComFullName:String;
    Vice_General_Director:String;
    Inv_No:string;
    { Private declarations }
    procedure ReadIni();
    procedure ExcelHeard(var xls: olevariant; index: Integer; SheetName: string; Format: string);
    procedure ExcelFoot(var xls: olevariant; i: integer);
    procedure ExcelFootTX(var xls: olevariant; i: integer);
    procedure ExcelFootTT(var xls: olevariant; i: integer);
    procedure btnExportExcel(MasterPO_Title:string;format:string);
    procedure btnExportExcelTT(MasterPO_Title:string;format:string);
    procedure ExcelHeardTT(var xls: olevariant; index: Integer; SheetName: string);
    procedure Update_Invoice_D(var Inv_No:string );
    procedure ExcelHeardTTInvoice(var xls: olevariant; index: Integer; SheetName: string);
  public
    { Public declarations }
  end;

var
  InvoicePL: TInvoicePL;
  function GetWorksheetByName(wb: OleVariant; const SheetName: string): OleVariant;
  procedure DrawOuterBorder(Sheet: OleVariant);
  procedure DrawRectangleBorder(Sheet: OleVariant);
  function LoadUnicodeText(const FileName: string): WideString;
  procedure InsertFooter(xls: Variant; StartRow, Col: Integer; const FileName: string);
implementation
  uses main1,Pwd1,QpInvoice1,QpPackingList1, AddRy1, Contract_Inv_Print1, FunUnit;
{$R *.dfm}

procedure TInvoicePL.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  ComFullName:='VINH LONG FOOTWEAR CO., LTD';
  Vice_General_Director:='Nguyen Viet Trung';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
      Vice_General_Director:=MyIni.ReadString('ERP','ShippingN12_Vice_General_Director','Nguyen Viet Trung');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TInvoicePL.FormDestroy(Sender: TObject);
begin
   InvoicePL:=nil;
end;

procedure TInvoicePL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if btnsave.Enabled then
   begin
      showmessage('You must save data first.');
      abort;
   end
   else
      action:=cafree;
end;

procedure TInvoicePL.btnexitClick(Sender: TObject);
begin
   close;
end;

procedure TInvoicePL.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT distinct INVOICE_M.*,do.DDZT as status  ');
    SQL.Add('FROM INVOICE_M LEFT JOIN INVOICE_D id ON id.INV_NO = INVOICE_M.INV_NO');
    sql.Add('        LEFT JOIN YWDD ON id.RYNO=YWDD.DDBH');
    sql.Add('	      left join DDZL do on YWDD.YSBH=do.DDBH');
    Query1.SQL.Add('WHERE 1=1 and inv_type=''Mass Production'' ');
    if edit3.Text <> '' then
        Query1.SQL.Add(' and RYNo like '''+edit3.Text+'%'' ');
    if chkIndate.Checked then
    begin
        Query1.SQL.Add('    and convert(smalldatetime,convert(varchar,INVOICE_M.Inv_Date,111))  between ');
        Query1.SQL.Add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if Edit1.Text<>'' then
    begin
      SQL.Add('AND INVOICE_M.INV_NO LIKE ''%'+Edit1.Text+'%''');
    end;
    if chkNoLock.Checked then
       SQL.Add('AND PRINT_LOCK is null');
    if chkLock.Checked then
       SQL.Add('AND PRINT_LOCK is not null');
    if chkDrop.Checked then
       SQL.Add('AND status = ''C'' ');
    SQL.Add('AND TO_WHERE like '''+edit2.Text+'%'' ');
    Active:=true;
  end;
  Query2.Open;
  Query3.Open;
  qry_PD.Open;
  qry_total.Active:=true;
end;

procedure TInvoicePL.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not Query1.FieldByName('PRINT_LOCK').IsNull then
  begin
    DBGridEh1.Canvas.Font.Color:=clBlue;
  end;

  if Query1.FieldByName('YN').AsString = '0' then
  begin
    DBGridEh1.Canvas.Font.Color:=clred;
  end;

  if Query1.FieldByName('status').AsString = 'C' then
    DBGridEh1.Canvas.Font.Color:=clPurple;

end;

procedure TInvoicePL.FormShow(Sender: TObject);
begin
   DTP1.Date :=date;
   DTP2.Date :=date;

   qrytemp1.Active:=false;
   qrytemp1.SQL.Clear;
   qrytemp1.SQL.add('select Memo from ShipCountry group by Memo ');
   qrytemp1.Active:=true;
   qrytemp1.First;
   DBGridEh1.Columns[5].PickList.Clear;      //TO_where
   while not qrytemp1.Eof do
   begin
      DBGridEh1.Columns[5].PickList.Add(upperCase(qrytemp1.fieldbyName('Memo').AsString));
      qrytemp1.Next;
   end;
end;

procedure TInvoicePL.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
   if (query1.Active) and (query1.RecordCount > 0) then
   begin
       btndelete.Enabled:=true;
       btnmodify.Enabled:=true;
       btnprint.Enabled:=true;
       btnExcel.Enabled:=true;
       btnAnnex.Enabled:=true;
       btnExcel_TB.Enabled:=true;
       btnExcel_TT.Enabled:=true;
       btnExcel_CA.Enabled:=true;
       //
       //if ((main.Edit2.Text = 'VTX') and (query1.FieldByName('PRINT_LOCK').AsString <> 'Y'))  then// ³Ì°ªÅv­­
       //begin
          LockAll1.Visible:=true;
          UnClock1.Visible:=true;
          RevisePrice2.Visible:=true;
          RevisePackingList2.Visible:=true;
          Modify1.Enabled:=true;
          Modify1.Visible:=true;
          Save1.Visible:=true;
          Cancel1.Visible:=true;
       //end;
   end;
end;

procedure TInvoicePL.btnModifyClick(Sender: TObject);
begin
    if query1.FieldByName('PRINT_LOCK').AsString = 'Y' then
    begin
        showmessage('Invoice has clocked!!! You must unclock before modify.');
        abort;
    end;

    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.Edit;
    btnsave.Enabled:=true;
    btnCancel.Enabled:=true;
    dbgrideh1.FieldColumns['INV_DATE'].ButtonStyle:=cbsAuto;
    dbgrideh1.FieldColumns['TO_WHERE'].ButtonStyle:=cbsAuto;
    //
    Query2.Close;
    Query3.Close;
    qry_PD.Close;
    qry_total.Active:=false;
end;

procedure TInvoicePL.btnCancelClick(Sender: TObject);
begin
    query1.Active:=false;
    query1.RequestLive:=false;
    query1.CachedUpdates:=false;
    query1.Active:=true;
    btnsave.Enabled:=false;
    btnCancel.Enabled:=false;
    dbgrideh1.FieldColumns['Inv_Date'].ButtonStyle:=cbsnone;
    dbgrideh1.FieldColumns['To_where'].ButtonStyle:=cbsnone;
    //
    Query2.Open;
    Query3.Open;
    qry_PD.Open;
    qry_total.Active:=true;
end;

procedure TInvoicePL.btnSaveClick(Sender: TObject);
var i:integer;
    J:Variant;
begin
  try
    query1.first;

      for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usmodified:
             begin
              if query1.fieldbyname('YN').value = '0' then
              begin
                with qrytemp1 do
                begin
                  active:=false;
                  sql.clear;
                  sql.add('delete Invoice_D where Inv_No='+''''+query1.fieldbyname('Inv_No').AsString+''' ');
                  sql.add('delete Packing where Inv_No='+''''+query1.fieldbyname('Inv_No').AsString+''' ');
                  sql.add('delete Packing_D where Inv_No='+''''+query1.fieldbyname('Inv_No').AsString+''' ');
                  execsql;
                end;
                UpdateSQL1.apply(ukdelete);
              end else
              begin
                if query1.FieldByName('PRINT_LOCK').AsString = 'Y' then
                begin
                    showmessage('Invoice has clocked!!! You must unclock before modify.');
                    exit;
                end;
                query1.edit;
                j:=Query1.fieldbyname('INV_NO').Value;
                Inv_No:=Query1.fieldbyname('INV_NO').Value;
                query1.FieldByName('SAVE_USER').Value:= Main.Edit1.Text;
                UpdateSQL1.apply(ukmodify);
                Update_Invoice_D(Inv_No);
              end;
            end;
         end;
        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;

    btnsave.Enabled:=false;
    btnCancel.Enabled:=false;
    dbgrideh1.FieldColumns['Inv_Date'].ButtonStyle:=cbsnone;
    dbgrideh1.FieldColumns['To_where'].ButtonStyle:=cbsnone;
    //
    Query2.Open;
    Query3.Open;
    qry_PD.Open;
    qry_total.Active:=true;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;
  IF J<>' ' THEN Query1.Locate('INV_NO',J,[]) ;
end;

procedure TInvoicePL.Update_Invoice_D(var InV_No:string);
begin
  // update INVOICE_D.userdate when modify INVOICE_M
   with qrytemp do
   begin
      active:=false;
      sql.Clear;
      sql.Add('update INVOICE_D');
      sql.Add('set userdate= getdate()');
      sql.Add('where INV_NO='''+InV_No+'''');
      //funcobj.WriteErrorLog(sql.Text);
      ExecSQL;
   end;
  //
end;

procedure TInvoicePL.btndeleteClick(Sender: TObject);
begin
    if query1.FieldByName('PRINT_LOCK').AsString = 'Y' then
    begin
        showmessage('Invoice has clocked!!! You can not delete.');
        abort;
    end;

    if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
    begin
        query1.RequestLive:=true;
        query1.CachedUpdates:=true;
        query1.Edit;
        query1.FieldByName('YN').AsString :='0';
        btnsave.Enabled:=true;
        btnCancel.Enabled:=true;
    end;
end;

procedure TInvoicePL.Unclock1Click(Sender: TObject);
var S_INV_NO,S_PRINT_LOCK:string;
    SavePlace: TBookmark;
    J:Variant;
begin
  S_INV_NO:=Query1.FieldByName('INV_NO').AsString;
  S_PRINT_LOCK:=Query1.FieldByName('PRINT_LOCK').AsString;
  j:=Query1.fieldbyname('INV_NO').Value;

  if S_PRINT_LOCK='Y' then
  begin

    PwdF:=TPwdF.Create(self);
    PwdF.Label2.Caption:='SN12';
    PwdF.Password.Clear;
    PwdF.ShowModal;

    if PwdF.PwdOK then
    begin
      SavePlace:=Query1.GetBookmark;

      qrytemp1.Close;
      qrytemp1.SQL.Clear;
      qrytemp1.SQL.Add('update INVOICE_M');
      qrytemp1.SQL.Add('set');
      qrytemp1.SQL.Add('PRINT_USER = Null,');
      qrytemp1.SQL.Add('PRINT_TIME = Null,');
      qrytemp1.SQL.Add('PRINT_LOCK = Null,');
      qrytemp1.SQL.Add('UNLOCK_USER = :UNLOCK_USER,');
      qrytemp1.SQL.Add('UNLOCK_TIME = :UNLOCK_TIME');
      qrytemp1.SQL.Add('where');
      qrytemp1.SQL.Add('INV_NO = :INV_NO ');
      qrytemp1.ParamByName('UNLOCK_USER').Value:=Main.Edit1.Text;
      qrytemp1.ParamByName('UNLOCK_TIME').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',now);

      qrytemp1.ParamByName('INV_NO').Value:=S_INV_NO;

      qrytemp1.ExecSQL;

      Query1.Close;
      Query1.Open;
      Query1.GotoBookmark(SavePlace);
      Query1.FreeBookmark(SavePlace);
      
      showmessage('UnLock OK!');
      IF J<>' ' THEN Query1.Locate('INV_NO',J,[]) ;
    end
    else
    begin
      //showmessage('Sorry! You can not UnLock it!');
      exit;
    end;
    PwdF:=nil;
  end
  else
  begin
     showmessage('Not yet lock, can not unclock!');
  end;


end;

procedure TInvoicePL.RevisePackingList2Click(Sender: TObject);
var RYSting,RY:string;
begin

    if messagedlg('Are you sure to revise packing list for invoice number : '''+Query1.fieldbyName('Inv_No').AsString+'''?',mtwarning,[mbYes,Mbno],0)=mrYes then
    begin
        RYSting:='';
        with qrytemp1 do
        begin
            active:=false;
            sql.Clear;
            sql.Add('select RYNO from Invoice_D');
            sql.Add('where inv_no='''+Query1.fieldbyName('Inv_No').AsString+''' ');
            sql.Add('group by RYNO');
            active:=true;
            while not eof do
            begin
                RYSting:=RYSting+''''+FieldByName('RYNO').AsString+''',';
                next;
            end;
            RYSting:=LeftStr(RYSting,length(RYSting)-1);

            if RYSting = '' then
            begin
               showmessage('No RY!!! Can not revise.');
               abort;
            end else
            begin
              try
                active:=false;
                sql.Clear;
                //delete for this invoice
                sql.Add('delete from PACKING');
                sql.Add('where inv_no='''+Query1.fieldbyName('Inv_No').AsString+''' ');
                ExecSQL;

                //insert into table Packing
                SQL.Add('INSERT INTO PACKING(INV_NO,RYNO,XH,SIZ,CTQ,CTZ,CTS,QTY,PAIRS,NW,GW,L,W,H,CBM,USERID,USERDATE,TNW,TGW)');
                SQL.Add('SELECT '''+Query1.fieldbyName('Inv_No').AsString+''' AS INV_NO,YWBZPO.DDBH,YWBZPO.XH,YWBZPOS.DDCC,YWBZPO.CTQ,YWBZPO.CTZ');
                SQL.Add('		,TH.CTS,YWBZPOS.QTY,TH.PAIRS');
                SQL.Add('		,Round(TH.NW,2) as NW, Round(TH.GW,2) as GW'); //20150922 ¾c¤l²b­«, ¤ò­«=¾c¤l²b­«+¤º²°¤ò­«+¥~½c¤ò­«
                SQL.Add('		,YWBZPO.L,YWBZPO.W,YWBZPO.H ');
                SQL.Add('   ,Round(YWBZPO.CBM,4)*YWBZPO.CTS');
                SQL.Add('   ,'''+Main.Edit1.Text+''',getdate(),Round(TH.NW,2)*YWBZPO.CTS  as TNW,Round(TH.GW,2)*YWBZPO.CTS as TGW ');
                SQL.Add('FROM YWBZPO inner join YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
                SQL.Add('           LEFT JOIN YWDD ON YWBZPOS.DDBH=YWDD.DDBH');
                SQL.Add('				    left join DDZL on YWDD.YSBH=DDZL.DDBH');
                SQL.Add('				    left join YWWX2 on YWWX2.CLBH=YWBZPO.CLBH');
                SQL.Add('				    left join (');
                SQL.Add('							      SELECT YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS,sum((YWBZPO.CTS*YWBZPOS.QTY)) AS PAIRS');
                SQL.Add('								        ,Max(YWBZPO.NW) as NW,Max(YWBZPO.GW) as GW');
                SQL.Add('							      FROM YWBZPO inner join YWBZPOS on YWBZPO.DDBH=YWBZPOS.DDBH and YWBZPO.XH=YWBZPOS.XH');
                SQL.Add('                    where YWBZPO.DDBH in ('+RYSting+')');
                SQL.Add('				            group by YWBZPO.DDBH,YWBZPO.XH,YWBZPO.CTS');
                SQL.Add('		              )TH on TH.DDBH=YWBZPO.DDBH and YWBZPO.XH=TH.XH');
                SQL.Add('where YWBZPO.DDBH in ('+RYSting+')');
                SQL.Add('order by YWBZPO.XH');
                ExecSQL;

                //revise INVOICE_D first
                //FuncRevise;

                //get RY as invoice
                active:=false;
                sql.Clear;
                sql.Add('select Inv_No,RYNO from Invoice_D');
                sql.Add('where inv_no='''+Query1.fieldbyName('Inv_No').AsString+''' ');
                sql.Add('group by Inv_No,RYNO');
                active:=true;
                RY:='';
                while not eof do
                begin
                    RY:= fieldbyName('RYNO').AsString;
                    with qrytemp do
                    begin
                        //delete table Packing_D if exists
                        active:=false;
                        SQL.Clear;
                        sql.Add('delete from Packing_D');
                        SQL.Add('where RYNO='''+RY+'''  ');
                        SQL.Add('       and INV_No ='''+query1.fieldbyName('Inv_No').AsString+''' ');
                        execsql;

                        //update table packing_D for detail RY
                        sql.Add('INSERT INTO PACKING_D (INV_NO,RYNO,CTS,Pairs,NW,GW,CBM,UserID,UserDate)');
                        SQL.Add('SELECT '''+query1.fieldbyName('Inv_No').AsString+''' as Inv_No,'''+RY+''' as RYNO');
                        SQL.Add('       ,(select sum(CTS) from YWBZPO where YWBZPO.DDBH=INVOICE_D.RYNO )CTS');
                        SQL.Add('       ,INVOICE_D.Pairs,SUM(TNW),SUM(TGW),round(SUM(CBM),4),'''+Main.Edit1.Text+''',getdate() ');
                        SQL.Add('FROM INVOICE_D left join');
                        SQL.Add('                         (select Inv_No,RYNo,XH,TNW,TGW,CBM from PACKING');
                        SQL.Add('                           where RYNO='''+RY+'''  and INV_No ='''+query1.fieldbyName('Inv_No').AsString+'''  ');
                        SQL.Add('	                            group by Inv_No,RYNo,XH,TNW,TGW,CBM');
                        SQL.Add('                          )PACKING on INVOICE_D.RYNO=PACKING.RYNO and INVOICE_D.Inv_No=PACKING.Inv_No');
                        SQL.Add('where INVOICE_D.RYNO='''+RY+'''  ');
                        SQL.Add('       and INVOICE_D.INV_No ='''+query1.fieldbyName('Inv_No').AsString+''' ');
                        SQL.Add('group by INVOICE_D.RyNo,INVOICE_D.Pairs');
                        execsql;
                    end;
                    next;
                end;
                showmessage('Revise successfull!!!');
                Query3.Active:=false;
                Query3.Active:=true;
                qry_PD.Active:=false;
                qry_PD.Active:=true;
              except
                  showmessage('Error!!! Can not revise.');
                  abort;
              end;
            end;
        end;
    end;

end;
//§ó·s³æ»ù
procedure TInvoicePL.FuncRevise;
var vnprice,amount,PO,CUSTORDNO,custID,Pairs,total_pairs,total_amount,word,amount_word:string;
begin
        with qrytemp1 do
        begin
            active:=false;
            sql.Clear;
            //get new price and new Amount
            sql.Add('select Inv_no,Invoice_D.RYNo,Invoice_D.Pairs as Pairs,RY_VNPRICE.VNPRICE,Invoice_D.Pairs * RY_VNPRICE.VNPRICE as Amount,DDZL.KHPO as PO,RY_VNPRICE.CustOrdNo,DDZL.KHBH as CustID');  //YWDD.Qty Thoai Apr.03.2015
            sql.Add('from Invoice_D ');
            sql.Add('LEFT JOIN YWDD ON Invoice_D.RYNO=YWDD.DDBH');
            sql.Add('left join DDZL  on YWDD.YSBH=DDZL.DDBH');
            sql.Add('left join RY_VNPRICE on RY_VNPRICE.RYNO=YWDD.YSBH');
            sql.Add('where Invoice_D.RYNo = '''+Query2.fieldbyName('RYNO').AsString+''' and Invoice_D.Inv_no='''+Query2.fieldbyname('INV_NO').AsString+''' ');
            active:=true;

            PO:= qrytemp1.fieldbyName('PO').AsString ;
            CUSTORDNO:= qrytemp1.fieldbyName('CUSTORDNO').AsString;
            Pairs:= qrytemp1.fieldbyName('Pairs').AsString;
            vnprice:= qrytemp1.fieldbyName('VNPRICE').AsString ;
            amount:= qrytemp1.fieldbyName('Amount').AsString;
            custID:=qrytemp1.fieldbyName('custID').AsString ;

            try
              //update price
              active:=false;
              sql.Clear;
              sql.Add('update Invoice_D set');
              sql.Add('       PO='''+PO+''' ');
              sql.Add('       ,CUSTORDNO='''+CUSTORDNO+''' ');
              sql.Add('       ,Pairs='''+Pairs+''' ');      //add Thoai Apr.03.2015
              sql.Add('       ,Unit_Price='''+vnprice+''' ');
              sql.Add('       ,Amount='''+amount+''' ');
              sql.Add('       ,YN= ''2'' ');     //revise YN=2
              sql.Add('       ,UserID= '''+main.Edit1.Text+''' ');
              sql.Add('       ,UserDate=getdate()');
              sql.Add('where Invoice_D.RYNo = '''+Query2.fieldbyName('RYNO').AsString+''' and Invoice_D.Inv_no='''+Query2.fieldbyname('INV_NO').AsString+''' ');
              execsql;

              //get total Amount for invoice
              active:=false;
              sql.Clear;
              sql.Add('select  sum(pairs) AS Pairs,sum(Pairs * RY_VNPRICE.VNPRICE) as Amount');      // sum(pairs) AS Pairs, Thoai Apr.03.2015
              sql.Add('from Invoice_D ');
              sql.Add('LEFT JOIN YWDD ON Invoice_D.RYNO=YWDD.DDBH');
              sql.Add('left join RY_VNPRICE on RY_VNPRICE.RYNO=YWDD.YSBH');
              sql.Add('where inv_no='''+Query1.fieldbyName('Inv_No').AsString+''' ');
              active:=true;

              word:='';
              amount_word:='';
              
              total_pairs:= qrytemp1.fieldbyName('Pairs').AsString ;
              total_amount:= qrytemp1.fieldbyName('Amount').AsString ;

              if total_amount <> '' then
              begin
                  word:= ConvertToWords(qrytemp1.FieldByName('Amount').AsFloat,true);
                  amount_word:=upperCase(leftstr(word,1)) + copy(word,2,length(word)-1);
              end;

              //update total Amount for invoice
              active:=false;
              sql.Clear;
              sql.Add('update Invoice_M set');
              sql.Add('   CUSTID= '''+CUSTID+''' ');
              sql.Add('   ,TOTAL_PAIRS= '''+total_pairs+''' ');   //add Thoai Apr.03.2015
              sql.Add('   ,TOTAL_AMOUNT= '''+total_amount+''' ');
              sql.Add('   ,TOTAL_AMOUNT_WORD='''+amount_word+''' ');
              sql.Add('where inv_no='''+Query1.fieldbyName('Inv_No').AsString+''' ');
              execsql;

              Query2.Active:=false;
              Query2.Active:=true;
              Query1.Active:=false;
              Query1.Active:=true;
            except
                showmessage('Error!!! Can not revise.');
                abort;
            end;
        end;

end;

procedure TInvoicePL.RevisePrice2Click(Sender: TObject);
var J1,j2:Variant;
begin
   j1:=Query1.fieldbyname('INV_NO').Value;
   j2:=Query2.fieldbyname('RYNO').Value;

    if messagedlg('Are you sure to revise price for RY : '''+Query2.fieldbyName('RYNO').AsString+'''?',mtwarning,[mbYes,Mbno],0)=mrYes then
    begin
       try
         FuncRevise;
         showmessage('Revise successfull!!!');
       except
           showmessage('Error!!! Can not revise.');
           abort;
       end;
    end;

    IF J1<>' ' THEN Query1.Locate('INV_NO',J1,[]) ;
    IF J2<>' ' THEN Query2.Locate('RYNO',J2,[]) ;

end;

procedure TInvoicePL.Modify1Click(Sender: TObject);
begin

    qry_PD.RequestLive:=true;
    qry_PD.CachedUpdates:=true;
    qry_PD.Edit;

    save1.Enabled:=true;
    cancel1.Enabled:=true;
end;

procedure TInvoicePL.Cancel1Click(Sender: TObject);
begin
    qry_PD.Active:=false;
    qry_PD.RequestLive:=false;
    qry_PD.CachedUpdates:=false;
    qry_PD.Active:=true;

    save1.Enabled:=false;
    cancel1.Enabled:=false;
end;

procedure TInvoicePL.Save1Click(Sender: TObject);
var i:integer;
begin
  try
    qry_PD.first;
    for i:=1 to qry_PD.RecordCount do
      begin
        case qry_PD.updatestatus of
          usmodified:
          begin
              qry_PD.edit;
              qry_PD.FieldByName('UserID').Value:= Main.Edit1.Text;
              Upd_PD.apply(ukmodify);
          end;
        end;
       qry_PD.next;
      end;
    qry_PD.active:=false;
    qry_PD.cachedupdates:=false;
    qry_PD.requestlive:=false;
    qry_PD.active:=true;

    save1.Enabled:=false;
    Cancel1.Enabled:=false;

  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;
end;

procedure TInvoicePL.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not Query1.FieldByName('PRINT_LOCK').IsNull then
  begin
    DBGridEh2.Canvas.Font.Color:=clBlue;
  end;

  if Query1.FieldByName('YN').AsString = '0' then
  begin
    DBGridEh2.Canvas.Font.Color:=clred;
  end;

  if Query1.FieldByName('status').AsString = 'C' then
    DBGridEh2.Canvas.Font.Color:=clPurple;
end;

procedure TInvoicePL.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not Query1.FieldByName('PRINT_LOCK').IsNull then
  begin
    DBGridEh3.Canvas.Font.Color:=clBlue;
  end;

  if Query1.FieldByName('YN').AsString = '0' then
  begin
    DBGridEh3.Canvas.Font.Color:=clred;
  end;

  if Query1.FieldByName('status').AsString = 'C' then
    DBGridEh3.Canvas.Font.Color:=clPurple;
end;

procedure TInvoicePL.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not Query1.FieldByName('PRINT_LOCK').IsNull then
  begin
    DBGridEh4.Canvas.Font.Color:=clBlue;
  end;

  if Query1.FieldByName('YN').AsString = '0' then
  begin
    DBGridEh4.Canvas.Font.Color:=clred;
  end ;

  if Query1.FieldByName('status').AsString = 'C' then
    DBGridEh4.Canvas.Font.Color:=clPurple;
end;

procedure TInvoicePL.Query3AfterScroll(DataSet: TDataSet);
begin
   TCurrencyField(Query3.fieldbyname('CBM')).Displayformat:='##0.000';
end;


procedure TInvoicePL.btnPrintClick(Sender: TObject);
var S_INV_NO,S_PRINT_LOCK:string;
    J:Variant;
begin
  S_INV_NO:=Query1.FieldByName('INV_NO').AsString;
  S_PRINT_LOCK:=Query1.FieldByName('PRINT_LOCK').AsString;

  j:=Query1.fieldbyname('INV_NO').Value;

    //--------------------------------Print Invoice-----------------------------
    //Master
    QpInvoiceF:=TQpInvoiceF.Create(nil);

    QpInvoiceF.qrLevel.Caption:= cboSign.Text;
    if cboSign.Text = 'Vice General Director' then
        QpInvoiceF.qrName.Caption:= Vice_General_Director;
    if cboSign.Text = 'Chief Accountant' then
        QpInvoiceF.qrName.Caption:= 'Huynh Thi Thu Ha';

    QpInvoiceF.quickrep1.prepare;
    QpInvoiceF.quickrep1.preview;
    QpInvoiceF.Free;

    //--------------------------Print Packing List------------------------------
    //Master1
    QpPackingListF:=TQpPackingListF.Create(nil);
    QpPackingListF.qrLevel.Caption:= cboSign.Text;
    if cboSign.Text = 'Vice General Director' then
        QpPackingListF.qrName.Caption:= Vice_General_Director;
    if cboSign.Text = 'Chief Accountant' then
        QpPackingListF.qrName.Caption:= 'Huynh Thi Thu Ha';
    QpPackingListF.quickrep1.prepare;
    QpPackingListF.quickrep1.preview;
    QpPackingListF.Free;

    //-------------------------------Confirm invoice----------------------------
    if S_PRINT_LOCK = '' then
    begin
      if messageDlg('Are you sure to confirm this invoice?',mtwarning,[mbyes,mbno],0) = mryes then
      begin
          if Query1.FieldByName('TOTAL_AMOUNT').Value = 0 then
          begin
              showmessage('Amount is 0, you must check again price or revise price.');
              abort;
          end;

          qrytemp1.Close;
          qrytemp1.SQL.Clear;
          qrytemp1.SQL.Add('update INVOICE_M');
          qrytemp1.SQL.Add('set');
          qrytemp1.SQL.Add('PRINT_USER = :PRINT_USER,');
          qrytemp1.SQL.Add('PRINT_TIME = :PRINT_TIME,');
          qrytemp1.SQL.Add('PRINT_LOCK = :PRINT_LOCK');
          qrytemp1.SQL.Add('where INV_NO = :INV_NO');

          qrytemp1.ParamByName('PRINT_USER').Value:=Main.Edit1.Text;
          qrytemp1.ParamByName('PRINT_TIME').Value:=FormatDateTime('yyyy/mm/dd hh:nn:ss',now);
          qrytemp1.ParamByName('PRINT_LOCK').Value:='Y';
          qrytemp1.ParamByName('INV_NO').Value:=S_INV_NO;
          qrytemp1.ExecSQL;
          {
          //¥Ø«e¥ý¨ú®ø
          //create contract
          qrytemp1.active:=false;
          qrytemp1.sql.Clear;
          qrytemp1.sql.Add('select * from Ship_Contract');
          qrytemp1.sql.Add('where Inv_No='''+S_INV_NO+''' ');
          qrytemp1.active:=true;
          if qrytemp1.eof then
              CreateContract(S_INV_NO,Query1.FieldByName('INV_Date').Value);

          //print contract
          Contract_Inv_Print:=TContract_Inv_Print.Create(nil);
          Contract_Inv_Print.quickrep1.prepare;
          Contract_Inv_Print.quickrep1.preview;
          Contract_Inv_Print.Free;
          }
      end
    end //end if
    else
    begin
        {
        //print contract
        Contract_Inv_Print:=TContract_Inv_Print.Create(nil);
        Contract_Inv_Print.quickrep1.prepare;
        Contract_Inv_Print.quickrep1.preview;
        Contract_Inv_Print.Free;
        }
    end;

    Query1.Close;
    Query1.Open;
    IF J<>' ' THEN Query1.Locate('INV_NO',J,[]) ;

end;

procedure TInvoicePL.AddRY1Click(Sender: TObject);
begin
  // AddRy:=TAddRy.create(self);
  // AddRy.show;
end;

procedure TInvoicePL.qry_PDAfterScroll(DataSet: TDataSet);
begin
    TCurrencyField(qry_PD.fieldbyname('CBM')).Displayformat:='##0.0000';
end;

procedure TInvoicePL.Excel1Click(Sender: TObject);
var eclApp,WorkBook,xlSheet:olevariant;
    i,j:integer;
begin
    if ((Query2.Active) and (Query2.recordcount = 0)) or (not Query2.Active) then
     begin
        Messagedlg('No record.',mtwarning,[mbyes],0);
        abort;
     end;

  try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
  except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
  end;

  try
      WorkBook := eclApp.workbooks.Add;
      xlSheet := eclApp.WorkSheets.Add;
      xlSheet.Name:='Invoice';

      for i:=0 to DBGridEh2.FieldCount -1 do
      begin
          eclApp.Cells(1,i+1):= DBGridEh2.Columns[i].Title.Caption;
      end;

     Query2.First;
     j:=2;
     while not Query2.Eof do
     begin
        for i:=0 to DBGridEh2.fieldcount -1 do
        begin
            eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].Value;

            if DBGridEh2.Fields[i].FieldName = 'SIZE_RUN' then
                eclApp.Cells(j,i+1):=#39 + DBGridEh2.Fields[i].Value;

            eclApp.ActiveSheet.Rows[j].Font.Size:= 10;
            eclApp.ActiveSheet.Rows[j].font.name:='Calibri';
            eclApp.ActiveSheet.Rows[j].HorizontalAlignment := $FFFFEFF4;

        end;
      Query2.Next;
      inc(j);
     end;

     eclapp.columns.autofit;
     showmessage('Succeed.');
     eclApp.Visible:=True;
    except
      on F:Exception do
        showmessage(F.Message);
    end;

end;

procedure TInvoicePL.LockAll1Click(Sender: TObject);
begin
    if Query1.RecordCount = 0 then
    begin
       showmessage('No data, can not confirm!!! ');
       abort;
    end;

    if messageDlg('Are you sure to confirm all these invoice?',mtwarning,[mbyes,mbno],0) = mryes then
    begin
        with qrytemp2 do
        begin
            active:=false;
            sql.Clear;
            sql.Add('select * from INVOICE_M');
            sql.Add('where PRINT_LOCK is null and TOTAL_AMOUNT > 0 and Inv_Type=''Mass Production''  ');
            if chkIndate.Checked then
            begin
               SQL.Add(' and convert(smalldatetime,convert(varchar,INVOICE_M.Inv_Date,111))  between ');
               SQL.Add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
            end;
            if edit1.Text<> '' then
            begin
              sql.Add(' and Inv_No= '''+edit1.Text+'''');
            end;
            sql.Add('order by Inv_no');
            active:=true;
        end;

        qrytemp2.First;
        while not qrytemp2.Eof do
        begin
            with qrytemp1 do
            begin
                {
                //20150922 ¨ú®øcontract
                active:=false;
                sql.Clear;
                sql.Add('select * from Ship_Contract');
                sql.Add('where Inv_No='''+qrytemp2.fieldbyName('Inv_no').AsString+''' ');
                active:=true;

                //make Annex
                if eof then
                    CreateContract(qrytemp2.fieldbyName('Inv_no').AsString,qrytemp2.fieldbyName('Inv_Date').Value);
                }
                //confirm all invoice
                active:=false;
                SQL.Clear;
                SQL.Add('update INVOICE_M');
                SQL.Add('set');
                SQL.Add('PRINT_USER = '''+Main.Edit1.Text+''',');
                SQL.Add('PRINT_TIME = getdate(),');
                SQL.Add('PRINT_LOCK = ''Y'' ');
                sql.Add('where Inv_No='''+qrytemp2.fieldbyName('Inv_no').AsString+''' ');
                ExecSQL;

            end;
            qrytemp2.Next;
        end;
        showmessage(inttostr(qrytemp2.RecordCount) + ' rows confirmed.');

        query1.Active:=false;
        query1.Active:=true;
    end
    else abort;

end;

procedure TInvoicePL.btnExportExcel(MasterPO_Title:string;format:string);
var
  i: integer;
  xls: olevariant;
  tmp, tmp2, siz, siz1 : string;
begin
  xls := CreateOleObject('Excel.Application');
  xls.Workbooks.Add;
  xls.Visible := false; //¥ý¦b­I´º¸Ì­±¶ë¸ê®Æ
  xls.Workbooks[1].WorkSheets.Add;
  //----¶}©l²Ä¤@­Ó³øªí INVOICE ------------------------------------
  ExcelHeard(xls, 1, 'INVOICE', format); //¨â­Ó³øªíªº©ïÀY³£¤@¼Ë¡A©Ò¥H´N¥Îfunction¨Ó°Ê§@
  //---¹L¤F©ïÀY´N¬O±q²Ä8¦æ¶}©l
  xls.Cells(8, 1) := 'Pack';
  xls.Cells(8, 2) := 'Description of goods';
  xls.Cells(8, 7) := 'Size';
  xls.Cells(8, 8) := 'Qty';
  xls.Cells(8, 9) := 'Unit Price';
  xls.Cells(8, 11) := 'Amount';
  xls.Cells(9, 1) := 'No';
  xls.Cells(9, 8) := 'Pairs';
  xls.Cells(9, 9) := 'USD/PRS';
  xls.Cells(9, 11) := 'USD';
  //¸óÄæ¸m¤¤
  xls.Range['B8:F8'].Merge;
  xls.Range['B8', 'F8'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['I8:J8'].Merge;
  xls.Range['I8', 'J8'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['K8:L8'].Merge;
  xls.Range['K8', 'L8'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['I9:J9'].Merge;
  xls.Range['I9', 'J9'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['K9:L9'].Merge;
  xls.Range['K9', 'L9'].HorizontalAlignment := $FFFFEFF4;
  //Ãä®Ø Borders  1-¥ª 2-¥k 3-³» 4-©³ 5-±×( \ ) 6-±×( / )
  xls.Range['A9:M9'].Borders[4].Weight := 3;
  xls.Range['A9:M9'].Borders[4].LineStyle := 1; //1:¹ê½u, 2:µê½u
  //--------------- ªì©l³]©w§¹¦¨¡A·Ç³Æ¾É¤J¸ê®Æ
  i := 4;
  Query2.First;
  while not Query2.Eof do
    begin
      i := i + 6; //6¦C¸ê°T
      xls.Cells(i + 1, 2) := 'RY : ';
      xls.Cells(i + 1, 3) := 'Style Name : ';
      xls.Cells(i + 2, 3) := 'PO#';
      xls.Cells(i + 3, 3) := MasterPO_Title;
      xls.Cells(i + 4, 3) := 'COLOR :';
      xls.Cells(i + 5, 3) := 'Article#';
      xls.Cells(i, 1) := Query2.FieldByName('PACK_NO').AsString;
      xls.Cells(i + 1, 2) := Query2.FieldByName('RYNO').AsString;
      xls.Cells(i + 1, 5) := Query2.FieldByName('STYLE_NAME').AsString;
      //
      xls.Range[xls.Cells[i + 2, 5],xls.Cells[i + 3, 5]].NumberFormatLocal:='@';
      //¤u¼t«~µP«È¤H¤£¤@¼Ë
      if format='TX' then
      begin
        xls.Cells(i + 2, 5) := Query2.FieldByName('PO').AsString;
        xls.Cells(i + 3, 5) := Query2.FieldByName('CUSTORDNO').AsString;
      end else
      begin
        xls.Cells(i + 2, 5) := Query2.FieldByName('KHDDBH1').AsString;
        xls.Cells(i + 3, 5) := Query2.FieldByName('PO').AsString;
      end;
      xls.Cells(i + 4, 5) := Query2.FieldByName('YSSM').AsString;
      xls.Cells(i + 5, 5) := Query2.FieldByName('ARTICLE').AsString;
      xls.Range[xls.Cells[i + 2, 7],xls.Cells[i + 2, 7]].NumberFormatLocal:='@';
      xls.Cells(i + 2, 7) := Query2.FieldByName('SIZE_RUN').AsString;
      xls.Cells(i + 2, 8) := Query2.FieldByName('PAIRS').AsString;
      xls.Cells(i + 2, 9) := Query2.FieldByName('UNIT_PRICE').AsString;
      xls.Cells(i + 2, 11) := Query2.FieldByName('AMOUNT').AsString;
      tmp := IntToStr(i + 2);
      xls.Range['K' + tmp + ':L' + tmp].Merge;
      xls.Range['K' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
      tmp := IntToStr(i + 5);
      tmp := 'A' + tmp + ':M' + tmp;
      xls.Range[tmp].Borders[4].Weight := 3;
      xls.Range[tmp].Borders[4].LineStyle := 1;
      Query2.Next;
    end;
  //­pºâ Total
  i := i + 6;
  tmp := IntToStr(i);
  xls.Range['K' + tmp + ':L' + tmp].Merge;
  xls.Range['K' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  tmp := IntToStr(i + 1);
  xls.Range['K' + tmp + ':L' + tmp].Merge;
  xls.Range['K' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  xls.Range['A' + tmp + ':M' + tmp].Font.Size := 14;

  xls.Cells(i, 8) := '(Pairs)';
  xls.Cells(i, 11) := '(Amount USD)';
  xls.Cells(i + 1, 2) := 'Total: ';
  xls.Cells(i + 1, 8) := Query1.FieldByName('TOTAL_PAIRS').AsString;
  xls.Cells(i + 1, 11) := Query1.FieldByName('TOTAL_AMOUNT').AsString;
  tmp := IntToStr(i + 1);
  tmp := 'A' + tmp + ':M' + tmp;
  xls.Range[tmp].Borders[4].Weight := 3;
  xls.Range[tmp].Borders[4].LineStyle := 1;
  //Åã¥Ü¤U¤è¸ê°T
  i := i + 2;
  xls.Cells(i, 1) := 'Say Total U.S. Dollars:';
  xls.Cells(i + 1, 1) := 'Ten thousand and forty one dollars.';
  //
  tmp := IntToStr(i);
  xls.Range['A' + tmp + ':C' + tmp].Merge;
  tmp := IntToStr(i + 1);
  xls.Range['A' + tmp + ':D' + tmp].Merge;
  //
  //ExcelFoot(xls, i); //³øªí¦@¥Î¥k¤Uµù¸}    INVOICE ³øªí§¹¦¨
  if format='TX' then
    ExcelFootTX(xls, i)
  else
    ExcelFoot(xls, i);
  //--------------------------·Ç³Æ¾É¤J²Ä¤G­Ó³øªí Packing List ----------------------------------------
  ExcelHeard(xls, 2, 'Packing List', format);
  //---
  i := 8;


  Query2.First;
  while not Query2.Eof do
    begin
      xls.Cells(i, 1) := 'No : ';
      xls.Cells(i, 6) := 'RY : ';
      xls.Cells(i, 10) := 'Color:';

      xls.Cells(i + 1, 1) := 'Style Name : ';
      xls.Cells(i + 1, 4) := 'Inner Box code';// add 20180929
      xls.Cells(i + 1, 5) := 'Outer carton code';// add 20180929
      xls.Cells(i + 1, 7) := 'PO#';
      xls.Cells(i + 1, 11) :=MasterPO_Title;
      xls.Cells(i + 1, 16) := 'Aritcle#';

      xls.Cells(i + 2, 1) := 'Carton';
      xls.Cells(i + 2, 2) := 'Size';
      xls.Cells(i + 2, 3) := 'Pairs';
      xls.Cells(i + 2, 6) := 'No. of';
      xls.Cells(i + 2, 8) := 'Total';
      xls.Cells(i + 2, 9) := 'N.W';
      xls.Cells(i + 2, 10) := 'TN.W';//add
      xls.Cells(i + 2, 11) := 'RGW';
      xls.Cells(i + 2, 12) := 'TRGW';//add
      xls.Cells(i + 2, 13) := 'GW';
      xls.Cells(i + 2, 14) := 'TGW';//add
      xls.Cells(i + 2, 16) := 'CBM';
      if (format='TX') and (rbtTX.Checked) then
        xls.Cells(i + 2, 18) := 'UPC';

      xls.Cells(i + 3, 1) := 'Number';
      xls.Cells(i + 3, 3) := '/CTN';
      xls.Cells(i + 3, 6) := 'Cartons';
      xls.Cells(i + 3, 8) := 'Pairs';
      xls.Cells(i + 3, 9) := 'KGS';
      xls.Cells(i + 3, 10) := 'KGS';
      xls.Cells(i + 3, 11) := 'KGS';
      xls.Cells(i + 3, 12) := 'KGS';
      xls.Cells(i + 3, 13) := 'KGS';
      xls.Cells(i + 3, 14) := 'KGS';
      xls.Cells(i + 3, 15) := 'L';
      xls.Cells(i + 3, 16) := 'W';
      xls.Cells(i + 3, 17) := 'H';

      //---
      tmp := IntToStr(i);
      xls.Range['G' + tmp + ':H' + tmp].Merge;
      tmp := IntToStr(i + 1);
      xls.Range['A' + tmp + ':B' + tmp].Merge;
      xls.Range['H' + tmp + ':I' + tmp].Merge;
      xls.Range['J' + tmp + ':K' + tmp].Merge;
      xls.Range['L' + tmp + ':M' + tmp].Merge;
      tmp := IntToStr(i + 2);
      xls.Range['F' + tmp + ':G' + tmp].Merge;
      xls.Range['F' + tmp, 'G' + tmp].HorizontalAlignment := $FFFFEFF4;
      tmp := IntToStr(i + 3);
      xls.Range['F' + tmp + ':G' + tmp].Merge;
      xls.Range['F' + tmp, 'G' + tmp].HorizontalAlignment := $FFFFEFF4;
      if (format='TX') and (rbtTX.Checked) then
      begin
        xls.Range['A' + tmp + ':R' + tmp].Borders[4].Weight := 3;
        xls.Range['A' + tmp + ':R' + tmp].Borders[4].LineStyle := 1;
      end else
      begin
        xls.Range['A' + tmp + ':Q' + tmp].Borders[4].Weight := 3;
        xls.Range['A' + tmp + ':Q' + tmp].Borders[4].LineStyle := 1; //1:¹ê½u, 2:µê½u
      end;
      //---
      xls.Cells(i, 2) := Query2.FieldByName('PACK_NO').AsString;
      xls.Cells(i, 7) := Query2.FieldByName('RYNO').AsString;
      xls.Range[xls.Cells[i ,11],xls.Cells[i, 15]].merge;
      xls.Cells(i, 11) := Query2.FieldByName('YSSM').AsString;
      xls.Cells(i + 1, 3) := Query2.FieldByName('STYLE_NAME').AsString;
      //
      xls.Range[xls.Cells[i + 1, 8],xls.Cells[i + 1, 17]].NumberFormatLocal:='@';
      //
      xls.Cells[i + 1, 8].HorizontalAlignment := -4131;   //¤ô¥­¹ï»ô -4131 -4108 -4152
      xls.Cells[i + 1, 12].HorizontalAlignment := -4131;  //««ª½¹ï»ô -4160 -4108 -4107
      //¤u¼t«~µP«È¤H¤£¤@¼Ë

      if format='TX' then
      begin
        xls.Cells(i + 1, 8) := Query2.FieldByName('PO').AsString;
        xls.Cells(i + 1, 12) := Query2.FieldByName('CUSTORDNO').AsString;
      end else if format='TB' then
      begin
        xls.Cells(i + 1, 8) := Query2.FieldByName('KHDDBH1').AsString;
        xls.Cells(i + 1, 12) := Query2.FieldByName('PO').AsString;
      end;
      xls.Cells(i + 1, 17) := Query2.FieldByName('Article').AsString;
      //---
      i := i + 3;
      if query1.FieldByName('CUSTID').AsString = '600000' then
        siz := 'Siz_US'
      else
        siz := 'Siz';

      with Query3 do
        begin
          First;
          while not Eof do
            begin
              i := i + 1;
              tmp := IntToStr(i);
              if (format='TX') and (rbtTX.Checked) then
              begin
                xls.Range['A' + tmp + ':A' + tmp].NumberFormatLocal := '@';
                xls.Range['R' + tmp + ':R' + tmp].NumberFormatLocal := '@';
              end else
                xls.Range['A' + tmp + ':A' + tmp].NumberFormatLocal := '@'; //§ï¤å¦r®æ¦¡¡G¤å¦r
              //---
              xls.Cells(i, 1) := FieldByName('CTQ').AsString + '-' + FieldByName('CTZ').AsString;
              xls.Cells(i, 2) := FieldByName(siz).AsString;
              xls.Cells(i, 3) := FieldByName('QTY').AsString;

              // innercode & cartoncode    20180929
              xls.Cells(i, 4) := FieldByName('InboxCode').AsString;
              xls.Cells(i, 5) := FieldByName('CtnboxCode').AsString;
              //
              xls.Cells(i, 6) := FieldByName('CTS').AsString;
              xls.Cells(i, 8) := FieldByName('PAIRS').AsString;
              xls.Cells(i, 9) := FieldByName('NW').AsString;
              xls.Cells(i, 10) := FieldByName('TNW').AsString;
              xls.Cells(i, 11) := FieldByName('RGW').AsString;
              xls.Cells(i, 12) := FieldByName('TRGW').AsString;
              xls.Cells(i, 13) := FieldByName('GW').AsString;
              xls.Cells(i, 14) := FieldByName('TGW').AsString;
              xls.Cells(i, 15) := FieldByName('L').AsString;
              xls.Cells(i, 16) := FieldByName('W').AsString;
              xls.Cells(i, 17) := FieldByName('H').AsString;
              if (format='TX') and (rbtTX.Checked) then
                xls.Cells(i, 18) := FieldByName('InboxBar').AsString;
              Next;
            end;
          tmp := IntToStr(i);
          //xls.Range['D' + tmp + ':E' + tmp].Merge;
          if (format='TX') and (rbtTX.Checked) then
          begin
            xls.Range['A' + tmp + ':R' + tmp].Borders[4].Weight := 3;
            xls.Range['A' + tmp + ':R' + tmp].Borders[4].LineStyle := 1;
          end else
          begin
            xls.Range['A' + tmp + ':Q' + tmp].Borders[4].Weight := 3;
            xls.Range['A' + tmp + ':Q' + tmp].Borders[4].LineStyle := 1;
          end;
        end;
      //-----------¤p­p
      i := i + 1;
      xls.Cells(i, 2) := 'SubTotal : ';
      xls.Cells(i, 15) := 'SubTotal CBM: ';
      tmp := IntToStr(i);
      xls.Range['B' + tmp + ':C' + tmp].Merge;
      xls.Range['O' + tmp + ':P' + tmp].Merge;
      if (format='TX') and (rbtTX.Checked) then
      begin
        xls.Range['A' + tmp + ':R' + tmp].Borders[4].Weight := 3;
        xls.Range['A' + tmp + ':R' + tmp].Borders[4].LineStyle := 1;
        xls.Range['A' + '7' + ':R' + '7'].Borders[4].Weight := 3;
        xls.Range['A' + '7' + ':R' + '7'].Borders[4].LineStyle := 1;
      end else
      begin
        xls.Range['A' + tmp + ':Q' + tmp].Borders[4].Weight := 3;
        xls.Range['A' + tmp + ':Q' + tmp].Borders[4].LineStyle := 1;
        xls.Range['A' + '7' + ':Q' + '7'].Borders[4].Weight := 3;
        xls.Range['A' + '7' + ':Q' + '7'].Borders[4].LineStyle := 1;
      end;
      xls.Cells(i, 6) := qry_PD.FieldByName('CTS').AsString;
      xls.Cells(i, 8) := qry_PD.FieldByName('PAIRS').AsString;
      xls.Cells(i, 10) := qry_PD.FieldByName('NW').AsString;
      xls.Cells(i, 12) := qry_PD.FieldByName('totalTRGW').AsString;
      xls.Cells(i, 14) := qry_PD.FieldByName('GW').AsString;
      xls.Cells(i, 17) := qry_PD.FieldByName('CBM').AsString;

      i := i + 2;
      //-------
      Query2.Next;

    end;

    // ADD TOTAL ALL
    xls.Cells(i, 2) := 'Total All : ';
    xls.Cells(i, 6) := qry_Total.FieldByName('T_CTS').AsString;
    xls.Cells(i, 8) := qry_Total.FieldByName('T_Pairs').AsString;
    xls.Cells(i, 10) := qry_Total.FieldByName('T_NW').AsString;
    xls.Cells(i, 12) := qry_Total.FieldByName('T_TRGW').AsString;
    xls.Cells(i, 14) := qry_Total.FieldByName('T_GW').AsString;
    xls.Cells(i, 17) := qry_Total.FieldByName('T_CBM').AsString;

  //Åã¥Ü¤U¤è¸ê°T
  xls.Cells(i + 2, 1) := 'CUST O/N : ';
  xls.Cells(i + 3, 1) := 'PO NO : ';
  xls.Cells(i + 4, 1) := 'ARTICLE NO : ';
  xls.Cells(i + 5, 1) := 'SIZE : ';
  xls.Cells(i + 6, 1) := 'QUANTITY : ';
  xls.Cells(i + 7, 1) := 'MADE IN VIETNAM';
  tmp := IntToStr(i + 2);
  xls.Range['A' + tmp + ':B' + tmp].Merge;
  tmp := IntToStr(i + 3);
  xls.Range['A' + tmp + ':B' + tmp].Merge;
  tmp := IntToStr(i + 4);
  xls.Range['A' + tmp + ':B' + tmp].Merge;
  tmp := IntToStr(i + 5);
  xls.Range['A' + tmp + ':B' + tmp].Merge;
  tmp := IntToStr(i + 6);
  xls.Range['A' + tmp + ':B' + tmp].Merge;

  tmp := IntToStr(i + 7);
  tmp2 := IntToStr(i + 2);
  xls.Range['A' + tmp + ':D' + tmp].Merge;
  xls.Range['A' + tmp, 'D' + tmp].HorizontalAlignment := $FFFFEFF4;

  xls.Range['A' + tmp2 + ':A' + tmp].Borders[1].Weight := 2;
  xls.Range['D' + tmp2 + ':D' + tmp].Borders[2].Weight := 2;
  xls.Range['A' + tmp2 + ':D' + tmp2].Borders[3].Weight := 2;
  xls.Range['A' + tmp + ':D' + tmp].Borders[4].Weight := 2;

  xls.Range['A' + tmp2 + ':A' + tmp].Borders[1].LineStyle := 1;
  xls.Range['D' + tmp2 + ':D' + tmp].Borders[2].LineStyle := 1;
  xls.Range['A' + tmp2 + ':D' + tmp2].Borders[3].LineStyle := 1;
  xls.Range['A' + tmp + ':D' + tmp].Borders[4].LineStyle := 1;
  //---
  if format='TX' then
    ExcelFootTX(xls, i)
  else
    ExcelFoot(xls, i); //³øªí¦@¥Î¥k¤Uµù¸}
  //--- Packing List ³øªí§¹¦¨
  xls.Visible := True; //§âExcel ©I¥s¥X¨Ó
end;
//
procedure TInvoicePL.btnExcelClick(Sender: TObject);
begin
  btnExportExcel('Cust Order No : ','TX');
end;

procedure TInvoicePL.ExcelHeard(var xls: olevariant; index: Integer; SheetName: string; Format: string);
begin //¦@¥Î³øªí©ïÀY
  xls.WorkSheets[index].Activate;
  xls.WorkSheets[index].Name := SheetName;
  //---
  if (Format = 'TX') then
  begin
    xls.Cells(1, 1) := ComFullName + Chr(10) + 'HOA PHU INDUSTRIAL ZONE, THANH HUNG HAMLET, HOA PHU VILLAGE' + Chr(10) + 'LONG HO DISTRICT, VINH LONG PROVINCE, VIET NAM';
    xls.Rows[1].RowHeight := 60;
  end
  else begin
    xls.Cells(1, 1) := ComFullName;
  end;
  xls.Cells(2, 1) := SheetName;
  xls.Cells(3, 1) := 'INV NO:';
  xls.Cells(3, 13) := 'Date:';
  xls.Cells(4, 13) := '(YYYY/MM/DD)';
  xls.Cells(5, 1) := 'For account and risk of messers: ';
  xls.Cells(6, 2) := 'Shipped by: ';
  xls.Cells(7, 2) := 'From: ';
  xls.Cells(7, 11) := 'To: ';
  if format='TX' then
  begin
    xls.Cells(3, 19) := 'So TK:';
    xls.Cells(3, 20) := Query1.FieldByName('Declaretion').AsString;         //20220225 show Declaretion
  end;
  //¦r§Î
  xls.Range['A:T'].Font.Name := 'Arial Unicode MS';
  xls.Range['A:R'].Font.Size := 10;
  xls.Range['A1:Q1'].Font.Size := 16;
  xls.Range['A2:T3'].Font.Size := 14;
  xls.Range['K4:L4'].Font.Size := 8;
  xls.Range['A5:Q7'].Font.Size := 12;
  //¸óÄæ¸m¤¤
  xls.Range['A1:R1'].Merge;
  xls.Range['A1', 'R1'].HorizontalAlignment := $FFFFEFF4;
  //xls.Range['A1','M1'].VerticalAlignment := $FFFFEFF4; //(««ª½¸m¤¤)
  xls.Range['A2:R2'].Merge;
  xls.Range['A2', 'R2'].HorizontalAlignment := $FFFFEFF4;
  //¸óÄæ
  xls.Range['A3:B3'].Merge;
  xls.Range['C3:E3'].Merge;
  xls.Range['N3:O3'].Merge;
  xls.Range['M4:N4'].Merge;
  xls.Range['B5:E5'].Merge;
  xls.Range['F5:J5'].Merge;
  xls.Range['B6:C6'].Merge;
  xls.Range['D6:I6'].Merge;
  xls.Range['C7:H7'].Merge;
  xls.Range['L7:O7'].Merge;
  //Ãä®Ø Borders  1-¥ª 2-¥k 3-³» 4-©³ 5-±×( \ ) 6-±×( / )
  xls.Cells(3, 3) := Query1.FieldByName('INV_NO').AsString;
  xls.Cells(3, 14) := Query1.FieldByName('INV_DATE').AsString;
  xls.Cells(5, 6) := Query1.FieldByName('RISK').AsString;
  xls.Cells(6, 4) := Query1.FieldByName('SHIP_BY').AsString;
  xls.Cells(7, 3) := Query1.FieldByName('FROM_WHERE').AsString;
  xls.Cells(7, 12) := Query1.FieldByName('TO_WHERE').AsString;
end;

procedure TInvoicePL.ExcelHeardTT(var xls: olevariant; index: Integer; SheetName: string);
var NDate:Tdate;
begin //¦@¥Î³øªí©ïÀY
  xls.WorkSheets[index].Activate;
  xls.WorkSheets[index].Name := SheetName;
  //---
  xls.Cells(1, 1) := ComFullName;
  xls.Range['A1'].Font.Bold := True;
  xls.Cells(2, 1) := SheetName;
  xls.Cells(3, 1) := 'INV NO:';
  xls.Range['A3'].Font.Bold := True;

  xls.Cells(3, 9) := 'Date:';
  xls.Range['I3'].Font.Bold := True;

  xls.Cells(5, 1) := 'For account and risk of messers: ';
  xls.Cells(6, 1) := 'Shipped by: ';
  xls.Cells(7, 1) := 'From: ';
  xls.Cells(7, 9) := 'To: ';
  xls.Range['I7'].Font.Bold := True;

  //¦r§Î
  xls.Range['A:N'].Font.Name := 'Arial Unicode MS';
  xls.Range['A:N'].Font.Size := 10;
  xls.Range['A1:Q1'].Font.Size := 16;
  xls.Range['A2:Q3'].Font.Size := 14;
  xls.Range['K4:L4'].Font.Size := 10;
  xls.Range['A5:Q7'].Font.Size := 12;
  //¸óÄæ¸m¤¤
  xls.Range['A1:L1'].Merge;
  xls.Range['A1', 'L1'].HorizontalAlignment := $FFFFEFF4;
  //xls.Range['A1','M1'].VerticalAlignment := $FFFFEFF4; //(««ª½¸m¤¤)
  xls.Range['A2:L2'].Merge;
  xls.Range['A2', 'L2'].HorizontalAlignment := $FFFFEFF4;
  //¸óÄæ
  xls.Range['A5:C5'].Merge;
  xls.Range['B3:E3'].Merge;
 // xls.Range['N3:O3'].Merge;
 // xls.Range['M4:N4'].Merge;
  xls.Range['D5:L5'].Merge;
  xls.Range['K3:L3'].Merge;
  xls.Range['B6:G6'].Merge;
  xls.Range['K7:L7'].Merge;
  xls.Range['B7:H7'].Merge;
  //xls.Range['L7:O7'].Merge;
  //Ãä®Ø Borders  1-¥ª 2-¥k 3-³» 4-©³ 5-±×( \ ) 6-±×( / )
  xls.Cells(3, 2) := Query1.FieldByName('INV_NO').AsString;
  xls.Range['B3'].Font.Bold := True;
  //xls.Cells(3, 12) :=Query1.FieldByName('INV_DATE').AsString;
  xls.Cells(3,11):=formatdatetime('YYYY/MM/DD',Query1.FieldByName('INV_DATE').Value);
  xls.Range['K3'].Font.Bold := True;
  xls.Cells[3,11].NumberFormatLocal:='[$-409]d-mmm-yy;@';
  xls.Cells(5, 4) := Query1.FieldByName('RISK').AsString;
  xls.Cells(6, 2) := Query1.FieldByName('SHIP_BY').AsString;
  xls.Cells(7, 2) := Query1.FieldByName('FROM_WHERE').AsString;
  xls.Cells(7, 11) := Query1.FieldByName('TO_WHERE').AsString;
  xls.Range['K7'].Font.Bold := True;

  xls.Range['A3:L3'].Font.Color := $FF0000;
  xls.Range['I7:L7'].Font.Color := $FF0000;
end;

procedure TInvoicePL.ExcelHeardTTInvoice(var xls: olevariant; index: Integer; SheetName: string);
var NDate:Tdate;
begin //¦@¥Î³øªí©ïÀY
  xls.WorkSheets[index].Activate;
  xls.WorkSheets[index].Name := SheetName;
  //---
  xls.Cells(1, 1) := ComFullName;
  xls.Range['A1'].Font.Bold := True;
  xls.Cells(2, 1) := 'Residential area 1,Thap Muoi Commune, Dong Thap Province, Vietnam';
  xls.Cells(3, 1) := SheetName;
  xls.Range['A3'].Font.Bold := True;
  xls.Cells(4, 1) := 'INV NO:';
  xls.Range['A4'].Font.Bold := True;
  xls.Cells(4, 9) := 'Date:';
  xls.Range['I4'].Font.Bold := True;
  xls.Cells(6, 2) := 'For account and risk of messers: ';
  xls.Cells(7, 5) := '5 F, No.13, Ln.370, Sec.4, YaTan Rd., Daya Dist., Taichung City, Taiwan';
  xls.Cells(8, 2) := 'Shipped by: ';
  xls.Cells(9, 2) := 'From: ';
  xls.Range['B9'].Font.Bold := True;

  xls.Cells(9, 9) := 'To: ';
  xls.Range['I9'].Font.Bold := True;

  //¦r§Î
  xls.Range['A:N'].Font.Name := 'Arial Unicode MS';
  xls.Range['A:N'].Font.Size := 10;
  xls.Range['A1:Q1'].Font.Size := 16;
  xls.Range['A2:Q4'].Font.Size := 14;
  xls.Range['K5:L5'].Font.Size := 10;
  xls.Range['A6:Q9'].Font.Size := 12;
  xls.Range['A2:Q2'].Font.Size := 12;
  //¸óÄæ¸m¤¤
  xls.Range['A1:L1'].Merge;
  xls.Range['A4:B4'].Merge;
  xls.Range['A1', 'L1'].HorizontalAlignment := $FFFFEFF4;
  //xls.Range['A1','M1'].VerticalAlignment := $FFFFEFF4; //(««ª½¸m¤¤)
  xls.Range['A2:L2'].Merge;
  xls.Range['A2', 'L2'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['A3:L3'].Merge;
  xls.Range['A3', 'L3'].HorizontalAlignment := $FFFFEFF4;
  //¸óÄæ
  xls.Range['B6:D6'].Merge;
  xls.Range['C4:E4'].Merge;
  //xls.Range['N4:O4'].Merge;
  //xls.Range['M5:N5'].Merge;
  xls.Range['E6:L6'].Merge;
  xls.Range['J4:K4'].Merge;
  xls.Range['D8:L8'].Merge;
  xls.Range['J9:K9'].Merge;
  xls.Range['C9:H9'].Merge;
  xls.Range['E7:L7'].Merge;

  //Ãä®Ø Borders  1-¥ª 2-¥k 3-³» 4-©³ 5-±×( \ ) 6-±×( / )
  xls.Cells(4, 3) := Query1.FieldByName('INV_NO').AsString;
  xls.Range['C4'].Font.Bold := True;

  //xls.Cells(3, 12) :=Query1.FieldByName('INV_DATE').AsString;
  xls.Cells(4,10):=formatdatetime('YYYY/MM/DD',Query1.FieldByName('INV_DATE').Value);
  xls.Cells[4,10].NumberFormatLocal:='[$-409]d-mmm-yy;@';
  xls.Range['J4'].Font.Bold := True;

  xls.Cells(6, 5) := Query1.FieldByName('RISK').AsString;
  xls.Cells(8, 4) := Query1.FieldByName('SHIP_BY').AsString;
  xls.Cells(9, 3) := Query1.FieldByName('FROM_WHERE').AsString;
  xls.Range['C9'].Font.Bold := True;

  xls.Cells(9, 10) := Query1.FieldByName('TO_WHERE').AsString;
  xls.Range['J9'].Font.Bold := True;

  xls.Range['A4:L4'].Font.Color := $FF0000;
  xls.Range['I9:L9'].Font.Color := $FF0000;
  xls.Range['C9:E9'].Font.Color := $FF0000;
  //xls.Range['I9:L9'].Font.Color := $FF0000;

  xls.Cells.Font.Name := 'Times New Roman';
end;

procedure TInvoicePL.ExcelFoot(var xls: olevariant; i: integer);
var
  qrLevel, qrName, tmp: string;
begin //¦@¥Î³øªíµù¸}
  qrLevel := cboSign.Text;
  if cboSign.Text = 'Vice General Director' then
    qrName := Vice_General_Director;
  if cboSign.Text = 'Chief Accountant' then
    qrName := 'Huynh Thi Thu Ha';
  //---
  xls.Cells(i + 2, 6) := ComFullName;
  xls.Cells(i + 3, 6) := qrLevel;
  xls.Cells(i + 4, 6) := qrName;
  //---
  tmp := IntToStr(i + 2);
  xls.Range['F' + tmp + ':L' + tmp].Merge;
  xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  xls.Range['F' + tmp + ':L' + tmp].Font.Size := 16;
  tmp := IntToStr(i + 3);
  xls.Range['F' + tmp + ':L' + tmp].Merge;
  xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  tmp := IntToStr(i + 4);
  xls.Range['F' + tmp + ':L' + tmp].Merge;
  xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  xls.Range['F' + tmp + ':L' + tmp].Font.Size := 12;
  //³Ì«á¤~°õ¦æ¦Û°ÊÄæ¼e
  xls.Range['A:M'].Columns.Autofit;
end;

procedure TInvoicePL.ExcelFootTX(var xls: olevariant; i: integer);
var
  qrLevel, qrName, tmp: string;
begin //¦@¥Î³øªíµù¸}
  qrLevel := 'KT. TONG GIAM DOC';
  qrName := 'TONG GIAM DOC';
  //---
  xls.Cells(i + 2, 6) := ComFullName;
  xls.Cells(i + 3, 6) := qrLevel;
  xls.Cells(i + 4, 6) := qrName;
  xls.Cells(i + 10, 6) := Vice_General_Director;
  //---
  tmp := IntToStr(i + 2);
  xls.Range['F' + tmp + ':L' + tmp].Merge;
  xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  xls.Range['F' + tmp + ':L' + tmp].Font.Size := 16;
  tmp := IntToStr(i + 3);
  xls.Range['F' + tmp + ':L' + tmp].Merge;
  xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  tmp := IntToStr(i + 4);
  xls.Range['F' + tmp + ':L' + tmp].Merge;
  xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  xls.Range['F' + tmp + ':L' + tmp].Font.Size := 12;
  tmp := IntToStr(i + 10);
  xls.Range['F' + tmp + ':L' + tmp].Merge;
  xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  xls.Range['F' + tmp + ':L' + tmp].Font.Size := 12;
  //³Ì«á¤~°õ¦æ¦Û°ÊÄæ¼e
  xls.Range['A:M'].Columns.Autofit;
end;



procedure TInvoicePL.ExcelFootTT(var xls: olevariant; i: integer);
var
  qrLevel, qrName, tmp: string;
  Sheet: OleVariant;
  begin //¦@¥Î³øªíµù¸}
    qrLevel := 'KT. TONG GIAM DOC';
    qrName := 'GIAM DOC';
    //---
    xls.Cells(i + 2, 6) := ComFullName;
    //xls.Cells(i + 3, 6) := qrLevel;
    //xls.Cells(i + 4, 6) := qrName;
    //xls.Cells(i + 8, 6) := LoadUnicodeText('footer.txt');
    InsertFooter(xls, i + 3, 6, 'footershipingN12.txt');
    //---
    tmp := IntToStr(i + 2);
    xls.Range['F' + tmp + ':L' + tmp].Merge;
    xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
    xls.Range['F' + tmp + ':L' + tmp].Font.Size := 16;
    tmp := IntToStr(i + 3);
    xls.Range['F' + tmp + ':L' + tmp].Merge;
    xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
    tmp := IntToStr(i + 4);
    xls.Range['F' + tmp + ':L' + tmp].Merge;
    xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
    xls.Range['F' + tmp + ':L' + tmp].Font.Size := 12;
    tmp := IntToStr(i + 8);
    xls.Range['F' + tmp + ':L' + tmp].Merge;
    xls.Range['F' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
    xls.Range['F' + tmp + ':L' + tmp].Font.Size := 12;
    //³Ì«á¤~°õ¦æ¦Û°ÊÄæ¼e
    xls.Range['A:M'].Columns.Autofit;
    // ?? Ki?m tra và gán sheet "INVOICE"
    Sheet := GetWorksheetByName(xls, 'INVOICE');
    if not VarIsEmpty(Sheet) then
      begin
        Sheet.PageSetup.CenterFooter := '&"Arial Unicode MS"&10 Page &P of  &N';
        Sheet.PageSetup.RightFooter := '&"Arial Unicode MS"&10 T-XNK-003B';
        Sheet.PageSetup.PrintTitleRows := '$1:$11';
      end;

    Sheet := GetWorksheetByName(xls, 'Packing List');
    if not VarIsEmpty(Sheet) then
      begin
        Sheet.PageSetup.CenterFooter := '&"Arial Unicode MS"&10 Page &P of  &N';
        Sheet.PageSetup.RightFooter := '&"Arial Unicode MS"&10 T-XNK-002C';
        Sheet.PageSetup.PrintTitleRows := '$1:$7';
      end;
end;

function GetWorksheetByName(wb: OleVariant; const SheetName: string): OleVariant;
var
  i: Integer;
begin
  Result := Unassigned;
  for i := 1 to wb.Worksheets.Count do
  begin
    if wb.Worksheets[i].Name = SheetName then
    begin
      Result := wb.Worksheets[i];
      Exit;
    end;
  end;
end;
procedure DrawOuterBorder(Sheet: OleVariant);
const
  xlEdgeLeft   = 1;
  xlEdgeTop    = 2;
  xlEdgeBottom = 3;
  xlEdgeRight  = 4;
  xlThick      = 4;
  xlContinuous = 1;
var
  rng: OleVariant;
begin
  rng := Sheet.UsedRange;

  // Vi?n ngoài rõ ràng
  rng.Borders[xlEdgeLeft].LineStyle := xlContinuous;
  rng.Borders[xlEdgeTop].LineStyle := xlContinuous;
  rng.Borders[xlEdgeBottom].LineStyle := xlContinuous;
  rng.Borders[xlEdgeRight].LineStyle := xlContinuous;

  rng.Borders[xlEdgeLeft].Weight := xlThick;
  rng.Borders[xlEdgeTop].Weight := xlThick;
  rng.Borders[xlEdgeBottom].Weight := xlThick;
  rng.Borders[xlEdgeRight].Weight := xlThick;

  // Ð?t màu vi?n den d? d? th?y
  rng.Borders[xlEdgeLeft].Color := RGB(0, 0, 0);
  rng.Borders[xlEdgeTop].Color := RGB(0, 0, 0);
  rng.Borders[xlEdgeBottom].Color := RGB(0, 0, 0);
  rng.Borders[xlEdgeRight].Color := RGB(0, 0, 0);
end;

procedure DrawRectangleBorder(Sheet: OleVariant);
var
  rng, shape: OleVariant;
  LeftPos, TopPos, Width, Height: Double;
begin
  rng := Sheet.UsedRange;

  LeftPos := rng.Left;
  TopPos := rng.Top;
  Width := rng.Width;
  Height := rng.Height;

  // V? hình ch? nh?t không có n?n, ch? vi?n
  shape := Sheet.Shapes.AddShape(1, LeftPos, TopPos, Width, Height); // 1 = msoShapeRectangle
  shape.Fill.Visible := False; // Không có n?n
  shape.Line.ForeColor.RGB := RGB(0, 0, 0); // Vi?n den
  shape.Line.Weight := 2; // Ð? dày vi?n
end;

function LoadUnicodeText(const FileName: string): WideString;
var
  FS: TFileStream;
  Buffer: string;
begin
  FS := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    SetLength(Buffer, FS.Size);
    FS.Read(Buffer[1], FS.Size);
    Result := UTF8Decode(Buffer);
  finally
    FS.Free;
  end;
end;
procedure InsertFooter(xls: Variant; StartRow, Col: Integer; const FileName: string);
var
  FS: TFileStream;
  Buffer: AnsiString;
  WS: WideString;
  Line: WideString;
  P: Integer;
  i: Integer;
begin
  // Ð?c file UTF-8
  FS := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    SetLength(Buffer, FS.Size);
    FS.Read(Buffer[1], FS.Size);
  finally
    FS.Free;
  end;

  // Gi?i mã UTF-8 sang WideString
  WS := UTF8Decode(Buffer);

  // Tách dòng th? công
  i := 0;
  while WS <> '' do
  begin
    P := Pos(#13#10, WS); // tìm xu?ng dòng CRLF
    if P = 0 then
    begin
      Line := WS;
      WS := '';
    end
    else
    begin
      Line := Copy(WS, 1, P - 1);
      Delete(WS, 1, P + 1); // xóa c? #13#10
    end;

    xls.Cells[StartRow + i, Col] := Line;
    Inc(i);
  end;
end;


procedure TInvoicePL.btnAnnexClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    INV,INV_NO,INV_Month,INV_Year: string ;
begin
  INV:='';
  INV_NO:='';
  INV_Month:='';
  INV_Year:='';
  with qrytemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select Address From ShipAddress where Memo='''+Query1.fieldbyname('TO_WHERE').AsString+''' ');
    active:=true;
  end;
  with qrytemp2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' SELECT Case when CHARINDEX(''0'', INV_NO) =3 then ''Y-''+SUBSTRING (INV_NO,4,9) else INV_NO  end as INV_NO,');
    sql.Add('        Case when CHARINDEX(''0'', INV_NO) =3 then ''Y-''+SUBSTRING (INV_NO,4,3) else SUBSTRING (INV_NO,1,6)  end as INV, ');
    sql.Add('        left(DATENAME(month, INV_DATE),3) INV_Month, YEAR(INV_DATE) as INV_Year ');
    sql.Add(' From INVOICE_M ');
    sql.Add(' Where INV_NO = '''+Query1.fieldbyname('INV_NO').Value +''' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  INV:= qrytemp2.fieldbyname('INV').AsString;
  INV_NO:= qrytemp2.fieldbyname('INV_NO').AsString;
  INV_Month:= qrytemp2.fieldbyname('INV_Month').AsString;
  INV_Year:= qrytemp2.fieldbyname('INV_Year').AsString;

  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Shipping_SN12_Annex.xls'),Pchar(AppDir+'Additional\Shipping_SN12_Annex.xls'),false);
  if FileExists(AppDir+'Additional\Shipping_SN12_Annex.xls') then
  begin
     if  Query1.active  then
     begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Shipping_SN12_Annex.xls');
        eclApp.Cells(4,7):=Query1.FieldByName('INV_DATE').Value;
        //eclApp.Cells(3,1):=StringReplace(eclApp.Cells[3,1],'[INV]',Copy(Query1.fieldbyname('INV_NO').AsString,1,Pos('/',Query1.fieldbyname('INV_NO').AsString)-1),[rfReplaceAll, rfIgnoreCase]);
        eclApp.Cells(3,1):=StringReplace(eclApp.Cells[3,1],'[INV]',INV_NO,[rfReplaceAll, rfIgnoreCase]);
        eclApp.Cells(3,1):=StringReplace(eclApp.Cells[3,1],'@',Query1.fieldbyname('Factory').Value+'-'+ Query1.fieldbyname('Year').Value,[rfReplaceAll, rfIgnoreCase]);
        eclApp.Cells(30,3) :=INV_NO;
        eclApp.Cells(31,3) :=Query1.fieldbyname('TOTAL_PAIRS').Value;
        eclApp.Cells(31,4) :='pairs, which will be exported to '+Query1.fieldbyname('TO_WHERE').Value;
        eclApp.Cells(32,3) :=Query1.fieldbyname('TOTAL_AMOUNT').Value;
        eclApp.Cells(33,3) :=Query1.fieldbyname('TOTAL_AMOUNT_WORD').Value;
        eclApp.Cells(35,2) :='- F.O.B HO CHI MINH CITY';
        eclApp.Cells(36,3) :=INV_Month+'-'+ INV_Year;
        eclApp.Cells(37,4) :=qrytemp.FieldByName('Address').AsString;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
     end;
  end;
end;

procedure TInvoicePL.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  ReadIni();
end;

procedure TInvoicePL.btnExcel_TBClick(Sender: TObject);
begin
  btnExportExcel('Master PO : ','TB');
end;

procedure TInvoicePL.rbtTXClick(Sender: TObject);
begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQl.Add('SELECT round(ywcp.rgw,2) as rgw,round(ywcp.rgw,2)*PACKING.CTS TRGW,');
      SQl.Add('packing.INV_NO,packing.RYNO,packing.SIZ,packing.CBM,packing.CTQ,packing.CTS,packing.CTZ,packing.GW,packing.H,packing.L,packing.NW,');
      SQl.Add('packing.Pairs,convert(varchar,packing.Qty) as Qty,Siz_US,packing.UserDate,packing.UserID,packing.W,packing.XH,packing.TNW,packing.TGW,');
      SQl.Add('YWBZPO.CtnboxCode,YWBZPOS.InboxCode');
      SQL.Add(', max(case when DDZL.DDGB=YWCPLH.GBBH then YWCPLH.InBoxBar else  case when YWCPLH.GBBH=''NORMAL'' then YWCPLH.InBoxBar end end ) as InboxBar');
      SQL.Add('FROM PACKING');
      SQl.Add('left join (select ddbh,xh,Qty,avg(rgw) as rgw from YWCP where ddbh=:RYNO');
      SQl.Add('           group by ddbh,xh,Qty)YWCP on YWCP.ddbh=PACKING.RYNO and PACKING.XH=YWCP.XH');
      SQl.Add('left join YWBZPOS on YWBZPOS.DDBH=PACKING.RYNO and YWBZPOS.XH=PACKING.XH and YWBZPOS.DDCC=PACKING.SIZ');
      SQl.Add('left join YWBZPO on YWBZPO.DDBH=PACKING.RYNO and PACKING.XH=PACKING.XH and YWBZPO.XH=YWBZPOS.XH');
      SQL.Add('left join DDZL on DDZL.DDBH=PACKING.RYNO');
      SQL.Add('left join YWCPLH on DDZL.XieXing=YWCPLH.XieXing and DDZL.SheHao=YWCPLH.SheHao and YWCPLH.XXCC=PACKING.SIZ');
      SQl.Add('WHERE INV_NO=:INV_NO and RYNO=:RYNO');
      SQl.Add('group by ywcp.rgw,ywcp.rgw*PACKING.CTS,packing.inv_no,packing.ryno,packing.siz,packing.cbm');
      SQl.Add(',packing.ctq,packing.cts,packing.ctz,packing.gw,packing.h,packing.l,packing.nw,packing.pairs,');
      SQl.Add('packing.qty,packing.siz_US,packing.userdate,packing.userid,packing.w,packing.xh,packing.tnw,packing.tgw,YWBZPO.CtnboxCode,YWBZPOS.InboxCode,YWCPLH.InboxBar ');
      SQl.Add('order by packing.xh');
      Active:=true;
    end;
end;

procedure TInvoicePL.rbtTBClick(Sender: TObject);
begin
  with query3 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT distinct round(ywcp.rgw,2) as rgw,round(ywcp.rgw,2)*PACKING.CTS TRGW,packing.INV_NO,PACKING.RYNO,');
    SQL.Add('cast(substring((select '' , ''+YPOS1.DDCC from YWBZPOS YPOS1 where YPOS1.DDBH=PACKING.RYNO and YPOS1.XH=PACKING.XH for XML Path ('''')),3,1000) as varchar(1000)) as SIZ,');
    SQL.Add('packing.cbm,packing.ctq,packing.cts,packing.ctz,packing.gw,packing.h,packing.l,packing.nw,packing.pairs,');
    SQL.Add('cast(substring((select '' , ''+convert(varchar(10),YPOS2.QTY) from YWBZPOS YPOS2 where PACKING.RYNO=YPOS2.DDBH and PACKING.XH=YPOS2.XH for XML Path ('''')),3,1000) as varchar(1000)) as Qty,');
    SQL.Add('packing.siz_US,packing.userdate,packing.userid,packing.w,packing.xh,packing.tnw,packing.tgw,YWBZPO.CtnboxCode,YWBZPOS.InboxCode,'''' as InboxBar ');
    SQL.Add('FROM PACKING');
    SQL.Add('left join (select ddbh,xh,Qty,avg(rgw) as rgw from YWCP where ddbh=:RYNO');
    SQL.Add('           group by ddbh,xh,Qty ) YWCP on YWCP.ddbh=PACKING.RYNO and PACKING.XH=YWCP.XH');
    SQL.Add('left join YWBZPOS on YWBZPOS.DDBH=PACKING.RYNO and YWBZPOS.XH=PACKING.XH and YWBZPOS.DDCC=PACKING.SIZ');
    SQL.Add('left join YWBZPO on YWBZPO.DDBH=PACKING.RYNO and PACKING.XH=PACKING.XH and YWBZPO.XH=YWBZPOS.XH');
    SQL.Add('WHERE INV_NO=:INV_NO and RYNO=:RYNO');
    SQL.Add('group by ywcp.rgw,ywcp.rgw*PACKING.CTS,packing.inv_no,packing.ryno,packing.siz,packing.cbm');
    SQL.Add(',packing.ctq,packing.cts,packing.ctz,packing.gw,packing.h,packing.l,packing.nw,packing.pairs,');
    SQL.Add('packing.qty,packing.siz_US,packing.userdate,packing.userid,packing.w,packing.xh,packing.tnw,packing.tgw,YWBZPO.CtnboxCode,YWBZPOS.InboxCode');
    SQL.Add('order by packing.XH ');
    Active:=true;                                                                                                                      
  end;
end;

procedure TInvoicePL.btnExportExcelTT(MasterPO_Title:string;format:string);
var
  i,AR,RY,StartRow,j,b: integer;
  xls: olevariant;
  tmp, tmp2, siz, siz1, PrevCTQ,tmp3,tmp4,rowToClear,tmp5: string;
begin
  xls := CreateOleObject('Excel.Application');
  xls.Workbooks.Add;
  xls.Visible := false; //¥ý¦b­I´º¸Ì­±¶ë¸ê®Æ
  xls.Workbooks[1].WorkSheets.Add;

  //----¶}©l²Ä¤@­Ó³øªí INVOICE ------------------------------------=======================
  //xuat excel phan header
  ExcelHeardTTInvoice(xls, 1, 'INVOICE'); //¨â­Ó³øªíªº©ïÀY³£¤@¼Ë¡A©Ò¥H´N¥Îfunction¨Ó°Ê§@


  //=====================================================================================
  //---¹L¤F©ïÀY´N¬O±q²Ä8¦æ¶}©l
  xls.Cells(10, 1) := 'Pack';
  xls.Cells(10, 2) := 'Description of goods';
  xls.Cells(10, 7) := 'Size';
  xls.Cells(10, 8) := 'Qty';
  xls.Cells(10, 9) := 'Unit Price';
  xls.Cells(10, 11) := 'Amount';
  xls.Cells(11, 1) := 'No';
  if copy(Query2.FieldByName('RYNO').AsString,0,2)='JH' then
    xls.Cells(11, 4) :=  'HOKA ONE ONE FOOTWEAR'
  else if copy(Query2.FieldByName('RYNO').AsString,0,2)='TV' then
    xls.Cells(11, 4) :=  'TEVA FOOTWEAR';
  xls.Cells(11, 8) := 'Pairs';
  xls.Cells(11, 9) := 'USD/PRS';
  xls.Cells(11, 11) := 'USD';
  //¸óÄæ¸m¤¤
  xls.Range['B10:F10'].Merge;
  //xls.Range['B10', 'F10'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['B11:F11'].Merge;
  //xls.Range['B11', 'F11'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['I10:J10'].Merge;
  xls.Range['I10', 'J10'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['K10:L10'].Merge;
  xls.Range['K10', 'L10'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['I11:J11'].Merge;
  xls.Range['I11', 'J11'].HorizontalAlignment := $FFFFEFF4;
  xls.Range['K11:L11'].Merge;
  xls.Range['K11', 'L11'].HorizontalAlignment := $FFFFEFF4;
  //Ãä®Ø Borders  1-¥ª 2-¥k 3-³» 4-©³ 5-±×( \ ) 6-±×( / )
  xls.Range['A9:L9'].Borders[4].Weight := 3;
  xls.Range['A9:L9'].Borders[4].LineStyle := 1; //1:¹ê½u, 2:µê½u
  xls.Range['A11:L11'].Borders[4].Weight := 3;
  xls.Range['A11:L11'].Borders[4].LineStyle := 1; //1:¹ê½u, 2:µê½u
  xls.Range['A10:L11'].Font.Size := 12;
  //xls.Range['A9:A11'].Borders[1].Weight := 3;
  //xls.Range['A9:A11'].Borders[1].LineStyle := 1;
  //--------------- ªì©l³]©w§¹¦¨¡A·Ç³Æ¾É¤J¸ê®Æ
  i := 6;
  Query2.First;
  while not Query2.Eof do
    begin
      i := i+6 ; //6¦C¸ê°T
      xls.Cells(i, 3) := 'RY : ';

      xls.Range['C' + IntToStr(i)].Font.Color := $FF0000;
      xls.Range['C' + IntToStr(i)].Font.Bold := True;
      xls.Range['C' + IntToStr(i)].Font.Size := 14;

      //xls.Range['C9:E9'].Font.Color := $FF0000;
      xls.Cells(i + 1, 3) := 'Style Name : ';
      xls.Cells(i + 2, 3) := 'PO#';
      xls.Cells(i + 3, 3) := MasterPO_Title;
      xls.Cells(i + 4, 3) := 'COLOR :';
      xls.Range['A' + IntToStr(i)].Font.Bold := True;
      xls.Cells(i, 1) := Query2.FieldByName('PACK_NO').AsString;
      xls.Cells(i, 3) := Query2.FieldByName('RYNO').AsString;
      xls.Cells(i + 1, 5) := Query2.FieldByName('STYLE_NAME').AsString;
      xls.Range[xls.Cells[i + 2, 5],xls.Cells[i + 3, 5]].NumberFormatLocal:='@';
      //font 12
      xls.Range[xls.Cells[i + 1, 3], xls.Cells[i + 4, 3]].Font.Size := 12;
      xls.Range[xls.Cells[i, 1], xls.Cells[i + 3, 5]].Font.Size := 12;

      //¤u¼t«~µP«È¤H¤£¤@¼Ë
      xls.Cells(i + 2, 5) := Query2.FieldByName('PO').AsString;
      for AR:=0 to Length(Query2.FieldByName('ARTICLE').AsString) do
      begin
        if copy(Query2.FieldByName('ARTICLE').AsString,AR,1)='-' then
          xls.Cells(i + 3, 5) := copy(Query2.FieldByName('ARTICLE').AsString,0,AR-1);
          xls.Range[xls.Cells[i + 3, 5],xls.Cells[i + 3, 5]].NumberFormatLocal:='@';
      end;
      xls.Cells(i + 4, 5) := Query2.FieldByName('YSSM').AsString;
      xls.Range[xls.Cells[i + 2, 7],xls.Cells[i + 2, 7]].NumberFormatLocal:='@';
      xls.Cells(i + 2, 7) := Query2.FieldByName('SIZE_RUN').AsString;
      xls.Cells[i + 2, 7].Font.Size := 12;
      xls.Cells(i + 2, 8) := Query2.FieldByName('PAIRS').AsString;
      xls.Cells[i + 2, 8].NumberFormat := '#,##0';  //so thap phan ,
      xls.Cells[i + 2, 8].Font.Size := 12;
      xls.Cells(i + 2, 9) := Query2.FieldByName('UNIT_PRICE').AsString;
      xls.Cells[i + 2, 9].Font.Size := 12;
      //xls.Range[xls.Cells[i + 2, 9], xls.Cells[i + 2, 10]].Merge;
      xls.Cells(i + 2, 11) := Query2.FieldByName('AMOUNT').AsString;
      xls.Cells[i + 2, 11].Font.Size := 12;
      xls.Cells[i + 2, 11].NumberFormat := '#,##0.00';  //so thap phan
      tmp := IntToStr(i + 2);
      xls.Range['K' + tmp + ':L' + tmp].Merge;
      xls.Range['K' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
      //xls.Range['I' + tmp + ':J' + tmp].Merge;
      xls.Range['I' + tmp, 'J' + tmp].HorizontalAlignment := $FFFFEFF4;
      tmp := IntToStr(i + 4);
      tmp := 'A' + tmp + ':L' + tmp;
      xls.Range[tmp].Borders[4].Weight := 3;
      xls.Range[tmp].Borders[4].LineStyle := 1;
      i:=i-1;
      Query2.Next;
    end;
  //YS ke khung vien invoice
  i := i + 5;
  tmp := IntToStr(i);
  xls.Range['A10:A' + tmp].Borders[1].Weight := 3;
  xls.Range['A10:A' + tmp].Borders[1].LineStyle := 1;
  xls.Range['L10:L' + tmp].Borders[2].Weight := 3;
  xls.Range['L10:L' + tmp].Borders[2].LineStyle := 1;
    //­pºâ Total
  i := i + 1;
  tmp := IntToStr(i);
  xls.Range['K' + tmp + ':L' + tmp].Merge;
  xls.Range['K' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  tmp := IntToStr(i + 1);
  xls.Range['K' + tmp + ':L' + tmp].Merge;
  xls.Range['K' + tmp, 'L' + tmp].HorizontalAlignment := $FFFFEFF4;
  xls.Range['A' + tmp + ':L' + tmp].Font.Size := 14;
  xls.Cells(i, 8) := '(Pairs)';
  xls.Cells[i, 8].Font.Size := 12;
  xls.Cells(i, 11) := '(Amount USD)';
  xls.Cells[i, 11].Font.Size := 12;
  xls.Cells(i + 1, 2) := 'Total: ';
  xls.Cells(i + 1, 8) := Query1.FieldByName('TOTAL_PAIRS').AsString;
  xls.Cells[i + 1, 8].NumberFormat := '#,##0';
  xls.Cells(i + 1, 11) := Query1.FieldByName('TOTAL_AMOUNT').AsString;
  xls.Cells[i + 1, 11].NumberFormat := '#,##0.00';
  tmp := IntToStr(i + 1);
  //ShowMessage('Range: A10:A' + tmp);
  tmp := 'A' + tmp + ':L' + tmp;
  xls.Range[tmp].Borders[4].Weight := 3;
  xls.Range[tmp].Borders[4].LineStyle := 1;
  //Åã¥Ü¤U¤è¸ê°T
  i := i + 2;
  //xls.Cells(i, 1) := 'Say Total U.S. Dollars:';
  //xls.Cells(i + 1, 1) := 'Ten thousand and forty one dollars.';
  tmp := IntToStr(i);
  xls.Range['A' + tmp + ':C' + tmp].Merge;
  tmp := IntToStr(i + 1);
  xls.Range['A' + tmp + ':D' + tmp].Merge;

  ExcelFootTT(xls, i); //³øªí¦@¥Î¥k¤Uµù¸}    INVOICE ³øªí§¹¦¨
  //--------------------------·Ç³Æ¾É¤J²Ä¤G­Ó³øªí Packing List ----------------------------------------
  ExcelHeardTT(xls, 2, 'Packing List');
  //---
  i := 8;

  Query2.First;
  while not Query2.Eof do
    begin
      if format ='TT' then
      begin
        xls.Cells(i, 1) := 'RY : ';
        xls.Range['A' + IntToStr(i)].Font.Size := 14;
        xls.Range['A' + IntToStr(i)].Font.Bold := True;
        xls.Cells(i + 1, 1) := 'Style Name : ';
        xls.Cells[i + 1, 1].Font.Bold := True;

        //xls.Range['B' + IntToStr(i + 1) + ':D' + IntToStr(i + 1)].Merge;
        xls.Cells(i + 2, 1) := 'PO#';
        xls.Cells[i + 2, 1].Font.Bold := True;
        xls.Cells(i + 3, 1) :=MasterPO_Title;
        xls.Cells[i + 3, 1].Font.Bold := True;
        xls.Cells(i + 4, 1) := 'Color:';
        xls.Cells(i + 5, 1) := 'Carton';
        xls.Cells(i + 5, 2) := 'Size';
        xls.Cells(i + 5, 3) := 'Pairs';
        xls.Cells(i + 5, 4) := 'No. of';
        xls.Cells(i + 5, 5) := 'Total';
        xls.Cells(i + 5, 6) := 'N.W';
        xls.Cells(i + 5, 7) := 'TN.W';//add
        xls.Cells(i + 5, 8) := 'GW';
        xls.Cells(i + 5, 9) := 'TGW';//add
        xls.Cells(i + 5, 12) := 'CBM';
        xls.Cells(i + 6, 1) := 'Number';
        xls.Cells(i + 6, 3) := '/CTN';
        xls.Cells(i + 6, 4) := 'Cartons';
        xls.Cells(i + 6, 5) := 'Pairs';
        xls.Cells(i + 6, 6) := 'KGS';
        xls.Cells(i + 6, 7) := 'KGS';
        xls.Cells(i + 6, 8) := 'KGS';
        xls.Cells(i + 6, 9) := 'KGS';
        xls.Cells(i + 6, 10) := 'L';
        xls.Cells(i + 6, 11) := 'W';
        xls.Cells(i + 6, 12) := 'H';

xls.Range['A' + IntToStr(i+4) + ':L' + IntToStr(i+6)].Font.Bold := True;
{xls.Cells[i + 4, 1].Font.Bold := True;
xls.Cells[i + 5, 1].Font.Bold := True;
xls.Cells[i + 5, 2].Font.Bold := True;
xls.Cells[i + 5, 3].Font.Bold := True;
xls.Cells[i + 5, 4].Font.Bold := True;
xls.Cells[i + 5, 5].Font.Bold := True;
xls.Cells[i + 5, 6].Font.Bold := True;
xls.Cells[i + 5, 7].Font.Bold := True;
xls.Cells[i + 5, 8].Font.Bold := True;
xls.Cells[i + 5, 9].Font.Bold := True;
xls.Cells[i + 5, 12].Font.Bold := True;
xls.Cells[i + 6, 1].Font.Bold := True;
xls.Cells[i + 6, 3].Font.Bold := True;
xls.Cells[i + 6, 4].Font.Bold := True;
xls.Cells[i + 6, 5].Font.Bold := True;
xls.Cells[i + 6, 6].Font.Bold := True;
xls.Cells[i + 6, 7].Font.Bold := True;
xls.Cells[i + 6, 8].Font.Bold := True;
xls.Cells[i + 6, 9].Font.Bold := True;
xls.Cells[i + 6, 10].Font.Bold := True;
xls.Cells[i + 6, 11].Font.Bold := True;
xls.Cells[i + 6, 12].Font.Bold := True;}

        xls.Range['A' + IntToStr(i+1) + ':L' + IntToStr(i + 6)].Font.Size := 12; //font 12

        xls.Range['A' + IntToStr(i+5) + ':L' + IntToStr(i + 6)].Interior.Color := $FFF8F0;
        xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Color := $FF0000;
      end;
      //---
      tmp := IntToStr(i);

      xls.Range['G' + tmp + ':H' + tmp].Merge;
      tmp := IntToStr(i + 1);
      tmp := IntToStr(i + 5);
      xls.Range['F' + tmp, 'G' + tmp].HorizontalAlignment := $FFFFEFF4;
      tmp := IntToStr(i + 6);
      tmp4 := IntToStr(i + 7);
      tmp5 :=IntToStr(i + 4);
      xls.Range['F' + tmp, 'G' + tmp].HorizontalAlignment := $FFFFEFF4;
     // xls.Range['A' + tmp + ':L' + tmp].Borders[4].Weight := 1;
      //xls.Range['A' + tmp + ':L' + tmp].Borders[4].LineStyle := 1;//1:¹ê½u, 2:µê½u

       xls.Range['A' + tmp5 + ':L' + tmp5].Borders[4].Weight := 3;
      xls.Range['A' + tmp5 + ':L' + tmp5].Borders[4].LineStyle := 1;

      //---
      xls.Cells(i, 3) := Query2.FieldByName('RYNO').AsString;
      xls.Range['C' + IntToStr(i)].Font.Size := 14;
      xls.Range['C' + IntToStr(i)].Font.Bold := True;
      xls.Cells(i + 1, 3) := Query2.FieldByName('STYLE_NAME').AsString;
      xls.Cells[i + 1, 3].Font.Bold := True;

      xls.Range[xls.Cells[i + 1, 8],xls.Cells[i + 1, 17]].NumberFormatLocal:='@';
      xls.Cells[i + 1, 8].HorizontalAlignment := -4131;   //¤ô¥­¹ï»ô -4131 -4108 -4152
      xls.Cells[i + 1, 12].HorizontalAlignment := -4131;  //««ª½¹ï»ô -4160 -4108 -4107

      //¤u¼t«~µP«È¤H¤£¤@¼Ë
      xls.Cells(i + 2, 3) := Query2.FieldByName('PO').AsString;
      xls.Cells[i + 2, 3].Font.Bold := True;

      xls.Range[xls.Cells[i + 2, 3],xls.Cells[i + 2, 3]].NumberFormatLocal:='@';
      for AR:=0 to Length(Query2.FieldByName('ARTICLE').AsString) do
      begin
        if copy(Query2.FieldByName('ARTICLE').AsString,AR,1)='-' then
          xls.Cells(i + 3, 3) := copy(Query2.FieldByName('ARTICLE').AsString,0,AR-1);
          xls.Cells[i + 3, 3].Font.Bold := True;
          xls.Range[xls.Cells[i + 3, 3],xls.Cells[i + 3, 3]].NumberFormatLocal:='@';
      end;
      xls.Cells(i + 4, 3) := Query2.FieldByName('YSSM').AsString;
      xls.Cells[i + 4, 3].Font.Bold := True;
      //---
      i := i + 6;
      if query1.FieldByName('CUSTID').AsString = '600000' then
        siz := 'Siz_US'
      else
        siz := 'Siz';
      with Query3 do
      begin
      PrevCTQ := '';
      StartRow := 0;
      j := 0;
        First;
        while not Eof do
        begin
          i := i + 1;
          tmp := IntToStr(i);

 /////////////////////////////         // Ghi c?t CTQ n?u là dòng d?u c?a nhóm m?i
    if FieldByName('CTQ').AsString <> PrevCTQ then
    begin
 // GOP CAC O TRUNG NEU CO, DUA THEO CTQ
      if PrevCTQ <> '' then
      begin
        xls.Range['A' + IntToStr(StartRow) + ':A' + IntToStr(i - 1)].Merge;
        xls.Range['D' + IntToStr(StartRow) + ':D' + IntToStr(i - 1)].Merge;
        xls.Range['E' + IntToStr(StartRow) + ':E' + IntToStr(i - 1)].Merge;
        xls.Range['F' + IntToStr(StartRow) + ':F' + IntToStr(i - 1)].Merge;
        xls.Range['G' + IntToStr(StartRow) + ':G' + IntToStr(i - 1)].Merge;
        xls.Range['H' + IntToStr(StartRow) + ':H' + IntToStr(i - 1)].Merge;
        xls.Range['I' + IntToStr(StartRow) + ':I' + IntToStr(i - 1)].Merge;
        xls.Range['J' + IntToStr(StartRow) + ':J' + IntToStr(i - 1)].Merge;
        xls.Range['K' + IntToStr(StartRow) + ':K' + IntToStr(i - 1)].Merge;
        xls.Range['L' + IntToStr(StartRow) + ':L' + IntToStr(i - 1)].Merge;

        xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Size := 12;
      end;
      PrevCTQ := FieldByName('CTQ').AsString;
      StartRow := i;
  /////////////////////DIEN NOI DUNG VAO COT DA GOP YS
      xls.Range['A' + tmp + ':A' + tmp].NumberFormatLocal := '@';
      xls.Cells(i, 1) := PrevCTQ + '-' + FieldByName('CTZ').AsString;
      xls.Cells(i, 4) := FieldByName('CTS').AsString;
      xls.Cells(i, 5) := FieldByName('PAIRS').AsString;
      xls.Cells(i, 6) := FieldByName('NW').AsString;
      xls.Cells(i, 7) := FieldByName('TNW').AsString;
      xls.Cells(i, 8) := FieldByName('GW').AsString;
      xls.Cells(i, 9) := FieldByName('TGW').AsString;
      xls.Cells(i, 10) := FieldByName('L').AsString;
      xls.Cells(i, 11) := FieldByName('W').AsString;
      xls.Cells(i, 12) := FieldByName('H').AsString;

      xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Size := 12;

    end;
/////////////////////////////////////
          if (format='TX') and (rbtTX.Checked) then
          begin
            xls.Range['A' + tmp + ':A' + tmp].NumberFormatLocal := '@';
            xls.Range['R' + tmp + ':R' + tmp].NumberFormatLocal := '@';
          end else
            xls.Range['A' + tmp + ':A' + tmp].NumberFormatLocal := '@'; //§ï¤å¦r®æ¦¡¡G¤å¦r
          //---
          //xls.Cells(i, 1) := FieldByName('CTQ').AsString + '-' + FieldByName('CTZ').AsString;
          xls.Cells(i, 2) := FieldByName('siz').AsString;
          xls.Cells(i, 3) := FieldByName('QTY').AsString;
          xls.Cells[i, 2].Font.Size := 12;
          xls.Cells[i, 3].Font.Size := 12;

         { xls.Cells(i, 4) := FieldByName('CTS').AsString;
          xls.Cells(i, 5) := FieldByName('PAIRS').AsString;
          xls.Cells(i, 6) := FieldByName('NW').AsString;
          xls.Cells(i, 7) := FieldByName('TNW').AsString;
          xls.Cells(i, 8) := FieldByName('GW').AsString;
          xls.Cells(i, 9) := FieldByName('TGW').AsString;
          xls.Cells(i, 10) := FieldByName('L').AsString;
          xls.Cells(i, 11) := FieldByName('W').AsString;
          xls.Cells(i, 12) := FieldByName('H').AsString; }
          Next;
        end;
        ////// // Gop NHOM cot CTQ  YS
  if PrevCTQ <> '' then
    begin
      xls.Range['A' + IntToStr(StartRow) + ':A' + IntToStr(i)].Merge;
      xls.Range['D' + IntToStr(StartRow) + ':D' + IntToStr(i)].Merge;
      xls.Range['E' + IntToStr(StartRow) + ':E' + IntToStr(i)].Merge;
      xls.Range['F' + IntToStr(StartRow) + ':F' + IntToStr(i)].Merge;
      xls.Range['G' + IntToStr(StartRow) + ':G' + IntToStr(i)].Merge;
      xls.Range['H' + IntToStr(StartRow) + ':H' + IntToStr(i)].Merge;
      xls.Range['I' + IntToStr(StartRow) + ':I' + IntToStr(i)].Merge;
      xls.Range['J' + IntToStr(StartRow) + ':J' + IntToStr(i)].Merge;
      xls.Range['K' + IntToStr(StartRow) + ':K' + IntToStr(i)].Merge;
      xls.Range['L' + IntToStr(StartRow) + ':L' + IntToStr(i)].Merge;
    end;
 ///////////////////////////////////////////////

        tmp := IntToStr(i);
        //xls.Range['D' + tmp + ':E' + tmp].Merge;
        if (format='TT') then
        begin
          xls.Range['A' + tmp + ':L' + tmp].Borders[4].Weight := 3;
          xls.Range['A' + tmp + ':L' + tmp].Borders[4].LineStyle := 1;


            //rowToClear := IntToStr(StrToInt(tmp) +1);

          //in ngang doc
          xls.Range['A' + tmp + ':L' + tmp4 ].Borders[1].LineStyle := 1;
          xls.Range['A' + tmp + ':L' + tmp4 ].Borders[2].LineStyle := 1;
          xls.Range['A' + tmp + ':L' + tmp4 ].Borders[3].LineStyle := 1;
          xls.Range['A' + tmp + ':L' + tmp4 ].Borders[4].LineStyle := 1;




        // in le giua
          xls.Range['A' + tmp + ':L' + tmp4].HorizontalAlignment := -4108; // xlCenter
          xls.Range['A' + tmp + ':L' + tmp4].VerticalAlignment := -4108;   // xlCenter
        end;
      end;
      //-----------¤p­p
      i := i + 1;
      xls.Cells(i, 2) := 'SubTotal : ';
      xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Color := clBlue ; //TO MAU XANH
      xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Bold := True;
      xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i )].Interior.Color := $FFF8F0;
      xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].HorizontalAlignment := -4108;
     // xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Color := $FF0000;
      xls.Cells(i, 11) := 'SubTotal CBM: ';
      tmp := IntToStr(i);
      xls.Range['B' + tmp + ':C' + tmp].Merge;
      xls.Range['J' + tmp + ':K' + tmp].Merge;
      if format <> 'TT' then
        xls.Range['O' + tmp + ':P' + tmp].Merge;
      xls.Range['A' + tmp + ':L' + tmp].Borders[4].Weight := 3;
      xls.Range['A' + tmp + ':L' + tmp].Borders[4].LineStyle := 1;
      //xls.Range['A' + '7' + ':L' + '7'].Borders[4].Weight := 3;
      //xls.Range['A' + '7' + ':L' + '7'].Borders[4].LineStyle := 1;
      xls.Cells(i, 4) := qry_PD.FieldByName('CTS').AsString;
      xls.Cells(i, 5) := qry_PD.FieldByName('PAIRS').AsString;
      xls.Cells(i, 7) := qry_PD.FieldByName('NW').AsString;
      xls.Cells(i, 9) := qry_PD.FieldByName('GW').AsString;
      xls.Cells(i, 12) := qry_PD.FieldByName('CBM').AsString;

      xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Size := 12;


      xls.Range['D' + IntToStr(i), 'D' + IntToStr(i)].NumberFormat := '#,##0';
      xls.Range['E' + IntToStr(i), 'E' + IntToStr(i)].NumberFormat := '#,##0';
      xls.Range['G' + IntToStr(i), 'G' + IntToStr(i)].NumberFormat := '#,##0.00';
      xls.Range['I' + IntToStr(i), 'I' + IntToStr(i)].NumberFormat := '#,##0.00';
      xls.Range['L' + IntToStr(i), 'L' + IntToStr(i)].NumberFormat := '0.000';

      i := i + 1;

      //-------
      Query2.Next;
    end;
    // ADD TOTAL ALL
    i:=i+1;
    xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Color := $0000FF;
    xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Bold := True;
    xls.Cells(i, 2) := 'Total All : ';
    xls.Cells(i+2, 1) := 'Markings :';
    xls.Cells(i, 4) := qry_Total.FieldByName('T_CTS').AsString;
    xls.Cells(i, 5) := qry_Total.FieldByName('T_Pairs').AsString;
    xls.Cells(i, 7) := qry_Total.FieldByName('T_NW').AsString;
    //xls.Cells(i, 12) := qry_Total.FieldByName('T_TRGW').AsString;
    xls.Cells(i, 9) := qry_Total.FieldByName('T_GW').AsString;
    xls.Cells(i, 12) := qry_Total.FieldByName('T_CBM').AsString;

    xls.Range['A' + IntToStr(i) + ':L' + IntToStr(i)].Font.Size := 12;
    xls.Range['A' + IntToStr(i + 2) + ':L' + IntToStr(i + 2)].Font.Size := 12;



    xls.Cells[i, 4].NumberFormat := '#,##0';
    xls.Cells[i, 5].NumberFormat := '#,##0';
    xls.Cells[i, 7].NumberFormat := '#,##0.00';
    xls.Cells[i, 9].NumberFormat := '#,##0.00';
    xls.Cells[i, 12].NumberFormat := '0.000';


  //Åã¥Ü¤U¤è¸ê°T
  tmp := IntToStr(i + 3);
  xls.Range['A' + tmp + ':B' + tmp].Merge;
  tmp := IntToStr(i + 4);
  xls.Range['A' + tmp + ':B' + tmp].Merge;
  tmp := IntToStr(i + 5);
  xls.Range['A' + tmp + ':B' + tmp].Merge;
  tmp := IntToStr(i + 6);
  xls.Range['A' + tmp + ':B' + tmp].Merge;
  tmp := IntToStr(i + 7);
  xls.Range['A' + tmp + ':B' + tmp].Merge;
  tmp := IntToStr(i + 8);
  tmp2 := IntToStr(i + 3);
  xls.Range['A' + tmp + ':D' + tmp].Merge;
  xls.Range['A' + tmp, 'D' + tmp].HorizontalAlignment := $FFFFEFF4;
  xls.Range['A' + tmp2 + ':A' + tmp].Borders[1].Weight := 2;
  xls.Range['D' + tmp2 + ':D' + tmp].Borders[2].Weight := 2;
  xls.Range['A' + tmp2 + ':D' + tmp2].Borders[3].Weight := 2;
  xls.Range['A' + tmp + ':D' + tmp].Borders[4].Weight := 2;
  xls.Range['A' + tmp2 + ':A' + tmp].Borders[1].LineStyle := 1;
  xls.Range['D' + tmp2 + ':D' + tmp].Borders[2].LineStyle := 1;
  xls.Range['A' + tmp2 + ':D' + tmp2].Borders[3].LineStyle := 1;
  xls.Range['A' + tmp + ':D' + tmp].Borders[4].LineStyle := 1;

  //---

  ExcelFootTT(xls, i); //³øªí¦@¥Î¥k¤Uµù¸}
  //--- Packing List ³øªí§¹¦¨
  xls.Visible := True; //§âExcel ©I¥s¥X¨Ó
  xls.Cells.Font.Name := 'Times New Roman';
end;
procedure TInvoicePL.btnExcel_TTClick(Sender: TObject);
begin
   btnExportExcelTT ('Style No : ','TT');
end;

procedure TInvoicePL.btnExcel_CAClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Shipping_SN12_Cariuma.xlsx'),Pchar(AppDir+'Additional\Shipping_SN12_Cariuma.xlsx'),false);
  if FileExists(AppDir+'Additional\Shipping_SN12_Cariuma.xlsx') then
  begin
     if  Query1.active  then
     begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Shipping_SN12_Cariuma.xlsx');
        // Invoice
        eclApp.WorkSheets[1].Activate;
        eclApp.Cells(5,3):=Query1.fieldbyname('INV_NO').Value;
        eclApp.Cells(5,8):=Query1.fieldbyname('INV_DATE').Value;
        eclApp.Cells(9,8):=Query1.fieldbyname('TO_WHERE').Value;
        Query2.First;
        i:=13;
        while not Query2.Eof do
        begin
          eclApp.ActiveSheet.Rows[i+1].Insert(-4121);
          eclApp.Cells(i,1):=Query2.fieldbyname('PACK_NO').Value;
          eclApp.Cells(i,2):=Query2.fieldbyname('RYNO').Value;
          eclApp.Cells(i,3):=Query2.fieldbyname('PO').Value;
          eclApp.Cells(i,4):=Query2.fieldbyname('STYLE_NAME').Value;
          eclApp.Cells(i,5):=Query2.fieldbyname('ARTICLE').Value;
          eclApp.Cells(i,6):=Query2.fieldbyname('SIZE_RUN').Value;
          eclApp.Cells(i,7):=Query2.fieldbyname('PAIRS').Value;
          eclApp.Cells(i,8):=Query2.fieldbyname('UNIT_PRICE').Value;
          eclApp.Cells(i,9):=Query2.fieldbyname('AMOUNT').Value;
          eclApp.Range[eclApp.Cells[i,9],eclApp.Cells[i,10]].Merge;
          Query2.Next;
          inc(i);
        end;
        //eclApp.Cells[i+4,7].Formula:='=SUM(G13:G'+inttostr(i-1)+')';
        //eclApp.Cells[i+4,9].Formula:='=SUM(I13:I'+inttostr(i-1)+')';
        eclApp.Cells[i+4,7]:= Query1.fieldbyname('TOTAL_PAIRS').Value;
        eclApp.Cells[i+4,9]:= Query1.fieldbyname('TOTAL_AMOUNT').Value;

        //Packing list
        eclApp.WorkSheets[2].Activate;
        eclApp.Cells(5,3):=Query1.fieldbyname('INV_NO').Value;
        eclApp.Cells(5,10):=Query1.fieldbyname('INV_DATE').Value;
        eclApp.Cells(9,10):=Query1.fieldbyname('TO_WHERE').Value;
        Query2.First;
        j:=13;
        while not Query2.Eof do
        begin
          with Query3 do
          begin
            first;
            while not Eof do
            begin
              eclApp.ActiveSheet.Rows[j+1].Insert(-4121);
              eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,1]].NumberFormatLocal := '@';
              eclApp.Cells(j,1):=Query3.fieldbyname('CTQ').AsString+'-'+ Query3.fieldbyname('CTZ').AsString;
              eclApp.Cells(j,2):=Query3.fieldbyname('RYNO').Value;
              eclApp.Range[eclApp.Cells[j,3],eclApp.Cells[j,3]].NumberFormatLocal := '@';
              eclApp.Cells(j,3):=Query2.fieldbyname('PO').Value;
              eclApp.Cells(j,4):=Query2.fieldbyname('STYLE_NAME').Value;
              eclApp.Cells(j,5):=Query2.fieldbyname('ARTICLE').Value;
              eclApp.Cells(j,6):=Query3.fieldbyname('SIZ').Value;
              eclApp.Cells(j,7):=Query3.fieldbyname('Qty').Value;
              eclApp.Cells(j,8):=Query3.fieldbyname('CTS').Value;
              eclApp.Cells(j,9):=Query3.fieldbyname('NW').Value;
              eclApp.Cells(j,10):=Query3.fieldbyname('TNW').Value;
              eclApp.Cells(j,11):=Query3.fieldbyname('RGW').Value;
              eclApp.Cells(j,12):=Query3.fieldbyname('TRGW').Value;
              eclApp.Cells(j,13):=Query3.fieldbyname('L').Value;
              eclApp.Cells(j,14):=Query3.fieldbyname('W').Value;
              eclApp.Cells(j,15):=Query3.fieldbyname('H').Value;
              Next;
              inc(j);
            end;
          end;
          Query2.Next;
        end;
        eclApp.ActiveSheet.Rows[j+1].Delete;
        eclApp.Cells[j+3,7]:= qry_total.FieldByName('T_PAIRS').Value;
        eclApp.Cells[j+3,8]:= qry_total.FieldByName('T_CTS').Value;
        eclApp.Cells[j+3,10]:= qry_total.FieldByName('T_NW').Value;
        eclApp.Cells[j+3,12]:= qry_total.FieldByName('T_TRGW').Value;
        eclApp.Cells(j+3,13):= qry_total.FieldByName('T_CBM').Value;


        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
     end;
  end;
end;

procedure TInvoicePL.ExcelPRClick(Sender: TObject);
var eclApp,WorkBook,ExcelApp,Sheet, Range:olevariant;
    i,j,k,maxRn1Value,rowNumber:integer;
    sumValue: Double;
    TotalAmountWord,userDateValue,x,word,rangeString,rangeString1,rangeString2,rangeString3,rangeString4,rangeString5,rangeString6,rangeString7,rangeString8,rangeString9,rangeString10: string;

begin

  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\192.168.71.7\lys_erp\Additional\SP_N12_PR.xlsx'),Pchar(AppDir+'Additional\SP_N12_PR.xlsx'),false);
  if FileExists(AppDir+'Additional\SP_N12_PR.xlsx') then
  begin
  if not Query4.Active then
          Query4.Open;
  if not Query5.Active then
          Query5.Open;
     if  Query4.active  then
     begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\SP_N12_PR.xlsx');
        // sheet 1 Invoice
        eclApp.WorkSheets['INV'].Activate;
          Query4.First;
          i:=18;
          eclApp.Cells(10,11):=Query4.fieldbyname('INV_NO').Value;
          eclApp.Cells(11,11):=Query4.fieldbyname('UserDate').Value;
          eclApp.Cells(15,11):=Query4.fieldbyname('KHPO').Value;


          while not Query4.Eof do
          begin
            eclApp.Cells(i,2):=Query4.fieldbyname('RYNO').Value;
            eclApp.Cells(i,3):=Query4.fieldbyname('STYLE_NAME').Value;
            eclApp.Cells(i,4):=Query4.fieldbyname('Style_No').Value;
            eclApp.Cells(i,5):=Query4.fieldbyname('YSSM').Value;
            eclApp.Cells(i,6):=Query4.fieldbyname('YSSM_code').Value;
            eclApp.Cells(i,7):=Query4.fieldbyname('CCC').Value;
            eclApp.Cells(i,8):=Query4.fieldbyname('QTY_Left').Value;
            eclApp.Cells(i,9):=Query4.fieldbyname('Qty_Right').Value;
            eclApp.Cells(i,10):=Query4.fieldbyname('Qty_total').Value;
            eclApp.Cells(i,11):=Query4.fieldbyname('Qty_total_pairs').Value;
            eclApp.Cells(i,12) :=Query4.fieldbyname('UNIT_PRICE').Value;
            eclApp.Cells(i,13):=Query4.fieldbyname('Amount').Value;
            eclApp.ActiveSheet.Rows[i+1].Insert;
              Query4.Next; // Correct syntax here
            inc(i);
          end;
        eclApp.ActiveSheet.Rows[i].delete;

        eclApp.Cells[i, 11] := '=SUM(K18:K' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 13] := '=SUM(M18:M' + IntToStr(i-1) + ')';
        //eclApp.Cells[i+3, 1] :='SAY TOTAL US DOLLARS '+ UpperCase(Query4.FieldByName('TOTAL_AMOUNT_WORD').AsString)+'ONLY.';
        TotalAmountWord := Query4.FieldByName('TOTAL_AMOUNT_WORD').AsString;
        TotalAmountWord := Copy(TotalAmountWord, 1, Length(TotalAmountWord) - 1);
        eclApp.Cells[i+3, 1] := 'SAY TOTAL US DOLLARS ' + UpperCase(TotalAmountWord) + ' ONLY.';

        // sheet 2  packing list
        eclApp.WorkSheets['PKL'].Activate;
         with Query5 do
      begin
        First;
         eclApp.Cells(9,1):='SHIP TO COUNTRY: '+Query5.fieldbyname('TO_WHERE').Value;
        i := 15;
        while not Eof do
        begin

           // xls.Range['A' + tmp + ':A' + tmp].NumberFormatLocal := '@'; //§ï¤å¦r®æ¦¡¡G¤å¦r
          //---
            eclApp.Cells(i,5):=Query5.fieldbyname('RYNO').Value;
            eclApp.Cells(i,7):=Query5.fieldbyname('STYLE_NAME').Value;
            eclApp.Cells(i,6):=Query5.fieldbyname('Style_No').Value;
            eclApp.Cells(i,8):=Query5.fieldbyname('YSSM').Value;
            eclApp.Cells(i,9):=Query5.fieldbyname('YSSM_code').Value;
            eclApp.Cells(i,10):=Query5.fieldbyname('CCC').Value;
            eclApp.Cells(i,11):=Query5.fieldbyname('QTY').Value;
            eclApp.Cells(i,12):=Query5.fieldbyname('Qty').Value;
            eclApp.Cells(i,13):=Query5.fieldbyname('Qty').Value*2;
            eclApp.Cells(i,14):=Query5.fieldbyname('Qty').Value;
            eclApp.Cells(i,16):=Query5.fieldbyname('NWeigh').Value;
            eclApp.Cells(i,23):=Query5.fieldbyname('NWeigh').Value*Query5.fieldbyname('Qty').Value;
            eclApp.Columns['W'].EntireColumn.Hidden := True;
            eclApp.Columns['X'].EntireColumn.Hidden := True;
            eclApp.ActiveSheet.Rows[i+1].Insert;
          Query5.Next;
          inc(i);
        end;
        eclApp.ActiveSheet.Rows[i].delete;
        eclApp.Cells[i, 4] := '=SUM(D15:D' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 11] := '=SUM(K15:K' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 12] := '=SUM(L15:L' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 13] := '=SUM(M15:M' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 14] := '=SUM(N15:N' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 15] := '=SUM(O15:O' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 16] := '=SUM(P15:P' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 17] := '=SUM(Q15:Q' + IntToStr(i-1) + ')';
        eclApp.Cells[i, 18] := '=ROUND(SUM(R15:R' + IntToStr(i-1) + '), 1)';
        ///eclApp.Cells[i, 18] := '=SUM(R15:R' + IntToStr(i-1) + ')'; ///////////
        eclApp.Cells[i, 22] := '=SUM(V15:V' + IntToStr(i-1) + ')';

i := 15;
rowNumber := 1;
Query5.First;
while not Eof do
begin
  try
    maxRn1Value := Query5.FieldByName('max_rn1').AsInteger;
    if maxRn1Value > 1 then
    begin
      rangeString := 'O' + IntToStr(i) + ':O' + IntToStr(i + maxRn1Value - 1);
      rangeString1 := 'A' + IntToStr(i) + ':A' + IntToStr(i + maxRn1Value - 1);
      rangeString2 := 'B' + IntToStr(i) + ':B' + IntToStr(i + maxRn1Value - 1);
      rangeString3 := 'C' + IntToStr(i) + ':C' + IntToStr(i + maxRn1Value - 1);
      rangeString4 := 'D' + IntToStr(i) + ':D' + IntToStr(i + maxRn1Value - 1);
      rangeString5 := 'Q' + IntToStr(i) + ':Q' + IntToStr(i + maxRn1Value - 1);
      rangeString6 := 'R' + IntToStr(i) + ':R' + IntToStr(i + maxRn1Value - 1);
      rangeString7 := 'V' + IntToStr(i) + ':V' + IntToStr(i + maxRn1Value - 1);
      rangeString8 := 'S' + IntToStr(i) + ':S' + IntToStr(i + maxRn1Value - 1);
      rangeString9 := 'T' + IntToStr(i) + ':T' + IntToStr(i + maxRn1Value - 1);
      rangeString10 := 'U' + IntToStr(i) + ':U' + IntToStr(i + maxRn1Value - 1);
      // Kiem tra neu range ton tai truoc khi merge
      if VarIsEmpty(eclApp.Range[rangeString].Value) = False then
      begin
        eclApp.Range[rangeString].Merge;
        eclApp.Range[rangeString1].Merge;
        eclApp.Range[rangeString2].Merge;
        eclApp.Range[rangeString3].Merge;
        eclApp.Range[rangeString4].Merge;
        eclApp.Range[rangeString5].Merge;
        eclApp.Range[rangeString6].Merge;
        eclApp.Range[rangeString7].Merge;
        eclApp.Range[rangeString8].Merge;
        eclApp.Range[rangeString9].Merge;
        eclApp.Range[rangeString10].Merge;
      end;
      eclApp.Cells(i,4):=1;
      eclApp.Cells(i,2):='-';
      eclApp.Cells[i,1] := rowNumber;
      rowNumber := rowNumber + 1;
      eclApp.Cells[i,15] := '=SUM(N' + IntToStr(i) + ':N' + IntToStr(i + maxRn1Value - 1) + ')';
      eclApp.Cells[i,17] := '=SUM(W' + IntToStr(i) + ':W' + IntToStr(i + maxRn1Value - 1) + ')';
      //eclApp.Cells[i,18] := Query5.FieldByName('sgw').Value;
      eclApp.Cells[i, 18] := RoundTo(Query5.FieldByName('sgw').AsFloat, -1);
      eclApp.Cells(i,19):=Query5.fieldbyname('L').Value/10;
      eclApp.Cells(i,20):=Query5.fieldbyname('W').Value/10;
      eclApp.Cells(i,21):=Query5.fieldbyname('H').Value/10;
      eclApp.Cells[i,22] := RoundTo(Query5.FieldByName('L').Value / 1000 * Query5.FieldByName('W').Value / 1000 * Query5.FieldByName('H').Value / 1000, -2);
      i := i + maxRn1Value; // Tang giá tr? c?a i sau khi g?p ô
    end
    else
    begin
      // Tru?ng h?p maxRn1Value <= 1, không g?p ô và c?p nh?t giá tr? i
      eclApp.Cells[i,15] := Query5.FieldByName('QTY').AsInteger;
      eclApp.Cells[i,17] := Query5.FieldByName('NWCarton').Asfloat;
      //eclApp.Cells[i,18] := Query5.FieldByName('sgw').Value;
      eclApp.Cells[i, 18] := RoundTo(Query5.FieldByName('sgw').AsFloat, -1);
      eclApp.Cells(i,19):=Query5.fieldbyname('L').Value/10;
      eclApp.Cells(i,20):=Query5.fieldbyname('W').Value/10;
      eclApp.Cells(i,21):=Query5.fieldbyname('H').Value/10;
      eclApp.Cells[i,22] := RoundTo(Query5.FieldByName('L').Value / 1000 * Query5.FieldByName('W').Value / 1000 * Query5.FieldByName('H').Value / 1000, -2);
      eclApp.Cells(i,4):=1;
      eclApp.Cells(i,2):='-';
      eclApp.Cells[i,1] := rowNumber;
      rowNumber := rowNumber + 1;
      i := i + 1;
    end;

    // Di chuy?n Query5 d?n v? trí i m?i
    Query5.MoveBy(maxRn1Value);
  except
    on E: Exception do
    begin
      ShowMessage('Error: ' + E.Message);
      Break; // Thoát kh?i vòng l?p n?u có l?i
    end;
  end;
end;


 // dien du lieu cot C. su dung gia tri i tu vong lap phia tren de tinh tong
 j:=15;
Query5.First;
while not Eof do
begin
      try
    maxRn1Value := Query5.FieldByName('max_rn1').AsInteger;
    if maxRn1Value > 1 then
    begin
    maxRn1Value := Query5.FieldByName('max_rn1').AsInteger;
      eclApp.Cells[j,3] := '=SUM(D15:D' + IntToStr(i-1) + ')';
      j := j + maxRn1Value; // Tang giá tr? c?a i sau khi g?p ô
    end
    else
    begin
      // Tru?ng h?p maxRn1Value <= 1, không g?p ô và c?p nh?t giá tr? i
      eclApp.Cells[j,3] := '=SUM(D15:D' + IntToStr(i-1) + ')';
      j := j + 1;
    end;

    // Di chuy?n Query5 d?n v? trí i m?i
    Query5.MoveBy(maxRn1Value);
  except
    on E: Exception do
    begin
      ShowMessage('Error: ' + E.Message);
      Break; // Thoát kh?i vòng l?p n?u có l?i
    end;
 end;
 end;
 end;

  sumValue := 0;
        // Tinh tong de lay gia tri trong o () D15:D(i-1) tr?c ti?p t? Delphi
  for j := 15 to i - 1 do
  begin
    if VarIsNumeric(eclApp.Cells[j, 4].Value) then
    begin
      sumValue := sumValue + eclApp.Cells[j, 4].Value;
    end;
  end;
  if VarIsNumeric(sumValue) then
  begin
    x := IntToStr(Round(sumValue));
    word := ConvertToWords(sumValue, true);
    if Length(word) > 8 then
      word := Copy(word, 1, Length(word) - 8);
    word := 'TOTAL: ' + UpperCase(word) + '(' + FloatToStr(sumValue) + ')CARTONS ONLY.';
    eclApp.Cells[i + 2, 1] := word;
  end;
      finally
        // Ensure Excel application and workbook are closed properly
        showmessage('Succeed');
        eclApp.Visible:=True;
     end;
  end;
end;
end;
procedure TInvoicePL.BitBtn1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    INV,INV_NO,INV_Month,INV_Year,cellText,prevStyleName, currStyleName, invNo, invDatePart, annexNo: string ;
    rowExcel, rowExcel1,slashPos, lengthInvNo, startPos, startDatePos, lengthDatePart, i: Integer;
    invDate: TDateTime;
begin
    with qrytemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select a.RYNO,a.STYLE_NAME,a.PAIRS,a.UNIT_PRICE,a.AMOUNT, b.TOTAL_AMOUNT_WORD, b.TOTAL_PAIRS,b.TOTAL_AMOUNT,b.INV_DATE,b.TO_WHERE from INVOICE_D A '); //sua to where
    sql.Add(' join INVOICE_M B on a.INV_NO=b.INV_NO');
    sql.Add(' Where a.INV_NO = '''+Query1.fieldbyname('INV_NO').Value +''' ORDER BY  a.STYLE_NAME Asc,a.RYNO ASC ');
    active:=true;
  end;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\lys_erp\Additional\Shipping_SN12_Annex.xls'),Pchar(AppDir+'Additional\Shipping_SN12_Annex.xls'),false);
  if FileExists(AppDir+'Additional\Shipping_SN12_Annex.xls') then
  begin
     if  Query1.active  then
     begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook := eclApp.WorkBooks.Open(AppDir + 'Additional\Shipping_SN12_Annex.xls');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
       eclApp.Cells(1, 8) := Query1.FieldByName('INV_DATE').value;
        //in dam va mau
        eclApp.Cells[1, 8].Font.Color := $FF0000;
        eclApp.Cells[1, 8].Font.Bold := True;
        eclApp.Cells[1, 8].NumberFormatLocal := '[$-409]mmm d, yyyy';
        //eclApp.Cells[1, 8].Formula := '=UPPER(TEXT(A1,"mmmm d, yyyy"))';
  ///to mau annex
          invNo := Query1.FieldByName('INV_NO').AsString;
  invDatePart := Copy(FormatDateTime('yyyy', Query1.FieldByName('INV_DATE').AsDateTime), 3, 2);
  if (Length(invNo) > 0) and (invNo[1] = 'J') then
  begin
    slashPos := Pos('/', invNo);
    if slashPos > 0 then
      annexNo := Copy(invNo, 1, slashPos - 1)
    else
      annexNo := invNo; // n?u không có d?u '/' thì l?y toàn b?
  end
  else
    annexNo := invNo; // l?y toàn b? n?u không b?t d?u b?ng 'J'

  eclApp.Cells[2, 1] := 'ANNEX No. ' + annexNo + '/PKHD-TT/' + invDatePart;
  startPos := 10;
  lengthInvNo := Length(annexNo)+1;
    // Tô màu invNo
  eclApp.Cells[2, 1].Characters[startPos, lengthInvNo].Font.Color := clBlue; // ho?c clBlue, tùy b?n
 startDatePos := 10 + Length(annexNo) + Length('/PKHD-TT/')+1;
  lengthDatePart := Length(invDatePart);
  eclApp.Cells[2, 1].Characters[startDatePos, lengthDatePart].Font.Color := clRed;
  ///to mau annex ||| tren


        //eclApp.Cells(2, 1) := 'ANNEX No. '+Copy(Query1.FieldByName('INV_NO').AsString, 1, 12)+'/PKHD-TT/'+Copy(FormatDateTime('yyyy', Query1.FieldByName('INV_DATE').AsDateTime), 3, 2);

       // eclApp.Cells[2, 1].Characters[9,9].Font.Color := clBlue;  //    thay doi mau ki tu
       // eclApp.Cells[2, 1].Characters[26,26].Font.Color := clRed;//
        rowExcel := 26;
        rowExcel1 := 26;
        /////////////////////////
        prevStyleName :='';
        qrytemp.First;
        while not qrytemp.Eof do
        begin
          currStyleName := qrytemp.FieldByName('STYLE_NAME').AsString;
          eclApp.Rows[rowExcel].Insert;
          eclApp.Rows[rowExcel + 1].Insert;
          if currStyleName <> prevStyleName then
            begin
          eclApp.Cells(rowExcel, 2) := qrytemp.FieldByName('STYLE_NAME').AsString;
          eclApp.Cells[rowExcel, 2].Font.Color := RGB(255, 0, 0);
          eclApp.Cells[rowExcel, 2].Font.Underline := True;
          eclApp.Cells[rowExcel, 2].Font.Bold := True;
          //eclApp.Cells[rowExcel, 2].Font.Color := clRed;
          eclApp.Cells(rowExcel+1, 2) := qrytemp.FieldByName('RYNO').AsString;
          eclApp.Cells(rowExcel+1, 6) := qrytemp.FieldByName('PAIRS').AsString;
          eclApp.Cells[rowExcel+1, 6].NumberFormat := '#,##0';
          eclApp.Cells(rowExcel+1, 7) := qrytemp.FieldByName('UNIT_PRICE').AsString;
          eclApp.Cells[rowExcel+1, 8].NumberFormat := '#,##0.00';
          eclApp.Cells(rowExcel+1, 8) := qrytemp.FieldByName('AMOUNT').AsString;
          prevStyleName := currStyleName;
          rowExcel := rowExcel + 2;
            end else
            begin
              eclApp.Rows[rowExcel].Delete;
          eclApp.Cells(rowExcel, 2) := qrytemp.FieldByName('RYNO').AsString;
          eclApp.Cells(rowExcel, 6) := qrytemp.FieldByName('PAIRS').AsString;
          eclApp.Cells[rowExcel+1, 6].NumberFormat := '#,##0';
          eclApp.Cells(rowExcel, 7) := qrytemp.FieldByName  ('UNIT_PRICE').AsString;
          eclApp.Cells[rowExcel+1, 8].NumberFormat := '#,##0.00';
          eclApp.Cells(rowExcel, 8) := qrytemp.FieldByName('AMOUNT').AsString;
          prevStyleName := currStyleName;
          rowExcel := rowExcel + 1;
          end;
           qrytemp.Next;
        end;

        ////////////////////////
        eclApp.Cells(rowExcel, 6) := qrytemp.FieldByName('TOTAL_PAIRS').AsString;
        eclApp.Cells[rowExcel, 6].NumberFormat := '#,##0';
        eclApp.Cells(rowExcel, 8) := qrytemp.FieldByName('TOTAL_AMOUNT').AsString;
        eclApp.Cells[rowExcel, 8].NumberFormat := '#,##0.00';

       eclApp.Cells(rowExcel + 1, 1) := 'Total: US dollars '+LowerCase(Copy(qrytemp.FieldByName('TOTAL_AMOUNT_WORD').AsString, 1,Length(qrytemp.FieldByName('TOTAL_AMOUNT_WORD').AsString) - 1)) + ' only.';
       //eclApp.Cells[rowExcel + 1, 1].Characters[1, Length('Total: US dollars ' + LowerCase(Copy(qrytemp.FieldByName('TOTAL_AMOUNT_WORD').AsString, 1, Length(qrytemp.FieldByName('TOTAL_AMOUNT_WORD').AsString) - 1)) + ' only.');
       eclApp.Cells[rowExcel + 1, 1].Characters[1, Length('Total: US dollars ' + LowerCase(Copy(qrytemp.FieldByName('TOTAL_AMOUNT_WORD').AsString, 1, Length(qrytemp.FieldByName('TOTAL_AMOUNT_WORD').AsString) - 1)) + ' only.')].Font.Color := clBlue;
       eclApp.Rows[rowExcel + 1].RowHeight := 30; // ho?c 40, tu? d? dài van b?n


       //in date
      invDate := Query1.FieldByName('INV_DATE').AsDateTime;
      eclApp.Cells[rowExcel + 4, 7] := invDate;
      eclApp.Cells[rowExcel + 4, 7].NumberFormatLocal :='"IN "[$-409]mmmm yyyy;@';
      eclApp.Cells[rowExcel + 4, 7].HorizontalAlignment := -4131; // xlLeft
      eclApp.Cells[rowExcel + 4, 7].Font.Bold := True;


      //
        eclApp.Cells(rowExcel + 5, 7) := 'To: ' + qrytemp.FieldByName('TO_WHERE').AsString; //to where
        eclApp.Cells[rowExcel + 5, 7].Characters(5, Length(qrytemp.FieldByName('TO_WHERE').AsString)).Font.Color := clRed;
        eclApp.Cells[rowExcel + 5, 7]  .Font.Bold := True;
       /////////YS sua dong phia duoi du lieu khong bi keo dai
        for i := rowExcel to eclApp.ActiveSheet.UsedRange.Rows.Count do
          begin
            if eclApp.Rows[i].RowHeight > 30 then
              begin
              // T?t WrapText cho các ô t? c?t A d?n Z trong dòng i
                eclApp.Range['A' + IntToStr(i), 'Z' + IntToStr(i)].WrapText := False;

              // Ð?t l?i chi?u cao dòng
                eclApp.Rows[i].RowHeight := 15;
              end;
          end;
      ///////////
       try
        ShowMessage('Xuat excel ok!');
        eclApp.Visible := True;
      except
        on F: Exception do
          ShowMessage('Loi: ' + F.Message);
      end;
    end;
  end;
end;


end.
