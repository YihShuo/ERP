unit NoApplication1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables, ComObj;

type
  TNoApplication = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label2: TLabel;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    Query1RY: TStringField;
    Query1MaterialID: TStringField;
    Query1IssuanceUsage: TFloatField;
    Button2: TButton;
    Query1RKNO: TStringField;
    Query1LLUsage: TFloatField;
    Query1Usage: TFloatField;
    Query1DeliveryCFMDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NoApplication: TNoApplication;

implementation

{$R *.dfm}

procedure TNoApplication.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TNoApplication.FormDestroy(Sender: TObject);
begin
  NoApplication := Nil;
end;

procedure TNoApplication.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date - 2;
  DTP2.Date := Date;
end;

procedure TNoApplication.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MRCard.RY, MRCard.MaterialID, MRCard.IssuanceUsage, MRCard.Usage, MRCard.RKNO, ISNULL(SUM(KCLLS.Qty), 0) AS LLUsage, MRCard.DeliveryCFMDate FROM (');
    SQL.Add('  SELECT MRCard.RY, MRCard.MaterialID, MRCard.IssuanceUsage, MRCard.Usage, ISNULL(SUM(KCRKS.Qty), 0) AS RKUsage, MAX(KCRKS.RKNO) AS RKNO, MRCard.DeliveryCFMDate FROM (');
    SQL.Add('    SELECT MRCard.RY, MRCard.MaterialID, MRCard.IssuanceUsage, ISNULL(SUM(ZLZLS2.CLSL), 0) AS Usage, MRCard.DeliveryCFMDate FROM (');
    SQL.Add('      SELECT MRCardS.RY_Begin AS RY, MRCardS.MaterialID, SUM(MRCardS.IssuanceUsage) AS IssuanceUsage, CONVERT(SmallDateTime, CONVERT(VARCHAR, MIN(MRCard.DeliveryCFMDate), 111)) AS DeliveryCFMDate FROM MRCard');
    SQL.Add('      LEFT JOIN MRCardS ON MRCardS.ListNo = MRCard.ListNo');
    SQL.Add('      WHERE MRCard.DemandDate BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + ''' AND MRCard.DeliveryCFMDate IS NOT NULL AND MRCardS.IssuanceUsage > 0');
    SQL.Add('      GROUP BY MRCardS.RY_Begin, MRCardS.MaterialID');
    SQL.Add('    ) AS MRCard');
    SQL.Add('    LEFT JOIN ZLZLS2 ON ZLZLS2.ZLBH = MRCard.RY AND ZLZLS2.CLBH = MRCard.MaterialID');
    SQL.Add('    GROUP BY MRCard.RY, MRCard.MaterialID, MRCard.IssuanceUsage, MRCard.DeliveryCFMDate');
    SQL.Add('  ) AS MRCard');
    SQL.Add('  LEFT JOIN KCRKS ON KCRKS.CGBH = MRCard.RY AND KCRKS.CLBH = MRCard.MaterialID');
    SQL.Add('  GROUP BY MRCard.RY, MRCard.MaterialID, MRCard.IssuanceUsage, MRCard.Usage, MRCard.DeliveryCFMDate');
    SQL.Add(') AS MRCard');
    SQL.Add('LEFT JOIN KCLLS ON KCLLS.SCBH = MRCard.RY AND KCLLS.CLBH = MRCard.MaterialID');
    SQL.Add('WHERE MRCard.RKUsage = MRCard.Usage');
    SQL.Add('GROUP BY MRCard.RY, MRCard.MaterialID, MRCard.IssuanceUsage, MRCard.Usage, MRCard.RKUsage, MRCard.RKNO, MRCard.DeliveryCFMDate');
    SQL.Add('HAVING SUM(ISNULL(KCLLS.Qty, 0)) < MRCard.Usage');
    SQL.Add('ORDER BY CASE WHEN MRCard.RKNO IS NOT NULL THEN 0 ELSE 1 END, MRCard.RY, MRCard.MaterialID');
    Active := true;
  end;
end;

procedure TNoApplication.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (Query1.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.Workbooks.Add;
      for i := 0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells[1, i+1] := DBGridEh1.Columns[i].Title.Caption;
      end;

      Query1.First;
      j := 2;
      while not Query1.Eof do
      begin
        for i := 0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j, i+1] := Query1.FieldByName(DBGridEh1.Columns[i].FieldName).Value;
        end;
        Query1.Next;
        Inc(j);
      end;
      eclapp.Columns.Autofit; 
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

end.
