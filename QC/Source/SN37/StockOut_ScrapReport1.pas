unit StockOut_ScrapReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables;

type
  TStockOut_ScrapReport = class(TForm)
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
    ApplicantSign: TQRImage;
    QCSign: TQRImage;
    MPSign: TQRImage;
    PCSign: TQRImage;
    ApplicantDate: TQRDBText;
    QSignature: TQuery;
    QCDate: TQRDBText;
    MPDate: TQRDBText;
    PCDate: TQRDBText;
    ApplicantName: TQRRichText;
    QCName: TQRRichText;
    MPName: TQRRichText;
    PCName: TQRRichText;
    QRShape2: TQRShape;
    UserDate: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Init;
  end;

var
  StockOut_ScrapReport: TStockOut_ScrapReport;

implementation

uses
  main1, StockOut_BC1;

{$R *.dfm}
        
procedure TStockOut_ScrapReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TStockOut_ScrapReport.FormDestroy(Sender: TObject);
begin
  StockOut_ScrapReport := Nil;
end;

procedure TStockOut_ScrapReport.Init;
var
  Grade, OrderInfo, Size, Quantity: TQRLabel;
  QShape: TQRShape;
  XHeight, i, Col, Row, Count: integer;
  SizeList: TStringList;
  Rect: TRect;
