unit SequenceCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables;

type
  TSequenceCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    CB_Building: TComboBox;
    Button1: TButton;
    QTemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SequenceCheck: TSequenceCheck;

implementation

uses
  ScheduleUpload1;

{$R *.dfm}

procedure TSequenceCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSequenceCheck.FormDestroy(Sender: TObject);
begin
  SequenceCheck := Nil;
end;

procedure TSequenceCheck.FormCreate(Sender: TObject);
begin
  DTP1.Date := Date + 1;
end;

procedure TSequenceCheck.Button1Click(Sender: TObject);
var
  i: integer;
begin
  with QTemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT MAX(CONVERT(SmallDateTime, CAST(SCYEAR AS VARCHAR) + ''/'' + CAST(SCMONTH AS VARCHAR) + ''/'' + CAST(SCDay AS VARCHAR))) AS Date FROM SCRL');
    SQL.Add('WHERE CONVERT(SmallDateTime, CAST(SCYEAR AS VARCHAR) + ''/'' + CAST(SCMONTH AS VARCHAR) + ''/'' + CAST(SCDay AS VARCHAR)) < ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) + ''' AND ISNULL(SCGS, 0) > 0');
    Active := true;
  end;

  try
    if (CB_Building.Text <> 'ALL') then
    begin
      ScheduleUpload.SeqCheck(CB_Building.Text, QTemp.FieldByName('Date').AsDateTime);
    end
    else begin
      for i := 1 to CB_Building.Items.Count - 1 do
      begin
        ScheduleUpload.SeqCheck(CB_Building.Items[i], QTemp.FieldByName('Date').AsDateTime);
      end;
    end;

    ShowMessage('Completed.');
  except on E: Exception do
    ShowMessage('Failed.');
  end;
end;

procedure TSequenceCheck.FormShow(Sender: TObject);
begin
  Panel1.SetFocus;
end;

end.
