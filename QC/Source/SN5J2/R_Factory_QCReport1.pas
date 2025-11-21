unit R_Factory_QCReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,ComObj,fununit;

type
  TR_Factory_QCReport = class(TForm)
    QCR: TQuery;
    DS1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    ED_QCID: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    QCR1: TQuery;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button5: TButton;
    Button6: TButton;
    Edit2: TEdit;
    DTP5: TDateTimePicker;
    DTP6: TDateTimePicker;
    DBGridEh3: TDBGridEh;
    DS3: TDataSource;
    QCR2: TQuery;
    QCRScanDate: TDateTimeField;
    QCRclass: TStringField;
    QCRQTY: TFloatField;
    QCRBatch_Inspected: TFloatField;
    QCRBatch_Rejected: TFloatField;
    QCRINSPECTED_QTY: TIntegerField;
    QCRdefect_qty: TFloatField;
    QCRDEFECT_RATE: TFloatField;
    QCRBatch_Pass_Rate: TFloatField;
    QCR1MJBH: TStringField;
    QCR1SIZE: TStringField;
    QCR1QTY: TFloatField;
    QCR1Batch_Inspected: TFloatField;
    QCR1INSPECTED_QTY: TIntegerField;
    QCR1Defect_qty: TFloatField;
    QCR1Batch_Rejected: TFloatField;
    QCR1DEFECT_RATE: TFloatField;
    QCR1Batch_Pass_Rate: TFloatField;
    QCR1TOP1_ISSUE: TStringField;
    QCR1TOP1_ISSUE_QTY: TFloatField;
    QCR1TOP2_ISSUE: TStringField;
    QCR1TOP2_ISSUE_QTY: TFloatField;
    QCR1TOP3_ISSUE: TStringField;
    QCR1TOP3_ISSUE_QTY: TFloatField;
    QCR2Color: TStringField;
    QCR2QTY: TFloatField;
    QCR2Batch_Inspected: TFloatField;
    QCR2INSPECTED_QTY: TIntegerField;
    QCR2Defect_qty: TFloatField;
    QCR2Batch_Rejected: TFloatField;
    QCR2DEFECT_RATE: TFloatField;
    QCR2Batch_Pass_Rate: TFloatField;
    QCR2TOP1_ISSUE: TStringField;
    QCR2TOP1_ISSUE_QTY: TFloatField;
    QCR2TOP2_ISSUE: TStringField;
    QCR2TOP2_ISSUE_QTY: TFloatField;
    QCR2TOP3_ISSUE: TStringField;
    QCR2TOP3_ISSUE_QTY: TFloatField;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button7: TButton;
    Button8: TButton;
    Edit3: TEdit;
    DTP7: TDateTimePicker;
    DTP8: TDateTimePicker;
    DBGridEh4: TDBGridEh;
    DS4: TDataSource;
    QCR3: TQuery;
    QTemp: TQuery;
    QCR3MJBH: TStringField;
    QCR3SIZE: TStringField;
    QCR3Defect_Qty: TIntegerField;
    QCR3LECH_KHUON: TIntegerField;
    QCR3RACH_NUT: TIntegerField;
    QCR3LEN_MAU: TIntegerField;
    QCR3KHUYET_LIEU: TIntegerField;
    QCR3BONG_BONG: TIntegerField;
    QCR3BI_LOM: TIntegerField;
    QCR3HOA_VAN_KHONG_RO: TIntegerField;
    QCR3CHAY: TIntegerField;
    QCR3BIEN_DAY: TIntegerField;
    QCR3CHONG_DAU: TIntegerField;
    QCR3BIEN_DANG: TIntegerField;
    QCR3DO_DAY_KHONG_DUNG: TIntegerField;
    QCR3TACH_LIEU: TIntegerField;
    QCR3NGUYEN_NHAN_KHAC: TIntegerField;
    QTemp1: TQuery;
    QCR3NHIEM_BAN: TIntegerField;
    Label13: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R_Factory_QCReport: TR_Factory_QCReport;

implementation

uses main1;

