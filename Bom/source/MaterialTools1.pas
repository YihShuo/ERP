unit MaterialTools1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DBTables, DB, Buttons, StdCtrls, DBCtrls, Mask, GridsEh,
  DBGridEh, ExtCtrls,comobj;

type
  TMaterialTools = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGridEh;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    CBX2: TDBComboBox;
    DBMemo2: TDBMemo;
    DBEdit2: TDBEdit;
    DBX2: TDBComboBox;
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
    Query1cldh: TStringField;
    Query1clbm: TStringField;
    Query1cllb: TStringField;
    Query1dycldh: TStringField;
    Query1ysbh: TStringField;
    Query1yszwsm: TStringField;
    Query1ysywsm: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1dwzwsm: TStringField;
    Query1dwywsm: TStringField;
    Query1clzmlb: TStringField;
    Query1lycc: TStringField;
    Query1xhcl: TStringField;
    Query1jkcl: TStringField;
    Query1gjlb: TStringField;
    Query1ckcldh: TStringField;
    Query1dzzhl: TFloatField;
    Query1xxbh: TStringField;
    Query1kfdh: TStringField;
    Query1cqdh: TStringField;
    Query1cltd: TStringField;
    Query1tyjh: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1pumadh: TStringField;
    Query1YN: TStringField;
    UpSQL1: TUpdateSQL;
    Query2: TQuery;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    BBTT1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BB5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BBTT1Click(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialTools: TMaterialTools;

implementation

uses main1, MaterialTools_LB1;

{$R *.dfm}

procedure TMaterialTools.FormDestroy(Sender: TObject);
begin
MaterialTools:=nil;
end;

procedure TMaterialTools.FormClose(Sender: TObject;
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

procedure TMaterialTools.FormCreate(Sender: TObject);
begin

with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LBDH  from LBZLS where LB='+''''+'02'+'''' )   ;
    sql.add('order by LBDH ');
    active:=true;
    CBX2.Clear;
    DBX2.Clear;
    while not eof do
      begin
        CBX2.Items.add(fieldbyname('LBDH').asstring);
        DBX2.Items.add(fieldbyname('LBDH').asstring);
        next;
      end;
    active:=false;
   { sql.Clear;
    sql.add('select LBBH+'+''''+':'+''''+'+MEMO as LBXM   ');
    sql.add('from CLLBVN');
    active:=true;
    CBX1.Items.Clear;
    DBX1.Items.Clear;
    while not eof do
      begin
        CBX1.Items.add(fieldbyname('LBXM').AsString);
        DBX1.Items.add(fieldbyname('LBXM').AsString);
        next;
      end;
    active:=false;    }
  end;
end;

procedure TMaterialTools.BB7Click(Sender: TObject);
begin

close;
end;

procedure TMaterialTools.BB1Click(Sender: TObject);
begin

panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TMaterialTools.Button1Click(Sender: TObject);
begin

with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select * from CLZL');
    sql.add('where CLDH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and YWPM like'+''''+'%'+edit2.text+'%'+'''');
    sql.add('      and YWPM like'+''''+'%'+edit3.text+'%'+'''');
    sql.add('      and (YN='+''''+'2'+''''+' or YN='+''''+'3'+''''+')');
    sql.add('      and CLDH like '+''''+'V%'+'''');
    sql.add('order by CLDH');
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

procedure TMaterialTools.BB2Click(Sender: TObject);
begin

with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
if query1.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end
  else
    begin
      N1.Enabled:=false;
      N2.Enabled:=false;
    end;
bb5.enabled:=true;
bb6.enabled:=true;
BBTT1.Visible:=true;
DBGrid1.Columns[1].ButtonStyle:=cbsellipsis;
DBEdit1.SetFocus;
end;

procedure TMaterialTools.BB4Click(Sender: TObject);
begin

with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
if query1.recordcount>0 then
  begin
    N1.Enabled:=true;
    N2.Enabled:=true;
  end
  else
    begin
      N1.Enabled:=false;
      N2.Enabled:=false;
    end;
bb5.enabled:=true;
bb6.enabled:=true;
BBTT1.Visible:=true;
DBGrid1.Columns[1].ButtonStyle:=cbsellipsis;
DBedit1.SetFocus;
end;

procedure TMaterialTools.BB6Click(Sender: TObject);
begin

with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
N1.Enabled:=false;
N2.Enabled:=false;
bb5.enabled:=false;
bb6.enabled:=false;
N1.Enabled:=false;
N2.Enabled:=false;
end;

procedure TMaterialTools.BBT1Click(Sender: TObject);
begin

query1.First;
end;

procedure TMaterialTools.BBT2Click(Sender: TObject);
begin

query1.Prior;
end;

procedure TMaterialTools.BBT3Click(Sender: TObject);
begin

query1.Next;
end;

procedure TMaterialTools.BBT4Click(Sender: TObject);
begin

query1.Last;
end;

procedure TMaterialTools.bbt6Click(Sender: TObject);
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

procedure TMaterialTools.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit2.SetFocus;
end;

procedure TMaterialTools.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit3.SetFocus;
end;

procedure TMaterialTools.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  button1click(nil);
end;

procedure TMaterialTools.BB5Click(Sender: TObject);
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
              if ((query1.fieldbyname('cllb').isnull) or (query1.fieldbyname('dwbh').isnull)) then
                begin
                  showmessage('Pls select material type first.');
                  abort;
                end ;
              if (query1.fieldbyname('YWPM').isnull or query1.fieldbyname('ZWPM').isnull) then
                begin
                  showmessage('Pls key material name first.');
                  abort;
                end ;
              if copy(query1.fieldbyname('cldh').value,0,4)<> query1.fieldbyname('clLB').value then
                begin
                  showmessage('Can not modify the type of material.');
                  abort;
                end;   
              if length(query1.fieldbyname('cldh').value)> 7 then
                begin
                  showmessage('Pls key 7 letter for material code.');
                  abort;
                end ;
              with query2 do    //計算材料流水號
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add('select CLDH from clzl');
                  sql.add('where CLDH like '+''''+query1.fieldbyname('CLDH').value+'%'+'''');
                  sql.add('order by CLDH');
                  active:=true;
                  if recordcount >0 then
                    begin
                      last;
                      a:=fieldbyname('CLDH').AsString;
                      a:=copy(a,length(query1.fieldbyname('CLDH').value)+1,10-length(query1.fieldbyname('CLDH').value));
                      a:=inttostr(strtoint(a)+1);
                      while length(a)<10-length(query1.fieldbyname('CLDH').value) do
                        begin
                          a:='0'+a;
                        end;
                    end
                    else
                      begin
                        a:='1';
                        while length(a)<10-length(query1.fieldbyname('CLDH').value) do
                          begin
                            a:='0'+a;
                          end;
                      end;
                  a:=query1.fieldbyname('CLDH').value+a;
                  active:=false;
                  query1.edit;
                  query1.fieldbyname('CLDH').value:=a;
                  query1.fieldbyname('CLBM').value:='zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'+a;
                  query1.fieldbyname('CLLB').value:=copy(query1.fieldbyname('CLLB').value,0,4);
                  query1.fieldbyname('clzmlb').value:='N';
                  query1.fieldbyname('lycc').value:='N';
                  query1.fieldbyname('xhcl').value:='Y';
                  query1.fieldbyname('jkcl').value:='N';
                  query1.fieldbyname('gjlb').value:='000';
                  query1.fieldbyname('cqdh').value:='VN';
                  query1.FieldByName('userID').Value:=main.edit1.text;
                  query1.FieldByName('userdate').Value:=date;
                     if a<'W' then
                       begin
                         query1.FieldByName('YN').Value:='3';
                       end
                       else
                         begin
                           query1.FieldByName('YN').Value:='2';
                         end;
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
                          showmessage(query1.fieldbyname('CLDH').value+' >1 days,can not delete.');
                       end;
                 end
                 else
                   begin
                     if ((query1.FieldByName('USERDATE').value>=(date-2)) or (formatdatetime('yyyy/MM/dd',date)<'2008/11/01')) then
                       begin
                         query1.edit;
                         query1.FieldByName('userID').Value:=main.edit1.text;
                         query1.FieldByName('userdate').Value:=date;
                         upsql1.apply(ukmodify);
                       end
                       else
                         begin
                           showmessage(query1.fieldbyname('CLDH').value+' >1 days,can not modify.');
                         end;
                   end;
             end;
        end;
        query1.next;
      end;

N1.Enabled:=false;
N2.Enabled:=false;
query1.active:=false;
query1.cachedupdates:=false;
query1.requestlive:=false;
query1.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
BBTT1.Visible:=false;
DBGrid1.Columns[1].ButtonStyle:=cbsnone;
N1.Enabled:=false;
N2.Enabled:=false;
except
  Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TMaterialTools.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

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
          end
          else
            dbx2.visible:=false;
      end;
  end
  else
    dbx2.visible:=false;
end;

procedure TMaterialTools.BBTT1Click(Sender: TObject);
begin
  MaterialTools_LB:=TMaterialTools_LB.create(self);
  MaterialTools_LB.show;
end;

procedure TMaterialTools.DBGrid1EditButtonClick(Sender: TObject);
begin
  BBTT1click(nil);
end;

end.
