unit I_CLLBZL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Buttons;

type
  TI_CLLBZL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    EDIT1: TEdit;
    Edit2: TEdit;
    DBGrid1: TDBGridEh;
    CLLBZL: TQuery;
    CLLBZLcllb: TStringField;
    CLLBZLZWSM: TStringField;
    CLLBZLYWSM: TStringField;
    DataSource1: TDataSource;
    CLLBZLUSERID: TStringField;
    CLLBZLUSERDATE: TDateTimeField;
    CLLBZLYN: TStringField;
    UpdateSQL1: TUpdateSQL;
    Panel2: TPanel;
    BB2: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  I_CLLBZL: TI_CLLBZL;

implementation
  uses Foxing1, main1;
{$R *.dfm}

procedure TI_CLLBZL.Button1Click(Sender: TObject);
begin
  with CLLBZL do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select CLLBZL.*  ');
    SQL.Add('from '+main.LIY_DD+'.dbo.CLLBZL CLLBZL  ');
    SQL.Add('where 1=1 ');
    if Edit1.Text<>'' then
    SQL.Add('and CLLBZL.cllb like '''+Edit1.Text+'%'' ');
    if Edit2.Text<>'' then
    SQL.Add('and CLLBZL.YWSM like ''%'+Edit2.Text+'%'' ');
    SQL.Add('order by cllb ');
    Active:=true;
  end;
  Panel1.Visible:=false;
  BB2.Enabled:=true;
  BB4.Enabled:=true;
end;

procedure TI_CLLBZL.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TI_CLLBZL.FormDestroy(Sender: TObject);
begin
  I_CLLBZL:=nil;
end;

procedure TI_CLLBZL.BB6Click(Sender: TObject);
begin
  with CLLBZL do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB2.Enabled:=true;
  BB4.enabled:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TI_CLLBZL.BB2Click(Sender: TObject);
begin
  with CLLBZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  BB2.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TI_CLLBZL.BB4Click(Sender: TObject);
begin
  with CLLBZL do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB2.Enabled:=false;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TI_CLLBZL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TI_CLLBZL.BB5Click(Sender: TObject);
var i:integer;
    y,m:string;
begin
  try
    CLLBZL.first;
    for i:=1 to CLLBZL.RecordCount do
    begin
      case CLLBZL.updatestatus of
        usinserted:
        begin
          if (CLLBZL.FieldByName('cllb').AsString='') then
          begin
            Showmessage('Please input cllb ');
            abort;
          end;
          CLLBZL.edit;
          CLLBZL.FieldByName('userID').Value:=main.edit1.text;
          CLLBZL.FieldByName('YN').Value:='1';
          UpdateSQL1.apply(ukInsert);
        end;
        usmodified:
        begin
          if CLLBZL.FieldByName('USERID').value<>main.Edit1.Text then
          begin
            showmessage('不是你的，不要亂動。khong phai ban khong duoc tu sua');
          end else begin
            UpdateSQL1.apply(ukmodify);
          end;
        end;
      end;
      CLLBZL.next;
    end;
  CLLBZL.active:=false;
  CLLBZL.cachedupdates:=false;
  CLLBZL.requestlive:=false;
  CLLBZL.active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

end.
