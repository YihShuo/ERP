unit SupplierReview_MonthlyReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls, DB, DBTables;

type
  TSupplierReview_MonthlyReport = class(TForm)
    QSignature: TQuery;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRMonth: TQRLabel;
    QRListNo: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRBand3: TQRBand;
    QRShape1: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRBand4: TQRBand;
    SignDate2: TLabel;
    SignDate1: TLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRBand5: TQRBand;
    QRLabel43: TQRLabel;
    QRPage: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LoadData;
    { Public declarations }
  end;

var
  SupplierReview_MonthlyReport: TSupplierReview_MonthlyReport;

implementation

uses
  SupplierReview1, main1;

{$R *.dfm}

procedure TSupplierReview_MonthlyReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSupplierReview_MonthlyReport.FormDestroy(Sender: TObject);
begin
  SupplierReview_MonthlyReport := Nil;
end;

procedure TSupplierReview_MonthlyReport.LoadData;
var
  QRShape: TQRShape;
  QRLabel: TQRLabel;
  RowHeight, CurHeight, CurLeft, i, j: integer;
const
  ColWidth: array[0..4] of integer = (150, 225, 190, 115, 75);
  ColTitle: array[0..4] of string = ('階段', '簽核者', '簽核意見', '簽核時間', '結果');
