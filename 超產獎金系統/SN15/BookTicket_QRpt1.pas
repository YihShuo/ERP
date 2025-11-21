unit BookTicket_QRpt1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB, MyADOQuery, ComObj;

type
  TBookTicket_QRpt = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX4: TComboBox;
    CBX5: TComboBox;
    ED_ID: TEdit;
    GroupBox2: TGroupBox;
    RB12: TRadioButton;
    RB13: TRadioButton;
    Button4: TButton;
    ED_Name: TEdit;
    RB11: TRadioButton;
    DS1: TDataSource;
    Query1: TMyADOQuery;
    Query1No: TLargeintField;
    Query1BookDate: TDateTimeField;
    Query1Factory: TStringField;
    Query1Department: TStringField;
    Query1Name: TWideStringField;
    Query1EngName: TWideStringField;
    Query1GoDate: TDateTimeField;
    Query1Route: TWideStringField;
    Query1GoPlaneNumber: TStringField;
    Query1GoDate_Sub: TDateTimeField;
    Query1Route_Sub: TWideStringField;
    Query1GoPlaneNumber_Sub: TStringField;
    Query1BackDate_Sub: TDateTimeField;
    Query1Route1_Sub: TWideStringField;
    Query1BackPlaneNumber_Sub: TStringField;
    Query1BackDate: TDateTimeField;
    Query1Route1: TWideStringField;
    Query1BackPlaneNumber: TStringField;
    Query1Tickets: TSmallintField;
    Query1USD_Fee: TFloatField;
    Query1Exchange: TFloatField;
    Query1VND_Fee: TIntegerField;
    Query1Tickets_Credit: TSmallintField;
    Query1USD_Credit: TFloatField;
    Query1VND_Credit: TIntegerField;
    Query1Reason: TWideStringField;
    Query1Payment: TWideStringField;
    Query1Remark: TWideStringField;
    Query1PayMonth: TStringField;
    DBGridEh1: TDBGridEh;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    AppDir:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BookTicket_QRpt: TBookTicket_QRpt;

implementation
  uses DM1, FunUnit;
{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
procedure TBookTicket_QRpt.Button2Click(Sender: TObject);
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
      SQL.Add('Select  ROW_NUMBER() over (ORDER BY BookDate asc) as No, WF_BookTicket.BookDate,Directory_Factory.Name as Factory,Directory_Department.Name as Department,Certificate.Name, Certificate.EngName');
      SQL.Add('       ,WF_BookTicket.GoDate,WF_BookTicket.Route,WF_BookTicket.GoPlaneNumber,WF_BookTicket.GoDate_Sub,WF_BookTicket.Route_Sub,WF_BookTicket.GoPlaneNumber_Sub');
      SQL.Add('	      ,WF_BookTicket.BackDate_Sub,WF_BookTicket.Route1_Sub,WF_BookTicket.BackPlaneNumber_Sub,WF_BookTicket.BackDate,WF_BookTicket.Route1,WF_BookTicket.BackPlaneNumber');
      SQL.Add('	      ,WF_BookTicket.Tickets,WF_BookTicket.USD_Fee,WF_BookTicket.Exchange,WF_BookTicket.VND_Fee,WF_BookTicket.Tickets_Credit,WF_BookTicket.USD_Credit,WF_BookTicket.VND_Credit');
      SQL.Add('	      ,WF_BookTicket.Reason,WF_BookTicket.Payment,WF_BookTicket.Remark,'''' as PayMonth');
      SQL.Add('from [EEP].[LingYi].[dbo].[WF_BookTicket] WF_BookTicket ');
      SQL.Add('Left join Certificate on Certificate.ID=WF_BookTicket.ID');
      SQL.Add('left join Directory on Directory.ID=Certificate.ID ');
      SQL.Add('Left join Directory_Factory on Directory_Factory.FID=Directory.FID');
      SQL.Add('Left join Directory_Department on Directory_Department.DID=Directory.DID');
      SQL.Add('Left join Directory_Position on Certificate.NID = Directory_Position.NID and Directory.PID = Directory_Position.PID');
      SQL.Add('Left join Directory_Nationality on Directory_Nationality.NID=Certificate.NID');
      SQL.Add('where 1=1 ');
      if ED_ID.Text <> '' then
        SQL.Add(' and Directory.ID = ''' + ED_ID.Text + ''' ');
      if ED_Name.Text<>'' then
        SQL.Add(' and Certificate.Name like '''+ED_Name.Text+'%'' ');
      //國籍
      if RB12.Checked=true then  SQL.Add(' and Certificate.NID=''TW'' ');
      if RB13.Checked=true then  SQL.Add(' and Certificate.NID in (''CN'',''PH'',''NIN'') ');
      SQL.Add(' and Convert(smalldatetime,convert(varchar,WF_BookTicket.BookDate,111))  between');
      SQL.Add('     '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      //FuncObj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
   //
end;

procedure TBookTicket_QRpt.Button4Click(Sender: TObject);
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
     CopyFile(Pchar('\\'+DM2.ERPDBIP+'\liy_erp\Additional\ProductionBonus_SN15.xls'),Pchar(AppDir+'Additional\ProductionBonus_SN15.xls'),false);
  if FileExists(AppDir+'Additional\ProductionBonus_SN15.xls') then
  begin
   try
      ExcelApp.DisplayAlerts := False;
      ExcelApp.WorkBooks.Open(AppDir+'Additional\ProductionBonus_SN15.xls');
      ExcelApp.WorkSheets[1].Activate;
      //複製
      for i:=0 to Query1.RecordCount-2  do
      begin
        ExcelApp.ActiveSheet.Rows[5].Copy;
        ExcelApp.ActiveSheet.Rows[6].Insert;
      end;
      //
      ExcelApp.Cells(1, 3) := CBX1.Text+'/'+CBX2.Text+'月份購買機票明細表';
      //
      Query1.First;
      offset := 5;
      for i:=0 to Query1.RecordCount-1 do
      begin
        for j:=0 to Query1.FieldCount-1  do
        begin
           ExcelApp.Cells(offset, j+1) := Query1.Fields[j].AsString;
        end;
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
end;

procedure TBookTicket_QRpt.FormCreate(Sender: TObject);
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

end.
