unit ProductionToolRepair_printTW1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, QuickRpt, Data.DB,
  Bde.DBTables, QRCtrls, qrpctrls, Vcl.ExtCtrls,IniFiles;

type
  TProductionToolRepair_printTW = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    Page1: TQRLabel;
    L1: TQRLabel;
    QRLabel11: TQRLabel;
    LLNOLabel: TQRLabel;
    QRLabel26: TQRLabel;
    L2: TQRLabel;
    TitleBand1: TQRBand;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape24: TQRShape;
    QRShape3: TQRShape;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRShape16: TQRShape;
    QRLabel9: TQRLabel;
    QRPCheckBox1: TQRPCheckBox;
    QRLabel10: TQRLabel;
    QRPCheckBox2: TQRPCheckBox;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape18: TQRShape;
    DepNameLabel: TQRLabel;
    UserDateLabel: TQRLabel;
    ApplyDateLabel: TQRLabel;
    AssetBHLabel: TQRLabel;
    AssetNameLabel: TQRLabel;
    ReasonLabel: TQRLabel;
    InnerRepairLabel: TQRLabel;
    OuterRepairLabel: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel24: TQRLabel;
    SupvervisorID: TQRImage;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    ApplicantID: TQRImage;
    QRLabel3: TQRLabel;
    CDLeaderID: TQRImage;
    CDID: TQRImage;
    GMID: TQRImage;
    SupvervisorID1: TQRImage;
    ApplicantID1: TQRImage;
    TopManagerID: TQRImage;
    ManagerID: TQRImage;
    QRBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRISO: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetDepName: TStringField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetReason: TStringField;
    DelDetUserDate: TStringField;
    DelDetUSERNAME: TStringField;
    QRPreviewController1: TQRPreviewController;
    DelDetDepID: TStringField;
    DelDetUSERID: TStringField;
    DelDetCLBH: TStringField;
    DelDetDepMemo: TStringField;
    DelDetMemo: TStringField;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel22: TQRLabel;
    MemoLabel: TQRLabel;
    DelDetMemoDate: TStringField;
    SupvervisorDateLabel: TQRLabel;
    ApplicantDateLabel: TQRLabel;
    GMDateLabel: TQRLabel;
    TopManagerDateLabel: TQRLabel;
    ManagerDateLabel: TQRLabel;
    QApprover: TADOQuery;
    QApproverApplicantID: TStringField;
    QApproverApplicant: TStringField;
    QApproverApplicantDate: TStringField;
    QApproverSupvervisorID: TStringField;
    QApproverSupvervisor: TStringField;
    QApproverSupvervisorDate: TStringField;
    QApproverSupvervisorNote: TStringField;
    QApproverLeaderID: TStringField;
    QApproverLeader: TStringField;
    QApproverLeaderDate: TStringField;
    QApproverLeaderNote: TStringField;
    QApproverManagerID: TStringField;
    QApproverManager: TStringField;
    QApproverManagerDate: TStringField;
    QApproverManagerNote: TStringField;
    QApproverTopManagerID: TStringField;
    QApproverTopManager: TStringField;
    QApproverTopManagerDate: TStringField;
    QApproverTopManagerNote: TStringField;
    QApproverGMID: TStringField;
    QApproverGM: TStringField;
    QApproverGMDate: TStringField;
    QApproverGMNote: TStringField;
    SupvervisorID1DateLabel: TQRLabel;
    GMNote: TQRLabel;
    TopManagerNote: TQRLabel;
    ManagerNote: TQRLabel;
    SupvervisorNote1: TQRLabel;
    SupvervisorNote: TQRLabel;
    KHXID: TQRImage;
    KHXDate: TQRLabel;
    QApproverKHXID: TStringField;
    QApproverKHX: TStringField;
    QApproverKHXDate: TStringField;
    QApproverKHXNote: TStringField;
    KHXNote: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    IP,DBName,DBUser,DBPass,PW:String;
  end;

var
  ProductionToolRepair_printTW: TProductionToolRepair_printTW;

implementation

{$R *.dfm}

