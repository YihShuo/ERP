unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, Buttons,ShellApi, DB, DBTables;
  {  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;}

type
  Tmain = class(TForm)
    Panel1: TPanel;
    MK02: TBitBtn;
    MK11: TBitBtn;
    MK08: TBitBtn;
    MK05: TBitBtn;
    MK03: TBitBtn;
    MK09: TBitBtn;
    MK13: TBitBtn;
    MK16: TBitBtn;
    MK06: TBitBtn;
    MK10: TBitBtn;
    MK18: TBitBtn;
    MK12: TBitBtn;
    MK04: TBitBtn;
    MK07: TBitBtn;
    MK15: TBitBtn;
    MK01: TBitBtn;
    Image1: TImage;
    Query1: TQuery;
    Edit1: TEdit;
    Edit2: TEdit;
    Qtemp: TQuery;
    PassBtn: TBitBtn;
    MK17: TBitBtn;
    MainMenu1: TMainMenu;
    ProductionBonus1: TMenuItem;
    MK20: TBitBtn;
    procedure SN11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MK16Click(Sender: TObject);
    procedure MK02Click(Sender: TObject);
    procedure MK04Click(Sender: TObject);
    procedure MK11Click(Sender: TObject);
    procedure MK03Click(Sender: TObject);
    procedure MK05Click(Sender: TObject);
    procedure MK01Click(Sender: TObject);
    procedure PassBtnClick(Sender: TObject);
    procedure MK06Click(Sender: TObject);
    procedure MK07Click(Sender: TObject);
    procedure MK08Click(Sender: TObject);
    procedure MK09Click(Sender: TObject);
    procedure MK10Click(Sender: TObject);
    procedure MK12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MK13Click(Sender: TObject);
    procedure MK18Click(Sender: TObject);
    procedure MK15Click(Sender: TObject);
    procedure MK17Click(Sender: TObject);
    procedure ProductionBonus1Click(Sender: TObject);
    procedure MK20Click(Sender: TObject);
  private
    { Private declarations } 
    function openexe: boolean;

  public
    LanguageID:string;
    { Public declarations }
    procedure FormLanguage(var formObj:Pointer;mainForm:string);
  end;

var
  main: Tmain;
   getdir:string;

implementation

uses ulogin, DM1, Password1,FunUnit;


{$R *.dfm}

function Tmain.openexe:boolean;
   function EnCrypt(OldStr:string):String;
   var ad,i:integer;
       sline,pp,tempstr:string;
   begin
      pp:=OldStr;
      ad:=dayofweek(now); //取得加密字元
      sline:=inttostr(ad);

      for i:=1 to (length(pp)) do //加密迴圈
      begin
        tempstr:=copy(pp,i,1);
        sline:=sline+chr(ord(tempstr[1])+ad+100);
      end;
      result:=sline;
   end;
var filevar1:textfile;
    sline1:string;
    fl:THandle;
begin
  if fileexists(extractfilepath(application.ExeName)+getdir+'\user.txt') then
  begin
    assignfile(filevar1,ExtractFilePath(Application.ExeName)+getdir+'user.txt');
    rewrite(filevar1);
    sline1:=login.edit1.Text+'='+EnCrypt(login.edit2.text);
    writeln(filevar1, sline1);
    closefile(filevar1);
    assignfile(filevar1,ExtractFilePath(Application.ExeName)+getdir+'company.txt');
    rewrite(filevar1);
    sline1:=login.combobox1.text;
    writeln(filevar1, sline1);
    sline1:=LanguageID;
    writeln(filevar1, sline1);
    closefile(filevar1);
  end else
  begin
      fl:=filecreate(ExtractFilePath(Application.ExeName)+getdir+'user.txt');
      fileclose(fl);
      assignfile(filevar1,ExtractFilePath(Application.ExeName)+getdir+'user.txt');
      rewrite(filevar1);
      sline1:=login.edit1.Text+'='+login.edit2.text;
      writeln(filevar1, sline1);
      closefile(filevar1);
  end;
  result:=true;
end;


procedure Tmain.SN11Click(Sender: TObject);
begin
  close;
end;

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  funcObj.Free;
  login.Close;
end;

procedure Tmain.MK16Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'shipping.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'shipping.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
       // close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;

end;

procedure Tmain.MK02Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'BOM.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'BOM.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
       // close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;

end;

procedure Tmain.MK04Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'Salary.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Salary.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
       // close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK11Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'Sale.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Sale.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
        //close;
    end else
    begin
      showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK03Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'production.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'production.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
       // close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK05Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'warehouse.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'warehouse.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
       // close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK01Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'systemit.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'systemit.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
        //close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.PassBtnClick(Sender: TObject);
begin
  Password:=TPassword.create(self);
  Password.show;
end;

procedure Tmain.MK06Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'Extra.exe') then
    begin
      ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Extra.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
       // close;
    end else
    begin
      showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK07Click(Sender: TObject);
var iRes:integer;
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'Develop.exe') then
    begin
      iRes:=ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Develop.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
      //close;
    end else
    begin
    
      showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK08Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'Purchase.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Purchase.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
        //close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK09Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'Plan.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Plan.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
        //close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK10Click(Sender: TObject);
begin 
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'Account.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Account.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
       // close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK12Click(Sender: TObject);
begin
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'Manage.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Manage.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
       // close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;

end;

