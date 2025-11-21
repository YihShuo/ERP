unit SysUser1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, Buttons,
  ExtCtrls,comobj, GridsEh, DBGridEh;

type
  TSysUser = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    Button1: TButton;
    Edit1: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query1USERID: TStringField;
    Query1USERNAME: TStringField;
    Query1PWD: TStringField;
    Query1EMAIL: TStringField;
    Query1LASTDATETIME: TDateTimeField;
    bbt5: TBitBtn;
    bbt6: TBitBtn;
    BitBtn1: TBitBtn;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    Qtemp: TQuery;
    Query1YN: TStringField;
    Query1depid: TStringField;
    Query1Report: TStringField;
    Label3: TLabel;
    Edit2: TEdit;
    Query1passwordchend: TDateTimeField;
    Query1fromIP: TStringField;
    Query1Engname: TStringField;
    Query1SupervisorID: TStringField;
    Label5: TLabel;
    YNEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysUser: TSysUser;

implementation

uses Sysuser_work1, main1, Report1;

{$R *.dfm}

procedure TSysUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TSysUser.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TSysUser.Button1Click(Sender: TObject);
begin
  if not query1.RequestLive then
  begin
    with query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select Busers.*');
        sql.add('from Busers');
        sql.add('where Busers.userid like ');
        sql.add(''''+edit1.Text+'%'+'''');
        if Edit2.Text<>'' then
        sql.add(' and Busers.username like ''%'+Edit2.Text+'%'' ');
        if YNEdit.Text<>'' then
        sql.add(' and Busers.YN='''+YNEdit.Text+''' ');
        sql.add('order by Busers.userid');
        active:=true;
      end;
  end
  else
    begin
      showmessage('Pls save data first.');
    end;
end;

procedure TSysUser.BB1Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.Columns[5].ButtonStyle:=cbsEllipsis;
//BitBtn1.Visible:=true;
//dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSysUser.BB3Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
DBGrid1.Columns[5].ButtonStyle:=cbsEllipsis;
//BitBtn1.Visible:=true;
//dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TSysUser.BB4Click(Sender: TObject);
var i:integer;
begin

  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('USERID').isnull then
              begin
                query1.delete;
              end else
              begin
                 if query1.FieldByName('pwd').IsNull then
                 begin
                     if  messagedlg('No password,do you want to set?',mtconfirmation,[mbYes,mbNo],0)=mryes then
                     begin
                       abort;
                     end;
                 end;
                 upsql1.apply(ukinsert);
              end;
            end;
          usmodified:
             begin
               if query1.FieldByName('YN').value='0' then
                 begin
                   if messagedlg('Are you sure to delete the user?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
                   begin
                       if  query1.fieldbyname('LASTDATETIME').IsNull=true then
                       begin
                         with Qtemp do
                         begin
                             active:=false;
                             sql.Clear;
                             sql.Add('insert into bdelrec ') ;
                             sql.add('VALUES ('+''''+'busers'+''''+',');
                             sql.add(''''+query1.fieldbyname('USERID').value+''''+',null,null');
                             sql.add(','+''''+main.edit1.Text+''''+', GETDATE())');
                             sql.add('delete BLimits ');
                             sql.add('where USERID='+''''+query1.fieldbyname('USERID').Value+'''');
                             //memo1.text:=sql.text;
                             execsql;
                             active:=false;
                         end;
                         upsql1.Apply(ukdelete);
                       end else
                       begin
                         Showmessage('Don''t allow Delete. already login use ');
                       end;
                   end;
                 end else
                 begin
                      with Qtemp do
                      begin
                           active:=false;
                           sql.Clear;
                           sql.Add('insert into bdelrec ') ;
                           sql.add('VALUES ('+''''+'busers'+''''+',null,null,null');
                           sql.add(','+''''+main.edit1.Text+''''+', GETDATE())');
                           //memo1.text:=sql.text;
                           execsql;
                           active:=false;
                      end;
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
    bb4.enabled:=false;
    bb5.enabled:=false;
  except
   Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

end;

procedure TSysUser.BB5Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
bb4.enabled:=false;
bb5.enabled:=false;  
//BitBtn1.Visible:=false;
//dbgrid1.columns[0].ButtonStyle:=cbsNone;
end;

procedure TSysUser.BB6Click(Sender: TObject);
begin
close;
end;

procedure TSysUser.Query1AfterOpen(DataSet: TDataSet);
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  bbt5.Enabled:=true;
  bbt6.Enabled:=true;
end;

procedure TSysUser.bbt6Click(Sender: TObject);
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
      Application.MessageBox('沒有安裝Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   5   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   5   do
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

procedure TSysUser.DBGrid1EditButtonClick(Sender: TObject);
begin

 if DBGrid1.SelectedField.FieldName='Report' then
 begin
   Edit1.SetFocus;
   Report:=TReport.Create(self);
   Report.showModal();
   Report.free;
 end;
end;

procedure TSysUser.BitBtn1Click(Sender: TObject);
begin
   DBGrid1EditButtonClick(nil);
end;

procedure TSysUser.BB2Click(Sender: TObject);
begin
if messagedlg('Are you sure to delete this userid?',mtconfirmation,[mbYes,mbNo],0)<>mrYes then
  begin
    abort;
  end;
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
    fieldbyname('YN').Value:=0;
  end;
bb4.enabled:=true;
bb5.enabled:=true;
end;

procedure TSysUser.DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
if query1.FieldByName('YN').value='0' then
  dbgrid1.canvas.font.color:=clred;
end;

procedure TSysUser.FormDestroy(Sender: TObject);
begin
  SysUser:=nil;
end;

procedure TSysUser.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=char(13) then
   Button1.Click;
end;

end.
