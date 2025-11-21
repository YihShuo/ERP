unit PMR_Internal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, Grids, DBGrids, StdCtrls, ComCtrls, OleServer,comobj ,
  Buttons, ExtCtrls, Menus, GridsEh, DBGridEh, DateUtils, ShellApi, IniFiles;

type
  TPMR_Internal = class(TForm)
    Panel2: TPanel;
    B_QueryP1: TBitBtn;
    B_InsertP1: TBitBtn;
    B_DeleteP1: TBitBtn;
    B_ModifyP1: TBitBtn;
    B_SaveP1: TBitBtn;
    B_CancelP1: TBitBtn;
    B_ExitP1: TBitBtn;
    DS_PMRList: TDataSource;
    U_PMRList: TUpdateSQL;
    OpenDialog1: TOpenDialog;
    Q_PMRList: TQuery;
    Q_PMRListPMRNo: TStringField;
    Q_PMRListResponsibility: TStringField;
    Q_PMRListPMRFile: TStringField;
    Q_PMRListBOMCheck: TBooleanField;
    Q_PMRListUserID: TStringField;
    Q_PMRListUserDate: TDateTimeField;
    Q_PMRListYN: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    ED_PMR: TEdit;
    Button1: TButton;
    ED_SKU: TEdit;
    DBGridEh1: TDBGridEh;
    Q_PMRListArticle: TStringField;
    Q_PMRListBeforeChange: TStringField;
    Q_PMRListAfterChange: TStringField;
    Qry_Import: TQuery;
    Button2: TBitBtn;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure B_QueryP1Click(Sender: TObject);
    procedure B_InsertP1Click(Sender: TObject);
    procedure B_DeleteP1Click(Sender: TObject);
    procedure B_ModifyP1Click(Sender: TObject);
    procedure B_CancelP1Click(Sender: TObject);
    procedure B_ExitP1Click(Sender: TObject);
    procedure B_SaveP1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Q_PMRListAfterOpen(DataSet: TDataSet);
    procedure Q_PMRListNewRecord(DataSet: TDataSet);
    procedure DBGridEh1Columns5EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    PMRFilePath: string;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PMR_Internal: TPMR_Internal;

implementation
uses  main1, SKUChoose1, FunUnit;

{$R *.dfm}

procedure TPMR_Internal.ReadIni();
  var MyIni :Tinifile;
      AppDir:string;
