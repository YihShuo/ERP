unit FGKeyInOrder1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, Buttons, StdCtrls, ExtCtrls, DateUtils, comobj, fununit;

type
  TFGKeyInOrder = class(TForm)
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
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query2: TQuery;
    Query1DDBH: TStringField;
    Query1KCBH: TStringField;
    Query1STT: TStringField;
    Query1KVBH: TStringField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    btImport: TBitBtn;
    OpenDialog: TOpenDialog;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure btImportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FGKeyInOrder: TFGKeyInOrder;

implementation

uses main1;

{$R *.dfm}

procedure TFGKeyInOrder.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TFGKeyInOrder.FormDestroy(Sender: TObject);
begin
  FGKeyInOrder:=nil;
end;

procedure TFGKeyInOrder.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TFGKeyInOrder.Button1Click(Sender: TObject);
var iYear,iMonth,iDay:word;
    sYear,sMonth:String;
    sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(CBX1.Text), StrToInt(CBX2.Text), 1);
  DecodeDate(sDate, iYear, iMonth, iDay);
  IncAMonth(iYear, iMonth, iDay, -1);
  sYear := FloatToStr(iYear);
  sMonth := FloatToStr(iMonth);
  if (Length(sMonth) = 1) then
    sMonth := '0' + sMonth;
  //
  with Query1 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  select YWCP.DDBH, Max(KCBH) as KCBH, Orders.KCYEAR,Orders.KCMONTH,Orders.STT,Orders.KVBH,Orders.Memo,Orders.UserID,Orders.UserDate,Orders.YN from (  ');
    SQL.Add('     select YWCPMONTH.CKBH as KCBH, YWCPMONTH.DDBH ');
    SQL.Add('     from YWCPMONTH ');
    SQL.Add('     where YWCPMONTH.KCYEAR='''+sYear+''' ');
    SQL.Add('     and YWCPMONTH.KCMONTH='''+sMonth+''' ');
    SQL.Add('     and YWCPMONTH.DDBH in (select distinct DDBH from YWCP where SB<>''3'')');
    SQL.Add('     union all ');
    SQL.Add('     select Max(YWCP.KCBH) as KCBH,YWCP.DDBH ');
    SQL.Add('     from YWCP ');
    SQL.Add('     where 1=1 and IsNull(YWCP.SB,'''')<>'''' ');
    SQL.Add('     and convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between ');
    SQL.Add('     '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('     and YWCP.DDBH in (select distinct DDBH from YWCP where SB<>''3'')');
    SQL.Add('     Group by YWCP.DDBH )YWCP ');
    SQL.Add('  left join KCCLMONTH_Order Orders on Orders.DDBH = YWCP.DDBH and Orders.KCYEAR='''+CBX1.Text+''' and Orders.KCMONTH='''+CBX2.Text+''' ');
    SQL.Add('  where 1=1 ');
    if Edit1.Text <> '' then
      SQL.Add(' and YWCP.DDBH like '''+Edit1.Text+'%'' ');
    if Edit2.Text <> '' then
      SQL.Add(' and YWCP.KCBH like '''+Edit2.Text+'%'' ');
    SQL.Add('  group by YWCP.DDBH,YWCP.KCBH,Orders.KCYEAR,Orders.KCMONTH,Orders.STT,Orders.KVBH,Orders.Memo,Orders.UserID,Orders.UserDate,Orders.YN ');
    SQL.Add('  order by YWCP.DDBH ');
   //funcobj.WriteErrorLog(sql.Text);
   active:=true;
  end;
  if Query1.RecordCount >0 then
  begin
    BB4.Enabled := true;
    bbt6.Enabled := true;
    btImport.Enabled := true;
  end;

end;


procedure TFGKeyInOrder.FormCreate(Sender: TObject);
var myYear, myMonth, myDay : Word;
    i,j:integer;
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
  //
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;

end;

procedure TFGKeyInOrder.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    query1.edit;
  end;
  BB5.enabled:=true;
  BB6.enabled:=true;
end;

procedure TFGKeyInOrder.BB5Click(Sender: TObject);
var NDate: TDate;
    i: integer;
begin
  with Query2 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select getdate() as NDate');
    active:=true;
    NDate:=FieldByName('NDate').Value;
    active := false;
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
            Query1.FieldByName('KCYEAR').Value := CBX1.Text;
            Query1.FieldByName('KCMONTH').Value := CBX2.Text;
            Query1.FieldByName('USERID').Value := main.Edit1.text;
            Query1.FieldByName('USERDATE').Value := NDate;
            UpSQL1.Apply(ukModify);
          end else
          begin
            Query1.Edit;
            Query1.FieldByName('KCYEAR').Value := CBX1.Text;
            Query1.FieldByName('KCMONTH').Value := CBX2.Text;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := NDate;
            Query1.FieldByName('YN').Value := 1;
            UpSQL1.Apply(ukInsert);
          end;
        end;
      end;
      //
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

procedure TFGKeyInOrder.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.enabled:=false;
end;

procedure TFGKeyInOrder.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if Query1.Active then
  begin
    if Query1.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  //
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    //eclApp.Cells.NumberFormatLocal:='@';
    for   i:=0 to DBGridEh1.Columns.Count-1   do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
      for   i:=0 to DBGridEh1.Columns.Count-1   do
      begin
        eclApp.Cells[j,3].NumberFormatLocal:='@';
        eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
      end;
      Query1.Next;
      inc(j);
    end;
    eclApp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
  
end;

procedure TFGKeyInOrder.btImportClick(Sender: TObject);
var ExcelApp: Variant;
    OrderExcFN,ColumnNM,DDBH,STT,SOKHU: string;
    DDBH_index,STT_index,SOKHU_index:integer;
    offset,RowSIndex,i:integer;
    Isbreak:boolean;
begin
  try
    ExcelApp:=CreateOleObject('Excel.Application');
  except
    on E:Exception do
    begin
      Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
      Exit;
    end;
  end;
  //================================================================================
  try
    if OpenDialog.Execute=true then
    begin
      DDBH_index:=-1;
      STT_index:=-1;
      SOKHU_index:=-1;
      //
      OrderExcFN:=OpenDialog.FileName;
      ExcelApp.WorkBooks.Open(OpenDialog.FileName);
      ExcelApp.WorkSheets[1].Activate;
      //
      offset:=0;
      RowSIndex:=1;
      ColumnNM:=ExcelApp.Cells[RowSIndex+offset,1];
        if ColumnNM='DDBH' then DDBH_index:=1;
      ColumnNM:=ExcelApp.Cells[RowSIndex+offset,2];
        if ColumnNM='STT' then STT_index:=2;
      ColumnNM:=ExcelApp.Cells[RowSIndex+offset,3];
        if ColumnNM='SOKHU' then SOKHU_index:=3;
      //
      if (DDBH_index>0) then
      begin
        Isbreak:=false;
        RowSIndex:=1;
        repeat
           Application.ProcessMessages;
           RowSIndex:=RowSIndex+1;
           //Progress
           DDBH:=ExcelApp.Cells[RowSIndex+offset,DDBH_index];
           STT:=ExcelApp.Cells[RowSIndex+offset,STT_index];
           SOKHU:=ExcelApp.Cells[RowSIndex+offset,SOKHU_index];
           //=========================================
           if (trim(DDBH)<>'') then
           begin
              Query2.active:=false;
              Query2.SQL.Clear;
              Query2.SQL.Add('select * from KCCLMONTH_Order ');
              Query2.SQL.Add('where KCYEAR='''+CBX1.Text+''' AND KCMONTH='''+CBX2.Text+'''  AND DDBH ='''+trim(DDBH)+''' ');
              Query2.ExecSQL;
              Query2.active:=true;
              if Query2.RecordCount>0 then
              begin
                  Query2.active:=false;
                  Query2.SQL.Clear;
                  Query2.SQL.Add(' update KCCLMONTH_Order set STT='''+trim(STT)+''', KVBH='''+trim(SOKHU)+''' ');
                  Query2.SQL.Add(' ,UserDate=getdate()');
                  Query2.SQL.Add(' ,UserID ='''+main.Edit1.Text+''' ');
                  Query2.SQL.Add(' where KCYEAR='''+CBX1.Text+''' AND KCMONTH='''+CBX2.Text+''' AND DDBH ='''+trim(DDBH)+''' ');
                  //funcobj.WriteErrorLog(Query2.sql.Text);
                  Query2.ExecSQL;
              end else
              begin
                 Query2.active:=false;
                 Query2.SQL.Clear;
                 Query2.SQL.Add(' insert into KCCLMONTH_Order(KCYEAR,KCMONTH,DDBH,STT,KVBH,Memo,UserID,UserDate,YN) ');
                 Query2.SQL.Add(' values ('''+CBX1.Text+''','''+CBX2.Text+''','''+trim(DDBH)+''','''+trim(STT)+''','''+trim(SOKHU)+''','''+''+''','''+main.Edit1.Text+''',getdate(),1) ');
                 //funcobj.WriteErrorLog(Query2.sql.Text);
                 Query2.ExecSQL;
              end;
           end;
           //==========================================
           if (trim(DDBH)='') then  Isbreak:=true;
           //
        until IsBreak=true;
        //
        ExcelApp.WorkBooks.Close;
        ExcelApp.Quit;
        Showmessage('Success.');
        Button1.Click;
      end else
      begin
        ExcelApp.WorkBooks.Close;
        ExcelApp.Quit;
        Showmessage('Excel not exact format!');
      end;
    end;
  except
    on E:Exception do
    begin
      Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
      ExcelApp.WorkBooks.Close;
      ExcelApp.Quit;
      Exit;
    end;
  end;
  //
  Button1.Click;
end;

end.
