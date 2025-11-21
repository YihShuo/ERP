unit Commit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl, ExtCtrls, DB, DBTables, ADODB, IdGlobal,inifiles;

type
  TCommit = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Memo1: TMemo;
    Query1: TADOQuery;
    Query1FilePath: TStringField;
    Query1UpdateTime: TStringField;
    Query1FileStream: TBlobField;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    OpenDialog1: TOpenDialog;
    ADOConn: TADOConnection;
    procedure Panel1Click(Sender: TObject);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Commit: TCommit;

implementation

{$R *.dfm}
procedure TCommit.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ERPCommit.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ERPCommit.ini');
      DBIP:=MyIni.ReadString('DB','IP','192.168.23.9');
      DBUser:=MyIni.ReadString('DB','User','sa');
      DBPass:=MyIni.ReadString('DB','Pass','tyx');
      DBName:=MyIni.ReadString('DB','DBName','LIY_TYXUAN');
      //
      ADOConn.ConnectionString:='Provider=SQLOLEDB.1;Password='+DBPass+';Persist Security Info=True;User ID='+DBUser+';Initial Catalog='+DBName+';Data Source='+DBIP;
      //
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TCommit.Panel1Click(Sender: TObject);
var
  i: Integer;
  Position: Integer;
  FileName: String;
  FilePath: String;
  UpdateTime: String;
  FileSize: String;
  FolderPath: String;
begin
  for i := 0 to Memo1.Lines.Count -1 do
  begin
    FilePath := Memo1.Lines.Strings[i];
    Position := Pos('liy_erp', FilePath) + 8;
    FileName := ExtractFileName(FilePath);
    UpdateTime := FormatDateTime('yyyy-mm-dd hh:nn:ss',FileDateToDateTime(FileAge(FilePath))); //yyyy-mm-dd hh:nn:ss
    FileSize := IntToStr(FileSizeByName(FilePath));
    //FolderPath:=Extractfilepath(ExtractRelativePath(ExtractFilePath(Application.ExeName),FilePath)); //子目路上傳才會用到
    FolderPath:='';//
    try
      Memo1.Lines.Strings[i] := FilePath + '..........Uploading';
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('SELECT * FROM ERP_FileList WHERE FileName = ''' + FileName + '''');
      Query1.Open;
      if Query1.IsEmpty then
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('INSERT INTO ERP_FileList(FileName, FilePath, FolderPath, UpdateTime, FileStream, FileSize)');
        Query1.SQL.Add('VALUES(''' + FileName + ''', ''' + FilePath + ''','''+FolderPath+''', ''' + UpdateTime + ''', :FileStream, ''' + FileSize + ''')');
        Query1.Parameters.ParamByName('FileStream').LoadFromFile(FilePath,ftBlob);
        Query1.ExecSQL;
      end
      else
      begin
        Query1.Close;
        Query1.SQL.Clear;
        Query1.SQL.Add('UPDATE ERP_FileList SET UpdateTime = ''' + UpdateTime + ''',FilePath='''+FilePath+''',FolderPath='''+FolderPath+''', FileStream = :FileStream, FileSize = ''' + FileSize + '''');
        Query1.SQL.Add('WHERE FileName = ''' + FileName + '''');
        Query1.Parameters.ParamByName('FileStream').LoadFromFile(FilePath,ftBlob);
        Query1.ExecSQL;
      end;
    finally
      Query1.Close;
      Memo1.Lines.Strings[i] := FilePath + '..........OK';
    end;
  end;
  Memo1.Lines.Add('---------------------------------------------------------------------------------------------------------------------------------------------');
  Memo1.Lines.Add('匯入資料庫完成');
end;
 
procedure TCommit.Panel4Click(Sender: TObject);
var
  i: Integer;
begin
  OpenDialog1.InitialDir := ExtractFilePath(Application.Exename);
  if OpenDialog1.Execute then
  begin
    Memo1.Clear;
    for i := 0 to OpenDialog1.Files.Count -1 do
    begin
      Memo1.Lines.Add(OpenDialog1.Files.Strings[i]);
    end;
  end;
end;

procedure TCommit.Panel5Click(Sender: TObject);
begin
  //清空資料庫
  if messagedlg('Do you want Delete All Program ?',mtCustom,[mbYes,mbNo], 0)=mryes then
  begin
  try
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('TRUNCATE TABLE ERP_FileList');
    Query1.ExecSQL;
  finally
    showMessage('Success');
    Query1.Close;
  end;
  end;
end;

procedure TCommit.Panel1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel1.Color := clGray;
end;

procedure TCommit.Panel1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel1.Color := clSilver;
end;

procedure TCommit.Panel4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel4.Color := clGray;
end;

procedure TCommit.Panel4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel4.Color := clSilver;
end;

procedure TCommit.Panel5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.Color := clGray;
end;

procedure TCommit.Panel5MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Panel5.Color := clSilver;
end;

procedure TCommit.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

end.