begin
  PMRFilePath := '\\192.168.123.111\Develop Team\PMR Internal\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      PMRFilePath:=MyIni.ReadString('PMR','Develop_NC1_PMRFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TPMR_Internal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (B_SaveP1.Enabled) then
  begin
    MessageDlg('You have to save the data before exit.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TPMR_Internal.FormDestroy(Sender: TObject);
begin
  PMR_Internal := Nil;
end;

procedure TPMR_Internal.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TPMR_Internal.Button1Click(Sender: TObject);
begin
  with Q_PMRList do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM PMR_INTERNAL ');
    SQL.Add(' WHERE 1 = 1 ');
    if trim(ED_PMR.Text) <> '' then
      SQL.Add('and PMRNo LIKE '''+ED_PMR.Text+'%''');
    if trim(ED_SKU.Text) <> '' then
      SQL.Add('and Article LIKE '''+ED_SKU.Text+'%''');
    Active := true;
  end;
  B_InsertP1.Enabled := true;
  B_DeleteP1.Enabled := true;
  B_ModifyP1.Enabled := true;
end;

procedure TPMR_Internal.B_QueryP1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TPMR_Internal.B_InsertP1Click(Sender: TObject);
begin
  with Q_PMRList do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  B_SaveP1.Enabled := true;
  B_CancelP1.Enabled := true;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[5].ButtonStyle := cbsEllipsis;
end;

procedure TPMR_Internal.B_DeleteP1Click(Sender: TObject);
begin
  with Q_PMRList do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  B_SaveP1.Enabled := true;
  B_CancelP1.Enabled := true;
end;

procedure TPMR_Internal.B_ModifyP1Click(Sender: TObject);
begin
  with Q_PMRList do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  B_SaveP1.Enabled := true;
  B_CancelP1.Enabled := true;
  DBGridEh1.Columns[2].ButtonStyle := cbsEllipsis;
  DBGridEh1.Columns[5].ButtonStyle := cbsEllipsis;
end;

procedure TPMR_Internal.B_CancelP1Click(Sender: TObject);
begin
  with Q_PMRList do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  B_SaveP1.Enabled := false;
  B_CancelP1.Enabled := false;
  DBGridEh1.Columns[2].ButtonStyle := cbsNone;
  DBGridEh1.Columns[5].ButtonStyle := cbsNone;
end;

procedure TPMR_Internal.B_ExitP1Click(Sender: TObject);
begin
  Close;
end;

procedure TPMR_Internal.B_SaveP1Click(Sender: TObject);
  var i: integer;
begin
  try
    Q_PMRList.First;
    for i := 1 to Q_PMRList.RecordCount do
    begin
      case Q_PMRList.UpdateStatus of
        usInserted:
        begin
          if (Q_PMRList.FieldByName('PMRNo').IsNull) then
          begin
            Q_PMRList.Delete;
          end
          else begin
            Q_PMRList.Edit;
            Q_PMRList.FieldByName('USERID').Value := main.Edit1.Text;
            Q_PMRList.FieldByName('YN').Value := 1;
            U_PMRList.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (Q_PMRList.FieldByName('YN').Value = 0) then
          begin
            U_PMRList.Apply(ukDelete);
          end
          else begin
            Q_PMRList.Edit;
            Q_PMRList.FieldByName('UserID').Value := main.Edit1.text;
            U_PMRList.Apply(ukModify);
          end;
        end;
      end;
      Q_PMRList.Next;
    end;

    Q_PMRList.Active := false;
    Q_PMRList.CachedUpdates := false;
    Q_PMRList.RequestLive := false;
    Q_PMRList.Active := true;
    B_SaveP1.Enabled := false;
    B_CancelP1.Enabled := false;
    DBGridEh1.Columns[2].ButtonStyle := cbsNone;
    DBGridEh1.Columns[5].ButtonStyle := cbsNone;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TPMR_Internal.DBGridEh1DblClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'PMRFile') AND (Q_PMRList.FieldByName('PMRFile').AsString <> '') AND (B_SaveP1.Enabled = false) then
    ShellExecute(0, 'open', PChar(PMRFilePath + Q_PMRList.FieldByName('PMRFile').AsString), nil, nil, SW_Normal);
end;

