unit Colorsetup1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids , DBCtrls, ExtCtrls, GridsEh,
  DBGridEh, StdCtrls, Buttons;

type
  Tcolorsetup = class(TForm)
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
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DataSource1: TDataSource;
    Query1ColorNo: TStringField;
    Query1EnglishName: TStringField;
    Query1ChinaNmae: TStringField;
    Query1UserID: TStringField;
    Query1CreatDate: TDateTimeField;
    Query1UpdateDate: TDateTimeField;
    Query1LastUser: TStringField;
    Query1YN: TIntegerField;
    Query1SKU: TStringField;
    Query1EVA: TStringField;
    Query1RB: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
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
    procedure FormDestroy(Sender: TObject);
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
  colorsetup: Tcolorsetup;

implementation

uses main1;

{$R *.dfm}

procedure Tcolorsetup.InitUpdateSQL();
begin
  UpdateSQL1.InsertSQL.Clear;
  UpdateSQL1.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.ColorClass(ColorNo, EnglishName, ChinaNmae, UserID, CreatDate, UpdateDate, LastUser,SKU, EVA, RB)');
  UpdateSQL1.InsertSQL.Add('values(:ColorNo, :EnglishName, :ChinaNmae, :UserID, :CreatDate, :UpdateDate, :LastUser, :SKU, :EVA, :RB)');

  UpdateSQL1.ModifySQL.Clear;
  UpdateSQL1.ModifySQL.Add('update '+main.LIY_DD+'.dbo.ColorClass');
  UpdateSQL1.ModifySQL.Add('set ColorNo = :ColorNo,EnglishName = :EnglishName,ChinaNmae = :ChinaNmae,USERID = :USERID,UpdateDate= :UpdateDate,LastUser= :LastUser, SKU=:SKU,EVA=:EVA, RB=:RB');
  UpdateSQL1.ModifySQL.Add('where ColorNo = :OLD_ColorNo');

  UpdateSQL1.DeleteSQL.Clear;
  UpdateSQL1.DeleteSQL.Add('delete from '+main.LIY_DD+'.dbo.ColorClass');
  UpdateSQL1.DeleteSQL.Add('where ColorNo = :OLD_ColorNo');
end;

procedure Tcolorsetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  colorsetup:=nil;
end;

procedure Tcolorsetup.FormDeactivate(Sender: TObject);
begin
  colorsetup:=nil;
end;

procedure Tcolorsetup.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;  
end;

procedure Tcolorsetup.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure Tcolorsetup.BBT1Click(Sender: TObject);
begin
  Query1.First;
end;

procedure Tcolorsetup.BBT2Click(Sender: TObject);
begin
  Query1.Prior;
end;

procedure Tcolorsetup.BBT3Click(Sender: TObject);
begin
  Query1.Next;
end;

procedure Tcolorsetup.BBT4Click(Sender: TObject);
begin
  Query1.Last;
end;

procedure Tcolorsetup.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
     active:=false;
     sql.Clear;
     sql.Add('Select ColorClass.*,1 as YN from '+main.LIY_DD+'.dbo.ColorClass ColorClass');
     sql.Add('where SKU like '''+edit1.Text+'%'+'''');
     if edit2.Text<>'' then
        sql.Add('and EnglishName like '''+edit2.text+'%'+'''');
     sql.Add('Order by ColorNo');
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

procedure Tcolorsetup.BB2Click(Sender: TObject);
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

procedure Tcolorsetup.BB4Click(Sender: TObject);
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

procedure Tcolorsetup.BB6Click(Sender: TObject);
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

procedure Tcolorsetup.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    query1.first;
    for i:=1 to query1.RecordCount do
    begin
      case query1.updatestatus of
        usinserted:
        begin
          if query1.fieldbyname('ColorNo').isnull then
          begin
            query1.delete;
          end else
          begin
           query1.edit;
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

procedure Tcolorsetup.FormDestroy(Sender: TObject);
begin
  colorsetup:=nil;
end;

procedure Tcolorsetup.BB3Click(Sender: TObject);
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

procedure Tcolorsetup.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if Query1.FieldByName('YN').value='0' then
  begin
    dbgridEh1.canvas.font.color:=clred;
  end;
end;
procedure Tcolorsetup.FormCreate(Sender: TObject);
begin
  InitUpdateSQL();
end;

end.
