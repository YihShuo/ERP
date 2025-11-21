unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TMAilform = class(TForm)
    MainMenu1: TMainMenu;
    Emp1: TMenuItem;
    DataInput1: TMenuItem;
    Report1: TMenuItem;
    StaffData1: TMenuItem;
    MoldData1: TMenuItem;
    MoldVS1: TMenuItem;
    Salary1: TMenuItem;

    procedure DataInput1Click(Sender: TObject);
    procedure StaffData1Click(Sender: TObject);
    procedure MoldData1Click(Sender: TObject);
    procedure Salary1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MAilform: TMAilform;

implementation

uses datasetup_p, datainput_p,modesetup_p, monthcostp;

{$R *.dfm}



procedure TMAilform.DataInput1Click(Sender: TObject);
begin
if datainput<>nil then
  begin
    datainput.show;
    datainput.windowstate:=wsmaximized;
  end
  else
    begin
      datainput:=Tdatainput.create(self);
      datainput.show;
    end;
end;

procedure TMAilform.StaffData1Click(Sender: TObject);
begin
if DataSetup<>nil then
  begin
    DataSetup.show;
    DataSetup.windowstate:=wsmaximized;
  end
  else
    begin
      DataSetup:=TDataSetup.create(self);
      DataSetup.show;
    end;
end;

procedure TMAilform.MoldData1Click(Sender: TObject);
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


procedure TMAilform.Salary1Click(Sender: TObject);
begin
if monthcost<>nil then
  begin
    monthcost.show;
    monthcost.windowstate:=wsmaximized;
  end
  else
    begin
      monthcost:=Tmonthcost.create(self);
      monthcost.show;
    end;
end;

end.