procedure TPMR_Internal.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (Q_PMRList.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TPMR_Internal.Q_PMRListAfterOpen(DataSet: TDataSet);
begin
  B_SaveP1.Enabled := false;
  B_CancelP1.Enabled := false;
end;

procedure TPMR_Internal.Q_PMRListNewRecord(DataSet: TDataSet);
begin
  Q_PMRList.FieldByName('BOMCheck').Value := 0;
end;

procedure TPMR_Internal.DBGridEh1Columns5EditButtonClick(Sender: TObject;
  var Handled: Boolean);
  var PMRFileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    PMRFileName := ExtractFileName(OpenDialog1.FileName);
    if (FileExists(PMRFilePath + PMRFileName) = false) then
    begin
      Q_PMRList.FieldByName('PMRFile').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(PMRFilePath + PMRFileName), true);
    end
    else begin
      if (MessageDlg('File ''' + PMRFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Q_PMRList.FieldByName('PMRFile').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(PMRFilePath + PMRFileName), false);
      end
    end;
  end;
end;

procedure TPMR_Internal.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if (DBGridEh1.selectedfield.fieldname='Article')then
  begin
    SKUChoose:=TSKUChoose.create(self);
    SKUChoose.show;
  end;
end;

procedure TPMR_Internal.Button2Click(Sender: TObject);
  var Excel,arrData: Variant;
      Rows,Cols,i,j,count,temp: Integer;
      Error: Boolean;
begin
  if (B_SaveP1.Enabled) then
  begin
    showmessage('Pls. Save data first !');
    abort;
  end else
  begin
    if not OpenDialog1.Execute then
      abort;
    Excel:=CreateOleObject('Excel.Application');
    Excel.WorkBooks.Open(OpenDialog1.FileName);
    Excel.WorkSheets[1].Activate;
    Rows := Excel.WorkSheets[1].UsedRange.EntireRow.count;

    try
      //-----Format excel-----
      Excel.Columns[1].NumberFormat:='@';   //PMRNo
      Excel.Columns[2].NumberFormat:='@';   //Responsibility
      Excel.Columns[3].NumberFormat:='@';   //Article
      Excel.Columns[4].NumberFormat:='@';   //BeforeChange
      Excel.Columns[5].NumberFormat:='@';   //AfterChange

      //-----Start import-----
      arrData:= Excel.WorkSheets[1].UsedRange.Value;
      i:=3;
      count:=0;
      temp:=0;

      while (count<3) and (i<=Rows) do
      begin
        try
          if trim(arrData[i,1])='' then
            Inc(count)
          else
          begin
            count:=1;
            Qry_Import.Close;
            Qry_Import.SQL.Clear;
            Qry_Import.SQL.Add('Select * from PMR_INTERNAL');
            Qry_Import.SQL.Add('Where PMRNo='''+trim(arrData[i,1])+''' ');
            Qry_Import.ExecSQL;
            Qry_Import.Open;
            if Qry_Import.RecordCount>0 then
            begin
              Qry_Import.Active:=false;
              Qry_Import.sql.Clear;
              Qry_Import.sql.Add('UPDATE PMR_INTERNAL SET ');
              Qry_Import.sql.Add('   Responsibility ='''+trim(arrData[i,2])+''' ');
              Qry_Import.sql.Add('   ,Article = '''+trim(arrData[i,3])+''' ');
              Qry_Import.sql.Add('   ,BeforeChange = '''+trim(arrData[i,4])+''' ');
              Qry_Import.sql.Add('   ,AfterChange = '''+trim(arrData[i,5])+''' ');
              Qry_Import.sql.Add('   ,UserID ='''+main.Edit1.Text+''' ');
              Qry_Import.sql.Add('   ,UserDate = GETDATE() ');
              Qry_Import.sql.Add('   ,YN = ''1'' ');
              Qry_Import.SQL.Add('Where PMRNo='''+trim(arrData[i,1])+''' ');
              Qry_Import.ExecSQL;
            end else
            begin
              Qry_Import.Active:=false;
              Qry_Import.sql.Clear;
              Qry_Import.sql.Add('INSERT INTO PMR_INTERNAL(PMRNo, Responsibility, Article, BeforeChange, AfterChange, USERID, USERDATE, YN)');
              Qry_Import.sql.Add('VALUES(');
              Qry_Import.sql.Add('   '''+trim(arrData[i,1])+''', '''+trim(arrData[i,2])+''', '''+trim(arrData[i,3])+''' ');
              Qry_Import.sql.Add('   ,'''+trim(arrData[i,4])+''', '''+trim(arrData[i,5])+''' ');
              Qry_Import.sql.Add('   ,'''+main.Edit1.Text+''' ');
              Qry_Import.sql.Add('   ,GETDATE() ');
              Qry_Import.sql.Add('   ,''1'') ');
              Qry_Import.ExecSQL;
            end;
            Inc(temp);
            inc(i);
          end;
        except
          Error:=true;
          Break;
        end;
      end;
    finally
      IntToStr(temp);
      if Error then
        MessageDlg('Error: PMRNo '+trim(arrData[i,1])+'. Import '+IntToStr(temp)+' rows complete!!!',mtError,[mbOK],0)
      else
      begin
        MessageDlg('OK !!!, Import ('+IntToStr(temp)+') rercords !!', mtConfirmation,[mbOK],0);
        Qry_Import.Close;
      end;

      Excel.ActiveWorkBook.Close(SaveChanges:=0);
      Excel.Quit;
      Excel:=Unassigned;
      arrData:=Unassigned;
    end;
    Button1.Click;
  end;
end;

procedure TPMR_Internal.Button3Click(Sender: TObject);
  var a: string;
      eclApp, WorkBook: olevariant;
      i, j: integer;
begin
  if (Q_PMRList.Active) then
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
      for i:=0 to Q_PMRList.FieldCount-2 do
      begin
        eclApp.Cells(1, i+1) := Q_PMRList.Fields[i].FieldName;
      end;

      Q_PMRList.First;
      j := 2;
      while not Q_PMRList.Eof do
      begin
        for i:=0 to Q_PMRList.FieldCount-2 do
        begin
          eclApp.Cells(j, i+1) := Q_PMRList.Fields[i].Value;
        end;
        Q_PMRList.Next;
        Inc(j);
      end;
      eclapp.columns.autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

end.
