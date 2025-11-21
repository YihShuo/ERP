unit ReplenishDel_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls, DB, DBTables, QRPDFFilt, IniFiles;

type
  TReplenishDel_Print = class(TForm)
    QuickRep1: TQuickRep;
    QRCompositeReport1: TQRCompositeReport;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    ColumnHeaderBand2: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText15: TQRDBText;
    BLDet: TQuery;
    BLDetOldPer: TFloatField;
    BLDetNowPer: TFloatField;
    BLDetBWYW: TStringField;
    BLDetMatName: TStringField;
    BLDetCLSL: TFloatField;
    BLDetQty: TCurrencyField;
    BLDetQtyOld: TCurrencyField;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRShape11: TQRShape;
    QRLabel22: TQRLabel;
    QRShape12: TQRShape;
    QRDBText21: TQRDBText;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel38: TQRLabel;
    QRDBText24: TQRDBText;
    BLMas: TQuery;
    BLMasBLNO: TStringField;
    BLMasGSBH: TStringField;
    BLMasZLBH: TStringField;
    BLMasGXLB: TStringField;
    BLMasQty: TCurrencyField;
    BLMasBLACC: TCurrencyField;
    BLMasBLDate: TDateTimeField;
    BLMasUSERDate: TDateTimeField;
    BLMasUSERID: TStringField;
    BLMasYN: TStringField;
    BLMasCFMDate: TDateTimeField;
    BLMasCFMID: TStringField;
    BLMaszlQty: TIntegerField;
    BLMasArticle: TStringField;
    BLMasKFJC: TStringField;
    QRBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText25: TQRDBText;
    QRLabel41: TQRLabel;
    QRDBText26: TQRDBText;
    QRLabel42: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel34: TQRLabel;
    QRLabel45: TQRLabel;
    QRDBText29: TQRDBText;
    QRLabel46: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel47: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel48: TQRLabel;
    QRDBText30: TQRDBText;
    BLDetSIZE: TStringField;
    TmpQuery: TQuery;
    QApprover: TQuery;
    QApproverApplicantID: TStringField;
    QApproverApplicant: TStringField;
    QApproverApplicantDate: TStringField;
    QApproverManagerID: TStringField;
    QApproverManager: TStringField;
    QApproverManagerDate: TStringField;
    QApproverXVID: TStringField;
    QApproverXV: TStringField;
    QApproverXVDate: TStringField;
    QApproverKHID: TStringField;
    QApproverKH: TStringField;
    QApproverKHDate: TStringField;
    QApproverKHManagerID: TStringField;
    QApproverKHManager: TStringField;
    QApproverKHManagerDate: TStringField;
    PageFooterBand1: TQRBand;
    QRShape13: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    imLB: TQRImage;
    imCQDV: TQRImage;
    imCQBP: TQRImage;
    imCQKH: TQRImage;
    imKH: TQRImage;
    imCQXV: TQRImage;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QApproverSupvervisorID: TStringField;
    QApproverSupvervisor: TStringField;
    QApproverSupvervisorDate: TStringField;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BLDetCalcFields(DataSet: TDataSet);
    procedure QRCompositeReport1Finished(Sender: TObject);
  private
    { Private declarations } 
    FileServerIP:string;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  ReplenishDel_Print: TReplenishDel_Print;

implementation

uses main1, FunUnit, ReplenishDel1;

{$R *.dfm}

procedure TReplenishDel_Print.ReadIni();
var MyIni :Tinifile;
    AppDir,LB,CQDV,CQBP,KH,CQKH,CQXV:string;
