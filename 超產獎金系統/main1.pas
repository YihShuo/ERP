unit main1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus, Data.DB, Data.Win.ADODB;

type
  Tmain = class(TForm)
    CapQuyenQry: TADOQuery;
    MainMenu: TMainMenu;
    SN1: TMenuItem;
    SN2: TMenuItem;
    Image1: TImage;
    SN11: TMenuItem;
    SN21: TMenuItem;
    SN12: TMenuItem;
    SN13: TMenuItem;
    SN3: TMenuItem;
    SN31: TMenuItem;
    SN32: TMenuItem;
    SN4: TMenuItem;
    SN41: TMenuItem;
    SN42: TMenuItem;
    SN43: TMenuItem;
    SN5: TMenuItem;
    SN51: TMenuItem;
    SN14: TMenuItem;
    SN16: TMenuItem;
    SN17: TMenuItem;
    SN15: TMenuItem;
    SN6: TMenuItem;
    SN61: TMenuItem;
    SN62: TMenuItem;
    SN7: TMenuItem;
    SN71: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SN11Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SN21Click(Sender: TObject);
    procedure SN12Click(Sender: TObject);
    procedure SN13Click(Sender: TObject);
    procedure SN31Click(Sender: TObject);
    procedure SN32Click(Sender: TObject);
    procedure SN41Click(Sender: TObject);
    procedure SN42Click(Sender: TObject);
    procedure SN43Click(Sender: TObject);
    procedure SN51Click(Sender: TObject);
    procedure SN14Click(Sender: TObject);
    procedure SN16Click(Sender: TObject);
    procedure SN17Click(Sender: TObject);
    procedure SN15Click(Sender: TObject);
    procedure SN61Click(Sender: TObject);
    procedure SN62Click(Sender: TObject);
    procedure SN71Click(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
    procedure ShowFrm(var fm: Pointer; parentClass: TPersistentClass; miname: string);
  public
    UserID:string;
    mGSBH:String;
    { Public declarations }
  end;

var
  main: Tmain;

implementation

uses
  ChamCong_Bonus1,ProdBonus1, DM1, FunUnit, SupervisorData1, LeaveData1, FoodPurchaseList1,
  DailyMenu1, GhiChepKiemTraTuongLua1, GhiChepKhoiPhucDuLieu1,
  GhiChepDongGoiDuLieu1, DKorganization1, Directory_LeaveRuler1, WF_RegularLeaves1, WF_TravelFee1,
  BookTicket1, PerformanceRating1, LYN_USERGROUPS1, ExpData1;

{$R *.dfm}
//
procedure Tmain.ShowFrm(var fm: Pointer; parentClass: TPersistentClass; miname: string);  //
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
        //SaveProLog(MKID, miname, main.Edit1.Text);
        TForm(fm).show;
     end;
   end;
end;
//
procedure Tmain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if main.ActiveMDIChild<>nil  then
  begin
    Messagedlg('Pls close all child form first.',mtwarning,[mbOK],0);
    action:=canone;
  end else
  begin
    action:=cafree;
  end;
end;

procedure Tmain.FormCreate(Sender: TObject);
var sline:string;
    textvar:textfile;
begin
  AppDir:=Extractfilepath(application.ExeName);
  assignfile(textvar,AppDir+'user.txt');
  reset(textvar);
  readln(textvar,sline);
  if length(sline)<2 then
  begin
    Showmessage('Wrong program. Pls run the main program first.');
    Closefile(textvar);
    application.Terminate;
  end else
  begin
    UserID:=copy(sline,0,pos('=',sline)-1);
    if FileExists(AppDir+'factory.jpg')=true then
    image1.Picture.LoadFromFile(AppDir+'factory.jpg');
  end;
  closefile(textvar);
  //
  assignfile(textvar,AppDir+'Company.txt');
  reset(textvar);
  readln(textvar,sline);
  mGSBH:=sline;
  Closefile(textvar);
  //權限

  with CapQuyenQry do
  begin
    //---20150817 Projoe 將Params 改為 ParamByName 來增加可讀性
    Parameters.ParamByName('userid').Value := UserID;
    Parameters.ParamByName('mkid').Value := '19';
    Parameters.ParamByName('GSBH').Value := mGSBH;
    Active := true;
    //---20150817 Projoe 權限判斷修改為下面方式
    SN1.Enabled := Locate('FORMID', 'SN1', []);
    SN11.Enabled := Locate('FORMID', 'SN11', []);
    SN12.Enabled := Locate('FORMID', 'SN12', []);
    SN13.Enabled := Locate('FORMID', 'SN13', []);
    SN2.Enabled := Locate('FORMID', 'SN2', []);
    SN21.Enabled := Locate('FORMID', 'SN21', []);
    SN3.Enabled := Locate('FORMID', 'SN3', []);
    SN31.Enabled := Locate('FORMID', 'SN31', []);
    SN32.Enabled := Locate('FORMID', 'SN32', []);
    SN4.Enabled := Locate('FORMID', 'SN4', []);
    SN41.Enabled := Locate('FORMID', 'SN41', []);
    SN42.Enabled := Locate('FORMID', 'SN42', []);
    SN43.Enabled := Locate('FORMID', 'SN43', []);
    SN5.Enabled := Locate('FORMID', 'SN5', []);
    SN51.Enabled := Locate('FORMID', 'SN51', []);
    SN6.Enabled := Locate('FORMID', 'SN6', []);
    SN61.Enabled := Locate('FORMID', 'SN61', []);
    SN62.Enabled := Locate('FORMID', 'SN62', []);
    SN7.Enabled := Locate('FORMID', 'SN7', []);
    SN71.Enabled := Locate('FORMID', 'SN71', []);
    Active := false;
  end;
end;

procedure Tmain.SN51Click(Sender: TObject);
begin
  ShowFrm(Pointer(DKorganization), TDKorganization, TMenuItem(Sender).Name);
end;

procedure Tmain.SN61Click(Sender: TObject);
begin
  ShowFrm(Pointer(PerformanceRating), TPerformanceRating, TMenuItem(Sender).Name);
end;

procedure Tmain.SN62Click(Sender: TObject);
begin
  ShowFrm(Pointer(LYN_USERGROUPS), TLYN_USERGROUPS, TMenuItem(Sender).Name);
end;

procedure Tmain.SN71Click(Sender: TObject);
begin
  ShowFrm(Pointer(ExpData), TExpData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN11Click(Sender: TObject);
begin
  ShowFrm(Pointer(ChamCong_Bonus), TChamCong_Bonus, TMenuItem(Sender).Name);
end;

procedure Tmain.SN12Click(Sender: TObject);
begin
  ShowFrm(Pointer(SupervisorData), TSupervisorData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN13Click(Sender: TObject);
begin
  ShowFrm(Pointer(LeaveData), TLeaveData, TMenuItem(Sender).Name);
end;

procedure Tmain.SN14Click(Sender: TObject);
begin
  ShowFrm(Pointer(Directory_LeaveRuler), TDirectory_LeaveRuler, TMenuItem(Sender).Name);
end;

procedure Tmain.SN15Click(Sender: TObject);
begin
  ShowFrm(Pointer(BookTicket), TBookTicket, TMenuItem(Sender).Name);
end;

procedure Tmain.SN16Click(Sender: TObject);
begin
  ShowFrm(Pointer(WF_RegularLeaves), TWF_RegularLeaves, TMenuItem(Sender).Name);
end;

procedure Tmain.SN17Click(Sender: TObject);
begin
  ShowFrm(Pointer(WF_TravelFee), TWF_TravelFee, TMenuItem(Sender).Name);
end;

procedure Tmain.SN21Click(Sender: TObject);
begin
  ShowFrm(Pointer(ProdBonus), TProdBonus, TMenuItem(Sender).Name);
end;

procedure Tmain.SN31Click(Sender: TObject);
begin
  ShowFrm(Pointer(FoodPurchaseList), TFoodPurchaseList, TMenuItem(Sender).Name);
end;

procedure Tmain.SN32Click(Sender: TObject);
begin
  ShowFrm(Pointer(DailyMenu), TDailyMenu, TMenuItem(Sender).Name);
end;

procedure Tmain.SN41Click(Sender: TObject);
begin
   ShowFrm(Pointer(GhiChepKiemTraTuongLua), TGhiChepKiemTraTuongLua, TMenuItem(Sender).Name);
end;

procedure Tmain.SN42Click(Sender: TObject);
begin
  ShowFrm(Pointer(GhiChepKhoiPhucDuLieu), TGhiChepKhoiPhucDuLieu, TMenuItem(Sender).Name);
end;

procedure Tmain.SN43Click(Sender: TObject);
begin
  ShowFrm(Pointer(GhiChepDongGoiDuLieu), TGhiChepDongGoiDuLieu, TMenuItem(Sender).Name);
end;

end.
