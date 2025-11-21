unit BookingPreview1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TBookingPreview = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1RoomName: TStringField;
    ADOQuery1UserDate: TStringField;
    ADOQuery1UserID: TStringField;
    ADOQuery1RoomDate: TDateTimeField;
    ADOQuery1Topic: TStringField;
    ADOQuery1RoomTime: TStringField;
    ADOQuery1Partcipant: TStringField;
    ADOQuery1Status: TStringField;
    Button1: TButton;
    Button2: TButton;
    ADOQuery1WeekDay: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    procedure LoadData(SetSQL: TStrings; SDate, EDate: string);
    { Public declarations }
  end;

var
  BookingPreview: TBookingPreview;

implementation

{$R *.dfm}
             
procedure TBookingPreview.LoadData(SetSQL: TStrings; SDate, EDate: string);
begin
  Label1.Caption := 'Please confirm your booking request between [' + SDate + '] and [' + EDate + '] :';

  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL := SetSQL;
    Active := true;
  end;
end;
   
procedure TBookingPreview.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TBookingPreview.FormDestroy(Sender: TObject);
begin
  BookingPreview := Nil;
end;

procedure TBookingPreview.Button1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TBookingPreview.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TBookingPreview.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if (ADOQuery1.FieldByName('Status').Value <> 'Valid Time') then
    DBGridEh1.Canvas.Font.Color := clRed;
end;

end.
