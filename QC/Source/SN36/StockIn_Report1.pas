unit StockIn_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TStockIn_Report = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QDetail: TQuery;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QSearch: TQuery;
    QRShape1: TQRShape;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    ApplicantSign: TQRImage;
    SupervisorSign: TQRImage;
    ManagerSign: TQRImage;
    SupervisorQCSign: TQRImage;
    ManagerQCSign: TQRImage;
    ApplicantDate: TQRDBText;
    QSignature: TQuery;
    SupervisorDate: TQRDBText;
    ManagerDate: TQRDBText;
    SupervisorQCDate: TQRDBText;
    ManagerQCDate: TQRDBText;
    QSignatureApplicantID: TStringField;
    QSignatureApplicant: TStringField;
    QSignatureSupervisorID: TStringField;
    QSignatureSupervisor: TStringField;
    QSignatureManagerID: TStringField;
    QSignatureManager: TStringField;
    QSignatureSupervisorQCID: TStringField;
    QSignatureSupervisorQC: TStringField;
    QSignatureManagerQCID: TStringField;
    QSignatureManagerQC: TStringField;
    ApplicantName: TQRRichText;
    SupervisorName: TQRRichText;
    ManagerName: TQRRichText;
    SupervisorQCName: TQRRichText;
    ManagerQCName: TQRRichText;
    QRShape2: TQRShape;
    UserDate: TQRLabel;
    QSignatureApplicantDate: TStringField;
    QSignatureSupervisorDate: TStringField;
    QSignatureManagerDate: TStringField;
    QSignatureSupervisorQCDate: TStringField;
    QSignatureManagerQCDate: TStringField;
    QRLabel8: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Init;
  end;

var
  StockIn_Report: TStockIn_Report;

implementation

uses
  main1, StockIn_BC1;

{$R *.dfm}
        
procedure TStockIn_Report.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TStockIn_Report.FormDestroy(Sender: TObject);
begin
  StockIn_Report := Nil;
end;

procedure TStockIn_Report.Init;
var
  Grade, DepInfo, OrderInfo, Size, Quantity, Defect: TQRLabel;
  QShape: TQRShape;
  XHeight, i, Col, Row, Count: integer;
  SizeList: TStringList;
  Rect: TRect;