uses ProductionToolRepair1, main1;
procedure TProductionToolRepair_printTW.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TProductionToolRepair_printTW.FormCreate(Sender: TObject);
var All_AssetBH,All_AssetName,All_Reason,All_Repair:String;
begin
  DelDet.Active:=true;
  ReadIni();
  //簽核系統審核  20221215
  QApprover.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
  with QApprover do
  begin
    Active := false;
    SQL.Clear;
    //
    {SQL.Add('  SELECT MAX(CASE WHEN S_STEP_DESC = ''申請人''  THEN S_USER_ID END) AS ApplicantID,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''申請人''  THEN USERNAME END) AS Applicant,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''申請人''  THEN ApproveDate END) AS ApplicantDate,  ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''單位主管'') or (S_STEP_DESC = ''申請人'' and LEVEL_NO>0))  THEN S_USER_ID END) AS SupvervisorID,  ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''單位主管'') or (S_STEP_DESC = ''申請人'' and LEVEL_NO>0)) THEN USERNAME END) AS Supvervisor,  ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''單位主管'') or (S_STEP_DESC = ''申請人'' and LEVEL_NO>0)) THEN ApproveDate END) AS SupvervisorDate,  ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''部門主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>10) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>10) ) THEN S_USER_ID END) AS LeaderID,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''部門主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>10) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>10) ) THEN USERNAME END) AS Leader,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''部門主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>10) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>10) ) THEN ApproveDate END) AS LeaderDate,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>20) )  THEN S_USER_ID END) AS ManagerID,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>20) ) THEN USERNAME END) AS Manager,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>20) ) THEN ApproveDate END) AS ManagerDate,    ');

    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''核准'') or (S_STEP_DESC = ''廠主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>30) ');
    SQL.Add('                or (S_STEP_DESC = ''申請人'' and LEVEL_NO>30) ) THEN S_USER_ID END) AS TopManagerID, ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''核准'') or (S_STEP_DESC = ''廠主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>30) ) THEN USERNAME END) AS TopManager,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''核准'') or (S_STEP_DESC = ''廠主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>30) ) THEN ApproveDate END) AS TopManagerDate,    ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''工務部門'' THEN S_USER_ID END) AS CDID,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''工務部門'' THEN USERNAME END) AS CDHardware,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''工務部門'' THEN ApproveDate END) AS CDHardwareDate,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''工務部門主管'' THEN S_USER_ID END) AS CDLeaderID,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''工務部門主管''THEN USERNAME END) AS CDLeader,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''工務部門主管'' THEN ApproveDate END) AS CDLeaderDate  ');
    SQL.Add('       FROM (  ');
    SQL.Add('      ');
    SQL.Add('    SELECT S_USER_ID, USERNAME, CONVERT(VARCHAR, ApproveDate, 111) AS ApproveDate, ISNULL(LEVEL_NO, 0) AS LEVEL_NO, S_STEP_DESC, ROW_NUMBER() OVER ( ORDER BY ApproveDate) AS Seq FROM (  ');
    SQL.Add('      Select S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STEP_DESC,Max(ApproveDate) as ApproveDate from (  ');
    SQL.Add('      SELECT S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) AS ApproveDate, SYS_ORG.LEVEL_NO, ORG_DESC,S_STEP_DESC,  ');
    SQL.Add('      ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) DESC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] AS SYS_TODOHIS  ');
    SQL.Add('      LEFT JOIN (Select ORG_MAN,LEVEL_NO,ORG_DESC,ROW_NUMBER() OVER (ORDER BY LEVEL_NO Desc) AS Seq from [EEP].[LingYi].[dbo].[SYS_ORG]  ) AS SYS_ORG ON SYS_ORG.ORG_MAN = SYS_TODOHIS.S_ROLE_ID --and SYS_ORG.ORG_KIND=''1000''  ');
    SQL.Add('      WHERE FORM_TABLE = ''TSCD_KCLL'' AND STATUS IN (''N'', ''Z'') AND FORM_PRESENTATION LIKE ''%'+ProductionToolRepair.DelMas.FieldByName('LLNO').AsString+'%''  ');
    SQL.Add('      	  ) A Group by S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STEP_DESC  ');
    SQL.Add('    ) AS ApproveData  ');
    SQL.Add('    ');
    SQL.Add('  ) AS ApproveData  ');  }

    //03.12.2024
    SQL.Add('SELECT MAX(APPACCOUNT) AS ApplicantID,');
    SQL.Add('  MAX(APPNAME) AS Applicant, ');
    SQL.Add('  MAX( BEGIN_TIME ) AS ApplicantDate,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQDV''  THEN ACCOUNT END) AS SupvervisorID,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQDV''  THEN NAME END) AS Supvervisor, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQDV'' THEN FINISH_TIME END) AS SupvervisorDate, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQDV''  THEN case  when NAME LIKE N''%(代)'' then N''(代)'' else  N'''' end  END   )as SupvervisorNote ,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQDV1''  THEN ACCOUNT END) AS LeaderID,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQDV1''  THEN NAME END) AS Leader, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQDV1'' THEN FINISH_TIME END) AS LeaderDate,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQDV1''  THEN case  when NAME LIKE N''%(代)'' then N''(代)'' else  N'''' end  END   )as LeaderNote ,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQBP'' THEN ACCOUNT END) AS ManagerID,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQBP'' THEN NAME END) AS Manager, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQBP'' THEN FINISH_TIME END) AS ManagerDate,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQBP''  THEN case  when NAME LIKE N''%(代)'' then N''(代)'' else  N'''' end  END   )as ManagerNote ,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQCNBP'' THEN ACCOUNT END) AS TopManagerID,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQCNBP'' THEN NAME END) AS TopManager, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQCNBP'' THEN FINISH_TIME END) AS TopManagerDate,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQCNBP''  THEN case  when NAME LIKE N''%(代)'' then N''(代)'' else  N'''' end  END   )as TopManagerNote ,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQKhu'' THEN ACCOUNT END) AS GMID, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQKhu'' THEN NAME END) AS GM,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQKhu'' THEN FINISH_TIME END) AS GMDate,');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''CQKhu''  THEN case  when NAME LIKE N''%(代)'' then N''(代)'' else  N'''' end  END   )as GMNote, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''KHX'' THEN ACCOUNT END) AS KHXID,  ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''KHX'' THEN NAME END) AS KHX, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''KHX'' THEN FINISH_TIME END) AS KHXDate, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE = ''KHX''  THEN case  when NAME LIKE N''%(代)'' then N''(代)'' else  N'''' end  END   )as KHXNote  ');
    SQL.Add(' FROM OPENQUERY([UOFWEB],');
    SQL.Add('	''SELECT TB_WKF_TASK.TASK_ID, TB_WKF_TASK_TRIGGER_RECORD.SITE_CODE,REPLACE(TB_EB_USER.ACCOUNT,''''LYN'''', '''''''') ACCOUNT, ');
    SQL.Add('	case ');
    SQL.Add('            when TB_WKF_TASK_NODE.ACTUAL_SIGNER <> TB_WKF_TASK_NODE.ORIGINAL_SIGNER ');
    SQL.Add('            then TB_EB_USER.NAME + N''''(代)'''' ');
    SQL.Add('            else TB_EB_USER.NAME');
    SQL.Add('        end as NAME ');
    SQL.Add('	, CONVERT(VARCHAR,FINISH_TIME , 111) FINISH_TIME, GROUP_NAME, TITLE_NAME, LEV, US.NAME as APPNAME,REPLACE(US.ACCOUNT, ''''LYN'''', '''''''') as APPACCOUNT, CONVERT(VARCHAR,TB_WKF_TASK.BEGIN_TIME , 111) BEGIN_TIME');
    SQL.Add('			FROM [UOF].[dbo].TB_WKF_TASK TB_WKF_TASK');
    SQL.Add('			LEFT JOIN [UOF].[dbo].TB_WKF_TASK_NODE TB_WKF_TASK_NODE ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID');
    SQL.Add('			LEFT JOIN [UOF].[dbo].TB_WKF_TASK_NODE_SIGNER_INFO TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ');
    SQL.Add('			LEFT JOIN [UOF].[dbo].TB_EB_GROUP TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID');
    SQL.Add('			LEFT JOIN [UOF].[dbo].TB_EB_EMPL_DEP TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GUID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER');
    SQL.Add('     LEFT JOIN [UOF].[dbo].TB_EB_USER TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER');
    SQL.Add('			LEFT JOIN [UOF].[dbo].TB_EB_USER US ON US.USER_GUID=TB_WKF_TASK.AGENT_USER');
    SQL.Add('			LEFT JOIN [UOF].[dbo].TB_EB_JOB_TITLE TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID');
    SQL.Add('			LEFT JOIN [UOF].[dbo].TB_WKF_TASK_TRIGGER_RECORD TB_WKF_TASK_TRIGGER_RECORD ON TB_WKF_TASK_TRIGGER_RECORD.TASK_ID = TB_WKF_TASK.TASK_ID AND TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID');
    SQL.Add('			LEFT JOIN [UOF].[dbo].LYN_RepairRequest LYN_RepairRequest ON LYN_RepairRequest.LNO = TB_WKF_TASK.DOC_NBR ');
    SQL.Add('			WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_RepairRequest.LLNO LIKE ''''%'+ProductionToolRepair.DelMas.FieldByName('LLNO').AsString+'%'''' '' ');
    SQL.Add('			  ) AS ApproveData');
    //showmessage(sql.Text);

    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
    if RecordCount>0 then
    begin

      //03.12.2024
      GMDateLabel.Caption := QApprover.FieldByName('GMDate').AsString;
      TopManagerDateLabel.Caption := QApprover.FieldByName('TopManagerDate').AsString;
      ManagerDateLabel.Caption := QApprover.FieldByName('ManagerDate').AsString;
      SupvervisorID1DateLabel.Caption := QApprover.FieldByName('SupvervisorDate').AsString;

      SupvervisorDateLabel.Caption:=QApprover.FieldByName('SupvervisorDate').AsString;
      ApplicantDateLabel.Caption:=QApprover.FieldByName('ApplicantDate').AsString;

      SupvervisorNote.Caption := QApprover.FieldByName('SupvervisorNote').AsString;
      GMNote.Caption := QApprover.FieldByName('GMNote').AsString;
      TopManagerNote.Caption := QApprover.FieldByName('TopManagerNote').AsString;
      ManagerNote.Caption := QApprover.FieldByName('ManagerNote').AsString;
      SupvervisorNote1.Caption := QApprover.FieldByName('SupvervisorNote').AsString;

      KHXNote.Caption := QApprover.FieldByName('KHXNote').AsString;
      KHXDate.Caption := QApprover.FieldByName('KHXDate').AsString;

      if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ApplicantID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp') then
      begin
        ApplicantID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp');
        ApplicantID1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp') then
      begin
        SupvervisorID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp');
        SupvervisorID1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp');
      end;
      //
      {CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('LeaderID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp') then
      begin
        LeaderID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp');
      end;}
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ManagerID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp') then
      begin
        ManagerID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp');
      end;
      //
      {CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('CDID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('CDID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('CDID').AsString+'.bmp') then
      begin
        CDID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('CDID').AsString+'.bmp');
        CDID1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('CDID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('CDLeaderID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('CDLeaderID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('CDLeaderID').AsString+'.bmp') then
      begin
        CDLeaderID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('CDLeaderID').AsString+'.bmp');
        CDLeaderID1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('CDLeaderID').AsString+'.bmp');
      end; }
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('TopManagerID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('TopManagerID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('TopManagerID').AsString+'.bmp') then
      begin
        TopManagerID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('TopManagerID').AsString+'.bmp');
      end;
      //03.12.2024
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('GMID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('GMID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('GMID').AsString+'.bmp') then
      begin
        GMID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('GMID').AsString+'.bmp');
      end;
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('KHXID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('KHXID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('KHXID').AsString+'.bmp') then
      begin
        KHXID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('KHXID').AsString+'.bmp');
      end;
      //
    end;
    Active:=false;
  end;
  //
  LLNOLabel.Caption:=DelDet.FieldByName('LLNO').AsString;
  DepNameLabel.Caption:=DelDet.FieldByName('DepName').AsString;//+' '+DelDet.FieldByName('DepMemo').AsString;
  UserDateLabel.Caption:=DelDet.FieldByName('UserDate').AsString;
  //ApplyDateLabel.Caption:=DelDet.FieldByName('Memo').AsString;
  ApplyDateLabel.Caption:=DelDet.FieldByName('MemoDate').AsString;
  //UserNameLabel.Caption:=DelDet.FieldByName('UserName').AsString;
  MemoLabel.Caption:=DelDet.FieldByName('Memo').AsString;
  //CFMUserName.Caption:=DelDet.FieldByName('CFMUserName').AsString;
  //
  DelDet.First;
  while not DelDet.Eof do
  begin
    All_AssetBH:=All_AssetBH+DelDet.FieldByName('CLBH').AsString+',';
    All_AssetName:=All_AssetName+DelDet.FieldByName('ywpm').AsString+DelDet.FieldByName('zwpm').AsString+',';
    All_Reason:=All_Reason+DelDet.FieldByName('Reason').AsString+',';
    //Phuong phap sua loi
    //All_Repair:=All_Repair+DelDet.FieldByName('RepairResult').AsString+',';
    DelDet.Next;
  end;

  if length(All_AssetBH)>0 then  All_AssetBH:=Copy(All_AssetBH,1,length(All_AssetBH)-1);
  if length(All_AssetName)>0 then  All_AssetName:=Copy(All_AssetName,1,length(All_AssetName)-1);
  if length(All_Reason)>0 then  All_Reason:=Copy(All_Reason,1,length(All_Reason)-1);
  if length(All_Repair)>0 then  All_Repair:=Copy(All_Repair,1,length(All_Repair)-1);
  //
  AssetBHLabel.Caption:=All_AssetBH;
  AssetNameLabel.Caption:=All_AssetName;
  ReasonLabel.Caption:=All_Reason;
  InnerRepairLabel.Caption:='';
  OuterRepairLabel.Caption:='';
  {if DelDet.FieldByName('CKRepair').AsString='1'  then
  begin
    QRPCheckBox1.Checked:=true;
    InnerRepairLabel.Caption:=All_Repair;
  end else if DelDet.FieldByName('CKRepair').AsString='2'  then
  begin
    QRPCheckBox2.Checked:=true;
    OuterRepairLabel.Caption:=All_Repair;
  end;}
