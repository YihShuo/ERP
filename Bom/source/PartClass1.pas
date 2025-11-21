unit PartClass1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls,comobj;

type
  TPartClass = class(TForm)
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
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1LBBH: TStringField;
    Query1MEMO: TStringField;
    Query1CMEMO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PartClass: TPartClass;

implementation

uses main1;

{$R *.dfm}

procedure TPartClass.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TPartClass.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from CLLBVN ');
    sql.add('where LBBH like '+''''+edit1.Text+'%'+'''');
    sql.add('and memo like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by LBBH');
    active:=true;
  end; 
bb2.enabled:=true;
bb4.enabled:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb7.enabled:=true;
bbt1.enabled:=true;
bbt2.enabled:=true;
bbt3.enabled:=true;
bbt4.enabled:=true;
bbt5.enabled:=true;
bbt6.enabled:=true;
end;

procedure TPartClass.BB2Click(Sender: TObject);
begin

if Query1.Active then
  begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.Insert;
    bb5.Enabled:=true;
    bb6.Enabled:=true;
  end
    else
      begin
        showmessage('No active.');
      end;
end;

procedure TPartClass.BB3Click(Sender: TObject);
begin

if Query1.Active then
  begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.edit;
    query1.FieldByName('YN').Value:='0';
    bb5.Enabled:=true;
    bb6.Enabled:=true; 
  end
    else
      begin
        showmessage('No active.');
      end;
end;

procedure TPartClass.BB4Click(Sender: TObject);
begin

if Query1.Active then
  begin
    query1.RequestLive:=true;
    query1.CachedUpdates:=true;
    query1.edit;  
    bb5.Enabled:=true;
    bb6.Enabled:=true; 
  end
    else
      begin
        showmessage('No active.');
      end;
end;

procedure TPartClass.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('LBBH').isnull then
                begin
                  query1.delete;
                end
                 else
                   begin
                     query1.edit;
                     query1.FieldByName('userID').Value:=main.edit1.text;
                     query1.FieldByName('userdate').Value:=date;
                     Query1.FieldByName('YN').Value:='1';
                     upsql1.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if query1.fieldbyname('YN').value='0'then
                begin
                  upsql1.apply(ukdelete);
                end
                else
                  begin
                    query1.edit;
                    query1.FieldByName('userID').Value:=main.edit1.text;
                    query1.FieldByName('userdate').Value:=date;
                    upsql1.apply(ukmodify);
                  end;
             end;
        end;
        query1.next;
      end;
query1.active:=false;
query1.cachedupdates:=false;
query1.requestlive:=false;
query1.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);

end;


end;

procedure TPartClass.BB6Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb5.enabled:=false;
bb6.enabled:=false;
end;

procedure TPartClass.BB7Click(Sender: TObject);
begin

close;
end;

procedure TPartClass.BBT1Click(Sender: TObject);
begin

query1.First;
end;

procedure TPartClass.BBT2Click(Sender: TObject);
begin

query1.Prior;
end;

procedure TPartClass.BBT3Click(Sender: TObject);
begin

query1.Next;
end;

procedure TPartClass.BBT4Click(Sender: TObject);
begin

query1.Last;
end;

procedure TPartClass.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TPartClass.FormDestroy(Sender: TObject);
begin
PartClass:=nil;
end;

end.
