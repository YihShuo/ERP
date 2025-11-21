unit Upload_PLX1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,
  ComCtrls,IniFiles,ShellApi,comobj, Menus;

type
  TUpload_PLX = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    btnExcel: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtDocNo: TEdit;
    edtDecl: TEdit;
    Button1: TButton;
    edtZSBH: TEdit;
    edtSupp: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QSearch: TQuery;
    OpenDialog1: TOpenDialog;
    Label5: TLabel;
    DTP1: TDateTimePicker;
    Label6: TLabel;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    Query1GSBH: TStringField;
    Query1DOCNO: TStringField;
    Query1ZSBH: TStringField;
    Query1VATFile: TStringField;
    Query1VATFile1: TStringField;
    Query1Memo: TStringField;
    Query1Declaretion: TStringField;
    Query1ZSYWJC: TStringField;
    Query1DOCDATE: TDateTimeField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    PopupMenu1: TPopupMenu;
    DownloadFile1: TMenuItem;
    SaveDialog1: TSaveDialog;
    DeleteFile1: TMenuItem;
    N1: TMenuItem;
    DownloadFile11: TMenuItem;
    DeleteFile11: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1Columns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure DBGridEh1Columns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure btnExcelClick(Sender: TObject);
    procedure DownloadFile1Click(Sender: TObject);
    procedure DeleteFile1Click(Sender: TObject);
    procedure DownloadFile11Click(Sender: TObject);
    procedure DeleteFile11Click(Sender: TObject);
  private
    DCTFilePath: string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Upload_PLX: TUpload_PLX;

implementation

uses main1,FileTransClient1;

{$R *.dfm}
procedure TUpload_PLX.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  DCTFilePath := '\\192.168.123.112\Index_X\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      DCTFilePath:=MyIni.ReadString('DCT','Purchase_N2C_DCTFilePath','\\192.168.123.112\Index_X\');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TUpload_PLX.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TUpload_PLX.FormDestroy(Sender: TObject);
begin
  Upload_PLX:=nil;
end;

procedure TUpload_PLX.FormCreate(Sender: TObject);
begin
  ReadIni();
  DTP1.Date:=date-30;
  DTP2.date:=date;
end;