end;

procedure TProductionToolRepair_printTW.FormDestroy(Sender: TObject);
begin
  ProductionToolRepair_printTW:=nil;
end;

procedure TProductionToolRepair_printTW.ReadIni();
var MyIni :Tinifile;
    AppDir,ComNameCH,ComName,AssetsN51_ISO:string;
    //
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  ComName:='CONG TY TNHH TY XUAN';
  AssetsN51_ISO:='T-DCC-082B';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
      ComName:=MyIni.ReadString('ERP','ComName','');
      AssetsN51_ISO:=MyIni.ReadString('ERP','AssetsN51_ISO','T-DCC-082C');
      //
      IP := MyIni.ReadString('ERPServer','IP', '');
      DBName := MyIni.ReadString('ERPServer', 'Database', '');
      DBUser := MyIni.ReadString('ERPServer', 'User', '');
      DBPass := MyIni.ReadString('ERPServer', 'Pass', '');
      // dencrypt password
      sline_PW:='';
      ad_PW:=strtoint(copy(DBPass,0,1)); //取得解密字元
      for i:=2 to (length(DBPass)) do //解密迴圈
      begin
        tempstr_PW:=copy(DBPass,i,1);
        sline_PW:=sline_PW+chr(ord(tempstr_PW[1])-ad_PW);
      end;
      PW:=sline_PW;
      //
    finally
      MyIni.Free;
    end;
  end;
  L1.Caption:=ComName;
  L2.Caption:=ComNameCH;
  QRISO.Caption:=AssetsN51_ISO;
end;
end.