procedure Tmain.FormShow(Sender: TObject);
var NDate:TDatetime;
    systemtime:TSystemTime;
    i:integer;
    num:string;
    tmpMK:TBitBtn;
    Obj:TObject;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    //showmessage(datetimetostr(NDate));
    active:=false;
    try
      DateTimeToSystemtime(NDate,systemtime);
      SetLocalTime(systemtime);
    except
     // showmessage('aaa');
    end;
  end;
  if fileExists(extractfilepath(application.ExeName)+'factory.jpg') then
    image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');

  with query1 do
  begin
    Params.Items[0].value:=edit1.text;
    Params.Items[1].value:=edit2.text;
    active:=true;
    for i:=1 to 20 do
    begin
      num:=Format('%.2d',[i]);
      Obj:=main.FindComponent('MK'+num);
      if Obj<>nil then
      begin
        if Obj is TBitBtn then
        begin
           //
           tmpMK := (Obj as TBitBtn);
           if query1.Locate('MKID',num,[]) then
             tmpMK.enabled:=true
           else
             tmpMK.Enabled:=false;
           //
           if query1.Locate('MKID',num,[]) then
           begin
             if Query1.FieldByName('IsShow').AsString='N' then
               tmpMK.Visible:=false;
           end;
           //
        end;
      end;
    end;
    active:=false;
    DM.DB1.connected:=false;
  end;
  main.FormLanguage(Pointer(self),TForm(self).Name);
end;

procedure Tmain.FormCreate(Sender: TObject);
begin
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,ExtractFilePath(Application.ExeName));
   //指定BDE路徑
  Session.NetFileDir := ExtractFileDir(Application.ExeName);
end;

procedure Tmain.MK13Click(Sender: TObject);
begin

  //getdir:='\Salary\';
  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'QC.exe') then
      begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'QC.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
        //close;
      end
      else
        begin
          showmessage('Pls setup the program first. Abort');
        end;
  end;
end;

procedure Tmain.MK18Click(Sender: TObject);
begin

  getdir:='';
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'Assets.exe') then
    begin
        ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Assets.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
        //close;
    end else
    begin
          showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.MK15Click(Sender: TObject);
begin
    if  openexe then
    begin
      if fileexists(extractfilepath(application.ExeName)+'Report.exe') then
      begin
          ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Report.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
      end else
      begin
          showmessage('Pls setup the program first. Abort');
      end;
    end;
end;

procedure Tmain.MK17Click(Sender: TObject);
begin
    if  openexe then
    begin
      if fileexists(extractfilepath(application.ExeName)+'Rubber.exe') then
      begin
          ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'Rubber.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
      end else
      begin
          showmessage('Pls setup the program first. Abort');
      end;
    end;
end;

procedure Tmain.MK20Click(Sender: TObject);
begin
  if openexe then
  begin
    if FileExists(ExtractFilePath(Application.ExeName) + 'CBY.exe') then
    begin
      ShellExecute(Handle, 'open', PChar(ExtractFilePath(Application.ExeName) + 'CBY.exe'), Nil, PChar(ExtractFilePath(Application.ExeName) + getdir), SW_SHOW);
    end else
    begin
      ShowMessage('Pls setup the program first. Abort');
    end;
  end;
end;

procedure Tmain.FormLanguage(var formObj:Pointer ;mainForm:string);
var i:integer;
    FieldLangeuage:String;
    //
    tmpLabel:TLabel;
    tmpButton:TButton;
    tmpMenuItem:TMenuItem;
    tmpCheckBox:TCheckBox;
    tmpRadioButton:TRadioButton;
    Obj:TObject;
begin
  if trim(LanguageID)<>'' then
  begin
    FieldLangeuage:='VCLName_'+LanguageID;
    with Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select VCLID,'+FieldLangeuage+' as Langeuage from BLanguage WHERE  MKID = ''00'' and mainForm='''+mainForm+''' ');
      funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
    for i:=0 to Qtemp.RecordCount-1 do
    begin
      if Qtemp.FieldByName('Langeuage').AsString<>'' then
      begin
        Obj:=TForm(formObj).FindComponent(Qtemp.FieldByName('VCLID').AsString);
        if Obj<>nil then
        begin
          if Obj is TLabel then
          begin
             tmpLabel := (Obj as TLabel);
             tmpLabel.Caption:=Qtemp.FieldByName('Langeuage').AsString;
          end;
          if Obj is TButton then
          begin
             tmpButton := (Obj as TButton);
             tmpButton.Caption:=Qtemp.FieldByName('Langeuage').AsString;
          end;
          if Obj is TMenuItem then
          begin
            tmpMenuItem := (Obj as TMenuItem);
            tmpMenuItem.Caption:=Qtemp.FieldByName('Langeuage').AsString;
          end;
          if Obj is TCheckBox then
          begin
            tmpCheckBox := (Obj as TCheckBox);
            tmpCheckBox.Caption:=Qtemp.FieldByName('Langeuage').AsString;
          end;
          if Obj is TRadioButton then
          begin
            tmpRadioButton := (Obj as TRadioButton);
            tmpRadioButton.Caption:=Qtemp.FieldByName('Langeuage').AsString;
          end;
        end;
      end;
      Qtemp.Next;
    end;
    //
    Qtemp.Active:=false;
  end;
end;


procedure Tmain.ProductionBonus1Click(Sender: TObject);
begin
  if  openexe then
  begin
    if fileexists(extractfilepath(application.ExeName)+'ProductionBonus.exe') then
    begin
      ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'ProductionBonus.exe'),nil,pchar(ExtractFilePath(Application.ExeName)+getdir),SW_SHOW);
    end else
    begin
      showmessage('Pls setup the program first. Abort');
    end;
  end;
end;

end.
