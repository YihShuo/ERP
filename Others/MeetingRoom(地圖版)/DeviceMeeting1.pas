unit DeviceMeeting1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls,
  ComCtrls, Comobj, iniFiles, ADODB;

type
  TDeviceMeeting = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    btnExcel: TBitBtn;
    DataSource2: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1RoomName: TStringField;
    ADOQuery1Device: TStringField;
    ADOQuery1Status: TBooleanField;
    ADOQuery1UserID: TStringField;
    ADOQuery1UserDate: TDateTimeField;
    ADOQuery1Memo: TStringField;
    ADOQuery1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure ADOQuery1AfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }

  public

    { Public declarations }
  end;

var
  DeviceMeeting: TDeviceMeeting;


implementation

uses MainMap1;

{$R *.dfm}


procedure TDeviceMeeting.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    ShowMessage('Please save the data before you close this page.');
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TDeviceMeeting.FormDestroy(Sender: TObject);
begin
  DeviceMeeting := Nil;
end;

procedure TDeviceMeeting.Button1Click(Sender: TObject);
begin
  with ADOQuery1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add(' Select *  From MeetingRoomss');
    SQL.Add(' Where 1=1 ');
    if Edit1.Text <> '' then
      SQL.Add(' and RoomName like '''+Edit1.Text+'%'' ');
    if Edit2.Text <> '' then
      SQL.Add(' and Device like ''%'+Edit2.Text+'%'' ');
    SQL.Add(' Order by RoomName ');
    //showmessage(sql.Text);
    Active := true;
  end;
  
end;


procedure TDeviceMeeting.BB4Click(Sender: TObject);
begin
  DBGridEh1.columns[2].ReadOnly:=false;
  DBGridEh1.columns[3].ReadOnly:=false;
  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TDeviceMeeting.BB5Click(Sender: TObject);
var i:integer;
begin
  ADOQuery1.First;
  For i:=0 to ADOQuery1.RecordCount-1 do
  begin
    ADOQuery1.Edit;
    ADOQuery1.FieldByName('UserID').AsString:= MainMap1.UserID;
    ADOQuery1.FieldByName('UserDate').value:=  FormatDateTime('yyyy-MM-dd', now) ;
    ADOQuery1.FieldByName('YN').value:=1;
    ADOQuery1.Post;
    ADOQuery1.Next;
  end;
  ShowMessage('Success');
  ADOQuery1.Active := false;
  ADOQuery1.Active := true;
  BB5.Enabled := false;
  BB6.Enabled := false;
  DBGridEh1.columns[2].ReadOnly:=true;
  DBGridEh1.columns[3].ReadOnly:=true;
  button1.Click;

end;

procedure TDeviceMeeting.BB6Click(Sender: TObject);
begin
  ADOQuery1.Active := false;
  ADOQuery1.Active := true;
  DBGridEh1.columns[2].ReadOnly:=true;
  DBGridEh1.columns[3].ReadOnly:=true;
  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TDeviceMeeting.BB7Click(Sender: TObject);
begin
  Close;
end;



procedure TDeviceMeeting.ADOQuery1AfterOpen(DataSet: TDataSet);
begin
  if ((MainMap1.UserID='41191') or (MainMap1.UserID='42845') or (MainMap1.UserID='51142') or (MainMap1.UserID='83687'))  then
  begin
    BB4.Enabled := true;
  end else
  begin
    BB4.Enabled := false;
  end;
end;

procedure TDeviceMeeting.FormCreate(Sender: TObject);
begin
  Button1.Click;
end;

end.
