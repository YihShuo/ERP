unit SupplierReviewDevelop_SeasonalReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, StdCtrls;

type
  TSupplierReviewDevelop_SeasonalReport = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRYear: TQRLabel;
    QRListNo: TQRLabel;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel15: TQRLabel;
    QRShape7: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRDBText46: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText49: TQRDBText;
    QRShape16: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRDBText50: TQRDBText;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRBand3: TQRBand;
    QRLabel43: TQRLabel;
    QRPage: TQRExpr;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    Query1: TQuery;
    QSignature: TQuery;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRLabel33: TQRLabel;
    QRLabel37: TQRLabel;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText60: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText71: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText73: TQRDBText;
    QRDBText74: TQRDBText;
    QRDBText75: TQRDBText;
    QRDBText76: TQRDBText;
    QRDBText77: TQRDBText;
    Query1SupplierID: TStringField;
    Query1ZSYWJC: TStringField;
    Query1BDEDesigner1_Quality: TFloatField;
    Query1BDEDesigner1_ETD: TFloatField;
    Query1BDEDesigner1_ETD_within3days: TFloatField;
    Query1BDEDesigner1_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner1_Cooperation: TFloatField;
    Query1BDEDesigner1_Total: TFloatField;
    Query1BDEDesigner2_Quality: TFloatField;
    Query1BDEDesigner2_ETD: TFloatField;
    Query1BDEDesigner2_ETD_within3days: TFloatField;
    Query1BDEDesigner2_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner2_Cooperation: TFloatField;
    Query1BDEDesigner2_Total: TFloatField;
    Query1BDEDesigner3_Quality: TFloatField;
    Query1BDEDesigner3_ETD: TFloatField;
    Query1BDEDesigner3_ETD_within3days: TFloatField;
    Query1BDEDesigner3_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner3_Cooperation: TFloatField;
    Query1BDEDesigner3_Total: TFloatField;
    Query1BDEDesigner4_Quality: TFloatField;
    Query1BDEDesigner4_ETD: TFloatField;
    Query1BDEDesigner4_ETD_within3days: TFloatField;
    Query1BDEDesigner4_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner4_Cooperation: TFloatField;
    Query1BDEDesigner4_Total: TFloatField;
    Query1BDEDesigner5_Quality: TFloatField;
    Query1BDEDesigner5_ETD: TFloatField;
    Query1BDEDesigner5_ETD_within3days: TFloatField;
    Query1BDEDesigner5_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner5_Cooperation: TFloatField;
    Query1BDEDesigner5_Total: TFloatField;
    Query1BDEDesigner6_Quality: TFloatField;
    Query1BDEDesigner6_ETD: TFloatField;
    Query1BDEDesigner6_ETD_within3days: TFloatField;
    Query1BDEDesigner6_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner6_Cooperation: TFloatField;
    Query1BDEDesigner6_Total: TFloatField;
    Query1BDEDesigner7_Quality: TFloatField;
    Query1BDEDesigner7_ETD: TFloatField;
    Query1BDEDesigner7_ETD_within3days: TFloatField;
    Query1BDEDesigner7_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner7_Cooperation: TFloatField;
    Query1BDEDesigner7_Total: TFloatField;
    Query1BDEDesigner8_Quality: TFloatField;
    Query1BDEDesigner8_ETD: TFloatField;
    Query1BDEDesigner8_ETD_within3days: TFloatField;
    Query1BDEDesigner8_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner8_Cooperation: TFloatField;
    Query1BDEDesigner8_Total: TFloatField;
    Query1BDEDesigner9_Quality: TFloatField;
    Query1BDEDesigner9_ETD: TFloatField;
    Query1BDEDesigner9_ETD_within3days: TFloatField;
    Query1BDEDesigner9_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner9_Cooperation: TFloatField;
    Query1BDEDesigner9_Total: TFloatField;
    Query1BDEDesigner10_Quality: TFloatField;
    Query1BDEDesigner10_ETD: TFloatField;
    Query1BDEDesigner10_ETD_within3days: TFloatField;
    Query1BDEDesigner10_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner10_Cooperation: TFloatField;
    Query1BDEDesigner10_Total: TFloatField;
    Query1BDEDesigner11_Quality: TFloatField;
    Query1BDEDesigner11_ETD: TFloatField;
    Query1BDEDesigner11_ETD_within3days: TFloatField;
    Query1BDEDesigner11_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner11_Cooperation: TFloatField;
    Query1BDEDesigner11_Total: TFloatField;
    Query1BDEDesigner12_Quality: TFloatField;
    Query1BDEDesigner12_ETD: TFloatField;
    Query1BDEDesigner12_ETD_within3days: TFloatField;
    Query1BDEDesigner12_ETD_withinLeadtime: TFloatField;
    Query1BDEDesigner12_Cooperation: TFloatField;
    Query1BDEDesigner12_Total: TFloatField;
    Query1Result_1: TStringField;
    Query1Result_2: TStringField;
    Query1Result_3: TStringField;
    Query1Result_4: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LoadData;
    { Public declarations }
  end;