begin
  QRMonth.Caption := 'Thang ' + IntToStr(SupplierReview.QSupplier.FieldByName('Month').AsInteger) + ' 月 / nam ' + IntToStr(SupplierReview.QSupplier.FieldByName('Year').AsInteger) + ' 年';
  QRListNo.Caption := SupplierReview.QSupplier.FieldByName('LNO').AsString;

  with QSignature do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SET ANSI_WARNINGS ON');
    SQL.Add('SET ANSI_NULLS ON');
    ExecSQL;

    SQL.Clear;
    SQL.Add('DECLARE @GroupName VARCHAR(100) = (');
    SQL.Add('  SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(GROUPNAME, '' '', ''''), ''單位'', ''''), ''單位主管'', ''''), ''部門主管'', ''''), ''廠主管'', ''''), ''最高主管'', '''') AS GROUPNAME FROM (');
    SQL.Add('    SELECT ROW_NUMBER() OVER(ORDER BY CONVERT(DateTime, SYS_TODOHIS.UPDATE_DATE + '' '' + SYS_TODOHIS.UPDATE_TIME)) AS ID, GROUPS.GROUPNAME FROM EEP.LingYi.dbo.SYS_TODOHIS AS SYS_TODOHIS');
    SQL.Add('    LEFT JOIN EEP.LingYi.dbo.GROUPS AS GROUPS ON GROUPS.GROUPID = SYS_TODOHIS.S_ROLE_ID');
    SQL.Add('    WHERE FORM_TABLE = ''WF_SupplierReview'' AND FLOW_DESC = ''供應商品質與交期統計表'' AND FORM_PRESENTATION LIKE ''%' + SupplierReview.QSupplier.FieldByName('LNO').AsString + '%''');
    SQL.Add('  ) AS SYS_TODOHIS');
    SQL.Add('  WHERE ID = 1');
    SQL.Add(')');

    SQL.Add('IF OBJECT_ID(''tempdb..#TempHis'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #TempHis END');

    SQL.Add('SELECT S_STEP_DESC + '' ('' + @GroupName + '')''  AS S_STEP_DESC,');
    SQL.Add('REPLACE(USERNAME, ''*'', ''代理'') AS S_USERNAME, REMARK, SYS_STATUS.Name AS STATUS, CONVERT(SmallDateTime, UPDATE_DATE + '' '' + UPDATE_TIME) AS USERDATE, REPLACE(REPLACE(FORM_PRESENTATION, ''LNO='', ''''), '''''''', '''') AS LNO,');
    SQL.Add('ROW_NUMBER() OVER(ORDER BY CONVERT(DateTime, UPDATE_DATE + '' '' + UPDATE_TIME)) AS Seq INTO #TempHis FROM EEP.LingYi.dbo.SYS_TODOHIS AS SYS_TODOHIS');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ROW_NUMBER() OVER(ORDER BY FLDetails.GroupID) AS Seq, ''通知 ('' + GROUPS.GROUPNAME + '')'' AS GROUPNAME, ''X'' AS FORM_TABLE FROM EEP.LingYi.dbo.WF_InternalNotificationFLDetails AS FLDetails');
    SQL.Add('  LEFT JOIN GROUPS ON GROUPS.GROUPID = FLDetails.GroupID');
    SQL.Add('  WHERE LNO = ''' + SupplierReview.QSupplier.FieldByName('LNO').AsString + '''');
    SQL.Add(') AS FLDetails ON CAST(FLDetails.Seq AS VARCHAR) = RIGHT(SYS_TODOHIS.S_STEP_ID, 1) AND FLDetails.FORM_TABLE = SYS_TODOHIS.FORM_TABLE');
    SQL.Add('LEFT JOIN EEP.LingYi.dbo.SYS_STATUS AS SYS_STATUS ON SYS_STATUS.STATUS = SYS_TODOHIS.STATUS');
    SQL.Add('LEFT JOIN EEP.LingYi.dbo.SYS_ORG AS SYS_ORG ON SYS_ORG.ORG_MAN = SYS_TODOHIS.S_ROLE_ID');
    SQL.Add('LEFT JOIN EEP.LingYi.dbo.GROUPS AS GROUPS ON GROUPS.GROUPID = SYS_TODOHIS.S_ROLE_ID');
    SQL.Add('WHERE SYS_TODOHIS.FORM_TABLE = ''WF_SupplierReview'' AND FLOW_DESC = ''供應商品質與交期統計表'' AND SYS_TODOHIS.FORM_PRESENTATION LIKE ''%' + SupplierReview.QSupplier.FieldByName('LNO').AsString + '%''');

    SQL.Add('SELECT CASE WHEN T1.STATUS NOT IN (''取回'') THEN T1.S_STEP_DESC ELSE T3.S_STEP_DESC END AS S_STEP_DESC, T1.S_USERNAME, T1.REMARK, T1.USERDATE, CASE WHEN T1.Seq = 1 THEN ''申請'' ELSE T1.STATUS END AS STATUS FROM #TempHis AS T1');
    SQL.Add('LEFT JOIN #TempHis AS T2 ON T2.Seq-1 = T1.Seq AND T2.STATUS = T1.STATUS');
    SQL.Add('LEFT JOIN #TempHis AS T3 ON T3.Seq-1 = T1.Seq');
    SQL.Add('WHERE ISNULL(T1.S_USERNAME, '''') <> ISNULL(T2.S_USERNAME, '''')');
    SQL.Add('ORDER BY T1.Seq'); 
    Active := true;
    if (QSignature.RecordCount = 0) then
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT S_STEP_DESC, S_USERNAME, REMARK, USERDATE, CASE WHEN ST=''N'' THEN ''申請'' WHEN ST=''Z'' THEN ''結案'' WHEN ST=''X'' THEN ''作廢'' WHEN ST=''NP'' THEN ''退回'' ELSE ''核准'' END AS STATUS ');
      SQL.Add('FROM OPENQUERY([UOFWEB], ');
      SQL.Add('     ''SELECT TITLE_NAME + '''' (''''+ GROUP_NAME + '''')'''' as S_STEP_DESC, CAST([UOF].[dbo].fSignsToNoSigns(TB_EB_USER.NAME) AS VARCHAR(200)) S_USERNAME, ');
      SQL.Add('              CAST([UOF].[dbo].fSignsToNoSigns(COMMENT) AS VARCHAR(200)) REMARK, CAST(FINISH_TIME AS SMALLDATETIME) as USERDATE, ');
      SQL.Add('              CASE WHEN SIGN_STATUS = 0 and TB_WKF_TASK.TASK_ID = TB_WKF_TASK_NODE.SITE_ID THEN ''''N'''' ');
      SQL.Add('              WHEN SIGN_STATUS = 0 and END_TIME=FINISH_TIME THEN ''''Z'''' ');
      SQL.Add('              WHEN SIGN_STATUS = 1 or SIGN_STATUS = 5 THEN ''''X'''' WHEN SIGN_STATUS = 2 THEN ''''NP'''' ELSE ''''P'''' END as ST ');
      SQL.Add('       FROM [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_WKF_TASK] TB_WKF_TASK ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[LYN_FormSigner] LYN_FormSigner on LYN_FormSigner.TableName=''''WF_SupplierReview'''' and LYN_FormSigner.Type=''''Monthly'''' and LYN_FormSigner.FNO=TB_WKF_TASK.DOC_NBR ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_WKF_TASK_NODE_SIGNER_INFO] TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_EB_GROUP] TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_EB_EMPL_DEP] TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GUID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER ');
      SQL.Add('       LEFT JOIN [UOF].[dbo].[TB_EB_JOB_TITLE] TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID ');
      SQL.Add('       WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_FormSigner.TNO = ''''' + SupplierReview.QSupplier.FieldByName('LNO').AsString + ''''' ');
      SQL.Add('       ORDER BY FINISH_TIME ASC'' ');
      SQL.Add(') AS SYS_TODOHIS');
      Active := true;
    end;
  end;

  RowHeight := 22;
  if (QSignature.RecordCount > 0) then
  begin                     
    CurHeight := QRBand4.Height;
    QRShape := TQRShape.Create(Self);
    QRShape.Parent := QRBand4;
    QRShape.Shape := qrsHorLine;
    QRShape.Height := 1;
    QRShape.Width := QRBand4.Width;
    QRShape.Left := 0;
    QRShape.Top := CurHeight;

    QRShape := TQRShape.Create(Self);
    QRShape.Parent := QRBand4;
    QRShape.Shape := qrsVertLine;
    QRShape.Width := 1;
    QRShape.Height := RowHeight;
    QRShape.Left := 0;
    QRShape.Top := CurHeight;

    QRShape := TQRShape.Create(Self);
    QRShape.Parent := QRBand4;
    QRShape.Shape := qrsVertLine;
    QRShape.Width := 1;
    QRShape.Height := RowHeight;
    QRShape.Left := 0;
    QRShape.Top := CurHeight;

    for i := 0 to Length(ColTitle)-1 do
    begin
      QRLabel := TQRLabel.Create(Self);
      QRLabel.Parent := QRBand4;
      QRLabel.AutoSize := false;
      QRLabel.Alignment := taCenter;
      QRLabel.Font.Name := 'Times New Roman';
      QRLabel.Font.Size := 8;
      QRLabel.Width := ColWidth[i] - 3;
      QRLabel.Top := CurHeight + 4;
      if (i > 0) then
      begin
        CurLeft := 0;
        for j := 0 to i-1 do
        begin
          Inc(CurLeft, ColWidth[j]);
        end;
        QRLabel.Left := CurLeft + 2;
      end
      else begin
        QRLabel.Left := 2;
      end;
      QRLabel.Caption := ColTitle[i];

      QRShape := TQRShape.Create(Self);
      QRShape.Parent := QRBand4;
      QRShape.Shape := qrsVertLine;
      QRShape.Width := 1;
      QRShape.Height := RowHeight;  
      QRShape.Top := CurHeight;
      if (i < Length(ColTitle)-1) then
      begin
        CurLeft := 0;
        for j := 0 to i do
        begin
          Inc(CurLeft, ColWidth[j]);
        end;
        QRShape.Left := CurLeft;
      end
      else begin
        QRShape.Left := QRBand4.Width - 1;
      end;
    end;

    Inc(CurHeight, RowHeight);
    QRShape := TQRShape.Create(Self);
    QRShape.Parent := QRBand4;
    QRShape.Shape := qrsHorLine;
    QRShape.Height := 1;
    QRShape.Width := QRBand4.Width;
    QRShape.Left := 0;
    QRShape.Top := CurHeight;

    while not QSignature.Eof do
    begin
      QRShape := TQRShape.Create(Self);
      QRShape.Parent := QRBand4;
      QRShape.Shape := qrsVertLine;
      QRShape.Width := 1;
      QRShape.Height := RowHeight;
      QRShape.Left := 0;
      QRShape.Top := CurHeight;

      for i := 0 to Length(ColTitle)-1 do
      begin
        QRLabel := TQRLabel.Create(Self);
        QRLabel.Parent := QRBand4;
        QRLabel.AutoSize := false;
        QRLabel.Font.Name := 'Times New Roman';
        QRLabel.Font.Size := 8;
        QRLabel.Width := ColWidth[i] - 3;
        QRLabel.Top := CurHeight + 4;
        if (i > 0) then
        begin
          CurLeft := 0;
          for j := 0 to i-1 do
          begin
            Inc(CurLeft, ColWidth[j]);
          end;
          QRLabel.Left := CurLeft + 2;
        end
        else begin
          QRLabel.Left := 2;
        end;
        if (i <> 3) then
          QRLabel.Caption := QSignature.Fields[i].AsString
        else
          QRLabel.Caption := FormatDateTime('yyyy/MM/dd hh:mm', QSignature.Fields[i].AsDateTime);

        QRShape := TQRShape.Create(Self);
        QRShape.Parent := QRBand4;
        QRShape.Shape := qrsVertLine;
        QRShape.Width := 1;
        QRShape.Height := RowHeight;  
        QRShape.Top := CurHeight;
        if (i < Length(ColTitle)-1) then
        begin
          CurLeft := 0;
          for j := 0 to i do
          begin
            Inc(CurLeft, ColWidth[j]);
          end;
          QRShape.Left := CurLeft;
        end
        else begin
          QRShape.Left := QRBand4.Width - 1;
        end;
      end;

      Inc(CurHeight, RowHeight);
      QRShape := TQRShape.Create(Self);
      QRShape.Parent := QRBand4;
      QRShape.Shape := qrsHorLine;
      QRShape.Height := 1;
      QRShape.Width := QRBand4.Width;
      QRShape.Left := 0;
      QRShape.Top := CurHeight;

      QSignature.Next;
    end;
  end;
end;

end.
