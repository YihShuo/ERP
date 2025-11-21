unit DelOther_O_PrintTB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DBTables, DB, StdCtrls, QRPDFFilt ,IniFiles,
  ADODB, DelphiZXIngQRCode, DateUtils;

type
  TDelOther_O_PrintTB = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText12: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText9: TQRDBText;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetCLSL: TCurrencyField;
    DelDetYYBH: TStringField;
    DelDetYWSM: TStringField;
    DelDetZWPM: TStringField;
    DelDetZWSM: TStringField;
    UPDet: TUpdateSQL;
    QRDBText10: TQRDBText;
    Label1: TLabel;
    DelDetMEMO: TStringField;
    DelDetMEMO1: TMemoField;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText13: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText19: TQRDBText;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    Query1: TQuery;
    Query1DFL: TStringField;
    DirectorSign: TQRImage;
    Approver2Sign: TQRImage;
    ConfirmorSign: TQRImage;
    ApplicantSign: TQRImage;
    Approver1Sign: TQRImage;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    ManagerSign: TQRImage;
    QRDBText24: TQRDBText;
    QApprover: TQuery;
    tmpQry: TQuery;
    QApproverLLNO: TStringField;
    QApproverflowflag: TStringField;
    QApproverApplicantID: TStringField;
    QApproverApplicant: TStringField;
    QApproverApplicantDate: TStringField;
    QApproverConfirmorID: TStringField;
    QApproverConfirmor: TStringField;
    QApproverConfirmorDate: TStringField;
    QApproverManagerID: TStringField;
    QApproverManager: TStringField;
    QApproverManagerDate: TStringField;
    QApproverDirectorID: TStringField;
    QApproverDirector: TStringField;
    QApproverDirectorDate: TStringField;
    QApproverApprover1ID: TStringField;
    QApproverApprover1: TStringField;
    QApproverApprover1Date: TStringField;
    QApproverApprover2ID: TStringField;
    QApproverApprover2: TStringField;
    QApproverApprover2Date: TStringField;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QApproverSupvervisor1ID: TStringField;
    QApproverSupvervisor1: TStringField;
    QApproverSupvervisor1Date: TStringField;
    QRImage1: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    QRCodeBitmap:TBitmap;
    check: string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat,CWHL_DiplayFormat,IP,DBName,SignImgPath,DBUser,DBPass,PW:string;
    VNPrice_Decimal,CWHL_Decimal:Byte;
    CheckPosition_TB,CheckPosition_TY:String;
    Pos_Applicant_L,Pos_Manager_L,Pos_Confirmor_L,Pos_Approver1_L,Pos_Approver2_L: string;
    Pos_Sign_T ,Pos_Date_T :string;
    procedure UpLoadQRImg(QRdata:string);
  end;

var
  DelOther_O_PrintTB: TDelOther_O_PrintTB;

implementation

uses DelOther_O1, FunUnit;

{$R *.dfm}

procedure TDelOther_O_PrintTB.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;

begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  CheckPosition_TB:='N';
  CheckPosition_TY:='N';
  check:='';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //20230408 億柏版面
      CheckPosition_TB := MyIni.ReadString('ERP', 'Production_N322_CheckPosition_TB', 'N');
      //20230513 億春版面
      CheckPosition_TY := MyIni.ReadString('ERP', 'Production_N322_CheckPosition_TY', 'N');
      //
      Pos_Applicant_L:=MyIni.ReadString('ERP','Production_N322_Applicant_L','691');
      Pos_Confirmor_L:=MyIni.ReadString('ERP','Production_N322_Confirmor_L','499');
      Pos_Approver1_L:=MyIni.ReadString('ERP','Production_N322_Approver1_L','372');
      Pos_Approver2_L:=MyIni.ReadString('ERP','Production_N322_Approver2_L','286');
      Pos_Manager_L:=MyIni.ReadString('ERP','Production_N322_Manager_L','197');
      //
      Pos_Sign_T:= MyIni.ReadString('ERP','Production_N322_Sign_T','13');
      Pos_Date_T:= MyIni.ReadString('ERP','Production_N322_Date_T','55');
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
      SignImgPath := MyIni.ReadString('SignImgPath', 'Production_N322_ImgPath', '');
      check:=MyIni.ReadString('ERP','Company','');
      //
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TDelOther_O_PrintTB.UpLoadQRImg(QRdata:string);
var
  QRCode: TDelphiZXingQRCode;
  Row,Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try
    QRCode.Data:=QRdata;
    QRCode.Encoding := TQRCodeEncoding(3);
    QRCode.QuietZone := StrToIntDef('1',4);
    QRCodeBitmap.Width:=QRCode.Rows;
    QRCodeBitmap.Height:=QRCode.Columns;
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
end;

