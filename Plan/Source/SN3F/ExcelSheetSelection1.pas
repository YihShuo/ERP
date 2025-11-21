unit ExcelSheetSelection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CheckLst;

type
  TExcelSheetSelection = class(TForm)
    PageBox: TCheckListBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PageBoxClickCheck(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExcelSheetSelection: TExcelSheetSelection;

implementation

uses
  MaterialStatus1;

{$R *.dfm}

procedure TExcelSheetSelection.Button1Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to PageBox.Items.Count - 1 do
  begin
    if (PageBox.Checked[i]) then
    begin
      MaterialStatus.SheetName := PageBox.Items[i];
      Break;
    end;
  end;

  if (MaterialStatus.SheetName <> '') then
    ModalResult := mrOK
  else
    ShowMessage('Please select a sheet');
end;

procedure TExcelSheetSelection.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TExcelSheetSelection.PageBoxClickCheck(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to PageBox.Items.Count - 1 do
  begin
    if (i <> PageBox.ItemIndex) then
      PageBox.Checked[i] := false;
  end;
end;

end.
