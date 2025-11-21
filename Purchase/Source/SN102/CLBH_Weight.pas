unit CLBH_Weight1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, ComObj, DateUtils, ComCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    Button1: TButton;
    edCLBH: TEdit;
    bbt6: TBitBtn;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Qtemp: TQuery;
    QtempCGNO: TStringField;
    QtempAddress: TStringField;
    QtempLocation: TIntegerField;
    QtempLocation_station: TIntegerField;
    QtempLength_KM: TFloatField;
    QtempType: TIntegerField;
    QtempUSERID: TStringField;
    QtempUSERDATE: TDateTimeField;
    ImportExcel: TBitBtn;
    Query1CLBH: TStringField;
    Query1Weight: TIntegerField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    OpenDialog1: TOpenDialog;
    QCheckCLBH: TQuery;
    Query1YN: TIntegerField;
    dtpFrom: TDateTimePicker;
    dtpTo: TDateTimePicker;
    Label2: TLabel;
    Label3: TLabel;
    ckbMine: TCheckBox;
    procedure BB1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure ImportExcelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses main1, DM3;

{$R *.dfm}

procedure TForm2.BB1Click(Sender: TObject);
begin
with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.Columns[0].ReadOnly := False;
end;

procedure TForm2.BB3Click(Sender: TObject);
begin
with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TForm2.ImportExcelClick(Sender: TObject);
var
  ExcelApp, Workbook, Worksheet: OleVariant;
  FileName, CLBHValue, WeightValue: string;
  Row, LastRow, CountExist: Integer;
  InsertedCount, UpdatedCount, TotalCount: Integer;
  InsertedList, UpdatedList, ErrorList: string;
  HasError: Boolean;
