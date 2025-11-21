unit main1;

interface      

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables;
  {  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;}

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    Image1: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    StatusBar1: TStatusBar;
    Query1: TQuery;
    SN11: TMenuItem;
    SN12: TMenuItem;
    SN13: TMenuItem;
    SN14: TMenuItem;
    N2Chemicals1: TMenuItem;
    SN21: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
  {  procedure SN21Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);   }
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  main: Tmain;
  suser,spwd:string;

implementation

uses Rlistp, RWeightp1, RWSituation1, RWStatics1, RWAmount1;// RWAmount1, RWStatics1;

{$R *.dfm}

procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
var sline:string;
textvar:textfile;
begin
  if main.ActiveMDIChild<>nil  then
  begin
    Messagedlg('Pls close all child form first.',mtwarning,[mbOK],0);
    action:=canone;
  end
  else
    action:=cafree;

end;

procedure Tmain.FormCreate(Sender: TObject);
var y,m,d:word;
sline:string;
textvar:textfile;
begin

  shortdateformat:='yyyy/MM/dd';

{  Session.NetFileDir := ExtractFileDir(Application.ExeName);
  assignfile(textvar,extractfilepath(application.ExeName)+'user.txt');
  reset(textvar);
  readln(textvar,sline);
  if length(sline)<2 then
  begin
    showmessage('Wrong program. Pls run the login program first.');
    closefile(textvar);
    application.Terminate;
  end
  else
    begin
      suser:=copy(sline,0,pos('=',sline)-1);
      spwd:=copy(sline,pos('=',sline)+1,maxint);
      image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');
    end;
  closefile(textvar); }
  edit1.Text:='System';
//showmessage(sline);

  assignfile(textvar,extractfilepath(application.ExeName)+'Company.txt');
  reset(textvar);
  readln(textvar,sline);
  edit2.Text:=sline;
  closefile(textvar);

{  query1.Params.Items[0].AsString :=suser;
  query1.Active:=true;      //根據用戶名稱確定權限

  if query1.Locate('XH','N11',[]) then
    SN11.enabled:=true
  else
    SN11.Enabled:=false;
  if query1.Locate('XH','N12',[]) then
    SN12.enabled:=true
  else
    SN12.Enabled:=false;
  if query1.Locate('XH','N13',[]) then
    SN13.enabled:=true
  else
    SN13.Enabled:=false;
  if query1.Locate('XH','N14',[]) then
    SN14.enabled:=true
  else
    SN14.Enabled:=false;
  if query1.Locate('XH','N21',[]) then
    SN21.enabled:=true
  else
    SN21.Enabled:=false;

  query1.active:=false; }
end;


procedure Tmain.SN11Click(Sender: TObject);
begin
  if RWeightp<>nil then
  begin
    RWeightp.show;
    RWeightp.windowstate:=wsmaximized;
  end
  else
  begin
    RWeightp:=TRWeightp.create(self);
    RWeightp.show;
  end;
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  if Rlist<>nil then
  begin
    Rlist.show;
    Rlist.windowstate:=wsmaximized;
  end
  else
  begin
    Rlist:=TRlist.create(self);
    Rlist.show;
  end;
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  if RWSituation<>nil then
  begin
    RWSituation.show;
    RWSituation.windowstate:=wsmaximized;
  end
  else
  begin
    RWSituation:=TRWSituation.create(self);
    RWSituation.show;
  end;
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
  if RWStatics<>nil then
  begin
    RWStatics.show;
    RWStatics.windowstate:=wsmaximized;
  end
  else
  begin
    RWStatics:=TRWStatics.create(self);
    RWStatics.show;
  end;
end;

procedure Tmain.SN21Click(Sender: TObject);
begin
  if RWAmount<>nil then
  begin
    RWAmount.show;
    RWAmount.windowstate:=wsmaximized;
  end
  else
  begin
    RWAmount:=TRWAmount.create(self);
    RWAmount.show;
  end;
end;

end.
