unit Attendance1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DBTables, DB, Buttons, ExtCtrls,
  comobj,ehlibBDE, ComCtrls,dateutils, PrnDbgeh, Menus, IniFiles, PrViewEh, Printers;

type
  TAttendance = class(TForm)
    Panel5: TPanel;
    BS1: TBitBtn;
    BS2: TBitBtn;
    BS3: TBitBtn;
    BS4: TBitBtn;
    BS5: TBitBtn;
    BS6: TBitBtn;
    BS7: TBitBtn;
    BS8: TBitBtn;
    BS9: TBitBtn;
    Panel2: TPanel;
    Label3: TLabel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Label1: TLabel;
    ED_Dep: TEdit;
    UpdateSQL1: TUpdateSQL;
    Query1Department: TStringField;
    Query1ID: TStringField;
    Query1Name: TStringField;
    Query1Date: TDateTimeField;
    Query1WorkingHours: TFloatField;
    Query1Overtime: TFloatField;
    Query1Department2: TStringField;
    Query1LaborType: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    CB1: TCheckBox;
    OpenDialog1: TOpenDialog;
    Query1Attendance: TIntegerField;
    Query2: TQuery;
    DTP1: TDateTimePicker;
    Label8: TLabel;
    DTP2: TDateTimePicker;
    Query1LaborType_HR: TStringField;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BS4Click(Sender: TObject);
    procedure BS5Click(Sender: TObject);
    procedure BS6Click(Sender: TObject);
    procedure BS7Click(Sender: TObject);
    procedure DBGridEh1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure BS9Click(Sender: TObject);
    procedure BS8Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Attendance: TAttendance;
  NDate:TDate;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TAttendance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TAttendance.FormDestroy(Sender: TObject);
begin
  Attendance := Nil;
end;
      
procedure TAttendance.FormCreate(Sender: TObject);
begin
  with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    //DTP1.Date:=startoftheweek(incweek(NDate,1));
    DTP1.Date:=NDate;
    DTP2.Date:=endoftheweek(incweek(NDate,1));
  end;
end;

procedure TAttendance.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SET ANSI_NULLS ON');
    SQL.Add('SET ANSI_WARNINGS ON');
    ExecSQL;

    SQL.Clear;
    if (CB1.Checked) then
    begin
      SQL.Add('SELECT CASE WHEN ST_NHANVIEN.DV_MA = ST_NHANVIEN.DV_MA_ then ST_NHANVIEN.DV_MA else ST_NHANVIEN.DV_MA_ end AS HRDepartment,');
      SQL.Add('ST_NHANVIEN.NV_MA AS ID, CAST(dbo.fSignsToNoSigns(REPLACE(ST_NHANVIEN.NV_Ten, ''  '', '' '')) AS VARCHAR(50)) AS Name, ST_GIOQUETTHE.QT_NGAY AS Date,');
    end else
    begin
      SQL.Add('SELECT CASE WHEN ST_NHANVIEN.DV_MA = ST_NHANVIEN.DV_MA_ then ST_NHANVIEN.DV_MA else ST_NHANVIEN.DV_MA_ end AS HRDepartment, ST_NHANVIEN.NV_MA AS ID, '''' AS Name, ST_GIOQUETTHE.QT_NGAY AS Date,');
    end;
    SQL.Add('ST_GIOQUETTHE.CC_GIOBINHTHUONG AS WorkingHours, ST_GIOQUETTHE.CC_GIOTANGCA AS Overtime, WA.Department,');
    SQL.Add('CASE WHEN (ST_CONGVIEC.TTCV=''1'' and ST_CONGVIEC.GIANTIEP=''0'') or (ST_CONGVIEC.TTCV=''1'' and ST_CONGVIEC.GIANTIEP IS NULL) THEN ''Truc tiep'' ELSE ''Gian tiep'' END as LaborType_HR,');
    SQL.Add('WA.LaborType,WA.Attendance, WA.UserID, WA.UserDate, WA.YN FROM [HRS].[P0104-TYXUAN].[dbo].[ST_GIOQUETTHE] AS ST_GIOQUETTHE');
    SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].[ST_NHANVIEN] AS ST_NHANVIEN ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE.NV_MA');
    SQL.Add('LEFT JOIN [HRS].[P0104-TYXUAN].[dbo].[ST_CONGVIEC] AS ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA');
    SQL.Add('LEFT JOIN WorkerAttendance AS WA ON WA.ID = ST_GIOQUETTHE.NV_MA COLLATE Chinese_Taiwan_Stroke_CI_AS AND WA.Date = ST_GIOQUETTHE.QT_NGAY');
    SQL.Add('WHERE 1=1 AND ST_GIOQUETTHE.DV_MA LIKE ''' + ED_Dep.Text + '%''');
    if Edit1.Text <> '' then
      SQL.Add('AND ST_NHANVIEN.NV_MA LIKE ''' +Edit1.Text+ '%''');
    SQL.Add('AND ST_GIOQUETTHE.DV_MA NOT LIKE ''B%''');
    //SQL.Add('AND ST_NHANVIEN.DV_MA not in (''T03ST'',''T02ST'',''T01ST'',''T'',''T.CG'',''T.HC'',''TST'',''TST.HC'',''VPHC.BGD'')');
    SQL.add('AND (convert(smalldatetime,convert(varchar,ST_GIOQUETTHE.QT_NGAY,111)) between ');
    SQL.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and  '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''+')');
    SQL.Add('ORDER BY ST_GIOQUETTHE.DV_MA, ST_GIOQUETTHE.NV_MA');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TAttendance.Query1AfterOpen(DataSet: TDataSet);
