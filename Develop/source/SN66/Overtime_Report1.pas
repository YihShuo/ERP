unit Overtime_Report1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,
  Buttons, ExtCtrls, GridsEh, DBGridEh, ShellAPI, DBGridEhImpExp, Menus, comobj,
  DateUtils,math, ADODB, iniFiles;

type
  TOvertime_Report = class(TForm)
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    Button1: TButton;
    dlgSave1: TSaveDialog;
    DBGridEh1: TDBGridEh;
    Label2: TLabel;
    CB1: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    Splitter1: TSplitter;
    ADOConnection1: TADOConnection;
    ADOQTemp: TADOQuery;
    Query1: TQuery;
    ADOQuery1: TADOQuery;
    Query1EmployeeID: TStringField;
    Query1Name: TStringField;
    Query1Department: TStringField;
    Query1EngName: TStringField;
    ADOQuery1NV_MA: TStringField;
    ADOQuery1QT_NGAY: TDateTimeField;
    ADOQuery1CC_GIOBINHTHUONG: TFloatField;
    ADOQuery1CC_GIOTANGCA: TFloatField;
    Label4: TLabel;
    Edit2: TEdit;
    QTemp: TQuery;
    Query1OverTime: TFloatField;
    Query1WorkingTime: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ADOQuery1BeforeOpen(DataSet: TDataSet);
    procedure ADOQuery1AfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ReadIni();
  public
      HrmsDBIP,HrmsDBUser,HrmsDBPass,HrmsDBName:String;
    { Public declarations }
  end;

var
  Overtime_Report: TOvertime_Report;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TOvertime_Report.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ADOConnection1.Connected:=false;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      HrmsDBIP:=MyIni.ReadString('HRMS','IP','192.168.23.12');
      HrmsDBName:=MyIni.ReadString('HRMS','Database','P0104-TYXUAN');
      HrmsDBUser:=MyIni.ReadString('HRMS','User','hrms');
      HrmsDBPass:=MyIni.ReadString('HRMS','Pass','123456');
      ADOConnection1.ConnectionString:='Provider=SQLOLEDB.1;Password='+HrmsDBPass+';Persist Security Info=True;User ID='+HrmsDBUser+';Initial Catalog='+HrmsDBName+';Data Source='+HrmsDBIP;
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TOvertime_Report.FormCreate(Sender: TObject);
var KHU : string;
begin
  KHU:='';
  ReadIni();
  if (main.Edit2.Text = 'CDC') then
  begin
    KHU:='A';
  end else
  if (main.Edit2.Text = 'SKX') then
    KHU:='C';
  with ADOQTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DV_MA FROM ST_DONVI');
    if KHU='A' then
      SQL.Add('WHERE ((N_MA = ''KHTH'') or (X_MA_ = ''A1A2'')) AND KHU = '''+KHU+'''  AND DV_LocBB = 0 AND DV_TV <> 1');
    if KHU='C' then
      SQL.Add('WHERE KHU = '''+KHU+'''  AND DV_LocBB = 0 AND DV_TV <> 1 ');
    SQL.Add('ORDER BY DV_MA');
    //memo1.Lines:=sql;
    Active := true;

    while not Eof do
    begin
      CB1.Items.Add(FieldByName('DV_MA').AsString);
      Next;
    end;
  end;

  DTP2.Date := now;
  DTP1.Date := DTP2.Date - 7;
end;

procedure TOvertime_Report.FormShow(Sender: TObject);
begin
  Panel1.SetFocus;
end;

procedure TOvertime_Report.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOvertime_Report.FormDestroy(Sender: TObject);
begin
  Overtime_Report := nil;
end;

procedure TOvertime_Report.Button1Click(Sender: TObject);
var
  IDList,KHU: string;
begin

  if (main.Edit2.Text = 'CDC') then
  begin
    KHU:='A';
  end else
  if (main.Edit2.Text = 'SKX') then
    KHU:='C';
  SetCursor(Screen.Cursors[crSQLWait]);
  IDList := '';
  if (Edit2.Text <> '') then
  begin
    with QTemp do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT UserID FROM BUsers WHERE EngName LIKE ''' + Edit2.Text + '%''');
      Active := true;

      while not Eof do
      begin
        IDList := IDList + '''' + FieldByName('UserID').AsString + ''',';
        Next;
      end; 
      IDList := Copy(IDList, 1, Length(IDList)-1);
    end;
  end;

  with ADOQTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT ST_NHANVIEN.NV_Ma, ST_NHANVIEN.NV_Ten, ST_DONVI.DV_MA, SUM(ST_GIOQUETTHE.CC_GIOBINHTHUONG) AS CC_GIOBINHTHUONG, SUM(ST_GIOQUETTHE.CC_GIOTANGCA) AS CC_GIOTANGCA FROM ST_NHANVIEN');
    SQL.Add('LEFT JOIN ST_DONVI ON ST_NHANVIEN.DV_MA = ST_DONVI.DV_MA');
    SQL.Add('LEFT JOIN ST_GIOQUETTHE ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE.NV_MA');
    if KHU='A' then
      SQL.Add('WHERE ((ST_DONVI.N_MA = ''KHTH'') or (ST_DONVI.X_MA_ = ''A1A2'')) AND ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');
    if KHU='C' then
      SQL.Add('WHERE ST_DONVI.KHU = '''+KHU+''' AND ST_DONVI.DV_LocBB = 0 AND ST_DONVI.DV_TV <> 1');
    SQL.Add('AND ST_GIOQUETTHE.QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    if (CB1.ItemIndex > 0) then
      SQL.Add('AND ST_DONVI.DV_MA = ''' + CB1.Text + '''');
    if (Edit1.Text <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma LIKE ''' + Edit1.Text + '%''');
    if (IDList <> '') then
      SQL.Add('AND ST_NHANVIEN.NV_Ma IN (' + IDList + ')');
    SQL.Add('GROUP BY ST_NHANVIEN.NV_Ma, ST_NHANVIEN.NV_Ten, ST_DONVI.DV_MA');
    SQL.Add('ORDER BY ST_NHANVIEN.NV_Ma');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;

  with Query1 do
  begin
    Active := false;
    if ADOQTemp.RecordCount > 0 then begin
      SQL.Clear;
      SQL.Add('SELECT WorkingData.EmployeeID, BUsers.EngName, WorkingData.Name, WorkingData.Department, CONVERT(Float, WorkingData.WorkingTime) AS WorkingTime, CONVERT(Float, WorkingData.OverTime) AS OverTime FROM (');
      ADOQTemp.First;
      while not ADOQTemp.Eof do
      begin
        SQL.Add('  SELECT ''' + ADOQTemp.FieldByName('NV_Ma').AsString + ''' AS EmployeeID, ''' + ADOQTemp.FieldByName('NV_Ten').AsString + ''' AS Name, ''' + ADOQTemp.FieldByName('DV_MA').AsString + ''' AS Department, ' + ADOQTemp.FieldByName('CC_GIOBINHTHUONG').AsString + ' AS WorkingTime, ' + ADOQTemp.FieldByName('CC_GIOTANGCA').AsString + ' AS OverTime');
        ADOQTemp.Next;
        if (ADOQTemp.Eof = false) then SQL.Add('  UNION ALL');
      end;
      SQL.Add(') AS WorkingData');
      SQL.Add('LEFT JOIN BUsers ON BUsers.UserID = WorkingData.EmployeeID');
      if (Edit2.Text <> '') then
        SQL.Add('WHERE BUsers.EngName LIKE ''' + Edit2.Text + '%''');
      SQL.Add('ORDER BY WorkingData.EmployeeID');
      Active := true;
    end
    else
      ADOQuery1.Active := false;
  end;
