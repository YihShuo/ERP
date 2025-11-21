unit VendorMapSetP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DBTables, DB, StdCtrls, Buttons, ExtCtrls;

type
  TVendorMapSet = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB1: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    Panel2: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    UPSQL1: TUpdateSQL;
    DBGridEh1: TDBGridEh;
    Query1csbh: TStringField;
    Query1zsywjc: TStringField;
    Query1CSBHV: TStringField;
    Query1zsywjc_1: TStringField;
    Query1userid: TStringField;
    Query1userdate: TDateTimeField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BB6: TBitBtn;
    Query1csuserid: TStringField;
    Query1csuserpassword: TStringField;
    Query1CSBHV_1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VendorMapSet: TVendorMapSet;

implementation

uses VendorQueryP, main1;

{$R *.dfm}

procedure TVendorMapSet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TVendorMapSet.BB1Click(Sender: TObject);
begin
  Query1.Active:=true;
  BB4.Enabled:=true;
end;

procedure TVendorMapSet.BitBtn1Click(Sender: TObject);
begin
  if VendorQuery<>nil then
  begin
    VendorQuery.show;
    VendorQuery.windowstate:=wsmaximized;
  end
  else
  begin
      VendorQuery:=TVendorQuery.create(self);
      VendorQuery.show;
  end;
  VendorQuery.Edit3.text:='1';   //1為台灣建立廠商, 2為越南建立廠商
end;

procedure TVendorMapSet.BitBtn2Click(Sender: TObject);
begin
  if VendorQuery<>nil then
  begin
    VendorQuery.show;
    VendorQuery.windowstate:=wsmaximized;
  end
  else
  begin
      VendorQuery:=TVendorQuery.create(self);
      VendorQuery.show;
  end;
  VendorQuery.Edit3.text:='2';
end;

procedure TVendorMapSet.FormDestroy(Sender: TObject);
begin
  VendorMapSet:=nil;
end;

procedure TVendorMapSet.BB4Click(Sender: TObject);
begin
  query1.RequestLive:=true;    //將query的唯獨屬性打開
  query1.CachedUpdates:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB5.Enabled:=true;
end;

procedure TVendorMapSet.BB5Click(Sender: TObject);
begin
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=true;
  BB5.Enabled:=false;
  edit1.Text:='';
  edit2.Text:='';
  query1.RequestLive:=false;    //將query的唯獨屬性關閉
  query1.CachedUpdates:=false;
end;

procedure TVendorMapSet.BB2Click(Sender: TObject);
begin
  if (edit1.Text<>'') or (edit2.Text<>'') then
  begin
    try //先嘗試寫入DB是否成功
      with query1 do
      begin
        append;
        FieldByName('csbh').Value:=edit1.Text;
        FieldByName('csuserid').Value:='system';
        FieldByName('csuserpassword').Value:='system';
        FieldByName('csbhv').Value:=edit2.Text;
        FieldByName('userid').Value:=main.edit1.Text;
        FieldByName('userdate').Value:=now;
        UPSQL1.Apply(ukinsert);
      end;
    except;
      showmessage('Have wrong');
    end;
    edit1.Text:='';
    edit2.Text:='';
    query1.Active:=false;
    query1.Active:=true;
  end
  else
  begin
    showmessage('TW or VN Vendor date is blank, can''t insert!');
  end;
end;

procedure TVendorMapSet.BB6Click(Sender: TObject);
begin
  close;
end;

procedure TVendorMapSet.BB3Click(Sender: TObject);
begin
    with query1 do
    begin
      if query1.RecordCount > 0 then
      begin
        UPSQL1.Apply(ukdelete);
      end;
    end;
    query1.Active:=false;
    query1.Active:=true;
end;

end.