begin
  FileServerIP:=main.ServerIP;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      FileServerIP:=MyIni.ReadString('ERP','FileServerIP',main.ServerIP);
    finally
      MyIni.Free;
    end;
  end;
  with QApprover do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    Active := false;
    SQL.Clear;
    SQL.Add(' SELECT ');
    SQL.Add('  MAX(APPID) AS ApplicantID, ');
    SQL.Add('  MAX(APPNAME) AS Applicant, ');
    SQL.Add('  MAX(CAST(BEGIN_TIME AS DATE)) AS ApplicantDate, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''S1'' THEN ID END) AS SupvervisorID, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''S1'' THEN NAME END) AS Supvervisor, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''S1'' THEN FINISH_TIME END) AS SupvervisorDate, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''S2'' THEN ID END) AS ManagerID, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''S2'' THEN NAME END) AS Manager, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''S2'' THEN FINISH_TIME END) AS ManagerDate, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''XV'' THEN ID END) AS XVID, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''XV'' THEN NAME END) AS XV, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''XV'' THEN FINISH_TIME END) AS XVDate, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''KH'' THEN ID END) AS KHID, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''KH'' THEN NAME END) AS KH, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''KH'' THEN FINISH_TIME END) AS KHDate, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''SE'' THEN ID END) AS KHManagerID, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''SE'' THEN NAME END) AS KHManager, ');
    SQL.Add('  MAX(CASE WHEN SITE_CODE=''SE'' THEN FINISH_TIME END) AS KHManagerDate ');   
    SQL.Add('     FROM (  SELECT * FROM OPENQUERY([UOFWEB],');
    SQL.Add('     ''SELECT SUBSTRING(TB_EB_USER.ACCOUNT, PATINDEX(''''%[0-9]%'''', TB_EB_USER.ACCOUNT), LEN(TB_EB_USER.ACCOUNT)) AS ID, TB_EB_USER.NAME, CAST(FINISH_TIME AS DATE) FINISH_TIME, ');
    SQL.Add('              SUBSTRING(US.ACCOUNT, PATINDEX(''''%[0-9]%'''', US.ACCOUNT), LEN(US.ACCOUNT)) AS APPID, US.NAME AS APPNAME, TB_WKF_TASK.BEGIN_TIME, ');
    SQL.Add('              ROW_NUMBER() OVER (PARTITION BY FINISH_TIME ORDER BY FINISH_TIME DESC) AS RowID, TB_WKF_TASK_TRIGGER_RECORD.SITE_CODE ');
    SQL.Add('      FROM [UOF].[dbo].[TB_WKF_TASK] TB_WKF_TASK  ');
    SQL.Add('      LEFT JOIN [UOF].[dbo].[LYS_FormSigner] LYN_FormSigner on LYN_FormSigner.TableName=''''SCBL'''' and LYN_FormSigner.Type=''''BL'''' and LYN_FormSigner.FNO=TB_WKF_TASK.DOC_NBR ');
    SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID  ');
    SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_TRIGGER_RECORD] TB_WKF_TASK_TRIGGER_RECORD ON TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TASK_NODE.SITE_ID ');
    SQL.Add('                                                                                       AND TB_WKF_TASK_NODE.TASK_ID = TB_WKF_TASK_TRIGGER_RECORD.TASK_ID');
    SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER_GUID = TB_WKF_TASK_NODE.ACTUAL_SIGNER  ');
    SQL.Add('      LEFT JOIN [UOF].[dbo].[TB_EB_USER] US ON US.USER_GUID = TB_WKF_TASK.AGENT_USER  ');
    SQL.Add('      WHERE ACTUAL_SIGNER IS NOT NULL AND SITE_CODE NOT IN (''''Applicant'''',''''END_FORM'''') AND LYN_FormSigner.TNO=''''' + ReplenishDel.BLMas.FieldByName('BLNO').AsString + ''''' ');
    SQL.Add('      '') AS ApproveData WHERE RowID = 1) AS OP ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
    if fieldbyname('ApplicantID').AsString<>'' then
    begin
      LB:=FieldByName('ApplicantID').AsString+'.bmp';
    end;
    if fieldbyname('SupvervisorID').AsString<>'' then
    begin
      CQDV:=FieldByName('SupvervisorID').AsString+'.bmp';
    end;
    if fieldbyname('ManagerID').AsString<>'' then
    begin
      CQBP:=FieldByName('ManagerID').AsString+'.bmp';
    end;
    if fieldbyname('KHID').AsString<>'' then
    begin
      KH:=FieldByName('KHID').AsString+'.bmp';
    end;
    if fieldbyname('KHManagerID').AsString<>'' then
    begin
      CQKH:=FieldByName('KHManagerID').AsString+'.bmp';
    end;
    if fieldbyname('XVID').AsString<>'' then
    begin
      CQXV:=FieldByName('XVID').AsString+'.bmp';
    end;
  end;
  //Ã±¦WÀÉ
  if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
  if FileExists(AppDir+'\Images\'+LB)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+LB),Pchar(AppDir+'Images\'+LB),false);
  if FileExists(AppDir+'\Images\'+CQDV)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CQDV),Pchar(AppDir+'Images\'+CQDV),false);
  if FileExists(AppDir+'\Images\'+CQBP)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CQBP),Pchar(AppDir+'Images\'+CQBP),false);
  if FileExists(AppDir+'\Images\'+KH)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+KH),Pchar(AppDir+'Images\'+KH),false);  
  if FileExists(AppDir+'\Images\'+CQKH)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CQKH),Pchar(AppDir+'Images\'+CQKH),false);
  if FileExists(AppDir+'\Images\'+CQXV)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+CQXV),Pchar(AppDir+'Images\'+CQXV),false);

  if FileExists(AppDir+'\Images\'+LB) then
  begin
    imLB.Picture.LoadFromFile(AppDir+'\Images\'+LB);
  end;
  if FileExists(AppDir+'\Images\'+CQDV) then
  begin
    imCQDV.Picture.LoadFromFile(AppDir+'\Images\'+CQDV);
  end;
  if FileExists(AppDir+'\Images\'+CQBP) then
  begin
    imCQBP.Picture.LoadFromFile(AppDir+'\Images\'+CQBP);
  end;  
  if FileExists(AppDir+'\Images\'+KH) then
  begin
    imKH.Picture.LoadFromFile(AppDir+'\Images\'+KH);
  end;
  if FileExists(AppDir+'\Images\'+CQKH) then
  begin
    imCQKH.Picture.LoadFromFile(AppDir+'\Images\'+CQKH);
  end;
  if FileExists(AppDir+'\Images\'+CQXV) then
  begin
    imCQXV.Picture.LoadFromFile(AppDir+'\Images\'+CQXV);
  end;
end;

procedure TReplenishDel_Print.FormDestroy(Sender: TObject);
begin
  ReplenishDel_Print:=nil;
end;

procedure TReplenishDel_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin  
  BLMas.Active:=false;
  BLDet.Active:=false;
  action:=cafree;
end;

procedure TReplenishDel_Print.QRCompositeReport1AddReports(
  Sender: TObject);
begin
  with QRCompositeReport1 do
  begin
    reports.Add(QuickRep1);
    reports.Add(QuickRep2);
  end;
end;

procedure TReplenishDel_Print.FormCreate(Sender: TObject);
var IsMJBH:boolean;
begin
  if messagedlg('Only show monther Material/ thay hinh me vat tu',mtCustom, [mbYes,mbNo], 0)=mrYes then
  begin
    IsMJBH:=true;
  end else
  begin
    IsMJBH:=false;
  end;
  with BLDet do
  begin
    Active:=false;
    SQL.Clear;
    //
    SQL.Add('select SCBLS.BWBH+'' ''+BWZL.YWSM as BWYW,SCBLS.CLBH+'' ''+CLZL.YWPM+'' ''+CLZL.DWBH as MatName,REPLACE(SCBLS.SIZE,''ZZZZZZ'','''') as SIZE');
    SQL.Add('       ,IsNull(OrdCL.CLSL,OrdCLAll.CLSL) as CLSL,SCBLS.Qty ,BLOld.QtyOld ');
    SQL.Add('from ( ');
    SQL.Add(' Select BWBH,CLBH,SIZE,Sum(Qty) as Qty from (');
    SQL.Add('	Select SCBLS.BLNO,SCBLS.BWBH,SCBLS.CLBH,IsNull(SCBLSS.SIZE,''ZZZZZZ'') as SIZE,IsNull(SCBLSS.Qty,SCBLS.Qty) as Qty ');
    SQL.Add('	from SCBLS ');
    SQL.Add('	left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS.BWBH=SCBLS.BWBH and SCBLSS.CLBH=SCBLS.CLBH ');
    SQL.Add('	where SCBLS.Qty>0 and SCBLS.BLNO=:BLNO ');
    if IsMJBH=true then
    SQL.Add('       and  SCBLS.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('   ) SCBLS Group by BWBH,CLBH,SIZE');
    SQL.Add(') SCBLS');
    SQL.Add('left join (select ZLZLS2.BWBH,ZLZLS2.CLBH,SIZE,sum(ZLZLS2.CLSL) as CLSL');
    SQL.Add('        from ZLZLS2');
    SQL.Add('        where ZLZLS2.ZLBH=:ZLBH ');
    if IsMJBH=true then
    SQL.Add('              and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('        group by ZLZLS2.BWBH,ZLZLS2.CLBH,SIZE) OrdCL  on SCBLS.BWBH=OrdCL.BWBH  and SCBLS.CLBH=OrdCL.CLBH and SCBLS.SIZE=OrdCL.SIZE');
    SQL.Add('left join (select ZLZLS2.BWBH,ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as CLSL');
    SQL.Add('        from ZLZLS2');
    SQL.Add('        where ZLZLS2.ZLBH=:ZLBH ');
    if IsMJBH=true then
    SQL.Add('              and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('        group by ZLZLS2.BWBH,ZLZLS2.CLBH) OrdCLAll  on SCBLS.BWBH=OrdCLAll.BWBH  and SCBLS.CLBH=OrdCLAll.CLBH ');
    SQL.Add('left join BWZL on BWZL.BWDH=SCBLS.BWBH');
    SQL.Add('left join CLZL on CLZL.CLDH=SCBLS.CLBH');
    SQL.Add('left join (  ');
    SQL.Add(' Select BWBH,CLBH,SIZE,Sum(Qty) as QtyOld from (');
    SQL.Add('	Select SCBLS.BLNO,SCBLS.BWBH,SCBLS.CLBH,IsNull(SCBLSS.SIZE,''ZZZZZZ'') as SIZE,IsNull(SCBLSS.Qty,SCBLS.Qty) as Qty ');
    SQL.Add('	from SCBLS ');
    SQL.Add('	left join SCBL on SCBL.BLNO=SCBLS.BLNO');
    SQL.Add('	left join SCBLSS on SCBLSS.BLNO=SCBLS.BLNO and SCBLSS.BWBH=SCBLS.BWBH and SCBLSS.CLBH=SCBLS.CLBH ');
    SQL.Add('	where SCBLS.Qty>0 and SCBL.ZLBH=:ZLBH  ');
    if IsMJBH=true then
    SQL.Add('       and  SCBLS.MJBH=''ZZZZZZZZZZ'' ');
    SQL.Add('  ) SCBLS Group by BWBH,CLBH,SIZE		 ');
    SQL.Add(') BLOld on BLOld.BWBH=SCBLS.BWBH  and BLOld.CLBH=SCBLS.CLBH and BLOld.SIZE=SCBLS.SIZE');
    SQL.Add('order by SCBLS.BWBH,SCBLS.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
  end;
  BLDet.Active:=true;
  BLMas.Active:=true;
  ReadIni();
end;

procedure TReplenishDel_Print.BLDetCalcFields(DataSet: TDataSet);
begin
  with  BLDet do
  begin
    if fieldbyname('CLSL').Value <>0 then
    begin
        fieldbyname('OldPer').Value:=fieldbyname('QtyOld').Value/fieldbyname('CLSL').Value*100;
        fieldbyname('NowPer').Value:=fieldbyname('Qty').Value/fieldbyname('CLSL').Value*100;
    end;
  end;
end;

procedure TReplenishDel_Print.QRCompositeReport1Finished(Sender: TObject);
begin
  ReplenishDel_Print.QRLabel43.Caption:='T-KH-WS001-01B ERP';
end;

end.
