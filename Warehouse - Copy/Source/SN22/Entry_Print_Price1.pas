unit Entry_Print_Price1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, QRExport, QRXMLSFilt, QRPDFFilt, QRCtrls, QuickRpt,
  ExtCtrls, IniFiles, ADODB;

type
  TEntry_Print_Price = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    QRTextFilter1: TQRTextFilter;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetRKSB: TStringField;
    EnDetPaQty: TFloatField;
    EnDetQty: TCurrencyField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetFKZT: TStringField;
    UpdateSQL1: TUpdateSQL;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetCWHL: TCurrencyField;
    QRLabel2: TQRLabel;
    QRDBText15: TQRDBText;
    ADOQuery: TADOQuery;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    CQCNBPTM: TQRImage;
    CQBPTM: TQRImage;
    CQK: TQRImage;
    Applicant: TQRImage;
    TM: TQRImage;
    ADOQueryApplicantID: TWideStringField;
    ADOQueryApplicant: TStringField;
    ADOQueryApplicantDate: TWideStringField;
    ADOQueryCQKID: TWideStringField;
    ADOQueryCQK: TStringField;
    ADOQueryCQKDate: TWideStringField;
    ADOQueryTMID: TWideStringField;
    ADOQueryTM: TStringField;
    ADOQueryCQBPTMID: TWideStringField;
    ADOQueryCQBPTM: TStringField;
    ADOQueryCQBPTMDate: TWideStringField;
    ADOQueryCQCNBPTMID: TWideStringField;
    ADOQueryCQCNBPTM: TStringField;
    ADOQueryCQCNBPTMDate: TWideStringField;
    ADOQueryTMDate: TWideStringField;
    QRLabel4: TQRLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    ComName, AppDir: string;
    IP, DBName, DBUser, DBPass, PW: string;
    FileServerIP: string;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    VNPrice_DiplayFormat: string;
    VNPrice_Decimal: Byte;
  end;

var
  Entry_Print_Price: TEntry_Print_Price;

implementation

uses
  main1, EntryConfirm1, FunUnit;

{$R *.dfm}
procedure TEntry_Print_Price.ReadIni();
var
  MyIni: Tinifile;
  AppDir: string;
  ad_PW, i: integer;
  sline_PW, tempstr_PW: string;
  //Brian, Roly,Tuan: string;
begin
  //
  VNPrice_DiplayFormat := '#,##0';
  VNPrice_Decimal := 0;
  AppDir := ExtractFilePath(Application.ExeName);
  FileServerIP := main.ServerIP;
  if FileExists(AppDir + '\ComName.ini') = true then
  begin
    try
      MyIni := Tinifile.Create(AppDir + '\ComName.ini');
      VNPrice_DiplayFormat := MyIni.ReadString('VNPrice', 'DiplayFormat', '#,##0');
      VNPrice_Decimal := strtoint(MyIni.ReadString('VNPrice', 'Decimal', '0'));
      FileServerIP := MyIni.ReadString('ERP', 'FileServerIP', main.ServerIP);
      IP := MyIni.ReadString('ERPServer', 'IP', '');
      DBName := MyIni.ReadString('ERPServer', 'Database', '');
      DBUser := MyIni.ReadString('ERPServer', 'User', '');
      DBPass := MyIni.ReadString('ERPServer', 'Pass', '');
      sline_PW := '';
      ad_PW := strtoint(copy(DBPass, 0, 1));
      for i := 2 to (length(DBPass)) do
      begin
        tempstr_PW := copy(DBPass, i, 1);
        sline_PW := sline_PW + chr(ord(tempstr_PW[1]) - ad_PW);
      end;
      PW := sline_PW;
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat := VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('CWHL')).DisplayFormat := VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat := VNPrice_DiplayFormat;
end;

procedure TEntry_Print_Price.FormDestroy(Sender: TObject);
begin
  Entry_Print_Price := nil;
end;

procedure TEntry_Print_Price.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TEntry_Print_Price.FormCreate(Sender: TObject);
var
  arr: TStringList;
  userName: string;