var
  SupplierReviewDevelop_SeasonalReport: TSupplierReviewDevelop_SeasonalReport;

implementation

uses SupplierReviewDevelop1, main1;

{$R *.dfm}

procedure TSupplierReviewDevelop_SeasonalReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSupplierReviewDevelop_SeasonalReport.FormDestroy(
  Sender: TObject);
begin
  SupplierReviewDevelop_SeasonalReport:=nil;
end;

procedure TSupplierReviewDevelop_SeasonalReport.LoadData;
var
  Month: string;
  QRShape: TQRShape;
  QRLabel: TQRLabel;
  RowHeight, CurHeight, CurLeft, i, j: integer;
const
  ColWidth: array[0..5] of integer = (34, 177, 177, 177, 115, 75);
  ColTitle: array[0..5] of string = ('季度', '採購', '幹部', '主管', '時間', '結果');
begin
  QRYear.Caption := 'Nam ' + IntToStr(SupplierReviewDevelop.QReport.FieldByName('Year').AsInteger) + ' 年';
  QRListNo.Caption := SupplierReviewDevelop.QReport.FieldByName('LNO').AsString;

  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT WF_SupplierReviewS_Dev.SupplierID, ZSZL.ZSYWJC');
    for i := 1 to 12 do
    begin
      if (Length(IntToStr(i)) = 1) then
        Month := '0' + IntToStr(i)
      else
        Month := IntToStr(i);
      SQL.Add(', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = ''' + Month + ''' THEN WF_SupplierReviewS_Month.Quality END) AS ''' + IntToStr(i) + '_Quality''');
      SQL.Add(', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = ''' + Month + ''' THEN WF_SupplierReviewS_Month.ETD END) AS ''' + IntToStr(i) + '_ETD''');
      SQL.Add(', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = ''' + Month + ''' THEN WF_SupplierReviewS_Month.ETD_within_3days_score END) AS ''' + IntToStr(i) + '_ETD_within3days''');
      SQL.Add(', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = ''' + Month + ''' THEN WF_SupplierReviewS_Month.ETD_within_Leadtime_score END) AS ''' + IntToStr(i) + '_ETD_withinLeadtime''');
      SQL.Add(', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = ''' + Month + ''' THEN WF_SupplierReviewS_Month.Cooperation END) AS ''' + IntToStr(i) + '_Cooperation''');
      SQL.Add(', MAX(CASE WHEN WF_SupplierReviewS_Month.Month = ''' + Month + ''' THEN WF_SupplierReviewS_Month.Total END) AS ''' + IntToStr(i) + '_Total''');
    end;
    for i := 1 to 4 do
    begin
      SQL.Add(', MAX(CASE WHEN WF_SupplierReviewSS_Dev.Quarter = ' + IntToStr(i) + ' THEN WF_SupplierReviewSS_Dev.Result END) AS Result_' + IntToStr(i));
    end;
    SQL.Add('FROM WF_SupplierReview_Dev');
    SQL.Add('LEFT JOIN WF_SupplierReviewS_Dev ON WF_SupplierReviewS_Dev.LNO = WF_SupplierReview_Dev.LNO');
    SQL.Add('LEFT JOIN (SELECT WF_SupplierReview_Dev.Month,SupplierID,Quality,ETD,ETD_within_3days_score,ETD_within_Leadtime_score,Cooperation,Total');
    SQL.Add('  		      FROM WF_SupplierReviewS_Dev');
    SQL.Add('  		      LEFT JOIN WF_SupplierReview_Dev ON WF_SupplierReviewS_Dev.LNO = WF_SupplierReview_Dev.LNO');
    SQL.Add('           WHERE WF_SupplierReviewS_Dev.LNO IN (SELECT LNO FROM WF_SupplierReview_Dev');
    SQL.Add('                                            WHERE Type =''Monthly''');
    SQL.Add('                                            AND YEAR =(SELECT YEAR FROM WF_SupplierReview_Dev WHERE LNO = '''+SupplierReviewDevelop.QReport.fieldbyname('LNO').AsString+''' AND Type = ''Yearly''))');
    SQL.Add('                                            AND GSBH = '''+main.Edit2.Text+''' ');
    SQL.Add('                                            AND WF_SupplierReview_Dev.SFL = '''+SupplierReviewDevelop.QReport.fieldbyname('SFL').AsString+''' ');
    SQL.Add(')WF_SupplierReviewS_Month on WF_SupplierReviewS_Month.SupplierID = WF_SupplierReviewS_Dev.SupplierID');
    SQL.Add('LEFT JOIN WF_SupplierReviewSS_Dev ON WF_SupplierReviewSS_Dev.LNO = WF_SupplierReviewS_Dev.LNO AND WF_SupplierReviewSS_Dev.SupplierID = WF_SupplierReviewS_Dev.SupplierID');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = WF_SupplierReviewS_Dev.SupplierID');
    SQL.Add('WHERE WF_SupplierReview_Dev.LNO='''+SupplierReviewDevelop.QReport.fieldbyname('LNO').AsString+''' ');
    SQL.Add('GROUP BY WF_SupplierReviewS_Dev.SupplierID, ZSZL.ZSYWJC');
    SQL.Add('ORDER BY WF_SupplierReviewS_Dev.SupplierID');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;

  with QSignature do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SET ANSI_WARNINGS ON');
    SQL.Add('SET ANSI_NULLS ON');
    ExecSQL;

    SQL.Clear;
    SQL.Add('  SELECT ROW_NUMBER() OVER(ORDER BY (MAX(CASE WHEN S_STEP_ID = ''申請人_Applicant''  THEN ApproveDate END))) AS QUARTER  ');
    SQL.Add('  ,MAX(CASE WHEN S_STEP_ID = ''申請人_Applicant'' THEN USERNAME END) AS Applicant ');
    SQL.Add('  ,MAX(CASE WHEN S_STEP_ID = ''單位主管_Supervisor-10'' THEN USERNAME END) AS Supervisor ');
    SQL.Add('  ,MAX(CASE WHEN S_STEP_ID = ''部門主管_Manager-20'' THEN USERNAME END) AS Manager ');
    SQL.Add('  ,MAX(CASE WHEN S_STEP_ID = ''部門主管_Manager-20'' THEN ApproveDate END) AS ManagerDate ');
    SQL.Add('  ,(CASE WHEN  MAX(CASE WHEN S_STEP_ID = ''部門主管_Manager-20'' THEN USERNAME END) is not null THEN ''核准'' else '''' END ) as Status');
    SQL.Add('  FROM ( ');
    SQL.Add('  SELECT S_STEP_ID, USERNAME, CONVERT(SmallDateTime, UPDATE_DATE + '' '' + UPDATE_TIME) AS ApproveDate, LISTID ');
    SQL.Add('  FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS] as SYS_TODOHIS ');
    SQL.Add('  WHERE FORM_TABLE = ''WF_SupplierReview_Dev'' AND STATUS in (''N'', ''Z'') AND SYS_TODOHIS.FORM_PRESENTATION LIKE ''%' + SupplierReviewDevelop.QReport.FieldByName('LNO').AsString + '%'' ');
    SQL.Add('  ) AS ApproveData ');
    SQL.Add('  GROUP BY LISTID ');
    SQL.Add('  order by QUARTER asc ');
    Active := true;
    if (QSignature.RecordCount = 0) then
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ROW_NUMBER() OVER(ORDER BY (MAX(CASE WHEN S_STEP_ID = ''申請人_Applicant''  THEN ApproveDate END))) AS QUARTER  ');
      SQL.Add('      ,MAX(CASE WHEN S_STEP_ID = ''申請人_Applicant'' THEN USERNAME END) AS Applicant ');
      SQL.Add('      ,MAX(CASE WHEN S_STEP_ID = ''單位主管_Supervisor-10'' THEN USERNAME END) AS Supervisor ');
      SQL.Add('      ,MAX(CASE WHEN S_STEP_ID = ''部門主管_Manager-20'' THEN USERNAME END) AS Manager ');
      SQL.Add('      ,MAX(CASE WHEN S_STEP_ID = ''部門主管_Manager-20'' THEN ApproveDate END) AS ManagerDate ');
      SQL.Add('      ,(CASE WHEN MAX(CASE WHEN S_STEP_ID = ''部門主管_Manager-20'' THEN USERNAME END) is not null THEN ''核准'' else '''' END ) as Status');
      SQL.Add('FROM ( ');
      SQL.Add('  SELECT CASE WHEN ST=''N'' THEN ''申請人_Applicant'' WHEN ST=''Z'' THEN ''部門主管_Manager-20'' WHEN ST=''X'' THEN '''' ELSE ''單位主管_Supervisor-10'' END AS S_STEP_ID, USERNAME, ApproveDate, LISTID ');
      SQL.Add('  FROM OPENQUERY([UOFWEB], ');
      SQL.Add('       ''SELECT CAST([UOF].[dbo].fSignsToNoSigns(TB_EB_USER.NAME) AS VARCHAR(200)) USERNAME, CAST(FINISH_TIME AS SMALLDATETIME) as ApproveDate, TB_WKF_TASK.TASK_ID LISTID, ');
      SQL.Add('                CASE WHEN (SIGN_STATUS = 0 and TB_WKF_TASK.TASK_ID = TB_WKF_TASK_NODE.SITE_ID) or (SIGN_STATUS = 2) THEN ''''N'''' WHEN SIGN_STATUS = 0 and END_TIME=FINISH_TIME THEN ''''Z'''' ');
      SQL.Add('                WHEN SIGN_STATUS = 1 or SIGN_STATUS = 5 THEN ''''X'''' ELSE ''''P'''' END as ST ');
      SQL.Add('         FROM [UOF].[dbo].[TB_WKF_TASK_NODE] TB_WKF_TASK_NODE ');
      SQL.Add('         LEFT JOIN [UOF].[dbo].[TB_WKF_TASK] TB_WKF_TASK ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID ');
      SQL.Add('         LEFT JOIN [UOF].[dbo].[LYN_FormSigner] LYN_FormSigner on LYN_FormSigner.TableName=''''WF_SupplierReview_Dev'''' and LYN_FormSigner.Type=''''Yearly'''' and LYN_FormSigner.FNO=TB_WKF_TASK.DOC_NBR ');
      SQL.Add('         LEFT JOIN [UOF].[dbo].[TB_EB_USER] TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER ');
      SQL.Add('         WHERE ACTUAL_SIGNER IS NOT NULL AND SIGN_STATUS in (0,2) AND LYN_FormSigner.TNO = ''''' + SupplierReviewDevelop.QReport.FieldByName('LNO').AsString + ''''' ');
      SQL.Add('         ORDER BY FINISH_TIME ASC'' ');
      SQL.Add('  ) AS SYS_TODOHIS');
      SQL.Add(') AS ApproveData ');
      SQL.Add('GROUP BY LISTID ');
      SQL.Add('order by QUARTER asc ');
      Active := true;
    end;
  end;

  RowHeight := 22;
  if (QSignature.RecordCount > 0) then
  begin                     
    CurHeight := QRBand3.Height-150;
    QRShape := TQRShape.Create(Self);
    QRShape.Parent := QRBand3;
    QRShape.Shape := qrsHorLine;
    QRShape.Height := 1;
    QRShape.Width := QRBand3.Width;
    QRShape.Left := 0;
    QRShape.Top := CurHeight;

    QRShape := TQRShape.Create(Self);
    QRShape.Parent := QRBand3;
    QRShape.Shape := qrsVertLine;
    QRShape.Width := 1;
    QRShape.Height := RowHeight;
    QRShape.Left := 0;
    QRShape.Top := CurHeight;

    QRShape := TQRShape.Create(Self);
    QRShape.Parent := QRBand3;
    QRShape.Shape := qrsVertLine;
    QRShape.Width := 1;
    QRShape.Height := RowHeight;
    QRShape.Left := 0;
    QRShape.Top := CurHeight;

    for i := 0 to Length(ColTitle)-1 do
    begin
      QRLabel := TQRLabel.Create(Self);
      QRLabel.Parent := QRBand3;
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
      QRShape.Parent := QRBand3;
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
        QRShape.Left := QRBand3.Width - 1;
      end;
    end;

    Inc(CurHeight, RowHeight);
    QRShape := TQRShape.Create(Self);
    QRShape.Parent := QRBand3;
    QRShape.Shape := qrsHorLine;
    QRShape.Height := 1;
    QRShape.Width := QRBand3.Width;
    QRShape.Left := 0;
    QRShape.Top := CurHeight;

    while not QSignature.Eof do
    begin
      QRShape := TQRShape.Create(Self);
      QRShape.Parent := QRBand3;
      QRShape.Shape := qrsVertLine;
      QRShape.Width := 1;
      QRShape.Height := RowHeight;
      QRShape.Left := 0;
      QRShape.Top := CurHeight;

      for i := 0 to Length(ColTitle)-1 do
      begin
        QRLabel := TQRLabel.Create(Self);
        QRLabel.Parent := QRBand3;
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
        if (i <> 4) then
          QRLabel.Caption := QSignature.Fields[i].AsString
        else
        begin
          if QSignature.Fields[i].AsString<>'' then
            QRLabel.Caption := FormatDateTime('yyyy/MM/dd hh:mm', QSignature.Fields[i].AsDateTime)
          else
            QRLabel.Caption := QSignature.Fields[i].AsString;
        end;

        QRShape := TQRShape.Create(Self);
        QRShape.Parent := QRBand3;
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
          QRShape.Left := QRBand3.Width - 1;
        end;
      end;

      Inc(CurHeight, RowHeight);
      QRShape := TQRShape.Create(Self);
      QRShape.Parent := QRBand3;
      QRShape.Shape := qrsHorLine;
      QRShape.Height := 1;
      QRShape.Width := QRBand3.Width;
      QRShape.Left := 0;
      QRShape.Top := CurHeight;

      QSignature.Next;
    end;
  end;
end;

end.
