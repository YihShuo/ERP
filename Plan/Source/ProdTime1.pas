unit ProdTime1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, GridsEh, DBGridEh, DBTables, StdCtrls, Buttons, ExtCtrls,
  Mask, DBCtrls,comobj, Menus;

type
  TProdTime = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query1: TQuery;
    DBGridEh1: TDBGridEh;
    SCSJ: TQuery;
    SCSJXH: TStringField;
    SCSJFTime: TStringField;
    SCSJTTime: TStringField;
    SCSJUSERID: TStringField;
    SCSJUSERDATE: TDateTimeField;
    SCSJYN: TStringField;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    SCSJYXGS: TFloatField;
    PopupMenu1: TPopupMenu;
    Lock1: TMenuItem;
    UnLock1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Lock1Click(Sender: TObject);
    procedure UnLock1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdTime: TProdTime;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TProdTime.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TProdTime.FormDestroy(Sender: TObject);
begin
ProdTime:=nil;
end;

procedure TProdTime.FormCreate(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
SCSJ.active:=true;
end;

procedure TProdTime.BB2Click(Sender: TObject);
begin

with SCSJ do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TProdTime.BB4Click(Sender: TObject);
begin

with SCSJ do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
BB5.Enabled:=true;
BB6.Enabled:=true;
end;

procedure TProdTime.BB5Click(Sender: TObject);
var i:integer;
a:string;
begin
SCSJ.First;
while not SCSJ.Eof do
  begin
    if (SCSJ.fieldbyname('FTime').isnull or SCSJ.fieldbyname('TTime').isnull) then
      begin
        showmessage('Pls select time first.');
        abort;
      end;
    if SCSJ.fieldbyname('YXGS').isnull then
      begin
        showmessage('Pls select hour first.');
        abort;
      end;
    SCSJ.Next;
  end;
try
    SCSJ.first;
    for i:=1 to SCSJ.RecordCount do
      begin
        case SCSJ.updatestatus of
          usinserted:
            begin
              with query1 do
                begin
                  active:=false;
                  sql.Clear;
                  sql.add('select XH from SCSJ order by XH DESC ');
                  active:=true;
                  if recordcount>0 then
                    begin
                      a:=fieldbyname('XH').Value;
                    end
                    else
                      a:='0';
                  a:=inttostr(strtoint(a)+1);
                  if length(a)<2 then
                    begin
                      a:='0'+a;
                    end;
                end;
              SCSJ.Edit;
              SCSJ.FieldByName('XH').Value:=a;
              SCSJ.FieldByName('USERID').Value:=main.edit1.text;
              SCSJ.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
              SCSJ.FieldByName('YN').Value:='1';
              upSQL1.apply(ukinsert);
            end;
          usmodified:
            begin
              SCSJ.Edit;
              //SCSJ.FieldByName('XH').Value:=a;
              SCSJ.FieldByName('USERID').Value:=main.edit1.text;
              SCSJ.FieldByName('USERDATE').Value:=formatdatetime('yyyy/MM/dd',NDate);
              upSQL1.apply(ukmodify);
            end;
          end;
        SCSJ.Next;
      end;
SCSJ.active:=false;
SCSJ.cachedupdates:=false;
SCSJ.requestlive:=false;
SCSJ.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;

end;

procedure TProdTime.BB6Click(Sender: TObject);
begin

with SCSJ do
  begin
    requestlive:=false;
    cachedupdates:=false;
    active:=false;
    active:=true;
  end;
BB5.Enabled:=false;
BB6.Enabled:=false;
end;

procedure TProdTime.BB7Click(Sender: TObject);
begin
Close;
end;

procedure TProdTime.BBT1Click(Sender: TObject);
begin
SCSJ.First;
end;

procedure TProdTime.BBT2Click(Sender: TObject);
begin
SCSJ.prior;
end;

procedure TProdTime.BBT3Click(Sender: TObject);
begin
SCSJ.next;
end;

procedure TProdTime.BBT4Click(Sender: TObject);
begin
SCSJ.last;
end;

procedure TProdTime.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  SCSJ.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   SCSJ.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=SCSJ.fields[i].FieldName;
          end;
        SCSJ.First;
        j:=2;
        while   not   SCSJ.Eof   do
          begin
            for   i:=0   to   SCSJ.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=SCSJ.Fields[i].Value;
              end;
            SCSJ.Next;
            inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TProdTime.Lock1Click(Sender: TObject);
begin
if SCSJ.requestlive then
  begin
    if  SCSJ.FieldByName('YN').Value='1' then
      begin
        SCSJ.Edit;
        SCSJ.FieldByName('YN').Value:='5';
      end;
  end;
end;

procedure TProdTime.UnLock1Click(Sender: TObject);
begin
if SCSJ.requestlive then
  begin
    if  SCSJ.FieldByName('YN').Value='5' then
      begin
        SCSJ.Edit;
        SCSJ.FieldByName('YN').Value:='1';
      end;
  end;
end;

end.
