unit ProdSupplierKPI1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  ComObj;

type
  TProdSupplierKPI = class(TForm)
    Splitter1: TSplitter;
    DS1: TDataSource;
    DS2: TDataSource;
    QSupplier: TQuery;
    QDetail: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ED_BUYNO1: TEdit;
    ED_SUPPLIER1: TEdit;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    QSupplierZSBH: TStringField;
    QSupplierTotalQty: TIntegerField;
    QSupplierOverQty: TIntegerField;
    QSupplierRate: TStringField;
    QSupplierzsywjc: TStringField;
    QDetailZSBH: TStringField;
    QDetailCGNO: TStringField;
    QDetailCGDate: TDateTimeField;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    ED_BUYNO2: TEdit;
    ED_SUPPLIER2: TEdit;
    Splitter2: TSplitter;
    DBGridEh3: TDBGridEh;
    DBGridEh4: TDBGridEh;
    QDetailCLBH: TStringField;
    QDetailZLBH: TStringField;
    QDetailywpm: TStringField;
    DBGridEh2: TDBGridEh;
    DS3: TDataSource;
    QSupplierATD: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    DS4: TDataSource;
    QDetailATD: TQuery;
    QDetailATDCGNO: TStringField;
    QDetailATDCLBH: TStringField;
    QDetailATDywpm: TStringField;
    QDetailATDZLBH: TStringField;
    QDetailATDCFMDate: TDateTimeField;
    QDetailATDProdLeadTime: TIntegerField;
    QDetailATDCGDate: TDateTimeField;
    QDetailATDStandardDate: TDateTimeField;
    QDetailATDZSBH: TStringField;
    CB_LT: TCheckBox;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Button3: TButton;
    ED_BUYNO3: TEdit;
    ED_SUPPLIER3: TEdit;
    DBGridEh5: TDBGridEh;
    Splitter3: TSplitter;
    DBGridEh6: TDBGridEh;
    DS5: TDataSource;
    QSupplierSchedule: TQuery;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField6: TStringField;
    DS6: TDataSource;
    QDetailSchedule: TQuery;
    QDetailScheduleZSBH: TStringField;
    QDetailScheduleCGNO: TStringField;
    QDetailScheduleCLBH: TStringField;
    QDetailScheduleywpm: TStringField;
    QDetailSchedulecqdh: TStringField;
    QDetailScheduleZLBH: TStringField;
    QDetailScheduleCGDate: TDateTimeField;
    QDetailScheduleCFMDate: TDateTimeField;
    QDetailScheduleScheduleDate: TDateTimeField;
    QDetailScheduleTransport: TIntegerField;
    QDetailScheduleQC: TIntegerField;
    QDetailScheduleExtraDay: TIntegerField;
    QDetailScheduleETA: TDateTimeField;
    QDetailScheduleFinishDate: TDateTimeField;
    QDetailSeq: TIntegerField;
    BTN_ExcelETD: TButton;
    BTN_ExcelATD: TButton;
    BTN_ExcelSchedule: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure ExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdSupplierKPI: TProdSupplierKPI;

implementation

uses main1;

{$R *.dfm}

procedure TProdSupplierKPI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TProdSupplierKPI.FormDestroy(Sender: TObject);
begin
  ProdSupplierKPI := Nil;
end;
    
