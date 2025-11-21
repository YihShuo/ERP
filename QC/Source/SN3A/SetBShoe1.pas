unit SetBShoe1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, GridsEh, DBGridEh, Buttons, ExtCtrls, FunUnit,
  ComCtrls, Comobj, iniFiles,dateutils;

type
  TSetBShoe = class(TForm)
    Panel1: TPanel;
    BB1: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QSearch: TQuery;
    btnExcel: TBitBtn;
    Query1DDBH: TStringField;
    Query1KHPO: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    Query1ARTICLE: TStringField;
    Query1XieMing: TStringField;
    Query1Pairs: TIntegerField;
    Query1ShipDate: TDateTimeField;
    Query1DDGB: TStringField;
    Query1BUYNO: TStringField;
    Query1ShoeB: TBooleanField;
    Query1Remark: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    RB1: TRadioButton;
    DTP1: TDateTimePicker;
    Label15: TLabel;
    DTP2: TDateTimePicker;
    RB2: TRadioButton;
    BuyNoEdit: TEdit;
    QTemp: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
  private
    { Private declarations }

  public

    { Public declarations }
  end;

var
  SetBShoe: TSetBShoe;
  NDate:Tdate;


implementation

uses main1;

{$R *.dfm}

procedure TSetBShoe.FormCreate(Sender: TObject);
begin
  with QSearch do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.date:=startofthemonth(NDate)+5;
  DTP2.date:=startofthemonth(incmonth(NDate,1))+4;
  //
  BuyNoEdit.Text:=FormatDateTime('YYYY',Date());
end;


procedure TSetBShoe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (BB5.Enabled) then
  begin
    ShowMessage('Please save the data before you close this page.');
    Action := caNone;
  end
  else begin
    Action := caFree;
  end;
end;

procedure TSetBShoe.FormDestroy(Sender: TObject);
begin
  SetBShoe := Nil;
end;

procedure TSetBShoe.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin 
    Active := false;
    SQL.Clear; 
    SQL.Add('  SELECT DDZL.DDBH,DDZL.KHPO,DDZL.XieXing,DDZL.SheHao,DDZL.ARTICLE,XXZL.XieMing,DDZL.Pairs,DDZL.ShipDate,lbzls.YWSM as DDGB,DDZL.BUYNO  ');
    SQL.Add('  	   ,DDZL_ShoeB.ShoeB,DDZL_ShoeB.Remark,DDZL_ShoeB.UserID,DDZL_ShoeB.UserDate,DDZL_ShoeB.YN  ');
    SQL.Add('  FROM DDZL  ');
    SQL.Add('  LEFT JOIN XXZL ON DDZL.XieXing=XXZL.XieXing AND DDZL.SheHao=XXZL.SheHao  ');
    SQL.Add('  LEFT JOIN LBZLS on lbzls.lb=''06'' and lbzls.lbdh=DDZL.DDGB   ');
    SQL.Add('  LEFT JOIN DDZL_ShoeB ON DDZL.DDBH=DDZL_ShoeB.DDBH  ');
    SQL.Add('  WHERE 1=1  ');
    SQL.Add('  AND DDZL.DDBH like ''%-B%'' ');
    if RB1.Checked=true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
      sql.add(' '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    end;
    if RB2.Checked=true then
    begin
      sql.add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    end;
    if Edit1.Text <> '' then
      sql.Add('and DDZL.DDBH like '''+Edit1.Text+'%'' ');
    if Edit2.Text <> '' then
      sql.Add('and XXZL.XieMing like ''%'+Edit2.Text+'%'' ');
     //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
  BB4.Enabled := true;
  btnExcel.Enabled := true;
end;

procedure TSetBShoe.BB1Click(Sender: TObject);
begin
  Panel2.Visible := true;
end;

procedure TSetBShoe.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
end;

procedure TSetBShoe.BB5Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
  //取Server的年月值
  with QSearch do
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
            With QTemp do
            begin
               active:=false;
               sql.Clear;
               sql.Add('Update DDZL ') ;
               if Query1.fieldbyname('ShoeB').Value=True then
               begin
                  sql.Add('Set Flag=''1'' ');
               end else
               begin
                  sql.Add('Set Flag=NULL ');
               end;
               sql.Add('Where DDZL.DDBH ='''+Query1.fieldbyname('DDBH').Value+''' ');
               ExecSQL();
            end;
            UpdateSQL1.Apply(ukModify);
          end else
          begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := NDate;
            Query1.FieldByName('YN').Value := 1;
            With QTemp do
            begin
               active:=false;
               sql.Clear;
               sql.Add('Update DDZL set Flag=''1'' ')  ;
               sql.Add('Where DDZL.DDBH ='''+Query1.fieldbyname('DDBH').Value+''' ');
               ExecSQL();
            end;
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
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TSetBShoe.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
end;

procedure TSetBShoe.BB7Click(Sender: TObject);
begin
  Close;
end;

procedure TSetBShoe.btnExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query1.RecordCount > 0 then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldCount-2   do
        begin
            eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
        end;
        //eclApp.Range[eclApp.Cells[1,1],eclApp.Cells[1,Query1.fieldCount-1]].HorizontalAlignment := -4108;
        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
        begin
          for   i:=0   to   Query1.FieldCount-2   do
          begin
            if ((Query1.Fields[i].FieldName = 'SheHao') or (Query1.Fields[i].FieldName = 'KHPO')) then
              eclApp.Cells(j,i+1):= #39 + Query1.Fields[i].Value
            else
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
          end;
          Query1.Next;
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