procedure TUpload_PLX.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TUpload_PLX.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' SELECT KCRK.GSBH,KCRK.DOCNO,KCRK.ZSBH,DOCNO_File.VATFile,DOCNO_File.VATFile1,DOCNO_File.Memo,KCPK.Declaretion,ZSZL.ZSYWJC,DOCDATE ');
    sql.Add('	       ,DOCNO_File.UserID,DOCNO_File.UserDate,DOCNO_File.YN ');
    sql.Add(' FROM KCRK ');
    sql.Add(' LEFT JOIN zszl on KCRK.ZSBH=zszl.zsdh ');
    sql.Add(' LEFT JOIN CGZL on KCRK.ZSNO = CGZL.CGNO ');
    sql.Add(' LEFT JOIN KCPK on KCRK.RKNO=KCPK.PKNO ');
    sql.Add(' LEFT JOIN DOCNO_File on KCRK.GSBH=DOCNO_File.GSBH ');
    sql.Add(' AND KCRK.DOCNO=DOCNO_File.DOCNO and KCRK.ZSBH=DOCNO_File.ZSBH ');
    sql.Add(' WHERE  1=1 and isnull(KCRK.DOCNO,'''')<>''''  ');
    sql.Add(' AND convert(varchar,KCRK.DOCDATE,111) between ');
    SQL.add(' '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    if Check.Checked=true then
      SQL.Add('  and  CGZL.USERID = '''+main.Edit1.Text+'''  ');
    if edtDocNo.Text <> '' then
      SQL.Add('  and KCRK.DOCNO like '''+edtDocNo.Text+'%'' ');
    if edtZSBH.Text <> '' then
      SQL.Add('  and KCRK.ZSBH like '''+edtZSBH.Text+'%'' ');
    if edtSupp.Text <> '' then
      SQL.Add('  and ZSZL.ZSYWJC like ''%'+edtSupp.Text+'%'' ');
    if edtDecl.Text <> '' then
      SQL.Add('  and KCPK.Declaretion like '''+edtDecl.Text+'%'' ');
    sql.Add(' group by KCRK.GSBH,KCRK.DOCNO,KCRK.ZSBH,DOCNO_File.VATFile,DOCNO_File.VATFile1,DOCNO_File.Memo,KCPK.Declaretion,ZSZL.ZSYWJC,DOCDATE ');
    sql.Add('		      ,DOCNO_File.UserID,DOCNO_File.UserDate,DOCNO_File.YN  ');
    sql.Add(' order by KCRK.DOCDATE  ');
    active:=true;
  end;
  if query1.RecordCount >0 then
  begin
    BB4.Enabled:=true;
    btnExcel.Enabled:=true;
  end;
end;

procedure TUpload_PLX.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[3].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[4].ButtonStyle:=cbsEllipsis;
end;

procedure TUpload_PLX.BB5Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
   //取Server的年月值
  with QSearch do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin
          if (Query1.FieldByName('YN').AsString = '1') then
          begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.text;
            Query1.FieldByName('USERDATE').Value := NDate;
            UpdateSQL1.Apply(ukModify);
          end else
          begin
            Query1.Edit;
            //Query1.FieldByName('GSBH').Value:= main.Edit2.text;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := NDate;
            Query1.FieldByName('YN').Value := 1;
            UpdateSQL1.Apply(ukInsert);
          end;
        end;
      end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
    DBGridEh1.columns[3].ButtonStyle:=cbsNone;
    DBGridEh1.columns[4].ButtonStyle:=cbsNone;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TUpload_PLX.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
  DBGridEh1.columns[3].ButtonStyle:=cbsNone;
  DBGridEh1.columns[4].ButtonStyle:=cbsNone;
end;

procedure TUpload_PLX.DBGridEh1DblClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'VATFile') and (Query1.FieldByName('VATFile').AsString <> '') and (BB5.Enabled = false) then
    ShellExecute(0, 'open', PChar(DCTFilePath + Query1.FieldByName('VATFile').AsString), nil, nil, SW_Normal);
  if (DBGridEh1.SelectedField.FieldName = 'VATFile1') and (Query1.FieldByName('VATFile1').AsString <> '') and (BB5.Enabled = false) then
    ShellExecute(0, 'open', PChar(DCTFilePath + Query1.FieldByName('VATFile1').AsString), nil, nil, SW_Normal);
end;

procedure TUpload_PLX.DBGridEh1Columns3EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var DCTFileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    DCTFileName := ExtractFileName(OpenDialog1.FileName);
    if (FileExists(DCTFilePath + DCTFileName) = false) then
    begin
      Query1.FieldByName('VATFile').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), true);
    end else
    begin
      if (MessageDlg('File ''' + DCTFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Query1.FieldByName('VATFile').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), false);
      end
    end;
  end;
end;

procedure TUpload_PLX.DBGridEh1Columns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var DCTFileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    DCTFileName := ExtractFileName(OpenDialog1.FileName);
    if (FileExists(DCTFilePath + DCTFileName) = false) then
    begin
      Query1.FieldByName('VATFile1').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), true);
    end else
    begin
      if (MessageDlg('File ''' + DCTFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Query1.FieldByName('VATFile1').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), false);
      end
    end;
  end;
end;

procedure TUpload_PLX.btnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         if ((DBGridEh1.Fields[i].FieldName = 'DOCNO') or (DBGridEh1.Fields[i].FieldName = 'Declaretion')) then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value
        else
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
      inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TUpload_PLX.DownloadFile1Click(Sender: TObject);
begin
  if not Query1.FieldByName('VATFile').IsNull then
  begin
    SaveDialog1.FileName := Query1.FieldByName('VATFile').AsString;
    if not SaveDialog1.Execute then
      abort;

    try
       if trim(SaveDialog1.FileName)='' then
           SaveDialog1.FileName:= Query1.FieldByName('VATFile').AsString;
        CopyFile(PChar(DCTFilePath+Query1.FieldByName('VATFile').AsString), PChar(SaveDialog1.FileName), False);
        Showmessage('DownLoad success!');
        {if Application.MessageBox('DownLoad success ! Do you want to open the download file?','Open File',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);  }

    except
      showmessage('Can not Download ! Try again !');
    end;
  end else
  begin
     showmessage('No file !');
     abort;
  end;
