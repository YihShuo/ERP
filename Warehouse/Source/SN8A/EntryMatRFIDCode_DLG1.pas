unit EntryMatRFIDCode_DLG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TEntryMatRFIDCode_DLG = class(TForm)
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button1: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryMatRFIDCode_DLG: TEntryMatRFIDCode_DLG;

implementation
  uses EntryMatRFIDCode_CT1,EntryMatRFIDCode_QT1,EntryMatRFIDCode_CG1,EntryMatRFIDCode_JG1;
{$R *.dfm}

procedure TEntryMatRFIDCode_DLG.Button3Click(Sender: TObject);
begin
    EntryMatRFIDCode_QT:=TEntryMatRFIDCode_QT.create(self);
    EntryMatRFIDCode_QT.show;
    EntryMatRFIDCode_DLG.Close;
end;

procedure TEntryMatRFIDCode_DLG.Button2Click(Sender: TObject);
begin

    EntryMatRFIDCode_CT:=TEntryMatRFIDCode_CT.Create(self);
    EntryMatRFIDCode_CT.Show;
    EntryMatRFIDCode_DLG.Close;
end;

procedure TEntryMatRFIDCode_DLG.Button4Click(Sender: TObject);
begin
    EntryMatRFIDCode_CG:=TEntryMatRFIDCode_CG.Create(self);
    EntryMatRFIDCode_CG.Show;
    EntryMatRFIDCode_DLG.Close;
end;

procedure TEntryMatRFIDCode_DLG.Button1Click(Sender: TObject);
begin
    EntryMatRFIDCode_JG:=TEntryMatRFIDCode_JG.Create(self);
    EntryMatRFIDCode_JG.Show;
    EntryMatRFIDCode_DLG.Close;
end;

end.
