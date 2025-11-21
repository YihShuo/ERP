unit RCA1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, ComObj,
  ComCtrls, Menus;

type
  TRCA = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    ED_PI: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    BB7: TBitBtn;
    BB6: TBitBtn;
    BB5: TBitBtn;
    BB4: TBitBtn;
    BB3: TBitBtn;
    BB2: TBitBtn;
    BB1: TBitBtn;
    DS1: TDataSource;
    QRCA: TQuery;
    UP_RCA: TUpdateSQL;
    QSearch: TQuery;
    QRCALNO: TStringField;
    QRCAPI: TStringField;
    QRCAflowflag: TStringField;
    QRCAUserID: TStringField;
    QRCAUserDate: TDateTimeField;
    QRCAYN: TStringField;
    Label2: TLabel;
    ED_LNO: TEdit;
    Label6: TLabel;
    DTP1: TDateTimePicker;
    Label7: TLabel;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    GB1: TGroupBox;
    CB1: TCheckBox;
    CB2: TCheckBox;
    CB3: TCheckBox;
    CB4: TCheckBox;
    QRCAStatus: TStringField;
    QRCAGSBH: TStringField;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DS2: TDataSource;
    QRCAS: TQuery;
    StringField1: TStringField;
    StringField5: TStringField;
    DateTimeField1: TDateTimeField;
    StringField6: TStringField;
    UP_RCAS: TUpdateSQL;
    QRCASAttachment: TStringField;
    QRCASSeq: TFloatField;
    Panel3: TPanel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    OpenDialog1: TOpenDialog;
    QRCASFilePath: TStringField;
    PopupMenu2: TPopupMenu;
    Download1: TMenuItem;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRCAAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure QRCANewRecord(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure PC1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure QRCASAfterOpen(DataSet: TDataSet);
    procedure QRCASNewRecord(DataSet: TDataSet);
    procedure DBGridEh2Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure QRCASAfterScroll(DataSet: TDataSet);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RCA: TRCA;
const
  Path: string = '\\192.168.123.112\kcs\ERP_ATTACHMENT\RCA\';

implementation

uses main1, funUnit;

{$R *.dfm}

procedure TRCA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    MessageDlg('You have to save the data before exit.', mtWarning, [mbyes], 0);
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TRCA.FormDestroy(Sender: TObject);
begin
  RCA := Nil;
end;
       
procedure TRCA.FormCreate(Sender: TObject);
begin
  BB1Click(Nil);
  DTP1.Date := Date - 3;
  DTP2.Date := Date;
  PC1.ActivePageIndex := 0;
end;

procedure TRCA.BB1Click(Sender: TObject);
begin
  Panel1.Visible := true;
end;

procedure TRCA.Button1Click(Sender: TObject);
var
  StatusSQL: string;
begin
  StatusSQL := '';
  if (CB1.Checked) then
    StatusSQL := 'Status = ''Not Submitted''';
  if (CB2.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Under Review''';
  end;
  if (CB3.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Closed''';
  end;
  if (CB4.Checked) then
  begin
    if (StatusSQL <> '') then
      StatusSQL := StatusSQL + ' OR ';
    StatusSQL := StatusSQL + 'Status = ''Cancelled''';
  end;
  if (StatusSQL = '') then
    StatusSQL := '1 = 0';

  with QRCA do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT * FROM (');
    SQL.Add('  SELECT CAST(WF_RCA.LNO AS VARCHAR(20)) AS LNO, WF_RCA.PI, WF_RCA.GSBH, WF_RCA.flowflag, WF_RCA.UserID, WF_RCA.UserDate, WF_RCA.YN,');
    SQL.Add('  CASE WHEN WF_RCA.flowflag IS NULL THEN ''Not Submitted'' ELSE');
    SQL.Add('  CASE WHEN WF_RCA.flowflag NOT IN ('''', ''X'', ''Z'') THEN ''Under Review'' ELSE');
    SQL.Add('  CASE WHEN WF_RCA.flowflag = ''Z'' THEN ''Closed'' ELSE');
    SQL.Add('  CASE WHEN WF_RCA.flowflag = ''X'' THEN ''Cancelled'' END END END END AS Status FROM WF_RCA');
    SQL.Add('  WHERE WF_RCA.LNO LIKE ''' + ED_LNO.Text + '%'' AND WF_RCA.PI LIKE ''' + ED_PI.Text + '%'' AND WF_RCA.GSBH = ''' + main.Edit2.Text + '''');
    SQL.Add('  AND CONVERT(VARCHAR, WF_RCA.UserDate, 111) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add(') AS WF_RCA');
    SQL.Add('WHERE (' + StatusSQL + ')');
    SQL.Add('ORDER BY LNO');
    Active := true;
  end;
  QRCAS.Active := true;
end;

procedure TRCA.BB2Click(Sender: TObject);
begin
  with QRCA do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
    FieldByName('PI').Value := '';
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TRCA.BB3Click(Sender: TObject);
begin
  if (QRCA.FieldByName('Status').AsString <> 'Not Submitted') then
  begin
    ShowMessage('[' + QRCA.FieldByName('LNO').AsString + '] has already been submitted. Execution denied.');
    Exit;
  end;

  with QRCA do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TRCA.BB4Click(Sender: TObject);
begin
  with QRCA do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TRCA.BB5Click(Sender: TObject);
var
  Year, Month, Day, ListNo: string;
  i: integer;
begin
  try
    QRCA.First;
    for i := 1 to QRCA.RecordCount do
    begin
      case QRCA.UpdateStatus of
        usInserted:
        begin
          if (QRCA.FieldByName('LNO').IsNull) then
          begin
            QRCA.Delete;
          end
          else begin
            //計算入庫單流水號
            with QSearch do
            begin
              Active := false;
              SQL.Clear;
              SQL.Add('SELECT GetDate() AS Today');
              Active := true;
              Year := FormatDateTime('yyyy', FieldByName('Today').AsDateTime);
              Month := FormatDateTime('MM', FieldByName('Today').AsDateTime);
              Day := FormatDateTime('dd', FieldByName('Today').AsDateTime);

              Active := false;
              SQL.Clear;
              SQL.Add('SELECT LNO FROM WF_RCA WHERE SUBSTRING(LNO, 1, 4) = ''' + Year + '''');
              SQL.Add('ORDER BY LNO');
              Active := true;
              if (RecordCount > 0) then
              begin
                Last;
                ListNo := FieldByName('LNO').AsString;
                ListNo := Copy(ListNo, 10, 5);
                ListNo := IntToStr(StrToInt(ListNo) + 1);
                while Length(ListNo) < 5 do
                begin
                  ListNo := '0' + ListNo;
                end;
              end
              else begin
                ListNo := '00001';
              end;
              ListNo := Year + Month + Day + '-' + ListNo;
            end;

            QRCA.Edit;
            QRCA.FieldByName('LNO').Value := ListNo;
            QRCA.FieldByName('USERID').Value := main.Edit1.Text;
            QRCA.FieldByName('GSBH').Value := main.Edit2.Text;
            UP_RCA.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QRCA.FieldByName('YN').Value = 0) then
          begin
            UP_RCA.Apply(ukDelete);
          end
          else begin
            QRCA.Edit;
            QRCA.FieldByName('UserID').Value := main.Edit1.text;
            UP_RCA.Apply(ukModify);
          end;
        end;
      end;

      QRCA.Next;
    end;

    QRCA.Active := false;
    QRCA.CachedUpdates := false;
    QRCA.RequestLive := false;
    QRCA.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TRCA.BB6Click(Sender: TObject);
begin
  with QRCA do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TRCA.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TRCA.QRCAAfterOpen(DataSet: TDataSet);
begin
  BB2.Enabled := true;
  BB3.Enabled := true;
  BB4.Enabled := true;
end;

procedure TRCA.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (QRCA.FieldByName('Status').AsString = 'Cancelled') then
    DBGridEh1.Canvas.Font.Color := clFuchsia
  else if (QRCA.FieldByName('Status').AsString = 'Closed') then
    DBGridEh1.Canvas.Font.Color := $0000D500
  else if (QRCA.FieldByName('Status').AsString = 'Under Review') then
    DBGridEh1.Canvas.Font.Color := clBlue;

  if (QRCA.FieldByName('YN').AsString = '0') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

procedure TRCA.QRCANewRecord(DataSet: TDataSet);
begin
  QRCA.FieldByName('LNO').Value := '(Auto-Generated)';
end;

procedure TRCA.PC1Change(Sender: TObject);
begin
  if (PC1.ActivePageIndex = 0) then
  begin
    Panel2.Visible := true;
    Panel3.Visible := false;
  end
  else if (PC1.ActivePageIndex = 1) then
  begin
    Panel3.Visible := true;
    Panel2.Visible := false;
  end;
end;

procedure TRCA.PC1Changing(Sender: TObject; var AllowChange: Boolean);
begin
  if (BB5.Enabled) OR (BD5.Enabled) then
  begin
    ShowMessage('Please save the data before you change page');
    AllowChange := false;
  end;
end;

procedure TRCA.BD2Click(Sender: TObject);
begin
  with QRCAS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    First;
    Insert;
  end;

  DBGridEh2.Columns[1].ButtonStyle := cbsEllipsis;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TRCA.BD3Click(Sender: TObject);
begin
  with QRCAS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
    FieldByName('YN').Value := 0;
  end;

  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TRCA.BD4Click(Sender: TObject);
begin
  with QRCAS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  DBGridEh2.Columns[1].ButtonStyle := cbsEllipsis;
  BD5.Enabled := true;
  BD6.Enabled := true;
end;

procedure TRCA.BD5Click(Sender: TObject);
var
  i: integer;
begin
  try
    QRCAS.First;
    for i := 1 to QRCAS.RecordCount do
    begin
      case QRCAS.UpdateStatus of
        usInserted:
        begin
          if (QRCAS.FieldByName('Attachment').IsNull) then
          begin
            QRCAS.Delete;
          end
          else begin
            if (FileExists(Path + QRCA.FieldByName('LNO').AsString) = false) then
              CreateDir(Path + QRCA.FieldByName('LNO').AsString);
            if (FileExists(Path + QRCA.FieldByName('LNO').AsString + '\' + QRCAS.FieldByName('Attachment').AsString) = false) then
              CopyFile(PChar(QRCAS.FieldByName('FilePath').AsString), PChar(Path + QRCA.FieldByName('LNO').AsString + '\' + QRCAS.FieldByName('Attachment').AsString), true)
            else if (MessageDlg('The file ' + QRCAS.FieldByName('Attachment').AsString + ' already exists. Do you want to overwrite it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
              CopyFile(PChar(QRCAS.FieldByName('FilePath').AsString), PChar(Path + QRCA.FieldByName('LNO').AsString + '\' + QRCAS.FieldByName('Attachment').AsString), false);
            QRCAS.Edit;
            QRCAS.FieldByName('USERID').Value := main.Edit1.Text;
            UP_RCAS.Apply(ukInsert);
          end;
        end;

        usModified:
        begin
          if (QRCAS.FieldByName('YN').Value = 0) then
          begin
            if (FileExists(Path + QRCA.FieldByName('LNO').AsString + '\' + QRCAS.FieldByName('Attachment').AsString)) then
              DeleteFile(Path + QRCA.FieldByName('LNO').AsString + '\' + QRCAS.FieldByName('Attachment').AsString);
            UP_RCAS.Apply(ukDelete);
          end
          else begin
            if (QRCAS.FieldByName('Attachment').AsString <> '') then
            begin
              if (FileExists(Path + QRCA.FieldByName('LNO').AsString) = false) then
                CreateDir(Path + QRCA.FieldByName('LNO').AsString);

              if (FileExists(Path + QRCA.FieldByName('LNO').AsString + '\' + QRCAS.FieldByName('Attachment').AsString) = false) then
                CopyFile(PChar(QRCAS.FieldByName('FilePath').AsString), PChar(Path + QRCA.FieldByName('LNO').AsString + '\' + QRCAS.FieldByName('Attachment').AsString), true)
              else if (MessageDlg('The file ' + QRCAS.FieldByName('Attachment').AsString + ' already exists. Do you want to overwrite it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
                CopyFile(PChar(QRCAS.FieldByName('FilePath').AsString), PChar(Path + QRCA.FieldByName('LNO').AsString + '\' + QRCAS.FieldByName('Attachment').AsString), false);

              QRCAS.Edit;
              QRCAS.FieldByName('UserID').Value := main.Edit1.text;
              UP_RCAS.Apply(ukModify);
            end;
          end;
        end;
      end;

      QRCAS.Next;
    end;

    QRCAS.Active := false;
    QRCAS.CachedUpdates := false;
    QRCAS.RequestLive := false;
    QRCAS.Active := true;
    DBGridEh2.Columns[1].ButtonStyle := cbsNone;
    BD5.Enabled := false;
    BD6.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TRCA.BD6Click(Sender: TObject);
begin
  with QRCAS do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  
  DBGridEh2.Columns[1].ButtonStyle := cbsNone;
  BD5.Enabled := false;
  BD6.Enabled := false;
end;

procedure TRCA.BD7Click(Sender: TObject);
begin
  Close;
end;

procedure TRCA.QRCASAfterOpen(DataSet: TDataSet);
begin
  BD2.Enabled := true;
  BD3.Enabled := true;
  BD4.Enabled := true;
end;

procedure TRCA.QRCASNewRecord(DataSet: TDataSet);
begin
  QRCAS.FieldByName('LNO').Value := QRCA.FieldByName('LNO').AsString;
end;

procedure TRCA.DBGridEh2Columns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
var
  Attachment: string;
begin
  if (OpenDialog1.Execute) then
  begin
    QRCAS.FieldByName('Attachment').Value := ExtractFileName(OpenDialog1.FileName);
    QRCAS.FieldByName('FilePath').Value := OpenDialog1.FileName;
  end;
end;

procedure TRCA.QRCASAfterScroll(DataSet: TDataSet);
begin
  if (QRCAS.FieldByName('Attachment').AsString <> '') then
  begin
    Download1.Caption := 'Download ' + QRCAS.FieldByName('Attachment').AsString;
    Download1.Visible := true;
  end
  else begin
    Download1.Visible := false;
  end;
end;

procedure TRCA.DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if (QRCAS.FieldByName('YN').AsString = '0') then
    DBGridEh2.Canvas.Font.Color := clRed;
end;

end.
