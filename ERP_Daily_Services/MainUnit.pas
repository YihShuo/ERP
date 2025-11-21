unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,ShellAPI, DB, ADODB, ExtCtrls, Menus,ServicesUnit,IniFiles;
const
  WM_TRAYICON = WM_APP + 0;
 //執行緒
 type
 Tthreadexample=class(TThread)
 public
 procedure execute;override;
 procedure GiveAnswer;
 end;
type
  TMainForm = class(TForm)
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ADOConn: TADOConnection;
    ADOQuery: TADOQuery;
    ExeQuery: TADOQuery;
    procedure N3Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClforose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
  private
    DBIP:string;
    ExeTime:String;
    { Private declarations }
    procedure ReadIni();
    procedure CopyDDZL_XXZLData();
  public
    procedure AddPaoServiceIcon(Action: DWORD);
    procedure WMTrayIcon(var message: TMessage);  message WM_TRAYICON;
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  IconData:TNotifyIconData ;
  IconShowint:integer;//ICON顯示秒數
implementation
  uses FunUnit;
{$R *.dfm}
procedure Tthreadexample.Execute;
begin
  {要執行的...事件  button1.click1中加入  var obj:Tthreadexample obj:=Tthreadexample.create(false);  即可    }
  Synchronize(GiveAnswer); // 宣告完成
end;

procedure Tthreadexample.GiveAnswer;
begin

end;
//
procedure TMainForm.ReadIni();
var ini:TiniFile;
begin
  try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Setting.ini');
    DBIP:=ini.ReadString('DB','IP','127.0.0.1');
    ExeTime:=ini.ReadString('Setting','ExeTime','');
    ADOCOnn.ConnectionString:='Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;User ID=sa;Initial Catalog=LIY_ERP;Data Source='+DBIP;
    
  Finally
    ini.Free;
  end;
end;
//
procedure TMainForm.AddPaoServiceIcon(Action: DWORD);

begin
   ZeroMemory(@IconData, sizeof(TNOTIFYICONDATA));
   IconData.cbSize:=sizeof(TNOTIFYICONDATA);
   IconData.Wnd:=Handle;
   IconData.uID:=1;
   IconData.uFlags := NIF_MESSAGE or NIF_ICON or NIF_TIP;
   IconData.uCallbackMessage:=WM_TRAYICON;
   IconData.hIcon:=application.Icon.Handle;
   StrPCopy(IconData.szTip,application.Title);
   Shell_NotifyIcon(Action, @IconData);
end;
procedure TMainForm.WMTrayIcon(var message: TMessage);
var MousePos:Tpoint;
begin
  if message.LPARAM = WM_RBUTTONDOWN then
  begin
    SetActiveWindow(Handle);
    GetCursorPos(MousePos);
    PopupMenu1.Popup(MousePos.X, MousePos.Y);
  end;
end;
procedure TMainForm.FormDestroy(Sender: TObject);
begin
  AddPaoServiceIcon(NIM_DELETE);
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if(CanClose<>true) then
   begin
      Hide();
   end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  AddPaoServiceIcon(NIM_ADD);
  FuncObj:=TFuncObj.Create;
  FuncObj.setParameter(true,ExtractFilePath(Application.ExeName));
  ReadIni();

end;

procedure TMainForm.FormClforose(Sender: TObject; var Action: TCloseAction);
begin
  MainForm.Hide();
  FuncObj.Free;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
 Timer1.Enabled:=false;
 if IconShowint<900 then
 begin
   AddPaoServiceIcon(NIM_ADD);
   IconShowint:=IconShowint+1;
 end;
 //
 if ExeTime=FormatDateTime('HH:NN:SS',Time()) then
 begin
   CopyDDZL_XXZLData();
 end;
 Timer1.Enabled:=true;
end;

procedure TMainForm.N1Click(Sender: TObject);
begin
  MainForm.Show;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  MainForm.Hide;
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
  ServiceModule.ServiceShutdown(ServiceModule);
