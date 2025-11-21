unit OutsoleInspection_Size1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CheckLst;

type
  TOutsoleInspection_Size = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Panel2: TPanel;
    SizeBox: TCheckListBox;
    Panel3: TPanel;
    Button3: TButton;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SizeBoxMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OutsoleInspection_Size: TOutsoleInspection_Size;

implementation

uses
  OutsoleInspection1;

{$R *.dfm}

procedure TOutsoleInspection_Size.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TOutsoleInspection_Size.FormDestroy(Sender: TObject);
begin
  OutsoleInspection_Size := Nil;
end;

procedure TOutsoleInspection_Size.FormCreate(Sender: TObject);
var
  i, j, k: integer;
  Size: string;
begin
  k := 0;
  for i := 0 to OutsoleInspection.SizeList.Count - 1 do
  begin
    Size := Copy(OutsoleInspection.SizeList[i], 1, Length(OutsoleInspection.SizeList[i]));

    for j := k to SizeBox.Items.Count - 1 do
    begin
        if (SizeBox.Items[j] = Size) then
        begin
          SizeBox.Checked[j] := true;
          k := j;
          Break;
        end;
    end;
  end;
end;

procedure TOutsoleInspection_Size.SizeBoxMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  index: integer;
begin
  if (Button = mbLeft) then
  begin
    index := SizeBox.ItemAtPos(Point(X, Y), true);
    if (SizeBox.State[index] = cbUnchecked) then
      SizeBox.Checked[index] := true
    else
      SizeBox.Checked[index] := false;
  end;
end;
      
procedure TOutsoleInspection_Size.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TOutsoleInspection_Size.Button1Click(Sender: TObject);
var
  i: integer;
  SizeStr: string;
begin
  SizeStr := '';
  OutsoleInspection.SizeList.Clear;
  for i := 0 to SizeBox.Items.Count - 1 do
  begin
    if (SizeBox.State[i] = cbChecked) then
    begin
      OutsoleInspection.SizeList.Add(SizeBox.Items[i]);
      SizeStr := SizeStr + SizeBox.Items[i] + ',';
    end;
  end;
  SizeStr := Copy(SizeStr, 1, Length(SizeStr)-1);
  OutsoleInspection.ED_Size.Text := SizeStr;
  Close;
end;

procedure TOutsoleInspection_Size.FormShow(Sender: TObject);
begin
  Panel1.SetFocus;
end;

procedure TOutsoleInspection_Size.Button3Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to SizeBox.Items.Count - 1 do
  begin
    SizeBox.Checked[i] := true;
  end;
end;

procedure TOutsoleInspection_Size.Button4Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to SizeBox.Items.Count - 1 do
  begin
    SizeBox.Checked[i] := false;
  end;
end;

end.