end;
        
procedure TOvertime_Report.Query1AfterOpen(DataSet: TDataSet);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT NV_MA, QT_NGAY, CC_GIOBINHTHUONG, CC_GIOTANGCA FROM ST_GIOQUETTHE');
    SQL.Add('WHERE NV_MA = ''' + Query1.FieldByName('EmployeeID').AsString + ''' AND QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('ORDER BY QT_NGAY');
    Active := true;
  end;
end;

procedure TOvertime_Report.Query1AfterScroll(DataSet: TDataSet);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT NV_MA, QT_NGAY, CC_GIOBINHTHUONG, CC_GIOTANGCA FROM ST_GIOQUETTHE');
    SQL.Add('WHERE NV_MA = ''' + Query1.FieldByName('EmployeeID').AsString + ''' AND QT_NGAY BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('ORDER BY QT_NGAY');
    Active := true;
  end;
end;

procedure TOvertime_Report.ADOQuery1BeforeOpen(DataSet: TDataSet);
begin
  SetCursor(Screen.Cursors[crSQLWait]);
end;
         
procedure TOvertime_Report.ADOQuery1AfterOpen(DataSet: TDataSet);
begin
  SetCursor(Screen.Cursors[crDefault]);
end;
      
procedure TOvertime_Report.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext:String;
begin
  dlgSave1.FileName := 'ex';

  if (dlgSave1.Execute) then
  begin
    case dlgSave1.FilterIndex of
      1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
      2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
      3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
      4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
      5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
    end;
  end
  else begin
    ExpClass := nil;
    Ext := '';
  end;

  if (ExpClass <> nil) then
  begin
    if UpperCase(Copy(dlgSave1.FileName,Length(dlgSave1.FileName)-2,3)) <> UpperCase(Ext) then
      dlgSave1.FileName := dlgSave1.FileName + '.' + Ext;
    SaveDBGridEhToExportFile(ExpClass, DBGridEh1, dlgSave1.FileName, true);
    if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
      ShellExecute(handle, 'open', PChar(dlgSave1.FileName), nil, nil, SW_SHOWNORMAL);
  end;
end;

end.
