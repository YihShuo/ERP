unit GhiChepKhoiPhucDuLieu_Print1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, MyADOQuery,IniFiles,  fununit,
  QRCtrls, qrpctrls, QuickRpt, Vcl.ExtCtrls, Soap.SOAPHTTPTrans, Bde.DBTables;

type
  TGhiChepKhoiPhucDuLieu_Print = class(TForm)
    KPDLQry: TMyADOQuery;
    KPDLQryTLTen: TWideStringField;
    KPDLQryNoidungVN: TWideStringField;
    KPDLQryNoiDungTW: TStringField;
    DS1: TDataSource;
    KPDLQryKPDLNo: TStringField;
    KPDLQryUserDate: TDateTimeField;
    KPDLQryNguoiDamNhan: TWideStringField;
    KPDLQryDonViHoTro: TWideStringField;
    KPDLQryNgayHuongDan: TDateTimeField;
    KPDLQryUserID: TStringField;
    KPDLQryCFMID: TStringField;
    KPDLQryUSERNAME: TStringField;
    QApprover: TADOQuery;
    QApproverS_username: TStringField;
    QApproverremark: TStringField;
    QApproverstatus: TStringField;
    QApproverLNO: TStringField;
    QApproverS_Step_Desc: TStringField;
    QApproveruserdate: TDateTimeField;
    QuickRep2: TQuickRep;
    QRCompositeReport1: TQRCompositeReport;
    Query1: TQuery;
    QuickRep1: TQuickRep;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRPShape1: TQRPShape;
    QRPShape2: TQRPShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRSysData2: TQRSysData;
    QRShape18: TQRShape;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel_Ma: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel_UserDate: TQRLabel;
    L1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel_NguoiDamNhan: TQRLabel;
    QRLabel_DonVIHoTro: TQRLabel;
    QRLabel_NgayHuongDan: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRLabel13: TQRLabel;
    QRShape6: TQRShape;
    QRShape19: TQRShape;
    PageFooterBand2: TQRBand;
    QRLabel18: TQRLabel;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel_Ma1: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel_UserDate1: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel_NguoiDamNhan1: TQRLabel;
    QRLabel_DonVIHoTro1: TQRLabel;
    QRLabel_NgayHuongDan1: TQRLabel;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape33: TQRShape;
    QRBand3: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel57: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel56: TQRLabel;
    SumPage: TQRLabel;
    QRLabel8: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel9: TQRLabel;
    SumPage1: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
  private
    AppDir:string;
    ComName:String;
    { Private declarations }
    procedure ReadIni();
  public
    IP,DBName,DBUser,DBPass,PW:String;
    { Public declarations }
  end;
var
  GhiChepKhoiPhucDuLieu_Print: TGhiChepKhoiPhucDuLieu_Print;

implementation
  uses DM1,GhiChepKhoiPhucDuLieu1;

{$R *.dfm}
procedure TGhiChepKhoiPhucDuLieu_Print.ReadIni();
var MyIni :Tinifile;
    //
    sline_PW,tempstr_PW:string;
    ad_PW,i:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComNameCH','');
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
end;


