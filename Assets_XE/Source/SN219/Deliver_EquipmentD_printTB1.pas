unit Deliver_EquipmentD_printTB1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QRCtrls, QuickRpt, Vcl.ExtCtrls,
  Data.DB, Bde.DBTables, IniFiles, qrpctrls, Data.Win.ADODB,fununit;

type
  TDeliver_EquipmentD_printTB = class(TForm)
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
    QRLabel22: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape4: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel102: TQRLabel;
    QRShape7: TQRShape;
    QRShape16: TQRShape;
    QRLabel103: TQRLabel;
    QRPCheckBox1: TQRPCheckBox;
    QRLabel104: TQRLabel;
    QRPCheckBox2: TQRPCheckBox;
    QRLabel120: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel170: TQRLabel;
    QRShape18: TQRShape;
    DepNameLabel: TQRLabel;
    UserDateLabel: TQRLabel;
    ApplyDateLabel: TQRLabel;
    AssetBHLabel: TQRLabel;
    AssetNameLabel: TQRLabel;
    ReasonLabel11: TQRLabel;
    InnerRepairLabel1: TQRLabel;
    OuterRepairLabel2: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel24: TQRLabel;
    SupvervisorID1: TQRImage;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRLabel290: TQRLabel;
    QRLabel300: TQRLabel;
    QRLabel210: TQRLabel;
    UserNameLabel: TQRLabel;
    ApplicantID1: TQRImage;
    QRLabel310: TQRLabel;
    TopManagerID1: TQRImage;
    CDLeaderID2: TQRImage;
    CDID2: TQRImage;
    ManagerID1: TQRImage;
    LeaderID1: TQRImage;
    QRBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRISO: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    DelDet1: TQuery;
    DelDet1LLNO: TStringField;
    DelDet1DepName: TStringField;
    DelDet1DepMemo: TStringField;
    DelDet1VWPM: TStringField;
    DelDet1YWPM: TStringField;
    DelDet1ZWPM: TStringField;
    DelDet1QUCBH: TStringField;
    DelDet1LSBH: TStringField;
    DelDet1DWBH: TStringField;
    DelDet1Qty: TFloatField;
    DelDet1TSBH: TStringField;
    DelDet1Reason: TStringField;
    DelDet1UserDate: TStringField;
    DelDet1ApplyDate: TStringField;
    DelDet1CKRepair: TStringField;
    DelDet1RepairResult: TStringField;
    DelDet1USERNAME: TStringField;
    DelDet1CFMUserName: TStringField;
    QRPreviewController2: TQRPreviewController;
    QApprover1: TADOQuery;
    QRShape11: TQRShape;
    QRLabel3: TQRLabel;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel240: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure ReadIni();
  public
    IP,DBName,DBUser,DBPass,PW:String;
    { Public declarations }
  end;

var
  Deliver_EquipmentD_printTB: TDeliver_EquipmentD_printTB;

implementation
  uses main1, Deliver_EquipmentD1;
{$R *.dfm}

procedure TDeliver_EquipmentD_printTB.ReadIni();
var MyIni :Tinifile;
    AppDir,ComNameCH,ComName,AssetsN219_ISO:string;
    //
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  ComName:='CONG TY TNHH TY XUAN';
  AssetsN219_ISO:='T-DCC-082B';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
      ComName:=MyIni.ReadString('ERP','ComName','');
      AssetsN219_ISO:=MyIni.ReadString('ERP','AssetsN219_ISO','T-DCC-082B');
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
  QRISO.Caption:=AssetsN219_ISO;
end;

