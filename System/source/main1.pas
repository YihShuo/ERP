unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, DB, DBTables;

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    Image1: TImage;
    Edit1: TEdit;
    SN1: TMenuItem;
    SN2: TMenuItem;
    Query1: TQuery;
    SN3: TMenuItem;
    SN4: TMenuItem;
    SN41: TMenuItem;
    SN42: TMenuItem;
    SN5: TMenuItem;
    SN6: TMenuItem;
    SN61: TMenuItem;
    SN7: TMenuItem;
    SN71: TMenuItem;
    procedure SN14Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN1Click(Sender: TObject);
    procedure SN2Click(Sender: TObject);
    procedure SN3Click(Sender: TObject);
    procedure SN41Click(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure SN5Click(Sender: TObject);
    procedure SN61Click(Sender: TObject);
    procedure SN71Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  main: Tmain;
  suser, spwd: string;

implementation

uses SysUser1, limit1, Lock1, Switch1, CopyLimit1, UILanguages1, Unit1,
  themma, DataSQ1;

{$R *.dfm}

procedure Tmain.SN14Click(Sender: TObject);
begin
  close;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  sline: string;
  textvar: textfile;
begin
  if main.ActiveMDIChild <> nil  then
  begin
    Messagedlg('Pls close all child form first.', mtwarning, [mbOK], 0);
    action := canone;
  end
  else begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('update Busers set LASTDATETIME=getdate()' ) ;
      sql.add('where USERID='+''''+edit1.Text+'''' );
      execsql;
    end;
    action := cafree;
    {assignfile(textvar,extractfilepath(application.ExeName)+'user.txt');
    rewrite(textvar);
    closefile(textvar);}
  end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var
  y, m, d: word;
  sline: string;
  textvar: textfile;
begin
  //指定BDE路徑
  Session.NetFileDir := ExtractFileDir(Application.ExeName);
  assignfile(textvar,extractfilepath(application.ExeName)+'user.txt');
  reset(textvar);
  readln(textvar,sline);
  if length(sline)<2 then
  begin
    showmessage('Wrong program. Pls run the main program first.');
    closefile(textvar);
    application.Terminate;
  end
  else begin
    suser:=copy(sline,0,pos('=',sline)-1);
    spwd:=copy(sline,pos('=',sline)+1,maxint);
    image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');
  end;
  closefile(textvar);
  edit1.Text := suser;

  //根據用戶名稱確定權限
  query1.Params.Items[0].AsString := suser;
  query1.Params.Items[1].AsString := '01' ;
  query1.Active := true;

  if query1.Locate('FORMID','SN2',[]) then SN2.enabled := true;
  if query1.Locate('FORMID','SN1',[]) then SN1.enabled := true;
  if query1.Locate('FORMID','SN3',[]) then SN3.enabled := true;
  if query1.Locate('FORMID','SN4',[]) then SN4.enabled := true;
  if query1.Locate('FORMID','SN41',[]) then SN41.enabled := true;
  if query1.Locate('FORMID','SN42',[]) then SN42.enabled := true;
  if query1.Locate('FORMID','SN5',[]) then SN5.enabled := true;
  if query1.Locate('FORMID','SN6',[]) then SN6.enabled := true;
  if query1.Locate('FORMID','SN61',[]) then SN61.enabled := true;
  if query1.Locate('FORMID','SN71',[]) then SN71.enabled := true;

  query1.active:=false;
end;

procedure Tmain.SN1Click(Sender: TObject);
begin
  if SysUser <> nil then
  begin
    SysUser.Show;
    SysUser.WindowState := wsMaximized;
  end
  else begin
    SysUser := TSysUser.Create(Self);
    SysUser.Show;
  end;
end;

procedure Tmain.SN2Click(Sender: TObject);
begin
  if limit <> nil then
  begin
    limit.Show;
    limit.WindowState := wsMaximized;
  end
  else begin
    limit := Tlimit.Create(Self);
    limit.Show;
  end;
end;

procedure Tmain.SN3Click(Sender: TObject);
begin
  if Lock <> nil then
  begin
    Lock.Show;
    Lock.WindowState := wsMaximized;
  end
  else begin
    Lock := TLock.Create(Self);
    Lock.Show;
  end;
end;

procedure Tmain.SN41Click(Sender: TObject);
begin  
  if CopyLimit <> nil then
  begin
    CopyLimit.Show;
    CopyLimit.WindowState := wsMaximized;
  end
  else begin
    CopyLimit := TCopyLimit.Create(Self);
    CopyLimit.Show;
  end;
end;

procedure Tmain.SN42Click(Sender: TObject);
begin   
  if Switch <> nil then
  begin
    Switch.Show;
    Switch.WindowState := wsMaximized;
  end
  else begin
    Switch := TSwitch.Create(Self);
    Switch.Show;
  end;
end;

procedure Tmain.SN5Click(Sender: TObject);
begin
  if UILanguages <> nil then
  begin
    UILanguages.Show;
    UILanguages.WindowState := wsMaximized;
  end
  else begin
    UILanguages := TUILanguages.Create(Self);
    UILanguages.Show;
  end;
end;

procedure Tmain.SN61Click(Sender: TObject);
begin
  if Giathanhthieuvattu <> nil then
  begin
    Giathanhthieuvattu.Show;
    Giathanhthieuvattu.WindowState := wsMaximized;
  end
  else begin
    Giathanhthieuvattu := TGiathanhthieuvattu.Create(Self);
    Giathanhthieuvattu.Show;
  end;
end;
procedure Tmain.SN71Click(Sender: TObject);
begin
  if DataSQ <> nil then
  begin
    DataSQ.Show;
    DataSQ.WindowState := wsMaximized;
  end
  else begin
    DataSQ := TDataSQ.Create(Self);
    DataSQ.Show;
  end;
end;
end.
