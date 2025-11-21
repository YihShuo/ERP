unit KhuonIn_DienTich1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DBTables, DB, Buttons;

type
  TKhuonIn_DienTich = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
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
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query1CLBH: TStringField;
    Query1DIENTICH: TFloatField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1YWPM: TStringField;
    DBGridEh1: TDBGridEh;
    UpdateQry: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KhuonIn_DienTich: TKhuonIn_DienTich;

implementation

uses main1;

{$R *.dfm}

procedure TKhuonIn_DienTich.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TKhuonIn_DienTich.FormDestroy(Sender: TObject);
begin
  KhuonIn_DienTich:=nil;
end;

procedure TKhuonIn_DienTich.BB1Click(Sender: TObject);
begin
  panel3.Visible:=true;
end;

procedure TKhuonIn_DienTich.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' SELECT CLZL.CLDH AS CLBH,YWPM,DIENTICH.DIENTICH,DIENTICH.USERID,DIENTICH.USERDATE,DIENTICH.YN');
    sql.Add(' FROM CLZL LEFT JOIN KHUONIN_DIENTICH DIENTICH');
    SQL.Add(' ON CLZL.CLDH=DIENTICH.CLBH');
    SQL.Add(' WHERE 1=1');
    IF EDIT1.Text<>'' THEN
      SQL.Add('AND CLZL.CLDH LIKE '''+EDIT1.Text+'%''');
    IF EDIT2.Text<>'' THEN
      SQL.Add('AND CLZL.YWPM LIKE ''%'+EDIT2.Text+'%''');
    active:=true;  
  end;
  if query1.RecordCount>0 then
  begin
    BB4.Enabled:=True;
  end;
end;

procedure TKhuonIn_DienTich.BB6Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:= false;
    requestlive:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TKhuonIn_DienTich.BB5Click(Sender: TObject);
var i:integer;
begin
  try
    Query1.First;
    for i := 1 to Query1.RecordCount do
    begin
      case Query1.UpdateStatus of
        usModified:
        begin
          if (Query1.FieldByName('YN').AsString = '1') then
          begin
            Query1.Edit;
            UpdateQry.Active:=false;
            UpdateQry.SQL.Clear;
            UpdateQry.SQL.Add('Update KHUONIN_DIENTICH Set DIENTICH='+formatfloat('#0.00',Query1.fieldbyname('DIENTICH').AsFloat+0.0001)+',UserID='''+main.Edit1.Text+''',UserDate=GetDate() where CLBH='''+QUERY1.FieldByName('CLBH').Value+''' ');
            UpdateQry.ExecSQL;
          end else
          begin
            Query1.Edit;
            UpdateQry.Active:=false;
            UpdateQry.SQL.Clear;
            UpdateQry.SQL.Add('Insert into KHUONIN_DIENTICH (CLBH, DIENTICH, USERID, USERDATE, YN)');
            UpdateQry.SQL.Add('values ('''+Query1.FieldByName('CLBH').Value+''','+formatfloat('#0.00',Query1.fieldbyname('DIENTICH').AsFloat+0.0001)+','''+main.Edit1.Text+''',getdate(),1)');
            UpdateQry.ExecSQL;
          end;
        end;
      end;
      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TKhuonIn_DienTich.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

end.
