unit AccountBank1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls,comobj;

type
  TAccountBank = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
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
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1ZHBH: TStringField;
    Query1BankNo: TStringField;
    Query1ZHJC: TStringField;
    Query1BankName: TStringField;
    Query1ADDRESS: TStringField;
    Query1Telphone: TStringField;
    Query1FAX: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB7Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountBank: TAccountBank;

implementation

uses main1, DM3, PayMentCon1;

{$R *.dfm}

procedure TAccountBank.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TAccountBank.BB7Click(Sender: TObject);
begin
close;
end;

procedure TAccountBank.BB1Click(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TAccountBank.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from CWZH');
    sql.add('where BankNo like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and ZHJC like');
    sql.add(''''+'%'+edit2.text+'%'+'''');
    sql.add('order by ZHBH');
    active:=true;
  end;
bb2.enabled:=true;
bb3.enabled:=true;
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

procedure TAccountBank.BB2Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TAccountBank.BB4Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TAccountBank.BB6Click(Sender: TObject);
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

procedure TAccountBank.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TAccountBank.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TAccountBank.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TAccountBank.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TAccountBank.bbt6Click(Sender: TObject);
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
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TAccountBank.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TAccountBank.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.SetFocus;
end;

procedure TAccountBank.BB5Click(Sender: TObject);
var i:integer;
a:string;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('ZHBH').isnull then
                begin
                  showmessage('Pls key in account NO first.');
                  abort;
                end
                 else
                   begin
                     query1.edit;
                     query1.FieldByName('userID').Value:=main.edit1.text;
                     query1.FieldByName('userdate').Value:=date;
                     query1.FieldByName('YN').Value:='2';
                     upsql1.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               if query1.FieldByName('YN').value='0' then
                 begin
                   if query1.FieldByName('USERDATE').value>=date  then
                     begin
                      upsql1.Apply(ukdelete);
                     end
                     else
                       begin
                          showmessage(query1.fieldbyname('ZHBH').value+' >1 days,can not delete.');
                       end;
                 end
                 else
                   begin
                     if query1.FieldByName('USERDATE').value>=(date-3) then
                       begin
                         query1.edit;
                         query1.FieldByName('userID').Value:=main.edit1.text;
                         query1.FieldByName('userdate').Value:=date;
                         upsql1.apply(ukmodify);
                       end
                       else
                         begin
                           showmessage(query1.fieldbyname('ZHBH').value+' >10 days,can not modify.');
                         end;
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
  Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TAccountBank.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
bb5.enabled:=true;
bb6.enabled:=true;
end;

procedure TAccountBank.FormDestroy(Sender: TObject);
begin
AccountBank:=nil;
end;

procedure TAccountBank.FormCreate(Sender: TObject);
begin
  try
    dm2.erp2acc.Connected:=true;
  except
    showmessage('You Can not Do It!!!');
    PayMentCon.Close;
  end;
end;

end.
