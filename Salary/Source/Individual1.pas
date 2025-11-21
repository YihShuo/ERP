unit Individual1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,comobj,
  DBCtrls;

type
  TIndividual = class(TForm)
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
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1WorkName: TStringField;
    Query1Certificate: TStringField;
    Query1InDate: TDateTimeField;
    Query1Specialization: TStringField;
    Query1Sex: TStringField;
    Query1BornDate: TDateTimeField;
    Query1CertDate: TDateTimeField;
    Query1CertAddress: TStringField;
    Query1Nation: TStringField;
    Query1Religion: TStringField;
    Query1Address: TStringField;
    Query1Register: TStringField;
    Query1UserDate: TDateTimeField;
    Query1UserID: TStringField;
    Query1YN: TStringField;
    SaveDialog1: TSaveDialog;
    Dbx1: TDBComboBox;
    Query1Education: TStringField;
    Dbx2: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
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
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Individual: TIndividual;

implementation

uses main1;

{$R *.dfm}

procedure TIndividual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TIndividual.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TIndividual.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from RsIndividual where Workname like ');
    sql.add(''''+'%'+edit1.Text+'%'+'''');
    sql.add('order by certificate');
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

procedure TIndividual.BB2Click(Sender: TObject);
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

procedure TIndividual.BB3Click(Sender: TObject);
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

procedure TIndividual.BB4Click(Sender: TObject);
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

procedure TIndividual.BB5Click(Sender: TObject);
var i:integer;
begin
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('certificate').isnull then
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

procedure TIndividual.BB6Click(Sender: TObject);
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

procedure TIndividual.BB7Click(Sender: TObject);
begin
close;
end;

procedure TIndividual.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TIndividual.BBT2Click(Sender: TObject);
begin
query1.Prior;
end;

procedure TIndividual.BBT3Click(Sender: TObject);
begin
query1.Next;
end;

procedure TIndividual.BBT4Click(Sender: TObject);
begin
query1.Last;
end;

procedure TIndividual.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  query1.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if Query1.cachedupdates then
  begin
    Dbx1.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrid1.SelectedField.fieldname=dbx1.datafield) then
          begin
            dbx1.left:=rect.left+dbgrid1.left;
            dbx1.top:=rect.top+dbgrid1.Top;
            dbx1.width:=rect.right-rect.left;
            dbx1.height:=rect.bottom-rect.top;
            dbx1.visible:=true;
          end;
      end;
  end;
if Query1.cachedupdates then
  begin
    Dbx2.BringToFront;
    if (gdfocused in state) then
      begin
        if (dbgrid1.SelectedField.fieldname=dbx2.datafield) then
          begin
            dbx2.left:=rect.left+dbgrid1.left;
            dbx2.top:=rect.top+dbgrid1.Top;
            dbx2.width:=rect.right-rect.left;
            dbx2.height:=rect.bottom-rect.top;
            dbx2.visible:=true;
          end;
      end;
  end;
end;

procedure TIndividual.bbt6Click(Sender: TObject);
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
        for   i:=0   to   15   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   15   do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
    {if SaveDialog1.execute then
      begin
        a:=SaveDialog1.FileName;
      end
      else
        begin
          a:='Unit List';
        end;
      WorkBook.SaveAS(a);
      WorkBook.close;    }
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TIndividual.DBGrid1ColEnter(Sender: TObject);
begin
if dbgrid1.selectedfield.fieldname<>dbx1.datafield then
  begin
    dbx1.visible:=false;
  end;
if dbgrid1.selectedfield.fieldname<>dbx2.datafield then
  begin
    dbx2.visible:=false;
  end;
end;

procedure TIndividual.FormDestroy(Sender: TObject);
begin
Individual:=nil;
end;

end.
