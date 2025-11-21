unit Insurance1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,comobj;

type
  TInsurance = class(TForm)
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
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    SaveDialog1: TSaveDialog;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
    Query1InsuranceID: TStringField;
    Query1InsuranceDate: TDateTimeField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1WorkName: TStringField;
    Query1Certificate: TStringField;
    Query1BornDate: TDateTimeField;
    Query1Nation: TStringField;
    Query1YN: TStringField;
    Query1CertAddress: TStringField;
    Label2: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
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
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Insurance: TInsurance;

implementation

uses main1, BWorker_Det1, Insurance_work1;

{$R *.dfm}

procedure TInsurance.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select * from RsInsurance i,RsIndividual p where i.ID=p.ID ');
    sql.add('and i.ID like ');
    sql.add(''''+edit1.text+'%'+'''');
    sql.add('and P.workName like ');
    sql.add(''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by i.ID');
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

procedure TInsurance.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TInsurance.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
edit1.SetFocus;
end;

procedure TInsurance.BB2Click(Sender: TObject);
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

procedure TInsurance.BB3Click(Sender: TObject);
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

procedure TInsurance.BB4Click(Sender: TObject);
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

procedure TInsurance.BB5Click(Sender: TObject);
var i:integer;
begin
try
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

procedure TInsurance.BB6Click(Sender: TObject);
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

procedure TInsurance.BB7Click(Sender: TObject);
begin
close;
end;

procedure TInsurance.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TInsurance.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TInsurance.BBT3Click(Sender: TObject);
begin
query1.Next;
end;

procedure TInsurance.BBT4Click(Sender: TObject);
begin
query1.Last;
end;

procedure TInsurance.DBGrid1CellClick(Column: TColumn);
begin
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

procedure TInsurance.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if  query1.fieldbyname('YN').Value='0' then
  begin
    dbgrid1.canvas.font.color:=clred;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TInsurance.DBGrid1EditButtonClick(Sender: TObject);
begin
if dbgrid1.selectedfield.fieldname='ID' then
  begin
    Insurance_work:=TInsurance_work.create(self);
    Insurance_work.show;
  end;
end;

procedure TInsurance.bbt6Click(Sender: TObject);
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
        for   i:=0   to   9   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   9   do
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

procedure TInsurance.FormDestroy(Sender: TObject);
begin
Insurance:=nil;
end;

end.