end;

procedure TUpload_PLX.DeleteFile1Click(Sender: TObject);
begin
  if not Query1.FieldByName('VATFile').IsNull then
  begin
    if Application.MessageBox('Do you want to delete file?','Delete File',MB_YESNO) = IDNo then
      abort;

    try
        DeleteFile(DCTFilePath+Query1.FieldByName('VATFile').AsString);
        if FileExists(DCTFilePath+Query1.FieldByName('VATFile').AsString) then
        begin
            ShowMessage('Can not delete ! Pls delete again !');
            exit;
        end;
    except
            showmessage('Can not delete ! Try again !');
            exit;
    end;
    with QSearch do
    begin
       active:=false;
       sql.Clear;
       SQL.Add('UPDATE DOCNO_File');
       SQL.Add('SET VATFile = NULL,');
       SQL.Add('    UserDate =GETDATE(),');
       SQL.Add('	  UserID ='''+main.Edit1.Text+''' ');
       SQL.Add('WHERE DOCNO='''+Query1.FieldByName('DOCNO').AsString+''' ');
       SQL.Add('AND ZSBH='''+Query1.FieldByName('ZSBH').AsString+''' ');
       SQL.Add('AND GSBH='''+Query1.FieldByName('GSBH').AsString+''' ');
       ExecSQL;
       Query1.active:=false;
       Query1.Active:=true;
    end;
  end else
  begin
     showmessage('No file !');
     abort;
  end;
end;

procedure TUpload_PLX.DownloadFile11Click(Sender: TObject);
begin
  if not Query1.FieldByName('VATFile1').IsNull then
  begin
    SaveDialog1.FileName := Query1.FieldByName('VATFile1').AsString;
    if not SaveDialog1.Execute then
      abort;

    try
       if trim(SaveDialog1.FileName)='' then
           SaveDialog1.FileName:= Query1.FieldByName('VATFile1').AsString;
        CopyFile(PChar(DCTFilePath+Query1.FieldByName('VATFile1').AsString), PChar(SaveDialog1.FileName), False);
        Showmessage('DownLoad success!');

       { if Application.MessageBox('DownLoad success ! Do you want to open the download file?','Open File',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);  }

    except
      showmessage('Can not Download ! Try again !');
    end;
  end else
  begin
     showmessage('No file !');
     abort;
  end;
end;

procedure TUpload_PLX.DeleteFile11Click(Sender: TObject);
begin
  if not Query1.FieldByName('VATFile1').IsNull then
  begin
    if Application.MessageBox('Do you want to delete file?','Delete File',MB_YESNO) = IDNo then
      abort;

    try
        DeleteFile(DCTFilePath+Query1.FieldByName('VATFile1').AsString);
        if FileExists(DCTFilePath+Query1.FieldByName('VATFile1').AsString) then
        begin
            ShowMessage('Can not delete ! Pls delete again !');
            exit;
        end;
    except
            showmessage('Can not delete ! Try again !');
            exit;
    end;
    with QSearch do
    begin
       active:=false;
       sql.Clear;
       SQL.Add('UPDATE DOCNO_File');
       SQL.Add('SET VATFile1 = NULL,');
       SQL.Add('    UserDate =GETDATE(),');
       SQL.Add('	  UserID ='''+main.Edit1.Text+''' ');
       SQL.Add('WHERE DOCNO='''+Query1.FieldByName('DOCNO').AsString+''' ');
       SQL.Add('AND ZSBH='''+Query1.FieldByName('ZSBH').AsString+''' ');
       SQL.Add('AND GSBH='''+Query1.FieldByName('GSBH').AsString+''' ');
       ExecSQL;
       Query1.active:=false;
       Query1.Active:=true;
    end;
  end else
  begin
     showmessage('No file !');
     abort;
  end;
end;

end.