{$R *.dfm}

procedure TR_Factory_QCReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TR_Factory_QCReport.FormDestroy(Sender: TObject);
begin
  R_Factory_QCReport := Nil;
end;

procedure TR_Factory_QCReport.Button1Click(Sender: TObject);
var
  StatusSQL: string;
begin

  with QCR do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select *,round(defect_qty/INSPECTED_QTY*100,2) as DEFECT_RATE,round((1-Batch_Rejected/Batch_Inspected)*100,2) as Batch_Pass_Rate from ( ');
    SQL.Add('select ScanDate,class,sum(QTY) as QTY, ');
    if trim(Edit4.Text) = '' then begin
      SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate = QC.ScanDate and class = QC.Class) AS DECIMAL(8, 1)) as Batch_Inspected , ');
      SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate = QC.ScanDate and STATUS = ''F'' and class = QC.Class) AS DECIMAL(8, 1)) as Batch_Rejected , ');
    end
    else begin
      SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate = QC.ScanDate and class = QC.Class and userid = ''' + trim(Edit4.Text) + ''') AS DECIMAL(8, 1)) as Batch_Inspected , ');
      SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate = QC.ScanDate and STATUS = ''F'' and class = QC.Class and userid = ''' + trim(Edit4.Text) + ''') AS DECIMAL(8, 1)) as Batch_Rejected , ');
    end;
    SQL.Add('sum(INSPECTED_QTY) as INSPECTED_QTY,CAST(sum(defect_qty) AS DECIMAL(8, 1)) as defect_qty ');
    SQL.Add('from ( ');
    SQL.Add('select ScanDate,class,QTY,Multiple as INSPECTED_QTY,defect_qty  ');
    SQL.Add('from QC_R_Factory ');
    SQL.Add('where ScanDate between ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if trim(Edit4.Text) <> '' then
      SQL.Add('and userid = ''' + trim(Edit4.Text) + '''');
    SQL.Add(')QC ');
    SQL.Add('group by ScanDate,class ');
    SQL.Add(')QC ');
    SQL.Add('order by ScanDate,class ');
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage(sql.Text);
    Active := true;
  end;

end;

procedure TR_Factory_QCReport.Button2Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if PageControl1.ActivePageIndex = 0 then begin
    if (QCR.Active) then
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

        QCR.First;
        j := 2;
        while not QCR.Eof do
        begin
          for i:=0 to DBGridEh1.Columns.Count-1 do
          begin
            eclApp.Cells[j, i+1] := DBGridEh1.Fields[i].AsString;
          end;
          QCR.Next;
          Inc(j);
        end;
        ShowMessage('Succeed');
        eclapp.Columns.Autofit;
        eclApp.Visible := true;

      except on F:Exception do
        ShowMessage(F.Message);
      end;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    if (QCR1.Active) then
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
        eclApp.Cells[1, 1] := formatdatetime('YYYY/MM/DD',DTP3.Date) + '~' + formatdatetime('YYYY/MM/DD',DTP4.Date);
        for i:=0 to DBGridEh2.Columns.Count-1 do
        begin
          eclApp.Cells[2, i+1] := DBGridEh2.Columns[i].Title.Caption;
        end;

        QCR1.First;
        j := 3;
        while not QCR1.Eof do
        begin
          for i:=0 to DBGridEh2.Columns.Count-1 do
          begin
            eclApp.Cells[j, i+1] := DBGridEh2.Fields[i].AsString;
          end;
          QCR1.Next;
          Inc(j);
        end;
        ShowMessage('Succeed');
        eclapp.Columns.Autofit;
        eclApp.Visible := true;

      except on F:Exception do
        ShowMessage(F.Message);
      end;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    if (QCR2.Active) then
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
        eclApp.Cells[1, 1] := formatdatetime('YYYY/MM/DD',DTP5.Date) + '~' + formatdatetime('YYYY/MM/DD',DTP6.Date);
        for i:=0 to DBGridEh3.Columns.Count-1 do
        begin
          eclApp.Cells[2, i+1] := DBGridEh3.Columns[i].Title.Caption;
        end;

        QCR2.First;
        j := 3;
        while not QCR2.Eof do
        begin
          for i:=0 to DBGridEh3.Columns.Count-1 do
          begin
            eclApp.Cells[j, i+1] := DBGridEh3.Fields[i].AsString;
          end;
          QCR2.Next;
          Inc(j);
        end;
        ShowMessage('Succeed');
        eclapp.Columns.Autofit;
        eclApp.Visible := true;

      except on F:Exception do
        ShowMessage(F.Message);
      end;
    end;
  end
  else if PageControl1.ActivePageIndex = 3 then begin
    if (QCR3.Active) then
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
        eclApp.Cells[1, 1] := formatdatetime('YYYY/MM/DD',DTP7.Date) + '~' + formatdatetime('YYYY/MM/DD',DTP8.Date);
        for i:=0 to DBGridEh4.Columns.Count-1 do
        begin
          eclApp.Cells[2, i+1] := DBGridEh4.Columns[i].Title.Caption;
        end;

        QCR3.First;
        j := 3;
        while not QCR3.Eof do
        begin
          for i:=0 to DBGridEh4.Columns.Count-1 do
          begin
            eclApp.Cells[j, i+1] := DBGridEh4.Fields[i].AsString;
          end;
          QCR3.Next;
          Inc(j);
        end;
        ShowMessage('Succeed');
        eclapp.Columns.Autofit;
        eclApp.Visible := true;

      except on F:Exception do
        ShowMessage(F.Message);
      end;
    end;
  end
end;

procedure TR_Factory_QCReport.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  DTP1.Date := Date - 7;
  DTP2.Date := Date;
  DTP3.Date := Date - 7;
  DTP4.Date := Date;
  DTP5.Date := Date - 7;
  DTP6.Date := Date;
  DTP7.Date := Date - 7;
  DTP8.Date := Date;
  PageControl1Change(sender);
end;

procedure TR_Factory_QCReport.Button3Click(Sender: TObject);
begin

  with QCR1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#QCR1'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #QCR1 END');
    SQL.Add('select MJBH,SIZE,sum(Defect_qty) as Defect_Qty,Defect_Result');
    SQL.Add('INTO #QCR1');
    SQL.Add('from QC_R_Factory where CONVERT(VARCHAR, ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + '''');
    SQL.Add('and Defect_Result <> ''PASS''');
    SQL.Add('group by MJBH,SIZE,Defect_Result');

    SQL.Add('select *,round(defect_qty/INSPECTED_QTY*100,2) as DEFECT_RATE,round((1-Batch_Rejected/Batch_Inspected)*100,2) as Batch_Pass_Rate,');
    SQL.Add('(select top 1 Defect_Result from #QCR1 where #QCR1.MJBH = QC.MJBH and #QCR1.SIZE = QC.SIZE order by Defect_Qty desc) as TOP1_ISSUE,');
    SQL.Add('(select top 1 Defect_Qty from #QCR1 where #QCR1.MJBH = QC.MJBH and #QCR1.SIZE = QC.SIZE order by Defect_Qty desc) as TOP1_ISSUE_QTY,');
    SQL.Add('(select top 1 * from (select top 2 Defect_Result from #QCR1 where #QCR1.MJBH = QC.MJBH and #QCR1.SIZE = QC.SIZE order by Defect_Qty desc)QC2 order by Defect_Qty) as TOP2_ISSUE,');
    SQL.Add('(select top 1 * from (select top 2 Defect_Qty from #QCR1 where #QCR1.MJBH = QC.MJBH and #QCR1.SIZE = QC.SIZE order by Defect_Qty desc)QC2 order by Defect_Qty) as TOP2_ISSUE_QTY,');
    SQL.Add('(select top 1 * from (select top 3 Defect_Result from #QCR1 where #QCR1.MJBH = QC.MJBH and #QCR1.SIZE = QC.SIZE order by Defect_Qty desc)QC3 order by Defect_Qty) as TOP3_ISSUE,');
    SQL.Add('(select top 1 * from (select top 3 Defect_Qty from #QCR1 where #QCR1.MJBH = QC.MJBH and #QCR1.SIZE = QC.SIZE order by Defect_Qty desc)QC3 order by Defect_Qty) as TOP3_ISSUE_QTY');
    SQL.Add('from (');
    SQL.Add('select MJBH,SIZE,sum(QTY) as QTY,');
    SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate between ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + ''' and MJBH = QC.MJBH and SIZE = QC.Size) AS DECIMAL(8, 1)) as Batch_Inspected ,');
    SQL.Add('sum(INSPECTED_QTY) as INSPECTED_QTY,SUM(defect_qty) as Defect_qty,');
    SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate between ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + ''' and STATUS = ''F'' and MJBH = QC.MJBH and SIZE = QC.Size ) AS DECIMAL(8, 1)) as Batch_Rejected');
    SQL.Add('from(');
    SQL.Add('select MJBH,SIZE,QTY,Multiple as INSPECTED_QTY,defect_qty');
    SQL.Add('from QC_R_Factory');
    SQL.Add('where ScanDate between ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + '''');
    SQL.Add(')QC');
    SQL.Add('group by MJBH,SIZE');
    SQL.Add(')QC');
    //showmessage(SQL.Text);
    Active := true;
  end;

end;

procedure TR_Factory_QCReport.PageControl1Change(Sender: TObject);
var i:integer;
    sheet:TTabSheet;
begin
  for i:=0 to PageControl1.PageCount-1   do
  begin
     sheet:=PageControl1.Pages[i];
     if sheet=PageControl1.ActivePage   then
        sheet.Highlighted:=true
     else
        sheet.Highlighted:=false;
  end;
end;

procedure TR_Factory_QCReport.Button5Click(Sender: TObject);
begin
  with QCR2 do
  begin
    Active := false;           
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#QCR1'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #QCR1 END');
    SQL.Add('select EnglishName as Color,sum(Defect_qty) as Defect_Qty,Defect_Result');
    SQL.Add('INTO #QCR1');
    SQL.Add('from QC_R_Factory where CONVERT(VARCHAR, ScanDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + '''');
    SQL.Add('and Defect_Result <> ''PASS''');
    SQL.Add('group by EnglishName,Defect_Result');
    ExecSQL;

    Active := false;
    SQL.Clear;
    SQL.Add('select *,round(defect_qty/INSPECTED_QTY*100,2) as DEFECT_RATE,round((1-Batch_Rejected/Batch_Inspected)*100,2) as Batch_Pass_Rate,');
    SQL.Add('(select top 1 Defect_Result from #QCR1 where #QCR1.Color = QC.Color order by Defect_Qty desc) as TOP1_ISSUE,');
    SQL.Add('(select top 1 Defect_Qty from #QCR1 where #QCR1.Color = QC.Color order by Defect_Qty desc) as TOP1_ISSUE_QTY,');
    SQL.Add('(select top 1 * from (select top 2 Defect_Result from #QCR1 where #QCR1.Color = QC.Color order by Defect_Qty desc)QC2 order by Defect_Qty) as TOP2_ISSUE,');
    SQL.Add('(select top 1 * from (select top 2 Defect_Qty from #QCR1 where #QCR1.Color = QC.Color order by Defect_Qty desc)QC2 order by Defect_Qty) as TOP2_ISSUE_QTY,');
    SQL.Add('(select top 1 * from (select top 3 Defect_Result from #QCR1 where #QCR1.Color = QC.Color order by Defect_Qty desc)QC3 order by Defect_Qty) as TOP3_ISSUE,');
    SQL.Add('(select top 1 * from (select top 3 Defect_Qty from #QCR1 where #QCR1.Color = QC.Color order by Defect_Qty desc)QC3 order by Defect_Qty) as TOP3_ISSUE_QTY');
    SQL.Add('from (');
    SQL.Add('select Color,sum(QTY) as QTY,');
    SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate between ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + ''' and EnglishName = QC.Color) AS DECIMAL(8, 1)) as Batch_Inspected ,');
    SQL.Add('sum(INSPECTED_QTY) as INSPECTED_QTY,SUM(defect_qty) as Defect_qty,');
    SQL.Add('CAST((select count(*) from QC_R_Factory where ScanDate between ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + ''' and STATUS = ''F'' and EnglishName = QC.Color) AS DECIMAL(8, 1)) as Batch_Rejected');
    SQL.Add('from(');
    SQL.Add('select EnglishName as Color,QTY,Multiple as INSPECTED_QTY,defect_qty');
    SQL.Add('from QC_R_Factory');
    SQL.Add('where ScanDate between ''' + FormatDateTime('yyyy/MM/dd', DTP5.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP6.Date) + '''');
    SQL.Add(')QC');
    SQL.Add('group by Color');
    SQL.Add(')QC');
    //showmessage(SQL.Text);
    Active := true;
  end;
end;

procedure TR_Factory_QCReport.Button7Click(Sender: TObject);
var MJBH,SIZE: String;
begin
  with QCR3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#QCR1'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #QCR1 END');
    SQL.Add('select MJBH,SIZE,NULL as Defect_Qty,NULL as LECH_KHUON,NULL as RACH_NUT,NULL as LEN_MAU,NULL as KHUYET_LIEU,NULL as BONG_BONG');
    SQL.Add(',NULL as BI_LOM,NULL as HOA_VAN_KHONG_RO,NULL as NHIEM_BAN,NULL as CHAY,NULL as BIEN_DAY');
    SQL.Add(',NULL as CHONG_DAU,NULL as BIEN_DANG,NULL as DO_DAY_KHONG_DUNG,NULL as TACH_LIEU,NULL as NGUYEN_NHAN_KHAC');
    SQL.Add('INTO #QCR1');
    SQL.Add('from QC_R_Factory where 1 = 2');
    //showmessage(SQL.Text);
    ExecSQL;
  end;

  QTemp.Active := false;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('select MJBH,SIZE,Defect_Result,SUM(Defect_Qty) as Defect_Qty from QC_R_Factory');
  QTemp.SQL.Add('where Defect_Result <> ''PASS'' and ScanDate between ''' + FormatDateTime('yyyy/MM/dd', DTP7.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP8.Date) + '''');
  QTemp.SQL.Add('group by MJBH,SIZE,Defect_Result');
  QTemp.SQL.Add('order by MJBH,SIZE');
  QTemp.Active := true;

  MJBH := '';
  SIZE := '';
  QTemp.First;
  while not QTemp.Eof do begin
    QTemp1.Active := false;
    QTemp1.SQL.Clear;
    if (MJBH = QTemp.fieldbyname('MJBH').AsString) and (SIZE = QTemp.fieldbyname('SIZE').AsString) then
      QTemp1.SQL.Add('update #QCR1 set Defect_Qty = Defect_Qty + '+QTemp.fieldbyname('Defect_Qty').AsString+','+QTemp.fieldbyname('Defect_Result').AsString+' = '+QTemp.fieldbyname('Defect_Qty').AsString+' where MJBH = '''+QTemp.fieldbyname('MJBH').AsString+''' and SIZE = '''+QTemp.fieldbyname('SIZE').AsString+'''')
    else
      QTemp1.SQL.Add('Insert into #QCR1 (MJBH,SIZE,Defect_Qty,'+QTemp.fieldbyname('Defect_Result').AsString+') Values('''+QTemp.fieldbyname('MJBH').AsString+''','''+QTemp.fieldbyname('SIZE').AsString+''','+QTemp.fieldbyname('Defect_Qty').AsString+','+QTemp.fieldbyname('Defect_Qty').AsString+')');
    QTemp1.ExecSQL;
    MJBH := QTemp.fieldbyname('MJBH').AsString;
   SIZE := QTemp.fieldbyname('SIZE').AsString;
    QTemp.Next;
  end;

  with QCR3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select * from #QCR1 order by MJBH,SIZE');
    Active := true;
  end;
end;

end.
