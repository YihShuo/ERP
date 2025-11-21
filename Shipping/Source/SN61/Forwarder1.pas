unit Forwarder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, DB, DBTables, GridsEh, DBGridEh, ExtCtrls;

type
  TForwarder = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1ID: TIntegerField;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Insert1: TMenuItem;
    Modify1: TMenuItem;
    Delete1: TMenuItem;
    N1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Query2: TQuery;
    Button1: TButton;
    Query1FName: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Insert1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Forwarder: TForwarder;

implementation

uses Booking1;

{$R *.dfm}

procedure TForwarder.FormCreate(Sender: TObject);
begin
    Button1Click(nil);
end;

procedure TForwarder.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then Button1Click(nil);
end;

procedure TForwarder.DBGridEh1DblClick(Sender: TObject);
begin
    if (query1.Active) and ((query1.RecordCount = 0)or(query1.RequestLive)) then abort;
    if not query1.Active then abort;

    with Booking.qry_book do
    begin
        edit;
        fieldbyName('Forwarder').value:= query1.fieldbyName('FName').value;
        
    end;
    close;
end;

procedure TForwarder.Button1Click(Sender: TObject);
begin
    with query1 do
      begin
          active:=false;
          sql.Clear;
          sql.Add('select * from Ship_Forwarder');
          sql.Add('where FName like '''+edit1.Text+'%'' ');
          active:=true;
      end;
end;

procedure TForwarder.Insert1Click(Sender: TObject);
begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.Insert;

    save1.Enabled:=true;
    cancel1.Enabled:=true;
end;

procedure TForwarder.Modify1Click(Sender: TObject);
begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.edit;

    save1.Enabled:=true;
    cancel1.Enabled:=true;
end;

procedure TForwarder.Cancel1Click(Sender: TObject);
begin
    query1.Active:=false;
    query1.RequestLive:=false;
    query1.CachedUpdates:=false;
    query1.Active:=true;

    save1.Enabled:=false;
    cancel1.Enabled:=false;
end;

procedure TForwarder.Delete1Click(Sender: TObject);
begin
    if messageDlg('Are you sure to delete this information?',mtwarning,[mbyes,mbno],0) = mryes then
    begin
        with query2 do
        begin
            active:=false;
            sql.Clear;
            sql.Add('delete from Ship_Forwarder ');
            sql.Add('where ID='''+ query1.fieldbyName('ID').AsString + ''' ');
            execsql;
        end;
        showmessage('Delete successful!!!');
        query1.Active:=false;
        query1.Active:=true;
    end;
end;

procedure TForwarder.Save1Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
        case query1.updatestatus of
          usInserted:
          begin
              if query1.fieldbyname('FName').IsNull then
              begin
                  showmessage('FName can not empty.');
                  exit;
              end
              else
                  UpdateSQL1.apply(ukinsert);
          end;
          usmodified:
          begin
              UpdateSQL1.apply(ukmodify);
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

end.
