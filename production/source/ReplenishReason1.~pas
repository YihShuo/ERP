unit ReplenishReason1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Buttons, DBTables, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  Menus, GridsEh, DBGridEh;

type
  TReplenishReason = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
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
    Query1YWSM: TStringField;
    Query1USERDate: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1YYBH: TStringField;
    Query1ZWSM: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
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
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishReason: TReplenishReason;

implementation

uses main1;

{$R *.dfm}

procedure TReplenishReason.FormClose(Sender: TObject;
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

procedure TReplenishReason.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TReplenishReason.FormCreate(Sender: TObject);
begin
query1.Active:=false;
end;

procedure TReplenishReason.BB2Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
N1.Enabled:=true;
N2.Enabled:=true;
end;

procedure TReplenishReason.BB4Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;  
N1.Enabled:=true;
N2.Enabled:=true;
end;

procedure TReplenishReason.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('YYBH').isnull then
                begin
                  query1.delete;
                end
                 else
                   begin
                     query1.edit;
                     query1.FieldByName('YYBH').Value:=Uppercase(query1.FieldByName('YYBH').Value);
                     query1.FieldByName('YWSM').Value:=Uppercase(query1.FieldByName('YWSM').Value);
                    // query1.FieldByName('GSBH').Value :=main.Edit2.text;
                     query1.FieldByName('USERDATE').Value:=date;
                     query1.FieldByName('USERID').Value:=main.edit1.text;
                     Query1.FieldByName('YN').Value:='2';
                     upsql1.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               if query1.fieldbyname('YN').value='0' then
                 begin
                   upsql1.Apply(ukdelete);
                 end
                 else
                   begin
                     query1.edit;
                     query1.FieldByName('YWSM').Value:=Uppercase(query1.FieldByName('YWSM').Value);
                     //query1.FieldByName('ZWSM').Value:=Uppercase(query1.FieldByName('ZWSM').Value);
                     query1.FieldByName('USERDATE').Value:=date;
                     query1.FieldByName('USERID').Value:=main.edit1.text;
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
    N1.Enabled:=false;
    N2.Enabled:=false;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TReplenishReason.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from SCBLYY where YYBH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and YWSM like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by YYBH');
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

procedure TReplenishReason.BB6Click(Sender: TObject);
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
N1.Enabled:=false;
N2.Enabled:=false;
end;

procedure TReplenishReason.BB7Click(Sender: TObject);
begin
close;
end;

procedure TReplenishReason.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TReplenishReason.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TReplenishReason.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TReplenishReason.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TReplenishReason.bbt6Click(Sender: TObject);
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
      showmessage('Succeed.');
      eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TReplenishReason.FormDestroy(Sender: TObject);
begin
ReplenishReason:=nil;
end;

procedure TReplenishReason.N1Click(Sender: TObject);
begin
with query1 do
  begin
    edit;
    fieldbyname('YN').Value:='5';
    post;
  end;
end;

procedure TReplenishReason.N2Click(Sender: TObject);
begin

with query1 do
  begin
    edit;
    fieldbyname('YN').Value:='1';
    post;
  end;
end;

procedure TReplenishReason.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

 if query1.FieldByName('YN').value='5' then
  begin
    dbgrid1.canvas.font.color:=clred;
    //dbgrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
