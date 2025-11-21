unit Shoetest1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls,
  Buttons, Mask, DBCtrls, FileCtrl, DBCtrlsEh, comobj, IniFiles;

type
  TShoeTest = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    Panel4: TPanel;
    Query2: TQuery;
    DBGridEh2: TDBGridEh;
    UpdateSQL2: TUpdateSQL;
    DataSource2: TDataSource;
    Query2TestID: TStringField;
    Query2Result: TStringField;
    Query2Comment: TStringField;
    Query2FailureReason: TStringField;
    Query2Remark: TStringField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query2ApprovedUserID: TStringField;
    TempQry: TQuery;
    Query2TestNO: TStringField;
    Query2testreason: TStringField;
    Query1TestNO: TStringField;
    Query1SCBH: TStringField;
    Query2YN: TStringField;
    Query2InspectedID: TStringField;
    Query2Standard: TStringField;
    Query2serial: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Edit1: TEdit;
    Label1: TLabel;
    userdatecheck: TCheckBox;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Label12: TLabel;
    BBD: TBitBtn;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    BBU: TBitBtn;
    Query2FilePath: TStringField;
    Query1Article: TStringField;
    Query1Season: TStringField;
    Query1Stage: TStringField;
    Query1FD: TStringField;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Edit2: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Edit3: TEdit;
    Label20: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Query1Department: TStringField;
    ComboBox1: TComboBox;
    Query1GSBH: TStringField;
    r: TStringField;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Query1Userdate: TDateTimeField;
    Query2Times: TIntegerField;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Label28: TLabel;
    BitBtn1: TBitBtn;
    BitBtn7: TBitBtn;
    Edit9: TEdit;
    Panel6: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Edit6: TEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label26: TLabel;
    Label27: TLabel;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    QTemp: TQuery;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit16: TDBEdit;
    Query3Article: TStringField;
    Query3TestNo: TStringField;
    Query3TestID: TStringField;
    Query3Result: TStringField;
    Query3FailureReason: TStringField;
    Query3Remark: TStringField;
    Query3UserDate: TDateTimeField;
    Query3ProductionLine: TStringField;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Edit7: TEdit;
    Query3SCBH: TStringField;
    Label36: TLabel;
    Edit8: TEdit;
    Query3Model: TStringField;
    bbt6: TBitBtn;
    Query1CKBH: TStringField;
    Query2UserID1: TStringField;
    Query2Sampleroom: TBooleanField;
    Query2Materialteam: TBooleanField;
    Query2Outsolefactory: TBooleanField;
    Query2Rubberfactory: TBooleanField;
    Query2Printingfacory: TBooleanField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure DBGridEh2Columns0EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BBUClick(Sender: TObject);
    procedure BBDClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure BB7Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    IsAllowUserID:Boolean;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  ShoeTest: TShoeTest;
  //  FilePath: string = '\\192.168.23.11\A_DataCenter\A12\KCS\LAB\DATABASE(MATERIAL&FINISHED SHOE)\';
  FilePath: string = '\\192.168.123.112\kcs\LAB\2. DC REPORT\DC. shoe\';

implementation

uses TestItemChoose1, main1, UploadFile1, Fununit;

{$R *.dfm}

procedure TShoeTest.ReadIni();
var MyIni :Tinifile;
    AppDir, UserIDList:string;
    tmpUserIDList:TStringlist;
    index:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      UserIDList:=MyIni.ReadString('ERP','QC_N74_UpdateID','');
    finally
      MyIni.Free;
    end;
  end;
  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(main.Edit1.Text);
    if index>=0 then IsAllowUserID:=true;
    tmpUserIDList.Free;
  end else
  begin
    IsAllowUserID:=false;
  end;
end;