procedure TProdSupplierKPI.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TProdSupplierKPI.Button1Click(Sender: TObject);
begin
  QDetail.Active := false;
  with QSupplier do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CGZL.ZSBH, CGZL.zsywjc, CGZL.TotalQty, ISNULL(FailedData.OverQty, 0) AS OverQty,');
    SQL.Add('CAST(CAST((CGZL.TotalQty - ISNULL(FailedData.OverQty, 0))*100.0/CGZL.TotalQty AS NUMERIC(5, 2)) AS VARCHAR) + '' %'' AS Rate FROM (');
    SQL.Add('  SELECT ZSBH, zsywjc, COUNT(CGNO) AS TotalQty FROM (');
    SQL.Add('    SELECT CGZL.ZSBH, ZSZL.zsywjc, CGZLSS.CGNO, CGZLSS.CLBH, CGZLSS.ZLBH FROM (');
    SQL.Add('      SELECT DISTINCT CGNO, CLBH, ZLBH FROM CGZLSS');
    SQL.Add('    ) AS CGZLSS');
    SQL.Add('    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('    LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH');
    SQL.Add('    WHERE DDZL.BUYNO LIKE ''' + ED_BUYNO1.Text + '%'' AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.ZSBH LIKE ''' + ED_SUPPLIER1.Text + '%''');
    SQL.Add('  ) AS CGZL');
    SQL.Add('  GROUP BY ZSBH, zsywjc');
    SQL.Add(') AS CGZL');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZSBH, COUNT(CGNO) AS OverQty FROM (');
    SQL.Add('    SELECT CGZL.ZSBH, CGZLSS.CGNO, CGZLSS.CLBH, CGZLSS.ZLBH FROM (');
    SQL.Add('      SELECT DISTINCT CGNO, CLBH, ZLBH, CFMDate FROM CGZLSS');
    SQL.Add('    ) AS CGZLSS');
    SQL.Add('    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('    WHERE DDZL.BUYNO LIKE ''' + ED_BUYNO1.Text + '%'' AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.ZSBH LIKE ''' + ED_SUPPLIER1.Text + '%''');
    SQL.Add('    AND CGZLSS.CFMDate IS NULL AND CONVERT(DATETIME, CONVERT(VARCHAR, CGZL.CGDate, 111)) + 3 < CONVERT(VARCHAR, GETDATE(), 111)');
    SQL.Add('  ) AS CGZL');
    SQL.Add('  GROUP BY ZSBH');
    SQL.Add(') AS FailedData ON FailedData.ZSBH = CGZL.ZSBH');
    SQL.Add('ORDER BY FailedData.OverQty DESC');
    Active := true;
  end;

  with QDetail do
  begin
    SQL.Clear;
    SQL.Add('SELECT CGZL.ZSBH, CGZLSS.CGNO, CGZLSS.ZLBH, CGZLSS.CLBH, CLZL.ywpm, CGZL.CGDate,');
    SQL.Add('CASE WHEN CGZLSS.CFMDate IS NULL AND CGZL.CGDate + 3 < GETDATE() THEN 0 ELSE 1 END AS Seq FROM (');
    SQL.Add('  SELECT DISTINCT CGNO, CLBH, ZLBH, CFMDate FROM CGZLSS');
    SQL.Add(') AS CGZLSS');
    SQL.Add('LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('WHERE DDZL.BUYNO LIKE ''' + ED_BUYNO1.Text + '%'' AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.ZSBH = :ZSBH');
    SQL.Add('ORDER BY CASE WHEN CGZLSS.CFMDate IS NULL AND CGZL.CGDate + 3 < GETDATE() THEN 0 ELSE 1 END, CGZLSS.CGNO, CGZLSS.ZLBH, CGZLSS.CLBH');
    Active := true;
  end;
end;
    
procedure TProdSupplierKPI.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QDetail.FieldByName('Seq').Value = 0) then
    DBGridEh2.Canvas.Font.Color := clRed;
end;

procedure TProdSupplierKPI.Button2Click(Sender: TObject);
begin
  QDetailATD.Active := false;
  with QSupplierATD do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CGZL.ZSBH, CGZL.zsywjc, CGZL.TotalQty, ISNULL(FailedData.OverQty, 0) AS OverQty,');
    SQL.Add('CAST(CAST((CGZL.TotalQty - ISNULL(FailedData.OverQty, 0))*100.0/CGZL.TotalQty AS NUMERIC(5, 2)) AS VARCHAR) + '' %'' AS Rate FROM (');
    SQL.Add('  SELECT ZSBH, zsywjc, COUNT(CGNO) AS TotalQty FROM (');
    SQL.Add('    SELECT CGZL.ZSBH, ZSZL.zsywjc, CGZLSS.CGNO, CGZLSS.CLBH, CGZLSS.ZLBH FROM (');
    SQL.Add('      SELECT DISTINCT CGNO, CLBH, ZLBH FROM CGZLSS');
    SQL.Add('    ) AS CGZLSS');
    SQL.Add('    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('    LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT ZSBH, CLBH, ProdLeadTime FROM (');
    SQL.Add('        SELECT ZSBH, CLBH, ProdLeadTime, ROW_NUMBER() OVER (PARTITION BY CLBH ORDER BY Season DESC) AS Seq FROM MaterialMOQ');
    SQL.Add('      ) AS MaterialMOQ');
    SQL.Add('      WHERE Seq = 1');
    SQL.Add('    ) AS MaterialMOQ ON MaterialMOQ.ZSBH = CGZL.ZSBH AND MaterialMOQ.CLBH = CGZLSS.CLBH');
    SQL.Add('    WHERE DDZL.BUYNO LIKE ''' + ED_BUYNO2.Text + '%'' AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.ZSBH LIKE ''' + ED_Supplier2.Text + '%''');
    if (CB_LT.Checked) then
      SQL.Add('    AND MaterialMOQ.ProdLeadTime IS NOT NULL');
    SQL.Add('  ) AS CGZL');
    SQL.Add('  GROUP BY ZSBH, zsywjc');
    SQL.Add(') AS CGZL');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZSBH, COUNT(CGNO) AS OverQty FROM (');
    SQL.Add('    SELECT CGZL.ZSBH, CGZLSS.CGNO, CGZLSS.CLBH, CGZLSS.ZLBH, CGZLS.CFMDate, MaterialMOQ.ProdLeadTime, CGZL.CGDate, DATEADD(DAY, MaterialMOQ.ProdLeadTime, CGZL.CGDate) AS StandardDate FROM (');
    SQL.Add('      SELECT DISTINCT CGNO, CLBH, ZLBH FROM CGZLSS');
    SQL.Add('    ) AS CGZLSS');
    SQL.Add('    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT ZSBH, CLBH, ProdLeadTime FROM (');
    SQL.Add('        SELECT ZSBH, CLBH, ProdLeadTime, ROW_NUMBER() OVER (PARTITION BY CLBH ORDER BY Season DESC) AS Seq FROM MaterialMOQ');
    SQL.Add('      ) AS MaterialMOQ');
    SQL.Add('      WHERE Seq = 1');
    SQL.Add('    ) AS MaterialMOQ ON MaterialMOQ.ZSBH = CGZL.ZSBH AND MaterialMOQ.CLBH = CGZLSS.CLBH');
    SQL.Add('    WHERE DDZL.BUYNO LIKE ''' + ED_BUYNO2.Text + '%'' AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.ZSBH LIKE ''' + ED_Supplier2.Text + '%''');
    if (CB_LT.Checked) then
      SQL.Add('    AND DATEADD(DAY, MaterialMOQ.ProdLeadTime, CGZL.CGDate) < CONVERT(VARCHAR, CGZLS.CFMDate, 111)')
    else
      SQL.Add('    AND (DATEADD(DAY, MaterialMOQ.ProdLeadTime, CGZL.CGDate) < CONVERT(VARCHAR, CGZLS.CFMDate, 111) OR MaterialMOQ.ProdLeadTime IS NULL)');
    SQL.Add('  ) AS CGZL');
    SQL.Add('  GROUP BY ZSBH');
    SQL.Add(') AS FailedData ON FailedData.ZSBH = CGZL.ZSBH');
    SQL.Add('ORDER BY FailedData.OverQty DESC');
    Active := true;
  end;

  with QDetailATD do
  begin
    SQL.Clear;
    SQL.Add('SELECT CGZL.ZSBH, CGZLSS.CGNO, CGZLSS.CLBH, CLZL.ywpm, CGZLSS.ZLBH, CONVERT(DATETIME, CONVERT(VARCHAR, CGZLS.CFMDate, 111)) AS CFMDate,');
    SQL.Add('MaterialMOQ.ProdLeadTime, CGZL.CGDate, DATEADD(DAY, MaterialMOQ.ProdLeadTime, CGZL.CGDate) AS StandardDate FROM (');
    SQL.Add('  SELECT DISTINCT CGNO, CLBH, ZLBH FROM CGZLSS');
    SQL.Add(') AS CGZLSS');
    SQL.Add('LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZSBH, CLBH, ProdLeadTime FROM (');
    SQL.Add('    SELECT ZSBH, CLBH, ProdLeadTime, ROW_NUMBER() OVER (PARTITION BY CLBH ORDER BY Season DESC) AS Seq FROM MaterialMOQ');
    SQL.Add('  ) AS MaterialMOQ');
    SQL.Add('  WHERE Seq = 1');
    SQL.Add(') AS MaterialMOQ ON MaterialMOQ.ZSBH = CGZL.ZSBH AND MaterialMOQ.CLBH = CGZLSS.CLBH');
    SQL.Add('WHERE DDZL.BUYNO LIKE ''' + ED_BUYNO2.Text + '%'' AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.ZSBH = :ZSBH');
    if (CB_LT.Checked) then
      SQL.Add('ORDER BY CASE WHEN DATEADD(DAY, MaterialMOQ.ProdLeadTime, CGZL.CGDate) < CONVERT(VARCHAR, CGZLS.CFMDate, 111) AND MaterialMOQ.ProdLeadTime IS NOT NULL THEN 0 ELSE 1 END, CGZLSS.CGNO, CGZLSS.CLBH')
    else
      SQL.Add('ORDER BY CASE WHEN DATEADD(DAY, MaterialMOQ.ProdLeadTime, CGZL.CGDate) < CONVERT(VARCHAR, CGZLS.CFMDate, 111) OR MaterialMOQ.ProdLeadTime IS NULL THEN 0 ELSE 1 END, CGZLSS.CGNO, CGZLSS.CLBH');
    Active := true;
  end;
end;
           
procedure TProdSupplierKPI.DBGridEh4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QDetailATD.FieldByName('ProdLeadTime').IsNull) OR (QDetailATD.FieldByName('CFMDate').Value > QDetailATD.FieldByName('StandardDate').Value) then
    DBGridEh4.Canvas.Font.Color := clRed;
end;

procedure TProdSupplierKPI.Button3Click(Sender: TObject);
begin
  QDetailSchedule.Active := false;
  with QSupplierSchedule do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT CGZL.ZSBH, CGZL.zsywjc, CGZL.TotalQty, ISNULL(FailedData.OverQty, 0) AS OverQty,');
    SQL.Add('CAST(CAST((CGZL.TotalQty - ISNULL(FailedData.OverQty, 0))*100.0/CGZL.TotalQty AS NUMERIC(5, 2)) AS VARCHAR) + '' %'' AS Rate FROM (');
    SQL.Add('  SELECT ZSBH, zsywjc, COUNT(CGNO) AS TotalQty FROM (');
    SQL.Add('    SELECT CGZL.ZSBH, ZSZL.zsywjc, CGZLSS.CGNO, CGZLSS.CLBH, CGZLSS.ZLBH FROM (');
    SQL.Add('      SELECT DISTINCT CGNO, CLBH, ZLBH FROM CGZLSS');
    SQL.Add('    ) AS CGZLSS');
    SQL.Add('    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('    LEFT JOIN ZSZL ON ZSZL.ZSDH = CGZL.ZSBH');
    SQL.Add('    WHERE DDZL.BUYNO LIKE ''' + ED_BUYNO3.Text + '%'' AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.ZSBH LIKE ''' + ED_SUPPLIER3.Text + '%''');
    SQL.Add('  ) AS CGZL');
    SQL.Add('  GROUP BY ZSBH, zsywjc');
    SQL.Add(') AS CGZL');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT ZSBH, COUNT(CGNO) AS OverQty FROM (');
    SQL.Add('    SELECT CGZL.ZSBH, CGZLSS.CGNO, CGZLSS.CLBH, CLZL.ywpm, CLZL.cqdh, CGZLSS.ZLBH, CGZL.CGDate, CGZLS.CFMDate, SMDD.ScheduleDate, CASE WHEN CLZL.cqdh = ''VN'' THEN 2 ELSE 14 END AS Transport,');
    SQL.Add('    7 AS QC, ISNULL(xxzlkf.ExtraDay, 0) AS ExtraDay, DATEADD(DAY, 7 + CASE WHEN CLZL.cqdh = ''VN'' THEN 2 ELSE 14 END + ISNULL(xxzlkf.ExtraDay, 0), CGZLS.CFMDate) AS FinishDate FROM (');
    SQL.Add('      SELECT DISTINCT CGNO, CLBH, ZLBH FROM CGZLSS');
    SQL.Add('    ) AS CGZLSS');
    SQL.Add('    LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('    LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('    LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('    LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('    LEFT JOIN xxzlkf ON xxzlkf.XieXing = DDZL.XieXing AND xxzlkf.SheHao = DDZL.SheHao');
    SQL.Add('    LEFT JOIN (');
    SQL.Add('      SELECT YSBH, MIN(PlanDate) AS ScheduleDate FROM SMDD');
    SQL.Add('      WHERE GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('      GROUP BY YSBH');
    SQL.Add('    ) AS SMDD ON SMDD.YSBH = DDZL.DDBH');
    SQL.Add('    WHERE DDZL.BUYNO LIKE ''' + ED_BUYNO3.Text + '%'' AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.ZSBH LIKE ''' + ED_SUPPLIER3.Text + '%''');
    SQL.Add('    AND DATEADD(DAY, 7 + CASE WHEN CLZL.cqdh = ''VN'' THEN 2 ELSE 14 END + ISNULL(xxzlkf.ExtraDay, 0) , CONVERT(VARCHAR, CGZLS.CFMDate, 111)) > SMDD.ScheduleDate');
    SQL.Add('  ) AS CGZL');
    SQL.Add('  GROUP BY ZSBH');
    SQL.Add(') AS FailedData ON FailedData.ZSBH = CGZL.ZSBH');
    SQL.Add('ORDER BY FailedData.OverQty DESC, CGZL.ZSBH');
    Active := true;
  end;

  with QDetailSchedule do
  begin
    SQL.Clear;
    SQL.Add('SELECT CGZL.ZSBH, CGZLSS.CGNO, CGZLSS.CLBH, CLZL.ywpm, CLZL.cqdh, CGZLSS.ZLBH, CGZL.CGDate, CGZLS.CFMDate, CASE WHEN CLZL.cqdh = ''VN'' THEN 2 ELSE 14 END AS Transport, DATEADD(DAY, CASE WHEN CLZL.cqdh = ''VN'' THEN 2 ELSE 14 END, CGZLS.CFMDate) AS ETA,');
    SQL.Add('SMDD.ScheduleDate, 7 AS QC, ISNULL(xxzlkf.ExtraDay, 0) AS ExtraDay, DATEADD(DAY, 7 + CASE WHEN CLZL.cqdh = ''VN'' THEN 2 ELSE 14 END + ISNULL(xxzlkf.ExtraDay, 0), CONVERT(VARCHAR, CGZLS.CFMDate, 111)) AS FinishDate FROM (');
    SQL.Add('  SELECT DISTINCT CGNO, CLBH, ZLBH FROM CGZLSS');
    SQL.Add(') AS CGZLSS');
    SQL.Add('LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN CGZL ON CGZL.CGNO = CGZLSS.CGNO');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = CGZLSS.ZLBH');
    SQL.Add('LEFT JOIN CLZL ON CLZL.CLDH = CGZLSS.CLBH');
    SQL.Add('LEFT JOIN xxzlkf ON xxzlkf.XieXing = DDZL.XieXing AND xxzlkf.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT YSBH, MIN(PlanDate) AS ScheduleDate FROM SMDD');
    SQL.Add('  WHERE GXLB = ''A'' AND GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('  GROUP BY YSBH');
    SQL.Add(') AS SMDD ON SMDD.YSBH = DDZL.DDBH');
    SQL.Add('WHERE DDZL.BUYNO LIKE ''' + ED_BUYNO3.Text + '%'' AND CGZL.GSBH = ''' + main.Edit2.Text + ''' AND CGZL.ZSBH = :ZSBH');
    SQL.Add('ORDER BY CASE WHEN DATEADD(DAY, 7 + CASE WHEN CLZL.cqdh = ''VN'' THEN 2 ELSE 14 END + ISNULL(xxzlkf.ExtraDay, 0), CONVERT(VARCHAR, CGZLS.CFMDate, 111)) > SMDD.ScheduleDate THEN 0 ELSE 1 END, CGZLSS.CGNO, CGZLSS.ZLBH, CGZLSS.CLBH');
    Active := true;
  end;
end;

procedure TProdSupplierKPI.DBGridEh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QDetailSchedule.FieldByName('FinishDate').Value > QDetailSchedule.FieldByName('ScheduleDate').Value) then
    DBGridEh6.Canvas.Font.Color := clRed;
end;

procedure TProdSupplierKPI.ExcelClick(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, j: integer;
  TargetQuery1, TargetQuery2: TQuery;
begin
  if ((Sender AS TButton).Name = 'BTN_ExcelETD') then
  begin
    TargetQuery1 := QSupplier;
    TargetQuery2 := QDetail;
  end
  else if ((Sender AS TButton).Name = 'BTN_ExcelATD') then
  begin
    TargetQuery1 := QSupplierATD; 
    TargetQuery2 := QDetailATD;
  end
  else if ((Sender AS TButton).Name = 'BTN_ExcelSchedule') then
  begin
    TargetQuery1 := QSupplierSchedule;
    TargetQuery2 := QDetailSchedule;
  end;

  TargetQuery2.Active := false;
  if (TargetQuery1.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
      Exit;
    end;

    try
      WorkBook := eclApp.workbooks.Add;
      for i:=0 to TargetQuery1.FieldCount-1 do
      begin
        eclApp.Cells(1,i+1) := TargetQuery1.Fields[i].FieldName;
      end;

      TargetQuery1.First;
      j := 1;
      while not TargetQuery1.Eof do
      begin
        for i:=0 to TargetQuery1.FieldCount-1 do
        begin
          eclApp.Cells(j, i+1) := TargetQuery1.Fields[i].Value;
        end;
        TargetQuery1.Next;
        inc(j);
      end;

      eclapp.columns.autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
  TargetQuery1.First;
  TargetQuery2.Active := true;
end;

end.