begin
  EnDet.Active := true;
  AppDir:=ExtractFilePath(Application.ExeName);
  ReadIni();
  //if (main.Edit2.Text = 'VA12') or (main.Edit2.Text = 'VC2') then
  //begin
    ADOQuery.ConnectionString := 'Provider=SQLOLEDB.1;Password=' + PW + ';Persist Security Info=True;User ID=' + DBUser + ';Initial Catalog=' + DBName + ';Data Source=' + IP;
    with ADOQuery do
    begin
     { Active := false;
      SQL.Clear;
      SQL.Add('  select DISTINCT CGNO,CGZL.UserID,CGZL.Userdate,Busers.USERNAME from KCRK  ');
      SQL.Add('  LEFT JOIN dbo.KCRKS ON KCRKS.RKNO = KCRK.RKNO ');
      SQL.Add('  LEFT JOIN CGZL ON CGZL.CGNO=dbo.KCRK.ZSNO ');
      SQL.Add('  left join dbo.Busers on Busers.USERID = CGZL.USERID ');
      SQL.Add('   where KCRKS.RKNO=''' + EntryConfirm.EnDet.FieldByName('RKNO').AsString + ''' ');
      //ShowMessage(SQL.Text);
      Active := true;
      if RecordCount > 0 then
      begin
        arr := funcObj.SplitString(FieldByName('UserName').AsString, ' ');
        if arr.Count > 0 then
          userName := arr[arr.Count - 1];
        QRLabel3.Caption := userName;
      end;     }
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT MAX(APPID) AS ApplicantID,');
      SQL.Add('MAX(APPNAME) AS Applicant,');
      SQL.Add('MAX(CAST(BEGIN_TIME AS DATE)) AS ApplicantDate,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQK'' THEN ACCOUNT END) AS CQKID,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQK'' THEN NAME END) AS CQK,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQK'' THEN FINISH_TIME END) AS CQKDate,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = '''' THEN ACCOUNT END) AS TMID,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = '''' THEN NAME END) AS TM,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = '''' THEN FINISH_TIME END) AS TMDate,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQBPTM'' THEN ACCOUNT END) AS CQBPTMID,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQBPTM'' THEN NAME END) AS CQBPTM,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQBPTM'' THEN FINISH_TIME END) AS CQBPTMDate,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQCNBPTM'' THEN ACCOUNT END) AS CQCNBPTMID,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQCNBPTM'' THEN NAME END) AS CQCNBPTM,');
      SQL.Add('MAX(CASE WHEN SITE_CODE = ''CQCNBPTM'' THEN FINISH_TIME END) AS CQCNBPTMDate');
      SQL.Add('FROM (  SELECT * FROM OPENQUERY([UOFWEB],');
      SQL.Add('''SELECT SUBSTRING(TB_EB_USER.ACCOUNT, PATINDEX(''''%[0-9]%'''', TB_EB_USER.ACCOUNT), LEN(TB_EB_USER.ACCOUNT)) ACCOUNT,');
      SQL.Add('case when TB_WKF_TASK_NODE.ACTUAL_SIGNER<>TB_WKF_TASK_NODE.ORIGINAL_SIGNER then ''''1'''' else '''''''' end as NAME,');
      SQL.Add('CAST(FINISH_TIME AS DATE) FINISH_TIME, TB_EB_GROUP.GROUP_NAME, TITLE_NAME, SUBSTRING(US.ACCOUNT, PATINDEX(''''%[0-9]%'''', US.ACCOUNT), LEN(US.ACCOUNT)) APPID, CAST([UOF].[dbo].fSignsToNoSigns(US.NAME) AS VARCHAR(200)) as APPNAME,');
      SQL.Add('TB_WKF_TASK.BEGIN_TIME, ROW_NUMBER() OVER (PARTITION BY FINISH_TIME ORDER BY FINISH_TIME DESC) AS RowID, TB_WKF_TASK_TRIGGER_RECORD.SITE_CODE, TB_EB_GROUP.LEV, APPGROUP.LEV APPGROUP_LEV, APPGROUP.GROUP_NAME APPGROUP');
      SQL.Add('FROM [UOF].[dbo].[TB_WKF_TASK] TB_WKF_TASK');
      SQL.Add('LEFT JOIN [UOF].[dbo].[LYN_KCRK] LYN_KCRK on LYN_KCRK.LNO=TB_WKF_TASK.DOC_NBR');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_TRIGGER_RECORD] TB_WKF_TASK_TRIGGER_RECORD ON TB_WKF_TASK_TRIGGER_RECORD.TASK_ID=TB_WKF_TASK_NODE.TASK_ID AND TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TASK_NODE.SITE_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE_SIGNER_INFO] TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_EMPL_DEP] TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GUID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_USER] US ON US.USER_GUID=TB_WKF_TASK.AGENT_USER');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] APPGROUP ON APPGROUP.GROUP_ID=TB_WKF_TASK.USER_GROUP_ID');
      SQL.Add('LEFT JOIN [UOF].[dbo].[TB_EB_JOB_TITLE] TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID');
      SQL.Add('WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_KCRK.RKNO=''''' + EntryConfirm.EnMas.FieldByName('RKNO').AsString + ''''''') AS OP');
      SQL.Add(') AS ApproveDataBPM');
      //ShowMessage(SQL.Text);
      Active := true;
    end;
    if ADOQuery.RecordCount>0 then
    begin
      if ADOQuery.FieldByName('CQCNBPTM').AsString = '1' then QRLabel4.Caption:='代' else QRLabel4.Caption:='';
      if ADOQuery.FieldByName('CQBPTM').AsString = '1' then QRLabel5.Caption:='代' else QRLabel5.Caption:='';
      if ADOQuery.FieldByName('CQK').AsString = '1' then QRLabel6.Caption:='代' else QRLabel6.Caption:='';
      if ADOQuery.FieldByName('Applicant').AsString = '1' then QRLabel7.Caption:='代' else QRLabel7.Caption:='';
      if ADOQuery.FieldByName('TM').AsString = '1' then QRLabel3.Caption:='代' else QRLabel3.Caption:='';
      if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');

      //   chu quan bo phan cao nhat
      if ADOQuery.FieldByName('CQCNBPTMID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('CQCNBPTMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('CQCNBPTMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('CQCNBPTMID').AsString+'_RK.bmp') then
        begin
          CQCNBPTM.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('CQCNBPTMID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('CQCNBPTM').AsString = '1' then QRLabel4.Caption:='代' else QRLabel4.Caption:='';
        end;
      end else
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('CQCNBPTMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('CQCNBPTMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('CQCNBPTMID').AsString+'_RK.bmp') then
        begin
          CQCNBPTM.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('CQCNBPTMID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('CQCNBPTM').AsString = '1' then QRLabel4.Caption:='代' else QRLabel4.Caption:='';
        end;
      end;
      //    chu quan bo phan
    {  if ADOQuery.FieldByName('CQBPTMID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp') then
        begin
          CQBPTM.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('CQBPTM').AsString = '1' then QRLabel5.Caption:='代' else QRLabel5.Caption:='';
        end;
      end else
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp') then
        begin
          CQBPTM.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('CQBPTMID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('CQBPTM').AsString = '1' then QRLabel5.Caption:='代' else QRLabel5.Caption:='';
        end;
      end;       }
      //     chu quan kho
      if ADOQuery.FieldByName('CQKID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('CQKID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('CQKID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('CQKID').AsString+'_RK.bmp') then
        begin
          CQK.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('CQKID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('CQK').AsString = '1' then QRLabel6.Caption:='代' else QRLabel6.Caption:='';
        end;
      end else
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('CQKID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('CQKID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('CQKID').AsString+'_RK.bmp') then
        begin
          CQK.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('CQK').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('CQK').AsString = '1' then QRLabel6.Caption:='代' else QRLabel6.Caption:='';
        end;
      end;
      //      nhan vien kho
      if ADOQuery.FieldByName('ApplicantID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('ApplicantID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('ApplicantID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('ApplicantID').AsString+'_RK.bmp') then
        begin
          Applicant.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('ApplicantID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('Applicant').AsString = '1' then QRLabel7.Caption:='代' else QRLabel7.Caption:='';
        end;
      end else
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('ApplicantID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('ApplicantID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('ApplicantID').AsString+'_RK.bmp') then
        begin
          Applicant.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('ApplicantID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('Applicant').AsString = '1' then QRLabel7.Caption:='代' else QRLabel7.Caption:='';
        end;
      end;
      //     nhan vien thu mua
      if ADOQuery.FieldByName('TMID').Value <> '' then
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('TMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('TMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('TMID').AsString+'_RK.bmp') then
        begin
          TM.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('TMID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('TM').AsString = '1' then QRLabel3.Caption:='代' else QRLabel3.Caption:='';
        end;
      end else
      begin
        CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+ADOQuery.FieldByName('TMID').AsString+'_RK.bmp'),Pchar(AppDir+'Images\'+ADOQuery.FieldByName('TMID').AsString+'_RK.bmp'),false);
        if FileExists(AppDir+'Images\'+ADOQuery.FieldByName('TMID').AsString+'_RK.bmp') then
        begin
          TM.Picture.LoadFromFile(AppDir+'Images\'+ADOQuery.FieldByName('TMID').AsString+'_RK.bmp');
          if ADOQuery.FieldByName('TM').AsString = '1' then QRLabel3.Caption:='代' else QRLabel3.Caption:='';
        end;
      end;
    end;
  //end;
end;

end.

