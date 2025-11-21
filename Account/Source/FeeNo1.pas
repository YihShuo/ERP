unit FeeNo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,
  DBCtrls, GridsEh, DBGridEh;

type
  TFeeNo = class(TForm)
    Panel2: TPanel;
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
    Query1FYBH: TStringField;
    Query1Memo: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1FYJC: TStringField;
    DC1: TDBCheckBox;
    DBGridEh1: TDBGridEh;
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
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FeeNo: TFeeNo;

implementation

uses main1;

{$R *.dfm}

procedure TFeeNo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TFeeNo.BB7Click(Sender: TObject);
begin
close;
end;

procedure TFeeNo.BB1Click(Sender: TObject);
begin
edit1.SetFocus;
end;

procedure TFeeNo.Button1Click(Sender: TObject);
begin
with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from CWFYZL');
    sql.add('where FYBH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    sql.add('and FYJC like');
    sql.add(''''+'%'+edit2.text+'%'+'''');
    sql.add('order by FYBH');
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

procedure TFeeNo.BB2Click(Sender: TObject);
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

procedure TFeeNo.BB4Click(Sender: TObject);
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

procedure TFeeNo.BB6Click(Sender: TObject);
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

procedure TFeeNo.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TFeeNo.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TFeeNo.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TFeeNo.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TFeeNo.bbt6Click(Sender: TObject);
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

procedure TFeeNo.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  edit2.SetFocus;
end;

procedure TFeeNo.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  button1.SetFocus;
end;

procedure TFeeNo.BB5Click(Sender: TObject);
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
              if query1.fieldbyname('FYBH').isnull then
                begin
                  showmessage('Pls key in Fee NO first.');
                  abort;
                end
                 else
                   begin
                     query1.edit;
                     query1.FieldByName('userID').Value:=main.edit1.text;
                     query1.FieldByName('userdate').Value:=date;
                     query1.FieldByName('YN').Value:='1';
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
                     if query1.FieldByName('USERDATE').value>=(date-10) then
                       begin
                         query1.edit;
                         query1.FieldByName('userID').Value:=main.edit1.text;
                         query1.FieldByName('userdate').Value:=date;
                         upsql1.apply(ukmodify);
                       end
                       else
                         begin
                           showmessage(query1.fieldbyname('FYBH').value+' >10 days,can not modify.');
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

procedure TFeeNo.BB3Click(Sender: TObject);
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

procedure TFeeNo.FormDestroy(Sender: TObject);
begin
FeeNo:=nil;
end;

procedure TFeeNo.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (gdFocused in State) then
  begin
    if (DataCol=5) then
    begin
      DC1.Left:=Rect.Left  + DBGridEh1.Left;
      DC1.Top:=Rect.Top   + DBGridEh1.top;
      DC1.Width:=Rect.Right - Rect.Left;
      DC1.Height:=Rect.Bottom- Rect.Top;
      DC1.Visible:=True;
    end else
      DC1.Visible:=false;
  end;

  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clLime;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if Query1.FieldByName('YN').value='2' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

end.
