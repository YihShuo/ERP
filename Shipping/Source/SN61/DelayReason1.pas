unit DelayReason1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ExtCtrls, StdCtrls, Menus;

type
  TDelayReason = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1DRCODE: TStringField;
    Query1DRMAINCODE: TStringField;
    Query1DRNAME: TStringField;
    Query1Description: TStringField;
    Query1Examples: TStringField;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Edit2: TEdit;
    chkCopyAll: TCheckBox;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    N1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    Query1VN: TStringField;
    Query2: TQuery;
    Query1YN: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1NoUse: TBooleanField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DelayReason: TDelayReason;

implementation

uses Booking1, main1;

{$R *.dfm}

procedure TDelayReason.Button1Click(Sender: TObject);
begin
    with query1 do
    begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT * FROM DELAYREASON d');
        sql.Add('where  DRCode like '''+edit1.Text+'%'' ');
        if edit2.Text <> '' then
          sql.Add('     and DRNAME like '''+edit2.Text+'%'' ');
        active:=true;
    end;
end;

procedure TDelayReason.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action:=cafree;
end;

procedure TDelayReason.FormDestroy(Sender: TObject);
begin
    DelayReason:=nil;
end;

procedure TDelayReason.DBGridEh1DblClick(Sender: TObject);
begin
  if (not Query1.Active) or (Query1.RecordCount=0) then Abort;
  with Booking.qry_Ry do
  begin
    if RequestLive then
    begin
      if chkCopyAll.Checked then
      begin
        First;
        while not Eof do
        begin
          Edit;
          FieldByName('DRCode').AsString:=Query1.FieldByName('DRCode').AsString;
          FieldByName('DRNAME').AsString:=Query1.FieldByName('DRNAME').AsString;
          Next;
        end;
      end else
      begin
        Edit;
        FieldByName('DRCode').AsString:=Query1.FieldByName('DRCode').AsString;
        FieldByName('DRNAME').AsString:=Query1.FieldByName('DRNAME').AsString;
      end;
    end;
  end;
  Close;
end;

procedure TDelayReason.FormCreate(Sender: TObject);
begin
    Button1Click(nil);
end;

procedure TDelayReason.Insert1Click(Sender: TObject);
begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.Insert;

    save1.Enabled:=true;
    cancel1.Enabled:=true;
end;

procedure TDelayReason.Modify1Click(Sender: TObject);
begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.edit;

    save1.Enabled:=true;
    cancel1.Enabled:=true;
end;

procedure TDelayReason.Delete1Click(Sender: TObject);
begin

    query1.requestlive:=true;
    query1.cachedupdates:=true;
    query1.edit;
    query1.fieldbyname('YN').Value:='0';

    save1.Enabled:=true;
    cancel1.Enabled:=true;


end;

procedure TDelayReason.Cancel1Click(Sender: TObject);
begin
    query1.Active:=false;
    query1.RequestLive:=false;
    query1.CachedUpdates:=false;
    query1.Active:=true;

    save1.Enabled:=false;
    cancel1.Enabled:=false;
end;

procedure TDelayReason.Save1Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
        case query1.updatestatus of
          usInserted:
          begin
              if query1.fieldbyname('DRCode').IsNull then
              begin
                  showmessage('DRCode can not empty.');
                  exit;
              end else
                  query1.Edit;
                  query1.FieldByName('userID').Value:=main.edit1.Text;
                  query1.FieldByName('UserDate').Value:=Date();
                  query1.FieldByName('YN').Value:='1';
                  UpdateSQL1.apply(ukinsert);
          end;
          usmodified:
          begin
            if query1.fieldbyname('YN').value='0'then
            begin
              UpdateSQL1.apply(ukdelete);
            end else
            begin
              query1.Edit;
              query1.FieldByName('userID').Value:=main.edit1.Text;
              query1.FieldByName('UserDate').Value:=Date();
              UpdateSQL1.apply(ukmodify);
           end;
          end;
        end;
       query1.next;
    end;

    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;

    save1.Enabled:=false;
    cancel1.Enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;

end;

procedure TDelayReason.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