begin
  BS4.Enabled := true;
  DBGridEh1.Columns[2].Visible := CB1.Checked;
end;

procedure TAttendance.BS4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh1.Columns[7].ButtonStyle := cbsAuto;
  BS5.Enabled := true;
  BS6.Enabled := true;
end;

procedure TAttendance.BS5Click(Sender: TObject);
var
  i: integer;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin
          if (Query1.FieldByName('YN').IsNull) then
          begin
            if (Query1.FieldByName('Department').AsString <> '') OR ((Query1.FieldByName('LaborType').AsString <> '') AND (Query1.FieldByName('LaborType').AsString <> 'NULL')) OR (Query1.FieldByName('Attendance').AsBoolean) then
            begin
              Query1.Edit;
              Query1.FieldByName('UserID').Value := main.Edit1.Text;
              UpdateSQL1.Apply(ukInsert);
            end
            else begin
              Query1.Delete;
            end;
          end
          else begin
            if (Query1.FieldByName('Department').AsString <> '') OR ((Query1.FieldByName('LaborType').AsString <> '') AND (Query1.FieldByName('LaborType').AsString <> 'NULL')) OR (Query1.FieldByName('Attendance').AsBoolean) then
            begin
              Query1.Edit;
              Query1.FieldByName('UserID').Value := main.Edit1.Text;
              UpdateSQL1.Apply(ukModify);
            end
            else begin
              UpdateSQL1.Apply(ukDelete);
            end;
          end;
        end;
      end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BS5.Enabled := false;
    BS6.Enabled := false;
    DBGridEh1.Columns[7].ButtonStyle := cbsNone;
    ShowMessage('Completed');
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TAttendance.BS6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  DBGridEh1.Columns[7].ButtonStyle := cbsNone;
  BS5.Enabled := false;
  BS6.Enabled := false;
end;

procedure TAttendance.BS7Click(Sender: TObject);
begin
  Close;
end;

procedure TAttendance.DBGridEh1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
  DBGridEh1.Columns[ToIndex].Index := FromIndex;
end;

procedure TAttendance.BS9Click(Sender: TObject);
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
            eclApp.Cells[Row, Col+1].NumberFormatLocal := '@';
          //if (Col < DBGridEh1.Columns.Count - 1) then
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

procedure TAttendance.BS8Click(Sender: TObject);
var
  eclApp, Sheet: OleVariant;
  SelectedFileName, ID, SDate: string;
  ColumnIndex: array[0..4] of integer;
  Row, Col: integer;
