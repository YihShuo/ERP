unit EmbModel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj;

type
  TEmbModel = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
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
    XXZL: TQuery;
    Query1DXBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1Memo: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmbModel: TEmbModel;

implementation

uses main1;

{$R *.dfm}

procedure TEmbModel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if query1.requestlive then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TEmbModel.BB1Click(Sender: TObject);
begin
panel3.Visible:=true;
end;

procedure TEmbModel.FormCreate(Sender: TObject);
begin
query1.Active:=false;
end;

procedure TEmbModel.BB2Click(Sender: TObject);
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

procedure TEmbModel.BB4Click(Sender: TObject);
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

procedure TEmbModel.BB7Click(Sender: TObject);
begin
close;
end;

procedure TEmbModel.BB5Click(Sender: TObject);
var i:integer;
begin
with query1 do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('DXBH').IsNull then
          begin
            delete;
          end;
        if fieldbyname('VNPrice').IsNull and fieldbyname('USPrice').IsNull   then
          begin
            showmessage('Pls key in price first.');
            abort;
          end;
        if (not fieldbyname('VNPrice').IsNull) and (not fieldbyname('USPrice').IsNull ) then
          begin
            showmessage('Can not have two price');
            abort;
          end;
        next;
      end;
  end;
try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('DXBH').isnull then
                begin
                  query1.delete;
                end
                 else
                   begin
                     query1.edit; 
                     query1.FieldByName('DXBH').Value:=Uppercase(query1.FieldByName('DXBH').Value);
                     query1.FieldByName('USERDATE').Value:=date;
                     query1.FieldByName('USERID').Value:=main.edit1.text;
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
                    if XXZL.recordcount=0 then
                      begin
                        query1.FieldByName('DXBH').Value:=Uppercase(query1.FieldByName('DXBH').Value);
                        showmessage('Have article use the DDBH.');
                      end
                      else
                        begin
                          showmessage('Can not modify the DDBH with Article.');
                        end;
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
except
  Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
end;

end;

procedure TEmbModel.Button1Click(Sender: TObject);
begin
with Query1 do
  begin             
    active:=false;
    sql.clear;
    sql.add('select * from DXZL where DXBH like ');
    sql.add(''''+edit1.Text+'%'+'''');
    if (edit2.text<>'') or (edit3.text<>'') then
      begin
        sql.add('and exists(select DXXX.XieXing from DXXX ');
        sql.add('left join XXZL on XXZL.XieXing=DXXX.XieXing') ;
        sql.add('where XXZL.Article like '+''''+edit2.Text+'%'+'''');
        sql.add('and XXZL.XieMing like '+''''+edit3.Text+'%'+''''+')');
      end;
    sql.add('order by DXBH');
    active:=true;
  end;
XXZL.Active:=true;
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

procedure TEmbModel.BB6Click(Sender: TObject);
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

procedure TEmbModel.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TEmbModel.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TEmbModel.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TEmbModel.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TEmbModel.bbt6Click(Sender: TObject);
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

procedure TEmbModel.BB3Click(Sender: TObject);
begin
if XXZL.recordcount=0 then
  begin
     query1.Edit;
     Query1.FieldByName('YN').value:='0';
  end
  else
    begin
      showmessage('Have article use this embroider type.');
    end;

end;

procedure TEmbModel.FormDestroy(Sender: TObject);
begin
EmbModel:=nil;
end;

end.
