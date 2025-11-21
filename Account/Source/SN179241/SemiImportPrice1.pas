unit SemiImportPrice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  Buttons,comobj;

type
  TSemiImportPrice = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label13: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    chkNoPrice: TCheckBox;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button2: TButton;
    chkPrice: TCheckBox;
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
    Query1DDBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Label2: TLabel;
    Query1Price: TCurrencyField;
    CopyPrice1: TMenuItem;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    bbt5: TBitBtn;
    chkPrice_Acc: TCheckBox;
    chkNoPrice_Acc: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure CopyPrice1Click(Sender: TObject);
    procedure bbt5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SemiImportPrice: TSemiImportPrice;

implementation

uses main1, ImportRYPrice1;

{$R *.dfm}

procedure TSemiImportPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSemiImportPrice.FormDestroy(Sender: TObject);
begin
  SemiImportPrice:=nil;
end;

procedure TSemiImportPrice.FormCreate(Sender: TObject);
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
end;

procedure TSemiImportPrice.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin 
    Active:=false;
    SQL.Clear; 
    SQL.Add('  Select Cost.KCYEAR,Cost.KCMONTH,Cost.DDBH,USPrice,Memo,Price.UserID,Price.UserDate,Price.YN,RY_VNPRICE.VNPRICE as Price  ');
    SQL.Add('  From CW_MatCostMonth Cost  ');
    SQL.Add('  Left join CW_MatCostMonth_Price Price on Cost.KCYEAR=Price.KCYEAR and Cost.KCMONTH=Price.KCMonth and Cost.DDBH=Price.DDBH ');
    SQL.Add('  Left join (	Select DDBH,RY_VNPRICE.VNPRICE  ');
    SQL.Add('  			From CW_MatCostMonth left join RY_VNPRICE   ');
    SQL.Add('  			on CW_MatCostMonth.DDBH=RY_VNPRICE.RYNO  ');
    SQL.Add('  			Where KCYEAR='''+CBX1.Text+''' and KCMONTH='''+CBX2.Text+'''  ');
    SQL.Add('  			and left(DDBH,1)=''Y'' and InQty>0  ');
    SQL.Add('       Group by  DDBH,RY_VNPRICE.VNPRICE ');
    SQL.Add('  			Union all  ');
    SQL.Add('  			Select CW_MatCostMonth.DDBH,RY_VNPRICE.VNPRICE  ');
    SQL.Add('  			From CW_MatCostMonth left join CBY_Orders   ');
    SQL.Add('  			on CW_MatCostMonth.DDBH=CBY_Orders.MasterOrder  ');
    SQL.Add('  			Left join RY_VNPRICE on  CBY_Orders.workOrderId=RY_VNPRICE.RYNO  ');
    SQL.Add('  			Where KCYEAR='''+CBX1.Text+''' and KCMONTH='''+CBX2.Text+''' ');
    SQL.Add('  			and left(DDBH,3)=''CBY'' and InQty>0  ');
    SQL.Add('       Group by  CW_MatCostMonth.DDBH,RY_VNPRICE.VNPRICE ');
    SQL.Add('  			Union all  ');
    SQL.Add('  			Select  DDBH,round(sum(shoetestshipping.amount)/sum(shoetestshipping.qty),2) as VNPRICE  ');
    SQL.Add('  			From CW_MatCostMonth left join ShoeTest   ');
    SQL.Add('  			on CW_MatCostMonth.DDBH=ShoeTest.YPDH  ');
    SQL.Add('  			left join shoetestshipping on ShoeTest.TestNo=shoetestshipping.TestNo  ');
    SQL.Add('  			and YEAR(shipdate_final)='''+CBX1.Text+''' and MONTH(shipdate_final)='''+CBX2.Text+''' ');
    SQL.Add('  			Where KCYEAR='''+CBX1.Text+''' and KCMONTH='''+CBX2.Text+'''  ');
    SQL.Add('  			and left(DDBH,3) <> ''CBY''  ');
    SQL.Add('  			and SUBSTRING(DDBH,4,1)=''V''  and InQty>0   ');
    SQL.Add('  			Group by DDBH  ');
    SQL.Add('  			Union All  ');
    SQL.Add('  			Select CW_MatCostMonth.DDBH,USPrice as VNPRICE  ');
    SQL.Add('  			From CW_MatCostMonth inner join LIY_DD.dbo.OUTSOLE_PRICE Price  ');
    SQL.Add('  			on CW_MatCostMonth.DDBH=Price.RYNO  ');
    SQL.Add('  			Where KCYEAR='''+CBX1.Text+''' and KCMONTH='''+CBX2.Text+''' and InQty>0  ');
    SQL.Add('  			Group by CW_MatCostMonth.DDBH,USPrice  ');
    SQL.Add('  			 ) RY_VNPRICE on RY_VNPRICE.DDBH=Cost.DDBH  ');
    SQL.Add('  where Cost.KCYEAR='''+CBX1.Text+''' and Cost.KCMONTH='''+CBX2.Text+''' and InQty>0   ');
    if chkNoPrice.Checked then
      SQL.Add(' and RY_VNPRICE.VNPRICE is null ');
    if chkPrice.Checked then
      SQL.Add(' and RY_VNPRICE.VNPRICE is not null ');
    if chkNoPrice_Acc.Checked then
      SQL.Add(' and Price.USPrice is null  ');
    if chkPrice_Acc.Checked then
      SQL.Add(' and Price.USPrice is not null ');
    if Edit1.Text <> '' then
      SQL.Add(' and Cost.DDBH like '''+Edit1.Text+'%'' ');
    SQL.Add('  Group by Cost.KCYEAR,Cost.KCMONTH,Cost.DDBH,USPrice,Memo,Price.UserID,Price.UserDate,Price.YN,RY_VNPRICE.VNPRICE  ');
    SQL.Add('  Order by Cost.DDBH  ');
    Active:=true;
  end;
  if Query1.RecordCount > 0 then
  begin
    Modify1.Enabled:=true;
  end;

end;

procedure TSemiImportPrice.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
     RequestLive:=true;
     CachedUpdates:=true;
     edit;
  end;
  save1.Enabled:=true;
  Cancel1.Enabled:=true;
  CopyPrice1.Enabled:=true;
end;

procedure TSemiImportPrice.Save1Click(Sender: TObject);
var i : integer;
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
            Query1.FieldByName('USERID').Value := main.Edit1.text;
            Query1.FieldByName('USERDATE').Value := Now;
            UpdateSQL1.Apply(ukModify);
          end
          else begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := Now;
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
    CopyPrice1.Enabled :=false;

  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSemiImportPrice.Cancel1Click(Sender: TObject);
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
  CopyPrice1.Enabled := false ;
end;

procedure TSemiImportPrice.CopyPrice1Click(Sender: TObject);
var i:integer;
begin
  Query1.First;
  for i:=0 to Query1.RecordCount-1 do
  begin
    Query1.Edit;
    Query1.FieldByName('USPrice').Value:=Query1.FieldByName('Price').Value;
    Query1.Post;
    Query1.Next;
  end;
end;

procedure TSemiImportPrice.bbt5Click(Sender: TObject);
begin
   ImportRYPrice:=TImportRYPrice.create(self);
   ImportRYPrice.show;
end;

procedure TSemiImportPrice.Button2Click(Sender: TObject);
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

procedure TSemiImportPrice.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((not Query1.FieldByName('PRice').IsNull)  and (not Query1.FieldByName('USPRice').IsNull) and  (Query1.FieldByName('USPRice').Value <>  Query1.FieldByName('PRice').Value)) then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

end.