procedure TShoeTest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TShoeTest.BB1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select');
    SQL.Add('case when left(shoetest.ypdh,4)=''LAIV'' then ''DC'' when left(shoetest.ypdh,4)=''LAIK'' then ''DC'' when left(shoetest.ypdh,4)=''LAIT'' then ''TechRoom'' ');
    SQL.Add('else isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh) end Department, ');
    SQL.Add('case when left(shoetest.ypdh,3)=''LAI'' then shoetest.Article else isnull(ddzl.article,CBY_Orders.style) end Article,');
    SQL.Add('case when left(shoetest.ypdh,3)=''LAI'' then shoetest.Season else isnull(ddzl.buyno,CBY_Orders.Season) end Season,');
    SQL.Add('case when left(shoetest.ypdh,3)=''LAI'' then Shoetest.Stage else ''-'' end Stage,');
    SQL.Add('case when left(shoetest.ypdh,3)=''LAI'' then Shoetest.FD else ProductionLine end FD,lab_shoetest.TestNO,lab_shoetest.SCBH,lab_shoetest.Userdate,lab_shoetest.yn,');
    SQL.Add('lab_shoetest.GSBH,lab_shoetest.CKBH,lab_shoetest.reportNO from lab_shoetest');
    SQL.Add('left join shoetest on shoetest.testno=lab_shoetest.scbh');
    SQL.Add('left join ddzl on ddzl.ddbh=lab_shoetest.scbh');
    SQL.Add('left join CBY_Orders on CBY_Orders.workOrderId=Lab_shoetest.scbh');
    SQL.Add('where lab_shoetest.yn is null  ');
    if edit1.Text <> '' then
      SQL.Add('and lab_shoetest.scbh like ''' + edit1.text + '%''');
    if edit2.Text <> '' then
      SQL.Add('and shoetest.Season like ''' + edit2.text + '%''');
    if edit3.Text <> '' then
      SQL.Add('and shoetest.stage like ''' + edit3.text + '%''');
    if edit4.Text <> '' then
      SQL.Add('and shoetest.article like ''' + edit4.text + '%''');
    if edit5.Text <> '' then
      SQL.Add('and shoetest.fd like ''' + edit5.text + '%''');
    if edit2.Text <> '' then
      SQL.Add('and shoetest.Season like ''' + edit2.text + '%''');
    if combobox1.text <> '' then
      SQL.Add('and isnull(Lab_shoetest.ckbh,Lab_shoetest.gsbh) like ''' + combobox1.text + '%''');
    if userdatecheck.Checked then
    begin
      SQL.Add(' and lab_shoetest.ReceiveDate between');
      sql.add(' convert(datetime,''' + formatdatetime('yyyy-MM-dd', DTP3.Date) +
        ''')');
      sql.add(' and  ');
      sql.add(' convert(datetime,''' + formatdatetime('yyyy-MM-dd', DTP4.Date) +
        ''')');
      SQL.add('order by  lab_shoetest.userdate desc');
    end;
    //memo1.text:=sql.text;
    Active := true;
  end;
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;

end;

procedure TShoeTest.BB4Click(Sender: TObject);
begin
  with query2 do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TShoeTest.BB2Click(Sender: TObject);
begin
  with query2 do
  begin
    requestlive := true;
    cachedupdates := true;
    Insert;
    FieldByName('serial').Value:=1;
  end;
  BB2.Enabled := false;
  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh2.Columns[0].ButtonStyle := cbsEllipsis;
end;

procedure TShoeTest.DBGridEh2Columns0EditButtonClick(Sender: TObject;
  var Handled: Boolean);
begin
  if TestItemChoose <> nil then
  begin
    TestItemChoose.show;
    TestItemChoose.windowstate := wsmaximized;
  end
  else
  begin
    TestItemChoose := TTestItemChoose.create(self);
    TestItemChoose.show;
  end;

end;

procedure TShoeTest.FormDestroy(Sender: TObject);
begin
  ShoeTest := nil;
end;

procedure TShoeTest.BB5Click(Sender: TObject);
var
  i: integer;
  NDate: TDateTime;
begin
  with TempQry do //取服務器的年月值
  begin
    active := false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active := true;
    NDate := fieldbyname('Ndate').Value;
    active := false;
  end;

  try
    query2.first;
    for i := 1 to query2.RecordCount do
    begin
      case query2.updatestatus of
        usinserted:
          begin
            query2.edit;
            query2.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd',
              Ndate);
            query2.FieldByName('userID').Value := main.edit1.text;
            query2.FieldByName('TestNO').Value :=
              query1.FieldByName('TestNO').Value;
            UpdateSQL2.apply(ukinsert);
          end;
        usmodified:
          if query2.FieldByName('userid').Value = main.edit1.text then
          begin
            begin
              if query2.fieldbyname('YN').value = '0' then
              begin
                UpdateSQL2.apply(ukdelete);
              end
              else
              begin
                query2.edit;
                query2.FieldByName('userdate').Value := formatdatetime('yyyy/MM/dd', Ndate);
                UpdateSQL2.apply(ukModify);
              end;
            end;
          end
          else
          begin
            if query2.FieldByName('UserID1').Value = main.edit1.text then
            begin
              if (IsAllowUserID=true) then
              begin
                with QTemp do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add(' update lab_shoetests ');
                  sql.Add(' set Comment = '''+query2.fieldbyname('Comment').AsString+''', userdate=getdate() ');
                  if (query2.FieldByName('Sampleroom').AsBoolean) then
                    sql.Add('     ,Sampleroom = 1')
                  else
                    sql.Add('     ,Sampleroom = 0');
                  if (query2.FieldByName('Materialteam').AsBoolean) then
                    sql.Add('     ,Materialteam = 1')
                  else
                    sql.Add('     ,Materialteam = 0');
                  if (query2.FieldByName('Outsolefactory').AsBoolean) then
                    sql.Add('     ,Outsolefactory = 1')
                  else
                    sql.Add('     ,Outsolefactory = 0');
                  if (query2.FieldByName('Rubberfactory').AsBoolean) then
                    sql.Add('     ,Rubberfactory = 1')
                  else
                    sql.Add('     ,Rubberfactory = 0');
                  if (query2.FieldByName('Printingfacory').AsBoolean) then
                    sql.Add('     ,Printingfacory = 1')
                  else
                    sql.Add('     ,Printingfacory = 0');
                  sql.Add(' where TestID = '''+query2.fieldbyname('TestID').OldValue+''' ');
                  sql.Add('   and TestNO = '''+query2.fieldbyname('TestNO').OldValue+''' ');
                  sql.Add('   and serial = '''+IntToStr(query2.fieldbyname('serial').OldValue)+''' ');
                  execsql;
                  active:=false;
                end;
              end;
            end else
              showmessage('not yours');
          end;
      end;
      query2.next;
    end;
    query2.active := false;
    query2.cachedupdates := false;
    query2.requestlive := false;
    query2.active := true;
    BB2.Enabled := true;
    BB3.Enabled := true;
    BB4.Enabled := true;
    bb5.enabled := false;
    bb6.enabled := false;
  except
    Messagedlg('Have wrong, can not save data!', mtwarning, [mbyes], 0);
  end;

end;

procedure TShoeTest.BB6Click(Sender: TObject);
begin
  with query2 do
  begin
    active := false;
    requestlive := false;
    cachedupdates := false;
    active := true;
  end;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TShoeTest.BB3Click(Sender: TObject);
begin
  with query2 do
  begin
    requestlive := true;
    cachedupdates := true;
    edit;
    fieldbyname('YN').Value := '0';
  end;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TShoeTest.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query2.FieldByName('YN').Value = '0' then
  begin
    DBGridEh2.canvas.font.color := clred;
    DBGridEh2.defaultdrawcolumncell(rect, datacol, column, state);
  end;
end;

procedure TShoeTest.BBUClick(Sender: TObject);
begin
  if (Query2.Active = false) then
  begin
    ShowMessage('Please select a data first.');
    Exit;
  end
  else
  begin
    if (Query2.RecordCount = 0) then
    begin
      ShowMessage('Please select a data first.');
      Exit;
    end;
  end;

  UploadFile := TUploadFile.Create(self);
  UploadFile.Show;
end;

procedure TShoeTest.BBDClick(Sender: TObject);
var
  SelectPath: string;
begin
  if (DBEdit9.Text = '') then
  begin
    ShowMessage('No Uploaded File.');
    Exit;
  end;

  if (SelectDirectory('Select a directory', '', SelectPath)) then
  begin
    if (CopyFile(PChar(DBEdit9.Text), PChar(SelectPath + '\' +
      ExtractFileName(DBEdit9.Text)), False)) then
    begin
      ShowMessage('Download Success.');
    end
    else
    begin
      ShowMessage('Download Failed.');
    end;
  end;
end;

procedure TShoeTest.FormCreate(Sender: TObject);
var
  i: integer;
  NDate: TDate;
begin
  with QTemp do
  begin
    // 取服務器日期
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT getdate() as NDate');
    Active := true;
    NDate := FieldByName('NDate').Value;
    DTP3.Date := NDate -3;
    DTP4.Date := NDate;
  end;
  combobox1.text := main.edit2.text;
  IsAllowUserID:=false;
  ReadIni();
end;

procedure TShoeTest.DBGridEh1CellClick(Column: TColumnEh);
begin
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select lab_shoetests.TestNO,lab_shoetests.serial,lab_testreason.testreason,lab_shoetests.TestID,lab_shoetests.Result,lab_shoetests.Comment,lab_shoetests.FailureReason,');
    SQL.Add('lab_shoetests.Remark,lab_shoetests.UserID,lab_shoetests.UserDate,lab_shoetests.ApprovedUserID,lab_shoetests.InspectedID,lab_shoetests.Standard, lab_shoetests.FilePath,'''' YN,');
    SQL.Add('lab_shoetest.UserID UserID1,lab_shoetests.Times,Sampleroom,Materialteam,Outsolefactory,Rubberfactory,Printingfacory from lab_shoetests');
    SQl.Add('LEFT JOIN Lab_Shoetest on lab_shoetests.TestNo=Lab_Shoetest.TestNo');
    SQL.Add('left join lab_testreason on lab_testreason.testid=lab_shoetests.testid');
    SQL.Add('where lab_shoetests.TestNO=:TestNO and lab_testreason.GSBH=:GSBH');
    //memo1.text:=sql.text;
    Active := true;
  end;
