unit MemoNew1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Buttons, StdCtrls, GridsEh, DBGridEh, ExtCtrls,
  Ehlibbde,comobj, Menus;

type
  TMemoNew = class(TForm)
    Panel2: TPanel;
    DBGrideh1: TDBGridEh;
    Panel3: TPanel;
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
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Query1KHBH: TStringField;
    Query1MENO: TStringField;
    Query1ZWSM: TStringField;
    Query1VNSM: TStringField;
    Query1USERID: TStringField;
    Query1USERDate: TDateTimeField;
    Query1YN: TStringField;
    Query1KFJC: TStringField;
    YWDDBZ: TQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    total: TRadioButton;
    shippinig: TRadioButton;
    production: TRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
    procedure DBGrideh1EditButtonClick(Sender: TObject);
    procedure DBGrideh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MemoNew: TMemoNew;

implementation

uses main1, MemoNew_KH1;

{$R *.dfm}

procedure TMemoNew.FormClose(Sender: TObject; var Action: TCloseAction);
begin

if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TMemoNew.FormDestroy(Sender: TObject);
begin
MemoNew:=nil;
end;

procedure TMemoNew.Button1Click(Sender: TObject);
begin

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select YWBZZL.*,KFZL.KFJC ');
    sql.add('from YWBZZL');
    sql.add('left join KFZL on KFZl.KFDH=YWBZZL.KHBH');
    sql.add('where YWBZZL.MENO like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWBZZL.VNSM like '+''''+'%'+edit2.Text+'%'+'''');
    // fix
    if shippinig.Checked then
      sql.add('      and YWBZZL.YN = 2 ');
    if production.Checked then
      sql.add('      and YWBZZL.YN = 1 ');
    sql.add('      and KFZL.KFJC like '+''''+'%'+edit3.Text+'%'+'''');
    sql.add('order by YWBZZL.MENO');
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

procedure TMemoNew.BB2Click(Sender: TObject);
begin

with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrideh1.columns[3].buttonstyle:=cbsellipsis;
end;

procedure TMemoNew.BB4Click(Sender: TObject);
begin

with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
DBGrideh1.columns[3].buttonstyle:=cbsellipsis;
end;

procedure TMemoNew.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('MENO').isnull then
                begin
                  query1.delete;
                end
                 else
                   begin
                     query1.edit;
                     query1.FieldByName('MENO').Value:=Uppercase(query1.FieldByName('MENO').Value);
                     query1.FieldByName('USERDATE').Value:=date;
                     query1.FieldByName('USERID').Value:=main.edit1.text;
                     // fix
                     if Query1.FieldByName('YN').Value <> 2 then
                       Query1.FieldByName('YN').Value := 1;
                     upsql1.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
               if query1.fieldbyname('YN').value='0' then
                 begin
                   if  query1.fieldbyname('USERDATE').value>=(date-3) then
                     begin
                       upsql1.Apply(ukdelete);
                     end
                     else
                       begin
                         showmessage(query1.FieldByName('MENO').Value+' >3 days,can not delete.');
                       end;
                 end
                 else
                   begin
                     if query1.fieldbyname('USERDATE').value>=(date-10) then
                       begin
                         query1.edit;
                         query1.FieldByName('MENO').Value:=Uppercase(query1.FieldByName('MENO').Value);
                         query1.FieldByName('USERDATE').Value:=date;
                         query1.FieldByName('USERID').Value:=main.edit1.text;
                         Query1.FieldByName('YN').Value:='1';
                         upsql1.apply(ukmodify);
                       end
                       else
                         begin
                           showmessage(query1.FieldByName('MENO').Value+' >10 days,can not modify.');
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
DBGrideh1.columns[3].buttonstyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TMemoNew.BB6Click(Sender: TObject);
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
DBGrideh1.columns[3].buttonstyle:=cbsnone;
end;

procedure TMemoNew.BB7Click(Sender: TObject);
begin
close;
end;

procedure TMemoNew.BBT1Click(Sender: TObject);
begin

query1.First;
end;

procedure TMemoNew.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TMemoNew.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TMemoNew.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TMemoNew.bbt6Click(Sender: TObject);
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

procedure TMemoNew.DBGrideh1EditButtonClick(Sender: TObject);
begin
  MemoNew_KH:=TMemoNew_KH.create(self);
  MemoNew_KH.show;
end;

procedure TMemoNew.DBGrideh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if  query1.fieldbyname('YN').Value='0' then
  begin
    dbgrideh1.canvas.font.color:=clred;
   // dbgrideh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

// fix
procedure TMemoNew.N1Click(Sender: TObject);
begin
if messagedlg('change to shipping ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin

  with query1 do
  begin
   cachedupdates:=true;
   requestlive:=true;
   edit;
   query1.FieldByName('USERDATE').Value:=date;
   FieldByName('USERID').Value:=main.edit1.text;
   FieldByName('YN').Value:='2';
   Post;
   upsql1.apply(ukmodify);
//   cachedupdates:=false;
//   requestlive:=false;
   bb5.enabled:=false;
   bb6.enabled:=false;
  end;

  with YWDDBZ do
  begin
    active:=false;
    sql.clear;
    sql.add('update YWDDBZ');
    sql.Add('set');
    sql.Add('yn = 2');
    sql.Add('where meno = ''' + query1.FieldByName('MENO').Value +'''');
   // showmessage(YWDDBZ.Text);
    ExecSQL;
  end;
  ShowMessage('sucessed');
end;   // end of  messagedlg

end;

procedure TMemoNew.N2Click(Sender: TObject);
begin
if messagedlg('change to production ???',mtconfirmation,[mbYes,mbNo],0)=mrYes then
begin

  with query1 do
  begin
   cachedupdates:=true;
   requestlive:=true;
   edit;
   query1.FieldByName('USERDATE').Value:=date;
   FieldByName('USERID').Value:=main.edit1.text;
   FieldByName('YN').Value:='1';
   Post;
   upsql1.apply(ukmodify);

 //  cachedupdates:=false;
 //  requestlive:=false;
   bb5.enabled:=false;
   bb6.enabled:=false;
  end;

  with YWDDBZ do
  begin
    active:=false;
    sql.clear;
    sql.add('update YWDDBZ');
    sql.Add('set');
    sql.Add('yn = 1');
    sql.Add('where meno = ''' + query1.FieldByName('MENO').Value +'''');
   // showmessage(YWDDBZ.Text);
    ExecSQL;
  end;
  ShowMessage('sucessed');
end;   // end of  messagedlg
end;

end.
