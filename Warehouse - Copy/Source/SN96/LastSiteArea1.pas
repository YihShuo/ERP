unit LastSiteArea1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, DB, DBTables, Buttons, ExtCtrls ,Comobj;

type
  TLastSiteArea = class(TForm)
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
    Query1: TQuery;
    Query1KCBH: TStringField;
    Query1KCMC: TStringField;
    Query1Memo: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1CKBH: TStringField;
    UpSQL1: TUpdateSQL;
    DS1: TDataSource;
    Query2: TQuery;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LastSiteArea: TLastSiteArea;

implementation

uses main1;

{$R *.dfm}

procedure TLastSiteArea.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TLastSiteArea.FormDestroy(Sender: TObject);
begin
  LastSiteArea:=nil;
end;

procedure TLastSiteArea.FormCreate(Sender: TObject);
var i:integer;
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select CKBH from LastKCCK');
    sql.add('where GSBH='''+main.edit2.Text+'''');
    sql.add('order by CKBH ');
    active:=true;
    for i:=1 to recordcount do
    begin
      DBGridEh1.Columns[3].PickList.add(fieldbyname('CKBH').asstring);
      Next;
    end;
    active:=false;
  end;
end;

procedure TLastSiteArea.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select KCZL.* from LastKCZL KCZL');
    sql.add('left join LastKCCK KCCK on KCCK.CKBH=KCZL.CKBH');
    sql.add('where 1=1 ');
    if Edit1.Text<>'' then
    sql.add(' and KCZL.KCBH like '''+edit1.Text+'%'' ');
    if Edit2.Text<>'' then
    sql.add(' and KCZL.KCMC like ''%'+edit2.Text+'%''');
    if Edit3.Text<>'' then
    sql.add(' and KCZL.CKBH like '''+edit3.Text+'%'' ');
    sql.add(' and KCCK.GSBH='''+main.Edit2.Text+'''');
    sql.add('order by KCZL.KCBH');
    //memo1.text:=sql.text;
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

procedure TLastSiteArea.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TLastSiteArea.BB2Click(Sender: TObject);
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

procedure TLastSiteArea.BB4Click(Sender: TObject);
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

procedure TLastSiteArea.BB6Click(Sender: TObject);
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

procedure TLastSiteArea.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('KCBH').isnull then
                begin
                  query1.delete;
                end
                 else
                   begin
                     query1.edit;
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
                     query1.FieldByName('USERID').Value:=main.edit1.text;
                    query1.FieldByName('USERdate').Value:=date;
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

procedure TLastSiteArea.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
        for   i:=0   to  query1.FieldCount-1   do
        begin
          eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
        end;
        query1.First;
        j:=2;
        while   not   query1.Eof   do
        begin
          for   i:=0   to  query1.FieldCount-1   do
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

end.
