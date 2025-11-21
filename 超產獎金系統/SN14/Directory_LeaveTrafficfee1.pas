unit Directory_LeaveTrafficfee1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, MyADOQuery, Dateutils, ComObj;

type
  TDirectory_LeaveTrafficfee = class(TForm)
    Panel1: TPanel;
    DBGridEh2: TDBGridEh;
    Button2: TButton;
    Label4: TLabel;
    CBX1: TComboBox;
    Label6: TLabel;
    CBX2: TComboBox;
    Label12: TLabel;
    Label11: TLabel;
    CBX4: TComboBox;
    Label13: TLabel;
    CBX5: TComboBox;
    Label2: TLabel;
    ED_ID: TEdit;
    GroupBox2: TGroupBox;
    RB12: TRadioButton;
    RB13: TRadioButton;
    Query1: TMyADOQuery;
    DS1: TDataSource;
    Query1Factory: TStringField;
    Query1ID: TStringField;
    Query1Name: TWideStringField;
    Query1TrafficfeeDate: TDateTimeField;
    Query1Trafficfee: TFloatField;
    Query1NO: TSmallintField;
    Button4: TButton;
    ED_Name: TEdit;
    Label3: TLabel;
    Query1Position: TWideStringField;
    Query1Plan_EDate: TDateTimeField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Directory_LeaveTrafficfee: TDirectory_LeaveTrafficfee;

