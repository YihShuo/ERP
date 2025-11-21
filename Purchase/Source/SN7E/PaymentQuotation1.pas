unit PaymentQuotation1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,
  ComCtrls,IniFiles,ShellApi,comobj, Menus;

type
  TPaymentQuotation = class(TForm)
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
    Edit1: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit4: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QSearch: TQuery;
    OpenDialog1: TOpenDialog;
    Check: TCheckBox;
    PopupMenu1: TPopupMenu;
    DownloadFile1: TMenuItem;
    SaveDialog1: TSaveDialog;
    DeleteFile1: TMenuItem;
    N1: TMenuItem;
    Query1GSBH: TStringField;
    Query1cldhflex: TStringField;
    Query1cldhflexdes: TStringField;
    Query1cldh: TStringField;
    Query1ywpm: TStringField;
    Query1zsywjc: TStringField;
    Query1QuotFile: TStringField;
    Query1Memo: TStringField;
    Query1SignDate: TDateTimeField;
    Query1ValidDate: TDateTimeField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Label5: TLabel;
    CB1: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure DBGridEh1Columns5EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure DownloadFile1Click(Sender: TObject);
    procedure DeleteFile1Click(Sender: TObject);
  private
    DCTFilePath: string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  PaymentQuotation: TPaymentQuotation;

implementation

uses main1,FileTransClient1;

{$R *.dfm}
procedure TPaymentQuotation.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  DCTFilePath := '\\192.168.123.112\DevPur_Quotation\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      DCTFilePath:=MyIni.ReadString('DCT','Purchase_N7E_DCTFilePath','\\192.168.123.112\DevPur_Quotation\');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TPaymentQuotation.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentQuotation.FormDestroy(Sender: TObject);
begin
  PaymentQuotation:=nil;
end;

procedure TPaymentQuotation.FormCreate(Sender: TObject);
begin
  ReadIni();

end;