begin
  try
    if OpenDialog1.Execute then
    begin
      SelectedFileName := ExtractFileName(OpenDialog1.FileName);

      try
        eclApp := CreateOleObject('Excel.Application');
        eclApp.workbooks.Open(OpenDialog1.FileName);
        Sheet := eclApp.WorkSheets[1];

        Row := 1;
        Col := 1;
        while (Sheet.Cells[Row, Col].Text <> '') do
        begin
          if (Sheet.Cells[Row, Col].Text = 'HR|ID') then
            ColumnIndex[0] := Col
          else if (Sheet.Cells[Row, Col].Text = 'HR|Date') then
            ColumnIndex[1] := Col
          else if (Sheet.Cells[Row, Col].Text = 'IE|Department') then
            ColumnIndex[2] := Col
          else if (Sheet.Cells[Row, Col].Text = 'IE|Labor Type') then
            ColumnIndex[3] := Col
          else if (Sheet.Cells[Row, Col].Text = 'IE|Attendance') then
            ColumnIndex[4] := Col;

          Inc(Col);
        end;

        if (ColumnIndex[0] > 0) AND (ColumnIndex[1] > 0) AND (ColumnIndex[2] > 0) AND (ColumnIndex[3] > 0) AND (ColumnIndex[4] > 0) then
        begin
          Query1.RequestLive := true;
          Query1.CachedUpdates := true;

          Row := 2;
          while (Sheet.Cells[Row, ColumnIndex[0]].Text <> '') do
          begin
            ID := Sheet.Cells[Row, ColumnIndex[0]];
            SDate := FormatDateTime('yyyy/MM/dd', Sheet.Cells[Row, ColumnIndex[1]]);

            if (Query1.Locate('ID;Date', VarArrayOf([ID, SDate]), [])) then
            begin
              Query1.Edit;
              if (Sheet.Cells[Row, ColumnIndex[2]].Text <> '#N/A') then
                Query1.FieldByName('Department').Value := Sheet.Cells[Row, ColumnIndex[2]];
              if (Sheet.Cells[Row, ColumnIndex[3]].Text <> '#N/A') then
                Query1.FieldByName('LaborType').Value := Sheet.Cells[Row, ColumnIndex[3]];
              if (Sheet.Cells[Row, ColumnIndex[4]].Text <> '#N/A') AND (Sheet.Cells[Row, ColumnIndex[4]].Value = 1) then
                Query1.FieldByName('Attendance').Value := 1
              else if (Sheet.Cells[Row, ColumnIndex[4]].Text <> '#N/A') then
                Query1.FieldByName('Attendance').Value := 0;
            end;

            Inc(Row);
          end;

          ShowMessage('Completed');
        end
        else begin
          ShowMessage('Excel import format error');
        end;

        BS5.Enabled := true;
        BS6.Enabled := true;
        DBGridEh1.Columns[7].ButtonStyle := cbsAuto;

        eclApp.DisplayAlerts := false;
        eclApp.WorkBooks.Close;
        eclApp.Quit;
      except on F:Exception do
        begin
          eclApp.DisplayAlerts := false;
          eclApp.WorkBooks.Close;
          eclApp.Quit;
          ShowMessage(F.Message);
          Exit;
        end;
      end;
    end;
  except on F:Exception do
    begin
      ShowMessage(F.Message);
      Exit;
    end;
  end;
end;

procedure TAttendance.BitBtn1Click(Sender: TObject);
var
  i,j,Sheet,DataNum:integer;
  flag:boolean;
  MsExcel:olevariant;

  MsExcelWorkbook: Variant;
  Production_Category1:TStringlist;
  ID,Date,Department,LaborType,Attendance,UserID,UserDate,YN :string;
begin
   if Query1.IsEmpty then exit;
   Production_Category1:=TStringList.Create;
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
         UserID:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6];
         UserDate:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,7];
         YN:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8];
         if Query1.FieldByName('ID').AsString=ID then
         begin
           Query1.Edit;
           Query1.FieldByName('Department').Value:=Department;
           Query1.FieldByName('LaborType').Value:=LaborType;
           Query1.FieldByName('Attendance').Value:=Attendance;
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
   DBGridEh1.Columns[7].ButtonStyle := cbsAuto;
end;

end.
