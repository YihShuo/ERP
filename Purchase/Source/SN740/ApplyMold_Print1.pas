unit ApplyMold_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, iniFiles, ADODB,
  Grids, DBGrids;

type
  TApplyMold_Print = class(TForm)
    QuickRep2: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel23: TQRLabel;
    QRShape11: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRShape18: TQRShape;
    ManagerID: TQRImage;
    LeaderID: TQRImage;
    SupvervisorID: TQRImage;
    ApplicantID: TQRImage;
    TopManger: TQRImage;
    ProductionID: TQRImage;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape15: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape19: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape9: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel35: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    SummaryBand1: TQRBand;
    QRSubDetail: TQRSubDetail;
    QRShape6: TQRShape;
    QRDBText6: TQRDBText;
    QRShape17: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRDBText16: TQRDBText;
    QRShape28: TQRShape;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRShape29: TQRShape;
    QRDBText1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRComName: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel20: TQRLabel;
    SGNOQry: TQuery;
    DS1: TDataSource;
    Query1: TQuery;
    Query1SGNO: TStringField;
    Query1CLBH: TStringField;
    Query1SGQty: TFloatField;
    Query1Qty: TFloatField;
    Query1USPrice: TFloatField;
    Query1VNPrice: TCurrencyField;
    Query1YQdate: TDateTimeField;
    Query1Memo: TStringField;
    Query1BJNO: TStringField;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1zsywjc: TStringField;
    Query1dwbh: TStringField;
    Query1ZWSM: TStringField;
    Query1rn: TFloatField;
    QApprover: TADOQuery;
    QR_ApplicantDate: TQRDBText;
    QApproverApplicantID: TWideStringField;
    QApproverApplicant: TWideStringField;
    QApproverApplicantDate: TStringField;
    QApproverSupvervisorID: TWideStringField;
    QApproverSupvervisor: TWideStringField;
    QApproverSupvervisorDate: TStringField;
    QApproverLeaderID: TWideStringField;
    QApproverLeader: TWideStringField;
    QApproverLeaderDate: TStringField;
    QApproverManagerID: TWideStringField;
    QApproverManager: TWideStringField;
    QApproverManagerDate: TStringField;
    QApproverTopManagerID: TWideStringField;
    QApproverTopManager: TWideStringField;
    QApproverTopManagerDate: TStringField;
    QApproverProductionID: TWideStringField;
    QApproverProduction: TWideStringField;
    QApproverProductionDate: TStringField;
    QR_SupvervisorDate: TQRDBText;
    QR_LeaderDate: TQRDBText;
    QR_ProductionDate: TQRDBText;
    QRDBText10: TQRDBText;
    Query2: TQuery;
    Query2CFMDate1: TDateTimeField;
    QRLabel32: TQRLabel;
    lbSup: TQRLabel;
    lbLead: TQRLabel;
    lbNV: TQRLabel;
    lbGD: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    AppDir:String;
    IP,DBName,DBUser,DBPass,PW:String;
    { Private declarations }
    procedure Readini();
  public
    { Public declarations }
  end;

var
  ApplyMold_Print: TApplyMold_Print;

implementation
  uses ApplyMold1, FunUnit, main1;
{$R *.dfm}
procedure TApplyMold_Print.Readini();
var MyIni :Tinifile;
    AppDir,ComName,ComNameCH,PurchaseN2151_ISO:string;
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春責任有限公司';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
      PurchaseN2151_ISO:=MyIni.ReadString('ERP','PurchaseN2151_ISO','T-DCC-089B(ERP)');
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

    finally
      MyIni.Free;
    end;
  end;
  QRLabel24.Caption:=ComName;
  QRLabel22.Caption:=ComNameCH;
  QRLabel7.Caption:=PurchaseN2151_ISO;
end;