end;

procedure TShoeTest.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TShoeTest.TabSheet2Show(Sender: TObject);
var
  i: integer;
  NDate: TDate;
begin
  with QTemp do
  begin
    // 取服務器日期
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT getdate() as NDate');
    Active := true;
    NDate := FieldByName('NDate').Value;
    DateTimePicker1.Date := NDate - 2;
    DateTimePicker2.Date := NDate;
  end;
end;

procedure TShoeTest.BitBtn7Click(Sender: TObject);
begin
  Close;
end;

procedure TShoeTest.BitBtn1Click(Sender: TObject);
var
  j: Double;
  k: Double;
begin
  j := 0;
  k := 0;
  with Query3 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT Lab_Shoetest.TestNO, Lab_Shoetest.SCBH, Lab_Shoetest.GSBH, Lab_Shoetest.ProductionLine, Lab_Shoetest.UserDate, Lab_Shoetests.TestID, Lab_Shoetests.Result,');
    SQL.Add('Lab_Shoetests.FailureReason, Lab_Shoetests.Remark, DDZL.ARTICLE, XXZL.XieMing AS Model FROM Lab_Shoetest');
    SQl.Add('LEFT JOIN shoetest on ShoeTest.TestNo=Lab_Shoetest.SCBH');
    SQL.Add('LEFT JOIN DDZL ON Lab_Shoetest.SCBH = DDZL.DDBH');
    SQL.Add('LEFT JOIN Lab_Shoetests ON Lab_Shoetest.TestNO = Lab_Shoetests.TestNO');
    SQL.Add('LEFT JOIN XXZL ON DDZL.ARTICLE = XXZL.Article');
    SQL.Add('WHERE Lab_Shoetest.YN is null');
    SQl.Add('AND Lab_Shoetests.TestID is not null');
    if Edit9.Text <> '' then
    begin
      SQL.Add('AND DDZL.ARTICLE LIKE :ARTICLE');
      ParamByName('ARTICLE').Value := '%' + Edit9.Text + '%';
    end;
    if Edit8.Text <> '' then
    begin
      SQL.Add('AND XXZL.XieMing LIKE :MODEL');
      ParamByName('MODEL').Value := '%' + Edit8.Text + '%';
    end;
    if Edit6.Text <> '' then
    begin
      SQL.Add('AND Lab_Shoetests.TestID = :TestID');
      ParamByName('TestID').Value := Edit6.Text;
    end;
    if Edit7.Text <> '' then
    begin
      SQL.Add('AND Lab_Shoetest.ProductionLine LIKE :Department');
      ParamByName('Department').Value := '%' + Edit7.Text + '%';
    end;
    SQL.Add('AND Lab_Shoetest.USERDATE >= :STARTDATE AND Lab_Shoetest.USERDATE <= :ENDDATE');
    ParamByName('STARTDATE').Value := formatdatetime('yyyy-MM-dd',
      DateTimePicker1.Date);
    ParamByName('ENDDATE').Value := formatdatetime('yyyy-MM-dd',
      DateTimePicker2.Date);
    SQL.Add('ORDER BY Lab_Shoetest.USERDATE');

    Active := true;
  end;

  if (Query3.RecordCount > 0) then
  begin
    Query3.First;
    while not Query3.Eof do
    begin
      if (Query3.FieldByName('Result').AsString = 'Release') then
      begin
        j := j + 1;
      end;
      if (Query3.FieldByName('Result').AsString = 'Rejected') then
      begin
        k := k + 1;
      end;
      Query3.Next;
    end;
    Query3.First;
  end;

  if (j <> 0) then
  begin
    j := j / DataSource3.DataSet.RecordCount;
  end;
  if (k <> 0) then
  begin
    k := k / DataSource3.DataSet.RecordCount;
  end;

  Label30.Caption := IntToStr(DataSource3.DataSet.RecordCount);
  Label32.Caption := FloatToStr(Round(j * 100)) + '%';
  Label34.Caption := FloatToStr(Round(k * 100)) + '%';
  Label30.Visible := true;
  Label32.Visible := true;
  Label34.Visible := true;
end;

procedure TShoeTest.bbt6Click(Sender: TObject);
var
  eclApp, WorkBook: olevariant;
  i, j: integer;
begin
  if (Query3.Active) then
  begin
    if (Query3.RecordCount = 0) then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else
  begin
    ShowMessage('No record.');
    Abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel', 'Microsoft   Excel', MB_OK +
      MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.workbooks.Add;
    eclapp.Cells.NumberFormatLocal := '@';
    for i := 1 to Query3.fieldcount do
    begin
      eclApp.Cells(1, i) := Query3.Fields[i - 1].DisplayLabel;
    end;
    Query3.First;
    j := 2;
    while not Query3.Eof do
    begin
      for i := 1 to Query3.FieldCount do
      begin
        eclApp.Cells(j, i) := Query3.Fields[i - 1].Value;
        eclApp.Cells.Cells.item[j, i].font.size := '8';
      end;
      Query3.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    ShowMessage('Succeed.');
    eclApp.Visible := True;
  except
    on F: Exception do
      ShowMessage(F.Message);
  end;
end;

end.
