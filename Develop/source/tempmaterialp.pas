unit tempmaterialp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask,
  Buttons, GridsEh, DBGridEh;

type
  TTempMaterial = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query1tempddbh: TStringField;
    Query1cllb: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1ddbh: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query1cllbname: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Panel3: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Query2cllb: TStringField;
    Query2ywsm: TStringField;
    tq: TQuery;
    BB7: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure Query1BeforeScroll(DataSet: TDataSet);
    procedure BB4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TempMaterial: TTempMaterial;

implementation

uses queryformp, main1;

{$R *.dfm}

procedure TTempMaterial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[ mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=Cafree;
    end;
end;

procedure TTempMaterial.BB2Click(Sender: TObject);
begin
  query1.RequestLive:=true;
  query1.CachedUpdates:=true;
  query1.Insert;
  bb3.Enabled:=false;
  bb4.Enabled:=false;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;

procedure TTempMaterial.BB1Click(Sender: TObject);
begin
  if queryform<>nil then
  begin
    queryform.show;
    queryform.windowstate:=wsNormal;
  end
  else
    begin
      queryform:=Tqueryform.create(self);
      queryform.show;
   end;
end;

procedure TTempMaterial.DBEdit5Change(Sender: TObject);
begin
  with query2 do
  begin
    if locate('cllb',dbedit5.Text,[]) then
      Label6.Caption:=fieldbyname('ywsm').value;
  end;
  
end;

procedure TTempMaterial.FormCreate(Sender: TObject);
begin
  query2.Active:=true;
end;

procedure TTempMaterial.BB5Click(Sender: TObject);
var
  i:integer;
  k:string;
begin
try
  case query1.updatestatus of
     usinserted:
     begin
      if query1.fieldbyname('tempDDBH').isnull then
      begin
        with tq do
        begin
          active:=false;
          sql.Add('select isnull(substring(max(tempddbh),5,6),0) as mno ');
          sql.add('from clzltemp ');
          sql.add('where cllb='+''''+dbedit5.text+'''');
          //memo1.text:=sql.text;
          active:=true;
          i:=strtoint(fieldbyname('mno').Value)+1;
          k:=inttostr(i);
          query1.fieldbyname('tempDDBH').Value:='T'+dbedit5.text;
          for i:=1 to (6-length(k)) do
          begin
            query1.fieldbyname('tempDDBH').Value:=query1.fieldbyname('tempDDBH').Value+'0';
          end;
          query1.fieldbyname('tempDDBH').Value:=query1.fieldbyname('tempDDBH').Value+k;
        end;
        query1.FieldByName('userdate').Value:=date;
        query1.FieldByName('userid').value:=main.edit1.text;
        upSQL1.apply(ukinsert);
      end;
     end;
     usmodified:
     begin
        upSQL1.apply(ukmodify);
     end;
  end;
query1.active:=false;
query1.cachedupdates:=false;
query1.requestlive:=false;
query1.active:=true;
bb5.enabled:=false;
bb6.enabled:=false;
bb4.Enabled:=true;
bb2.Enabled:=true;
bb3.Enabled:=true;
DBGridEh1.columns[0].ButtonStyle:=cbsnone;
except
  Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;
end;

procedure TTempMaterial.BB6Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    active:=true;
    requestlive:=false;
    cachedupdates:=false;

  end;
BB5.Enabled:=false;
BB6.Enabled:=false;
end;

procedure TTempMaterial.BB3Click(Sender: TObject);
begin
  if messagedlg('Delete data?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    Query1.RequestLive:=true;
    Query1.CachedUpdates:=true;
    upSQL1.apply(ukdelete);
    query1.Active:=false;
    query1.Active:=true;
  end;
end;

procedure TTempMaterial.Query1BeforeScroll(DataSet: TDataSet);
begin
  if BB5.enabled  then
  begin
    showmessage('You have to save data Record of report first.');
    exit;
  end;
end;

procedure TTempMaterial.BB4Click(Sender: TObject);
begin
  query1.RequestLive:=true;
  query1.CachedUpdates:=true;
  query1.edit;
  bb2.Enabled:=false;
  bb4.Enabled:=false;
  bb5.Enabled:=true;
  bb6.Enabled:=true;
end;

procedure TTempMaterial.BB7Click(Sender: TObject);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[ mbyes],0);
  end
  else
    begin
      close;
    end;
end;

end.
