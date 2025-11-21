unit TabletReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls,comobj;

type
  TTabletReport = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    DTP1: TDateTimePicker;
    Label1: TLabel;
    CB1: TComboBox;
    Label2: TLabel;
    Query1DepNO: TStringField;
    Query1DepName: TStringField;
    Query1BDEDesigner78: TIntegerField;
    Query1BDEDesigner89: TIntegerField;
    Query1BDEDesigner910: TIntegerField;
    Query1BDEDesigner1011: TIntegerField;
    Query1BDEDesigner1112: TIntegerField;
    Query1BDEDesigner1213: TIntegerField;
    Query1BDEDesigner1314: TIntegerField;
    Query1BDEDesigner1415: TIntegerField;
    Query1BDEDesigner1516: TIntegerField;
    Query1BDEDesigner1617: TIntegerField;
    Button1: TButton;
    QSearch: TQuery;
    Query1Total: TIntegerField;
    Button5: TButton;
    Query1ARTICLE: TStringField;
    Query1BDEDesigner1718: TIntegerField;
    Query1BDEDesigner1819: TIntegerField;
    Query1BDEDesigner1920: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    DepNo: array of string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TabletReport: TTabletReport;

implementation

{$R *.dfm}

procedure TTabletReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TTabletReport.FormDestroy(Sender: TObject);
begin
  TabletReport := Nil;
end;

procedure TTabletReport.FormCreate(Sender: TObject);
var
  i: integer;
begin
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SMZL_Tablet.DepNO, BDepartment.DepName FROM SMZL_Tablet');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = SMZL_Tablet.DepNO');
    SQL.Add('GROUP BY SMZL_Tablet.DepNO, BDepartment.DepName');
    SQL.Add('ORDER BY BDepartment.DepName');
    Active := true;

    SetLength(DepNo, RecordCount + 1);
    CB1.Items.Clear;
    CB1.Items.Add('ALL');
    i := 1;
    while not Eof do
    begin
      DepNo[i] := FieldByName('DepNo').AsString;
      CB1.Items.Add(FieldByName('DepName').AsString);
      Inc(i);
      Next;
    end;
    CB1.ItemIndex := 0;
  end;

  DTP1.Date := Date();
end;

procedure TTabletReport.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT SMZL_Tablet.DepNO, BDepartment.DepName,');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 7 THEN SMZL_Tablet.Pairs END), 0) AS ''7-8'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 8 THEN SMZL_Tablet.Pairs END), 0) AS ''8-9'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 9 THEN SMZL_Tablet.Pairs END), 0) AS ''9-10'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 10 THEN SMZL_Tablet.Pairs END), 0) AS ''10-11'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 11 THEN SMZL_Tablet.Pairs END), 0) AS ''11-12'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 12 THEN SMZL_Tablet.Pairs END), 0) AS ''12-13'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 13 THEN SMZL_Tablet.Pairs END), 0) AS ''13-14'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 14 THEN SMZL_Tablet.Pairs END), 0) AS ''14-15'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 15 THEN SMZL_Tablet.Pairs END), 0) AS ''15-16'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 16 THEN SMZL_Tablet.Pairs END), 0) AS ''16-17'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 17 THEN SMZL_Tablet.Pairs END), 0) AS ''17-18'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 18 THEN SMZL_Tablet.Pairs END), 0) AS ''18-19'',');
    SQL.Add('ISNULL(SUM(CASE WHEN DATEPART(HH, SMZL_Tablet.ScanDate) = 19 THEN SMZL_Tablet.Pairs END), 0) AS ''19-20'',');
    SQL.Add('ISNULL(SUM(SMZL_Tablet.Pairs), 0) AS Total,DDZL.ARTICLE FROM SMZL_Tablet');
    SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = SMZL_Tablet.DepNO');
    SQL.Add('LEFT JOIN DDZL ON DDZL.DDBH = SMZL_Tablet.SCBH');
    SQL.Add('WHERE CONVERT(VARCHAR, SMZL_Tablet.ScanDate, 111) = ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + '''');
    if (CB1.ItemIndex > 0) then
      SQL.Add('AND SMZL_Tablet.DepNO = ''' + DepNo[CB1.ItemIndex] + '''');
    SQL.Add('GROUP BY SMZL_Tablet.DepNO, BDepartment.DepName,DDZL.ARTICLE');
    Active := true;
  end;
end;

procedure TTabletReport.Button5Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  Query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
          inc(j);
          end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

end.
