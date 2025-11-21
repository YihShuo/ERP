unit Company1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, Mask,
  DBCtrls,comobj;

type
  TCompany = class(TForm)
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
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query1gsdh: TStringField;
    Query1gszwqm1: TStringField;
    Query1gsywqm: TStringField;
    Query1gsywdz: TStringField;
    Query1tybh: TStringField;
    Query1dh: TStringField;
    Query1cz: TStringField;
    Query1USERID: TStringField;
    Label2: TLabel;
    Query1USERDATE: TDateTimeField;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    SaveDialog1: TSaveDialog;
    Query1gszwqm: TStringField;
    Query1gszwdz: TStringField;
    Query1ex_rate: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Company: TCompany;

implementation

uses main1;

{$R *.dfm}

procedure TCompany.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TCompany.BB1Click(Sender: TObject);
begin
//panel2.Visible:=false;
panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TCompany.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from Bgszl');
    sql.add('where gsywqm like ');
    sql.add(''''+'%'+edit1.text+'%'+'''');
    sql.add('order by gsdh');
    active:=true;
  end;
panel3.visible:=false;
panel2.visible:=true;
bb2.enabled:=true;
//bb3.enabled:=true;
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
DBEdit1.SetFocus;
end;

procedure TCompany.BB2Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBEdit1.SetFocus;
end;

procedure TCompany.BB4Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBedit1.SetFocus;
end;

procedure TCompany.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('gsdh').isnull then
                begin
                  query1.delete;
                end
                 else
                   begin
                     query1.edit;
                     query1.FieldByName('userID').Value:=main.edit1.text;
                     query1.FieldByName('userdate').Value:=date;
                     upsql1.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               query1.edit;
               query1.FieldByName('userID').Value:=main.edit1.text;
               query1.FieldByName('userdate').Value:=date;
               upsql1.apply(ukmodify);
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

procedure TCompany.BB6Click(Sender: TObject);
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

procedure TCompany.BB7Click(Sender: TObject);
begin
close;
end;

procedure TCompany.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TCompany.BBT2Click(Sender: TObject);
begin
query1.Prior;
end;

procedure TCompany.BBT3Click(Sender: TObject);
begin
query1.Next;
end;

procedure TCompany.BBT4Click(Sender: TObject);
begin
query1.Last;
end;



procedure TCompany.bbt6Click(Sender: TObject);
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
        for   i:=0   to   8   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  8  do
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
      WorkBook.close;   }
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;         

procedure TCompany.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1click(nil);
end;

procedure TCompany.FormDestroy(Sender: TObject);
begin
Company:=nil;
end;

end.
