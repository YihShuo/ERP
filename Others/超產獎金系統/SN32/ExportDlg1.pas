unit ExportDlg1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Dateutils;

type
  TExportDlg = class(TForm)
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExportDlg: TExportDlg;

implementation

uses
  DailyMenu1;

{$R *.dfm}

procedure TExportDlg.Button1Click(Sender: TObject);
begin
  DailyMenu.ExportData(DTP1.Date, DTP2.Date);
  Close;
end;

procedure TExportDlg.Button2Click(Sender: TObject);
begin
  Close;
end;

procedure TExportDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TExportDlg.FormCreate(Sender: TObject);
begin
  DTP1.Date := DailyMenu.DTP1.Date - DayOfTheWeek(DailyMenu.DTP1.Date) + 1;
  DTP2.Date := DailyMenu.DTP1.Date - DayOfTheWeek(DailyMenu.DTP1.Date) + 7;
end;

procedure TExportDlg.FormDestroy(Sender: TObject);
begin
  ExportDlg := Nil;
end;

end.
