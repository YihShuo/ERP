unit ModelData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DBCtrls, ExtCtrls, StdCtrls,
  Buttons,comobj;

type
  TModelData = class(TForm)
    DBGridEh1: TDBGridEh;
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
    bbt6: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    QTemp: TQuery;
    Query1mjbh: TStringField;
    Query1lbdh: TStringField;
    Query1pmw: TIntegerField;
    Query1kfdh1: TStringField;
    Query1gbbh: TStringField;
    Query1bz1: TStringField;
    Query1bz2: TStringField;
    Query1trm: TIntegerField;
    Query1Yields: TFloatField;
    Query1cost: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TStringField;
    Query1YN: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  ModelData: TModelData;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}
procedure TModelData.InitUpdateSQL();
begin
  UpdateSQL1.InsertSQL.Clear;
  UpdateSQL1.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.MJZL(mjbh, lbdh, pmw, bz1, bz2, trm, Yields, cost, UserID, UserDate ) values (:mjbh, :lbdh, :pmw, :bz1, :bz2, :trm, :Yields, :cost, :UserID, :UserDate)');

  UpdateSQl1.DeleteSQL.Clear;
  UpdateSQL1.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.MJZL where mjbh = :OLD_mjbh and lbdh = :OLD_lbdh and pmw = :OLD_pmw');

  UpdateSQl1.ModifySQL.Clear;
  UpdateSQl1.ModifySQL.Add('update '+main.LIY_DD+'.dbo.MJZL set bz1 = :bz1,bz2 = :bz2 ,trm =:trm,Yields =:Yields,cost =:cost,UserID =:UserID,UserDate =:UserDate where mjbh = :OLD_mjbh and lbdh = :OLD_lbdh and pmw = :OLD_pmw');
end;

procedure TModelData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TModelData.FormDestroy(Sender: TObject);
begin
  ModelData:=nil;
end;

procedure TModelData.FormCreate(Sender: TObject);
var i:integer;
begin
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select convert(varchar, getdate(), 112) as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  InitUpdateSQL();
end;

procedure TModelData.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TModelData.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
     active:=false;
     sql.Clear;
     sql.Add('Select MJZL.*,1 as YN from '+main.LIY_DD+'.dbo.MJZL MJZL');
     sql.Add('where 1=1 ');
     if edit1.Text <> '' then
      sql.Add(' and mjbh like '''+edit1.Text+'%'' ');
     if edit2.Text <> '' then
      sql.Add('and lbdh like ''%'+edit2.text+'%'' ');
     if Edit3.Text<>'' then
        sql.Add('and bz2 like '''+edit3.text+'%'' ');
     sql.Add('Order by mjbh');
     active:=true;
  end;
  Panel3.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT6.Enabled:=true;
end;

procedure TModelData.BB2Click(Sender: TObject);
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

procedure TModelData.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value := '0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TModelData.BB4Click(Sender: TObject);
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

procedure TModelData.BB6Click(Sender: TObject);
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

procedure TModelData.BB5Click(Sender: TObject);
var i:integer;
begin
  if ((query1.FieldByName('mjbh').AsString='') or  (query1.FieldByName('lbdh').AsString='')  or (query1.FieldByName('pmw').AsString='') )  then
  begin
    showmessage('Ten Khuon / Mau / So Khuon khong duoc trong');
    abort;
  end;
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
        begin
          query1.edit;
          query1.FieldByName('userID').Value:=main.edit1.text;
          query1.FieldByName('userdate').Value:=NDate;
          updatesql1.apply(ukinsert);
        end;
        usmodified:
        begin
          if query1.fieldbyname('YN').value='0' then
          begin
            updatesql1.Apply(ukdelete);
          end else
          begin
            query1.edit;
            query1.FieldByName('UserID').Value:= main.edit1.text;
            query1.FieldByName('userdate').Value:=NDate;
            updatesql1.apply(ukmodify);
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
    showmessage('Succeed.');
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TModelData.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TModelData.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;

  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
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

end.
