unit frmStockFile1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, StdCtrls, DB, DBTables, Menus, Registry,
  ShellAPI,IniFiles;

type
  TfrmStockFile = class(TForm)
    Panel1: TPanel;
    lblYear: TLabel;
    lblMonth: TLabel;
    DB_KCCLMONTHAC: TDBGridEh;
    Splitter1: TSplitter;
    DB_KCCLMONTH_File: TDBGridEh;
    Qry_KCCLMONTHAC: TQuery;
    DS_KCCLMONTHAC: TDataSource;
    DS_KCCLMONTH_File: TDataSource;
    Qry_KCCLMONTH_File: TQuery;
    Qry_KCCLMONTHACKCYEAR: TStringField;
    Qry_KCCLMONTHACKCMONTH: TStringField;
    Qry_KCCLMONTHACCKBH: TStringField;
    Qry_KCCLMONTH_FileKCYear: TStringField;
    Qry_KCCLMONTH_FileKCMonth: TStringField;
    Qry_KCCLMONTH_FileCKBH: TStringField;
    Qry_KCCLMONTH_FileID: TIntegerField;
    Qry_KCCLMONTH_FileFileName: TStringField;
    Qry_KCCLMONTH_FileProcContent: TStringField;
    Qry_KCCLMONTH_FileRemark: TStringField;
    Qry_KCCLMONTH_FileUserID: TStringField;
    Qry_KCCLMONTH_FileUserDate: TDateTimeField;
    Qry_KCCLMONTH_FileYN: TStringField;
    Up_KCCLMONTH_File: TUpdateSQL;
    Pop_KCCLMONTH_File: TPopupMenu;
    mniIns_File: TMenuItem;
    mniDel_File: TMenuItem;
    mniSav_File: TMenuItem;
    mniCan_File: TMenuItem;
    mniMod_File: TMenuItem;
    Qry_Temp: TQuery;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Qry_KCCLMONTHACHGLB: TStringField;
    Qry_KCCLMONTH_FileHGLB: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure mniIns_FileClick(Sender: TObject);
    procedure mniMod_FileClick(Sender: TObject);
    procedure mniDel_FileClick(Sender: TObject);
    procedure mniCan_FileClick(Sender: TObject);
    procedure Qry_KCCLMONTHACAfterOpen(DataSet: TDataSet);
    procedure Qry_KCCLMONTHACBeforeClose(DataSet: TDataSet);
    procedure Pop_KCCLMONTH_FilePopup(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DB_KCCLMONTH_FileGetCellParams(Sender: TObject;
      Column: TColumnEh; AFont: TFont; var Background: TColor;
      State: TGridDrawState);
    procedure DB_KCCLMONTH_FileColumns3EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure mniSav_FileClick(Sender: TObject);
    procedure DB_KCCLMONTH_FileDblClick(Sender: TObject);
  private
    FilePath:string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  frmStockFile: TfrmStockFile;
  KCYear, KCMonth: String;
  IPFile,FileAddress,UserLog,PassLog: String;

implementation
uses main1,AnyStock1;

{$R *.dfm}
procedure TfrmStockFile.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  FilePath := '\\192.168.123.112\Stock\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      FilePath:=MyIni.ReadString('DCT','Warehouse_N37_FilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;


procedure TfrmStockFile.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TfrmStockFile.FormDestroy(Sender: TObject);
begin
  frmStockFile:=nil;
end;

procedure TfrmStockFile.mniIns_FileClick(Sender: TObject);
begin
  with Qry_KCCLMONTH_File do
  begin
    RequestLive:=True;
    CachedUpdates:=True;
    Insert;
  end;
  mniSav_File.Enabled:=true;
  mniCan_File.Enabled:=true;
  DB_KCCLMONTH_File.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TfrmStockFile.mniMod_FileClick(Sender: TObject);
begin
  with Qry_KCCLMONTH_File do
  begin
    RequestLive:=True;
    CachedUpdates:=True;
    Edit;
  end;
  mniSav_File.Enabled:=true;
  mniCan_File.Enabled:=true;
  DB_KCCLMONTH_File.columns[3].ButtonStyle:=cbsEllipsis;
end;

procedure TfrmStockFile.mniDel_FileClick(Sender: TObject);
begin
  with Qry_KCCLMONTH_File do
  begin
    RequestLive:=True;
    CachedUpdates:=True;
    Edit;
    FieldByName('YN').AsString:='0';
  end;
  mniSav_File.Enabled:=true;
  mniCan_File.Enabled:=true;
end;

procedure TfrmStockFile.mniCan_FileClick(Sender: TObject);
begin
  with Qry_KCCLMONTH_File do
  begin
    Close;
    RequestLive:=False;
    CachedUpdates:=False;
    Open;
  end;
  mniSav_File.Enabled:=false;
  mniCan_File.Enabled:=false;
end;

procedure TfrmStockFile.Qry_KCCLMONTHACAfterOpen(DataSet: TDataSet);
begin
  if Qry_KCCLMONTHAC.RecordCount>0 then
    Qry_KCCLMONTH_File.Open;
end;

procedure TfrmStockFile.Qry_KCCLMONTHACBeforeClose(DataSet: TDataSet);
begin
  Qry_KCCLMONTH_File.Close;
end;

procedure TfrmStockFile.Pop_KCCLMONTH_FilePopup(Sender: TObject);
begin
  mniIns_File.Enabled:=False;
  mniMod_File.Enabled:=False;
  mniDel_File.Enabled:=False;
  mniSav_File.Enabled:=False;
  mniCan_File.Enabled:=False;
  if Qry_KCCLMONTH_File.Active then
  begin
    mniIns_File.Enabled:=True;
    if Qry_KCCLMONTH_File.RecordCount>0 then
    begin
      mniMod_File.Enabled:=True;
      mniDel_File.Enabled:=True;
      if not Qry_KCCLMONTH_File.RequestLive then
      begin

      end;
    end;
    if Qry_KCCLMONTH_File.RequestLive then
    begin
      mniSav_File.Enabled:=True;
      mniCan_File.Enabled:=True;
    end;
  end;
end;

procedure TfrmStockFile.FormCreate(Sender: TObject);
begin
  lblYear.Caption:='Year: '+KCYear;
  lblMonth.Caption:='Month: '+KCMonth;
  with Qry_KCCLMONTHAC do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT kac.KCYEAR, kac.KCMONTH, kac.CKBH, kac.HGLB');
    SQL.Add('FROM KCCLMONTH_AC kac ');
    SQL.Add('WHERE kac.KCYEAR='''+KCYear+''' AND kac.KCMONTH='''+KCMonth+''' AND kac.CKBH='''+AnyStock.CBX1.Text+''' ');
    Open;
  end;
  ReadIni();
end;

procedure TfrmStockFile.DB_KCCLMONTH_FileGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Qry_KCCLMONTH_File.FieldByName('YN').AsString='0' then
    AFont.Color:=clRed;
end;

procedure TfrmStockFile.DB_KCCLMONTH_FileColumns3EditButtonClick(
  Sender: TObject; var Handled: Boolean);
var FileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    FileName := ExtractFileName(OpenDialog1.FileName);
    if (FileExists(FilePath + FileName) = false) then
    begin
      Qry_KCCLMONTH_File.FieldByName('FileName').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(FilePath + FileName), true);
    end else
    begin
      if (MessageDlg('File ''' + FileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        Qry_KCCLMONTH_File.FieldByName('FileName').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(FilePath + FileName), false);
      end
    end;
  end;
end;

procedure TfrmStockFile.mniSav_FileClick(Sender: TObject);
begin
  try
    with Qry_KCCLMONTH_File do
    begin
      First;
      while not Eof do
      begin
        if (UpdateStatus=usInserted) or ((UpdateStatus=usModified) and (FieldByName('YN').AsString<>'0')) then
        begin
          if FieldByName('ProcContent').AsString='' then
          begin
            ShowMessage('Process Content can not empty!');
            Exit;
          end;
        end;
        case UpdateStatus of
          usInserted:
          begin
            with Qry_Temp do
            begin
              Close;
              SQL.Clear;
              SQL.Add('SELECT ISNULL(MAX(ID),0)+1 ID FROM KCCLMONTH_File');
              SQL.Add('WHERE KCYear='''+Qry_KCCLMONTHAC.FieldByName('KCYear').AsString+''' AND KCMonth='''+Qry_KCCLMONTHAC.FieldByName('KCMonth').AsString+'''');
              SQL.Add('      AND CKBH='''+Qry_KCCLMONTHAC.FieldByName('CKBH').AsString+''' and HGLB='''+Qry_KCCLMONTHAC.FieldByName('HGLB').AsString+''' ');
              Open;
            end;
            Edit;
            FieldByName('KCYear').AsString:=Qry_KCCLMONTHAC.FieldByName('KCYear').AsString;
            FieldByName('KCMonth').AsString:=Qry_KCCLMONTHAC.FieldByName('KCMonth').AsString;
            FieldByName('CKBH').AsString:=Qry_KCCLMONTHAC.FieldByName('CKBH').AsString;
            FieldByName('HGLB').AsString:=Qry_KCCLMONTHAC.FieldByName('HGLB').AsString;
            FieldByName('ID').AsString:=Qry_Temp.FieldByName('ID').AsString;
            FieldByName('UserID').AsString:=main.Edit1.Text;
            Up_KCCLMONTH_File.Apply(ukInsert);
          end;
          usModified:
          begin
            if FieldByName('YN').AsString='0' then
            begin
              Up_KCCLMONTH_File.Apply(ukDelete);
            end else
            begin
              Edit;
              FieldByName('UserID').AsString:=main.Edit1.Text;
              Up_KCCLMONTH_File.Apply(ukModify);
            end;
          end;
        end;
        Next;
      end;
      Close;
      RequestLive:=False;
      CachedUpdates:=False;
      Open;
    end;
    mniSav_File.Enabled:=false;
    mniCan_File.Enabled:=false;
  except
    on E: Exception do
      ShowMessage('Have wrong! Can not save data!'+#13+E.Message);
  end;
end;

procedure TfrmStockFile.DB_KCCLMONTH_FileDblClick(Sender: TObject);
begin
  if (DB_KCCLMONTH_File.SelectedField.FieldName = 'FileName') and (Qry_KCCLMONTH_File.FieldByName('FileName').AsString <> '') and (mniSav_File.Enabled = false) then
    ShellExecute(0, 'open', PChar(FilePath + Qry_KCCLMONTH_File.FieldByName('FileName').AsString), nil, nil, SW_Normal);
end;

end.
