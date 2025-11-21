unit BWorker1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Grids, DBGrids, DBCtrls, Mask, StdCtrls, Buttons,
  ExtCtrls, DB,comobj;

type
  TBWorker = class(TForm)
    Query1: TQuery;
    DS1: TDataSource;
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
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Label6: TLabel;
    ListBox1: TDBLookupComboBox;
    TDep: TTable;
    DSDep: TDataSource;
    Query1ID: TStringField;
    Query1DepID: TStringField;
    Query1WorkName: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1depname: TStringField;
    SaveDialog1: TSaveDialog;
    UpSQL1: TUpdateSQL;
    Query1Certificate: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ListBox1CloseUp(Sender: TObject);
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BWorker: TBWorker;

implementation

uses main1, BWorker_Dep1, BWorker_Det1;

{$R *.dfm}

procedure TBWorker.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TBWorker.DBGrid1TitleClick(Column: TColumn);
var
 temp, title: string;
begin {
 temp := Column.FieldName;
 Query1.Close;
 if Column.Index<>lastcolumn  then
 begin
   if (Pos('↑', DBGrid1.Columns[LastColumn].Title.Caption) > 0) or (Pos('↓', DBGrid1.Columns[LastColumn].Title.Caption) > 0) then
     DBGrid1.Columns[LastColumn].Title.Caption := Copy(DBGrid1.Columns[LastColumn].Title.Caption, 3, Length(DBGrid1.Columns[LastColumn].Title.Caption) - 2);
   qusp.Sql[icount] := 'order by ' + temp + ' asc';
   DBGrid1.Columns[Column.Index].Title.Caption := '↑' + DBGrid1.Columns[Column.Index].Title.Caption;
   lastcolumn := column.Index;
 end
 else
 begin
   LastColumn := Column.Index;
   title := DBGrid1.Columns[LastColumn].Title.Caption;
   if Pos('↑', title) > 0 then
   begin
     Query1.Sql[icount] := 'order by ' + temp + ' desc';
     Delete(title, 1, 2);
     DBGrid1.Columns[LastColumn].Title.Caption := '↓' + title;
   end
   else if Pos('↓', title) > 0 then
   begin
     Query1.Sql[icount] := 'order by ' + temp + ' asc';
     Delete(title, 1, 2);
     DBGrid1.Columns[LastColumn].Title.Caption := '↑' + title;
   end
   else
   begin
     Query1.Sql[icount] := 'order by ' + temp + ' asc';
     DBGrid1.Columns[LastColumn].Title.Caption := '↑' + title;
   end;
 end;
 Query1.Open;   }
end;

procedure TBWorker.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
Edit1.SetFocus;
end;

procedure TBWorker.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select w.*,d.DepName from Bworker w,BDepartment d where w.depid=d.id and w.Workname like ');
    sql.add(''''+'%'+edit1.Text+'%'+'''');
   // if listbox1.text<>'' then
   //   begin
        sql.add('and w.DepID LIKE');
        sql.add(''''+listbox1.text+'%'+'''');
    //  end;
    sql.add('order by w.ID,w.DepID');
    active:=true;
  end;
panel3.visible:=false;
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

procedure TBWorker.ListBox1CloseUp(Sender: TObject);
begin
button1.SetFocus;
end;

procedure TBWorker.BB2Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
bb5.enabled:=true;
bb6.enabled:=true;
dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TBWorker.BB3Click(Sender: TObject);
begin
if messagedlg('Do you really want to delete this record?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
  begin
    with query1 do
      begin
        cachedupdates:=true;
        requestlive:=true;
        edit;
        fieldbyname('YN').Value:='0';
      end;
    bb5.enabled:=true;
    bb6.enabled:=true;
  end;
end;

procedure TBWorker.BB4Click(Sender: TObject);
begin
with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
bb5.enabled:=true;
bb6.enabled:=true; 
dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
end;

procedure TBWorker.BB5Click(Sender: TObject);
var i:integer;
begin
try
//if query1.requestlive then
  //begin
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('ID').isnull then
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

procedure TBWorker.BB6Click(Sender: TObject);
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

procedure TBWorker.BB7Click(Sender: TObject);
begin
close;
end;

procedure TBWorker.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TBWorker.BBT2Click(Sender: TObject);
begin
query1.Prior;
end;

procedure TBWorker.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TBWorker.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TBWorker.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  query1.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TBWorker.bbt6Click(Sender: TObject);
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
      Application.MessageBox('系统没有安装Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
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
   { if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
      WorkBook.close;      }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TBWorker.DBGrid1CellClick(Column: TColumn);
begin
if Query1.requestlive then
  begin
     if dbgrid1.Selectedindex=2  then
       begin
         dbgrid1.columns[2].ButtonStyle:=cbsEllipsis;
       end;
  end
  else
    begin
      dbgrid1.columns[2].ButtonStyle:=cbsnone;
    end;
if Query1.requestlive then
  begin
     if dbgrid1.Selectedindex=0  then
       begin
         dbgrid1.columns[0].ButtonStyle:=cbsEllipsis;
       end;
  end
  else
    begin
      dbgrid1.columns[0].ButtonStyle:=cbsnone;
    end;
end;

procedure TBWorker.DBGrid1EditButtonClick(Sender: TObject);
begin
if dbgrid1.selectedfield.fieldname='DepID' then
  begin
    BWorker_Dep:=TBWorker_Dep.create(self);
    BWorker_Dep.show;
  end;
if dbgrid1.selectedfield.fieldname='ID' then
  begin
    BWorker_Det:=TBWorker_Det.create(self);
    BWorker_Det.show;
  end;
end;

procedure TBWorker.FormCreate(Sender: TObject);
begin 
TDep.Active:=true;
end;

procedure TBWorker.FormDestroy(Sender: TObject);
begin
BWorker:=nil;
end;

end.
