unit Bill_ShippingFG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  ComCtrls,comobj;

type
  TBill_ShippingFG = class(TForm)
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
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    chk1: TCheckBox;
    chk2: TCheckBox;
    Label5: TLabel;
    DTP3: TDateTimePicker;
    Label6: TLabel;
    DTP4: TDateTimePicker;
    Query1INV_NO: TStringField;
    Query1Consignee: TStringField;
    Query1Notify: TStringField;
    Query1Carrier: TStringField;
    Query1LoadingDate: TDateTimeField;
    Query1ShippingDate: TDateTimeField;
    Query1ArrivalDate: TDateTimeField;
    Query1DeliveryDate: TDateTimeField;
    Query1DateOfReceipt: TDateTimeField;
    Query1PortofDischarge: TStringField;
    Query1PlaceofDelivery: TStringField;
    Query1NameBuyer: TStringField;
    Query1AddressBuyer: TStringField;
    Query1ValueInvoice: TCurrencyField;
    Query1Memo: TStringField;
    Query1UserID: TStringField;
    Query1UserDate: TDateTimeField;
    Query1YN: TStringField;
    Query1BillNo: TStringField;
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
  Bill_ShippingFG: TBill_ShippingFG;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TBill_ShippingFG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TBill_ShippingFG.FormDestroy(Sender: TObject);
begin
  Bill_ShippingFG:=nil;
end;

procedure TBill_ShippingFG.BB1Click(Sender: TObject);
begin
  Panel3.Visible:=true;
end;

procedure TBill_ShippingFG.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-7;
  DTP2.date:=date;
  DTP3.Date:=date-7;
  DTP4.date:=date;
end;

procedure TBill_ShippingFG.Button1Click(Sender: TObject);
begin
  if ((not chk1.Checked) and (not chk2.Checked) and (edit1.Text='') and (edit2.Text='')) then
  begin
    showmessage('Pls Filter Shipping Date or Invoice Date or Invoice or BillNo');
    abort;
  end;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select Ship_Booking.INV_NO,Ship_Booking.Bill_FCR_No as BillNo,Bill_Shipping.Consignee,Bill_Shipping.Notify,Bill_Shipping.Carrier,Bill_Shipping.LoadingDate ');
    sql.Add('		     ,Bill_Shipping.ShippingDate,Bill_Shipping.ArrivalDate,Bill_Shipping.DeliveryDate,Bill_Shipping.DateOfReceipt,Bill_Shipping.PortofDischarge ');
    sql.Add('		     ,Bill_Shipping.PlaceofDelivery,Bill_Shipping.NameBuyer,Bill_Shipping.AddressBuyer,Bill_Shipping.ValueInvoice,Bill_Shipping.Memo ');
    sql.Add('		     ,Bill_Shipping.UserID,Bill_Shipping.UserDate,Bill_Shipping.YN');
    sql.Add(' from Ship_Booking ');
    sql.Add(' left join Invoice_M on Ship_Booking.INV_NO=INVOICE_M.INV_NO ');
    sql.Add(' left join Bill_Shipping on Ship_Booking.INV_NO=Bill_Shipping.INV_NO and Ship_Booking.Bill_FCR_No=Bill_Shipping.BillNo ');
    sql.Add(' where 1=1 ');
    if chk1.Checked then
    begin
      sql.add(' and convert(smalldatetime,convert(varchar,Ship_Booking.ExFty_Date,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if chk2.Checked then
    begin
      sql.add(' and convert(smalldatetime,convert(varchar,Invoice_M.INV_Date,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
    end;
    if edit1.Text <> '' then
      sql.Add(' and Ship_Booking.INV_NO like '''+edit1.Text+'%'' ');
    if edit2.Text <> '' then
      sql.Add(' and Ship_Booking.Bill_FCR_No like '''+edit2.Text+'%'' ');
    sql.Add(' group by Ship_Booking.INV_NO,Ship_Booking.Bill_FCR_No,Bill_Shipping.Consignee,Bill_Shipping.Notify,Bill_Shipping.Carrier,Bill_Shipping.LoadingDate ');
    sql.Add('		       ,Bill_Shipping.ShippingDate,Bill_Shipping.ArrivalDate,Bill_Shipping.DeliveryDate,Bill_Shipping.DateOfReceipt,Bill_Shipping.PortofDischarge ');
    sql.Add('		       ,Bill_Shipping.PlaceofDelivery,Bill_Shipping.NameBuyer,Bill_Shipping.AddressBuyer,Bill_Shipping.ValueInvoice,Bill_Shipping.Memo ');
    sql.Add('		       ,Bill_Shipping.UserID,Bill_Shipping.UserDate,Bill_Shipping.YN');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if query1.RecordCount>0 then
  begin
    BB4.Enabled:=true;
    bbt6.Enabled:=true;
  end;
end;

procedure TBill_ShippingFG.BB4Click(Sender: TObject);
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

procedure TBill_ShippingFG.BB5Click(Sender: TObject);
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

procedure TBill_ShippingFG.BB6Click(Sender: TObject);
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

procedure TBill_ShippingFG.bbt6Click(Sender: TObject);
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
