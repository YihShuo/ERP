unit mailP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, StdCtrls;

type
  Tmain = class(TForm)
    MainMenu1: TMainMenu;
    S1: TMenuItem;
    ColorSetup1: TMenuItem;
    N12Plan1: TMenuItem;
    N211: TMenuItem;
    N221: TMenuItem;
    N23StorageOut1: TMenuItem;
    N3R1: TMenuItem;
    Panel1: TPanel;
    N12ModeSetup1: TMenuItem;
    N221Keyin1: TMenuItem;
    N222Scan1: TMenuItem;
    N231KeyIn1: TMenuItem;
    N232Scan1: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    N31: TMenuItem;
    N41StorReport1: TMenuItem;
    procedure ColorSetup1Click(Sender: TObject);
    procedure N12ModeSetup1Click(Sender: TObject);
    procedure N211Click(Sender: TObject);
    procedure N222Scan1Click(Sender: TObject);
    procedure N221Keyin1Click(Sender: TObject);
    procedure N231KeyIn1Click(Sender: TObject);
    procedure N232Scan1Click(Sender: TObject);
    procedure N41StorReport1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  main: Tmain;

implementation

uses colorsetupP,modesetup_p, ProductionPlanP, scaninP, KeyInP, keyoutp,
  scanoutP, stornowP;

{$R *.dfm}

procedure Tmain.ColorSetup1Click(Sender: TObject);
begin
if colorsetup<>nil then
  begin
    colorsetup.show;
    colorsetup.windowstate:=wsmaximized;
  end
  else
    begin
      colorsetup:=Tcolorsetup.create(self);
      colorsetup.show;
    end;
end;

procedure Tmain.N12ModeSetup1Click(Sender: TObject);
begin
if moldsetup<>nil then
  begin
    moldsetup.show;
    moldsetup.windowstate:=wsmaximized;
  end
  else
    begin
      moldsetup:=Tmoldsetup.create(self);
      moldsetup.show;
    end;
end;

procedure Tmain.N211Click(Sender: TObject);
begin
if ProductionPlan<>nil then
  begin
    ProductionPlan.show;
    ProductionPlan.windowstate:=wsmaximized;
  end
  else
    begin
      ProductionPlan:=TProductionPlan.create(self);
      ProductionPlan.show;
    end;
end;

procedure Tmain.N222Scan1Click(Sender: TObject);
begin
if scanin<>nil then
  begin
    scanin.show;
    scanin.windowstate:=wsmaximized;
  end
  else
    begin
      scanin:=Tscanin.create(self);
      scanin.show;
    end;
end;

procedure Tmain.N221Keyin1Click(Sender: TObject);
begin
if keyin<>nil then
  begin
    keyin.show;
    keyin.windowstate:=wsmaximized;
  end
  else
    begin
      keyin:=Tkeyin.create(self);
      keyin.show;
    end;

end;

procedure Tmain.N231KeyIn1Click(Sender: TObject);
begin
if keyout<>nil then
  begin
    keyout.show;
    keyout.windowstate:=wsmaximized;
  end
  else
    begin
      keyout:=Tkeyout.create(self);
      keyout.show;
    end;
end;

procedure Tmain.N232Scan1Click(Sender: TObject);
begin
if scanout<>nil then
  begin
    scanout.show;
    scanout.windowstate:=wsmaximized;
  end
  else
    begin
      scanout:=Tscanout.create(self);
      scanout.show;
    end;
end;

procedure Tmain.N41StorReport1Click(Sender: TObject);
begin
if StorNow<>nil then
  begin
    StorNow.show;
    StorNow.windowstate:=wsmaximized;
  end
  else
    begin
      StorNow:=TStorNow.create(self);
      StorNow.show;
    end;
end;

procedure Tmain.FormDestroy(Sender: TObject);
begin
  main:=nil;
end;

end.