implementation
  uses DM1, FunUnit, Directory_LeaveRuler1;
{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
procedure TDirectory_LeaveTrafficfee.Button2Click(Sender: TObject);
var sDate,eDate:Tdate;
    i,iYear,iMonth:integer;
begin
  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  iYear:=strtoint(CBX1.Text);
  iMonth:=strtoint(CBX2.Text);
  if (iYear>2999) or (iYear<1900) then
  begin
    Showmessage('Pls key in right year');
    abort;
  end;
  if (iMonth=0) or (iMonth>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));
  //
  with Query1 do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select Directory_Factory.Name+''/''+Directory_Department.Name as Factory,Certificate.ID,Certificate.Name,Directory_Position.Name as Position');
     SQL.Add('       ,Directory_LeaveRuler.TrafficfeeDate,Directory.Trafficfee,Directory_LeaveRuler.NO,Directory_LeaveRuler.Plan_EDate ');
     SQL.Add('from Certificate ');
     SQL.Add(' left join Directory on Directory.ID=Certificate.ID ');
     SQL.Add(' Left join Directory_Factory on Directory_Factory.FID=Directory.FID');
     SQL.Add(' Left join Directory_Department on Directory_Department.DID=Directory.DID');
     SQL.Add(' left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID');
     SQL.Add(' left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
     SQL.Add(' left join Directory_LeaveRuler on Directory_LeaveRuler.FYear='''+Directory_LeaveRuler.FYearCombo.Text+''' and Directory_LeaveRuler.ID=Certificate.ID');
     SQL.Add('where 1=1 ');
     if ED_ID.Text <> '' then
        SQL.Add(' and Directory.ID = ''' + ED_ID.Text + ''' ');
     if ED_Name.Text<>'' then
        SQL.Add(' and Certificate.Name like '''+ED_Name.Text+'%'' ');
     //瓣膟
     if RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
     if RB13.Checked=true then  SQL.Add(' and Certificate.NID in (''CN'',''PH'',''NIN'') ');
     SQL.Add(' and  Case when Certificate.NID in (''CN'',''PH'',''NIN'') and  Directory_Position.HolidayTimes<=4 then ');
     SQL.Add('        Convert(smalldatetime,convert(varchar,Directory_LeaveRuler.Plan_SDate,111)) ');
     SQL.Add('      else ');
     SQL.Add('	    Convert(smalldatetime,convert(varchar,Directory_LeaveRuler.TrafficfeeDate,111)) ');
     SQL.Add('      end between');
     SQL.Add('     '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
     //
     SQL.Add('order by Directory.Sequence ');
     //FuncObj.WriteErrorLog(sql.Text);
     showmessage(SQL.Text);
     Active:=true;
  end;
  //
end;

procedure TDirectory_LeaveTrafficfee.Button4Click(Sender: TObject);
var
  ExcelApp, WorkBook, WorkSheet: OleVariant;
  offset,i, j: integer;
begin
  //
  if Query1.Active=false then Exit;
  try
    ExcelApp := CreateOleObject('Excel.Application');
    //WorkBook := ExcelApp.Workbooks.Add;
  except
    Application.MessageBox('Please install Microsoft Excel in your computer first.', 'Microsoft Excel', MB_OK + MB_ICONWARNING);
    Exit;
  end;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN14_Traffice.xlsx'),Pchar(AppDir+'Additional\ProductionBonus_SN14_Traffice.xlsx'),false);
  if FileExists(AppDir+'Additional\ProductionBonus_SN14_Traffice.xlsx') then
  begin
   try
      ExcelApp.DisplayAlerts := False;
      ExcelApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN14_Traffice.xlsx');
      ExcelApp.WorkSheets[1].Activate;
      //狡籹
      for i:=0 to Query1.RecordCount-2  do
      begin
        ExcelApp.ActiveSheet.Rows[5].Copy;
        ExcelApp.ActiveSheet.Rows[6].Insert;
      end;
      //
      ExcelApp.workbooks[1].sheets[1].name:=CBX1.Text+'.'+CBX2.Text+'る安干禟虫';
      ExcelApp.Cells(1, 1) := CBX1.Text+'/'+CBX2.Text+'る货琄ユ硄干禟虫';
      //Ю
      ExcelApp.Cells(6+Query1.RecordCount-1, 7):='=SUM(G5:G'+inttostr(5+Query1.RecordCount-1)+')';
      ExcelApp.Cells(7+Query1.RecordCount-1, 8) := FormatDatetime('YYYY/MM/DD',Date());
      //
      Query1.First;
      offset := 5;
      for i:=0 to Query1.RecordCount-1 do
      begin
        ExcelApp.Cells(offset, 1) := inttostr(i+1);
        ExcelApp.Cells(offset, 2) := Query1.FieldByName('Factory').AsString;
        ExcelApp.Cells(offset, 3) := Query1.FieldByName('ID').AsString;
        ExcelApp.Cells(offset, 4) := Query1.FieldByName('Name').AsString;
        ExcelApp.Cells(offset, 5) := Query1.FieldByName('Position').AsString;
        ExcelApp.Cells(offset, 6) := Query1.FieldByName('TrafficfeeDate').AsString;
        ExcelApp.Cells(offset, 7) := Query1.FieldByName('Trafficfee').AsString;
        ExcelApp.Cells(offset, 8) := Directory_LeaveRuler.FYearCombo.Text+'材'+Query1.FieldByName('NO').AsString+'Ω安';
        Query1.Next;
        Inc(offset);
      end;
      //
      ExcelApp.Cutcopymode:=0;
      Showmessage('Succeed.');
      ExcelApp.Visible:=True;
    except on ex: Exception do
      ShowMessage(ex.Message);
    end;
  end;
  //

end;

procedure TDirectory_LeaveTrafficfee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TDirectory_LeaveTrafficfee.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;

  for j:=0 to CBX4.Items.Count-1 do
  begin
    if strtoint(CBX4.Items[j])=myYear then
    begin
      CBX4.ItemIndex:=j;
      break;
    end;
  end;
  for j:=0 to CBX5.Items.Count-1 do
  begin
    if strtoint(CBX5.Items[j])=myMonth then
    begin
      CBX5.ItemIndex:=j;
      break;
    end;
  end;
end;

procedure TDirectory_LeaveTrafficfee.FormDestroy(Sender: TObject);
begin
  Directory_LeaveTrafficfee:=nil;
end;

end.
