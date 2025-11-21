unit PlaceDelivery1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TPlaceDelivery = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    N1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Button1: TButton;
    Query1PDName: TStringField;
    Query1YN: TStringField;
    Query1PDName_VN: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Qry_Temp: TQuery;
    Query1PDName_Temp: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlaceDelivery: TPlaceDelivery;

implementation

uses Booking1, Main1;

{$R *.dfm}

procedure TPlaceDelivery.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT PDName,PDName_VN,UserID,UserDate,YN,PDName PDName_Temp FROM Ship_PlaceDelivery');
    SQL.Add('WHERE PDName LIKE ''%'+Edit1.Text+'%''');
    Open;
  end;
end;

procedure TPlaceDelivery.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    Button1Click(nil);
end;

procedure TPlaceDelivery.DBGridEh1DblClick(Sender: TObject);
begin
  if (Query1.RequestLive)  then
    Abort;
  if (Query1.Active) and ((Query1.RecordCount=0) or (Query1.RequestLive)) then
    Abort;
  if not Query1.Active then
    Abort;
  with Booking.qry_book do
  begin
    Edit;
    FieldByName('Place_Delivery').AsString:=Query1.FieldByName('PDName').AsString;
  end;
  Close;
end;

procedure TPlaceDelivery.FormCreate(Sender: TObject);
begin
  Button1Click(nil);
end;

procedure TPlaceDelivery.Insert1Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive:=True;
    CachedUpdates:=True;
    Insert;
  end;
end;

procedure TPlaceDelivery.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive:=True;
    CachedUpdates:=True;
    Edit;
  end;
end;

procedure TPlaceDelivery.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    RequestLive:=False;
    CachedUpdates:=False;
    Open;
  end;
end;

procedure TPlaceDelivery.Delete1Click(Sender: TObject);
begin
  if MessageDlg('Are you sure to delete this information?',mtwarning,[mbyes,mbno],0) = mryes then
  begin
    with Query1 do
    begin
      RequestLive:=True;
      CachedUpdates:=True;
      Edit;
      FieldByName('YN').AsString:='0';
    end;
  end;
end;

procedure TPlaceDelivery.Save1Click(Sender: TObject);
var i: Integer;
begin
  try
    Query1.First;
    for i:=1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usInserted:
        begin
          if Query1.FieldByName('PDName').IsNull then
          begin
            ShowMessage('PDName can not empty.');
            Exit;
          end else
          begin
            Query1.Edit;
            Query1.FieldByName('UserID').AsString:=Main.Edit1.Text;
            UpdateSQL1.Apply(ukInsert);
          end;
        end;
        usmodified:
        begin
          if Query1.FieldByName('YN').AsString='0' then
          begin
            UpdateSQL1.Apply(ukDelete);
          end else
          begin
            Query1.Edit;
            Query1.FieldByName('UserID').AsString:=Main.Edit1.Text;
            UpdateSQL1.Apply(ukModify);
          end;
        end;
      end;
      Query1.Next;
    end;
    Query1.Close;
    Query1.CachedUpdates:=False;
    Query1.RequestLive:=False;
    Query1.Open;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    Abort;
  end;
end;

procedure TPlaceDelivery.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').AsString='0' then
    DBGridEh1.Canvas.Font.Color := clred;
end;

procedure TPlaceDelivery.PopupMenu1Popup(Sender: TObject);
begin
  Insert1.Enabled:=False;
  Modify1.Enabled:=False;
  Delete1.Enabled:=False;
  Cancel1.Enabled:=False;
  Save1.Enabled:=False;
  if Query1.Active then
  begin
    Insert1.Enabled:=True;
    if (Query1.RecordCount>0) and (Query1.FieldByName('UserID').AsString=Main.Edit1.Text) then
    begin
      Modify1.Enabled:=True;
      Delete1.Enabled:=True;
    end;
  end;
  if Query1.RequestLive then
  begin
    Save1.Enabled:=True;
    Cancel1.Enabled:=True;
  end;
end;

end.
