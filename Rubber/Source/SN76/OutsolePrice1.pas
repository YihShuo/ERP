unit OutsolePrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBTables, GridsEh, DBGridEh, Buttons, StdCtrls,
  ExtCtrls,comobj;

type
  TOutsolePrice = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    chkNoPrice: TCheckBox;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button2: TButton;
    chk: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    DataSource1: TDataSource;
    SaveDialog1: TSaveDialog;
    Qtemp: TQuery;
    Query1Pairs: TFloatField;
    Query1Qty: TCurrencyField;
    Query1USPrice: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1RYNO: TStringField;
    chkPrice: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  OutsolePrice: TOutsolePrice;

implementation

uses main1;

{$R *.dfm}
procedure TOutsolePrice.InitUpdateSQL();
begin
  UpdateSQL1.InsertSQL.Clear;
  UpdateSQL1.InsertSQL.Add('insert into '+main.LIY_DD+'.dbo.OUTSOLE_PRICE(RYNO, USPrice, VNPrice, Memo, UserID, UserDate, YN)');
  UpdateSQL1.InsertSQL.Add('values(:RYNO, :USPrice, :VNPrice, :Memo, :UserID, :UserDate, :YN)');

  UpdateSQL1.ModifySQL.Clear;
  UpdateSQL1.ModifySQL.Add('update '+main.LIY_DD+'.dbo.OUTSOLE_PRICE');
  UpdateSQL1.ModifySQL.Add('set  USPrice= :USPrice, VNPrice= :VNPrice, Memo = :Memo,UserID = :UserID, UserDate = :UserDate, YN = :YN');
  UpdateSQL1.ModifySQL.Add('where RYNO = :OLD_RYNO ');
end;


procedure TOutsolePrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TOutsolePrice.FormDestroy(Sender: TObject);
begin
  OutsolePrice:=nil;
end;

procedure TOutsolePrice.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,index:integer;
begin
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i-1;
      break;
    end;
  end;
  InitUpdateSQL();
end;

procedure TOutsolePrice.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' Select RK.DDBH as RYNO,DDZL.Pairs,sum(RK.Qty) as Qty,Price.USPrice,VNPrice,Price.Memo,Price.UserID,Price.UserDate,PRICE.YN ');
    sql.Add(' From '+main.LIY_DD+'.dbo.OUTSOLE_RK RK ');
    sql.Add(' Left join '+main.LIY_DD+'.dbo.OUTSOLE_PRICE PRICE on RK.DDBH=PRICE.RYNO ');
    sql.Add(' Left join '+main.LIY_DD+'.dbo.DDZL DDZL on RK.DDBH=DDZL.DDBH ');
    sql.Add(' Where 1=1 ');
    if chk.Checked then
      sql.Add(' and year(RK.InDate)='''+CBX1.Text+''' and MONTH(RK.InDate)='''+CBX2.Text+''' ');
    if chkNoPrice.Checked then
      sql.Add(' and ( Price.USPrice is null  and Price.VNPrice is null ) ');
    if chkPrice.Checked then
      sql.Add(' and ( Price.USPrice is not null  or  Price.VNPrice is not null )');
    if edit1.Text <> '' then
      sql.Add(' and RK.DDBH like '''+Edit1.Text+'%'' ');
    sql.Add(' Group by RK.DDBH,DDZL.Pairs,Price.USPrice,VNPrice,Price.Memo,Price.UserID,Price.UserDate,PRICE.YN ');
    active:=true;
  end;
  if Query1.RecordCount>0 then
  begin
    Modify1.Enabled:=true;
  end;
end;

procedure TOutsolePrice.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  Save1.Enabled := true;
  Cancel1.Enabled := true;
end;

procedure TOutsolePrice.Save1Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
  with Qtemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

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
            Query1.FieldByName('USERID').Value := main.Edit1.text;
            Query1.FieldByName('USERDATE').Value := NDate;
            UpdateSQL1.Apply(ukModify);
          end
          else begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := NDate;
            Query1.FieldByName('YN').Value := 1;
            UpdateSQL1.Apply(ukInsert);
          end;
        end;
      end;

      Query1.Next;
    end;

    Query1.Active := false;
    Query1.CachedUpdates := false;
    Query1.RequestLive := false;
    Query1.Active := true;

    Save1.Enabled := false;
    Cancel1.Enabled := false;

  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TOutsolePrice.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  Save1.Enabled := false;
  Cancel1.Enabled := false;
end;

procedure TOutsolePrice.Button2Click(Sender: TObject);
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