procedure TGhiChepKhoiPhucDuLieu_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TGhiChepKhoiPhucDuLieu_Print.FormCreate(Sender: TObject);
var i:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  KPDLQry.Active:=true;
  QRLabel_Ma.Caption:=KPDLQry.FieldByName('KPDLNo').AsString;
  QRLabel_UserDate.Caption:=FormatDateTime('YYYY/MM/DD', KPDLQry.FieldByName('UserDate').Value);
  QRLabel_NguoiDamNhan.Caption:= KPDLQry.FieldByName('UserName').AsString;
  QRLabel_DonViHoTro.Caption:= KPDLQry.FieldByName('DonViHoTro').AsString;
  QRLabel_NgayHuongDan.Caption:= KPDLQry.FieldByName('NgayHuongDan').AsString;
  //
  QRLabel_Ma1.Caption:=KPDLQry.FieldByName('KPDLNo').AsString;
  QRLabel_UserDate1.Caption:=FormatDateTime('YYYY/MM/DD', KPDLQry.FieldByName('UserDate').Value);
  QRLabel_NguoiDamNhan1.Caption:= KPDLQry.FieldByName('UserName').AsString;
  QRLabel_DonViHoTro1.Caption:= KPDLQry.FieldByName('DonViHoTro').AsString;
  QRLabel_NgayHuongDan1.Caption:= KPDLQry.FieldByName('NgayHuongDan').AsString;
  //
  ReadIni();
  // 20221215
  QApprover.ConnectionString := 'Provider=SQLOLEDB.1;Password='+PW+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog=' + DBName + ';Data Source=' + IP;
  with QApprover do
  begin
    Active := false;
    SQL.Clear;
    //
    SQL.Add('Select S_STEP_DESC,S_USERNAME,REMARK,Case when S_STEP_DESC=''申請人(IT資訊部)'' then ''申請''  else STATUS end as STATUS ,USERDATE,LNO from ( ');
    SQL.Add('  SELECT ISNULL(FLDetails.GROUPNAME, S_STEP_DESC + CASE WHEN ISNULL(ISNULL(Department, GROUPS.GROUPNAME), '''') <> '''' THEN '' ('' + ISNULL(Department, GROUPS.GROUPNAME) + '')'' ELSE ''(IT資訊部)'' END) AS S_STEP_DESC, ');
    SQL.Add('     S_USERNAME, REMARK, SYS_STATUS.Name AS STATUS, CONVERT(SmallDateTime, UPDATE_DATE + '' '' + UPDATE_TIME) AS USERDATE,  ');
    SQL.Add('     REPLACE(REPLACE(FORM_PRESENTATION, ''LNO='', ''''), '''''''', '''') AS LNO   ');
    SQL.Add('  FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] AS SYS_TODOHIS  ');
    SQL.Add('  LEFT JOIN (   ');
    SQL.Add('      SELECT ROW_NUMBER() OVER(ORDER BY FLDetails.GroupID) AS Seq, ''通知 ('' + GROUPS.GROUPNAME + '')'' AS GROUPNAME, ''X'' AS FORM_TABLE  ');
    SQL.Add('      FROM [EEP].[LingYi].[dbo].[WF_InternalNotificationFLDetails] AS FLDetails    ');
    SQL.Add('      LEFT JOIN [EEP].[LingYi].[dbo].[GROUPS] as GROUPS ON GROUPS.GROUPID = FLDetails.GroupID ');
    SQL.Add('       ) AS FLDetails ON CAST(FLDetails.Seq AS VARCHAR) = RIGHT(SYS_TODOHIS.S_STEP_ID, 1) AND FLDetails.FORM_TABLE = SYS_TODOHIS.FORM_TABLE ');
    SQL.Add('      LEFT JOIN [EEP].[LingYi].[dbo].[SYS_STATUS] as SYS_STATUS  ON SYS_STATUS.STATUS = SYS_TODOHIS.STATUS ');
    SQL.Add('      LEFT JOIN [EEP].[LingYi].[dbo].[USERINFO] as USERINFO ON USERINFO.ID = SYS_TODOHIS.S_USER_ID LEFT JOIN GROUPS ON GROUPS.GROUPID = SYS_TODOHIS.S_ROLE_ID   ');
    SQL.Add('      WHERE SYS_TODOHIS.FORM_TABLE = ''ITPC_KhoiPhucDuLieu'' AND SYS_TODOHIS.FORM_PRESENTATION LIKE ''%'+GhiChepKhoiPhucDuLieu.Query1.FieldByName('KPDLNo').AsString+'%''  ');
    SQL.Add('	  ) SYS_TODOHIS ');
    SQL.Add('ORDER BY USERDATE');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
    if (QApprover.RecordCount = 0) then
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT S_STEP_DESC,S_USERNAME,REMARK,CASE WHEN ST=''N'' THEN ''申請'' WHEN ST=''Z'' THEN ''結案'' WHEN ST=''X'' THEN ''作廢'' WHEN ST=''NP'' THEN ''退回'' ELSE ''核准'' END AS STATUS ,USERDATE,LNO ');
      SQL.Add('FROM OPENQUERY([UOFWEB], ');
      SQL.Add('     ''SELECT LYN_FormSigner.TNO LNO, TITLE_NAME + '''' (''''+ GROUP_NAME + '''')'''' as S_STEP_DESC, CAST([UOF].[dbo].fSignsToNoSigns(TB_EB_USER.NAME) AS VARCHAR(200)) S_USERNAME, ');
      SQL.Add('              CAST([UOF].[dbo].fSignsToNoSigns(COMMENT) AS VARCHAR(200)) REMARK, CAST(FINISH_TIME AS SMALLDATETIME) as USERDATE, ');
      SQL.Add('              CASE WHEN SIGN_STATUS = 0 and TB_WKF_TASK.TASK_ID = TB_WKF_TASK_NODE.SITE_ID THEN ''''N'''' ');
      SQL.Add('              WHEN SIGN_STATUS = 0 and END_TIME=FINISH_TIME THEN ''''Z'''' ');
      SQL.Add('              WHEN SIGN_STATUS = 1 or SIGN_STATUS = 5 THEN ''''X'''' WHEN SIGN_STATUS = 2 THEN ''''NP'''' ELSE ''''P'''' END as ST ');
      SQL.Add('       FROM [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_WKF_TASK] TB_WKF_TASK ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[LYN_FormSigner] LYN_FormSigner on LYN_FormSigner.TableName=''''ITPC_KhoiPhucDuLieu'''' and LYN_FormSigner.Type=''''IT'''' and LYN_FormSigner.FNO=TB_WKF_TASK.DOC_NBR ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE_SIGNER_INFO] TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_EB_EMPL_DEP] TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GUID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_EB_JOB_TITLE] TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID ');
      SQL.Add('       WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_FormSigner.TNO = ''''' + GhiChepKhoiPhucDuLieu.Query1.FieldByName('KPDLNo').AsString + ''''' ');
      SQL.Add('       ORDER BY FINISH_TIME ASC'' ');
      SQL.Add(') AS SYS_TODOHIS');
      Active := true;
    end;
    if QApprover.RecordCount>0 then
    begin
      //lb_Step_desc1.Caption:= QApprover.FieldByName('S_Step_Desc').Assign;

    end else
    begin

    end;
  end;
end;

procedure TGhiChepKhoiPhucDuLieu_Print.FormDestroy(Sender: TObject);
begin
  GhiChepKhoiPhucDuLieu_Print:=nil;
end;


procedure TGhiChepKhoiPhucDuLieu_Print.QRCompositeReport1AddReports(
  Sender: TObject);
begin
  with QRCompositeReport1 do
  begin
    reports.Add(QuickRep1);
    reports.Add(QuickRep2);
  end;
end;

end.
