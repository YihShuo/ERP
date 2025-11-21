unit StaffData1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, GridsEh,
  DBGridEh, StdCtrls, Buttons;

type
  TStaffData = class(TForm)
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
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Query1workno: TStringField;
    Query1name: TStringField;
    Query1Dep: TStringField;
    Label3: TLabel;
    Edit3: TEdit;
    Query1YN: TIntegerField;
    QTemp: TQuery;
    DBGridEh1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  StaffData: TStaffData;

implementation

uses main1;

{$R *.dfm}

procedure TStaffData.InitUpdateSQL();
begin
  UpdateSQL1.InsertSQL.Clear;
  UpdateSQL1.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.People(workno, name, Dep) values (:workno, :name, :Dep)');

  UpdateSQl1.DeleteSQL.Clear;
  UpdateSQL1.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.People where workno = :OLD_workno');

  UpdateSQl1.ModifySQL.Clear;
  UpdateSQl1.ModifySQL.Add('update '+main.LIY_DD+'.dbo.People set workno = :workno,name = :name ,Dep =:Dep where workno =:OLD_workno');
end;
//
procedure TStaffData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TStaffData.FormDestroy(Sender: TObject);
begin
  StaffData:=nil;
end;

procedure TStaffData.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TStaffData.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TStaffData.BBT1Click(Sender: TObject);
begin
  Query1.First;
end;

procedure TStaffData.BBT2Click(Sender: TObject);
begin
  Query1.Prior;
end;

procedure TStaffData.BBT3Click(Sender: TObject);
begin
  Query1.Next;
end;

procedure TStaffData.BBT4Click(Sender: TObject);
begin
  Query1.Last;
end;

procedure TStaffData.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
     active:=false;
     sql.Clear;
     sql.Add('Select People.*,1 as YN from '+main.LIY_DD+'.dbo.People People');
     sql.Add('where workno like '''+edit1.Text+'%'+'''');
     sql.Add('and name like '''+'%'+edit2.text+'%'+'''');
     if Edit3.Text<>'' then
        sql.Add('and Dep like '''+edit3.text+'%'+'''');
     sql.Add('Order by workno');
     active:=true;
  end;
  Panel3.Visible:=false;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BBT1.Enabled:=true;
  BBT2.Enabled:=true;
  BBT3.Enabled:=true;
  BBT4.Enabled:=true;
end;

procedure TStaffData.BB2Click(Sender: TObject);
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

procedure TStaffData.BB4Click(Sender: TObject);
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

procedure TStaffData.BB6Click(Sender: TObject);
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

procedure TStaffData.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
        begin
          if query1.fieldbyname('workno').isnull then
          begin
            query1.delete;
          end else
          begin
            query1.edit;
            query1.FieldByName('Name').Value:=uppercase(query1.FieldByName('Name').Value);
            updatesql1.apply(ukinsert);
          end;
        end;
        usmodified:
        begin
          if query1.fieldbyname('YN').value='0' then
          begin
            updatesql1.Apply(ukdelete);
          end else
          begin
            query1.edit;
            query1.FieldByName('Name').Value:=uppercase(query1.FieldByName('Name').Value);
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
  except
    Messagedlg('Have wrong, can not save!',mtwarning,[mbyes],0);
  end;

end;

procedure TStaffData.BB3Click(Sender: TObject);
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

procedure TStaffData.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    dbgridEh1.canvas.font.color:=clred;
  end;
end;

procedure TStaffData.FormCreate(Sender: TObject);
begin
  InitUpdateSQL();
end;

end.