begin
  InsertedCount := 0;
  UpdatedCount := 0;
  TotalCount := 0;
  InsertedList := '';
  UpdatedList := '';
  ErrorList := '';
  HasError := False;

  try
    // Cho nguoi dung chon file Excel
    OpenDialog1.Filter := 'Excel Files|*.xls;*.xlsx';
    if not OpenDialog1.Execute then Exit;

    FileName := OpenDialog1.FileName;

    // Mo Excel
    ExcelApp := CreateOleObject('Excel.Application');
    Workbook := ExcelApp.Workbooks.Open(FileName);
    Worksheet := Workbook.Worksheets[1]; // Lay sheet dau tien
    LastRow := Worksheet.UsedRange.Rows.Count; // tim dong cuoi cung

    // Bat dau transaction
    if not DM2.DBshipping.InTransaction then
      DM2.DBshipping.StartTransaction;

    for Row := 2 to LastRow do
    begin
      CLBHValue := Trim(VarToStr(Worksheet.Cells[Row, 1].Value)); // Cot 1
      WeightValue := Trim(VarToStr(Worksheet.Cells[Row, 2].Value)); // Cot 2

      if (CLBHValue <> '') and (WeightValue <> '') then
      begin
        try
          // Kiem tra CLBH da ton tai chua
          With QcheckCLBH do
          begin
            Close;
            SQL.Clear;
            SQL.Add('SELECT COUNT(*) AS CNT FROM CLBH_Weight WHERE CLBH = ''' + CLBHValue + '''');
            Open;
            CountExist := FieldByName('CNT').AsInteger;
            Close;
          end;

          if CountExist = 0 then
          begin
            With Query1 do
            begin
            //Chua ton tai thi Insert moi
              Close;
              SQL.Clear;
              SQL.Add('INSERT INTO CLBH_Weight (CLBH, Weight, USERID, USERDATE, YN)');
              SQL.Add('VALUES (''' + CLBHValue + ''', ' + WeightValue + ', ''' + main.Edit2.Text + ''', GETDATE(), 1)');
              ExecSQL;
            end;

            //Ghi lai cac dong da insert
            Inc(InsertedCount);
            if InsertedList = '' then
              InsertedList := '(CLBH: ' + CLBHValue + ', Weight: ' + WeightValue + ')'
            else
              InsertedList := InsertedList + #13#10 + '(CLBH: ' + CLBHValue + ', Weight: ' + WeightValue + ')';
          end
          else
          begin
            // Update neu da ton tai
            With Query1 do
            begin
              Close;
              SQL.Clear;
              SQL.Add('UPDATE CLBH_Weight SET Weight = ' + WeightValue + ', USERID = ''' + main.Edit2.Text + ''', USERDATE = GETDATE()');
              SQL.Add('WHERE CLBH = ''' + CLBHValue + ''' AND YN <> 0 ');
              ExecSQL;
            end;

            //Ghi lai cac dong da update
            Inc(UpdatedCount);
            if UpdatedList = '' then
              UpdatedList := '(CLBH: ' + CLBHValue + ', Weight: ' + WeightValue + ')'
            else
              UpdatedList := UpdatedList + #13#10 + '(CLBH: ' + CLBHValue + ', Weight: ' + WeightValue + ')';
          end;

          Inc(TotalCount);
        //bat loi
        except
          on E: Exception do
          begin
            // Ghi lai cac dong bi loi
            HasError := True;
            if ErrorList = '' then
              ErrorList := 'Dong ' + IntToStr(Row) + ' (CLBH: ' + CLBHValue + ', Weight: ' + WeightValue + ')'
            else
              ErrorList := ErrorList + #13#10 + 'Dong ' + IntToStr(Row) + ' (CLBH: ' + CLBHValue + ', Weight: ' + WeightValue + ')';
            Continue; // Tiep tuc import
          end;
        end;
      end;
    end;

    // Hien thong bao ket qua
    if HasError then
      begin
      //Co loi thi Rollback
      DM2.DBshipping.Rollback;
      MessageDlg(
        'Import that bai!' + #13#10#13#10 +
        'Cac dong loi trong file Excel:' + #13#10 +
        ErrorList + #13#10,
        mtError, [mbOK], 0
      );
      end else
      begin
      // Dung het thi Commit
      DM2.DBshipping.Commit;
      MessageDlg(
        'Import hoan tat!' + #13#10#13#10 +
        'So dong da insert: ' + IntToStr(InsertedCount) + #13#10 +
        'CLBH insert: ' + #13#10 + InsertedList + #13#10#13#10 +
        'So dong da update: ' + IntToStr(UpdatedCount) + #13#10 +
        'CLBH update: '  + #13#10 + UpdatedList + #13#10#13#10 +
        'Tong so dong da xu ly: ' + IntToStr(TotalCount),
        mtInformation, [mbOK], 0
      );
      end

  except
    on E: Exception do
    begin
        if DM2.DBshipping.InTransaction then
          DM2.DBshipping.Rollback;
      ShowMessage('Da xay ra loi khi doc file Excel: ' + E.Message);
    end;
  end;

  // Dong Excel
  try
    if not VarIsEmpty(Workbook) then Workbook.Close(False);
  except end;
  try
    if not VarIsEmpty(ExcelApp) then ExcelApp.Quit;
  except end;

  Workbook := Unassigned;
  ExcelApp := Unassigned;

  // Refresh du lieu
  with Query1 do
  begin
    Active := False;
    SQL.Clear;
    SQL.Add('SELECT * FROM CLBH_Weight where YN <> 0 ');
    SQL.Add('AND USERDATE BETWEEN ''' + FormatDateTime('yyyy-mm-dd', dtpFrom.Date) + ''' ');
    SQL.Add('AND ''' + FormatDateTime('yyyy-mm-dd', dtpTo.Date) + ''' ');
    if ckbMine.Checked = true then
    begin
      SQL.Add('AND USERID = ''' +main.Edit2.Text+ ''' ');
    end;
    Active := True;
  end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if not Query1.RequestLive then
  begin
  with Query1 do
    begin
      active:=false;
      sql.Clear;
      SQL.Add('select * from CLBH_Weight where CLBH like ''%'+edCLBH.Text+''' and YN <> 0 ');
      SQL.Add('AND USERDATE BETWEEN ''' + FormatDateTime('yyyy-mm-dd', dtpFrom.Date) + ''' ');
      SQL.Add('AND ''' + FormatDateTime('yyyy-mm-dd', dtpTo.Date) + ''' ');
      if ckbMine.Checked = true then
      begin
        SQL.Add('AND USERID = ''' + main.Edit2.Text + ''' ');
      end;
      active:=true;
    end;
  end
  else
    begin
      showmessage('Pls save data first.');
    end;
end;

procedure TForm2.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt6.Enabled:=true;
  ImportExcel.Enabled:=true;
end;

procedure TForm2.BB5Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb4.enabled:=false;
bb5.enabled:=false;
end;

procedure TForm2.BB4Click(Sender: TObject);
var i:integer;
begin
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
      begin
        case Query1.UpdateStatus of
          usInserted:
            begin
              if Query1.fieldbyname('CLBH').isnull then
              begin
                Query1.delete;
              end else
              begin
                 Query1.Edit;
                 Query1.FieldByName('USERID').Value:=main.Edit2.Text;
                 UpSQL1.Apply(ukInsert);
              end;
            end;
         usModified:
            begin
               if Query1.FieldByName('YN').value='0' then
                 begin
                   if messagedlg('Are you sure to delete?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                   begin
                     upsql1.Apply(ukdelete);
                   end else
                   begin
                     Showmessage('Error!');
                   end;
                 end else
                 begin
                    with Qtemp do
                    begin
                       active:=false;
                       sql.Clear;
                       SQL.Add('insert into bdelrec ') ;
                       SQL.Add('VALUES ('+''''+'busers'+''''+',null,null,null');
                       SQL.Add(','+''''+main.edit2.Text+''''+', GETDATE())');
                       execsql;
                       active:=false;
                    end;
                    Query1.Edit;
                    Query1.FieldByName('USERID').Value:=main.Edit2.Text;
                    upsql1.apply(ukmodify);
                 end;
              end;
        end;
        Query1.next;
      end;
    Query1.active:=false;
    Query1.cachedupdates:=false;
    Query1.requestlive:=false;
    Query1.active:=true;
    bb4.enabled:=false;
    bb5.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TForm2.BB2Click(Sender: TObject);
begin
if messagedlg('Are you sure to delete?',mtconfirmation,[mbYes,mbNo],0)<>mrYes then
  begin
    abort;
  end;
with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TForm2.bbt6Click(Sender: TObject);
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
      Application.MessageBox('No Microsoft Excel','Microsoft Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   4   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to   4   do
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

procedure TForm2.BB6Click(Sender: TObject);
begin
  Close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  Form2:=nil;
end;

procedure TForm2.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
if Query1.FieldByName('YN').value='0' then
  dbgrid1.canvas.font.color:=clred;
end;

end.
