unit Worker_Attendance1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DBTables, DB, Buttons, ExtCtrls,
  comobj,ehlibBDE, ComCtrls,dateutils, PrnDbgeh, Menus, IniFiles, PrViewEh, Printers;

type
  TWorker_Attendance = class(TForm)
    Panel5: TPanel;
    BS1: TBitBtn;
    BS2: TBitBtn;
    BS3: TBitBtn;
    BS4: TBitBtn;
    BS5: TBitBtn;
    BS6: TBitBtn;
    BS7: TBitBtn;
    BS9: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ED_Dep: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    ComboBox1: TComboBox;
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    OpenDialog1: TOpenDialog;
    Query2: TQuery;
    Query1ID: TStringField;
    Query1Date: TDateTimeField;
    Query1Department: TStringField;
    Query1LaborType: TStringField;
    Query1Attendance: TIntegerField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BS4Click(Sender: TObject);
    procedure BS5Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BS9Click(Sender: TObject);
    procedure BS6Click(Sender: TObject);
    procedure BS3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Worker_Attendance: TWorker_Attendance;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TWorker_Attendance.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select * from WorkerAttendance where 1=1');
    if ED_Dep.Text <> '' then
      SQL.Add('AND WorkerAttendance.Department LIKE '''+ED_Dep.Text+'%''');
    if Edit1.Text <> '' then
      SQL.Add('AND WorkerAttendance.ID LIKE '''+Edit1.Text+'%''');
    if ComboBox1.Text <> '' then
      SQL.Add('AND WorkerAttendance.LaborType LIKE '''+ComboBox1.Text+'%''');

    SQL.add('AND (convert(smalldatetime,convert(varchar,date,111)) between ');
    SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
    SQL.Add('ORDER BY ID,date');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
  BS3.Enabled := true;
  BitBtn2.Enabled := true;
  BS4.Enabled := true;
end;

procedure TWorker_Attendance.FormCreate(Sender: TObject);
begin
  with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    DTP1.Date:=NDate;
    DTP2.Date:=endoftheweek(incweek(NDate,1));
  end;
end;

procedure TWorker_Attendance.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TWorker_Attendance.FormDestroy(Sender: TObject);
begin
  Worker_Attendance := Nil;
end;

procedure TWorker_Attendance.BS4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  BS5.Enabled := true;
  BS6.Enabled := true;
end;

procedure TWorker_Attendance.BS5Click(Sender: TObject);
var
  i: integer;
begin
  try
    Query1.first;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.updatestatus of
        usinserted:
        begin
             Query1.edit;
             Query1.FieldByName('userID').Value:=main.edit1.text;
             Query1.FieldByName('userdate').Value:=FormatDateTime('YYYY/MM/DD',Ndate);
             Query1.FieldByName('YN').Value:='1';
             UpdateSQL1.apply(ukinsert);
        end;
        usmodified:
           begin
              if Query1.fieldbyname('YN').value='0' then
              begin
                 UpdateSQL1.apply(ukdelete);
              end else
              begin
                Query1.edit;
                UpdateSQL1.apply(ukmodify);
              end;
           end;
      end;
      Query1.next;
    end;
    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BS5.Enabled := false;
    BS6.Enabled := false;
    ShowMessage('Completed');
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TWorker_Attendance.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TWorker_Attendance.BitBtn2Click(Sender: TObject);
var i:integer;
begin
    if Query1.recordcount>0 then
    begin
      if Query1.fieldbyname('USERID').value=main.edit1.Text then
      begin
          with Query1 do
          begin
            requestlive:=true;
            cachedupdates:=true;
            Query1.First;
            for i:=1 to Query1.RecordCount do
            begin
              edit;
              fieldbyname('YN').Value:='0';
              Query1.next;
            end;
          end;
      end else
      begin
        showmessage('It is not yours,can not delete.');
      end;
    end;
    BS5.Enabled := true;
    BS6.Enabled := true;
end;

procedure TWorker_Attendance.BitBtn3Click(Sender: TObject);
var
  i,j,Sheet,DataNum:integer;
  flag:boolean;
  MsExcel:olevariant;

  MsExcelWorkbook: Variant;
  Production_Category1:TStringlist;
  ID,Date,Department,LaborType,Attendance,UserID,UserDate,YN :string;
begin
   with Query1 do
   begin
     RequestLive := true;
     CachedUpdates := true;
     Edit;
   end;
   if opendialog1.Execute then
   begin
     MsExcel:=CreateOleObject('Excel.Application');
     MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog1.FileName);
     j:=2;
     flag:=true;
     while(flag=true)  do
     begin
         ID:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
         Date:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2];
         Department:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3];
         LaborType:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4];
         Attendance:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5];
         if  ID <>'' then
         begin
           Query1.insert;
           Query1.FieldByName('ID').AsString:=ID;
           Query1.FieldByName('Date').Value:=Date;
           Query1.FieldByName('Department').AsString:=Department;
           Query1.FieldByName('LaborType').AsString:=LaborType;
           Query1.FieldByName('Attendance').AsString:=Attendance;
           Query1.Post;
         end;
         Query1.Next;
         j:=j+1;
         if ID='' then
         begin
           flag:=false;
         end;
     end;
     MsExcelWorkBook.Close;
     MsExcel.Quit;
   end;
   BS5.Enabled := true;
   BS6.Enabled := true;
end;

procedure TWorker_Attendance.BS9Click(Sender: TObject);
var
  eclApp, WorkBook: OleVariant;
  Col, Row: integer;
begin
  if (Query1.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('Failed to create excel file', 'Error', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.Workbooks.Add;
      for Col := 0 to DBGridEh1.Columns.Count - 1 do
      begin
        eclApp.Cells[1, Col+1] := DBGridEh1.Columns[Col].Title.Caption;
      end;

      Query1.First;
      Row := 2;
      while not Query1.Eof do
      begin
        for Col := 0 to DBGridEh1.Columns.Count - 1 do
        begin
          if (Col = 1) then
            eclApp.Cells[Row, 1].NumberFormatLocal := '@';
            eclApp.Cells[Row, Col+1] := Query1.FieldByName(DBGridEh1.Columns[Col].FieldName).Value;
        end;
        Query1.Next;
        Inc(Row);
      end;

      eclapp.Columns.Autofit;
      ShowMessage('Successful');
      eclApp.Visible := True;
    except on F:Exception do
      begin
        eclApp.DisplayAlerts := false;
        eclApp.WorkBooks.Close;
        eclApp.Quit;
        ShowMessage(F.Message);
      end;
    end;
  end;

end;

procedure TWorker_Attendance.BS6Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive := false;
    cachedupdates := false;
    active := false;
    active := true;
  end;
  BS5.Enabled := false;
  BS4.Enabled := false;
end;

procedure TWorker_Attendance.BS3Click(Sender: TObject);
begin
  with Query1 do
  begin
    if fieldbyname('USERID').value=main.edit1.Text then
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
      fieldbyname('YN').Value:='0';
    end else
    begin
      showmessage('It is not yours,can not delete.');
    end;
  end;
end;

end.
