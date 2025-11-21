unit Claim_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DBGridEhImpExp, ShellAPI, Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons,
  ExtCtrls, DB, DBTables, comobj, Zlib, Math, dateutils, Menus, Mask, DBCtrls,
  ComCtrls, StrUtils, IdMessage, jpeg, IdSMTP, Winsock, TeEngine, Series,
  TeeProcs, Chart, DbChart, Registry,fununit,IniFiles ;
  //LibXL



type
  TClaim_Report = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    Query_CR: TButton;
    Import: TButton;
    pnl_Import: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    ds_Import: TDataSource;
    dlgOpen1: TOpenDialog;
    edt_FacID: TEdit;
    edt_FacName: TEdit;
    qry_Temp: TQuery;
    updtsql1: TUpdateSQL;
    qry_Temp1: TQuery;
    qry_temp2: TQuery;
    lbl2: TLabel;
    lbl3: TLabel;
    edt_Article: TEdit;
    lbl4: TLabel;
    pm1: TPopupMenu;
    Insert1: TMenuItem;
    Delete1: TMenuItem;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    lbl7: TLabel;
    edt_PO: TEdit;
    dbg_CR: TDBGridEh;
    Excel1: TMenuItem;
    SetFactory1: TMenuItem;
    dlgSave1: TSaveDialog;
    pnl5: TPanel;
    DS_Inspection: TDataSource;
    pm_Inspection: TPopupMenu;
    DownloadFGTReport1: TMenuItem;
    DownloadBondingReport1: TMenuItem;
    DownloadCMAReport1: TMenuItem;
    PrintICReport1: TMenuItem;
    pb1: TProgressBar;
    pnl_IC: TPanel;
    pnl6: TPanel;
    Query_Inspection: TButton;
    edt_ArticleInspection: TEdit;
    lbl_Art: TLabel;
    edt_RYInspection: TEdit;
    lbl11: TLabel;
    qry_Import: TQuery;
    chk3: TCheckBox;
    dtp2: TDateTimePicker;
    dtp3: TDateTimePicker;
    lbl13: TLabel;
    lbl14: TLabel;
    dtp4: TDateTimePicker;
    dtp5: TDateTimePicker;
    lbl16: TLabel;
    cbb1: TComboBox;
    qry_Temp4: TQuery;
    chk_all: TCheckBox;
    lbl_all: TLabel;
    pnl7: TPanel;
    pnl8: TPanel;
    spl1: TSplitter;
    qry_CR: TQuery;
    up_CR: TUpdateSQL;
    ds_CR: TDataSource;
    edt_SO: TEdit;
    edt_Category: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    pnl_ProgressBar: TPanel;
    lbl_ProgressBar: TLabel;
    ProgressBar: TProgressBar;
    atncfld_CRClaim_ID: TAutoIncField;
    dtmfld_CRDate_Claim_Initiated: TDateTimeField;
    strngfld_CRFactory_Name: TStringField;
    strngfld_CRFac_ID: TStringField;
    strngfld_CRStatus: TStringField;
    strngfld_CRSO: TStringField;
    strngfld_CRReason: TStringField;
    strngfld_CRpri: TStringField;
    strngfld_CRARTICLE: TStringField;
    strngfld_CRCategory: TStringField;
    strngfld_CRProduction_Month: TStringField;
    crncyfld_CRFOB_Price_SIM: TCurrencyField;
    strngfld_CRGPS_PO_Num: TStringField;
    intgrfld_CRPO_Qty: TIntegerField;
    intgrfld_CRWH_Qty: TIntegerField;
    intgrfld_CRA_grades: TIntegerField;
    intgrfld_CRA_grades_After_Repair: TIntegerField;
    intgrfld_CRB_grades: TIntegerField;
    intgrfld_CRC_grades: TIntegerField;
    crncyfld_CRTotal_Cost: TCurrencyField;
    crncyfld_CRTotal_Cost_Internal: TCurrencyField;
    dtmfld_CRCompletion_Date: TDateTimeField;
    strngfld_CRFile_Name: TStringField;
    strngfld_CRDefect_Cat: TStringField;
    crncyfld_CRT2T3_Cost: TCurrencyField;
    strngfld_CRYN: TStringField;
    intgrfld_ImportNo: TIntegerField;
    dtmfld_ImportDate_Claim_Initiated: TDateTimeField;
    strngfld_ImportClaim: TStringField;
    strngfld_ImportClaim_Classification: TStringField;
    strngfld_ImportBrand: TStringField;
    strngfld_ImportFactory_Num: TStringField;
    strngfld_ImportStatus: TStringField;
    strngfld_ImportSO: TStringField;
    strngfld_ImportReason: TStringField;
    strngfld_Importpri: TStringField;
    strngfld_ImportArticle_num: TStringField;
    strngfld_ImportBusiness_Unit: TStringField;
    strngfld_ImportProduction_Month: TStringField;
    crncyfld_ImportFOB_Price_SIM: TCurrencyField;
    strngfld_ImportCurrency_not_USD: TStringField;
    strngfld_ImportGPS_PO_Num: TStringField;
    intgrfld_ImportPO_Qty: TIntegerField;
    intgrfld_ImportWH_Qty: TIntegerField;
    intgrfld_ImportA_grades: TIntegerField;
    intgrfld_ImportA_grades_After_Repair: TIntegerField;
    intgrfld_ImportB_grades: TIntegerField;
    intgrfld_ImportC_grades: TIntegerField;
    crncyfld_ImportaSL_Comm_TAC: TCurrencyField;
    crncyfld_ImportReimbursement: TCurrencyField;
    crncyfld_ImportTotal_Cost: TCurrencyField;
    strngfld_ImportaSIP_eLCS_Claim_Number: TStringField;
    dtmfld_ImportCompletion_Date: TDateTimeField;
    strngfld_ImportYN: TStringField;
    lbl1: TLabel;
    lbl8: TLabel;
    btn_SelectFile: TButton;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl15: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    lbl36: TLabel;
    lbl37: TLabel;
    strngfld_CRClaim: TStringField;
    strngfld_CRClaim_Classification: TStringField;
    strngfld_CRBrand: TStringField;
    strngfld_CRBusiness_Unit: TStringField;
    strngfld_CRCurrency_not_USD: TStringField;
    crncyfld_CRaSL_Comm_TAC: TCurrencyField;
    crncyfld_CRReimbursement: TCurrencyField;
    strngfld_CRaSIP_eLCS_Claim_Number: TStringField;
    strngfld_CRHQ_Claim_Manegement: TStringField;
    strngfld_CRCurrent_Stage: TStringField;
    strngfld_ImportHQ_Claim_Manegement: TStringField;
    strngfld_ImportCurrent_Stage: TStringField;
    lbl12: TLabel;
    lbl38: TLabel;
    qry_CRClaim_Pic: TStringField;
    Pan_ShowPic: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image1: TImage;
    btn_Claim_Ana: TButton;
    Qry_Inspection: TQuery;
    Query1: TQuery;
    pm2: TPopupMenu;
    Insert2: TMenuItem;
    Delete2: TMenuItem;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    Excel2: TMenuItem;
    Up_Inspec: TUpdateSQL;
    DBG_Inspection: TDBGridEh;
    Qry_InspectionDDBH: TStringField;
    Qry_InspectionQCDate: TDateTimeField;
    Qry_InspectionREMARK: TStringField;
    Qry_InspectionCheckQty: TIntegerField;
    Qry_InspectionXieMing: TStringField;
    Qry_InspectionPairs: TIntegerField;
    Qry_InspectionKHPO: TStringField;
    Qry_InspectionArticle: TStringField;
    Qry_Inspectionreport: TStringField;
    Qry_InspectionQCLevel: TStringField;
    Qry_InspectionQTY: TIntegerField;
    Qry_InspectionInspectorName: TStringField;
    Qry_InspectionDe_Level: TStringField;
    Qry_InspectionResult: TStringField;
    Qry_InspectionCGDate: TDateTimeField;
    Qry_InspectionManagerDate: TDateTimeField;
    Qry_InspectionCustDate: TDateTimeField;
    Qry_InspectionCGUserID: TStringField;
    Qry_InspectionManagerID: TStringField;
    Qry_InspectionCustID: TStringField;
    Qry_InspectionCategory: TStringField;
    Qry_InspectionChkPairs: TIntegerField;
    Qry_InspectionBA_Report: TBooleanField;
    Qry_InspectionQCLevelCus: TStringField;
    Qry_InspectionQtyCus: TIntegerField;
    Qry_InspectionRea_Qty: TIntegerField;
    Qry_InspectionFai_Qty: TIntegerField;
    Qry_InspectionResultCus: TStringField;
    Qry_InspectionDefect: TStringField;
    Qry_InspectionIns_Pass: TBooleanField;
    Qry_InspectionUSERID: TStringField;
    Qry_InspectionUSERDATE: TDateTimeField;
    Qry_InspectionYN: TStringField;
    Qry_InspectionReason: TStringField;
    Qry_InspectionLackQty: TIntegerField;
    Qry_InspectionCompleteDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImportClick(Sender: TObject);
    procedure pnl4Click(Sender: TObject);
    procedure Query_CRClick(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure dbg_CRDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Qry_InspectionAfterOpen(DataSet: TDataSet);
    procedure DBG_InspectionDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Query_InspectionClick(Sender: TObject);
    procedure qry_CRAfterOpen(DataSet: TDataSet);
    procedure qry_CRBeforeClose(DataSet: TDataSet);
    procedure qry_CRAfterScroll(DataSet: TDataSet);
    procedure qry_ImportAfterOpen(DataSet: TDataSet);
    procedure qry_ImportBeforeClose(DataSet: TDataSet);
    procedure SetFactory1Click(Sender: TObject);
    procedure Qry_InspectionAfterScroll(DataSet: TDataSet);
    procedure Qry_InspectionBeforeClose(DataSet: TDataSet);
    procedure btn_SelectFileClick(Sender: TObject);
    procedure dbg_CREditButtonClick(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure btn_Claim_AnaClick(Sender: TObject);
    procedure ClaimConn1Click(Sender: TObject);
    procedure Insert2Click(Sender: TObject);
    procedure Delete2Click(Sender: TObject);
    procedure Modify2Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure DBG_InspectionEditButtonClick(Sender: TObject);
    procedure Excel2Click(Sender: TObject);

  private
    { Private declarations }
    procedure ExportDefaultExcel(Query:TQuery);
  public
    AppDir:string;
    { Public declarations }
  end;

var
  Claim_Report: TClaim_Report;
  Level, IPFile, FileAddress, UserLog, PassLog, PO: string;

implementation

uses
  Factory_Claim1, Main1, Article_Claim1, ClaimAnalytics1, untClipboard, OrderList1;

{$R *.dfm}

procedure TClaim_Report.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TClaim_Report.FormDestroy(Sender: TObject);
begin
  Claim_Report := nil;
end;

procedure TClaim_Report.ImportClick(Sender: TObject);
begin
  pnl_Import.Visible := True;
end;

procedure TClaim_Report.pnl4Click(Sender: TObject);
begin
  pnl_Import.Visible := False;
  qry_Import.Active := False;
end;

procedure TClaim_Report.Query_CRClick(Sender: TObject);
begin
  if (Trim(edt_FacID.Text) = '') and (Trim(edt_FacName.Text) = '') and (Trim(edt_Article.Text) = '') and (Trim(edt_PO.Text) = '') and (chk_all.Checked = false) then
  begin
    ShowMessage('Please key in conditions filter data!');
    Abort;
  end;
  if (qry_CR.RequestLive) or (Save1.Enabled) then
  begin
    messagedlg('You have to save data Record of report first.', mtwarning, [mbyes], 0);
    abort;
  end;
  //
  with qry_CR do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('SELECT *');
    SQL.Add('FROM (select cr.Claim_ID  ');
    SQL.Add('   ,cr.Date_Claim_Initiated  ');
    SQL.Add('   ,cr.Claim ');
    SQL.Add('   ,cr.HQ_Claim_Manegement ');
    SQL.Add('   ,cr.Claim_Classification  ');
    SQL.Add('   ,cr.Brand ');
    SQL.Add('  	,fr.Factory_Name  ');
    SQL.Add('  	,fr.Fac_ID  ');
    SQL.Add('  	,cr.Status  ');
    SQL.Add('  	,cr.SO  ');
    SQL.Add('   ,cr.Current_Stage ');
    SQL.Add('  	,cr.Reason  ');                                                        
    SQL.Add('  	,cr.pri  ');
    SQL.Add('  	,xxzl.ARTICLE  ');
    SQL.Add('   ,cr.Business_Unit');
    SQL.Add('  	,xxzlkf.Category  ');
    SQL.Add('  	,cr.Production_Month  ');
    SQL.Add('  	,cr.FOB_Price_SIM  ');
    SQL.Add('   ,cr.Currency_not_USD  ');
    SQL.Add('  	,SUBSTRING(CONVERT(VARCHAR(255),(SELECT '', ''+ PO   ');
    SQL.Add('  				            FROM Claim_Report_PO  ');
    SQL.Add('  				            WHERE Claim_Report_PO.Claim_ID=cr.Claim_ID  ');
    SQL.Add('  				            FOR XML PATH(''''))),2,255) GPS_PO_Num  ');
    SQL.Add('  	,cr.PO_Qty  ');
    SQL.Add('  	,cr.WH_Qty  ');
    SQL.Add('  	,cr.A_grades  ');
    SQL.Add('  	,cr.A_grades_After_Repair  ');
    SQL.Add('  	,cr.B_grades  ');
    SQL.Add('  	,cr.C_grades  ');
    SQL.Add('   ,cr.aSL_Comm_TAC  ');
    SQL.Add('   ,cr.Reimbursement  ');
    SQL.Add('  	,cr.Total_Cost  ');
    SQL.Add('  	,cr.Total_Cost_Internal  ');
    SQL.Add('   ,cr.aSIP_eLCS_Claim_Number  ');
    SQL.Add('  	,cr.Completion_Date  ');
    SQL.Add('  	,cr.File_Name  ');
    SQL.Add('  	,cr.Defect_Cat  ');
    SQL.Add('  	,cr.T2T3_Cost  ');
    SQL.Add('  	,''''YN ,cr.Claim_Pic ');
    SQL.Add('  from Claim_Report cr  ');
    SQL.Add('  left join Factory_Record fr on fr.Fac_ID = cr.Factory_Num  ');
    SQL.Add('  left join xxzl on xxzl.ARTICLE = cr.Article_Num  ');
    SQL.Add('  left join XXZLKF on xxzlkf.XieXing = xxzl.XieXing and xxzlkf.SheHao = xxzl.SheHao ');
    SQL.Add('  group by cr.Claim_ID,cr.Date_Claim_Initiated,cr.Claim ,cr.HQ_Claim_Manegement ,cr.Claim_Classification  ,cr.Brand ,fr.Factory_Name,fr.Fac_ID,cr.Status,cr.SO,cr.Current_Stage ,cr.Reason,cr.pri,xxzl.ARTICLE ,cr.Business_Unit');
    SQL.Add('  ,xxzlkf.Category,cr.Production_Month,cr.FOB_Price_SIM,cr.Currency_not_USD,cr.PO_Qty,cr.WH_Qty,cr.A_grades  ,cr.A_grades_After_Repair,cr.B_grades,cr.C_grades,cr.aSL_Comm_TAC,cr.Reimbursement,cr.Total_Cost,cr.Total_Cost_Internal  ');
    SQL.Add('  ,cr.aSIP_eLCS_Claim_Number,cr.Completion_Date,cr.File_Name,cr.Defect_Cat ,cr.T2T3_Cost,cr.Claim_Pic ');
    SQL.Add('  ) A  ');
    SQL.Add('  WHERE 1=1  ');
    if edt_FacID.Text <> '' then
      SQL.Add('  AND A.Fac_ID like ''%'+edt_FacID.Text+'%''  ');
    if edt_FacName.Text <> '' then
      SQL.Add('  AND A.Factory_Name like ''%'+edt_FacName.Text+'%''  ');
    if edt_Article.Text <> '' then
      SQL.Add('  AND A.ARTICLE like ''%'+edt_Article.Text+'%''  ');
    if edt_SO.Text <> '' then
      SQL.Add('  AND A.SO like ''%'+ edt_SO.Text+'%''  ');
    if edt_Category.Text <> '' then
      SQL.Add('  AND A.Category like ''%'+edt_Category.Text+'%''  ');
    if edt_PO.Text <> '' then
      SQL.Add('  AND A.GPS_PO_Num like ''%'+ edt_PO.Text+'%''  ');
    if cbb1.Text = 'Date Initiated' then
    begin
      sql.add('   AND CONVERT(VARCHAR,A.Date_Claim_Initiated,111) BETWEEN  ');
      sql.add(' ''' + formatdatetime('yyyy/MM/dd', dtp4.date) + ''' AND ''' + formatdatetime('yyyy/MM/dd', dtp5.date) + ''' ');
    end;
    if cbb1.Text = 'Completion Date' then
    begin
      sql.add('   AND CONVERT(VARCHAR,A.Completion_Date,111) BETWEEN  ');
      sql.add(' ''' + formatdatetime('yyyy/MM/dd', dtp4.date) + ''' AND ''' + formatdatetime('yyyy/MM/dd', dtp5.date) + ''' ');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    Active := True;
  end;
end;

procedure TClaim_Report.Insert1Click(Sender: TObject);
begin
  with qry_CR do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Insert;
    dbg_CR.FieldColumns['Date_Claim_Initiated'].ReadOnly := False;
    dbg_CR.FieldColumns['Defect_Cat'].ReadOnly := False;
    dbg_CR.FieldColumns['Completion_Date'].ReadOnly := False;
    dbg_CR.FieldColumns['Fac_ID'].ButtonStyle := cbsEllipsis;
    dbg_CR.FieldColumns['ARTICLE'].ButtonStyle := cbsEllipsis;
  end;
  Modify1.Enabled := False;
  Delete1.Enabled := False;
  Excel1.Enabled := False;
  Save1.Enabled := True;
  Cancel1.Enabled := True;
end;

procedure TClaim_Report.Delete1Click(Sender: TObject);
begin
  with qry_CR do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
    FieldByName('YN').AsString := 'N';
  end;
  Insert1.Enabled := False;
  Modify1.Enabled := False;
  Excel1.Enabled := False;
  Save1.Enabled := True;
  Cancel1.Enabled := True;
end;

procedure TClaim_Report.Modify1Click(Sender: TObject);
begin
  with qry_CR do
  begin
    RequestLive := True;
    CachedUpdates := True;
    Edit;
    dbg_CR.FieldColumns['Date_Claim_Initiated'].ReadOnly := False;
    dbg_CR.FieldColumns['Defect_Cat'].ReadOnly := False;
    dbg_CR.FieldColumns['Completion_Date'].ReadOnly := False;
    dbg_CR.FieldColumns['Fac_ID'].ButtonStyle := cbsEllipsis;
    dbg_CR.FieldColumns['ARTICLE'].ButtonStyle := cbsEllipsis;
    dbg_CR.FieldColumns['Claim_Pic'].ButtonStyle := cbsEllipsis;
  end;
  Insert1.Enabled := False;
  Delete1.Enabled := False;
  Excel1.Enabled := False;
  Save1.Enabled := True;
  Cancel1.Enabled := True;
end;

procedure TClaim_Report.Save1Click(Sender: TObject);
var temp_PO, temp_Claim_ID: string;
    MS: TMemoryStream;
    bmp: TBitmap;
    Jpg: TJPEGImage;
begin
  try
    MS := TMemoryStream.Create;
    Qry_Inspection.Active := False;
    qry_CR.first;
    while not qry_CR.Eof do
    begin
      case qry_CR.updatestatus of
        usinserted:
          begin
            up_CR.Apply(ukinsert);
            temp_PO := '';
            temp_PO := qry_CR.FieldByName('GPS_PO_Num').AsString;
            while Pos(' ', temp_PO) > 0 do
            begin
              Delete(temp_PO, Pos(' ', temp_PO), 1);
            end;
            //
            with qry_Temp do
            begin
              Close;
              SQL.Clear;
              SQL.Add(' SELECT MAX(Claim_ID) Claim_ID FROM Claim_Report ');
              Active := True;
            end;
            temp_Claim_ID := qry_Temp.FieldByName('Claim_ID').AsString;
            //
            while Pos(',',temp_PO) > 0 do
            begin
              with qry_Temp do
              begin
                Close;
                SQL.Clear;
                SQL.Add(' INSERT INTO Claim_Report_Po(Claim_ID, PO, UseriD, UserDate, YN) VALUES (:Claim_ID, :PO, :UserID, GetDate(), 1)  ');
                Params.ParamByName('PO').AsString := Trim(Copy(temp_PO,0,Pos(',',temp_PO)-1));
                Params.ParamByName('Claim_ID').AsString := temp_Claim_ID;
                Params.ParamByName('UserID').AsString := main.Edit1.Text;
                ExecSQL;
              end;
              temp_PO := Copy(temp_PO,Pos(',',temp_PO)+1, Length(temp_PO));
            end;

            with qry_Temp do
            begin
              Close;
              SQL.Clear;
              SQL.Add(' INSERT INTO Claim_Report_Po(Claim_ID, PO, UseriD, UserDate, YN) VALUES (:Claim_ID, :PO, :UserID, GetDate(), 1)  ');
              Params.ParamByName('PO').AsString := Trim(temp_PO);
              Params.ParamByName('Claim_ID').AsString := temp_Claim_ID;
              Params.ParamByName('UserID').AsString := main.Edit1.Text;
              ExecSQL;
            end;
          end;
        usmodified:
          begin
            if qry_CR.FieldByName('YN').AsString = 'N' then
            begin
              up_CR.Apply(ukDelete);
              with qry_Temp do
              begin
                Close;
                SQL.Clear;
                SQL.Add(' Delete Claim_Report_PO Where Claim_ID = ''' + qry_CR.FieldByName('Claim_ID').AsString + ''' ');
                ExecSQL;
              end;
            end
            else
            begin
              up_CR.Apply(ukModify);
              temp_PO := '';
              temp_PO := qry_CR.FieldByName('GPS_PO_Num').AsString;

              with qry_Temp do
              begin
                Close;
                SQL.Clear;
                SQL.Add(' Delete Claim_Report_PO Where Claim_ID = ''' + qry_CR.FieldByName('Claim_ID').AsString + ''' ');
                ExecSQL;
              end;
              temp_Claim_ID := qry_CR.FieldByName('Claim_ID').AsString;

              while Pos(',', temp_PO) > 0 do
              begin
                with qry_Temp do
                begin
                  Close;
                  SQL.Clear;
                  SQL.Add(' INSERT INTO Claim_Report_Po(Claim_ID, PO, UseriD, UserDate, YN) VALUES (:Claim_ID, :PO, :UserID, GetDate(), 1)  ');
                  Params.ParamByName('PO').AsString := Trim(Copy(temp_PO, 0, Pos(',', temp_PO) - 1));
                  Params.ParamByName('Claim_ID').AsString := temp_Claim_ID;
                  Params.ParamByName('UserID').AsString := main.Edit1.Text;
                  ExecSQL;
                end;
                temp_PO := Copy(temp_PO, Pos(',', temp_PO) + 1, Length(temp_PO));
              end;

              with qry_Temp do
              begin
                Close;
                SQL.Clear;
                SQL.Add(' INSERT INTO Claim_Report_Po(Claim_ID, PO, UseriD, UserDate, YN) VALUES (:Claim_ID, :PO, :UserID, GetDate(), 1)  ');
                Params.ParamByName('PO').AsString := Trim(temp_PO);
                Params.ParamByName('Claim_ID').AsString := temp_Claim_ID;
                Params.ParamByName('UserID').AsString := main.Edit1.Text;
                ExecSQL;
              end;     

            end;
          end;
      end;
      qry_CR.next;
    end;
  except
   // Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;
  qry_CR.Active := False;
  qry_CR.CachedUpdates := False;
  qry_CR.RequestLive := False;
  qry_CR.Active := True;
end;

procedure TClaim_Report.Cancel1Click(Sender: TObject);
begin
  with qry_CR do
  begin
    Active := False;
    RequestLive := False;
    CachedUpdates := False;
    Active := True;
  end;
end;

procedure TClaim_Report.FormCreate(Sender: TObject);
begin
  dtp2.Date := Date;
  dtp3.Date := Date;
  dtp4.Date := Date;
  dtp5.Date := Date;
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TClaim_Report.Excel1Click(Sender: TObject);
begin
 ExportDefaultExcel(qry_CR);
end;

procedure TClaim_Report.ExportDefaultExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query.Active then
  begin
    if Query.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  //
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  //
  try
    WorkBook:=eclApp.workbooks.Add;
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   Query.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query.fields[i-1].FieldName;
    end;
    Query.First;
    j:=2;
    while   not  Query.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=Query.Fields[i-1].Value;
        end;
        Query.Next;
        inc(j);
      end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TClaim_Report.dbg_CRDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if qry_CR.FieldByName('YN').Value = 'N' then
  begin
    dbg_CR.Canvas.Font.Color := clRed;
    dbg_CR.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TClaim_Report.Qry_InspectionAfterOpen(DataSet: TDataSet);
begin
  pnl_Progressbar.Visible:=false;
end;

procedure TClaim_Report.DBG_InspectionDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if trim(Qry_Inspection.FieldByName('CGDate').AsString) <> '' then
    DBG_Inspection.Canvas.Font.Color := $009D009D;
  if trim(Qry_Inspection.FieldByName('ManagerDate').AsString) <> '' then
    DBG_Inspection.Canvas.Font.Color := $000050F4;
  if trim(Qry_Inspection.FieldByName('CustDate').AsString) <> '' then
    DBG_Inspection.Canvas.Font.Color := clBlue;

  if ((Column.FieldName = 'Result')) and (Qry_Inspection.FieldByName('Result').AsString = 'Reject') then
    DBG_Inspection.Canvas.Brush.Color := clRed;
  if ((Column.FieldName = 'Result')) and (Qry_Inspection.FieldByName('Result').AsString = 'Pass') then
    DBG_Inspection.Canvas.Brush.Color := clMoneyGreen;
  DBG_Inspection.DefaultDrawColumnCell(Rect, DataCol, Column, State);

  if Qry_Inspection.FieldByName('YN').Value = 0 then
  begin
    DBG_Inspection.Canvas.Font.Color := clRed;
    DBG_Inspection.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TClaim_Report.Query_InspectionClick(Sender: TObject);
begin
  if Qry_Inspection.Active then
    Qry_Inspection.Active:=false
  else
  begin
    ProgressBar.Position:=0;
    pnl_Progressbar.Visible:=true;
    pnl_Progressbar.Refresh;
  end;
  with Qry_Inspection do
  begin
    Active := False;
    sql.Clear;
    SQL.Add('    SELECT qc.DDBH,qc.QCDate,qc.REMARK,qc.CheckQty,k.XieMing,DDZL.Pairs,DDZL.KHPO,DDZL.Article,qc.report    ');
    SQL.Add('    	      ,qc.QCLevel,qc.QTY,qc.InspectorName,qc.De_Level,qc.Result,qc.CGDate,qc.ManagerDate,qc.CustDate,qc.CGUserID+'' ''+b.USERNAME CGUserID     ');
    SQL.Add('           ,qc.ManagerID+''  ''+b2.USERNAME ManagerID,qc.CustID+'' ''+b3.USERNAME CustID,k.Category,qc.Pairs as ChkPairs    ');
    SQL.Add('           ,qc.BA_Report,qc.QCLevelCus,qc.QtyCus,qc.Rea_Qty,qc.Fai_Qty,qc.ResultCus,qc.Defect,qc.Ins_Pass,qc.Reason,qc.LackQty,qc.CompleteDate,qc.USERID,qc.USERDATE,qc.YN    ');
    SQL.Add('    from DDZLQC qc     ');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH=qc.DDBH     ');
    SQL.Add('    LEFT JOIN kfxxzl k ON k.XieXing = DDZL.XieXing AND k.SheHao = DDZL.SheHao    ');
    SQL.Add('    LEFT JOIN DDZLTW on DDZlTW.ZLBh=qc.DDBH    ');
    SQL.Add('    LEFT JOIN Busers b ON b.USERID=qc.CGUserID    ');
    SQL.Add('    LEFT JOIN Busers b2 ON b2.USERID=qc.ManagerID    ');
    SQL.Add('    LEFT JOIN Busers b3 ON b3.USERID=qc.CustID	    ');
    SQL.Add('    WHERE 1=1  ') ;
    SQL.Add('    AND DDZL.KHPO IN (SELECT PO FROM Claim_Report_PO WHERE Claim_ID =:Claim_ID)    ');
    if edt_ArticleInspection.Text <> '' then
      SQL.Add('  AND DDZL.Article like ''%'+edt_ArticleInspection.Text+'%''  ');
    if edt_RYInspection.Text <> '' then
      SQL.Add('  AND qc.DDBH like ''%'+edt_RYInspection.Text+'%'' ');
    if chk3.Checked then
    begin
      sql.Add('   AND CONVERT(varchar,qc.QCDate,111) BETWEEN  ');
      sql.Add(' ''' + formatdatetime('yyyy/MM/dd', dtp2.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', dtp3.date) + ''' ');
    end;
    sql.add('ORDER BY qc.DDBH DESC');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TClaim_Report.qry_CRAfterOpen(DataSet: TDataSet);
begin
  Insert1.Enabled := True;
  if qry_CR.RecordCount > 0 then
  begin
    Delete1.Enabled := True;
    Modify1.Enabled := True;
    Excel1.Enabled := True;
  end;
  SetFactory1.Enabled := True;
end;

procedure TClaim_Report.qry_CRBeforeClose(DataSet: TDataSet);
begin
  Insert1.Enabled := False;
  Delete1.Enabled := False;
  Modify1.Enabled := False;
  Save1.Enabled := False;
  Cancel1.Enabled := False;
  Excel1.Enabled := False;
  SetFactory1.Enabled := False;
  dbg_CR.FieldColumns['Date_Claim_Initiated'].ReadOnly := True;
  dbg_CR.FieldColumns['Defect_Cat'].ReadOnly := True;
  dbg_CR.FieldColumns['Completion_Date'].ReadOnly := True;
  dbg_CR.FieldColumns['Fac_ID'].ButtonStyle := cbsNone;
  dbg_CR.FieldColumns['ARTICLE'].ButtonStyle := cbsNone;
  dbg_CR.FieldColumns['Claim_Pic'].ButtonStyle := cbsNone;
end;

procedure TClaim_Report.qry_CRAfterScroll(DataSet: TDataSet);
begin
  edt_ArticleInspection.Text := '';
  edt_RYInspection.Text := '';
  chk3.Checked := False;
  if (qry_CR.RequestLive = False) then
    Query_InspectionClick(nil);
end;

procedure TClaim_Report.qry_ImportAfterOpen(DataSet: TDataSet);
begin
//  Save.Enabled := True;
end;

procedure TClaim_Report.qry_ImportBeforeClose(DataSet: TDataSet);
begin
//  Save.Enabled := False;
end;

procedure TClaim_Report.SetFactory1Click(Sender: TObject);
begin
  if Factory_Claim <> nil then
  begin
    Factory_Claim.show;
  end
  else
  begin
    Factory_Claim := TFactory_Claim.create(self);
    Factory_Claim.show;
  end;
end;

procedure TClaim_Report.Qry_InspectionAfterScroll(DataSet: TDataSet);
begin
  ProgressBar.Max:=Qry_Inspection.RecordCount;
  ProgressBar.Position:=ProgressBar.Position+1;
  ProgressBar.Refresh;
end;

procedure TClaim_Report.Qry_InspectionBeforeClose(DataSet: TDataSet);
begin
  ProgressBar.Position:=0;
  pnl_Progressbar.Visible:=True;
  pnl_Progressbar.Refresh;
end;

procedure TClaim_Report.btn_SelectFileClick(Sender: TObject);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  rowList,colList:TStringlist;
  i,j,k,h:integer;
  temp_PO, temp_Claim_ID: string;
begin
  try
    with qry_CR do
    begin
      active:=false;
      active:=true;
    end;
    //
    with qry_CR do
    begin
      RequestLive := True;
      CachedUpdates := True;
      Insert;
    end;
    //
    Text:='';
    if Clipboard.HasFormat(CF_TEXT) then
    begin
      Handle := ClipBoard.GetAsHandle(CF_TEXT);
      BufSize := GlobalSize(Handle);
      GetMem(CbBuf, BufSize);
      Text:=Clipboard.AsUnicodeText;
      //
      rowList:=TStringlist.Create;
      rowList.Text:=Text;
      for i:=0 to rowList.Count-1 do
        begin
          colList:=funcObj.SplitString(rowList.Strings[i],'	');
          qry_CR.Insert;
          for j:=0 to colList.Count-1 do
            begin
              if trim(colList.Strings[j])<>'' then
              begin
                qry_CR.FieldByName('Date_Claim_Initiated').AsString := colList.Strings[0];
                qry_CR.FieldByName('Claim').AsString := colList.Strings[1];
                qry_CR.FieldByName('HQ_Claim_Manegement').AsString := colList.Strings[2];
                qry_CR.FieldByName('Claim_Classification').AsString := colList.Strings[3];
                qry_CR.FieldByName('Brand').AsString := colList.Strings[4];
                //qry_Import.FieldByName('Factory_Num').Value := Sheet.readStr(i-1, 7);
                qry_CR.FieldByName('Status').AsString :=  colList.Strings[8];
                qry_CR.FieldByName('SO').AsString :=  colList.Strings[9];
                qry_CR.FieldByName('Current_Stage').AsString := colList.Strings[10];
                qry_CR.FieldByName('Reason').AsString := colList.Strings[11];
                qry_CR.FieldByName('Pri').AsString := colList.Strings[12];
                qry_CR.FieldByName('ARTICLE').AsString := colList.Strings[13];
                qry_CR.FieldByName('Business_Unit').AsString :=  colList.Strings[14];
                qry_CR.FieldByName('Production_Month').AsString :=  colList.Strings[16];
                qry_CR.FieldByName('FOB_Price_SIM').AsString := colList.Strings[17];
                qry_CR.FieldByName('Currency_not_USD').AsString :=  colList.Strings[18];
                qry_CR.FieldByName('GPS_PO_Num').AsString := colList.Strings[19];
                qry_CR.FieldByName('PO_Qty').AsString :=  colList.Strings[20];
                qry_CR.FieldByName('WH_Qty').AsString :=  colList.Strings[21];
                qry_CR.FieldByName('A_grades').AsString :=  colList.Strings[22];
                qry_CR.FieldByName('A_grades_After_Repair').AsString := colList.Strings[23];
                qry_CR.FieldByName('B_grades').AsString :=  colList.Strings[24];
                qry_CR.FieldByName('C_grades').AsString :=  colList.Strings[25];
                qry_CR.FieldByName('aSL_Comm_TAC').AsString :=  colList.Strings[26];
                qry_CR.FieldByName('Reimbursement').AsString := colList.Strings[27];
                qry_CR.FieldByName('Total_Cost').AsString := colList.Strings[28];
                qry_CR.FieldByName('aSIP_eLCS_Claim_Number').AsString :=  colList.Strings[29];
                qry_CR.FieldByName('Completion_Date').AsString :=  colList.Strings[30];
              end;
            end;
          colList.Free;
          qry_CR.Post;
        end;
      rowList.Free;
    end;

   // show column information
    qry_CR.First;
    for k:=0 to qry_CR.RecordCount-1 do
    begin
      qry_CR.Edit;
      //qry_CR.FieldByName('Date_Claim_Initiated').AsString := qry_CR.FieldByName('Date_Claim_Initiated').AsString;
      //qry_CR.FieldByName('Claim').AsString := qry_CR.FieldByName('Claim').AsString;
      qry_CR.FieldByName('Claim_ID').AsString := qry_CR.FieldByName('Claim_ID').AsString + IntToStr(i);
      qry_CR.FieldByName('Date_Claim_Initiated').AsString := qry_CR.FieldByName('Date_Claim_Initiated').AsString;
      qry_CR.FieldByName('Claim').AsString := qry_CR.FieldByName('Claim').AsString;
      qry_CR.FieldByName('HQ_Claim_Manegement').AsString := qry_CR.FieldByName('HQ_Claim_Manegement').AsString;
      qry_CR.FieldByName('Claim_Classification').AsString := qry_CR.FieldByName('Claim_Classification').AsString;
      qry_CR.FieldByName('Brand').AsString := qry_CR.FieldByName('Brand').AsString;
      //qry_Import.FieldByName('Factory_Num').Value := Sheet.readStr(i-1, 7);
      qry_CR.FieldByName('Status').AsString :=  qry_CR.FieldByName('Status').AsString;
      qry_CR.FieldByName('SO').AsString :=  qry_CR.FieldByName('SO').AsString;
      qry_CR.FieldByName('Current_Stage').AsString := qry_CR.FieldByName('Current_Stage').AsString;
      qry_CR.FieldByName('Reason').AsString := qry_CR.FieldByName('Reason').AsString;
      qry_CR.FieldByName('Pri').AsString := qry_CR.FieldByName('Pri').AsString;
      qry_CR.FieldByName('ARTICLE').AsString := qry_CR.FieldByName('ARTICLE').AsString;
      qry_CR.FieldByName('Business_Unit').AsString :=  qry_CR.FieldByName('Business_Unit').AsString;
      qry_CR.FieldByName('Production_Month').AsString := qry_CR.FieldByName('Production_Month').AsString;
      qry_CR.FieldByName('FOB_Price_SIM').AsString := qry_CR.FieldByName('FOB_Price_SIM').AsString;
      qry_CR.FieldByName('Currency_not_USD').AsString := qry_CR.FieldByName('Currency_not_USD').AsString;
      qry_CR.FieldByName('GPS_PO_Num').AsString :=  qry_CR.FieldByName('GPS_PO_Num').AsString;
      qry_CR.FieldByName('PO_Qty').AsString :=  qry_CR.FieldByName('PO_Qty').AsString;
      qry_CR.FieldByName('WH_Qty').AsString :=  qry_CR.FieldByName('WH_Qty').AsString;
      qry_CR.FieldByName('A_grades').AsString :=  qry_CR.FieldByName('A_grades').AsString;
      qry_CR.FieldByName('A_grades_After_Repair').AsString := qry_CR.FieldByName('A_grades_After_Repair').AsString;
      qry_CR.FieldByName('B_grades').AsString := qry_CR.FieldByName('B_grades').AsString;
      qry_CR.FieldByName('C_grades').AsString :=  qry_CR.FieldByName('C_grades').AsString;
      qry_CR.FieldByName('aSL_Comm_TAC').AsString :=  qry_CR.FieldByName('aSL_Comm_TAC').AsString;
      qry_CR.FieldByName('Reimbursement').AsString :=  qry_CR.FieldByName('Reimbursement').AsString;
      qry_CR.FieldByName('Total_Cost').AsString :=  qry_CR.FieldByName('Total_Cost').AsString;
      qry_CR.FieldByName('aSIP_eLCS_Claim_Number').AsString := qry_CR.FieldByName('aSIP_eLCS_Claim_Number').AsString;
      qry_CR.FieldByName('Completion_Date').AsString := qry_CR.FieldByName('Completion_Date').AsString;
      //
      qry_CR.Post;
      qry_CR.Next;
    end;
    qry_CR.First;
    pnl_Import.Visible:=false;
  except
     on E:Exception do
      Showmessage(E.Message);
  end;

  //Insert Data
  qry_CR.Active := True;
  Qry_Inspection.Active := False;
  qry_Import.Active:= True;
  try
    //qry_CR.First;
    while not qry_CR.Eof do
    begin
      temp_PO := '';
      temp_PO := qry_CR.FieldByName('GPS_PO_Num').AsString;
      while Pos(' ',temp_PO) > 0 do
      begin
        Delete(temp_PO,Pos(' ',temp_PO ),1);
      end;

      with qry_Temp do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('  SELECT A.Claim_ID, A.GPS_PO_Num  ');
        SQL.Add('  FROM (SELECT cr.Claim_ID,SUBSTRING(CONVERT(VARCHAR(255),(SELECT '',''+ PO  ');
        SQL.Add('  			        FROM Claim_Report_PO  ');
        SQL.Add('  			        WHERE Claim_Report_PO.Claim_ID=cr.Claim_ID  ');
        SQL.Add('  			        FOR XML PATH(''''))),2,255) GPS_PO_Num   ');
        SQL.Add('  		   FROM Claim_Report cr) A  ');
        SQL.Add('  WHERE A.GPS_PO_Num = '''+temp_PO+''' ');
        Active := True;
      end;
      if not qry_Temp.Eof then
      with qry_Temp1 do
      begin
        active:=false;
        sql.Clear;
        SQL.Add(' DELETE Claim_Report WHERE Claim_ID = '''+qry_Temp.FieldByName('Claim_ID').AsString+''' ');
        ExecSQL;
        SQL.Clear;
        SQL.Add(' DELETE Claim_Report_PO WHERE Claim_ID = '''+qry_Temp.FieldByName('Claim_ID').AsString+''' ');
        ExecSQL;
      end;
      with qry_Temp do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('  INSERT INTO Claim_Report ');
        SQL.Add(' (Date_Claim_Initiated, Claim, HQ_Claim_Manegement,Claim_Classification, Brand');
        SQL.Add(' ,Factory_Num ,Status, SO, Current_Stage,Reason ');
        SQL.Add(' ,pri, Article_num, Business_Unit, Production_Month  ');
        SQL.Add(' ,FOB_Price_SIM, Currency_not_USD, PO_Qty  ');
        SQL.Add(' ,WH_Qty, A_grades, A_grades_After_Repair, B_grades  ');
        SQL.Add(' ,C_grades, aSL_Comm_TAC, Reimbursement, Total_Cost, aSIP_eLCS_Claim_Number, Completion_Date)  ');
        SQL.Add('  VALUES ( ');
        SQL.Add(' :Date_Claim_Initiated, :Claim, :HQ_Claim_Manegement,:Claim_Classification, :Brand ');
        SQL.Add(' ,:Factory_Num, :Status, :SO, :Current_Stage,:Reason ');
        SQL.Add(' ,:pri, :Article_num, :Business_Unit, :Production_Month  ');
        SQL.Add(' ,:FOB_Price_SIM, :Currency_not_USD, :PO_Qty  ');
        SQL.Add(' ,:WH_Qty, :A_grades, :A_grades_After_Repair, :B_grades  ');
        SQL.Add(' ,:C_grades, :aSL_Comm_TAC, :Reimbursement, :Total_Cost, :aSIP_eLCS_Claim_Number, :Completion_Date)  ');
        Params.ParamByName('Date_Claim_Initiated').AsString := qry_CR.FieldByName('Date_Claim_Initiated').AsString;
        Params.ParamByName('Claim').Value := qry_CR.FieldByName('Claim').AsString;
        Params.ParamByName('HQ_Claim_Manegement').Value := qry_CR.FieldByName('HQ_Claim_Manegement').AsString;
        Params.ParamByName('Claim_Classification').Value := qry_CR.FieldByName('Claim_Classification').AsString;
        Params.ParamByName('Brand').Value := qry_CR.FieldByName('Brand').AsString;
        Params.ParamByName('Factory_Num').Value := '';
        Params.ParamByName('Status').Value := qry_CR.FieldByName('Status').AsString;
        Params.ParamByName('SO').Value := qry_CR.FieldByName('SO').AsString;
        Params.ParamByName('Current_Stage').Value := qry_CR.FieldByName('Current_Stage').AsString;
        Params.ParamByName('Reason').Value := qry_CR.FieldByName('Reason').AsString;
        Params.ParamByName('pri').Value := qry_CR.FieldByName('pri').AsString;
        Params.ParamByName('Article_num').Value := qry_CR.FieldByName('Article').AsString;
        Params.ParamByName('Business_Unit').Value := qry_CR.FieldByName('Business_Unit').AsString;
        Params.ParamByName('Production_Month').Value := qry_CR.FieldByName('Production_Month').AsString;
        Params.ParamByName('FOB_Price_SIM').Value := qry_CR.FieldByName('FOB_Price_SIM').AsString;
        Params.ParamByName('Currency_not_USD').Value := qry_CR.FieldByName('Currency_not_USD').Asstring;
        Params.ParamByName('PO_Qty').Value := qry_CR.FieldByName('PO_Qty').AsString;
        Params.ParamByName('WH_Qty').Value := qry_CR.FieldByName('WH_Qty').AsString;
        Params.ParamByName('A_grades').Value := qry_CR.FieldByName('A_grades').AsString;
        Params.ParamByName('A_grades_After_Repair').Value := qry_CR.FieldByName('A_grades_After_Repair').AsString;
        Params.ParamByName('B_grades').Value := qry_CR.FieldByName('B_grades').AsString;
        Params.ParamByName('C_grades').Value := qry_CR.FieldByName('C_grades').AsString;
        Params.ParamByName('aSL_Comm_TAC').Value := qry_CR.FieldByName('aSL_Comm_TAC').AsString;
        Params.ParamByName('Reimbursement').Value := qry_CR.FieldByName('Reimbursement').AsString;
        Params.ParamByName('Total_Cost').Value := qry_CR.FieldByName('Total_Cost').AsString;
        Params.ParamByName('aSIP_eLCS_Claim_Number').Value := qry_CR.FieldByName('aSIP_eLCS_Claim_Number').AsString;
        Params.ParamByName('Completion_Date').Value := qry_CR.FieldByName('Completion_Date').AsString;
        ExecSQL;
        //
        with qry_Temp do
        begin
          active:=false;
          sql.Clear;
          SQL.Add(' SELECT MAX(Claim_ID) Claim_ID FROM Claim_Report ');
          Active := True;
        end;
        temp_Claim_ID := qry_Temp.FieldByName('Claim_ID').AsString;

        while Pos(',', temp_PO) > 0 do
        begin
          with qry_Temp do
          begin
            active:=false;
            sql.Clear;
            SQL.Add(' INSERT INTO Claim_Report_Po(Claim_ID, PO, UseriD, UserDate, YN) VALUES (:Claim_ID, :PO, :UserID, GetDate(), 1)  ');
            Params.ParamByName('PO').AsString := Trim(Copy(temp_PO, 0, Pos(',', temp_PO) - 1));
            Params.ParamByName('Claim_ID').AsString := temp_Claim_ID;
            Params.ParamByName('UserID').AsString := main.Edit1.Text;
            ExecSQL;
          end;
          temp_PO := Copy(temp_PO, Pos(',', temp_PO) + 1, Length(temp_PO));
        end;

        with qry_Temp do
        begin
          active:=false;
          sql.Clear;
          SQL.Add(' INSERT INTO Claim_Report_Po(Claim_ID, PO, UseriD, UserDate, YN) VALUES (:Claim_ID, :PO, :UserID, GetDate(), 1)  ');
          Params.ParamByName('PO').AsString := Trim(temp_PO);
          Params.ParamByName('Claim_ID').AsString := temp_Claim_ID;
          Params.ParamByName('UserID').AsString := main.Edit1.Text;
          ExecSQL;
        end;
      end;
      qry_CR.Next;
    end;
  finally
    ShowMessage('Import Success');
  end;
  qry_CR.Active := False;
  qry_CR.Active := True;
  Qry_Inspection.Active:=true;
end;

procedure TClaim_Report.dbg_CREditButtonClick(Sender: TObject);
var File_s:string;
begin
  if dbg_CR.selectedfield.fieldname = 'Fac_ID' then
  begin
    if Factory_Claim <> nil then
    begin
      Factory_Claim.show;
    end
    else
    begin
      Factory_Claim := TFactory_Claim.create(self);
      Factory_Claim.show;
    end;
  end;
  if dbg_CR.selectedfield.fieldname = 'ARTICLE' then
  begin
    if Article_Claim <> nil then
    begin
      Article_Claim.show;
    end
    else
    begin
      Article_Claim := TArticle_Claim.create(self);
      Article_Claim.show;
    end;
  end;
end;

procedure TClaim_Report.Panel3Click(Sender: TObject);
begin
  Pan_ShowPic.Visible:=false;
end;

procedure TClaim_Report.btn_Claim_AnaClick(Sender: TObject);
begin
  if ClaimAnalytics <> nil then
  begin
    ClaimAnalytics.Show;
    ClaimAnalytics.WindowState:=wsMaximized;
  end
  else
  begin
    ClaimAnalytics:=TClaimAnalytics.Create(Self);
    ClaimAnalytics.Show;
  end;
end;

procedure TClaim_Report.ClaimConn1Click(Sender: TObject);
begin
  {if ClaimConnectivity=nil then
    ClaimConnectivity:=TClaimConnectivity.create(self);
  ClaimConnectivity.show;}
  //ClaimConnectivity.windowstate:=wsmaximized;
  //Claim_Report.Enabled:=false;
  //ClaimConnectivity.BT_Qry.Click;
end;

procedure TClaim_Report.Insert2Click(Sender: TObject);
begin
  with Qry_Inspection do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Insert;
  end;
  DBG_Inspection.columns[1].ButtonStyle:=cbsEllipsis;
  Save2.Enabled := true;
  Cancel2.Enabled := true;
end;

procedure TClaim_Report.Delete2Click(Sender: TObject);
begin
  with Qry_Inspection do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;
  DBG_Inspection.columns[1].ButtonStyle:=cbsEllipsis;
  Save2.Enabled := true;
  Cancel2.Enabled := true;
end;

procedure TClaim_Report.Modify2Click(Sender: TObject);
begin
  with Qry_Inspection do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  DBG_Inspection.columns[1].ButtonStyle:=cbsEllipsis;
  Save2.Enabled := true;
  Cancel2.Enabled := true;
end;

procedure TClaim_Report.Save2Click(Sender: TObject);
var i: integer;
begin
  with Qry_Inspection do
  begin
    first;
    while not Qry_Inspection.Eof do
    begin
      if Qry_Inspection.FieldByName('QCDate').IsNull  then
      begin
        showmessage('Inspected Date can not be null.');
        abort;
      end;
      Next;
    end;
  end;
  //
  try
    Qry_Inspection.First;
    for i := 1 to Qry_Inspection.RecordCount do
    begin
      case Qry_Inspection.UpdateStatus of
        usInserted:
        begin
          if (Qry_Inspection.FieldByName('DDBH').IsNull) then
          begin
            Qry_Inspection.Delete;
          end else
          begin
            Qry_Inspection.Edit;
            //Qry_Inspection.FieldByName('QCDate').Value := date;
            Qry_Inspection.FieldByName('UserID').Value := main.Edit1.Text;
            Qry_Inspection.FieldByName('Result').Value:='Pass';
            Up_Inspec.Apply(ukInsert);
          end;
        end;
        usModified:
        begin
          if Qry_Inspection.FieldByName('YN').Value = 0 then
          begin
            Up_Inspec.Apply(ukDelete);
          end else
          begin
            Qry_Inspection.Edit;
            Qry_Inspection.FieldByName('UserID').Value := main.Edit1.text;
            Up_Inspec.Apply(ukModify);
          end;
        end;
      end;
      Qry_Inspection.Next;
    end;
    Qry_Inspection.Active := false;
    Qry_Inspection.CachedUpdates := false;
    Qry_Inspection.RequestLive := false;
    Qry_Inspection.Active := true;
    DBG_Inspection.columns[1].ButtonStyle:=cbsNone;
    Save2.Enabled := false;
    Cancel2.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TClaim_Report.Cancel2Click(Sender: TObject);
begin
  with Qry_Inspection do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  DBG_Inspection.columns[1].ButtonStyle:=cbsNone;
  Save2.Enabled := false;
  Cancel2.Enabled := false;
end;

procedure TClaim_Report.DBG_InspectionEditButtonClick(Sender: TObject);
begin
  if DBG_Inspection.selectedfield.fieldname = 'DDBH' then
  begin
    OrderList := TOrderList.create(self);
    OrderList.show;
  end;
end;

procedure TClaim_Report.Excel2Click(Sender: TObject);
begin
  ExportDefaultExcel(Qry_Inspection);
end;

end.
