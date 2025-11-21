unit ClosingWIP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  Menus, DateUtils;

type
  TClosingWIP = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Button1: TButton;
    Label2: TLabel;
    ED_RY: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1ZLBH: TStringField;
    Query1DDBH: TStringField;
    Query1Pairs: TIntegerField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    PopupMenu1: TPopupMenu;
    RegenerateClosingInventory1: TMenuItem;
    QUpdate: TQuery;
    Query1Building: TStringField;
    Query1Lean: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RegenerateClosingInventory1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClosingWIP: TClosingWIP;

implementation

uses
  main1;

{$R *.dfm}

procedure TClosingWIP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TClosingWIP.FormDestroy(Sender: TObject);
begin
  ClosingWIP := Nil;
end;

procedure TClosingWIP.FormCreate(Sender: TObject);
begin
  DTP1.Date := IncMonth(Date, -1);
  DTP1.MaxDate := EndOfTheMonth(DTP1.Date);
end;

procedure TClosingWIP.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT KCYEAR, KCMONTH, Building, Lean, ZLBH, DDBH, Pairs, UserID, UserDate, YN FROM KCCLMONTH_Component');
    SQL.Add('WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', DTP1.Date) + ''' AND ZLBH LIKE ''' + ED_RY.Text + '%''');
    SQL.Add('ORDER BY KCYEAR, KCMONTH, Building, Lean, ZLBH, DDBH');
    Active := true;
  end;
end;

procedure TClosingWIP.RegenerateClosingInventory1Click(
  Sender: TObject);
begin
  if (MessageDlg('Are you sure you want to regenerate the closing WIP for ' + FormatDateTime('yyyy/MM', DTP1.Date) + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
  begin
    with QUpdate do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('IF OBJECT_ID(''tempdb..#CompIn'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #CompIn END;');

      SQL.Add('SELECT Building, Lean, ZLBH, DDBH, Qty INTO #CompIn FROM (');
      SQL.Add('  SELECT DISTINCT CDL.Building, CDL.Lean, CD.ZLBH, CD.DDBH, SMDD.Qty FROM CycleDispatchList AS CDL');
      SQL.Add('  LEFT JOIN CycleDispatch AS CD ON CD.ListNo = CDL.ListNo AND CD.GXLB = ''C''');
      SQL.Add('  LEFT JOIN SMDD ON SMDD.YSBH = CD.ZLBH AND SMDD.DDBH = CD.DDBH AND SMDD.GXLB = ''A''');
      SQL.Add('  WHERE CDL.Type = ''Ready'' AND CONVERT(SmallDateTime, CONVERT(VARCHAR, CDL.Date, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP1.Date)) + '''');
      SQL.Add('  UNION ALL');
      SQL.Add('  SELECT Building, Lean, ZLBH, DDBH, Pairs FROM KCCLMONTH_Component');
      SQL.Add('  WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', IncMonth(DTP1.Date, -1)) + '''');
      SQL.Add(') AS CompIn');

      SQL.Add('IF OBJECT_ID(''tempdb..#UpperOut'') IS NOT NULL');
      SQL.Add('BEGIN DROP TABLE #UpperOut END;');

      SQL.Add('SELECT KCRK_Upper.RY, KCRKS_Upper.DDBH, SUM(KCRKS_Upper.Pairs) AS Pairs INTO #UpperOut FROM KCRK_Upper');
      SQL.Add('LEFT JOIN KCRKS_Upper ON KCRKS_Upper.RKNO = KCRK_Upper.RKNO');
      SQL.Add('WHERE KCRK_Upper.Date BETWEEN ''' + FormatDateTime('yyyy/MM/dd', StartOfTheMonth(DTP1.Date)) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', EndOfTheMonth(DTP1.Date)) + ''' AND ISNULL(KCRKS_Upper.Pairs, 0) > 0');
      SQL.Add('GROUP BY KCRK_Upper.Building, KCRK_Upper.Lean, KCRK_Upper.RY, KCRKS_Upper.DDBH');

      SQL.Add('DELETE FROM KCCLMONTH_Component');
      SQL.Add('WHERE KCYEAR + ''/'' + KCMONTH = ''' + FormatDateTime('yyyy/MM', DTP1.Date) + ''';');

      SQL.Add('INSERT INTO KCCLMONTH_Component (KCYEAR, KCMONTH, Building, Lean, ZLBH, DDBH, Pairs, UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + FormatDateTime('yyyy', DTP1.Date) + ''' AS KCYEAR, ''' + FormatDateTime('MM', DTP1.Date) + ''' AS KCMONTH, CompIn.Building, CompIn.Lean, CompIn.ZLBH, CompIn.DDBH, CompIn.Qty - ISNULL(UpperOut.Pairs, 0) AS Pairs, ''' + main.Edit1.Text + ''' AS UserID, GETDATE() AS UserDate, ''1'' AS YN FROM #CompIn AS CompIn');
      SQL.Add('LEFT JOIN #UpperOut AS UpperOut ON UpperOut.RY = CompIn.ZLBH AND UpperOut.DDBH = CompIn.DDBH');
      SQL.Add('WHERE CompIn.Qty > ISNULL(UpperOut.Pairs, 0);');
      ExecSQL;
    end;

    Button1Click(Nil);
    ShowMessage('Complete');
  end;
end;

end.
