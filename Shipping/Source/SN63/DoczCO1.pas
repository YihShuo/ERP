unit DoczCO1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls,
  DBTables, DB, Menus,DBGridEhImpExp,shellAPI,Comobj,NumberToWords,StrUtils,Registry;

type
  TDoczCO = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
    PageControl1: TPageControl;
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
    qry_Co: TQuery;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    qry_CoCUSTID: TStringField;
    qry_CoCOUNTRYEN: TStringField;
    qry_CoKind_Loading: TStringField;
    qry_CoForwarder: TStringField;
    qry_CoSailing_Date: TDateTimeField;
    qry_CoExFty_Date: TDateTimeField;
    qry_CoCO_Vessel: TStringField;
    qry_CoCO_Voyage: TStringField;
    qry_CoCustoms_No: TStringField;
    qry_CoCustoms_Date: TDateTimeField;
    qry_CoCO_RCV_From: TDateTimeField;
    qry_CoCO_Apply_Date: TDateTimeField;
    qry_CoCO_Return_Org: TDateTimeField;
    qry_CoCO_Kind_Form: TStringField;
    qry_CoCO_No: TStringField;
    qry_CoCO_Date: TDateTimeField;
    qry_CoCO_Send_Draf: TDateTimeField;
    qry_CoCO_Cust_CFM: TDateTimeField;
    qry_CoCO_Remark: TStringField;
    qry_CoCO_UserID: TStringField;
    qry_CoCO_UserDate: TDateTimeField;
    qry_CoCO_YN: TStringField;
    qry_CoInv_Date: TDateTimeField;
    Query1: TQuery;
    DBGridEh3: TDBGridEh;
    qry_excel: TQuery;
    DS3: TDataSource;
    Pop_Excel: TPopupMenu;
    Excel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    qry_excelSTT: TFloatField;
    qry_excelINV_DATE: TDateTimeField;
    qry_excelExFty_Date: TDateTimeField;
    qry_excelKind_Loading: TStringField;
    qry_excelForwarder: TStringField;
    qry_excelSailing_Date: TDateTimeField;
    qry_excelCO_Vessel: TStringField;
    qry_excelCO_Voyage: TStringField;
    qry_excelCustoms_No: TStringField;
    qry_excelCustoms_Date: TDateTimeField;
    qry_excelCO_RCV_From: TDateTimeField;
    qry_excelCO_Apply_Date: TDateTimeField;
    qry_excelCO_Return_Org: TDateTimeField;
    qry_excelCO_Kind_Form: TStringField;
    qry_excelCO_No: TStringField;
    qry_excelCO_Date: TDateTimeField;
    qry_excelCO_Send_Draf: TDateTimeField;
    qry_excelCO_Cust_CFM: TDateTimeField;
    qry_excelCO_Remark: TStringField;
    qry_excelPO: TStringField;
    qry_excelMCUSTMER: TStringField;
    qry_excelCOUNTRYEN: TStringField;
    qry_excelRYNO: TStringField;
    qry_excelCTS: TIntegerField;
    qry_excelPairs: TIntegerField;
    qry_excelNW: TCurrencyField;
    qry_excelGW: TCurrencyField;
    qry_excelCBM: TCurrencyField;
    qry_excelShipmode: TStringField;
    qry_excelCO_HSCode: TStringField;
    btnImport_Cus: TBitBtn;
    btnImport_HS: TBitBtn;
    qry_CoCO_RCV_OriDocz: TDateTimeField;
    qry_excelCO_RCV_OriDocz: TDateTimeField;
    chkmass: TCheckBox;
    chksample: TCheckBox;
    qry_CoBill_UserID: TStringField;
    qry_CoBill_CFMDate: TDateTimeField;
    btnPrint: TBitBtn;
    qry_CoBill_FCR_No: TStringField;
    qry_CoBill_FCR_Date: TDateTimeField;
    chkMine: TCheckBox;
    qry_CoCO_CreateDate: TDateTimeField;
    qry_CoCO_ReferenceNo: TStringField;
    qry_CoCO_Origin: TStringField;
    qry_CoCO_CFMID: TStringField;
    qry_CoCO_CFMDate: TDateTimeField;
    Confirm1: TMenuItem;
    Unconfirm1: TMenuItem;
    Pop_Co: TPopupMenu;
    chk2: TCheckBox;
    chk3: TCheckBox;
    btnPrintInv: TBitBtn;
    qry_CoCO_Inv_Date: TDateTimeField;
    qry_excelCO_Inv_Date: TDateTimeField;
    Label7: TLabel;
    qry_CoRISK: TStringField;
    qry_CoSHIP_BY: TStringField;
    qry_CoFROM_WHERE: TStringField;
    qry_CoTO_WHERE: TStringField;
    qry_CoTOTAL_PAIRS: TIntegerField;
    qry_CoTOTAL_AMOUNT: TCurrencyField;
    qry_CoTOTAL_AMOUNT_WORD: TStringField;
    qry_RySIZE_RUN: TStringField;
    qry_RyUNIT_PRICE: TFloatField;
    qry_RyAMOUNT: TFloatField;
    qry_CoCO_Provide_Org: TStringField;
    qry_excelCO_Provide_Org: TStringField;
    cboKindForm: TComboBox;
    Label8: TLabel;
    qry_excelCO_CFMID: TStringField;
    cboSign: TEdit;
    ShowProgress: TPanel;
    Label11: TLabel;
    ProgressBar1: TProgressBar;
    qry_CoINV_NO: TStringField;
    qry_excelINV_NO: TStringField;
    qry_RyINV_NO: TStringField;
    qry_RyRYNO: TStringField;
    qry_excelSPECID: TStringField;
    qry_RySPECID: TStringField;
    Label9: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Edit5: TEdit;
    qry_RyCO_HSCode: TStringField;
    qry_CoHS_Code: TIntegerField;
    qry_CoVND_USD: TFloatField;
    qry_excelVND_USD: TFloatField;
    MultiSelect1: TMenuItem;
    INVNot: TTabSheet;
    pnl_INV: TPanel;
    DS_INV: TDataSource;
    Qry_INV: TQuery;
    btn_QryINV: TButton;
    DBG_INV: TDBGridEh;
    lblError: TLabel;
    Qry_Message: TQuery;
    Timer1: TTimer;
    Qry_INVINV_NO: TStringField;
    Qry_INVExFty_Date: TDateTimeField;
    Qry_INVKind_Loading: TStringField;
    Qry_INVForwarder: TStringField;
    Qry_INVSailing_Date: TDateTimeField;
    Qry_INVCustoms_No: TStringField;
    Qry_INVCustoms_Date: TDateTimeField;
    Qry_INVCO_Provide_Org: TStringField;
    Qry_INVCO_Kind_Form: TStringField;
    Qry_INVCO_No: TStringField;
    Qry_INVCO_Date: TDateTimeField;
    DBG_INVRy: TDBGridEh;
    Splitter2: TSplitter;
    DS_INVRy: TDataSource;
    Qry_INVRy: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    Liquidate: TTabSheet;
    Panel2: TPanel;
    Label22: TLabel;
    btnModify_Liqui: TBitBtn;
    btnSave_Liqui: TBitBtn;
    btnCancel_Liqui: TBitBtn;
    cboLiquiDate: TComboBox;
    dtpLiqui1: TDateTimePicker;
    dtpLiqui2: TDateTimePicker;
    btnQryLiqui: TButton;
    edt_CustomNo: TEdit;
    pnl_ImpTK: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    ProgressBar2: TProgressBar;
    btn_StartTK: TButton;
    btn_SampFileTK: TButton;
    Panel6: TPanel;
    Panel7: TPanel;
    DBG_Liqui: TDBGridEh;
    DS_Liqui: TDataSource;
    Qry_Liqui: TQuery;
    Up_Liqui: TUpdateSQL;
    Pop_Liqui: TPopupMenu;
    btn_Excel_Lidui: TMenuItem;
    Qry_LiquiSTT: TFloatField;
    Qry_LiquiINV_NO: TStringField;
    Qry_LiquiCountryID: TStringField;
    Qry_LiquiTO_WHERE: TStringField;
    Qry_LiquiPAIRS: TIntegerField;
    Qry_LiquiCustoms_No: TStringField;
    Qry_LiquiSailing_Date: TDateTimeField;
    Qry_LiquiCO_Provide_Org: TStringField;
    Qry_LiquiCO_Kind_Form: TStringField;
    Qry_LiquiReceivedDate: TDateTimeField;
    Qry_LiquiReleaseDate: TDateTimeField;
    Qry_LiquiLiqui_Remark: TStringField;
    Qry_LiquiLiqui_UserID: TStringField;
    Qry_LiquiLiqui_UserDate: TDateTimeField;
    DS_LiquiS: TDataSource;
    Qry_LiquiS: TQuery;
    Qry_LiquiHSCode: TStringField;
    pnl_LiquiS: TPanel;
    pnl_LiquiSHide: TPanel;
    Splitter3: TSplitter;
    DBG_LiquiS: TDBGridEh;
    Qry_LiquiSINV_NO: TStringField;
    Qry_LiquiSRYNO: TStringField;
    Qry_LiquiSCO_HSCode: TStringField;
    Qry_LiquiSPAIRS: TIntegerField;
    N1: TMenuItem;
    DownLoadPDF1: TMenuItem;
    UpLoadPDF1: TMenuItem;
    DeletePDF1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog2: TSaveDialog;
    qry_CoBill_RCV_Org_CO_File: TStringField;
    qry_CoTC_PL_Date: TDateTimeField;
    Pop_RY: TPopupMenu;
    mniMod_RY: TMenuItem;
    mniSav_RY: TMenuItem;
    mniCan_RY: TMenuItem;
    Up_RY: TUpdateSQL;
    qry_RyCustoms_No: TStringField;
    mniImport_HSCode: TMenuItem;
    Qtemp: TQuery;
    qry_RyInv_Type: TStringField;
    qry_RyMasterOrder: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure btnexitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure qry_CoAfterOpen(DataSet: TDataSet);
    procedure btnModifyClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btndeleteClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure btnImport_CusClick(Sender: TObject);
    procedure btnImport_HSClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure Confirm1Click(Sender: TObject);
    procedure Unconfirm1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnPrintInvClick(Sender: TObject);
    procedure Pop_CoPopup(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure qry_CoBeforeClose(DataSet: TDataSet);
    procedure MultiSelect1Click(Sender: TObject);
    procedure Confirmdata(Sender: TObject);
    procedure btn_QryINVClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Qry_MessageAfterOpen(DataSet: TDataSet);   
    procedure Timer1Timer(Sender: TObject);
    procedure Qry_MessageBeforeClose(DataSet: TDataSet);
    procedure DBG_INVRyGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnQryLiquiClick(Sender: TObject);
    procedure Qry_LiquiAfterOpen(DataSet: TDataSet);
    procedure Qry_LiquiBeforeClose(DataSet: TDataSet);
    procedure btn_Excel_LiduiClick(Sender: TObject);
    procedure DBG_LiquiTitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure btnModify_LiquiClick(Sender: TObject);
    procedure btnSave_LiquiClick(Sender: TObject);
    procedure btnCancel_LiquiClick(Sender: TObject);
    procedure DBG_LiquiColumns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure pnl_LiquiSHideClick(Sender: TObject);
    procedure Pop_LiquiPopup(Sender: TObject);
    procedure UpLoadPDF1Click(Sender: TObject);
    procedure DownLoadPDF1Click(Sender: TObject);
    procedure DeletePDF1Click(Sender: TObject);
    procedure mniMod_RYClick(Sender: TObject);
    procedure mniSav_RYClick(Sender: TObject);
    procedure mniCan_RYClick(Sender: TObject);
    procedure DBGridEh2EditButtonClick(Sender: TObject);
    procedure mniImport_HSCodeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DoczCO: TDoczCO;
  afop,BTQueryOpen: Boolean;
  NDate: TDate;
  IPFile,UserLog,PassLog,FileAddress,File_s:String;
implementation
  uses Main1, Import_Customs1, Import_HSCode1, FormCO_TR_Print1,
  FormCO_VC_Print1, FormCO_AJ_Print1, FormCO_ANNZ_Print1, DoczCO_PrintInv1,
  DoczCO_PrintInv_O1, DateUtils, Pwd1, QpInvoice1;

{$R *.dfm}

procedure TDoczCO.FormDestroy(Sender: TObject);
begin
   DoczCO:=nil;
end;

procedure TDoczCO.btnexitClick(Sender: TObject);
begin
    close;
end;

procedure TDoczCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (qry_Co.RequestLive)or(Qry_Liqui.RequestLive) then
  begin
    showmessage('You must save data first.');
    abort;
  end
  else
  begin
    with Query1 do
    begin
      Sql.Clear;
      Sql.Add('If OBJECT_ID(''tempdb..#TempSB'') IS NOT NULL DROP TABLE #TempSB');  
      Sql.Add('If OBJECT_ID(''tempdb..#HSCode'') IS NOT NULL DROP TABLE #HSCode');
      ExecSQL;
      Action:=cafree;
    end;
  end;
end;

procedure TDoczCO.Button1Click(Sender: TObject);
begin
  if btnsave.Enabled then
   begin
      showmessage('You must save data first.');
      abort;
   end;
  BTQueryOpen:=false;
  afop := false;
  qry_Ry.Active:=false;
  qry_excel.Active:=false;
  qry_CO.Active:=false;
  Qry_Liqui.Active:=false;
  Qry_LiquiS.Active:=false;
  if(not chkmass.Checked)and(not chkSample.Checked)and(not chkMine.Checked)and(not chk2.Checked)and(not chk3.Checked)
  and(not chk1.Checked)and(not chkInv.Checked)and(trim(edit3.Text)='')and(trim(cboKindForm.Text)='')
  and(trim(edit2.Text)='')and(trim(Edit1.Text)='')then
  begin
    Messagedlg('Pls, input data for FILLTER first!',mtwarning,[mbyes],0);
    abort;
  end;
  BTQueryOpen:=true;
  PageControl1Change(nil);
end;

procedure TDoczCO.qry_CoAfterOpen(DataSet: TDataSet);
begin     
   if qry_CO.RecordCount > 0 then
    begin
        qry_Ry.Active:=true;
        btnmodify.Enabled:=true;
        btndelete.Enabled:=true;
        btnImport_Cus.Enabled:=true;
        btnImport_HS.Enabled:=true;
        btnPrintinv.Enabled:=true;  
        afop := True;
    end;
end;

procedure TDoczCO.btnModifyClick(Sender: TObject);
begin
    qry_CO.RequestLive:=true;
    qry_CO.CachedUpdates:=true;
    qry_CO.Edit;
    qry_CO.FieldByName('TC_PL_Date').Value:=qry_CO.FieldByName('ExFty_Date').Value;
    if qry_CO.FieldByName('CO_Createdate').IsNull then
        qry_CO.FieldByName('CO_Createdate').Value := formatdatetime('yyyy/MM/dd',date);

    btnsave.Enabled:=true;
    btncancel.Enabled:=true;
    DBGridEh1.FieldColumns['Customs_Date'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_RCV_From'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_Apply_Date'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_Return_Org'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_Provide_Org'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_Kind_Form'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_Date'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_Send_Draf'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_Cust_CFM'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_RCV_OriDocz'].ButtonStyle:= cbsAuto;
    DBGridEh1.FieldColumns['CO_Inv_Date'].ButtonStyle:= cbsAuto;
end;

procedure TDoczCO.btnCancelClick(Sender: TObject);
begin
    qry_Ry.Active:=false;
    qry_CO.Active:=false;
    qry_CO.RequestLive:=false;
    qry_CO.CachedUpdates:=false;
    qry_CO.Active:=true;
end;

procedure TDoczCO.btndeleteClick(Sender: TObject);
begin
    {
    if qry_CO.FieldByName('CO_UserDate').Value + 3 < date then
    begin
        showmessage('You can not delete after 3 days.');
        abort;
    end;
    }

    if not qry_CO.FieldByName('CO_CFMID').IsNull then
    begin
        showmessage('Confirmed already. You can not modify or delete!!!');
        abort;
    end;

    if messageDlg('Are you sure to delete data???',mtwarning,[mbyes,mbno],0) = mryes then
    begin
        qry_CO.RequestLive:=true;
        qry_CO.CachedUpdates:=true;
        qry_CO.Edit;
        qry_CO.FieldByName('CO_YN').Value:= '0';

        btnsave.Enabled:=true;
        btncancel.Enabled:=true;
    end
    else abort;
end;

procedure TDoczCO.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if qry_CO.FieldByName('CO_YN').Value = '0' then
        DBGridEh1.Canvas.Font.Color:=clred;

    if not qry_CO.FieldByName('CO_CFMID').IsNull then
        DBGridEh1.Canvas.Font.Color:=clblue;

end;

procedure TDoczCO.FormCreate(Sender: TObject);
begin
  PageControl1.TabIndex:=0;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT GETDATE() NDate');
    active:=true;
    NDate:=FieldByName('NDate').Value;
    DTP1.Date:=NDate-7;
    DTP2.Date:=NDate;
    DTP3.Date:=NDate-7;
    DTP4.Date:=NDate;
    dtpLiqui1.Date:=NDate-7;
    dtpLiqui2.Date:=NDate;

    sql.Clear;
    sql.Add('SELECT TypeForm FROM ShipCountry GROUP BY TypeForm');
    active:=true;
    first;
    cboKindForm.Clear;
    while not eof do
    begin
      DBGridEh1.FieldColumns['CO_Kind_Form'].PickList.Add(query1.fieldbyName('TypeForm').asString);
      cboKindForm.Items.Add(query1.fieldbyName('TypeForm').asString);
      next;
    end;
  end;
end;

procedure TDoczCO.btnSaveClick(Sender: TObject);
var i:integer;
    j:variant;
begin
  try
    qry_excel.Active:=false;
    qry_Ry.Active:=false;
    qry_CO.first;
    for i:=1 to qry_CO.RecordCount do
      begin
        case qry_CO.updatestatus of
          usmodified:
          begin
             if not qry_CO.FieldByName('CO_CFMID').IsNull then
             begin
                showmessage('Confirmed already. You can not modify or delete!!!');
                exit;
             end;

             if (not qry_CO.FieldByName('CO_UserID').IsNull) and (qry_CO.FieldByName('CO_UserID').Value <> main.Edit1.Text) then
             begin
                showmessage('It not belong yours, you can not modify or delete!!!');
                exit;
             end;
            { if MainForm.Edit3.Text='192.168.0.1' then
             begin
                with Query1 do
                begin
                  Close;
                  sql.Clear;
                  sql.Add('SELECT COUNT(sl.ID)Row FROM Shipping_LimitDocCO sl');
                  sql.Add('WHERE sl.ID='''+MainForm.Edit1.Text+''' ');
                  sql.Add('  AND CHARINDEX('''+qry_Co.FieldByName('CUSTID').AsString+''',sl.CustID)>0');
                  Open;
                  if FieldByName('Row').Value=0 then
                  begin
                    Close;
                    sql.Clear;
                    sql.Add('SELECT COUNT(sl.ID)Row FROM Shipping_LimitDocCO sl');
                    sql.Add('LEFT JOIN ShipCountry sc ON sc.CountryID = sl.Country');
                    sql.Add('WHERE sl.ID='''+MainForm.Edit1.Text+''' AND memo='''+qry_Co.FieldByName('COUNTRYEN').AsString+'''');
                    Open;
                    if FieldByName('Row').Value=0 then
                    begin
                      showmessage('It not belong yours, you can not modify or delete!!!');
                      exit;
                    end;
                  end;
                end;
             end; }
             if qry_CO.FieldByName('CO_YN').Value = '0' then
             begin
                  with query1 do
                  begin
                      active:=false;
                      sql.Clear;
                      sql.Add('UPDATE Ship_Booking SET');

                      sql.Add('      CO_Vessel =NULL');
                      sql.Add('      ,CO_Voyage = NULL');
                      sql.Add('      ,Customs_No = NULL');
                      sql.Add('      ,Customs_Date = NULL');
                      sql.Add('      ,CO_RCV_From = NULL');
                      sql.Add('      ,CO_Apply_Date =NULL');
                      sql.Add('      ,CO_Return_Org = NULL');
                      sql.Add('      ,CO_Provide_Org = NULL');
                      sql.Add('      ,CO_Kind_Form =NULL');
                      sql.Add('      ,CO_No = NULL');
                      sql.Add('      ,CO_Date = NULL');
                      sql.Add('      ,CO_Send_Draf = NULL');
                      sql.Add('      ,CO_Cust_CFM = NULL'); 
                      sql.Add('      ,CO_Remark = NULL');
                      sql.Add('      ,CO_CreateDate =NULL');
                      sql.Add('      ,CO_ReferenceNo =NULL');
                      sql.Add('      ,CO_Origin= NULL');
                      sql.Add('      ,CO_UserID = NULL ');
                      sql.Add('      ,CO_UserDate = NULL');
                      sql.Add(' WHERE INV_NO ='''+qry_CO.FieldByName('INV_NO').Value+''' ');
                      execsql;
                  end;
             end
             else
             begin
                 qry_CO.edit;
                 qry_CO.FieldByName('CO_UserID').Value:= Main.Edit1.Text;
                 qry_CO.FieldByName('CO_YN').Value:= '1';
                 UpdateSQL1.apply(ukmodify);
             end;
           end;
        end;
       qry_CO.next;
      end;

    qry_CO.active:=false;
    qry_CO.cachedupdates:=false;
    qry_CO.requestlive:=false;
    qry_CO.active:=true;
    Qry_INV.Active:=False;
   
  except
    Messagedlg('Error, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;
  IF J<>' ' THEN qry_CO.Locate('INV_NO',J,[]) ;

end;

procedure TDoczCO.Excel1Click(Sender: TObject);
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
      ProgressBar1.Position:=0;
      ProgressBar1.Max:=qry_excel.RecordCount;
      ShowProgress.Visible:=true;
      ShowProgress.Refresh;

      WorkBook:=eclApp.workbooks.Add;
      xlSheet := workbook.Worksheets['sheet1'];
      xlSheet.Name:='Payment';

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
      ProgressBar1.Position:=ProgressBar1.Position+1;
      ProgressBar1.Refresh;
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

procedure TDoczCO.btnImport_CusClick(Sender: TObject);
begin
    Import_Customs:=TImport_Customs.create(self);
    Import_Customs.show;
end;

procedure TDoczCO.btnImport_HSClick(Sender: TObject);
begin
   Import_HSCode:=TImport_HSCode.create(self);
   Import_HSCode.show;
end;

function StringToCaseSelect (Selector : string; CaseList: array of string): Integer;
var cnt: integer;
begin
    Result:=-1;
    for cnt:=0 to Length(CaseList)-1 do
    begin
    if CompareText(Selector, CaseList[cnt]) = 0 then
    begin
       Result:=cnt;
       Break;
     end;
   end;
end;

procedure TDoczCO.btnPrintClick(Sender: TObject);
var str_pairs,FOB_Amount:string;
    i:integer;
begin
  if qry_Co.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

  //------------------------------Form TR---------------------------------------

  if qry_Co.FieldByName('CO_Kind_Form').Value ='TR' then
  begin
      FormCO_TR_Print:=TFormCO_TR_Print.Create(nil);

      FormCO_TR_Print.query1.Active:=false;
      FormCO_TR_Print.query1.Active:=true;
      str_pairs:= ConvertToWords(FormCO_TR_Print.query1.fieldbyName('Pairs').Value,false);
      FormCO_TR_Print.QRLabel37.Caption:= upperCase(str_pairs) + 'PAIRS ONLY';

      FormCO_TR_Print.quickrep1.prepare;
      FormCO_TR_Print.quickrep1.preview;
      FormCO_TR_Print.Free;
  end;

  //------------------------------Form VC---------------------------------------

  if qry_Co.FieldByName('CO_Kind_Form').Value ='VC' then
  begin
      FormCO_VC_Print:=TFormCO_VC_Print.Create(nil);

      FormCO_VC_Print.query1.Active:=false;
      FormCO_VC_Print.query1.Active:=true;
      str_pairs:= ConvertToWords(FormCO_VC_Print.query1.fieldbyName('Pairs').Value,false);
      FOB_Amount:= ConvertToWords(FormCO_VC_Print.query1.fieldbyName('Amount').Value,true);

      FormCO_VC_Print.QRLabel37.Caption:= upperCase(str_pairs) + 'PAIRS ONLY';
      FormCO_VC_Print.QRLabel40.Caption:= 'SAY : ' + upperCase(FOB_Amount);
      FormCO_VC_Print.QRLabel10.Caption:= 'VN-CL ' + rightstr(formatdatetime('yyyy',date),2) + '/02/';

      if qry_Ry.RecordCount > 1 then
      begin
         FormCO_VC_Print.QRLabel_STT.Caption:='2/';
         FormCO_VC_Print.qrlabel_cust.Caption:= qry_Ry.FieldByName('CUSTORDNO').Value + ' OR...';
         FormCO_VC_Print.qrlabel_PO.Caption:= qry_Ry.FieldByName('PO').Value + ' OR...';
         FormCO_VC_Print.qrlabel_Article.Caption:= qry_Ry.FieldByName('ARTICLE').Value + ' OR...';
      end
      else
      begin
         FormCO_VC_Print.QRLabel_STT.Caption:='';
         FormCO_VC_Print.qrlabel_cust.Caption:= qry_Ry.FieldByName('CUSTORDNO').Value;
         FormCO_VC_Print.qrlabel_PO.Caption:= qry_Ry.FieldByName('PO').Value;
         FormCO_VC_Print.qrlabel_Article.Caption:= qry_Ry.FieldByName('ARTICLE').Value;
      end;

      FormCO_VC_Print.QRMemo1.Lines.Clear;
      for i:=1 to qry_Ry.RecordCount do
      begin
         FormCO_VC_Print.QRMemo1.Lines.Add(qry_Ry.FieldByName('PO').Value + '    ' + qry_Ry.FieldByName('CUSTORDNO').Value + '       ' + qry_Ry.FieldByName('ARTICLE').Value);
      end;

      FormCO_VC_Print.quickrep1.prepare;
      FormCO_VC_Print.quickrep1.preview;
      FormCO_VC_Print.Free;
  end;

  //------------------------------Form AJ---------------------------------------
  
  if qry_Co.FieldByName('CO_Kind_Form').Value ='AJ' then
  begin
      FormCO_AJ_Print:=TFormCO_AJ_Print.Create(nil);

      FormCO_AJ_Print.query1.Active:=false;
      FormCO_AJ_Print.query1.Active:=true;

      //showmessage(qry_Ry.FieldByName('PO').Value + chr(9) + qry_Ry.FieldByName('Article').Value);

      FormCO_AJ_Print.QRMemo1.Lines.Clear;
      for i:=1 to qry_Ry.RecordCount do
      begin
         FormCO_AJ_Print.QRMemo1.Lines.Add(qry_Ry.FieldByName('PO').Value + '          ' + qry_Ry.FieldByName('Article').Value + '           ' + qry_Co.FieldByName('CO_HSCode').Value + '                       ' + qry_Co.FieldByName('CO_Origin').Value + '                      ' + qry_Ry.FieldByName('Pairs').AsString + ' PRS');
         qry_Ry.Next;
      end;

      FormCO_AJ_Print.quickrep1.prepare;
      FormCO_AJ_Print.quickrep1.preview;
      FormCO_AJ_Print.Free;
  end;

  //------------------------------Form ANNZ-------------------------------------
  
  if qry_Co.FieldByName('CO_Kind_Form').Value ='AANZ' then
  begin
      FormCO_ANNZ_Print:=TFormCO_ANNZ_Print.Create(nil);

      //FormCO_ANNZ_Print.query1.Active:=false;
      //FormCO_ANNZ_Print.query1.Active:=true;

     // FormCO_ANNZ_Print.qrlabel_ref.Caption:=rightstr(formatdatetime('yyyy',date),2) + '/02/' + qry_Co.FieldByName('CO_ReferenceNo').Value;

      FormCO_ANNZ_Print.quickrep1.prepare;
      FormCO_ANNZ_Print.quickrep1.preview;
      FormCO_ANNZ_Print.Free;
  end;
end;

procedure TDoczCO.Confirmdata(Sender: TObject);
begin
  with query1 do
  begin
      active:=false;
      sql.Clear;
      sql.Add('update Ship_Booking set');
      sql.Add('         CO_CFMID='''+Main.edit1.text+''' ');
      sql.Add('        ,Co_CFMDate=getdate()');
      sql.Add('where Inv_no='''+qry_CO.FieldByName('Inv_no').AsString+''' ');
      execsql;
  end;
end;

procedure TDoczCO.Confirm1Click(Sender: TObject);
var j:variant;
    i:integer;
    bm:TBookmark;
    bookMarkList:TBookmarkListEh;
begin
   if messageDlg('Are you sure to confirm for this information?',mtwarning,[mbyes,mbno],0)= mrNo then
    abort;

   j:=qry_CO.FieldByName('Inv_no').AsString;

   if DBGridEh1.SelectedRows.Count > 0 then
   begin
        qry_Co.DisableControls;
        bm:=qry_Co.GetBookmark;
        bookMarkList:=DBGridEh1.SelectedRows;
        try
          for i:=0 to bookMarkList.Count-1 do
          begin
            qry_Co.GotoBookmark(pointer(bookMarkList[i]));
            if not qry_CO.FieldByName('Co_CFMID').IsNull then

            else if qry_CO.FieldByName('CO_UserID').Value <> main.Edit1.Text then

            else if qry_CO.FieldByName('Customs_No').IsNull then

            else if qry_CO.FieldByName('Customs_Date').IsNull then

            else if qry_CO.FieldByName('HS_Code').AsString<>'' then

            else if(qry_CO.FieldByName('CO_Provide_Org').Value <> 'No Need') and(qry_CO.FieldByName('CO_No').IsNull) then

            else if(qry_CO.FieldByName('CO_Provide_Org').Value <> 'No Need') and(qry_CO.FieldByName('CO_Date').IsNull) then
            
            else
              Confirmdata(nil);
          end;
        finally
        begin
          qry_Co.GotoBookmark(bm);
          qry_Co.FreeBookmark(bm);
          qry_Co.EnableControls;
        end;
        end;
   end else
   begin
      if not qry_CO.FieldByName('Co_CFMID').IsNull then
      begin
        showmessage('Confirmed already.');
        abort;
      end;

      if qry_CO.FieldByName('CO_UserID').Value <> main.Edit1.Text then
      begin
        showmessage('It not belong yours, you can not confirm!!!');
        abort;
      end;

      if qry_CO.FieldByName('Customs_No').IsNull then
      begin
          showmessage('Customs No can not empty.');
          abort;
      end;
      if qry_CO.FieldByName('Customs_Date').IsNull then
      begin
          showmessage('Customs Date can not empty.');
          abort;
      end;
      if qry_CO.FieldByName('HS_Code').AsString<>'' then
      begin
          showmessage('HS Code can not empty.');
          abort;
      end;

      if qry_CO.FieldByName('CO_Provide_Org').Value <> 'No Need' then
      begin
          if qry_CO.FieldByName('CO_No').IsNull then
          begin
            showmessage('CO No can not empty.');
            abort;
          end;
          if qry_CO.FieldByName('CO_Date').IsNull then
          begin
            showmessage('CO Date can not empty.');
            abort;
          end;
      end;
      Confirmdata(nil);
  end;
  qry_CO.Active:=false;
  qry_excel.Active:=false;
  qry_CO.Active:=true;
  Qry_INV.Active:=False;
  Qry_Message.Active:=False;
  Qry_Message.Active:=True;
  IF J<>' ' THEN qry_CO.Locate('INV_NO',J,[]) ;
end;

procedure TDoczCO.Unconfirm1Click(Sender: TObject);
var j:variant;
begin
  {Module1:='Shipping';
  FormID1:='SN53';
  Names1:='UnConfirm'; }

  PwdF:=TPwdF.Create(self);
  PwdF.Password.Clear;
  PwdF.ShowModal;

  if PwdF.PwdOK then
  begin
        j:=qry_CO.FieldByName('Inv_no').AsString;
        with query1 do
        begin
            active:=false;
            sql.Clear;
            sql.Add('update Ship_Booking set');
            sql.Add('         CO_CFMID=NULL ');
            sql.Add('         ,CO_CFMDate=NULL');
            sql.Add('where Inv_no='''+qry_CO.FieldByName('Inv_no').AsString+''' ');
            execsql;
        end;

        qry_CO.Active:=false;
        qry_excel.Active:=false;
        qry_CO.Active:=true;
        Qry_INV.Active:=False;
        Qry_Message.Active:=False;
        Qry_Message.Active:=True;

        IF J<>' ' THEN qry_CO.Locate('INV_NO',J,[]) ;
        showmessage('UnConfirmed success !!!');
   end
   else exit;
end;

procedure TDoczCO.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if not qry_CO.FieldByName('Co_CFMID').IsNull then
        DBGridEh2.Canvas.Font.Color:=clblue;
    if trim(qry_Ry.FieldByName('SPECID').AsString) = 'FX' then
    begin
      DBGridEh2.canvas.Font.Style:=[fsBold];
      DBGridEh2.canvas.Font.Size:=DBGridEh2.canvas.Font.Size-1;
    end;

end;

procedure TDoczCO.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
   if not qry_excel.FieldByName('CO_CFMID').IsNull then
        DBGridEh3.Canvas.Font.Color:=clblue;
end;

procedure TDoczCO.btnPrintInvClick(Sender: TObject);
begin
  if qry_CO.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;

  DoczCO_PrintInv_O1.Inv_No:=qry_Co.fieldByName('Inv_No').AsString;
  DoczCO_PrintInv_O:=TDoczCO_PrintInv_O.Create(nil);
  DoczCO_PrintInv_O.quickrep1.prepare;
  DoczCO_PrintInv_O.quickrep1.preview;
  DoczCO_PrintInv_O.Free;
end;

procedure TDoczCO.Pop_CoPopup(Sender: TObject);
begin
  Confirm1.Enabled:=false;
  Unconfirm1.Enabled:=False;
  MultiSelect1.Enabled:=false;
  UpLoadPDF1.Enabled:=false;
  DeletePDF1.Enabled:=false;
  DownLoadPDF1.Enabled:=false;
  if (qry_Co.Active) and (qry_Co.RecordCount > 0)and(not qry_Co.RequestLive) then
  begin
    MultiSelect1.Enabled:=true;
    UpLoadPDF1.Enabled:=True;
    if(DBGridEh1.SelectedRows.Count > 0)or (trim(qry_Co.FieldByName('CO_CFMID').AsString)='') then
      Confirm1.Enabled:=true;
    if (trim(qry_Co.FieldByName('CO_CFMID').AsString)<>'') then
      Unconfirm1.Enabled:=true;
    if (qry_Co.FieldByName('Bill_RCV_Org_CO_File').AsString<>'') then
     begin
      DeletePDF1.Enabled:=True;
      DownloadPDF1.Enabled:=True;
     end;
  end;
end;

procedure TDoczCO.PageControl1Change(Sender: TObject);
begin
  if(BTQueryOpen)and(PageControl1.ActivePage=All)and(not qry_CO.Active) then
  begin
    with qry_CO do
    begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT sb.INV_NO,im.Inv_Date,im.CUSTID,im.TO_WHERE as COUNTRYEN, sb.Kind_Loading, sb.Forwarder, sb.Sailing_Date,sb.ExFty_Date');
        sql.Add('       ,sb.CO_Vessel+'' ''+sb.CO_Voyage AS CO_Vessel,sb.CO_Voyage, sb.Customs_No, sb.Customs_Date, sb.CO_RCV_From,');
        sql.Add('       sb.CO_Apply_Date, sb.CO_Return_Org, sb.CO_Provide_Org, sb.CO_Kind_Form,');
        sql.Add('       sb.CO_No, sb.CO_Date, sb.CO_Send_Draf, sb.CO_Cust_CFM, sb.CO_Remark,');
        sql.Add('       sb.CO_UserID, sb.CO_UserDate,sb.CO_YN,sb.CO_RCV_OriDocz,sb.Bill_UserID, sb.Bill_CFMDate,sb.Bill_FCR_No,sb.Bill_FCR_Date,sb.Bill_RCV_Org_CO_File');
        sql.Add('       ,sb.CO_CreateDate,sb.CO_ReferenceNo,sb.CO_Origin,sb.CO_CFMID,sb.CO_CFMDate,sb.CO_Inv_Date');
        sql.Add('       ,im.RISK,im.SHIP_BY,im.FROM_WHERE,im.TO_WHERE,im.TOTAL_PAIRS,im.TOTAL_AMOUNT, im.TOTAL_AMOUNT_WORD,id.HS_Code,sb.VND_USD,sb.TC_PL_Date');
        sql.Add('FROM Ship_Booking sb LEFT JOIN INVOICE_M im ON im.INV_NO=sb.Inv_No ');
        sql.Add('LEFT JOIN (SELECT INV_NO,COUNT(INV_NO)HS_Code FROM INVOICE_D WHERE ISNULL(CO_HSCode,'''')=''''');
        sql.Add('           GROUP BY INV_NO )id ON id.INV_NO=im.INV_NO ');
        sql.Add('WHERE sb.CFMID IS NOT NULL ');
        if trim(edit2.Text)<>''then
            sql.Add(' and sb.Inv_no like '''+edit2.Text+'%'' ');
        if edit1.Text <> '' then
            sql.Add(' AND EXISTS( SELECT 1 FROM INVOICE_D id WHERE id.INV_NO=im.INV_NO AND id.RYNO LIKE ''' + Edit1.Text + '%'') ');
        if edit3.Text <> '' then
            sql.Add(' and im.TO_WHERE like '''+edit3.Text+'%'' ');
        if chkmass.Checked then
            sql.Add(' and im.Inv_Type = ''Mass Production'' ');
        if chkSample.Checked then
            sql.Add(' and im.Inv_Type = ''Sample Shoe'' ');
        if chkMine.Checked then
            sql.Add(' and sb.CO_UserID ='''+main.edit1.text+''' ');
        if chk2.Checked then
            sql.Add(' and sb.CO_CFMID is null ');
        if chk3.Checked then
            sql.Add(' and sb.Co_CFMID is not null ');
        if cboKindForm.Text <> '' then
            sql.Add(' and sb.CO_Kind_Form = '''+cboKindForm.Text+''' ');
        if chk1.Checked then
        begin
            SQL.Add(' and convert(varchar,sb.ExFty_Date,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        if chkInv.checked then
        begin
            SQL.Add(' and convert(varchar,im.Inv_Date,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
        end;
        if Edit4.Text <> '' then
        begin
          sql.Add('AND( EXISTS(SELECT 1 FROM INVOICE_D id2 WHERE id2.INV_NO = sb.INV_NO AND id2.PO = '''+Edit4.Text+''')');
          sql.Add('    OR EXISTS(SELECT 1 FROM INVOICE_SAMPLE is1 WHERE is1.Inv_No = im.INV_NO AND is1.Inv_No = ''' + Edit4.Text + '''))');
        end;
        if Edit5.Text <> '' then
          sql.Add('AND (im.CustID = '''+Edit5.Text+''' OR EXISTS(SELECT 1 FROM INVOICE_SAMPLE is1 WHERE is1.Inv_No = im.INV_NO AND is1.CustID = '''+Edit5.Text+'''))');
        Sql.Add('ORDER BY sb.INV_NO');
        active:=true;
    end;
  end else
  if(BTQueryOpen)and(PageControl1.ActivePage=Excel)and(not qry_excel.Active) then
  begin
    with qry_excel do
    begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT ROW_NUMBER() OVER (ORDER BY INVOICE.INV_NO) STT, INVOICE.* FROM (');
        sql.Add('   SELECT inv.INV_NO,im.INV_DATE,sb.ExFty_Date,sb.Kind_Loading, sb.Forwarder,sb.Sailing_Date');
        sql.Add('     ,sb.CO_Vessel, sb.CO_Voyage, sb.Customs_No, sb.Customs_Date, sb.CO_RCV_From,sb.CO_Apply_Date, sb.CO_Return_Org, sb.CO_Provide_Org, sb.CO_Kind_Form, sb.CO_No');
        sql.Add('     ,sb.CO_Date, sb.CO_Send_Draf, sb.CO_Cust_CFM, sb.CO_Remark,inv.CO_HSCode,sb.CO_RCV_OriDocz');
        sql.Add('		  ,inv.PO,im.CustID as MCUSTMER,upper(im.TO_WHERE) as COUNTRYEN, inv.RYNO, pd.CTS, pd.Pairs, pd.NW,pd.GW, pd.CBM');
        sql.Add('     ,'' '' AS Shipmode,im.inv_type,sb.CO_UserID,sb.CO_CFMID,sb.CO_Inv_Date,'' '' as SPECID,sb.VND_USD');
        sql.Add(' FROM INVOICE_D inv LEFT JOIN PACKING_D pd ON pd.INV_NO = inv.INV_NO AND pd.RYNO = inv.RYNO');
        sql.Add('	INNER JOIN Ship_Booking sb ON sb.INV_NO = inv.INV_NO');
        sql.Add('	INNER JOIN INVOICE_M im ON sb.INV_NO = im.INV_NO');
        sql.Add(' LEFT JOIN YWDD ON YWDD.DDBH=inv.RYNO');
			  sql.Add('	left join DDZL do on do.DDBH=YWDD.YSBH');
        sql.Add(' WHERE sb.CFMID IS NOT NULL --and do.DDZT <> ''C'' --and sb.CO_CFMID is not null'); //Close by V.Nghia 2019/01/07
        if edit2.Text <> '' then
            sql.Add(' and inv.INV_NO like '''+edit2.Text+'%'' ');
        if edit3.Text <> '' then
            sql.Add(' and upper(im.TO_WHERE) like '''+edit3.Text+'%'' ');
        if edit1.Text <> '' then
            sql.Add(' and inv.RYNO like '''+edit1.Text+'%'' ');
        if chk1.Checked then
        begin
            SQL.Add(' and convert(varchar,sb.ExFty_Date,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        if chkInv.checked then
        begin
            SQL.Add(' and convert(varchar,im.INV_DATE,111) between ');
            SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
        end;
        if chkmass.Checked then
            sql.Add(' and im.inv_type = ''Mass Production'' ');
        if chkSample.Checked then
            sql.Add(' and im.inv_type = ''Sample Shoe'' ');
        if chkMine.Checked then
            sql.Add(' and sb.CO_UserID ='''+main.edit1.Text+''' ');
        if Edit4.Text <> '' then
            sql.Add(' AND inv.PO = '''+Edit4.Text+'''');
        if Edit5.Text <> '' then
            sql.Add(' AND im.CUSTID = '''+Edit5.Text+'''');
        sql.Add(') INVOICE');
        //memo1.Lines:=sql;
        active:=true;
    end;
  end else
  if(BTQueryOpen)and(PageControl1.ActivePage=Liquidate)and(not Qry_Liqui.Active)then
  begin
    btnQryLiquiClick(nil);
  end;
end;

procedure TDoczCO.DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  if not qry_Co.Active then
    abort;
end;

procedure TDoczCO.qry_CoBeforeClose(DataSet: TDataSet);
begin
  qry_Ry.Active:=false;
  
  btnmodify.Enabled:=false;
  btndelete.Enabled:=false;
  btnsave.Enabled:=false;
  btncancel.Enabled:=false;
  DBGridEh1.FieldColumns['Customs_Date'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_RCV_From'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_Apply_Date'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_Return_Org'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_Provide_Org'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_Kind_Form'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_Date'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_Send_Draf'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_Cust_CFM'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_RCV_OriDocz'].ButtonStyle:= cbsNone;
  DBGridEh1.FieldColumns['CO_Inv_Date'].ButtonStyle:= cbsNone;
end;

procedure TDoczCO.MultiSelect1Click(Sender: TObject);
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

procedure TDoczCO.btn_QryINVClick(Sender: TObject);
begin
  with Qry_INV do
  begin
    Active:=False;
    Sql.Clear;
    Sql.Add('SELECT sb.INV_NO,sb.ExFty_Date,sb.Kind_Loading,sb.Forwarder,sb.Sailing_Date');
    Sql.Add('       ,sb.Customs_No,sb.Customs_Date,sb.CO_Provide_Org,sb.CO_Kind_Form,sb.CO_No,sb.CO_Date');
    Sql.Add('FROM Ship_Booking sb');
    Sql.Add('WHERE sb.CFMID IS NOT NULL AND sb.CO_CFMID IS NULL AND sb.Sailing_Date<GetDate()-7');
    Sql.Add('ORDER BY sb.INV_NO');
    Active:=True;
  end;
  Qry_INVRy.Open;
end;

procedure TDoczCO.FormShow(Sender: TObject);
begin
  Qry_Message.Open;
end;

procedure TDoczCO.Qry_MessageAfterOpen(DataSet: TDataSet);
begin
  if Qry_Message.RecordCount > 0 then
    Timer1.Enabled:=true;
end;

procedure TDoczCO.Qry_MessageBeforeClose(DataSet: TDataSet);
begin
  Timer1.Enabled:=False;
end;

procedure TDoczCO.Timer1Timer(Sender: TObject);
begin
  if lblError.Visible=true then
      lblError.Visible:=false
   else
      lblError.Visible:=true ;
end;

procedure TDoczCO.DBG_INVRyGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if trim(qry_Ry.FieldByName('SPECID').AsString) = 'FX' then
  begin
    DBG_INVRy.canvas.Font.Style:=[fsBold];
    DBG_INVRy.canvas.Font.Size:=DBG_INVRy.canvas.Font.Size-1;
  end;
end;

procedure TDoczCO.btnQryLiquiClick(Sender: TObject);
begin
  with Query1 do
  begin
    Active:=False;
    Sql.Clear;
    Sql.Add('If OBJECT_ID(''tempdb..#TempSB'') IS NOT NULL DROP TABLE #TempSB');
    Sql.Add('SELECT sb.INV_NO,sc.CountryID,im.TO_WHERE,sb.Customs_No,sb.Sailing_Date,sb.CO_Kind_Form');
    Sql.Add('			,CASE WHEN sb.CO_Provide_Org=''No Need'' THEN sb.CO_Provide_Org ELSE NULL END CO_Provide_Org');
    Sql.Add('INTO #TempSB');
    Sql.Add('FROM Ship_Booking sb');
    Sql.Add('LEFT JOIN INVOICE_M im ON im.INV_NO=sb.INV_NO');
    Sql.Add('LEFT JOIN ShipCountry sc ON sc.Memo=im.TO_WHERE');
    sql.Add('WHERE sb.CFMID IS NOT NULL AND sb.Customs_No IS NOT NULL ');
    if Trim(edt_CustomNo.Text)<>'' then
      sql.Add(' AND sb.Customs_No like '''+Trim(edt_CustomNo.Text)+'%'' ');
    if Trim(Edit2.Text)<>''then
      sql.Add(' AND sb.Inv_no like '''+Trim(Edit2.Text)+'%'' ');
    if Trim(edit1.Text)<>'' then
      sql.Add(' AND EXISTS( SELECT 1 FROM INVOICE_D id WHERE id.INV_NO=im.INV_NO AND id.RYNO LIKE'''+Trim(Edit1.Text)+'%'') ');
    if Trim(edit3.Text)<>'' then
      sql.Add(' AND im.TO_WHERE like '''+Trim(edit3.Text)+'%'' ');
    if chkmass.Checked then
      sql.Add(' AND im.Inv_Type = ''Mass Production'' ');
    if chkSample.Checked then
      sql.Add(' AND im.Inv_Type = ''Sample Shoe'' ');
    if chkMine.Checked then
      sql.Add(' AND sb.CO_UserID ='''+main.edit1.Text+''' ');
    if chk2.Checked then
      sql.Add(' AND sb.CO_CFMID is null ');
    if chk3.Checked then
      sql.Add(' AND sb.Co_CFMID is not null ');
    if cboKindForm.Text<>'' then
      sql.Add(' AND sb.CO_Kind_Form = '''+cboKindForm.Text+''' ');
    if chk1.Checked then
    begin
      SQL.Add(' AND convert(varchar,sb.ExFty_Date,111) between ');
      SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    end;
    if chkInv.checked then
    begin
      SQL.Add(' AND convert(varchar,im.Inv_Date,111) between ');
      SQL.Add(' '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    end;
    if cboLiquiDate.Text='Sailing Date' then
    begin
      sql.Add('       AND CONVERT(VARCHAR,sb.Sailing_Date,111) BETWEEN');
      sql.Add('       '''+FormatDateTime('yyyy/MM/dd',dtpLiqui1.Date)+''' and '''+FormatDateTime('yyyy/MM/dd',dtpLiqui2.Date)+'''');
    end;
    if Trim(Edit4.Text)<>'' then
    begin
      sql.Add('AND( EXISTS(SELECT 1 FROM INVOICE_D id2 WHERE id2.INV_NO=sb.INV_NO AND id2.PO='''+Trim(Edit4.Text)+''')');
      sql.Add('    OR EXISTS(SELECT 1 FROM INVOICE_SAMPLE is1 WHERE is1.Inv_No=im.INV_NO AND is1.Inv_No='''+Trim(Edit4.Text)+'''))');
    end;
    if Trim(Edit5.Text)<>'' then
      sql.Add('AND (im.CustID='''+Trim(Edit5.Text)+''' OR EXISTS(SELECT 1 FROM INVOICE_SAMPLE is1 WHERE is1.Inv_No=im.INV_NO AND is1.CustID='''+Trim(Edit5.Text)+'''))');
    ExecSQL;

    Sql.Clear;
    Sql.Add('If OBJECT_ID(''tempdb..#HSCode'') IS NOT NULL DROP TABLE #HSCode');
    Sql.Add('SELECT invd.INV_NO,invd.RYNO,invd.CO_HSCode,invd.PAIRS INTO #HSCode');
    Sql.Add('FROM INVOICE_D invd WHERE EXISTS(Select 1 From #TempSB Where INV_NO=invd.INV_NO)');
    ExecSQL;
  end;

  with Qry_Liqui do
  begin
    Active:=False;
    Sql.Clear;
    Sql.Add('SELECT ROW_NUMBER() OVER (ORDER BY tsb.INV_NO) STT,tsb.INV_NO,tsb.CountryID,tsb.TO_WHERE,tsb.Customs_No,tsb.Sailing_Date,tsb.CO_Provide_Org,tsb.CO_Kind_Form');
    Sql.Add('			,cast((select a.CO_HSCode+''; ''from( select CO_HSCode from #HSCode');
    Sql.Add('				where INV_NO=sb.INV_NO');
    Sql.Add('				group by CO_HSCode)a for xml path(''''))as varchar(100)) HSCode');
    Sql.Add('			,hs.PAIRS,sb.ReceivedDate, sb.ReleaseDate, sb.Liqui_Remark,sb.Liqui_UserID, sb.Liqui_UserDate');
    Sql.Add('FROM #TempSB tsb');
    Sql.Add('LEFT JOIN Ship_Booking sb ON sb.INV_NO=tsb.INV_NO');
    Sql.Add('LEFT JOIN (Select INV_NO,Sum(PAIRS) PAIRS From #HSCode Group by INV_NO) hs ON hs.INV_NO=tsb.INV_NO');
    Sql.Add('WHERE 1=1');
    if cboLiquiDate.Text='Date Received' then
    begin
      sql.Add('       AND CONVERT(VARCHAR,sb.ReceivedDate,111) BETWEEN');
      sql.Add('       '''+FormatDateTime('yyyy/MM/dd',dtpLiqui1.Date)+''' and '''+FormatDateTime('yyyy/MM/dd',dtpLiqui2.Date)+'''');
    end;
    if cboLiquiDate.Text='Date Release' then
    begin
      sql.Add('       AND CONVERT(VARCHAR,sb.ReleaseDate,111) BETWEEN');
      sql.Add('       '''+FormatDateTime('yyyy/MM/dd',dtpLiqui1.Date)+''' and '''+FormatDateTime('yyyy/MM/dd',dtpLiqui2.Date)+'''');
    end;
    Sql.Add('ORDER BY tsb.INV_NO');
    Active:=True;
  end;

end;

procedure TDoczCO.Qry_LiquiAfterOpen(DataSet: TDataSet);
begin
  if Qry_Liqui.RecordCount>0 then
  begin
    btnModify_Liqui.Enabled:=True;
    with Qry_LiquiS do
    begin
      Active:=False;
      Sql.Clear;
      Sql.Add('SELECT HS.INV_NO,HS.RYNO,HS.CO_HSCode,HS.PAIRS FROM #HSCode HS WHERE HS.INV_NO=:INV_NO');
      Active:=True;
    end;
  end;
end;

procedure TDoczCO.Qry_LiquiBeforeClose(DataSet: TDataSet);
begin
  btnSave_Liqui.Enabled:=False;
  btnCancel_Liqui.Enabled:=False;
  DBG_Liqui.FieldColumns['ReceivedDate'].ButtonStyle:=cbsNone;
  DBG_Liqui.FieldColumns['ReleaseDate'].ButtonStyle:=cbsNone;
  DBG_Liqui.FieldColumns['HSCode'].ButtonStyle:=cbsEllipsis;
end;

procedure TDoczCO.btnModify_LiquiClick(Sender: TObject);
begin
  with Qry_Liqui do
  begin
    RequestLive:=True;
    CachedUpdates:=True;
    Edit;
  end;
  btnSave_Liqui.Enabled:=True;
  btnCancel_Liqui.Enabled:=True;
  DBG_Liqui.FieldColumns['ReceivedDate'].ButtonStyle:=cbsAuto;
  DBG_Liqui.FieldColumns['ReleaseDate'].ButtonStyle:=cbsAuto;
  DBG_Liqui.FieldColumns['HSCode'].ButtonStyle:=cbsNone;
end;

procedure TDoczCO.btnSave_LiquiClick(Sender: TObject);
var inv:string;
begin
  with Qry_Liqui do
  begin
    inv:=FieldByName('INV_NO').AsString;
    Try
      Qry_LiquiS.Close;
      First;
      While Not Eof do
      Begin
        Case UpdateStatus of
          usModified:
            begin
              Edit;
              FieldByName('Liqui_UserID').AsString:=Main.edit1.Text;
              Up_Liqui.Apply(ukModify);
            end;
        End;
        Next;
      End;
      Active:=False;
      CachedUpdates:=False;
      RequestLive:=False;
      Active:=True;
      if inv <> '' then
        Locate('INV_NO',inv,[]);
    Except
      MessageDlg('Error. Can not save data !!!',mtError,[mbYes],0);
    End;
  end;
end;

procedure TDoczCO.btnCancel_LiquiClick(Sender: TObject);
begin
  with Qry_Liqui do
  begin
    RequestLive:=False;
    CachedUpdates:=False;
  end;
  Qry_Liqui.Close;
  Qry_Liqui.Open;
end;

procedure TDoczCO.DBG_LiquiColumns5EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  pnl_LiquiS.Visible:=True;
end;

procedure TDoczCO.pnl_LiquiSHideClick(Sender: TObject);
begin
  pnl_LiquiS.Visible:=False;
end;

procedure TDoczCO.btn_Excel_LiduiClick(Sender: TObject);
var eclApp,workBook,xlSheet: OleVariant;
    i,j: Integer;
begin
  try
    eclApp:=CreateOleObject('Excel.Application');
  except
    Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    xlSheet:=workbook.Worksheets.Item[1];
    xlSheet.Select;
    for i:=0 to DBG_Liqui.Columns.Count-3 do
    begin
      eclApp.Cells(1,i+1):=DBG_Liqui.Columns[i].Title.Caption;
      if Qry_Liqui.FieldByName(DBG_Liqui.Columns[i].FieldName) is TStringField then
        eclApp.Columns[i+1].NumberFormat:='@';
    end;
    Qry_Liqui.First;
    i:=2;
    while not Qry_Liqui.Eof do
    begin
      for j:=0 to DBG_Liqui.Columns.Count-3 do
        eclApp.Cells(i,j+1):=DBG_Liqui.Fields[j].Value;
      Inc(i);
      Qry_Liqui.Next;
    end;
    eclapp.columns.autofit;
    eclApp.ActiveSheet.Rows[1].WrapText:=True;
    eclApp.ActiveSheet.Rows[1].VerticalAlignment:=2;
    eclApp.ActiveSheet.Rows[1].HorizontalAlignment:=3;
    eclApp.ActiveSheet.Columns['F'].ColumnWidth:=18;
    eclApp.ActiveSheet.Columns['K'].ColumnWidth:=14;
    eclApp.ActiveSheet.Columns['L'].ColumnWidth:=14;
    eclApp.Range['A1:M'+IntToStr(i-1)].Font.Size:=11;
    eclApp.Range['A1:M'+IntToStr(i-1)].Borders.weight:=2;

    ShowMessage('Succeed');
    eclApp.Visible:=True;
  except
    on F:Exception do
      ShowMessage(F.Message);
  end;
end;

procedure TDoczCO.DBG_LiquiTitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
begin
  if (not Qry_Liqui.Active)or(Qry_Liqui.RecordCount<2)or(Qry_Liqui.RequestLive) then
    abort;
end;


procedure TDoczCO.Pop_LiquiPopup(Sender: TObject);
begin
  btn_Excel_Lidui.Enabled:=False;
  if (Qry_Liqui.Active)and(Qry_Liqui.RecordCount>0) then
    btn_Excel_Lidui.Enabled:=True;
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
  DisconnectShare('W:');
  if (MakeDriveMapping('W:',Copy(FileAddress,0,Length(FileAddress)-1), UserLog, PassLog,False) = 0) then
  begin
    ShowMessage('Pls, Call IT check Folder "'+FileAddress+'" on server fisrt (Error 0.96) !');
    Abort;
  end;
end;


procedure TDoczCO.UpLoadPDF1Click(Sender: TObject);
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

  if (ExtractFileName(OpenDialog1.FileName)<> qry_Co.FieldByName('Bill_RCV_Org_CO_File').AsString) and (FileExists(FileAddress+ExtractFileName(OpenDialog1.FileName))) then
  begin
    ShowMessage('Cannot Upload! Duplicate File Name');
    Abort;
  end;
  try
    if trim(qry_Co.FieldByName('Bill_RCV_Org_CO_File').AsString)<>'' then
    begin
      DeleteFile(FileAddress+qry_Co.FieldByName('Bill_RCV_Org_CO_File').AsString);
      if FileExists(FileAddress+qry_Co.FieldByName('Bill_RCV_Org_CO_File').AsString) then
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

  with Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add('Update Ship_Booking Set Bill_RCV_Org_CO_File='''+ExtractFileName(OpenDialog1.FileName)+''' ');
    sql.Add('Where INV_NO='''+qry_Co.FieldByName('INV_NO').AsString+'''');
    ExecSQL;
  end;
  ID:=qry_Co.FIeldByName('INV_NO').AsString;
  qry_Co.Close;
  qry_Co.Open;
  qry_Co.Locate('INV_NO',ID,[]);
  DisconnectShare('W:');
  ShowMessage('Upload Success!');
end;

procedure TDoczCO.DownLoadPDF1Click(Sender: TObject);
begin
   Check_Error;
   if not SaveDialog2.Execute then
      Abort;
   CopyFile(PChar(FileAddress+qry_Co.FieldByName('Bill_RCV_Org_CO_File').AsString),PChar(SaveDialog2.FileName+'.PDF'),  false);
   ShowMessage('Download Success');
end;

procedure TDoczCO.DeletePDF1Click(Sender: TObject);
var ID: Variant;
begin
    Check_Error;
    if MessageDlg('Do You Want Delete PDF File?',mtwarning,[mbyes,mbno],0) = mryes then
    begin
      DeleteFile(FileAddress+qry_Co.FieldByName('Bill_RCV_Org_CO_File').AsString);
      with Query1 do
      begin
        Close;
        sql.Clear;
        sql.Add('Update Ship_Booking Set Bill_RCV_Org_CO_File=Null ');
        sql.Add('Where INV_NO='''+qry_Co.FieldByName('INV_NO').AsString+'''');
        ExecSQL;
      end;
    end;
    ID:=qry_Co.FIeldByName('INV_NO').AsString;
    qry_Co.Close;
    qry_Co.Open;
    qry_Co.Locate('INV_NO',ID,[]);
    DisconnectShare('W:');
    ShowMessage('Delete File Success!');
end;

procedure TDoczCO.mniMod_RYClick(Sender: TObject);
begin
  with qry_Ry do
  begin
    RequestLive:=True;
    CachedUpdates:=True;
    Edit;
  end;
  mniSav_RY.Enabled:=true;
  mniCan_RY.Enabled:=true;
  if qry_Ry.FieldByName('Inv_Type').AsString='CBY' then
    mniImport_HSCode.Enabled:=true
  else
    mniImport_HSCode.Enabled:=false;
  DBGridEh2.Columns[2].ButtonStyle:=cbsellipsis;
  DBGridEh2.Columns[16].ButtonStyle:=cbsellipsis;
end;

procedure TDoczCO.mniSav_RYClick(Sender: TObject);
begin
   try
    qry_Ry.First;
    while not qry_Ry.Eof do
    begin
      if qry_Ry.UpdateStatus=usModified then
      begin
        qry_Ry.Edit;
        Up_RY.Apply(ukModify);
      end;
      qry_Ry.Next;
    end;
    qry_Ry.Close;
    qry_Ry.RequestLive:=false;
    qry_Ry.CachedUpdates:=false;
    qry_Ry.Open;
    mniSav_RY.Enabled:=false;
    mniCan_RY.Enabled:=false;
    mniImport_HSCode.Enabled:=false;
  except
    on F:Exception do
      ShowMessage('Have wrong! Can not save data!'+#13+'-----'+#13+F.Message);
  end;
end;

procedure TDoczCO.mniCan_RYClick(Sender: TObject);
begin
  qry_Ry.Close;
  qry_Ry.Open;
  mniSav_RY.Enabled:=false;
  mniCan_RY.Enabled:=false;
  mniImport_HSCode.Enabled:=false;
end;

procedure TDoczCO.DBGridEh2EditButtonClick(Sender: TObject);
var CO_HSCode, Customs_No, INV_NO: String;
    i:integer;
begin
  if ((DBGridEh2.SelectedField.FieldName='CO_HSCode') or (DBGridEh2.SelectedField.FieldName='Customs_No')) then
  begin
    if DBGridEh2.SelectedField.FieldName='CO_HSCode' then  CO_HSCode:=inputbox('Please Input CO_HSCode','CO_HSCode:','');
    if DBGridEh2.SelectedField.FieldName='Customs_No' then Customs_No:=inputbox('Please Input Customs_No','Customs_No:','');
    if (CO_HSCode<>'') or (Customs_No <> '') then
    begin
      with DoczCO.qry_Ry do
      begin
        for i:=0 to DoczCO.qry_Ry.RecordCount-1 do
        begin
          Edit;
          if INV_NO='' then INV_NO:=FieldByName('INV_NO').AsString;
          if INV_NO=FieldByName('INV_NO').AsString then
          begin
            if DBGridEh2.SelectedField.FieldName='CO_HSCode' then FieldByName('CO_HSCode').Value:=CO_HSCode;
            if DBGridEh2.SelectedField.FieldName='Customs_No' then FieldByName('Customs_No').Value:=Customs_No;
          end;
          Next;
        end;
      end;
    end;
  end;
end;

procedure TDoczCO.mniImport_HSCodeClick(Sender: TObject);
var i:integer;
begin
  qry_RY.First;
  for i:=0 to qry_RY.RecordCount-1 do
  begin
    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select CBY_HSCode.HSCode');
      sql.Add('from CBY_Orders left join INVOICE_D');
      sql.Add('on CBY_Orders.workOrderId=INVOICE_D.RYNO');
      sql.Add('left join CBY_HSCode ON CBY_HSCode.Article = CBY_Orders.style');
      sql.Add('where INV_NO='''+qry_RY.FieldByName('INV_NO').Value+''' and RYNO='''+ qry_RY.FieldByName('RYNO').Value+'''');
      active:=true;
      if Qtemp.RecordCount>0 then
      begin
        qry_RY.Edit;
        qry_RY.FieldByName('CO_HSCode').Value:=Qtemp.FieldByName('HSCode').Value;
        qry_RY.Post;
      end;
    end;
    qry_RY.Next;
  end;
end;

end.
