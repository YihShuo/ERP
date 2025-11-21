unit main1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls, ComCtrls, DB, DBTables;


type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    SN1: TMenuItem;
    SN2: TMenuItem;
    SN6: TMenuItem;
    SN7: TMenuItem;
    SN16: TMenuItem;
    N1: TMenuItem;
    SN21: TMenuItem;
    SN22: TMenuItem;
    SN51: TMenuItem;
    SN52: TMenuItem;
    N3: TMenuItem;
    SN53: TMenuItem;
    SN531: TMenuItem;
    SN532: TMenuItem;
    SN11: TMenuItem;
    Image1: TImage;
    SN12: TMenuItem;
    SN13: TMenuItem;
    SN4: TMenuItem;
    SN3: TMenuItem;
    Salary1: TMenuItem;
    Edit1: TEdit;
    SN14: TMenuItem;
    SN31: TMenuItem;
    SN32: TMenuItem;
    StatusBar1: TStatusBar;
    Query1: TQuery;
    SN41: TMenuItem;
    SN42: TMenuItem;
    SN15: TMenuItem;
    Edit2: TEdit;
    test1: TMenuItem;
    ngay221: TMenuItem;
    procedure SN16Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);
    procedure SN21Click(Sender: TObject);
    procedure SN22Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure test1Click(Sender: TObject);
    procedure ngay221Click(Sender: TObject);
  private
    MKID:String;
    { Private declarations }
     //---20150817 Projoe 補上由 Nick 所提供的function log 程式
    //用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
    procedure SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
    //---20150817 Projoe 修改 Menu 上面的按鈕呼叫方式
    procedure showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);

  public
    { Public declarations }
  end;

var
  main: Tmain;
  suser,spwd:string;

implementation

uses Company1, Department, BWorker1, DepChange1, Individual1, Insurance1,
  Medicine1, RecordMed1, BworkerIm1, DepAttendance1, TEST1, Timkiem1;


{$R *.dfm}
//
procedure Tmain.showFm(var fm: Pointer; parentClass: TPersistentClass; miname: string);  //
begin
   //Create Form and Show Form
   if parentClass<>nil then
   begin
     if fm <> nil then
     begin
        TForm(fm).show;
        TForm(fm).windowstate := wsmaximized;
     end else
     begin
        fm := TControlClass(parentClass).create(self);
        SaveProLog(MKID, miname, main.Edit1.Text);
        TForm(fm).show;
     end;
   end;
end;

procedure Tmain.SaveProLog(AMKID: string; AFORMID: string; AUSERID: string);
//---20150817 Projoe 補上由 Nick 所提供之追蹤function log 的程式
//用法: SaveProLog(GetMKID(),TMenuItem(Sender).Name,GetUserID());
var
  MyQuery: TQuery;
begin
  try
    with MyQuery do
      begin
        MyQuery := TQuery.Create(application);
        DatabaseName := 'DB';

        Close;
        SQL.Clear;
        SQL.Add('insert into PROGLOG (MKID,FORMID,USERID,USERDATE)');
        SQL.Add('values (:MKID,:FORMID,:USERID,:USERDATE)');
        ParamByName('MKID').Value := AMKID;
        ParamByName('FORMID').Value := AFORMID;
        ParamByName('USERID').Value := AUSERID;
        ParamByName('USERDATE').Value := now;
        if not Prepared then
          Prepare;
        ExecSQL;
      end;
  finally
    FreeAndNil(MyQuery);
  end;
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
close;
end;

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
      begin  
        with query1 do
          begin
            active:=false;
            sql.Clear;
            sql.Add('update Busers set LASTDATETIME=getdate()' ) ;
            sql.add('where USERID='+''''+edit1.Text+'''' );
            execsql;
          end;
        action:=cafree;
       { assignfile(textvar,extraih ctfilepath(application.ExeName)+'user.txt');
        rewrite(textvar);
        closefile(textvar);   }
      end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var y,m,d:word;
sline:string;
textvar:textfile;
begin  
shortdateformat:='yyyy/MM/dd';


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
  else
    begin
      suser:=copy(sline,0,pos('=',sline)-1);
      spwd:=copy(sline,pos('=',sline)+1,maxint);
      image1.Picture.LoadFromFile(extractfilepath(application.ExeName)+'factory.jpg');
    end;
closefile(textvar);
edit1.Text:=suser;
//showmessage(suser+spwd);


assignfile(textvar,extractfilepath(application.ExeName)+'Company.txt');
reset(textvar);
readln(textvar,sline);
edit2.Text:=sline;
closefile(textvar);
with Query1 do
    begin
      ParamByName('userid').Value := suser;
      ParamByName('mkid').Value := '04';  MKID:='04';
      ParamByName('GSBH').Value := edit2.text;
      Active:=true;      //根據用戶名稱確定權限
      SN1.enabled := Locate('FORMID', 'SN1', []);
      SN11.enabled := Locate('FORMID', 'SN11', []);
      SN12.enabled := Locate('FORMID', 'SN12', []);
      SN13.enabled := Locate('FORMID', 'SN13', []);
      SN14.enabled := Locate('FORMID', 'SN14', []);
      SN2.enabled := Locate('FORMID', 'SN2', []);
      SN21.enabled := Locate('FORMID', 'SN21', []);
      SN22.enabled := Locate('FORMID', 'SN22', []);
      SN3.enabled := Locate('FORMID', 'SN3', []);
      SN31.enabled := Locate('FORMID', 'SN31', []);
      SN32.enabled := Locate('FORMID', 'SN32', []);
      SN4.enabled := Locate('FORMID', 'SN4', []);
      SN41.enabled := Locate('FORMID', 'SN41', []);
      SN42.enabled := Locate('FORMID', 'SN42', []);
      //20171020 add authority
      SN15.enabled := Locate('FORMID', 'SN15', []);

      Active:=false;
    end;
end;

procedure Tmain.SN11Click(Sender: TObject);
begin
  showFm(Pointer(Company), TCompany, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  showFm(Pointer(BDepartment), TBDepartment, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  showFm(Pointer(BWorker), TBWorker, TMenuItem(Sender).Name);
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
  showFm(Pointer(DepChange), TDepChange, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21Click(Sender: TObject);
begin
  showFm(Pointer(Individual), TIndividual, TMenuItem(Sender).Name);
end;

procedure Tmain.SN22Click(Sender: TObject);
begin
  showFm(Pointer(Insurance), TInsurance, TMenuItem(Sender).Name);
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  showFm(Pointer(Medicine), TMedicine, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  showFm(Pointer(RecordMed), TRecordMed, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  showFm(Pointer(BworkerIm), TBworkerIm, TMenuItem(Sender).Name);
end;

procedure Tmain.SN42Click(Sender: TObject);
begin
  showFm(Pointer(DepAttendance), TDepAttendance, TMenuItem(Sender).Name);
end;

procedure Tmain.test1Click(Sender: TObject);
begin
  showFm(Pointer(TEST), TTEST, TMenuItem(Sender).Name);
end;

procedure Tmain.ngay221Click(Sender: TObject);
begin
   showFm(Pointer(Tim_kiem), TTim_kiem, TMenuItem(Sender).Name);
end;

end.
