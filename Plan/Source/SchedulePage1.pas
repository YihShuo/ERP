unit SchedulePage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, CheckLst;

type
  TSchedulePage = class(TForm)
    PageBox: TCheckListBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SchedulePage: TSchedulePage;

implementation

uses ScheduleUpload1;

{$R *.dfm}

procedure TSchedulePage.Button1Click(Sender: TObject);
var
  i: integer;
begin
  SetLength(ScheduleUpload.UploadPage, 0);
  for i := 0 to PageBox.Items.Count - 1 do
  begin
    if (PageBox.Checked[i]) then
    begin
      SetLength(ScheduleUpload.UploadPage, Length(ScheduleUpload.UploadPage) + 1);
      ScheduleUpload.UploadPage[Length(ScheduleUpload.UploadPage) - 1] := PageBox.Items[i];
    end;
  end;

  if (Length(ScheduleUpload.UploadPage) > 0) then
    ModalResult := mrOK
  else
    ShowMessage('Please select a page');
end;

procedure TSchedulePage.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

end.
