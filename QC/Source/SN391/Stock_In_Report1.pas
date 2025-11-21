unit Stock_In_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,ComObj,fununit;

type
  TStock_In_Report = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GB1: TGroupBox;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    CB4: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    ED_RKNO: TEdit;
    CB_Building: TComboBox;
    ED_DepID: TEdit;
    ED_DepName: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label8: TLabel;
    Edit1: TEdit;
    QKCRK: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    QKCRKRKNO: TStringField;
    QKCRKB: TFloatField;
    QKCRKC: TFloatField;
    QKCRKBuilding: TStringField;
    QKCRKDepID: TStringField;
    QKCRKDepName: TStringField;
    QKCRKDepMemo: TStringField;
    QKCRKCFMDate: TDateTimeField;
    QKCRKUserID: TStringField;
    QKCRKUserDate: TDateTimeField;
    QKCRKYN: TStringField;
    QKCRKStatus: TStringField;
    QKCRKGSBH: TStringField;
    QKCRKDDBH: TStringField;
    QKCRKGrade: TStringField;
    QKCRKSize: TStringField;
    QKCRKQty: TFloatField;
    QKCRKDefectID: TStringField;
    QKCRKDefect: TStringField;
    QKCRKCheckDate: TDateTimeField;
    QKCRKKHPO: TStringField;
    QKCRKARTICLE: TStringField;
    QKCRKXieMing: TStringField;
    QKCRKYSSM: TStringField;
    QKCRKJiJie: TStringField;
    QKCRKDDMH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Stock_In_Report: TStock_In_Report;

implementation

uses main1;

{$R *.dfm}

procedure TStock_In_Report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TStock_In_Report.FormDestroy(Sender: TObject);
begin
  Stock_In_Report := Nil;
end;

procedure TStock_In_Report.Button1Click(Sender: TObject);
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
    StatusSQL := StatusSQL + 'Status = ''Stock-In''';
  end;
  if (CB4.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Cancelled''';
  end;
  if (StatusSQL = '') then
    StatusSQL := '1 = 0';

  with QKCRK do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT RKNO, ISNULL(SUM(B), 0) AS B, ISNULL(SUM(C), 0) AS C, Building, DepID, DepName, DepMemo, CFMDate, UserID, UserDate, YN, Status, GSBH,DDBH,Grade,Size,Qty,DefectID,CheckDate,KHPO,ARTICLE,XieMing,YSSM,JiJie,DDMH,Defect FROM (');
    SQL.Add('SELECT KCRK_BC.RKNO, KCRK_BC.GSBH, KCRK_BC.Building, KCRK_BC.DepID, BDepartment.DepName, BDepartment.DepMemo, KCRK_BC.CFMDate, KCRK_BC.UserID, KCRK_BC.UserDate, KCRK_BC.YN,');
    SQL.Add('CASE WHEN KCRKS_BC.Grade = ''B'' THEN Qty END AS B,');
    SQL.Add('CASE WHEN KCRKS_BC.Grade = ''C'' THEN Qty END AS C,');
    SQL.Add('CASE WHEN KCRK_BC.flowflag IS NULL THEN ''Not Submitted'' ELSE');
    SQL.Add('CASE WHEN KCRK_BC.flowflag NOT IN ('''', ''X'', ''Z'') THEN ''Under Review'' ELSE');
    SQL.Add('CASE WHEN KCRK_BC.flowflag = ''Z'' THEN ''Stock-In'' ELSE');
    SQL.Add('CASE WHEN KCRK_BC.flowflag = ''X'' THEN ''Cancelled'' END END END END AS Status,KCRKS_BC.DDBH,KCRKS_BC.Grade,KCRKS_BC.Size,KCRKS_BC.Qty,KCRKS_BC.DefectID,KCRKS_BC.CheckDate,DDZL.KHPO, DDZL.ARTICLE,');
    SQL.Add('XXZL.XieMing, XXZL.YSSM, XXZL.JiJie, XXZL.DDMH, (QCBLYY.YYBH+'' - ['' +QCBLYY.ZWSM+ '']'' ) as Defect');
    SQL.Add('FROM KCRK_BC');
    SQL.Add('LEFT JOIN KCRKS_BC ON KCRKS_BC.RKNO = KCRK_BC.RKNO');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = KCRK_BC.DepID');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = KCRKS_BC.DDBH');
    SQL.Add('LEFT JOIN XXZL ON XXZL.XieXing = DDZL.XieXing AND XXZL.SheHao = DDZL.SheHao');
    SQL.Add('LEFT JOIN QCBLYY ON QCBLYY.YYBH = KCRKS_BC.DefectID AND QCBLYY.GSBH ='''+main.Edit2.Text+''' AND QCBLYY.DFL = ''AR'' AND QCBLYY.YN = ''2''');
    SQL.Add('WHERE KCRK_BC.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('AND CONVERT(VARCHAR, KCRK_BC.UserDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add(') AS KCRK_BC');
    SQL.Add('WHERE 1 = 1');
    if (ED_RKNO.Text <> '') then
      SQL.Add('AND RKNO LIKE ''' + ED_RKNO.Text + '%''');
    if (Edit1.Text <> '') then
      SQL.Add('AND DDBH LIKE ''' +Edit1.Text+ '%''');
    if (CB_Building.ItemIndex > 0) then
      SQL.Add('AND Building = ''' + CB_Building.Text + '''');
    if (ED_DepID.Text <> '') then
      SQL.Add('AND DepID LIKE ''' + ED_DepID.Text + '%''');
    if (ED_DepName.Text <> '') then
      SQL.Add('AND DepName LIKE ''' + ED_DepName.Text + '%''');
    SQL.Add('AND (' + StatusSQL + ')');
    SQL.Add('GROUP BY RKNO, Building, DepID, DepName, DepMemo, CFMDate, UserID, UserDate, YN, Status, GSBH,DDBH,Grade,Size,Qty,DefectID,CheckDate,KHPO,ARTICLE,XieMing,YSSM,JiJie,DDMH,Defect ');
    SQL.Add('ORDER BY RKNO DESC');
    //funcobj.WriteErrorLog(sql.Text);
    //memo1.Text:=sql.Text;
    Active := true;
  end;

end;

procedure TStock_In_Report.Button2Click(Sender: TObject);
var
  a: string;
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (QKCRK.Active) then
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

      QKCRK.First;
      j := 2;
      while not QKCRK.Eof do
      begin
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j, i+1] := DBGridEh1.Fields[i].AsString;
        end;
        QKCRK.Next;
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

procedure TStock_In_Report.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date - 3;
  DTP2.Date := Date;
end;

end.