end;
//
procedure TMainForm.CopyDDZL_XXZLData();
var i:integer;
begin
  //
  try
  ADOQuery.Active:=false;
  ADOQuery.SQL.Clear;
  ADOQuery.SQL.Add('Select DDZL.DDBH,DDZL.XieXing,DDZL.SheHao from DDZL ');
  ADOQuery.SQL.Add('Left join KCLL on KCLL.SCBH=DDZL.DDBH ');
  ADOQuery.SQL.Add('where DDZL.YN=2  and DDZL.DDBH not in (select DDBH from DDZL_XXZL) ');
  ADOQuery.SQL.Add('Group by DDBH,XieXing,SheHao ');
  ADOQuery.Active:=true;
  if ADOQuery.RecordCount>0 then
  begin
    funcObj.WriteErrorLog(Datetimetostr(now)+' start');
    for i:=0 to ADOQuery.RecordCount-1 do
    begin
      //DDZL_XXZL
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DDZL_XXZL where DDZL_XXZL.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and DDZL_XXZL.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' and DDZL_XXZL.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+''' ');
        SQL.Add('Insert into DDZL_XXZL ');
        SQL.Add('Select '''+ADOQuery.FieldByname('DDBH').Asstring+''',*,GetDate() from XXZL where XXZL.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and XXZL.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' ');
        ExeQuery.ExecSQL();
      end;
      //DDZL_XXZLS
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DDZL_XXZLS where DDZL_XXZLS.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and DDZL_XXZLS.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' and DDZL_XXZLS.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+'''  ');
        SQL.Add('Insert into DDZL_XXZLS ');
        SQL.Add('Select '''+ADOQuery.FieldByname('DDBH').Asstring+''',*,GetDate() from XXZLS where XXZLS.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and XXZLS.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' ');
        ExeQuery.ExecSQL();
      end;
      //DDZL_xtbwyl
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DDZL_xtbwyl where DDZL_xtbwyl.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and DDZL_xtbwyl.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' and DDZL_xtbwyl.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+'''  ');
        SQL.Add('Insert into DDZL_xtbwyl ');
        SQL.Add('Select '''+ADOQuery.FieldByname('DDBH').Asstring+''',*,GetDate() from xtbwyl where xtbwyl.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and xtbwyl.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' ');
        ExeQuery.ExecSQL();
      end;
      //DDZL_xtbwyl1
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DDZL_xtbwyl1 where DDZL_xtbwyl1.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and DDZL_xtbwyl1.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' and DDZL_xtbwyl1.DDBH='''+ADOQuery.FieldByname('DDBH').Asstring+'''  ');
        SQL.Add('Insert into DDZL_xtbwyl1 ');
        SQL.Add('Select '''+ADOQuery.FieldByname('DDBH').Asstring+''',*,GetDate() from xtbwyl1 where xtbwyl1.XieXing='''+ADOQuery.FieldByname('XieXing').Asstring+''' and xtbwyl1.SheHao='''+ADOQuery.FieldByname('SheHao').Asstring+''' ');
        ExeQuery.ExecSQL();
      end;
      //DDZL_zlzls2
      with ExeQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from DDZL_zlzls2 where DDZL_zlzls2.ZLBH='''+ADOQuery.FieldByname('DDBH').Asstring+''' ');
        SQL.Add('Insert into DDZL_zlzls2 ');
        SQL.Add('Select * from zlzls2 where zlzls2.ZLBH='''+ADOQuery.FieldByname('DDBH').Asstring+''' ');
        ExeQuery.ExecSQL();
      end;
      //
      funcObj.WriteErrorLog(datetimetostr(now)+' Order No:'+ADOQuery.FieldByname('DDBH').Asstring);
      ADOQuery.Next;
    end;
    funcObj.WriteErrorLog(Datetimetostr(now)+' ending');
  end else
  begin
    funcObj.WriteErrorLog(Datetimetostr(now)+' No Order, ending.');
  end;
  ADOQuery.Active;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' '+E.Message);
    end;
  end;
  //
end;
//
end.