begin
  UserDate.Caption := '開單日期: ' + FormatDateTime('yyyy/MM/dd', StockIn_BC.QKCRK.FieldByName('UserDate').AsDateTime);

  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT DefectID,SIZE FROM KCRKS_BC');
    SQL.Add('WHERE RKNO = ''' + StockIn_BC.QKCRK.FieldByName('RKNO').AsString + '''');
    SQL.Add('ORDER BY Size');
    Active := true;
  end;

  if (QSearch.RecordCount > 0) then
  begin
    with QDetail do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT KCRKS_BC.Grade, KCRK_BC.Building, BDepartment.DepName, KCRKS_BC.DDBH,');
      SQL.Add('DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH');
      while not QSearch.Eof do
      begin
        SQL.Add(', MAX(''' + QSearch.FieldByName('Size').AsString + '|'' + CAST(ISNULL(CASE WHEN KCRKS_BC.Size = ''' + QSearch.FieldByName('Size').AsString + ''' and DefectID = '''+QSearch.FieldByName('DefectID').AsString+''' THEN KCRKS_BC.Qty END, 0) AS VARCHAR) + ''|'' + QCBLYY.YWSM) AS ''' + QSearch.FieldByName('Size').AsString + '''');
        QSearch.Next;
      end;
      SQL.Add('FROM KCRKS_BC');
      SQL.Add('LEFT JOIN KCRK_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = KCRK_BC.DepID');
      SQL.Add('LEFT JOIN QCBLYY ON QCBLYY.YYBH = KCRKS_BC.DefectID');
      SQL.Add('WHERE KCRKS_BC.RKNO = ''' + StockIn_BC.QKCRK.FieldByName('RKNO').AsString + '''');
      SQL.Add('GROUP BY KCRKS_BC.Grade, KCRK_BC.Building, BDepartment.DepName, KCRKS_BC.DDBH,');
      SQL.Add('DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH');
      SQL.Add('ORDER BY KCRKS_BC.Grade, BDepartment.DepName, KCRKS_BC.DDBH');
      Active := true;
    end;

    XHeight := -10;
    while not QDetail.Eof do         
    begin
      Inc(XHeight, 18);
      Grade := TQRLabel.Create(QRBand2);
      Grade.Parent := QRBand2;
      Grade.Top := XHeight;
      Grade.Left := 18;
      Grade.Caption := QDetail.FieldByName('Grade').AsString + '品';

      DepInfo := TQRLabel.Create(QRBand2);                                     
      DepInfo.Parent := QRBand2;
      DepInfo.Top := XHeight;
      DepInfo.Left := 50;
      DepInfo.Caption := '[棟別]:' + QDetail.FieldByName('Building').AsString + '　[線別]:' + QDetail.FieldByName('DepName').AsString;

      Inc(XHeight, 18);
      OrderInfo := TQRLabel.Create(QRBand2);
      OrderInfo.Parent := QRBand2;
      OrderInfo.Top := XHeight;
      OrderInfo.Left := 50;
      OrderInfo.Caption := '[訂單]:' + QDetail.FieldByName('DDBH').AsString + '　[SKU]:' + QDetail.FieldByName('Article').AsString + '　[季度]:' + QDetail.FieldByName('JiJie').AsString + '　[大底]:' + QDetail.FieldByName('DDMH').AsString;

      Inc(XHeight, 18);
      OrderInfo := TQRLabel.Create(QRBand2);
      OrderInfo.Parent := QRBand2;
      OrderInfo.Top := XHeight;
      OrderInfo.Left := 50;
      OrderInfo.Caption := '[鞋名]:' + QDetail.FieldByName('XieMing').AsString + '　[顏色]:' + QDetail.FieldByName('YSSM').AsString ;

      Inc(XHeight, 18);
      Col := 9;
      Row := -1;
      for i := 9 to QDetail.FieldCount-1 do
      begin
        SizeList := TStringList.Create;
        Count := ExtractStrings(['|'], [], PChar(QDetail.Fields[i].AsString), SizeList);

        if (Count = 3) AND (StrToFloat(SizeList[1]) > 0) then
        begin
          if ((Col-9) MOD 6 = 0) then
          begin
            Inc(Row);
            
            Size := TQRLabel.Create(QRBand2);
            Size.Parent := QRBand2;
            Size.Width := 29;
            Size.AutoSize := false;
            Size.Top := XHeight + Row * 55;
            Size.Left := 50;
            Size.Caption := '尺碼';
            Size.Frame.Color := $00DCDCDC;
            Size.Frame.DrawTop := true;
            Size.Frame.DrawBottom := true;
            Size.Frame.DrawLeft := true;
            Size.Frame.DrawRight := true;

            Quantity := TQRLabel.Create(QRBand2);
            Quantity.Parent := QRBand2;
            Quantity.Width := 29;
            Quantity.AutoSize := false;
            Quantity.Top := XHeight + 16 + Row * 55;
            Quantity.Left := 50;
            Quantity.Caption := '數量';
            Quantity.Frame.Color := $00DCDCDC;
            Quantity.Frame.DrawTop := true;
            Quantity.Frame.DrawBottom := true;
            Quantity.Frame.DrawLeft := true;
            Quantity.Frame.DrawRight := true;

            Defect := TQRLabel.Create(QRBand2);
            Defect.Parent := QRBand2;
            Defect.Width := 29;
            Defect.AutoSize := false;
            Defect.Top := XHeight + 32 + Row * 55;
            Defect.Left := 50;
            Defect.Caption := '不良';
            Defect.Frame.Color := $00DCDCDC;
            Defect.Frame.DrawTop := true;
            Defect.Frame.DrawBottom := true;
            Defect.Frame.DrawLeft := true;
            Defect.Frame.DrawRight := true;
            
            if (Col > 9) then
              Inc(XHeight, 55);
          end;

          Size := TQRLabel.Create(QRBand2);
          Size.Parent := QRBand2;
          Size.Width := 114;
          Size.AutoSize := false;
          Size.Top := XHeight;
          Size.Left := 80 + ((Col-9) MOD 6) * 115;
          Size.Caption := SizeList[0];
          Size.Frame.Color := $00DCDCDC;
          Size.Frame.DrawTop := true;
          Size.Frame.DrawBottom := true;
          Size.Frame.DrawLeft := true;
          Size.Frame.DrawRight := true;

          Quantity := TQRLabel.Create(QRBand2);
          Quantity.Parent := QRBand2;
          Quantity.Width := 114;
          Quantity.AutoSize := false;
          Quantity.Top := XHeight + 16;
          Quantity.Left := 80 + ((Col-9) MOD 6) * 115;
          Quantity.Caption := SizeList[1];
          Quantity.Frame.Color := $00DCDCDC;
          Quantity.Frame.DrawTop := true;
          Quantity.Frame.DrawBottom := true;
          Quantity.Frame.DrawLeft := true;
          Quantity.Frame.DrawRight := true;

          Defect := TQRLabel.Create(QRBand2);
          Defect.Parent := QRBand2;
          Defect.Width := 114;
          Defect.AutoSize := false;
          Defect.Top := XHeight + 32;
          Defect.Left := 80 + ((Col-9) MOD 6) * 115;
          Defect.Caption := SizeList[2];
          Defect.Frame.Color := $00DCDCDC;
          Defect.Frame.DrawTop := true;
          Defect.Frame.DrawBottom := true;
          Defect.Frame.DrawLeft := true;
          Defect.Frame.DrawRight := true;

          Inc(Col);
        end;
      end;
      Inc(XHeight, 55);

      QShape := TQRShape.Create(Self);
      QShape.Parent := QRBand2;
      QShape.Shape := qrsHorLine;
      QShape.Pen.Style := psDot;
      QShape.Height := 1;
      QShape.Width := 758;
      QShape.Top := XHeight;
      QShape.Left := 18;
      
      QDetail.Next;
    end;

    if (StockIn_BC.workflow) then
    begin
      with QSignature do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('SET ANSI_WARNINGS ON');
        SQL.Add('SET ANSI_NULLS ON');
        ExecSQL;

        SQL.Clear;
        SQL.Add('SELECT MAX(CASE WHEN S_STEP_ID LIKE ''%申請人%'' THEN S_USER_ID END) AS ApplicantID,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%申請人%'' THEN USERNAME END) AS Applicant,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%申請人%'' THEN ApproveDate END) AS ApplicantDate,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%生產幹部%'' THEN S_USER_ID END) AS SupervisorID,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%生產幹部%'' THEN USERNAME END) AS Supervisor,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%生產幹部%'' THEN ApproveDate END) AS SupervisorDate,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%量產主管%'' THEN S_USER_ID END) AS ManagerID,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%量產主管%'' THEN USERNAME END) AS Manager,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%量產主管%'' THEN ApproveDate END) AS ManagerDate,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%品管幹部%'' THEN S_USER_ID END) AS SupervisorQCID,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%品管幹部%'' THEN USERNAME END) AS SupervisorQC,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%品管幹部%'' THEN ApproveDate END) AS SupervisorQCDate,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%品管主管%'' THEN S_USER_ID END) AS ManagerQCID,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%品管主管%'' THEN USERNAME END) AS ManagerQC,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%品管主管%'' THEN ApproveDate END) AS ManagerQCDate FROM (');
        SQL.Add('  SELECT S_STEP_ID, S_USER_ID, USERNAME, CONVERT(VARCHAR, CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME), 120) AS ApproveDate,');
        SQL.Add('  ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) DESC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS]');
        SQL.Add('  WHERE FORM_TABLE = ''KCRK_BC'' AND STATUS IN (''N'', ''Z'') AND FORM_PRESENTATION LIKE ''%' + StockIn_BC.QKCRK.FieldByName('RKNO').AsString + '%''');
        SQL.Add(') AS ApproveData');
        SQL.Add('WHERE RowID = 1');
        Active := true;

        //if (QSignature.RecordCount = 0) then
        if (QSignature.RecordCount > 0) and (QSignature.FieldByName('ApplicantID').IsNull and QSignature.FieldByName('SupervisorID').IsNull and QSignature.FieldByName('ManagerID').IsNull and
        QSignature.FieldByName('SupervisorQCID').IsNull and QSignature.FieldByName('ManagerQCID').IsNull) then
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT   ');
            SQL.Add('    MAX(APPACCOUNT) AS ApplicantID, ');
            SQL.Add('    MAX(APPNAME) AS Applicant, ');
            SQL.Add('    MAX(CAST(BEGIN_TIME AS DATE)) AS ApplicantDate,');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''Supervisor'' THEN ACCOUNT END) AS SupervisorID, ');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''Supervisor'' THEN NAME END) AS Supervisor, ');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''Supervisor'' THEN FINISH_TIME END) AS SupervisorDate,');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''Manager'' THEN ACCOUNT END) AS ManagerID,');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''Manager'' THEN NAME END) AS Manager,');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''Manager'' THEN FINISH_TIME END) AS ManagerDate,');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''QC_Supervisor'' THEN ACCOUNT END) AS SupervisorQCID, ');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''QC_Supervisor'' THEN NAME END) AS SupervisorQC,');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''QC_Supervisor'' THEN FINISH_TIME END) AS SupervisorQCDate,');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''EndFrom'' THEN ACCOUNT END) AS ManagerQCID,');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''EndFrom'' THEN NAME END) AS ManagerQC, ');
            SQL.Add('    MAX(CASE WHEN SITE_CODE = N''EndFrom'' THEN FINISH_TIME END) AS ManagerQCDate');
            SQL.Add('FROM OPENQUERY([UOFWEB],');
            SQL.Add('    ''SELECT ');
            SQL.Add('        TB_WKF_TASK.TASK_ID, ');
            SQL.Add('        TB_WKF_TASK_TRIGGER_RECORD.SITE_CODE, ');
            SQL.Add('        REPLACE(TB_EB_USER.ACCOUNT, ''''LYN'''', '''''''') AS ACCOUNT, ');
            SQL.Add('        CAST([UOF].[dbo].fSignsToNoSigns(TB_EB_USER.NAME) AS VARCHAR(200)) as NAME, ');
            SQL.Add('        CAST(FINISH_TIME AS DATE) AS FINISH_TIME, ');
            SQL.Add('        GROUP_NAME, ');
            SQL.Add('        TITLE_NAME, ');
            SQL.Add('        REPLACE(US.ACCOUNT, ''''LYN'''', '''''''') AS APPACCOUNT, ');
            SQL.Add('        CAST([UOF].[dbo].fSignsToNoSigns(US.NAME) AS VARCHAR(200)) as APPNAME, ');
            SQL.Add('        TB_WKF_TASK.BEGIN_TIME, ');
            SQL.Add('        COMMENT');
            SQL.Add('    FROM [UOF].[dbo].TB_WKF_TASK TB_WKF_TASK');
            SQL.Add('    LEFT JOIN [UOF].[dbo].TB_WKF_TASK_NODE TB_WKF_TASK_NODE ON TB_WKF_TASK.TASK_ID = TB_WKF_TASK_NODE.TASK_ID');
            SQL.Add('    LEFT JOIN [UOF].[dbo].TB_WKF_TASK_NODE_SIGNER_INFO TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID = TB_WKF_TASK_NODE.SITE_ID ');
            SQL.Add('        AND TB_WKF_TASK_NODE.NODE_SEQ = TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ');
            SQL.Add('    LEFT JOIN [UOF].[dbo].TB_EB_GROUP TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID = TB_EB_GROUP.GROUP_ID');
            SQL.Add('    LEFT JOIN [UOF].[dbo].TB_EB_EMPL_DEP TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID = TB_EB_GROUP.GROUP_ID ');
            SQL.Add('        AND TB_EB_EMPL_DEP.USER_GUID = TB_WKF_TASK_NODE.ORIGINAL_SIGNER');
            SQL.Add('    LEFT JOIN [UOF].[dbo].TB_EB_USER TB_EB_USER ON TB_EB_USER.USER_GUID = TB_WKF_TASK_NODE.ACTUAL_SIGNER');
            SQL.Add('    LEFT JOIN [UOF].[dbo].TB_EB_USER US ON US.USER_GUID = TB_WKF_TASK.AGENT_USER');
            SQL.Add('    LEFT JOIN [UOF].[dbo].TB_EB_JOB_TITLE TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID = TB_EB_EMPL_DEP.TITLE_ID');
            SQL.Add('    LEFT JOIN [UOF].[dbo].TB_WKF_TASK_TRIGGER_RECORD TB_WKF_TASK_TRIGGER_RECORD ON TB_WKF_TASK_TRIGGER_RECORD.TASK_ID = TB_WKF_TASK.TASK_ID ');
            SQL.Add('        AND TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID');
            SQL.Add('    LEFT JOIN [UOF].[dbo].LYN_BCShoesIn LYN_BCShoesIn ON LYN_BCShoesIn.LNO = TB_WKF_TASK.DOC_NBR ');
            SQL.Add('    WHERE ACTUAL_SIGNER IS NOT NULL ');
            SQL.Add('        AND LYN_BCShoesIn.RKNO = ''''' + StockIn_BC.QKCRK.FieldByName('RKNO').AsString + '''''');
            SQL.Add('    '') AS ApproveData');
            //ShowMessage(SQL.Text);
            Active := true;
          end;

        if (FieldByName('ApplicantID').AsString <> '') AND (FileExists('\\' + main.ServerIP + '\images\QC\' + FieldByName('ApplicantID').AsString + '.bmp')) then
        begin
          ApplicantName.Visible := false;
          ApplicantSign.Picture.LoadFromFile('\\' + main.ServerIP + '\images\QC\' + FieldByName('ApplicantID').AsString + '.bmp');
        end
        else begin
          ApplicantSign.Visible := false;
          ApplicantName.Lines.Add(FieldByName('Applicant').AsString);
          ApplicantName.Height := 17 * ApplicantName.Lines.Count;
          ApplicantName.Top := (70 - ApplicantName.Height) DIV 2 + 27;
        end;

        if (FieldByName('SupervisorID').AsString <> '') AND (FileExists('\\' + main.ServerIP + '\images\QC\' + FieldByName('SupervisorID').AsString + '.bmp')) then
        begin
          SupervisorName.Visible := false;
          SupervisorSign.Picture.LoadFromFile('\\' + main.ServerIP + '\images\QC\' + FieldByName('SupervisorID').AsString + '.bmp');
        end
        else begin
          SupervisorSign.Visible := false;
          SupervisorName.Lines.Add(FieldByName('Supervisor').AsString);
          SupervisorName.Height := 17 * SupervisorName.Lines.Count;
          SupervisorName.Top := (70 - SupervisorName.Height) DIV 2 + 27;
        end;

        if (FieldByName('ManagerID').AsString <> '') AND (FileExists('\\' + main.ServerIP + '\images\QC\' + FieldByName('ManagerID').AsString + '.bmp')) then
        begin
          ManagerName.Visible := false;
          ManagerSign.Picture.LoadFromFile('\\' + main.ServerIP + '\images\QC\' + FieldByName('ManagerID').AsString + '.bmp');
        end
        else begin
          ManagerSign.Visible := false;
          ManagerName.Lines.Add(FieldByName('Manager').AsString);
          ManagerName.Height := 17 * ManagerName.Lines.Count;
          ManagerName.Top := (70 - ManagerName.Height) DIV 2 + 27;
        end;

        if (FieldByName('SupervisorQCID').AsString <> '') AND (FileExists('\\' + main.ServerIP + '\images\QC\' + FieldByName('SupervisorQCID').AsString + '.bmp')) then
        begin
          SupervisorQCName.Visible := false;
          SupervisorQCSign.Picture.LoadFromFile('\\' + main.ServerIP + '\images\QC\' + FieldByName('SupervisorQCID').AsString + '.bmp');
        end
        else begin
          SupervisorQCSign.Visible := false;
          SupervisorQCName.Lines.Add(FieldByName('SupervisorQC').AsString);
          SupervisorQCName.Height := 17 * SupervisorQCName.Lines.Count;
          SupervisorQCName.Top := (70 - SupervisorQCName.Height) DIV 2 + 27;
        end;

        if (FieldByName('ManagerQCID').AsString <> '') AND (FileExists('\\' + main.ServerIP + '\images\QC\' + FieldByName('ManagerQCID').AsString + '.bmp')) then
        begin
          ManagerQCName.Visible := false;
          ManagerQCSign.Picture.LoadFromFile('\\' + main.ServerIP + '\images\QC\' + FieldByName('ManagerQCID').AsString + '.bmp');
        end
        else begin
          ManagerQCSign.Visible := false;
          ManagerQCName.Lines.Add(FieldByName('ManagerQC').AsString);
          ManagerQCName.Height := 17 * ManagerQCName.Lines.Count;
          ManagerQCName.Top := (70 - ManagerQCName.Height) DIV 2 + 27;
        end;
      end;
    end;
  end;
end;

end.