procedure TDelOther_O_PrintTB.FormCreate(Sender: TObject);
var  ADate, BDate : TDateTime;
begin
  ReadIni();
  ADate := DelOther_O.DelMas.fieldbyname('USERDATE').Value;
  BDate := EncodeDate(2023, 6, 30);
  if (CompareDate(ADate,BDate)>0) and (check='TYXUAN') then
  begin
    QRCodeBitmap:=TBitmap.Create;
    UpLoadQRImg(DelOther_O.DelMas.fieldbyname('LLNO').AsString);
    QRImage1.Picture.Assign(QRCodeBitmap);
  end;
  //20230408 億柏位置調整
  if CheckPosition_TB='Y' then
  begin
    ApplicantSign.Left:= strtoint(Pos_Applicant_L);
    ConfirmorSign.Left:= strtoint(Pos_Confirmor_L);
    Approver1Sign.Left:= strtoint(Pos_Approver1_L);
    Approver2Sign.Left:= strtoint(Pos_Approver2_L);
    ManagerSign.Left:= strtoint(Pos_Manager_L);

    QRDBText19.Left:= strtoint(Pos_Applicant_L);
    QRDBText20.Left:= strtoint(Pos_Confirmor_L);
    QRDBText22.Left:= strtoint(Pos_Approver1_L);
    QRDBText18.Left:= strtoint(Pos_Approver2_L);;
    QRDBText24.Left:= strtoint(Pos_Manager_L);

    ApplicantSign.Top:= strtoint(Pos_Sign_T);
    ConfirmorSign.Top:= strtoint(Pos_Sign_T);
    Approver1Sign.Top:= strtoint(Pos_Sign_T);
    Approver2Sign.Top:= strtoint(Pos_Sign_T);
    ManagerSign.Top:= strtoint(Pos_Sign_T);

    QRDBText19.Top:= strtoint(Pos_Date_T);
    QRDBText20.Top:= strtoint(Pos_Date_T);
    QRDBText22.Top:= strtoint(Pos_Date_T);
    QRDBText18.Top:= strtoint(Pos_Date_T);
    QRDBText24.Top:= strtoint(Pos_Date_T);
    //總務單位主管
    QRDBText25.DataField := '';
    QRDBText26.DataField := '';
  end;
  //億春版面調整
  if CheckPosition_TY='Y' then
  begin
     Approver1Sign.Visible:=false;
     QRDBText21.DataField := '';
     QRDBText22.DataField := '';
     ManagerSign.Visible:=false;
     QRDBText23.DataField := '';
     QRDBText24.DataField := '';
     DirectorSign.Visible:=true;
     QRDBText13.DataField := '';
     QRDBText17.DataField := '';
  end;

  Query1.Active := true;
  //QApprover.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
  if (Query1.FieldByName('DFL').IsNull) then
  begin
    with QApprover do
      begin
      Active := false;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT LLNO, flowflag, ApplicantID, Applicant, ApplicantDate, KCLL.CFMID AS ConfirmorID, BUsers.UserName AS Confirmor,');
      SQL.Add('      CONVERT(VARCHAR, CFMDate, 111) AS ConfirmorDate, ManagerID , Manager ,');
      SQL.Add('      ManagerDate , DirectorID , Director , DirectorDate ,');
      SQL.Add('      Approver1ID, Approver1, Approver1Date, Supvervisor1ID, Supvervisor1, Supvervisor1Date, Approver2ID, Approver2 , Approver2Date FROM KCLL');
      SQL.Add('LEFT JOIN BUsers ON BUsers.USERID = KCLL.CFMID');
      SQL.Add('LEFT JOIN (');
      SQL.Add(' SELECT MAX(APPID) AS ApplicantID,  ');
      SQL.Add('  MAX(APPNAME) AS Applicant,  ');
      SQL.Add('  MAX( CAST(BEGIN_TIME AS DATE)) AS ApplicantDate,  ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S1'' THEN ACCOUNT END) AS SupvervisorID,');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S1'' THEN NAME END) AS Supvervisor, ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S1'' THEN FINISH_TIME END) AS SupvervisorDate,');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S2'' THEN ACCOUNT END) AS ManagerID,  ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S2'' THEN NAME END) AS Manager,');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S2'' THEN FINISH_TIME END) AS ManagerDate,');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S3'' THEN ACCOUNT END) AS Approver1ID, ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S3'' THEN NAME END) AS Approver1,');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''S3'' THEN FINISH_TIME END) AS Approver1Date, ');
      sql.Add('  MAX(CASE WHEN SITE_CODE = ''SE'' THEN ACCOUNT END) AS DirectorID,');
      sql.Add('  MAX(CASE WHEN SITE_CODE = ''SE'' THEN NAME END) AS Director,');
      sql.Add('  MAX(CASE WHEN SITE_CODE = ''SE'' THEN FINISH_TIME END) AS DirectorDate,');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''SE'' THEN ACCOUNT END) AS Supvervisor1ID, ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''SE'' THEN NAME END) AS Supvervisor1,  ');
      SQL.Add('  MAX(CASE WHEN SITE_CODE = ''SE'' THEN FINISH_TIME END) AS Supvervisor1Date,  ');
      SQL.Add('  MAX(CASE WHEN GROUP_NAME = ''行政事務'' THEN ACCOUNT END) AS Approver2ID,  ');
      SQL.Add('  MAX(CASE WHEN GROUP_NAME = ''行政事務'' THEN NAME END) AS Approver2,  ');
      SQL.Add('  MAX(CASE WHEN GROUP_NAME = ''行政事務'' THEN FINISH_TIME END) AS Approver2Date  ');
      SQL.Add('     FROM (  SELECT * FROM OPENQUERY([BPM_TRINHKY],');
      SQL.Add('     ''SELECT SUBSTRING(TB_EB_USER.ACCOUNT, PATINDEX(''''%[0-9]%'''', TB_EB_USER.ACCOUNT), LEN(TB_EB_USER.ACCOUNT)) ACCOUNT,CAST([UOF].[dbo].fSignsToNoSigns(TB_EB_USER.NAME) AS VARCHAR(200)) NAME,CAST(FINISH_TIME AS DATE) FINISH_TIME, ');
      SQL.Add('             TB_EB_GROUP.GROUP_NAME, TITLE_NAME, SUBSTRING(US.ACCOUNT, PATINDEX(''''%[0-9]%'''', US.ACCOUNT), LEN(US.ACCOUNT)) APPID, CAST([UOF].[dbo].fSignsToNoSigns(US.NAME) AS VARCHAR(200)) as APPNAME, TB_WKF_TASK.BEGIN_TIME, ');
      SQL.Add('             ROW_NUMBER() OVER (PARTITION BY FINISH_TIME ORDER BY FINISH_TIME DESC) AS RowID, TB_EB_GROUP.LEV, APPGROUP.LEV APPGROUP_LEV, APPGROUP.GROUP_NAME APPGROUP, SITE_CODE ');
      SQL.Add('      FROM [UOF].[dbo].[TB_WKF_TASK] TB_WKF_TASK  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[LYV_MaterialExport] LYN_FormSigner on LYN_FormSigner.TableName=''''KCLL'''' and LYN_FormSigner.Type=''''XXXXXXXXXX'''' and LYN_FormSigner.FNO=TB_WKF_TASK.DOC_NBR ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE_SIGNER_INFO] TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_EMPL_DEP] TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GUID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_USER] US ON US.USER_GUID=TB_WKF_TASK.AGENT_USER  ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] APPGROUP ON APPGROUP.GROUP_ID=TB_WKF_TASK.USER_GROUP_ID ');
      SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_JOB_TITLE] TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID  ');
      SQL.Add('      LEFT JOIN [dbo].[TB_WKF_TASK_TRIGGER_RECORD] ON TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TASK_NODE.SITE_ID');
      SQL.Add('      WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_FormSigner.TNO=''''' + DelOther_O.DelMas.FieldByName('LLNO').AsString + ''''''') AS OP  ');
      SQL.Add('      	  ) AS ApproveDataBPM   ');
      SQL.Add(') AS ApproveData ON 1 = 1');
      SQL.Add('WHERE KCLL.LLNO = ''' + DelOther_O.DelMas.FieldByName('LLNO').AsString + ''' and Supvervisor1ID is not null');
      //funcObj.WriteErrorLog(sql.Text);
      Active := true;

      if (FileExists(SignImgPath + FieldByName('ApplicantID').AsString + '.bmp')) then
      begin
        ApplicantSign.Picture.LoadFromFile(SignImgPath + FieldByName('ApplicantID').AsString + '.bmp');
        QRDBText16.DataField := '';
      end;

      if (FileExists(SignImgPath + FieldByName('ConfirmorID').AsString + '.bmp')) then
      begin
        ConfirmorSign.Picture.LoadFromFile(SignImgPath + FieldByName('ConfirmorID').AsString + '.bmp');
        QRDBText15.DataField := '';
      end;

      if (FileExists(SignImgPath + FieldByName('Approver1ID').AsString + '.bmp')) then
      begin
        Approver1Sign.Picture.LoadFromFile(SignImgPath + FieldByName('Approver1ID').AsString + '.bmp');
        QRDBText21.DataField := '';
      end;

      if (FileExists(SignImgPath + FieldByName('Approver2ID').AsString + '.bmp')) then
      begin
        Approver2Sign.Picture.LoadFromFile(SignImgPath + FieldByName('Approver2ID').AsString + '.bmp');
        QRDBText14.DataField := '';
      end;

      if (FileExists(SignImgPath + FieldByName('ManagerID').AsString + '.bmp')) then
      begin
        ManagerSign.Picture.LoadFromFile(SignImgPath + FieldByName('ManagerID').AsString + '.bmp');
        QRDBText23.DataField := '';
      end;

      if (FileExists(SignImgPath + FieldByName('Supvervisor1ID').AsString + '.bmp')) then
      begin
        DirectorSign.Picture.LoadFromFile(SignImgPath + FieldByName('Supvervisor1ID').AsString + '.bmp');
        QRDBText13.DataField := '';
      end;
    end;
  end
  else begin
    //隱藏
    QRDBText13.DataField := '';
    QRDBText14.DataField := '';
    QRDBText15.DataField := '';
    QRDBText16.DataField := '';
    QRDBText17.DataField := '';
    QRDBText18.DataField := '';
    QRDBText19.DataField := '';
    QRDBText20.DataField := '';
    QRDBText21.DataField := '';
    QRDBText22.DataField := '';
    QRDBText23.DataField := '';
    QRDBText24.DataField := '';
    QRDBText25.DataField := '';
    QRDBText26.DataField := '';
  end;

  if (QApprover.Active) then
  begin
    if (QApprover.FieldByName('flowflag').AsString <> 'Z') then
    begin
      //隱藏
      QRDBText13.DataField := '';
      QRDBText14.DataField := '';
      QRDBText15.DataField := '';
      QRDBText16.DataField := '';
      QRDBText17.DataField := '';
      QRDBText18.DataField := '';
      QRDBText19.DataField := '';
      QRDBText20.DataField := '';
    end;
  end;

  with DelDet do
  begin
    Active := true;

    while not eof do
    begin
      Edit;
      if FieldByName('Memo1').IsNull then
      begin
        FieldByName('Memo1').Value := '';
      end;
      FieldByName('Memo1').Value := Trim(FieldByName('YWSM').Value) + ' /' + Trim(FieldByName('ZWSM').Value) + ' //' + Trim(FieldByName('Memo1').Value);
      Post;
      Next;
    end;
  end;
end;

procedure TDelOther_O_PrintTB.FormDestroy(Sender: TObject);
begin
  DelOther_O_PrintTB:=nil;
  QRCodeBitmap.Free;
end;

procedure TDelOther_O_PrintTB.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  action:=Cafree;
end;

end.