procedure TDeliver_EquipmentD_printTB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDeliver_EquipmentD_printTB.FormCreate(Sender: TObject);
var All_AssetBH,All_AssetName,All_Reason,All_Repair:String;
begin
  DelDet1.Active:=true;
  ReadIni();
  //簽核系統審核  20221215
  QApprover1.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
  with QApprover1 do
  begin
    Active := false;
    SQL.Clear;
    //
    SQL.Add('  SELECT MAX(CASE WHEN S_STEP_DESC = ''申請人''  THEN S_USER_ID END) AS ApplicantID,  ');
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
    SQL.Add('      WHERE FORM_TABLE = ''TSCD_KCLL'' AND STATUS IN (''N'', ''Z'') AND FORM_PRESENTATION LIKE ''%'+Deliver_EquipmentD.DelMas.FieldByName('LLNO').AsString+'%''  ');
    SQL.Add('      	  ) A Group by S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STEP_DESC  ');
    SQL.Add('    ) AS ApproveData  ');
    SQL.Add('    ');
    SQL.Add('  ) AS ApproveData  ');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
    if RecordCount>0 then
    begin
      if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ApplicantID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp') then
      begin
        ApplicantID1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp') then
      begin
        SupvervisorID1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('LeaderID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp') then
      begin
        LeaderID1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ManagerID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp') then
      begin
        ManagerID1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('CDID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('CDID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('CDID').AsString+'.bmp') then
      begin
        //CDID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('CDID').AsString+'.bmp');
        CDID2.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('CDID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('CDLeaderID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('CDLeaderID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('CDLeaderID').AsString+'.bmp') then
      begin
        //CDLeaderID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('CDLeaderID').AsString+'.bmp');
        CDLeaderID2.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('CDLeaderID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('TopManagerID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('TopManagerID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('TopManagerID').AsString+'.bmp') then
      begin
        TopManagerID1.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('TopManagerID').AsString+'.bmp');
      end;
      //
    end;
    Active:=false;
  end;
  //
  LLNOLabel.Caption:=DelDet1.FieldByName('LLNO').AsString;
  DepNameLabel.Caption:=DelDet1.FieldByName('DepName').AsString+' '+DelDet1.FieldByName('DepMemo').AsString;
  UserDateLabel.Caption:=DelDet1.FieldByName('UserDate').AsString;
  ApplyDateLabel.Caption:=DelDet1.FieldByName('ApplyDate').AsString;
  UserNameLabel.Caption:=DelDet1.FieldByName('UserName').AsString;
  //CFMUserName.Caption:=DelDet.FieldByName('CFMUserName').AsString;
  //
  DelDet1.First;
  while not DelDet1.Eof do
  begin
    All_AssetBH:=All_AssetBH+DelDet1.FieldByName('TSBH').AsString+',';
    All_AssetName:=All_AssetName+DelDet1.FieldByName('VWPM').AsString+DelDet1.FieldByName('ZWPM').AsString+',';
    All_Reason:=All_Reason+DelDet1.FieldByName('Reason').AsString+',';
    All_Repair:=All_Repair+DelDet1.FieldByName('RepairResult').AsString+',';
    DelDet1.Next;
  end;

  if length(All_AssetBH)>0 then  All_AssetBH:=Copy(All_AssetBH,1,length(All_AssetBH)-1);
  if length(All_AssetName)>0 then  All_AssetName:=Copy(All_AssetName,1,length(All_AssetName)-1);
  if length(All_Reason)>0 then  All_Reason:=Copy(All_Reason,1,length(All_Reason)-1);
  if length(All_Repair)>0 then  All_Repair:=Copy(All_Repair,1,length(All_Repair)-1);
  //
  AssetBHLabel.Caption:=All_AssetBH;
  AssetNameLabel.Caption:=All_AssetName;
  ReasonLabel11.Caption:=All_Reason;
  InnerRepairLabel1.Caption:='';
  OuterRepairLabel2.Caption:='';
  if DelDet1.FieldByName('CKRepair').AsString='1'  then
  begin
    QRPCheckBox1.Checked:=true;
    InnerRepairLabel1.Caption:=All_Repair;
  end else if DelDet1.FieldByName('CKRepair').AsString='2'  then
  begin
    QRPCheckBox2.Checked:=true;
    OuterRepairLabel2.Caption:=All_Repair;
  end;
end;

procedure TDeliver_EquipmentD_printTB.FormDestroy(Sender: TObject);
begin
  Deliver_EquipmentD_printTB:=nil;
end;

end.
