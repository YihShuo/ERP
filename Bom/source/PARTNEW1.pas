unit PARTNEW1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  GridsEh, DBGridEh;

type
  TPARTNEW = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
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
    Query1bwdh: TStringField;
    Query1zwsm: TStringField;
    Query1ywsm: TStringField;
    Query1bz: TStringField;
    Query1bwlb: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PARTNEW: TPARTNEW;

implementation

uses main1;

{$R *.dfm}

procedure TPARTNEW.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TPARTNEW.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TPARTNEW.FormCreate(Sender: TObject);
begin
query1.Active:=false;
end;

procedure TPARTNEW.BB2Click(Sender: TObject);
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

procedure TPARTNEW.BB4Click(Sender: TObject);
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

procedure TPARTNEW.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('BWDH').isnull then
                begin
                  query1.delete;
                end
                 else
                   begin
                     query1.edit;
                     //query1.FieldByName('ZWSM').Value :=query1.FieldByName('YWSM').Value;
                     query1.FieldByName('USERDATE').Value:=date;
                     query1.FieldByName('USERID').Value:=main.edit1.text;
                     Query1.FieldByName('YN').Value:='2';
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
                // bug  ??
                  if ((query1.FieldByName('USERDATE').value<(date-10)) or (formatdatetime('yyyy/MM/dd',date)<'2008/11/01')) then
                    begin
                      query1.edit;
                     // query1.FieldByName('ZWSM').Value :=query1.FieldByName('YWSM').Value;
                      query1.FieldByName('USERID').Value:=main.edit1.text;
                      query1.FieldByName('USERdate').Value:=date;
                      upsql1.apply(ukmodify);
                    end
                    else
                      begin
                        showmessage(query1.fieldbyname('BWDH').value+' >10 days,can not modify.');
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
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TPARTNEW.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from bwzl where bwdh like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and ywsm like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by bwdh');
    active:=true;
  end;
panel3.visible:=false;
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

procedure TPARTNEW.BB6Click(Sender: TObject);
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

procedure TPARTNEW.BB7Click(Sender: TObject);
begin
close;
end;

procedure TPARTNEW.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TPARTNEW.BBT2Click(Sender: TObject);
begin
query1.Prior;
end;

procedure TPARTNEW.BBT3Click(Sender: TObject);
begin
query1.Next;
end;

procedure TPARTNEW.BBT4Click(Sender: TObject);
begin
query1.Last;
end;

procedure TPARTNEW.bbt6Click(Sender: TObject);
var
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
   { if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
      WorkBook.close;  }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TPARTNEW.FormDestroy(Sender: TObject);
begin
PARTNEW:=nil;
end;

procedure TPARTNEW.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