procedure TPaymentQuotation.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TPaymentQuotation.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    if CB1.Text='ALL' then
    begin
      sql.Add('Select FLEX.*,Quot.QuotFile,Quot.Memo,Quot.SignDate,Quot.ValidDate,Quot.UserID,Quot.UserDate,Quot.YN ');
      sql.Add('From (  Select ''CDC'' as GSBH,Flex.cldhflex,FLEXs.cldhflexdes,Flex.cldh,ywpm,zsywjc ');
      sql.Add('        From CLZL_FLEX FLEX ');
      sql.Add('        Left join CLZL_FLEXs FLEXs on FLEX.cldhflex=FLEXs.cldhflex ');
      sql.Add('        Left join CLZL on Flex.cldh=CLZL.cldh ');
      sql.Add('        Left join ZSZL on CLZL.ZSDH=ZSZL.zsdh ');
      sql.Add('        Where Flex.cldhflex <> '''' ');
      sql.Add('        Union All ');
      sql.Add('        Select ''CBY'' as GSBH,Flex.cldhflex,FLEXs.cldhflexdes,Flex.cldh,ywpm,zsywjc ');
      sql.Add('        From CLZL_FLEX FLEX ');
      sql.Add('        Left join CLZL_FLEXs FLEXs on FLEX.cldhflex=FLEXs.cldhflex ');
      sql.Add('        Left join CLZL on Flex.cldh=CLZL.cldh ');
      sql.Add('        Left join ZSZL on CLZL.ZSDH=ZSZL.zsdh ');
      sql.Add('       Where Flex.cldhflex <> '''' ) FLEX ');
      sql.Add('Left join CLZL_FLEX_Quot Quot on FLEX.GSBH=Quot.GSBH and FLEX.cldhflex=Quot.cldhflex ');
      sql.Add('Where 1=1');
      if Edit1.Text <> '' then
        sql.Add(' and Flex.cldhflex like ''%'+Edit1.Text+'%'' ');
      if Edit2.Text <> '' then
        sql.Add(' and Flex.cldh like '''+Edit2.Text+'%'' ');
      if Edit4.Text <> '' then
        sql.Add(' and Flex.ywpm like ''%'+Edit4.Text+'%'' ');
      if Edit3.Text <> '' then
        sql.Add(' and Flex.zsywjc like ''%'+Edit3.Text+'%'' ');
      if check.Checked=true then
        sql.Add(' and Quot.UserID='''+main.Edit1.Text+''' ');
    end else
    begin
      sql.Add('Select FLEX.*,Quot.QuotFile,Quot.Memo,Quot.SignDate,Quot.ValidDate,Quot.UserID,Quot.UserDate,Quot.YN ');
      sql.Add('From (  Select '''+CB1.Text+''' as GSBH,Flex.cldhflex,FLEXs.cldhflexdes,Flex.cldh,ywpm,zsywjc ');
      sql.Add('        From CLZL_FLEX FLEX ');
      sql.Add('        Left join CLZL_FLEXs FLEXs on FLEX.cldhflex=FLEXs.cldhflex ');
      sql.Add('        Left join CLZL on Flex.cldh=CLZL.cldh ');
      sql.Add('        Left join ZSZL on CLZL.ZSDH=ZSZL.zsdh ');
      sql.Add('        Where Flex.cldhflex <> '''' ');
      sql.Add('     ) FLEX ');
      sql.Add('Left join CLZL_FLEX_Quot Quot on FLEX.GSBH=Quot.GSBH and FLEX.cldhflex=Quot.cldhflex ');
      sql.Add('Where 1=1');
      if Edit1.Text <> '' then
        sql.Add(' and Flex.cldhflex like ''%'+Edit1.Text+'%'' ');
      if Edit2.Text <> '' then
        sql.Add(' and Flex.cldh like '''+Edit2.Text+'%'' ');
      if Edit4.Text <> '' then
        sql.Add(' and Flex.ywpm like ''%'+Edit4.Text+'%'' ');
      if Edit3.Text <> '' then
        sql.Add(' and Flex.zsywjc like ''%'+Edit3.Text+'%'' ');
      if check.Checked=true then
        sql.Add(' and Quot.UserID='''+main.Edit1.Text+''' ');
    end;
    active:=true;
  end;
  if query1.RecordCount >0 then
  begin
    BB4.Enabled:=true;
    btnExcel.Enabled:=true;
  end;
end;

procedure TPaymentQuotation.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGridEh1.columns[5].ButtonStyle:=cbsEllipsis;
end;

procedure TPaymentQuotation.BB5Click(Sender: TObject);
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
    DBGridEh1.columns[5].ButtonStyle:=cbsNone;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TPaymentQuotation.BB6Click(Sender: TObject);
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
  DBGridEh1.columns[5].ButtonStyle:=cbsNone;
end;

procedure TPaymentQuotation.DBGridEh1DblClick(Sender: TObject);
begin
  if (DBGridEh1.SelectedField.FieldName = 'QuotFile') and (Query1.FieldByName('QuotFile').AsString <> '') and (BB5.Enabled = false) then
    ShellExecute(0, 'open', PChar(DCTFilePath + Query1.FieldByName('QuotFile').AsString), nil, nil, SW_Normal);
end;

procedure TPaymentQuotation.btnExcelClick(Sender: TObject);
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

procedure TPaymentQuotation.DownloadFile1Click(Sender: TObject);
begin
  if not Query1.FieldByName('QuotFile').IsNull then
  begin
    SaveDialog1.FileName := Query1.FieldByName('QuotFile').AsString;
    if not SaveDialog1.Execute then
      abort;

    try
       if trim(SaveDialog1.FileName)='' then
           SaveDialog1.FileName:= Query1.FieldByName('QuotFile').AsString;
        CopyFile(PChar(DCTFilePath+Query1.FieldByName('QuotFile').AsString), PChar(SaveDialog1.FileName), False);
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


procedure TPaymentQuotation.DBGridEh1Columns5EditButtonDown(
  Sender: TObject; TopButton: Boolean; var AutoRepeat, Handled: Boolean);
var DCTFileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    DCTFileName := ExtractFileName(OpenDialog1.FileName);
    if (FileExists(DCTFilePath + DCTFileName) = false) then
    begin
      Query1.FieldByName('QuotFile').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), true);
    end else
    begin
      if (MessageDlg('File ''' + DCTFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Query1.FieldByName('QuotFile').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), false);
      end
    end;
  end;
end;

procedure TPaymentQuotation.DeleteFile1Click(Sender: TObject);
begin
  if not Query1.FieldByName('QuotFile').IsNull then
  begin
    if Application.MessageBox('Do you want to delete file?','Delete File',MB_YESNO) = IDNo then
      abort;

    try
        DeleteFile(DCTFilePath+Query1.FieldByName('QuotFile').AsString);
        if FileExists(DCTFilePath+Query1.FieldByName('QuotFile').AsString) then
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
       SQL.Add('UPDATE CLZL_FLEX_Quot');
       SQL.Add('SET QuotFile = NULL,');
       SQL.Add('    UserDate =GETDATE(),');
       SQL.Add('	  UserID ='''+main.Edit1.Text+''' ');
       SQL.Add('WHERE cldhflex='''+Query1.FieldByName('cldhflex').AsString+''' ');
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
