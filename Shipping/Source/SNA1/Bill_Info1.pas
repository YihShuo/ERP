unit Bill_Info1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  ComCtrls,comobj;

type
  TBill_Info = class(TForm)
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
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    UpSQL1: TUpdateSQL;
    Query2: TQuery;
    Query1DocNo: TStringField;
    Query1BillNo: TStringField;
    Query1PlaceLading: TStringField;
    Query1PortExport: TStringField;
    Query1PlaceDischarge: TStringField;
    Query1PlaceDelivery: TStringField;
    Query1FWD: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Query1Country: TStringField;
    Query1LoadingDate: TDateTimeField;
    Query1ArivalDate: TDateTimeField;
    Query1Carrier: TStringField;
    Query1Shipper: TStringField;
    Query1Container: TStringField;
    Query1VersselIdentification: TStringField;
    Query1DeliverDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Bill_Info: TBill_Info;

implementation

uses main1;

{$R *.dfm}

procedure TBill_Info.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBill_Info.FormDestroy(Sender: TObject);
begin
  Bill_Info:=nil;
end;

procedure TBill_Info.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TBill_Info.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-7;
  DTP2.date:=date;
end;

procedure TBill_Info.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select kcrk.DOCNO,Bill_Info.BillNo,Bill_Info.LoadingDate,Bill_Info.ArivalDate,Bill_Info.DeliverDate,Bill_Info.PlaceLading,Bill_Info.PortExport,Bill_Info.PlaceDischarge,Bill_Info.PlaceDelivery ');
    sql.Add('       ,Bill_Info.FWD,Bill_Info.Country,Bill_Info.Carrier,Bill_Info.Shipper,Bill_Info.Container,Bill_Info.VersselIdentification,Bill_Info.UserID,Bill_Info.UserDate,Bill_Info.YN ');
    sql.Add(' from kcrk left join Bill_Info ');
    sql.Add(' on kcrk.DOCNO=Bill_Info.DocNo ');
    sql.Add(' where left(KCRK.HGLB,2) in (''NK'',''TC'',''KD'') and IsNull(KCRK.DOCNO,'''') <>'''' ');
    sql.add(' and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    if edit1.Text <> '' then
      sql.Add(' and kcrk.docno like '''+edit1.Text+'%'' ');
    if edit2.Text <> '' then
      sql.Add(' and Bill_Info.BillNo like '''+edit2.Text+'%'' ');
    sql.Add(' group by kcrk.DOCNO,Bill_Info.BillNo,Bill_Info.LoadingDate,Bill_Info.ArivalDate,Bill_Info.DeliverDate,Bill_Info.PlaceLading,Bill_Info.PortExport,Bill_Info.PlaceDischarge,Bill_Info.PlaceDelivery ');
    sql.Add('       ,Bill_Info.FWD,Bill_Info.Country,Bill_Info.Carrier,Bill_Info.Shipper,Bill_Info.Container,Bill_Info.VersselIdentification,Bill_Info.UserID,Bill_Info.UserDate,Bill_Info.YN ');;
    //showmessage(sql.Text);
    active:=true;
  end;
  if query1.RecordCount>0 then
  begin
    BB4.Enabled:=true;
    bbt6.Enabled:=true;
  end;
end;

procedure TBill_Info.BB4Click(Sender: TObject);
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

procedure TBill_Info.BB5Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
  with Query2 do
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
            UpSQL1.Apply(ukModify);
          end
          else begin
            Query1.Edit;
            Query1.FieldByName('USERID').Value := main.Edit1.Text;
            Query1.FieldByName('USERDATE').Value := NDate;
            Query1.FieldByName('YN').Value := 1;
            UpSQL1.Apply(ukInsert);
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

procedure TBill_Info.BB6Click(Sender: TObject);
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

procedure TBill_Info.bbt6Click(Sender: TObject);
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
