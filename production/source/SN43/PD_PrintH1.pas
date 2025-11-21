unit PD_PrintH1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, grimgctrl;

type
  TPD_PrintH = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    ISOLAB: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRMaster: TQRBand;
    QRLabel22: TQRLabel;
    Q1: TQRLabel;
    Q2: TQRLabel;
    Q3: TQRLabel;
    Q4: TQRLabel;
    Q5: TQRLabel;
    Q6: TQRLabel;
    QRShape15: TQRShape;
    Q7: TQRLabel;
    QRShape16: TQRShape;
    Q8: TQRLabel;
    QRShape17: TQRShape;
    Q9: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    Q10: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel3: TQRLabel;
    SMDDSQry: TQuery;
    Qtemp: TQuery;
    QRLean: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape8: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    GCQry: TQuery;
    QRDBText4: TQRDBText;
    QRSubDetail: TQRSubDetail;
    QRDBText1: TQRDBText;
    R1: TQRDBText;
    R2: TQRDBText;
    R3: TQRDBText;
    R4: TQRDBText;
    R5: TQRDBText;
    R6: TQRDBText;
    R7: TQRDBText;
    R8: TQRDBText;
    R9: TQRDBText;
    R10: TQRDBText;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRPDFFilter1: TQRPDFFilter;
    QRShape1: TQRShape;
    QRHRule1: TQRHRule;
    DS1: TDataSource;
    QRLabel5: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape2: TQRShape;
    MayQRLabel: TQRLabel;
    QRImage1: TQRImage;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    Q11: TQRLabel;
    Q12: TQRLabel;
    Q13: TQRLabel;
    Q14: TQRLabel;
    Q15: TQRLabel;
    Q16: TQRLabel;
    Q17: TQRLabel;
    Q18: TQRLabel;
    Q19: TQRLabel;
    R11: TQRDBText;
    R12: TQRDBText;
    R13: TQRDBText;
    R14: TQRDBText;
    R15: TQRDBText;
    R16: TQRDBText;
    R17: TQRDBText;
    R18: TQRDBText;
    R19: TQRDBText;
    QRImage2: TQRImage;
    A1: TQRDBText;
    XXCCQry: TQuery;
    A2: TQRDBText;
    A3: TQRDBText;
    A4: TQRDBText;
    A5: TQRDBText;
    A6: TQRDBText;
    A7: TQRDBText;
    A8: TQRDBText;
    A9: TQRDBText;
    A10: TQRDBText;
    A11: TQRDBText;
    A12: TQRDBText;
    A13: TQRDBText;
    A14: TQRDBText;
    A15: TQRDBText;
    A16: TQRDBText;
    A17: TQRDBText;
    A18: TQRDBText;
    A19: TQRDBText;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    Q20: TQRLabel;
    Q21: TQRLabel;
    A20: TQRDBText;
    A21: TQRDBText;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    R20: TQRDBText;
    R21: TQRDBText;
    QRLabel11: TQRLabel;
    T1: TQRDBText;
    QRLean2: TQRLabel;
    QRShape51: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    Q22: TQRLabel;
    Q23: TQRLabel;
    A22: TQRDBText;
    A23: TQRDBText;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    Q24: TQRLabel;
    Q25: TQRLabel;
    A24: TQRDBText;
    A25: TQRDBText;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    R22: TQRDBText;
    R23: TQRDBText;
    R24: TQRDBText;
    R25: TQRDBText;
    QRShape63: TQRShape;
    QSIZE: TQuery;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRDBText3: TQRDBText;
    QRDate: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Init(DLNO:string; IsRoundNum: boolean; IsShowTotalPairs: boolean; depid: string);
  end;

var
  PD_PrintH: TPD_PrintH;

implementation

uses
  CutDispatch1,Barcode93Unit1, FunUnit;
{$R *.dfm}

procedure TPD_PrintH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TPD_PrintH.FormDestroy(Sender: TObject);
begin
  PD_PrintH := nil;
end;

procedure TPD_PrintH.Init(DLNO: string; IsRoundNum: boolean; IsShowTotalPairs: boolean; depid: string);
var
  i, j: integer;
  tmpQRLabel1: TQRLabel;
  tmpQRDBText, tmpQRLabel2: TQRDBText;
  Barcode93Obj: TBarcode93;

  IsMatching: boolean;
  BWBHArr: array of String;
  SizeBWBH: TStringlist;
  SizeLBGroup: array of TStringlist;
  SubSQLStr1, SubSQLStr2, SubSQLStr3, SubSQLStr4: String;
  str, str1, str2, str3, str4, BWBH: String;