begin
  UserDate.Caption := '開單日期: ' + FormatDateTime('yyyy/MM/dd', StockOut_BC.QKCLL.FieldByName('UserDate').AsDateTime);

  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT Size FROM KCLLS_BC');
    SQL.Add('WHERE LLNO = ''' + StockOut_BC.QKCLL.FieldByName('LLNO').AsString + '''');
    SQL.Add('ORDER BY Size');
    Active := true;
  end;

  if (QSearch.RecordCount > 0) then
  begin
    with QDetail do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT KCLLS_BC.Grade, KCLLS_BC.DDBH, DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH');
      while not QSearch.Eof do
      begin
        SQL.Add(', MAX(''' + QSearch.FieldByName('Size').AsString + '|'' + CAST(ISNULL(CASE WHEN KCLLS_BC.Size = ''' + QSearch.FieldByName('Size').AsString + ''' THEN KCLLS_BC.Qty END, 0) AS VARCHAR)) AS ''' + QSearch.FieldByName('Size').AsString + '''');
        QSearch.Next;
      end;
      SQL.Add('FROM KCLLS_BC');
      SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCLLS_BC.DDBH');
      SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
      SQL.Add('WHERE KCLLS_BC.LLNO = ''' + StockOut_BC.QKCLL.FieldByName('LLNO').AsString + '''');
      SQL.Add('GROUP BY KCLLS_BC.Grade, KCLLS_BC.DDBH, DDZL.Article, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH');
      SQL.Add('ORDER BY KCLLS_BC.Grade, DDZL.Article, KCLLS_BC.DDBH');
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

      Inc(XHeight, 18);
      OrderInfo := TQRLabel.Create(QRBand2);
      OrderInfo.Parent := QRBand2;
      OrderInfo.Top := XHeight;
      OrderInfo.Left := 50;
      OrderInfo.Caption := '[訂單]:' + QDetail.FieldByName('DDBH').AsString + '　[SKU]:' + QDetail.FieldByName('Article').AsString + '　[鞋名]:' + QDetail.FieldByName('XieMing').AsString + '　[顏色]:' + QDetail.FieldByName('YSSM').AsString + '　[季度]:' + QDetail.FieldByName('JiJie').AsString + '　[大底]:' + QDetail.FieldByName('DDMH').AsString;
      
      Inc(XHeight, 18);
      Col := 9;
      Row := -1;
      for i := 7 to QDetail.FieldCount-1 do
      begin
        SizeList := TStringList.Create;
        Count := ExtractStrings(['|'], [], PChar(QDetail.Fields[i].AsString), SizeList);

        if (Count = 2) AND (StrToFloat(SizeList[1]) > 0) then
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
            
            if (Col > 9) then
              Inc(XHeight, 39);
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

          Inc(Col);
        end;
      end;
      Inc(XHeight, 39);

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

    if (StockOut_BC.workflow) then
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
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%品管主管%'' THEN S_USER_ID END) AS QCID,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%品管主管%'' THEN USERNAME END) AS QC,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%品管主管%'' THEN ApproveDate END) AS QCDate,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%廠務主管%'' THEN S_USER_ID END) AS MPID,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%廠務主管%'' THEN USERNAME END) AS MP,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%廠務主管%'' THEN ApproveDate END) AS MPDate,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%生管主管%'' THEN S_USER_ID END) AS PCID,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%生管主管%'' THEN USERNAME END) AS PC,');
        SQL.Add('MAX(CASE WHEN S_STEP_ID LIKE ''%生管主管%'' THEN ApproveDate END) AS PCDate FROM (');
        SQL.Add('  SELECT S_STEP_ID, S_USER_ID, USERNAME, CONVERT(VARCHAR, CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME), 111) AS ApproveDate,');
        SQL.Add('  ROW_NUMBER() OVER (PARTITION BY S_STEP_ID ORDER BY CONVERT(DATETIME, UPDATE_DATE + '' '' + UPDATE_TIME) DESC) AS RowID FROM [EEP].[LingYi].[dbo].[SYS_TODOHIS]');
        SQL.Add('  WHERE FORM_TABLE = ''KCLL_BC'' AND STATUS IN (''N'', ''Z'') AND FORM_PRESENTATION LIKE ''%' + StockOut_BC.QKCLL.FieldByName('LLNO').AsString + '%''');
        SQL.Add(') AS ApproveData');
        SQL.Add('WHERE RowID = 1');
        //showmessage(sql.Text);
        Active := true;

        //if (QSignature.RecordCount = 0) then
        if (QSignature.RecordCount > 0) and (QSignature.FieldByName('ApplicantID').IsNull and QSignature.FieldByName('QCID').IsNull and QSignature.FieldByName('MPID').IsNull and
        QSignature.FieldByName('PCID').IsNull) then
        begin
          Active := false;
          SQL.Clear;
	        SQL.Add('SELECT   MAX(APPACCOUNT) AS ApplicantID, MAX(APPNAME) AS Applicant, ');
	        SQL.Add(' MAX( CAST(BEGIN_TIME AS DATE)) AS ApplicantDate,  ');
	        SQL.Add(' MAX(CASE WHEN SITE_CODE = N''品管主管_QC_Manager''  THEN ACCOUNT END) AS QCID,');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''品管主管_QC_Manager''  THEN NAME END) AS QC,  ');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''品管主管_QC_Manager'' THEN FINISH_TIME END) AS QCDate,');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''廠務主管_MP_Manager''  THEN ACCOUNT END) AS MPID, ');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''廠務主管_MP_Manager'' THEN NAME END) AS MP, ');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''廠務主管_MP_Manager'' THEN FINISH_TIME END) AS MPDate,');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''生管主管_PC_Manager''  THEN ACCOUNT END) AS PCID,');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''生管主管_PC_Manager'' THEN NAME END) AS PC, ');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''生管主管_PC_Manager'' THEN FINISH_TIME END) AS PCDate,');
          SQL.Add('MAX(CASE WHEN SITE_CODE = N''品管主管_QC_Manager_EndForm''  THEN ACCOUNT END) AS QCID1,');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''品管主管_QC_Manager_EndForm''  THEN NAME END) AS QC1,  ');
	        SQL.Add('MAX(CASE WHEN SITE_CODE = N''品管主管_QC_Manager_EndForm'' THEN FINISH_TIME END) AS QCDate1');
	        SQL.Add('FROM OPENQUERY([UOFWEB],');
	        SQL.Add('''SELECT TB_WKF_TASK.TASK_ID, TB_WKF_TASK_TRIGGER_RECORD.SITE_CODE, REPLACE(TB_EB_USER.ACCOUNT, ''''LYN'''', '''''''') ACCOUNT,');
          SQL.Add('CAST([UOF].[dbo].fSignsToNoSigns(TB_EB_USER.NAME) AS VARCHAR(200)) AS NAME, CAST(FINISH_TIME AS DATE) FINISH_TIME, GROUP_NAME, TITLE_NAME,');
          SQL.Add('REPLACE(US.ACCOUNT, ''''LYN'''', '''''''') AS APPACCOUNT, CAST([UOF].[dbo].fSignsToNoSigns(US.NAME) AS VARCHAR(200)) as APPNAME, TB_WKF_TASK.BEGIN_TIME, COMMENT');
          SQL.Add('FROM [UOF].[dbo].TB_WKF_TASK TB_WKF_TASK');
	        SQL.Add('LEFT JOIN [UOF].[dbo].TB_WKF_TASK_NODE TB_WKF_TASK_NODE ON TB_WKF_TASK.TASK_ID=TB_WKF_TASK_NODE.TASK_ID');
	        SQL.Add('LEFT JOIN [UOF].[dbo].TB_WKF_TASK_NODE_SIGNER_INFO TB_WKF_TASK_NODE_SIGNER_INFO ON TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID=TB_WKF_TASK_NODE.SITE_ID AND TB_WKF_TASK_NODE.NODE_SEQ=TB_WKF_TASK_NODE_SIGNER_INFO.NODE_SEQ');
	        SQL.Add('LEFT JOIN [UOF].[dbo].TB_EB_GROUP TB_EB_GROUP ON TB_WKF_TASK_NODE_SIGNER_INFO.GROUP_ID=TB_EB_GROUP.GROUP_ID');
	        SQL.Add('LEFT JOIN [UOF].[dbo].TB_EB_EMPL_DEP TB_EB_EMPL_DEP ON TB_EB_EMPL_DEP.GROUP_ID=TB_EB_GROUP.GROUP_ID AND TB_EB_EMPL_DEP.USER_GUID=TB_WKF_TASK_NODE.ORIGINAL_SIGNER');
	        SQL.Add('LEFT JOIN [UOF].[dbo].TB_EB_USER TB_EB_USER ON TB_EB_USER.USER_GUID=TB_WKF_TASK_NODE.ACTUAL_SIGNER');
	        SQL.Add('LEFT JOIN [UOF].[dbo].TB_EB_USER US ON US.USER_GUID=TB_WKF_TASK.AGENT_USER');
	        SQL.Add('LEFT JOIN [UOF].[dbo].TB_EB_JOB_TITLE TB_EB_JOB_TITLE ON TB_EB_JOB_TITLE.TITLE_ID=TB_EB_EMPL_DEP.TITLE_ID');
	        SQL.Add('LEFT JOIN [UOF].[dbo].TB_WKF_TASK_TRIGGER_RECORD TB_WKF_TASK_TRIGGER_RECORD ON TB_WKF_TASK_TRIGGER_RECORD.TASK_ID = TB_WKF_TASK.TASK_ID AND TB_WKF_TASK_TRIGGER_RECORD.SITE_ID = TB_WKF_TASK_NODE_SIGNER_INFO.SITE_ID');
	        SQL.Add('LEFT JOIN [UOF].[dbo].LYN_BCShoesScrapOut LYN_BCShoesScrapOut ON LYN_BCShoesScrapOut.LNO = TB_WKF_TASK.DOC_NBR ');
	        SQL.Add('WHERE ACTUAL_SIGNER IS NOT NULL AND LYN_BCShoesScrapOut.LLNO =  '''''+ StockOut_BC.QKCLL.FieldByName('LLNO').AsString + ''''' '' ');
	        SQL.Add(') AS ApproveData');
          showmessage(sql.Text);
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

        if (FieldByName('QCID').AsString <> '') AND (FileExists('\\' + main.ServerIP + '\images\QC\' + FieldByName('QCID').AsString + '.bmp')) then
        begin
          QCName.Visible := false;
          QCSign.Picture.LoadFromFile('\\' + main.ServerIP + '\images\QC\' + FieldByName('QCID').AsString + '.bmp');
        end
        else begin
          QCSign.Visible := false;
          QCName.Lines.Add(FieldByName('QC').AsString);
          QCName.Height := 17 * QCName.Lines.Count;
          QCName.Top := (70 - QCName.Height) DIV 2 + 27;
        end;

        if (FieldByName('MPID').AsString <> '') AND (FileExists('\\' + main.ServerIP + '\images\QC\' + FieldByName('MPID').AsString + '.bmp')) then
        begin
          MPName.Visible := false;
          MPSign.Picture.LoadFromFile('\\' + main.ServerIP + '\images\QC\' + FieldByName('MPID').AsString + '.bmp');
        end
        else begin
          MPSign.Visible := false;
          MPName.Lines.Add(FieldByName('MP').AsString);
          MPName.Height := 17 * MPName.Lines.Count;
          MPName.Top := (70 - MPName.Height) DIV 2 + 27;
        end;

        if (FieldByName('PCID').AsString <> '') AND (FileExists('\\' + main.ServerIP + '\images\QC\' + FieldByName('PCID').AsString + '.bmp')) then
        begin
          PCName.Visible := false;
          PCSign.Picture.LoadFromFile('\\' + main.ServerIP + '\images\QC\' + FieldByName('PCID').AsString + '.bmp');
        end
        else begin
          PCSign.Visible := false;
          PCName.Lines.Add(FieldByName('PC').AsString);
          PCName.Height := 17 * PCName.Lines.Count;
          PCName.Top := (70 - PCName.Height) DIV 2 + 27;
        end;
      end;
    end;
  end;
end;

end.