procedure TApplyMold_Print.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  Readini();
  //簽核系統審核
  QApprover.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
  with QApprover do
  begin
    Active:= false;
    SQL.Clear;
    SQL.Add('SELECT ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''申請人''  THEN S_USER_ID END) AS ApplicantID,  ');
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
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠最高主管'') or (S_STEP_DESC = ''廠主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>30) ');
    SQL.Add('                or (S_STEP_DESC = ''申請人'' and LEVEL_NO>30) ) THEN S_USER_ID END) AS TopManagerID, ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠最高主管'') or (S_STEP_DESC = ''廠主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>30) ) THEN USERNAME END) AS TopManager,    ');
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠最高主管'') or (S_STEP_DESC = ''廠主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>30) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>30) ) THEN ApproveDate END) AS TopManagerDate,    ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''量產會簽'' THEN S_USER_ID END) AS ProductionID,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''量產會簽'' THEN USERNAME END) AS Production,  ');
    SQL.Add('  MAX(CASE WHEN S_STEP_DESC = ''量產會簽'' THEN ApproveDate END) AS ProductionDate  ');
    SQL.Add(' FROM ( ');
    SQL.Add('    SELECT S_USER_ID, USERNAME, CONVERT(VARCHAR, ApproveDate, 111) AS ApproveDate, ISNULL(LEVEL_NO, 0) AS LEVEL_NO, S_STEP_DESC, ROW_NUMBER() OVER ( ORDER BY ApproveDate) AS Seq FROM (  ');
    SQL.Add('      Select S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STEP_DESC,Max(ApproveDate) as ApproveDate from (  ');
    SQL.Add('      SELECT S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) AS ApproveDate, SYS_ORG.LEVEL_NO, ORG_DESC,S_STEP_DESC,  ');
    SQL.Add('      ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) DESC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] AS SYS_TODOHIS  ');
    SQL.Add('      LEFT JOIN (Select ORG_MAN,LEVEL_NO,ORG_DESC,ROW_NUMBER() OVER (ORDER BY LEVEL_NO Desc) AS Seq from [EEP].[LingYi].[dbo].[SYS_ORG]  ) AS SYS_ORG ON SYS_ORG.ORG_MAN = SYS_TODOHIS.S_ROLE_ID --and SYS_ORG.ORG_KIND=''1000''  ');
    SQL.Add('      WHERE FORM_TABLE = ''SGDH'' and FLOW_DESC=''模具請購單''  AND STATUS IN (''N'', ''Z'') AND FORM_PRESENTATION LIKE ''%'+ApplyMold.SGMas.FieldByName('SGNO').AsString+'%''  ');
    SQL.Add('      	  ) A Group by S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STEP_DESC  ');
    SQL.Add('    ) AS ApproveData  ');
    SQL.Add('  ) AS ApproveData ');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true; 
    if FieldByName('ApplicantID').AsString='' then
    begin
      Active := false;
      SQL.Clear;
      SQL.Add(' SELECT MAX(APPID) AS ApplicantID,  ');
      SQL.Add('  MAX(APPNAME) AS Applicant,  ');
      SQL.Add('  MAX(CAST(BEGIN_TIME AS DATE)) AS ApplicantDate,  ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S1'' THEN ACCOUNT END) AS SupvervisorID, ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S1'' THEN NAME END) AS Supvervisor,   ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S1'' THEN FINISH_TIME END) AS SupvervisorDate,   ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S3'' THEN ACCOUNT END) AS LeaderID,     ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S3'' THEN NAME END) AS Leader,     ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S3'' THEN FINISH_TIME END) AS LeaderDate,     ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S4'' THEN ACCOUNT END) AS ManagerID,     ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S4'' THEN NAME END) AS Manager,     ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S4'' THEN FINISH_TIME END) AS ManagerDate,     ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S4'' THEN ACCOUNT END) AS TopManagerID,     ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S4'' THEN NAME END) AS TopManager,     ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S4'' THEN FINISH_TIME END) AS TopManagerDate,     ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''NV'' THEN ACCOUNT END) AS ProductionID,  ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''NV'' THEN NAME END) AS Production,  ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''NV'' THEN FINISH_TIME END) AS ProductionDate  ');
      SQL.Add('     FROM (  SELECT * FROM OPENQUERY([UOFWEB],');
      SQL.Add('     ''SELECT SUBSTRING(TB_EB_USER.ACCOUNT, PATINDEX(''''%[0-9]%'''', TB_EB_USER.ACCOUNT), LEN(TB_EB_USER.ACCOUNT)) ACCOUNT, ');
      SQL.Add('             case when TB_WKF_TASK_NODE.ACTUAL_SIGNER<>TB_WKF_TASK_NODE.ORIGINAL_SIGNER then ''''1'''' else '''''''' end as NAME, ');
      SQL.Add('             CAST(FINISH_TIME AS DATE) FINISH_TIME, TB_EB_GROUP.GROUP_NAME, TITLE_NAME, SUBSTRING(US.ACCOUNT, PATINDEX(''''%[0-9]%'''', US.ACCOUNT), LEN(US.ACCOUNT)) APPID, CAST([UOF].[dbo].fSignsToNoSigns(US.NAME) AS VARCHAR(200)) as APPNAME, ');
      SQL.Add('             TB_WKF_TASK.BEGIN_TIME, ROW_NUMBER() OVER (PARTITION BY FINISH_TIME ORDER BY FINISH_TIME DESC) AS RowID, TB_WKF_TASK_TRIGGER_RECORD.SITE_CODE, TB_EB_GROUP.LEV, APPGROUP.LEV APPGROUP_LEV, APPGROUP.GROUP_NAME APPGROUP ');
      SQL.Add('      FROM [UOF].[dbo].[TB_WKF_TASK] TB_WKF_TASK  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[LYN_FormSigner] LYN_FormSigner on LYN_FormSigner.TableName=''''SGDH'''' and LYN_FormSigner.Type=''''Tool'''' and LYN_FormSigner.FNO=TB_WKF_TASK.DOC_NBR ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID  ');                                               
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_TRIGGER_RECORD] TB_WKF_TASK_TRIGGER_RECORD ON TB_WKF_TASK_TRIGGER_RECORD.TASK_ID=TB_WKF_TASK_NODE.TASK_ID AND TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TASK_NODE.SITE_ID and SIGN_STATUS<>2 ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE_SIGNER_INFO] TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_EMPL_DEP] TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GUID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_USER] US ON US.USER_GUID=TB_WKF_TASK.AGENT_USER  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] APPGROUP ON APPGROUP.GROUP_ID=TB_WKF_TASK.USER_GROUP_ID ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_JOB_TITLE] TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID  ');
      SQL.Add('      WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_FormSigner.TNO=''''' + ApplyMold.SGMas.FieldByName('SGNO').AsString + ''''''') AS OP  ');
      SQL.Add('      	  ) AS ApproveDataBPM   ');
      //funcObj.WriteErrorLog(sql.Text);
      Active := true;
    end;
    if RecordCount>0 then
    begin           
      if FieldByName('Supvervisor').AsString = '1' then lbSup.Caption:='代' else lbSup.Caption:='';
      if FieldByName('Leader').AsString = '1' then lbLead.Caption:='代' else lbLead.Caption:='';
      if FieldByName('Production').AsString = '1' then lbNV.Caption:='代' else lbNV.Caption:='';
      if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ApplicantID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp') then
      begin
        ApplicantID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp');
      end;
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp') then
      begin
        SupvervisorID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp');
      end;
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('LeaderID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp') then
      begin
        LeaderID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp');
      end;
      //
      if FieldByName('TopManagerID').AsString <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('TopManagerID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('TopManagerID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+FieldByName('TopManagerID').AsString+'.bmp') then
        begin
          ManagerID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('TopManagerID').AsString+'.bmp');
          QRLabel32.Caption:=FieldByName('TopManagerDate').Value;
          if FieldByName('TopManager').AsString = '1' then lbGD.Caption:='代' else lbGD.Caption:='';
        end;
      end else
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ManagerID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp') then
        begin
          ManagerID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp');
          QRLabel32.Caption:=FieldByName('ManagerDate').Value;                
          if FieldByName('Manager').AsString = '1' then lbGD.Caption:='代' else lbGD.Caption:='';
        end;
      end;
      if FieldByName('ProductionID').AsString<>FieldByName('TopManagerID').AsString then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ProductionID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ProductionID').AsString+'.bmp'),false);
        if FileExists(AppDir+'Images\'+FieldByName('ProductionID').AsString+'.bmp') then
        begin
          ProductionID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ProductionID').AsString+'.bmp');
        end;
      end;
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ApplyMold.SGMas.FieldByName('CFMID1').AsString+'.bmp'),Pchar(AppDir+'Images\'+ApplyMold.SGMas.FieldByName('CFMID1').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+ApplyMold.SGMas.FieldByName('CFMID1').AsString+'.bmp') then
      begin
         TopManger.Picture.LoadFromFile(AppDir+'Images\'+ApplyMold.SGMas.FieldByName('CFMID1').AsString+'.bmp');
      end;

    end;
    //Active:=false;
  end;
  {
  //20230101 舊版保留流程不是按照組織架構
  with QApprover do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('  SELECT MAX(CASE WHEN Seq = 1 THEN S_USER_ID END) AS ApplicantID,');
    SQL.Add('  MAX(CASE WHEN Seq = 1 THEN USERNAME END) AS Applicant,');
    SQL.Add('  MAX(CASE WHEN Seq = 1 THEN ApproveDate END) AS ApplicantDate,');
    SQL.Add('  MAX(CASE WHEN Seq = 2 THEN S_USER_ID END) AS SupvervisorID,');
    SQL.Add('  MAX(CASE WHEN Seq = 2 THEN USERNAME END) AS Supvervisor,');
    SQL.Add('  MAX(CASE WHEN Seq = 2 THEN ApproveDate END) AS SupvervisorDate,');
    SQL.Add('  MAX(CASE WHEN Seq = 3 THEN S_USER_ID END) AS ManagerID,');
    SQL.Add('  MAX(CASE WHEN Seq = 3 THEN USERNAME END) AS Manager,');
    SQL.Add('  MAX(CASE WHEN Seq = 3 THEN ApproveDate END) AS ManagerDate,');
    SQL.Add('  MAX(CASE WHEN Seq = 4 THEN S_USER_ID END) AS DirectorID,');
    SQL.Add('  MAX(CASE WHEN Seq = 4 THEN USERNAME END) AS Director,');
    SQL.Add('  MAX(CASE WHEN Seq = 4 THEN ApproveDate END) AS DirectorDate,');
    SQL.Add('  MAX(CASE WHEN Seq = 5 THEN S_USER_ID END) AS DirectorID1,');
    SQL.Add('  MAX(CASE WHEN Seq = 5 THEN USERNAME END) AS Director1,');
    SQL.Add('  MAX(CASE WHEN Seq = 5 THEN ApproveDate END) AS DirectorDate1');
    SQL.Add(' FROM (');
    SQL.Add('    SELECT S_USER_ID, USERNAME, CONVERT(VARCHAR, ApproveDate, 111) AS ApproveDate, ISNULL(LEVEL_NO, 0) AS LEVEL_NO, ORG_DESC, ROW_NUMBER() OVER (ORDER BY ApproveDate) AS Seq FROM (');
    SQL.Add('     Select S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,Max(ApproveDate) as ApproveDate from ( ');
    SQL.Add('      SELECT S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) AS ApproveDate, SYS_ORG.LEVEL_NO, ORG_DESC,');
    SQL.Add('      ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) DESC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] AS SYS_TODOHIS');
    SQL.Add('      LEFT JOIN [EEP].[LingYi].[dbo].[SYS_ORG] AS SYS_ORG ON SYS_ORG.ORG_MAN = SYS_TODOHIS.S_ROLE_ID');
    SQL.Add('      WHERE FORM_TABLE = ''SGDH'' and FLOW_DESC=''模具請購單''  AND STATUS IN (''N'', ''Z'') AND FORM_PRESENTATION LIKE ''%'+ApplyMold.SGMas.FieldByName('SGNO').AsString+'%'' ');
    SQL.Add('     ) A Group by S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC ');
    SQL.Add('    ) AS ApproveData');
    SQL.Add('  ) AS ApproveData');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
    if RecordCount>0 then
    begin
      if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ApplicantID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp') then
      begin
        ApplicantID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp');
      end;
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp') then
      begin
        SupvervisorID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp');
      end;
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ManagerID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp') then
      begin
        ManagerID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp');
      end;
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('DirectorID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('DirectorID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('DirectorID').AsString+'.bmp') then
      begin
        DirectorID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('DirectorID').AsString+'.bmp');
      end;
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('DirectorID1').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('DirectorID1').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('DirectorID1').AsString+'.bmp') then
      begin
        DirectorID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('DirectorID1').AsString+'.bmp');
      end;
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ApplyMold.SGMas.FieldByName('CFMID1').AsString+'.bmp'),Pchar(AppDir+'Images\'+ApplyMold.SGMas.FieldByName('CFMID1').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+ApplyMold.SGMas.FieldByName('CFMID1').AsString+'.bmp') then
      begin
         TopManger.Picture.LoadFromFile(AppDir+'Images\'+ApplyMold.SGMas.FieldByName('CFMID1').AsString+'.bmp');
      end;
    end;
    Active:=false;
  end;
  }
  //==========
  if  Messagedlg(Pchar('Nha Cung Ung Chung 1 Don Mua Hang?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin

  end else
  begin
    with SGNOQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select SGDHS.SGNO ');
      SQL.Add('from SGDHS ');
      SQL.Add('left join CLZL on CLZL.CLDH = SGDHS.CLBH ');
      SQL.Add('Left join CGBJ on CGBJ.BJNO=SGDHS.BJNO ');
      SQL.Add('left join ZSZL on ZSZL.ZSDH = CGBJ.ZSBH');
      SQL.Add('Left join LBZLS on LBZLS.LBDH=CLZL.dwbh and LBZLS.LB=''02'' ');
      SQL.Add('where SGDHS.SGNO=:SGNO ');
      SQL.Add('Group by SGDHS.SGNO  ');
      SQL.Add('order by SGDHS.SGNO');
    end;
    with Query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select SGDHS.SGNO,SGDHS.CLBH,SGDHS.SGQty,SGDHS.Qty,SGDHS.USPrice,SGDHS.VNPrice,SGDHS.YQdate,SGDHS.Memo,SGDHS.BJNO');
      SQL.Add('       ,SGDHS.USERDate,SGDHS.USERID,SGDHS.YN');
      SQL.Add('       ,CLZL.YWPM,CLZL.ZWPM,ZSZL.ZSDH,ZSZL.zsywjc,CLZL.dwbh,LBZLS.ZWSM,ROW_NUMBER() over (PARTITION BY SGDHS.SGNO ORDER BY CLBH desc) as  rn');
      SQL.Add('from SGDHS');
      SQL.Add('left join CLZL on CLZL.CLDH = SGDHS.CLBH');
      SQL.Add('Left join CGBJ on CGBJ.BJNO=SGDHS.BJNO');
      SQL.Add('left join ZSZL on ZSZL.ZSDH = CGBJ.ZSBH');
      SQL.Add('Left join LBZLS on LBZLS.LBDH=CLZL.dwbh and LBZLS.LB=''02'' ');
      SQL.Add('where SGDHS.SGNO=:SGNO  ');
      SQL.Add('order by SGDHS.SGNO');
    end;
    QRBand2.ForceNewPage:=false;
  end;
  SGNOQry.Active:=true;
  Query1.Active:=true;
  Query2.Active:=true;

end;

end.
