unit ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, Buttons,ShellApi, jpeg, DB, DBTables, DBCtrls;

type
  TLOGIN = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Bevel1: TBevel;
    label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;        
    Label5: TLabel;
    Edit2: TEdit;
    btnOK: TButton;
    Timer1: TTimer;
    Bevel2: TBevel;
    Edit3: TEdit;
    Image2: TImage;
    Label1: TLabel;
    Table1: TTable;
    Label6: TLabel;
    Edit4: TEdit;
    Table1USERID: TStringField;
    Table1USERNAME: TStringField;
    Table1PWD: TStringField;
    Label7: TLabel;
    ComboBox1: TComboBox;
    procedure Timer1Timer(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
   
  end;

var
login:Tlogin;

implementation


{$R *.dfm}

procedure TLOGIN.Timer1Timer(Sender: TObject);
begin
Label2.Caption:=formatdatetime('HH:mm:SS',time);
label3.Caption:=formatdatetime('yyyy/MM/dd',date);
end;

procedure TLOGIN.btnOKClick(Sender: TObject);
var y,m,d:word;
var uid:string;
var filevar1:textfile;
sline1:string;
fl:THandle;
begin
  if Combobox1.text='' then
  begin
    showmessage('Pls select Company first.');
    abort;
  end;

  decodedate(date,y,m,d);

  if table1.locate('UserID;PWD',vararrayof([edit1.text,edit2.text]),[loCaseInsensitive]) then
  begin

    //  login 檔案寫入
    if fileexists(extractfilepath(application.ExeName)+'\user.txt') then
    begin
      assignfile(filevar1,ExtractFilePath(Application.ExeName)+'user.txt');
      rewrite(filevar1);
      sline1:=login.edit1.Text+'='+login.edit2.text;
      writeln(filevar1, sline1);
      closefile(filevar1);

      assignfile(filevar1,ExtractFilePath(Application.ExeName)+'company.txt');
      rewrite(filevar1);
      sline1:=login.combobox1.text;
      writeln(filevar1, sline1);
      closefile(filevar1);
    end
    else
    begin
      fl:=filecreate(ExtractFilePath(Application.ExeName)+'user.txt');
      fileclose(fl);
      assignfile(filevar1,ExtractFilePath(Application.ExeName)+'user.txt');
      rewrite(filevar1);
      sline1:=login.edit1.Text+'='+login.edit2.text;
      writeln(filevar1, sline1);
      closefile(filevar1);

      fl:=filecreate(ExtractFilePath(Application.ExeName)+'company.txt');
      fileclose(fl);
      assignfile(filevar1,ExtractFilePath(Application.ExeName)+'company.txt');
      rewrite(filevar1);
      sline1:=login.combobox1.text;
      writeln(filevar1, sline1);
      closefile(filevar1);
    end;

    // 執行 Rfactory 表單
    if fileexists(extractfilepath(application.ExeName)+'Rfactory.exe') then
    begin
      ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Rfactory.exe'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
       // close;
    end
    else
    begin
      showmessage('Pls setup the program first. Abort');
    end;

    hide;
  end
  else
  begin
    showmessage('You key in the wrong user name or password.'+#13+'Pls try again');
    edit3.Text:=inttostr(strtoint(edit3.Text)+1);
    edit1.setfocus;
  end;

  if strtoint(edit3.Text)>=3 then
  begin
    showmessage('More than 3 times.'+#13+'Abort.');
    close;
  end;

end;

procedure TLOGIN.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if edit1.text='' then
  begin
    edit1.SetFocus;
    abort;
  end;

  if key=#13 then
    btnOKclick(nil);
end;

procedure TLOGIN.FormCreate(Sender: TObject);
begin

  shortdateformat:='yyyy/MM/dd';
  if findwindow('','Rfactory.exe')>0   then
      showmessage('已經運行行！！');
  image1.Picture.loadfromfile(ExtractFilePath(Application.ExeName)+'login.jpg');

  //指定BDE路徑
  Session.NetFileDir := ExtractFileDir(Application.ExeName);
end;

procedure TLOGIN.Edit2Enter(Sender: TObject);
begin
if edit1.text='' then
  edit1.SetFocus;
end;

procedure TLOGIN.Edit1Exit(Sender: TObject);
begin
    table1.Active:=true;
    if table1.Locate('UserID',trim(edit1.Text),[]) then
      begin
        edit4.Text:=table1.fieldbyname('UserName').AsString;
      end
      else
      begin
        messagedlg('No UserID. Pls key in again.',mtwarning,[mbOK],0);
        //edit1.SetFocus;
      end;
end;

procedure TLOGIN.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Combobox1.text='' then
  begin
    showmessage('Pls select Company first.');
    abort;
  end;

  if key=#13 then
  begin
    table1.Active:=true;
    if table1.Locate('UserID',trim(edit1.Text),[]) then
      begin
        edit4.Text:=table1.fieldbyname('UserName').AsString;
        edit2.SetFocus;
      end
      else
      begin
        messagedlg('No UserID. Pls key in again.',mtwarning,[mbOK],0);
        edit1.SetFocus;
      end;
  end;
end;


end.
