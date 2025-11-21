unit Stock_Out_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables,ComObj;

type
  TStockOut_BC_Report = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    ED_LLNO: TEdit;
    GB1: TGroupBox;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    CB4: TCheckBox;
    CBox1: TComboBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label8: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    QKCLL: TQuery;
    QKCLLLLNO: TStringField;
    QKCLLB: TFloatField;
    QKCLLC: TFloatField;
    QKCLLPurpose: TStringField;
    QKCLLStatus: TStringField;
    QKCLLUserID: TStringField;
    QKCLLUserDate: TDateTimeField;
    QKCLLYN: TStringField;
    QKCLLZLBH: TStringField;
    QKCLLCFMDate: TDateTimeField;
    QKCLLGSBH: TStringField;
    QKCLLGrade: TStringField;
    QKCLLDDBH: TStringField;
    QKCLLARTICLE: TStringField;
    QKCLLXieMing: TStringField;
    QKCLLYSSM: TStringField;
    QKCLLJiJie: TStringField;
    QKCLLDDMH: TStringField;
    QKCLLSize: TStringField;
    QKCLLQty: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StockOut_BC_Report: TStockOut_BC_Report;

implementation

uses main1;

{$R *.dfm}

procedure TStockOut_BC_Report.Button1Click(Sender: TObject);
var
  StatusSQL: string;
begin
  StatusSQL := '';
  if (CB1.Checked) then
    StatusSQL := 'Status = ''Not Submitted''';
  if (CB2.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Under Review''';
  end;
  if (CB3.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Stock-Out''';
  end;
  if (CB4.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Cancelled''';
  end;
  if (StatusSQL = '') then
    StatusSQL := '1 = 0';

  with QKCLL do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT LLNO, ISNULL(SUM(B), 0) AS B, ISNULL(SUM(C), 0) AS C, Purpose, ZLBH, CFMDate, UserID, UserDate, YN, Status, GSBH,Grade,DDBH,ARTICLE,XieMing,YSSM,JiJie,DDMH, Size,Qty  FROM (');
    SQL.Add('SELECT KCLL_BC.LLNO, KCLL_BC.Purpose, KCLL_BC.GSBH, KCLL_BC.ZLBH, KCLL_BC.CFMDate, KCLL_BC.UserID, KCLL_BC.UserDate, KCLL_BC.YN,');
    SQL.Add('CASE WHEN KCLLS_BC.Grade = ''B'' THEN KCLLS_BC.Qty END AS B,');
    SQL.Add('CASE WHEN KCLLS_BC.Grade = ''C'' THEN KCLLS_BC.Qty END AS C,');
    SQL.Add('CASE WHEN KCLL_BC.flowflag IS NULL THEN ''Not Submitted'' ELSE');
    SQL.Add('CASE WHEN KCLL_BC.flowflag NOT IN ('''', ''X'', ''Z'') THEN ''Under Review'' ELSE');
    SQL.Add('CASE WHEN KCLL_BC.flowflag = ''Z'' THEN ''Stock-Out'' ELSE');
    SQL.Add('CASE WHEN KCLL_BC.flowflag = ''X'' THEN ''Cancelled'' END END END END AS Status,KCLLS_BC.Grade, KCLLS_BC.DDBH, DDZL.ARTICLE, XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH,KCLLS_BC.Size, KCLLS_BC.Qty  FROM KCLL_BC');
    SQL.Add('LEFT JOIN KCLLS_BC ON KCLLS_BC.LLNO = KCLL_BC.LLNO');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCLLS_BC.DDBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('WHERE KCLL_BC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND CONVERT(VARCHAR, KCLL_BC.UserDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add(') AS KCLL_BC');
    SQL.Add('WHERE 1 = 1');
    if (ED_LLNO.Text <> '') then
      SQL.Add('AND LLNO LIKE ''' + ED_LLNO.Text + '%''');
      if (Edit1.Text <> '') then
      SQL.Add('AND DDBH LIKE ''' +Edit1.Text+ '%''');
    if (CBox1.ItemIndex > 0) then
      SQL.Add('AND Purpose = ''' + CBox1.Text + '''');
    SQL.Add('AND (' + StatusSQL + ')');
    SQL.Add('GROUP BY LLNO, Purpose, ZLBH, CFMDate, UserID, UserDate, YN, Status, GSBH,Grade,DDBH,ARTICLE,XieMing,YSSM,JiJie,DDMH, Size,Qty ');
    SQL.Add('ORDER BY LLNO DESC');
    Active := true;
  end;

end;

procedure TStockOut_BC_Report.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date - 3;
  DTP2.Date := Date;
end;

procedure TStockOut_BC_Report.Button2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (QKCLL.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook := eclApp.workbooks.Add;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells[1, i+1] := DBGridEh1.Columns[i].Title.Caption;
      end;

      QKCLL.First;
      j := 2;
      while not QKCLL.Eof do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j, i+1] := QKCLL.FieldByName(DBGridEh1.Columns[i].FieldName).Value;
        end;
        QKCLL.Next;
        Inc(j);
      end;
      ShowMessage('Succeed');
      eclapp.Columns.Autofit;
      eclApp.Visible := true;

    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;

end;

procedure TStockOut_BC_Report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TStockOut_BC_Report.FormDestroy(Sender: TObject);
begin
  StockOut_BC_Report := Nil;
end;

end.