begin
  QRLabel10.Caption := DLNO;
  Barcode93Obj := TBarcode93.Create(self);
  Barcode93Obj.ImBarCodeShow(QRImage1.Canvas, DLNO, true);
  Barcode93Obj.ImBarCodeShow(QRImage2.Canvas, depid, true);
  Barcode93Obj.Free;

  //基本資料
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CutDispatch_GC.DLNO, BDepartment.DepName, CutDispatch_GC.Memo,');
    SQL.Add('''LEAN''+RIGHT(BDepartment.sumline, 2) AS LEAN FROM CutDispatch_GC');
    SQL.Add('LEFT JOIN CutDispatchS_GC ON CutDispatchS_GC.DLNO=CutDispatch_GC.DLNO');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CutDisPatch_GC.DepID');
    SQL.Add('WHERE CutDispatch_GC.DLNO = ''' + DLNO + '''');
    SQL.Add('GROUP BY CutDispatch_GC.DLNO, BDepartment.DepName, CutDispatch_GC.Memo, BDepartment.sumline');
    Active := true;
  end;
  QRDate.Caption := FormatDateTime('yyyy/MM/dd hh:mm:ss', Now);
  MayQRLabel.Caption := Qtemp.FieldByName('Memo').AsString;
  QRLean.Caption := Qtemp.FieldByName('DepName').AsString;
  QRLean2.Caption := Qtemp.FieldByName('LEAN').AsString;

  with GCQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('If (OBJECT_ID(''tempdb..#TempGC'') Is Not Null)');
    SQL.Add('Begin Drop Table #TempGC End');

    SQL.Add('SELECT DISTINCT KT_SOPCutS_GCBWD.ywsm + ''('' + GCBWBH + '')'' AS GCBWBH, bwzl.ywsm + ''('' + BWBH + '')'' AS BWBH INTO #TempGC FROM CutDispatchSS_GC');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT bwdh, ywsm FROM bwzl');
    SQL.Add('  UNION ALL');
    SQL.Add('  SELECT gcbwdh, ywsm FROM KT_SOPCutS_GCBWD');
    SQL.Add(') AS bwzl ON bwzl.bwdh = CutDispatchSS_GC.BWBH');
    SQL.Add('LEFT JOIN KT_SOPCutS_GCBWD ON KT_SOPCutS_GCBWD.gcbwdh = CutDispatchSS_GC.GCBWBH');
    SQL.Add('WHERE CutDispatchSS_GC.DLNO = ''' + DLNO + '''');

    SQL.Add('SELECT CAST(GCBWBH AS TEXT) AS GCBWBH, CAST(LEFT(BWBH, LEN(BWBH)-1) AS TEXT) AS BWBH FROM (');
    SQL.Add('  SELECT DISTINCT GCBWBH, (SELECT DISTINCT BWBH + '','' FROM #TempGC');
    SQL.Add('  WHERE GCBWBH = GCData.GCBWBH');
    SQL.Add('  FOR XML PATH('''')) AS BWBH FROM #TempGC AS GCData');
    SQL.Add(') AS GCData');
    Active := true;
  end;

  with QSIZE do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT SIZE FROM CutDispatchS_GC WHERE DLNO = ''' + DLNO + ''' ORDER BY SIZE DESC');
    Active := true;

    i := 1;
    while not Eof do
    begin
      tmpQRLabel1 := TQRLabel(Self.FindComponent('Q' + IntToStr(i)));
      if (tmpQRLabel1 <> nil) then
        tmpQRLabel1.Caption := Trim(FieldByName('SIZE').AsString);

      tmpQRLabel2 := TQRDBText(Self.FindComponent('A' + IntToStr(i)));
      if (tmpQRLabel2 <> nil) then
        tmpQRLabel2.DataField := Trim(FieldByName('SIZE').AsString);

      tmpQRDBText := TQRDBText(self.FindComponent('R' + IntToStr(i)));
      if (tmpQRDBText <> nil) then
        tmpQRDBText.DataField := FieldByName('SIZE').AsString;

      Inc(i);
      Next;
    end;
  end;

  QSIZE.First;
  with XXCCQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT ''XXCC'' AS ''ZLBH''');
    while not QSIZE.Eof do
    begin
      SQL.Add(', MAX(CASE WHEN SIZE = ''' + QSIZE.FieldByName('SIZE').AsString + ''' THEN XXCC ELSE NULL END) AS ''' + QSIZE.FieldByName('SIZE').AsString + '''');
      QSIZE.Next;
    end;
    SQL.Add('FROM ( ');
    SQL.Add('  SELECT DISTINCT SIZE, XXCC FROM CutDispatchS_GC');
    SQL.Add('  LEFT JOIN ZLZLS ON ZLZLS.ZLBH = CutDispatchS_GC.ZLBH AND zlzls.ZLCC = CutDispatchS_GC.SIZE');
    SQL.Add('  WHERE DLNO = ''' + DLNO + '''');
    SQL.Add(') AS CutDispatchS_GC');
    Active := true;
  end;

  QSIZE.First;
  with SMDDSQry do
  begin
    //BY ORDER
    if (IsRoundNum = false) then
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ZLBH+''(''+Min(MinDDBH)+''-''+MAX(MaxDDBH)+'')(''+RPlanDate+'' - ''+ROrder+'') ''+sumline AS ZLBH, GCBWBH, BWBH, SUM(Qty) AS T1, 2 AS LB');
      while not QSIZE.Eof do
      begin
        SQL.Add(', SUM(CASE WHEN SIZE = ''' + QSIZE.FieldByName('SIZE').AsString + ''' THEN Qty END) AS ''' + QSIZE.FieldByName('SIZE').AsString + '''');
        QSIZE.Next;
      end;
      SQL.Add('FROM (');
      SQL.Add('  SELECT CutDispatchSS_GC.ZLBH, CutDispatchSS_GC.GCBWBH, CutDispatchSS_GC.BWBH, SUBSTRING(sumline, LEN(sumline)-1, 2) AS sumline,');
      SQL.Add('  CASE WHEN CutDispatchSS_GC.ZLBH <> MAX(CutDispatchSS_GC.DDBH) THEN (''T''+MIN(RIGHT(CutDispatchSS_GC.DDBH, 3))) ELSE ''T0'' END AS MinDDBH,');
      SQL.Add('  CASE WHEN CutDispatchSS_GC.ZLBH <> MAX(CutDispatchSS_GC.DDBH) THEN (''T''+Max(RIGHT(CutDispatchSS_GC.DDBH, 3))) ELSE ''T0'' END AS MaxDDBH,');
      SQL.Add('  CASE WHEN ISNULL(MIN(SMDD.RPlanDate), '''') <> '''' THEN CAST(MONTH(MIN(SMDD.RPlanDate)) AS VARCHAR) + ''/'' + CAST(DAY(MIN(SMDD.RPlanDate)) AS VARCHAR) ELSE ''X'' END AS RPlanDate,');
      SQL.Add('  CASE WHEN ISNULL(MIN(SMDD.ROrder), '''') <> '''' THEN CAST(MIN(SMDD.ROrder) AS VARCHAR) ELSE ''X'' END AS ROrder,');
      SQL.Add('  CutDispatchSS_GC.SIZE, SUM(CutDispatchSS_GC.Qty) AS Qty FROM CutDispatchSS_GC');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.DDBH = CutDispatchSS_GC.DDBH AND SMDD.GXLB = ''C''');
      SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = SMDD.DepNO');
      SQL.Add('  WHERE DLNO = ''' + DLNO + '''');
      SQL.Add('  GROUP BY ZLBH, GCBWBH, BWBH, sumline, SIZE');
      SQL.Add(') AS CutDispatchSS_GC');
      SQL.Add('GROUP BY ZLBH, GCBWBH, BWBH, sumline, RPlanDate, ROrder');
      if (IsShowTotalPairs) then
      begin
        SQL.Add('UNION ALL');
        SQL.Add('SELECT ''Tong Gong Dou (總雙數)'' AS ZLBH, '''' AS GCBWBH, '''' AS BWBH, SUM(Qty) AS Total, 1 AS LB');
        QSIZE.First;
        while not QSIZE.Eof do
        begin
          SQL.Add(', SUM(CASE WHEN SIZE = ''' + QSIZE.FieldByName('SIZE').AsString + ''' THEN Qty END) AS ''' + QSIZE.FieldByName('SIZE').AsString + '''');
          QSIZE.Next;
        end;
        SQL.Add('FROM CutDispatchSS_GC WHERE DLNO = ''' + DLNO + '''');
      end;
      SQL.Add('ORDER BY LB, ZLBH, GCBWBH, BWBH');
      Active := true;
    end
    //BY CYCLE
    else begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT ZLBH+''(''+Min(MinDDBH)+''-''+MAX(MaxDDBH)+'')(''+RPlanDate+'' - ''+ROrder+'') ''+sumline AS ZLBH, GCBWBH, BWBH, SUM(Qty) AS T1, 2 AS LB');
      while not QSIZE.Eof do
      begin
        SQL.Add(', SUM(CASE WHEN SIZE = ''' + QSIZE.FieldByName('SIZE').AsString + ''' THEN Qty END) AS ''' + QSIZE.FieldByName('SIZE').AsString + '''');
        QSIZE.Next;
      end;
      SQL.Add('FROM (');
      SQL.Add('  SELECT CutDispatchSS_GC.DDBH AS ZLBH, CutDispatchSS_GC.GCBWBH, CutDispatchSS_GC.BWBH, SUBSTRING(sumline, LEN(sumline)-1, 2) AS sumline,');
      SQL.Add('  CASE WHEN CutDispatchSS_GC.ZLBH <> MAX(CutDispatchSS_GC.DDBH) THEN (''T''+MIN(RIGHT(CutDispatchSS_GC.DDBH, 3))) ELSE ''T0'' END AS MinDDBH,');
      SQL.Add('  CASE WHEN CutDispatchSS_GC.ZLBH <> MAX(CutDispatchSS_GC.DDBH) THEN (''T''+Max(RIGHT(CutDispatchSS_GC.DDBH, 3))) ELSE ''T0'' END AS MaxDDBH,');
      SQL.Add('  CASE WHEN ISNULL(MIN(SMDD.RPlanDate), '''') <> '''' THEN CAST(MONTH(MIN(SMDD.RPlanDate)) AS VARCHAR) + ''/'' + CAST(DAY(MIN(SMDD.RPlanDate)) AS VARCHAR) ELSE ''X'' END AS RPlanDate,');
      SQL.Add('  CASE WHEN ISNULL(MIN(SMDD.ROrder), '''') <> '''' THEN CAST(MIN(SMDD.ROrder) AS VARCHAR) ELSE ''X'' END AS ROrder,');
      SQL.Add('  CutDispatchSS_GC.SIZE, SUM(CutDispatchSS_GC.Qty) AS Qty FROM CutDispatchSS_GC');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.DDBH = CutDispatchSS_GC.DDBH AND SMDD.GXLB = ''C''');
      SQL.Add('  LEFT JOIN BDepartment ON BDepartment.ID = SMDD.DepNO');
      SQL.Add('  WHERE DLNO = ''' + DLNO + '''');
      SQL.Add('  GROUP BY CutDispatchSS_GC.ZLBH, CutDispatchSS_GC.DDBH, GCBWBH, BWBH, sumline, SIZE');
      SQL.Add(') AS CutDispatchSS_GC');
      SQL.Add('GROUP BY ZLBH, GCBWBH, BWBH, sumline, RPlanDate, ROrder');
      if (IsShowTotalPairs) then
      begin
        SQL.Add('UNION ALL');
        SQL.Add('SELECT ''Tong Gong Dou (總雙數)'' AS ZLBH, '''' AS GCBWBH, '''' AS BWBH, SUM(Qty) AS Total, 1 AS LB');
        QSIZE.First;
        while not QSIZE.Eof do
        begin
          SQL.Add(', SUM(CASE WHEN SIZE = ''' + QSIZE.FieldByName('SIZE').AsString + ''' THEN Qty END) AS ''' + QSIZE.FieldByName('SIZE').AsString + '''');
          QSIZE.Next;
        end;
        SQL.Add('FROM CutDispatchSS_GC WHERE DLNO = ''' + DLNO + '''');
      end;
      SQL.Add('ORDER BY LB, ZLBH, GCBWBH, BWBH');
      Active := true;
    end;
  end;
end;

end.
