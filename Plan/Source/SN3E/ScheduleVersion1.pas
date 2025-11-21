unit ScheduleVersion1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TScheduleVersion = class(TForm)
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScheduleVersion: TScheduleVersion;

implementation

uses ScheduleUpload1;

{$R *.dfm}

procedure TScheduleVersion.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date;
end;

procedure TScheduleVersion.Button1Click(Sender: TObject);
begin
  ScheduleUpload.Version := FormatDateTime('yyyy/MM/dd', DTP1.Date);
  ModalResult := mrOK;
end;

end.
