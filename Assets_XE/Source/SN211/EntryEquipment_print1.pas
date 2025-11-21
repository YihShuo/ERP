unit EntryEquipment_print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, iniFiles, Data.DB, Data.Win.ADODB;

type
  TEntryEquipment_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText20: TQRDBText;
    QRDBText4: TQRDBText;
    L1: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRShape24: TQRShape;
    QRLabel8: TQRLabel;
    QRShape17: TQRShape;
    QRShape3: TQRShape;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape15: TQRShape;
    QRShape19: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape5: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel50: TQRLabel;
    ManagerID: TQRImage;
    LeaderID: TQRImage;
    QRLabel49: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    SupvervisorID: TQRImage;
    ApplicantID: TQRImage;
    QRLabel15: TQRLabel;
    QRLabel13: TQRLabel;
    QApprover: TADOQuery;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel: TQRLabel;
    QRSysData1: TQRSysData;
    QPage1: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel7: TQRLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure Readini();
  public
    { Public declarations }
    IP,DBName,DBUser,DBPass,PW:String;
  end;

var
  EntryEquipment_print: TEntryEquipment_print;

implementation
  uses main1, EntryEquipment1;
{$R *.dfm}

procedure TEntryEquipment_print.Readini();
var MyIni :Tinifile;
    ComName,ComNameCH,AssetsN211_ISO:string;
    //
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
      AssetsN211_ISO:=MyIni.ReadString('ERP','AssetsN211_ISO','CA-02F');
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
  L1.Caption:=ComNameCH;
  QRLabel7.Caption:=AssetsN211_ISO;
end;

procedure TEntryEquipment_print.FormCreate(Sender: TObject);
begin
  Readini();
  //簽核系統審核  20221215
  QApprover.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
  with QApprover do
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
    SQL.Add('  MAX(CASE WHEN ((S_STEP_DESC = ''廠主管'') or (S_STEP_DESC = ''單位主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''部門主管'' and LEVEL_NO>20) or (S_STEP_DESC = ''申請人'' and LEVEL_NO>20) ) THEN ApproveDate END) AS ManagerDate    ');
    SQL.Add('       FROM (  ');
    SQL.Add('      ');
    SQL.Add('    SELECT S_USER_ID, USERNAME, CONVERT(VARCHAR, ApproveDate, 111) AS ApproveDate, ISNULL(LEVEL_NO, 0) AS LEVEL_NO, S_STEP_DESC, ROW_NUMBER() OVER ( ORDER BY ApproveDate) AS Seq FROM (  ');
    SQL.Add('      Select S_USER_ID,USERNAME,LEVEL_NO,ORG_DESC,S_STEP_DESC,Max(ApproveDate) as ApproveDate from (  ');
    SQL.Add('      SELECT S_USER_ID, USERNAME, CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) AS ApproveDate, SYS_ORG.LEVEL_NO, ORG_DESC,S_STEP_DESC,  ');
    SQL.Add('      ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) DESC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] AS SYS_TODOHIS  ');
    SQL.Add('      LEFT JOIN (Select ORG_MAN,LEVEL_NO,ORG_DESC,ROW_NUMBER() OVER (ORDER BY LEVEL_NO Desc) AS Seq from [EEP].[LingYi].[dbo].[SYS_ORG]  ) AS SYS_ORG ON SYS_ORG.ORG_MAN = SYS_TODOHIS.S_ROLE_ID --and SYS_ORG.ORG_KIND=''1000''  ');
    SQL.Add('      WHERE FORM_TABLE = ''TSCD_KCRK'' AND STATUS IN (''N'', ''Z'') AND FORM_PRESENTATION LIKE ''%'+EntryEquipment.EnMas.FieldByName('RKNO').AsString+'%''  ');
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
        ApplicantID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ApplicantID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp') then
      begin
        SupvervisorID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('SupvervisorID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('LeaderID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp') then
      begin
        LeaderID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('LeaderID').AsString+'.bmp');
      end;
      //
      CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Images\'+FieldByName('ManagerID').AsString+'.bmp'),Pchar(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp'),false);
      if FileExists(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp') then
      begin
        ManagerID.Picture.LoadFromFile(AppDir+'Images\'+FieldByName('ManagerID').AsString+'.bmp');
      end;
      //
    end;
    Active:=false;
  end;
  //
end;

procedure TEntryEquipment_print.FormDestroy(Sender: TObject);
begin
  EntryEquipment_print:=nil;
end;

procedure TEntryEquipment_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

end.
