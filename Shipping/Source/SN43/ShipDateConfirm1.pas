unit ShipDateConfirm1;

interface                                        

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, DBGridEhImpExp, ShellAPI, StdCtrls, ExtCtrls,comobj,
  ComCtrls, Menus, Buttons, DBCtrls, ehlibBDE,NumberToWords,StrUtils;
type
  TShipDateConfirm = class(TForm)
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1Testno: TStringField;
    Query1SampleOrder: TStringField;
    Query1SR: TStringField;                                                        
    Query1Season: TStringField;
    Query1Stage: TStringField;
    Query1Purpose: TStringField;
    UpdateSQL1: TUpdateSQL;
    Invoice: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX4: TComboBox;
    CBX5: TComboBox;
    ComboBox1: TComboBox;
    mmodify: TBitBtn;
    msave: TBitBtn;
    mcancel: TBitBtn;
    Mquery: TBitBtn;
    Minsert: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Query1ShipDate_original: TDateTimeField;
    Query1Total_Qty: TFloatField;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    sQuery: TBitBtn;
    sInsert: TBitBtn;
    smodify: TBitBtn;
    sSave: TBitBtn;
    sCancel: TBitBtn;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    Query2: TQuery;
    UpdateSQL2: TUpdateSQL;
    Query2YYBH: TStringField;
    Query2YWSM: TStringField;
    Query2ZWSM: TStringField;
    Query2VWSM: TStringField;
    Query2class: TStringField;
    sDelete: TBitBtn;
    temp: TQuery;
    Panel7: TPanel;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    UpdateSQL3: TUpdateSQL;
    Query3TestNo: TStringField;
    Query3ShipDate_final: TDateTimeField;
    Query3country: TStringField;
    Query3Qty: TCurrencyField;
    mdelete: TBitBtn;
    Query3ywsm: TStringField;
    Query3yn: TStringField;
    Query1siz: TStringField;
    Query1SKU: TStringField;
    Button2: TButton;
    TabSheet4: TTabSheet;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    InvoiceGD: TDBGridEh;
    InvoiceQry: TQuery;
    InvoiceDS: TDataSource;
    Button3: TButton;
    Button4: TButton;
    InvoiceQryCategory: TStringField;
    InvoiceQryCut: TStringField;
    InvoiceQryMainMaterial: TStringField;
    InvoiceQryColorwayName: TStringField;
    InvoiceQryGenderClass: TStringField;
    InvoiceQryColorwayID: TStringField;
    InvoiceQrySKU: TStringField;
    InvoiceQryQty: TCurrencyField;
    InvoiceQrySampleSize: TStringField;
    Label3: TLabel;
    InvoiceYear: TComboBox;
    Label5: TLabel;
    InvoiceMonth: TComboBox;
    Query1SPQty: TCurrencyField;
    Query3cancel: TBooleanField;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Query1qty: TCurrencyField;
    Query1warehousein: TFloatField;
    Query1warehouseout: TFloatField;
    Query1fd: TStringField;
    Query1beforemonthqty: TCurrencyField;
    Query1aftermonthqty: TCurrencyField;
    Query1cancelqty: TCurrencyField;
    CheckBox1: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Query1Complete: TDateTimeField;
    TabSheet5: TTabSheet;
    Panel11: TPanel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Button5: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Button6: TButton;
    Edit7: TEdit;
    Edit8: TEdit;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    Panel12: TPanel;
    DBGridEh4: TDBGridEh;
    Panel13: TPanel;
    DBGridEh5: TDBGridEh;
    DataSource4: TDataSource;
    Query4: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    DateTimeField1: TDateTimeField;
    FloatField1: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField9: TStringField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    DateTimeField2: TDateTimeField;
    DataSource5: TDataSource;
    Query5: TQuery;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    DateTimeField3: TDateTimeField;
    CurrencyField6: TCurrencyField;
    StringField13: TStringField;
    BooleanField1: TBooleanField;
    Label9: TLabel;
    TabSheet6: TTabSheet;
    DBGridEh6: TDBGridEh;
    DataSource6: TDataSource;
    Query6: TQuery;
    Panel14: TPanel;
    Label16: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Button8: TButton;
    DTP5: TDateTimePicker;
    DTP6: TDateTimePicker;
    Label10: TLabel;
    UpdateSQL6: TUpdateSQL;
    Query6ExFtyDate: TDateTimeField;
    Query6YPDH: TStringField;
    Query6QTY: TFloatField;
    Query6Company: TStringField;
    Query6InvoiceDate: TDateTimeField;
    Query6TCPackingListSubmissionDate: TDateTimeField;
    Query6BookingNO: TStringField;
    Query6SR: TStringField;
    Query6SailingDate: TDateTimeField;
    Query6FCRNo_BillNo: TStringField;
    Query6CUSTID: TStringField;
    Query6Country: TStringField;
    Query6KindLoading: TStringField;
    Query6Forwarder: TStringField;
    Query6IODate: TStringField;
    Query6QTY1: TFloatField;
    Query6UserID: TStringField;
    Query6UserDate: TDateTimeField;
    Query6YN: TStringField;
    Query6TestNo: TStringField;
    Label15: TLabel;
    Edit9: TEdit;
    Query3UnitPrice: TFloatField;
    Query3Amount: TFloatField;
    Query6UnitPrice: TFloatField;
    Query6Amount: TFloatField;
    Query3InvoiceDate: TDateTimeField;
    TabSheet7: TTabSheet;
    Panel15: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Button7: TButton;
    DTP7: TDateTimePicker;
    DTP8: TDateTimePicker;
    Edit10: TEdit;
    DBGridEh7: TDBGridEh;
    DataSource7: TDataSource;
    Query7: TQuery;
    DateTimeField4: TDateTimeField;
    StringField14: TStringField;
    FloatField4: TFloatField;
    StringField15: TStringField;
    StringField16: TStringField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    DateTimeField7: TDateTimeField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    FloatField5: TFloatField;
    StringField26: TStringField;
    DateTimeField8: TDateTimeField;
    StringField27: TStringField;
    StringField28: TStringField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    UpdateSQL4: TUpdateSQL;
    Label25: TLabel;
    Label24: TLabel;
    Edit12: TEdit;
    Edit11: TEdit;
    Label26: TLabel;
    Edit13: TEdit;
    Query6CustomsNo: TStringField;
    Query6InvoiceNo: TStringField;
    Query3InvoiceNo: TStringField;
    Label27: TLabel;
    ComboBox2: TComboBox;
    Label28: TLabel;
    Ed_Invoice: TEdit;
    CheckBox2: TCheckBox;
    DTP9: TDateTimePicker;
    DTP10: TDateTimePicker;
    Label29: TLabel;
    CheckBox3: TCheckBox;
    Query6Complete: TDateTimeField;
    CheckBox4: TCheckBox;
    Button9: TButton;
    OpenDialog: TOpenDialog;
    BitBtn13: TBitBtn;
    Button10: TButton;
    btnAnnex: TButton;
    qrytemp2: TQuery;
    qrytemp1: TQuery;
    qrytemp: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmodifyClick(Sender: TObject);
    procedure msaveClick(Sender: TObject);
    procedure mcancelClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure MqueryClick(Sender: TObject);
    procedure sQueryClick(Sender: TObject);
    procedure smodifyClick(Sender: TObject);
    procedure sInsertClick(Sender: TObject);
    procedure sSaveClick(Sender: TObject);
    procedure sCancelClick(Sender: TObject);
    procedure MinsertClick(Sender: TObject);
    procedure DBGridEh3Columns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure mdeleteClick(Sender: TObject);
    procedure DBGridEh3GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Query6AfterOpen(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGridEh3ColExit(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure InvoiceChange(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure Query3BeforePost(DataSet: TDataSet);
    procedure DBGridEh6GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGridEh6EditButtonClick(Sender: TObject);
    procedure DBGridEh6ColExit(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure btnAnnexClick(Sender: TObject);

  private
    { Private declarations }
    AppDir:string;
  public
    { Public declarations }
  end;

var
  ShipDateConfirm: TShipDateConfirm;

implementation
uses EntryCheck_Print1, main1,fununit, choosedetail1;

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;


procedure TShipDateConfirm.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
y,m:integer;
begin
  Mmodify.Enabled:=true;
  minsert.Enabled:=true;
  mQuery.enabled:=true;

  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  y:=strtoint(CBX1.Text);
  m:=strtoint(CBX2.Text);
  if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
//sdate:=encodedate(y,m,1);
//edate:=endofthemonth(sdate);
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  shoetest.Testno,shoetest.Ypdh as SampleOrder,article as SR,kfxxzl.SKU,shoetest.siz,Season,shoetest.fd,');
    sql.add('Stage,Purpose,shoetest.shipdate as ShipDate_original,isnull(shoetest2.qty,0) as Total_Qty,isnull(shoetestshipping.qty,0) as spqty,isnull(shoetestshippingmonth.qty,0) as qty,');
    sql.add('isnull(warehousein,0) as warehousein,isnull(warehouseout,0) as warehouseout,isnull(beforemonthqty,0) as beforemonthqty ,isnull(aftermonthqty,0) as aftermonthqty,isnull(cancelqty,0) as cancelqty,Complete from shoetest');
    sql.add('left join (select testno,sum(qty) as qty from shoetestshipping group by testno) shoetestshipping on shoetestshipping.testno=shoetest.testno');
    sql.add('left join (select testno,shipdate_final from shoetestshipping) shoetestshippingdate on shoetestshippingdate.testno=shoetest.testno');
    sql.add('left join (select testno,sum(qty) as warehousein from shoetestin group by testno) shoetestin on shoetestin.testno=shoetest.testno');
    sql.add('left join (select testno,sum(qty) as warehouseout from shoetestout group by testno) shoetestout on shoetestout.testno=shoetest.testno');
    sql.add('left join (select testno,sum(qty) as qty   from shoetestshipping');
    sql.Add(' where  (cancel<>''1'' or cancel is null) and Convert(smalldatetime,convert(varchar,shipdate_final,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('group by testno)shoetestshippingmonth on shoetestshippingmonth.testno=shoetest.testno');

    sql.add('left join (select testno,sum(qty) as cancelqty   from shoetestshipping');
    sql.add('where cancel=''1'' ');
    sql.add('group by testno)shippingcancel on shippingcancel.testno=shoetest.testno');

    sql.add('left join (select testno,sum(qty) as beforemonthqty   from shoetestshipping');
    sql.add('where (cancel<>''1'' or cancel is null) and Convert(smalldatetime,convert(varchar,shipdate_final,111)) < '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+'''');
    sql.add('group by testno)shippingbeforemonth on shippingbeforemonth.testno=shoetest.testno');

    sql.add('left join (select testno,sum(qty) as aftermonthqty   from shoetestshipping');
    sql.add('where  (cancel<>''1'' or cancel is null) and Convert(smalldatetime,convert(varchar,shipdate_final,111)) > '''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('group by testno)shippingaftermonth on shippingaftermonth.testno=shoetest.testno ');

    sql.add('left join (select testno,sum(qty) as qty from shoetest2 group by testno )shoetest2 on  shoetest2.testno=shoetest.testno');
    sql.add('left join (select ypdh,ypzl.xiexing,ypzl.shehao,kfxxzl.article as SKU from ypzl left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao)kfxxzl on kfxxzl.ypdh=shoetest.ypdh');
    if Ed_Invoice.Text<>'' then
        sql.Add('left join shoetestshipping shipping on shipping.TestNo=ShoeTest.TestNo');
    SQL.Add('where 1 = 1 ');
    if main.Edit2.Text = 'CDC' then
      sql.add('and (left(shoetest.Ypdh,4)=''LAIV'' or left(shoetest.Ypdh,4)=''BYIV'' )')
    else if main.Edit2.Text = 'SKX' then
      sql.add('and (left(shoetest.Ypdh,4)=''SKXV'' or left(shoetest.Ypdh,4)=''SRLV'' )');

    if  edit1.text<>'' then     sql.add('and season='''+edit1.text+''' ');
    if  edit2.text<>'' then     sql.add('and stage='''+edit2.text+''' ');
    if  edit3.text<>'' then     sql.add('and shoetest.Ypdh like '''+edit3.text+'%'' ');
    if  edit4.text<>'' then     sql.add('and article='''+edit4.text+''' ');
    if  Ed_Invoice.Text<>'' then sql.Add('and shipping.InvoiceNo = '''+Ed_Invoice.text+'''');
    if CheckBox3.Checked then
    begin
      if  combobox1.text='Developer' then
      begin
        sql.Add(' and Convert(smalldatetime,convert(varchar,shipdate,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end;
      if  combobox1.text='ShippingTeam' then
      begin
        sql.Add(' and Convert(smalldatetime,convert(varchar,shoetestshippingdate.shipdate_final,111)) between ');
        sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
      end;
    end;
    if checkbox2.Checked then
    begin
      sql.Add(' and Convert(smalldatetime,convert(varchar,shoetest.complete,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP9.Date)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',DTP10.Date)+'''');
    end;
    if CheckBox4.Checked then
      SQL.Add(' and shoetest.complete is null');
    sql.add('group by shoetest.Testno,shoetest.Ypdh,article,kfxxzl.SKU,shoetest.siz,Season,shoetest.fd,beforemonthqty,aftermonthqty,');
    sql.add('Stage,Purpose,shoetest.shipdate,shoetest2.qty,shoetestshippingmonth.qty,shoetestshipping.qty,warehousein,warehouseout,cancelqty,Complete  ');
    sql.add('order by shipdate desc');
    //funcobj.WriteErrorLog(sql.Text);
    //showmessage(sql.text);
    active:=true;
  end;
   query3.active:=true;
   dbgrideh1.FieldColumns['qty'].title.caption:='ShippingTeamQty|'+formatdatetime('yyyy/MM/dd',DTP1.Date)+'~'+formatdatetime('yyyy/MM/dd',DTP2.Date);
end;

procedure TShipDateConfirm.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
  sheet:TTabSheet;
begin
 for i:=0 to Invoice.PageCount-1   do
      begin
         sheet:=Invoice.Pages[i];
         if sheet=Invoice.ActivePage   then
            sheet.Highlighted:=true
         else
            sheet.Highlighted:=false;
      end;
  DTP1.Date := now();
  DTP2.Date := now();
  DTP3.Date := now();
  DTP4.Date := now();
  DTP5.Date := now();
  DTP6.Date := now();
  DTP7.Date := now();
  DTP8.Date := now();
 // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  ComboBox2.Clear;
  if (main.Edit2.Text = 'CDC') or (main.Edit2.Text = 'SKX') then begin
    ComboBox2.Items.Add('CONVERSE');
    ComboBox2.Items.Add('Skechers');
    ComboBox2.Items.Add('SOREL');
  end;
  if (main.Edit2.Text = 'TBDC') then
  begin
    ComboBox2.Items.Add('VANS');
    ComboBox2.Items.Add('ALTRA');
    ComboBox2.Items.Add('The North Face');
  end;
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to invoiceYear.Items.Count-1 do
  begin
    if strtoint(invoiceYear.Items[i])=myYear then
    begin
      invoiceYear.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to invoicemonth.Items.Count-1 do
  begin
    if strtoint(invoicemonth.Items[i])=myMonth then
    begin
      invoicemonth.ItemIndex:=i;
      break;
    end;
  end;
  for j:=0 to CBX4.Items.Count-1 do
  begin
    if strtoint(CBX4.Items[j])=myYear then
    begin
      CBX4.ItemIndex:=j;
      break;
    end;
  end;
  for j:=0 to CBX5.Items.Count-1 do
  begin
    if strtoint(CBX5.Items[j])=myMonth then
    begin
      CBX5.ItemIndex:=j;
      break;
    end;
  end;
  tabSheet7.Destroy;

  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TShipDateConfirm.FormDestroy(Sender: TObject);
begin
  ShipDateConfirm:=nil;
end;

procedure TShipDateConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TShipDateConfirm.mmodifyClick(Sender: TObject);
begin
    with query3 do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;

    mmodify.Enabled := false;
    mDelete.Enabled := True;
    mInsert.Enabled := false;
    mCancel.Enabled := True;
    mSave.Enabled := True;
    button10.Enabled :=true;
end;

procedure TShipDateConfirm.msaveClick(Sender: TObject);
var i:integer;
begin
{  if  Query1.FieldByName('Complete').IsNull then
  begin
    Showmessage('Complete is null, it can''t ship ');
    abort();
  end;  }
  query3.first;
  for i:=1 to query3.RecordCount do
  begin
      case query3.updatestatus of
        usinserted:
        begin
           if  Query1.FieldByName('Complete').IsNull then
           begin
             if messagedlg('Complete date does not exist do you want to save?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
             begin
                UpdateSQL3.apply(ukinsert);
             end else
             begin
                abort;
             end;
           end else
           begin
             if ((Query3.fieldbyname('country').asstring='') or (Formatdatetime('yyyy/MM/dd',Query3.FieldByName('ShipDate_final').Value)<Formatdatetime('yyyy/MM/dd',Query1.FieldByName('Complete').Value) ))  then
             begin
               showmessage('Please Type Country or  ShipDate must >= Complete date ');
               abort;
             end else
             begin
                UpdateSQL3.apply(ukinsert);
             end;
           end;
        end;
        usmodified:
       begin
        if query3.fieldbyname('YN').value='0'then
        begin
           UpdateSQL3.apply(ukdelete);
        end else
        begin
           if  Query1.FieldByName('Complete').IsNull then
           begin
             if messagedlg('Complete date does not exist do you want to save?',mtconfirmation,[mbYes,Mbno],0)=mrYes then
             begin
                UpdateSQL3.apply(ukmodify);
             end else
             begin
                abort;
             end;
           end else
           begin
              if (Formatdatetime('yyyy/MM/dd',Query3.FieldByName('ShipDate_final').Value)<Formatdatetime('yyyy/MM/dd',Query1.FieldByName('Complete').Value)) then
              begin
                 showmessage('ShipDate must >= Complete date ');
                 abort;
              end else
              begin
                UpdateSQL3.apply(ukmodify);
              end;
           end;
        end;
       end;
     end;
     query3.next;
  end;//for
  query3.active:=false;
  query3.cachedupdates:=false;
  query3.requestlive:=false;
  query3.active:=true;
  mQuery.Enabled := True;
  mmodify.Enabled := True;
  mDelete.Enabled := False;
  mInsert.Enabled := True;
  mCancel.Enabled := False;
  mSave.Enabled := False;
  Button10.Enabled:=false;
end;

procedure TShipDateConfirm.mcancelClick(Sender: TObject);
begin
  query3.active:=false;
  query3.cachedupdates:=false;
  query3.requestlive:=false;
  query3.active:=true;
  mQuery.Enabled := True;
  mmodify.Enabled := True;
  mDelete.Enabled := False;
  mInsert.Enabled := True;
  mCancel.Enabled := False;
  mSave.Enabled := False;
  Button10.Enabled:=false;
end;

procedure TShipDateConfirm.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if  query1.FieldByName('Total_Qty').value<> query1.FieldByName('spqty').value then
  begin
    if  query1.FieldByName('Total_Qty').value<query1.FieldByName('spqty').value then
       begin
       DBGridEh1.canvas.Brush.Color:=clred;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
    if  query1.FieldByName('Total_Qty').value>query1.FieldByName('spqty').value then
       begin
       DBGridEh1.canvas.Brush.Color:=cllime;
       DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
       end;
  end;

end;

procedure TShipDateConfirm.MqueryClick(Sender: TObject);
begin
   button1.click;
end;

procedure TShipDateConfirm.sQueryClick(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select YYBH,YWSM,ZWSM,VWSM,class from shoetestdetail where class=''shipping'' ');
    active:=true;
  end;
  smodify.Enabled:=true;
  sinsert.Enabled:=true;
  sQuery.enabled:=true;
end;

procedure TShipDateConfirm.smodifyClick(Sender: TObject);
begin
  if query2.Active then
    if query2.RecordCount > 0 then
    begin
      with query2 do
      begin
        requestlive:=true;
        cachedupdates:=true;
      end;
      smodify.Enabled := false;
      sDelete.Enabled := True;
      sInsert.Enabled := false;
      sCancel.Enabled := True;
      sSave.Enabled := True;
    end;
end;

procedure TShipDateConfirm.sInsertClick(Sender: TObject);
var a:string;
begin
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select top 1 (right(YYBH,3)+1) as YYBH from shoetestdetail where class=''shipping'' order by yybh desc ');
    active:=true;
  end;
  a:= temp.fieldbyname('YYBH').AsString;
  while length(a)<3 do
  begin
    a:='0'+a;
  end;
  a:='G'+a;
  query2.First;
  with query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;

  query2.fieldbyname('class').AsString:='Shipping';
  query2.fieldbyname('YYBH').AsString:=a;
  smodify.Enabled := false;
  sDelete.Enabled := false;
  sInsert.Enabled := false;
  sCancel.Enabled := True;
  sSave.Enabled := True;
end;

procedure TShipDateConfirm.sSaveClick(Sender: TObject);
var i:integer;
begin
 try
      query2.first;
      for i:=1 to query2.RecordCount do
      begin
        case query2.updatestatus of
          usinserted:
          begin
            if Length(query2.fieldbyname('YYBH').asstring)<>4  then
            begin
              showmessage('Please Type SR# and Season ');
              abort;
            end
            else
            begin
               UpdateSQL2.apply(ukinsert);
            end;
          end;
          usmodified:
          begin
               UpdateSQL2.apply(ukmodify);
          end;
        end;
        query2.next;
      end;

      sQuery.Enabled := True;
      smodify.Enabled := False;
      sDelete.Enabled := False;
      sInsert.Enabled := False;
      sCancel.Enabled := False;
      sSave.Enabled := False;
      with query2 do
      begin
        active:=false;
        requestlive:=false;
        cachedupdates:=false;
        active:=true;
      end;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TShipDateConfirm.sCancelClick(Sender: TObject);
begin
  sQuery.Enabled := True;
  smodify.Enabled := False;
  sDelete.Enabled := False;
  sInsert.Enabled := False;
  sCancel.Enabled := False;
  sSave.Enabled := False;
  with query2 do
  begin
    requestlive:=false;
    cachedupdates:=false;
  end;
end;

procedure TShipDateConfirm.MinsertClick(Sender: TObject);
begin
  with query3 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Insert;
  end;
  query3.fieldbyname('testno').AsString:=query1.fieldbyname('testno').AsString;
  mmodify.Enabled := false;
  mDelete.Enabled := false;
  mInsert.Enabled := false;
  mCancel.Enabled := True;
  mSave.Enabled := True;
end;

procedure TShipDateConfirm.DBGridEh3Columns1EditButtonClick(
  Sender: TObject; var Handled: Boolean);
begin
  if choosedetail<>nil then
    begin
       choosedetail.show;
       choosedetail.windowstate:=wsmaximized;
    end
  else
    begin
       choosedetail:=Tchoosedetail.create(self);
       choosedetail.show;
    end;
end;

procedure TShipDateConfirm.mdeleteClick(Sender: TObject);
begin
  with query3 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
    Mquery.Enabled := false;
    mmodify.Enabled := false;
    msave.Enabled := true;
    mcancel.Enabled := true;
  end;
end;

procedure TShipDateConfirm.DBGridEh3GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query3.FieldByName('YN').value='0' then
  begin
    DBGridEh3.canvas.font.color:=clred;
  end;
end;

procedure TShipDateConfirm.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        eclApp.Cells(1,2):='戳计';
        eclApp.Cells(1,4):='戳ソ计';
        eclApp.Cells(2,1):='STT';
        eclApp.Cells(2,2):='Developer';
        eclApp.Cells(2,3):='Stage';
        eclApp.Cells(2,4):='SampleOrder';
        eclApp.Cells(2,5):='SR#';
        eclApp.Cells(2,6):='Total Imported Qty(TB Qty)';
        eclApp.Cells(2,7):='Complete Date';
        eclApp.Cells(2,8):='Already Imported Qty';
        eclApp.Cells(2,9):=Formatdatetime('YYYY/MM/DD',DTP1.Date)+'~'+Formatdatetime('YYYY/MM/DD',DTP2.Date);
//        eclApp.Cells(2,8):='Month Imported Qty';
//        eclApp.Cells(2,9):='Cancel Qty';
//        eclApp.Cells(2,10):='Waiting Imported Qty';
        if checkbox1.checked then
        begin
           eclApp.Cells(2,11):='Check';
           eclApp.Cells(2,12):='Set up';
        end;
        query1.First;
        j:=3;                                            
        i:=1;
        while   not   query1.Eof   do
          begin
          eclApp.Cells(j,1):=i;
          eclApp.Cells(j,2):=query1.FieldByName('fd').value;
          eclApp.Cells(j,3):=query1.FieldByName('Stage').value;
          eclApp.Cells(j,4):=query1.FieldByName('sampleorder').value;
          eclApp.Cells(j,5):=query1.FieldByName('sr').value;
          eclApp.Cells(j,6):=query1.FieldByName('total_qty').value;
          eclApp.Cells(j,7):=query1.FieldByName('Complete').value;
          eclApp.Cells(j,8):=query1.FieldByName('beforemonthqty').value;
          eclApp.Cells(j,9):=query1.FieldByName('qty').value;
//          eclApp.Cells(j,9):=query1.FieldByName('cancelqty').value;
//          eclApp.Cells(j,10):=query1.FieldByName('aftermonthqty').value;
          if checkbox1.checked then
          begin
             eclApp.Cells(j,11):=query1.FieldByName('total_qty').value-query1.FieldByName('beforemonthqty').value-query1.FieldByName('qty').value-query1.FieldByName('cancelqty').value;
             eclApp.Cells(j,12):=query1.FieldByName('spqty').value;
          end;
          query1.Next;
          inc(j);
          inc(i);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;


procedure TShipDateConfirm.Button3Click(Sender: TObject);
begin
  with Invoiceqry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select xxzlkf.Category,xxzlkf.Cut,xxzlkf.MMD as MainMaterial,kfxxzl.yssm ColorwayName,');
    sql.add('kfxxzl.gender as GenderClass,shoetest.article as ColorwayID,kfxxzl.article as SKU,shoetestshipping.Qty,');
    sql.add('shoetest.siz as SampleSize,shoetestshipping.testno,shoetestshipping.shipDate_final,shoetestshipping.country,');
    sql.add('shoetestdetail.ywsm from shoetestshipping');
    sql.add('left join shoetestdetail on shoetestdetail.yybh=shoetestshipping.country ');
    sql.add('left join shoetest on shoetest.testno=shoetestshipping.testno ');
    sql.add('left join ypzl on ypzl.ypdh=shoetest.ypdh ');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
    sql.add('left join xxzlkf on xxzlkf.xiexing=ypzl.xiexing and xxzlkf.shehao=ypzl.shehao ');
    sql.add('where Year(shoetestshipping.shipDate_final)='''+invoiceYear.text+''' and month(shoetestshipping.shipDate_final)='''+invoicemonth.text+''' ');
    sql.add('group by xxzlkf.Category,xxzlkf.Cut,xxzlkf.MMD,kfxxzl.yssm,' );
    sql.add('kfxxzl.gender ,shoetest.article ,kfxxzl.article ,shoetestshipping.Qty,');
    sql.add('shoetest.siz ,shoetestshipping.testno,shoetestshipping.shipDate_final,shoetestshipping.country,');
    sql.add('shoetestdetail.ywsm');
    active:=true;
  end;

end;

procedure TShipDateConfirm.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  invoiceQry.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   invoiceQry.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=invoiceQry.fields[i].FieldName;
          end;

        invoiceQry.First;
        j:=2;
        while   not   invoiceQry.Eof   do
          begin
            for   i:=0   to  invoiceQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=invoiceQry.Fields[i].Value;
            end;
          invoiceQry.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;



procedure TShipDateConfirm.Button5Click(Sender: TObject);
var sdate,edate:Tdate;
y,m:integer;
begin
  with query4 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  shoetest.Testno,shoetest.Ypdh as SampleOrder,article as SR,kfxxzl.SKU,shoetest.siz,Season,shoetest.fd,');
    sql.add('Stage,Purpose,shoetest.shipdate as ShipDate_original,isnull(shoetest2.qty,0) as Total_Qty,isnull(shoetestshipping.qty,0) as spqty,isnull(shoetestshippingmonth.qty,0) as qty,');
    sql.add('isnull(warehousein,0) as warehousein,isnull(warehouseout,0) as warehouseout,isnull(beforemonthqty,0) as beforemonthqty ,isnull(aftermonthqty,0) as aftermonthqty,isnull(cancelqty,0) as cancelqty,Complete from shoetest');
    sql.add('left join (select testno,sum(qty) as qty from shoetestshipping group by testno) shoetestshipping on shoetestshipping.testno=shoetest.testno');
    sql.add('left join (select testno,shipdate_final from shoetestshipping) shoetestshippingdate on shoetestshippingdate.testno=shoetest.testno');
    sql.add('left join (select testno,sum(qty) as warehousein from shoetestin group by testno) shoetestin on shoetestin.testno=shoetest.testno');
    sql.add('left join (select testno,sum(qty) as warehouseout from shoetestout group by testno) shoetestout on shoetestout.testno=shoetest.testno');
    sql.add('left join (select testno,sum(qty) as qty   from shoetestshipping');
    sql.Add(' where  (cancel<>''1'' or cancel is null) and Convert(smalldatetime,convert(varchar,shipdate_final,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    sql.add('group by testno)shoetestshippingmonth on shoetestshippingmonth.testno=shoetest.testno');

    sql.add('left join (select testno,sum(qty) as cancelqty   from shoetestshipping');
    sql.add('where cancel=''1'' ');
    sql.add('group by testno)shippingcancel on shippingcancel.testno=shoetest.testno');

    sql.add('left join (select testno,sum(qty) as beforemonthqty   from shoetestshipping');
    sql.add('where (cancel<>''1'' or cancel is null) and Convert(smalldatetime,convert(varchar,shipdate_final,111)) < '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+'''');
    sql.add('group by testno)shippingbeforemonth on shippingbeforemonth.testno=shoetest.testno');

    sql.add('left join (select testno,sum(qty) as aftermonthqty   from shoetestshipping');
    sql.add('where  (cancel<>''1'' or cancel is null) and Convert(smalldatetime,convert(varchar,shipdate_final,111)) > '''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');
    sql.add('group by testno)shippingaftermonth on shippingaftermonth.testno=shoetest.testno ');

    sql.add('left join (select testno,sum(qty) as qty from shoetest2 group by testno )shoetest2 on  shoetest2.testno=shoetest.testno');
    sql.add('left join (select ypdh,ypzl.xiexing,ypzl.shehao,kfxxzl.article as SKU from ypzl left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao)kfxxzl on kfxxzl.ypdh=shoetest.ypdh');
    sql.add('where (left(shoetest.Ypdh,4)=''LAIV'' or left(shoetest.Ypdh,4)=''BYIV'' )');
    if  edit1.text<>'' then     sql.add('and season='''+edit1.text+''' ');
    if  edit2.text<>'' then     sql.add('and stage='''+edit2.text+''' ');
    if  edit3.text<>'' then     sql.add('and shoetest.Ypdh='''+edit3.text+''' ');
    if  edit4.text<>'' then     sql.add('and article='''+edit4.text+''' ');

    sql.Add(' and Convert(smalldatetime,convert(varchar,Complete,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP3.Date)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',DTP4.Date)+'''');

    sql.add('group by shoetest.Testno,shoetest.Ypdh,article,kfxxzl.SKU,shoetest.siz,Season,shoetest.fd,beforemonthqty,aftermonthqty,');
    sql.add('Stage,Purpose,shoetest.shipdate,shoetest2.qty,shoetestshippingmonth.qty,shoetestshipping.qty,warehousein,warehouseout,cancelqty,Complete  ');
    sql.add('order by shipdate desc');
//    showmessage(sql.text);
    active:=true;
  end;
   query5.active:=true;
   dbgrideh1.FieldColumns['qty'].title.caption:='ShippingTeamQty';
end;

procedure TShipDateConfirm.Button6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query4.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        eclApp.Cells(1,2):='戳计';
        eclApp.Cells(1,4):='戳ソ计';
        eclApp.Cells(2,1):='STT';
        eclApp.Cells(2,2):='Developer';
        eclApp.Cells(2,3):='Stage';
        eclApp.Cells(2,4):='SampleOrder';
        eclApp.Cells(2,5):='SR#';
        eclApp.Cells(2,6):='Total Imported Qty(TB Qty)';
        eclApp.Cells(2,7):='Complete Date';
        eclApp.Cells(2,8):='Already Imported Qty';
        eclApp.Cells(2,9):=Formatdatetime('YYYY/MM/DD',DTP3.Date)+'~'+Formatdatetime('YYYY/MM/DD',DTP4.Date);
        query4.First;
        j:=3;
        i:=1;
        while   not   query4.Eof   do
          begin
          eclApp.Cells(j,1):=i;
          eclApp.Cells(j,2):=query4.FieldByName('fd').value;
          eclApp.Cells(j,3):=query4.FieldByName('Stage').value;
          eclApp.Cells(j,4):=query4.FieldByName('sampleorder').value;
          eclApp.Cells(j,5):=query4.FieldByName('sr').value;
          eclApp.Cells(j,6):=query4.FieldByName('total_qty').value;
          eclApp.Cells(j,7):=query4.FieldByName('Complete').value;
          eclApp.Cells(j,8):=query4.FieldByName('beforemonthqty').value;
          eclApp.Cells(j,9):=query4.FieldByName('qty').value;
          query4.Next;
          inc(j);
          inc(i);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TShipDateConfirm.BitBtn4Click(Sender: TObject);
begin
  if ComboBox2.Text = '' then begin
    showmessage('Please Keyin Brand!');
    exit;
  end;
  with Query6 do begin
    Active := false;
    SQL.Clear;
    SQL.Add('select ShipDate_final as ExFtyDate,shoetest.YPDH,shoetestshipping.Qty as QTY,shoetestshipping.UnitPrice,shoetestshipping.Amount,shoetestshipping.InvoiceNo,''FLOURISH THRIVE DEVELOPMENTS LIMITED TAIWAN BRANCH'' as Company, ');
    SQL.Add('shoetestshipping.InvoiceDate as InvoiceDate,ShipDate_final as TCPackingListSubmissionDate,DevtoSimis.BookingNO,kfxxzl.Article as SR,DevtoSimis.CustomsNo,DevtoSimis.SailingDate, ');
    SQL.Add('DevtoSimis.FCRNo_BillNo,(select kfdh from kfzl where kfjc = '''+ComboBox2.Text+''') as CUSTID,shoetestdetail.YWSM as Country,DevtoSimis.KindLoading,DevtoSimis.Forwarder,convert(varchar(7),ShipDate_final,121) as IODate,shoetestshipping.Qty as QTY1,DevtoSimis.USERID,DevtoSimis.USERDATE,');
    SQL.Add('DevtoSimis.YN,shoetestshipping.TestNo as TestNo,shoetest.Complete as Complete');
    SQL.Add('from shoetestshipping ');
    SQL.Add('left join shoetestdetail on shoetestdetail.yybh=shoetestshipping.country ');
    SQL.Add('left join shoetest on shoetest.TestNo = shoetestshipping.TestNo ');
    SQL.Add('left join YPZL on shoetest.YPDH = YPZL.YPDH ');
    SQL.Add('left join kfxxzl on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHao = kfxxzl.SheHao');
    SQL.Add('left join DevtoSimis on DevtoSimis.TestNo = shoetestshipping.TestNo and DevtoSimis.InvoiceNo = shoetestshipping.InvoiceNo');
    SQL.Add('where ShipDate_final between '''+formatdatetime('yyyy/MM/dd',DTP5.Date)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' and YPZL.GSDH = '''+main.Edit2.Text+'''');
    sql.Add('and kfxxzl.KHDH in (select kfdh from kfzl where kfjc = '''+ComboBox2.Text+''')');
    if Edit9.Text <> '' then
      SQL.Add('and shoetest.YPDH like '''+Edit9.Text+'%'' ');
    if Edit13.Text <> '' then
      SQL.Add('and shoetestshipping.InvoiceNo = '''+Edit13.Text+''' ');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TShipDateConfirm.BitBtn1Click(Sender: TObject);
begin
    if Query6.RecordCount = 0 then exit;
    with query6 do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;

    BitBtn1.Enabled := false;
    BitBtn4.Enabled := false;
    BitBtn6.Enabled := false;
    BitBtn13.Enabled := false;
    BitBtn2.Enabled := True;
    BitBtn3.Enabled := True;
    button9.Enabled:= True;

    DBGridEh6.Columns[7].ButtonStyle:=cbsellipsis;
    DBGridEh6.Columns[8].ButtonStyle:=cbsellipsis;
    DBGridEh6.Columns[9].ButtonStyle:=cbsellipsis;
    DBGridEh6.Columns[10].ButtonStyle:=cbsellipsis;
    DBGridEh6.Columns[11].ButtonStyle:=cbsellipsis;
    DBGridEh6.Columns[12].ButtonStyle:=cbsellipsis;
end;

procedure TShipDateConfirm.BitBtn2Click(Sender: TObject);
var i:integer;
begin
      query6.first;
      for i:=1 to query6.RecordCount do
      begin
         case query6.updatestatus of
           usmodified:
         begin
           if Query6.FieldByName('InvoiceNo').Value <> null then begin
             with temp do begin
               active := false;
               sql.Clear;
               sql.Add('Select * from DEVTOSIMIS where 1 = 1');
               sql.Add('and YPDH = '''+Query6.fieldbyname('YPDH').AsString+'''');
               sql.Add('and InvoiceNo = '''+Query6.fieldbyname('InvoiceNo').AsString+'''');
               sql.Add('and TestNo = '''+Query6.fieldbyname('TestNo').AsString+'''');
               active := true;
             end;
             if (query6.fieldbyname('YN').value='0') and (temp.RecordCount > 0) then
               UpdateSQL6.apply(ukdelete)
             else begin
               if temp.RecordCount > 0 then begin
                 with temp do begin
                   active := false;
                   sql.Clear;
                   sql.Add('Update DEVTOSIMIS set UnitPrice = '+Query6.fieldbyname('UnitPrice').AsString+',');
                   sql.Add('Amount = '+Query6.fieldbyname('Amount').AsString+',');
                   sql.Add('InvoiceNo = '''+Query6.fieldbyname('InvoiceNo').AsString+''',');
                   sql.Add('InvoiceDate = '''+formatdatetime('YYYY/MM/DD',Query6.fieldbyname('InvoiceDate').Value)+''',');
                   sql.Add('BookingNO = '''+Query6.fieldbyname('BookingNO').AsString+''',');
                   sql.Add('CustomsNo = '''+Query6.fieldbyname('CustomsNo').AsString+''',');
                   if Query6.fieldbyname('SailingDate').Value <> null then
                     sql.Add('SailingDate = '''+formatdatetime('YYYY/MM/DD',Query6.fieldbyname('SailingDate').Value)+''',')
                   else
                     sql.Add('SailingDate = null,');
                   sql.Add('FCRNo_BillNo = '''+Query6.fieldbyname('FCRNo_BillNo').AsString+''',');
                   sql.Add('KindLoading = '''+Query6.fieldbyname('KindLoading').AsString+''',');
                   sql.Add('Forwarder = '''+Query6.fieldbyname('Forwarder').AsString+'''');
                   sql.Add('where YPDH = '''+Query6.fieldbyname('YPDH').AsString+'''');
                   sql.Add('and InvoiceNo = '''+Query6.fieldbyname('InvoiceNo').AsString+'''');
                   sql.Add('and TestNo = '''+Query6.fieldbyname('TestNo').AsString+'''');
                   //funcobj.WriteErrorLog(sql.Text);
                   execsql;
                 end;
               end
               else begin
                 with temp do begin
                   active := false;
                   sql.Clear;
                   sql.Add('Insert into DEVTOSIMIS (ExFtyDate,YPDH,QTY,UnitPrice,Amount,');
                   sql.Add('InvoiceNo,Company,InvoiceDate,TCPackingListSubmissionDate,BookingNO,');
                   sql.Add('SR,CustomsNo,SailingDate,FCRNo_BillNo,CUSTID,');
                   sql.Add('Country,KindLoading,Forwarder,IODate,');
                   sql.Add('UserID,UserDate,YN,TestNo )');
                   sql.Add('Values ('''+formatdatetime('YYYY/MM/DD',Query6.fieldbyname('ExFtyDate').Value)+''',');
                   sql.Add(''''+Query6.fieldbyname('YPDH').AsString+''',');
                   sql.Add(''+Query6.fieldbyname('QTY').AsString+',');
                   sql.Add(''+Query6.fieldbyname('UnitPrice').AsString+',');
                   sql.Add(''+Query6.fieldbyname('Amount').AsString+',');
                   sql.Add(''''+Query6.fieldbyname('InvoiceNo').AsString+''',');
                   sql.Add(''''+Query6.fieldbyname('Company').AsString+''',');
                   sql.Add(''''+formatdatetime('YYYY/MM/DD',Query6.fieldbyname('InvoiceDate').Value)+''',');
                   sql.Add(''''+formatdatetime('YYYY/MM/DD',Query6.fieldbyname('TCPackingListSubmissionDate').Value)+''',');
                   sql.Add(''''+Query6.fieldbyname('BookingNO').AsString+''',');
                   sql.Add(''''+Query6.fieldbyname('SR').AsString+''',');
                   sql.Add(''''+Query6.fieldbyname('CustomsNo').AsString+''',');
                   if Query6.fieldbyname('SailingDate').Value <> null then
                     sql.Add(''''+formatdatetime('YYYY/MM/DD',Query6.fieldbyname('SailingDate').Value)+''',')
                   else
                     sql.Add('null,');
                   sql.Add(''''+Query6.fieldbyname('FCRNo_BillNo').AsString+''',');
                   sql.Add(''''+Query6.fieldbyname('CUSTID').AsString+''',');
                   sql.Add(''''+Query6.fieldbyname('Country').AsString+''',');
                   sql.Add(''''+Query6.fieldbyname('KindLoading').AsString+''',');
                   sql.Add(''''+Query6.fieldbyname('Forwarder').AsString+''',');
                   sql.Add(''''+formatdatetime('YYYY/MM',Query6.fieldbyname('ExFtyDate').Value)+''',');
                   sql.Add(''''+main.Edit1.Text+''',');
                   sql.Add(''''+formatdatetime('YYYY/MM/DD',now)+''',');
                   sql.Add('''1'',');
                   sql.Add(''''+Query6.fieldbyname('Testno').AsString+''')');
                   //funcobj.WriteErrorLog(sql.Text);
                   execsql;
                 end;
               end;
             end;
           end;
         end;
         end;
         query6.next;
      end;//for
  query6.active:=false;
  query6.cachedupdates:=false;
  query6.requestlive:=false;
  query6.active:=true;
  BitBtn4.Enabled := True;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := False;
  BitBtn3.Enabled := False;
  Button9.Enabled:= False;
end;

procedure TShipDateConfirm.Query6AfterOpen(DataSet: TDataSet);
begin
  BitBtn1.Enabled := True;
  BitBtn6.Enabled := True;
  BitBtn13.Enabled:= True;
  BitBtn2.Enabled := False;
  BitBtn3.Enabled := False;
end;

procedure TShipDateConfirm.BitBtn3Click(Sender: TObject);
begin
  query6.active:=false;
  query6.cachedupdates:=false;
  query6.requestlive:=false;
  query6.active:=true;
  BitBtn4.Enabled := True;
  BitBtn1.Enabled := True;
  BitBtn2.Enabled := False;
  BitBtn3.Enabled := False;
  Button9.Enabled := False;

  DBGridEh6.Columns[7].ButtonStyle:=cbsNone;
  DBGridEh6.Columns[8].ButtonStyle:=cbsNone;
  DBGridEh6.Columns[9].ButtonStyle:=cbsNone;
  DBGridEh6.Columns[10].ButtonStyle:=cbsNone;
  DBGridEh6.Columns[11].ButtonStyle:=cbsNone;
  DBGridEh6.Columns[12].ButtonStyle:=cbsNone;
end;

procedure TShipDateConfirm.DBGridEh3ColExit(Sender: TObject);
begin
{  if Query3.State = dsEdit then begin
    if (AnsiCompareText((Sender as TDBGrideh).SelectedField.FieldName ,'UnitPrice')=0) then
      Query3.FieldByName('Amount').Value := Query3.FieldByName('QTY').Value * Query3.FieldByName('UnitPrice').Value;
    if (AnsiCompareText((Sender as TDBGrideh).SelectedField.FieldName ,'ShipDate_final')=0) then
      Query3.FieldByName('InvoiceDate').Value := Query3.FieldByName('ShipDate_final').Value;
  end;  }
end;

procedure TShipDateConfirm.Button8Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  query6.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query6.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query6.fields[i].FieldName;
          end;

        query6.First;
        j:=2;
        while   not   query6.Eof   do
          begin
            for   i:=0   to  query6.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query6.Fields[i].Value;
            end;
          query6.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TShipDateConfirm.BitBtn10Click(Sender: TObject);
begin
  with Query7 do begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select ExFtyDate,YPDH,QTY,UnitPrice,Amount,InvoiceNo,Company,InvoiceDate,TCPackingListSubmissionDate,BookingNO,SR,CustomsNo,SailingDate,FCRNo_BillNo,CUSTID,Country,KindLoading,Forwarder,IODate,QTY1,UserID,UserDate,YN,TestNo');
    SQL.Add('From DevToSimis');
    SQL.Add('where ExFtyDate between '''+formatdatetime('yyyy/MM/dd',DTP7.Date)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',DTP8.Date)+''' ');
    if Edit10.Text <> '' then
      SQL.Add('and YPDH like '''+Edit10.Text+'%'' ');
    if Edit11.Text <> '' then
      SQL.Add('and CustomsNo like '''+Edit11.Text+'%'' ');
    if Edit12.Text <> '' then
      SQL.Add('and InvoiceNo like '''+Edit12.Text+'%'' ');
    Active := true;
  end;
  BitBtn10.Enabled := True;
  BitBtn7.Enabled := True;
  BitBtn8.Enabled := False;
  BitBtn9.Enabled := False;
end;

procedure TShipDateConfirm.BitBtn8Click(Sender: TObject);
var i:integer;
begin
      query7.first;
      for i:=1 to query7.RecordCount do
      begin
          case query7.updatestatus of
            usmodified:
           begin
            if query7.fieldbyname('YN').value='0'then
               UpdateSQL4.apply(ukdelete)
            else
               UpdateSQL4.apply(ukmodify);
            end;
         end;
         query7.next;
      end;//for
  query7.active:=false;
  query7.cachedupdates:=false;
  query7.requestlive:=false;
  query7.active:=true;
  BitBtn10.Enabled := True;
  BitBtn7.Enabled := True;
  BitBtn8.Enabled := False;
  BitBtn9.Enabled := False;
end;

procedure TShipDateConfirm.BitBtn9Click(Sender: TObject);
begin
  query7.active:=false;
  query7.cachedupdates:=false;
  query7.requestlive:=false;
  query7.active:=true;
  BitBtn10.Enabled := True;
  BitBtn7.Enabled := True;
  BitBtn8.Enabled := False;
  BitBtn9.Enabled := False;
end;

procedure TShipDateConfirm.BitBtn7Click(Sender: TObject);
begin
    if Query7.RecordCount = 0 then exit;
    with query7 do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;

    BitBtn10.Enabled := false;
    BitBtn7.Enabled := false;
    BitBtn8.Enabled := True;
    BitBtn9.Enabled := True;
end;

procedure TShipDateConfirm.Button7Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  query7.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query7.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query7.fields[i].FieldName;
          end;

        query7.First;
        j:=2;
        while   not   query7.Eof   do
          begin
            for   i:=0   to  query7.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query7.Fields[i].Value;
            end;
          query7.Next;
          inc(j);
          end;
      eclapp.columns.autofit;
      showmessage('Succeed');
       eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TShipDateConfirm.InvoiceChange(Sender: TObject);
var i: Integer;
      sheet:TTabSheet;
begin
 for i:=0 to Invoice.PageCount-1   do
      begin
         sheet:=Invoice.Pages[i];
         if sheet=Invoice.ActivePage   then
            sheet.Highlighted:=true
         else
            sheet.Highlighted:=false;
      end;
end;

procedure TShipDateConfirm.BitBtn12Click(Sender: TObject);
begin
  with query7 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
end;

procedure TShipDateConfirm.Query3BeforePost(DataSet: TDataSet);
begin
  if Query3.State in [dsInsert,dsEdit] then begin
    if Query3.FieldByName('UnitPrice').Value <> null then
      Query3.FieldByName('Amount').Value := Query3.FieldByName('UnitPrice').Value * Query3.FieldByName('QTY').Value
    else
      Query3.FieldByName('Amount').Value := null;
    {if Query3.FieldByName('ShipDate_final').Value <> null then
      Query3.FieldByName('InvoiceDate').Value := Query3.FieldByName('ShipDate_final').Value
    else
      Query3.FieldByName('InvoiceDate').Value := null }
  end;
  if Query3.State in [dsInsert] then
  begin
    if Query3.FieldByName('ShipDate_final').Value <> null then
      Query3.FieldByName('InvoiceDate').Value := Query3.FieldByName('ShipDate_final').Value
    else
      Query3.FieldByName('InvoiceDate').Value := null
  end;
end;

procedure TShipDateConfirm.DBGridEh6GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if query6.FieldByName('YN').value='0' then
  begin
    DBGridEh6.canvas.font.color:=clred;
  end;
end;

procedure TShipDateConfirm.BitBtn6Click(Sender: TObject);
begin
  with query6 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
    BitBtn1.Enabled := false;
    BitBtn4.Enabled := false;
    BitBtn2.Enabled := true;
    BitBtn3.Enabled := true;
  end;
end;

procedure TShipDateConfirm.DBGridEh6EditButtonClick(Sender: TObject);
var Style, InvoiceNo: String;
    i:integer;
begin
   if ((DBGridEh6.SelectedField.FieldName='BookingNO') or (DBGridEh6.SelectedField.FieldName='CustomsNo') or (DBGridEh6.SelectedField.FieldName='SailingDate') or  (DBGridEh6.SelectedField.FieldName='FCRNo_BillNo')
      or (DBGridEh6.SelectedField.FieldName='KindLoading') or (DBGridEh6.SelectedField.FieldName='Forwarder')) then
   begin
     if DBGridEh6.SelectedField.FieldName='BookingNO' then Style:=inputbox('Please Input BookingNo','BookingNo:','');
     if DBGridEh6.SelectedField.FieldName='CustomsNo' then Style:=inputbox('Please Input CustomsNo','CustomsNo:','');
     if DBGridEh6.SelectedField.FieldName='SailingDate' then Style:=inputbox('Please Input SailingDate','SailingDate:','');
     if DBGridEh6.SelectedField.FieldName='FCRNo_BillNo' then Style:=inputbox('Please Input FCRNo_BillNo','FCRNo_BillNo:','');
     if DBGridEh6.SelectedField.FieldName='KindLoading' then Style:=inputbox('Please Input KindLoading','KindLoading:','');
     if DBGridEh6.SelectedField.FieldName='Forwarder' then Style:=inputbox('Please Input Forwarder','Forwarder:','');
     if Style<>'' then
     begin
      with ShipDateConfirm.Query6 do
      begin
        //while not Eof do
        for i:=0 to ShipDateConfirm.Query6.RecordCount-1 do       //20171125 蠢传whileΘfor
        begin
          Edit;
          if InvoiceNo='' then InvoiceNo:=FieldByName('InvoiceNo').AsString;
          if InvoiceNo=FieldByName('InvoiceNo').AsString then
          begin
            if DBGridEh6.SelectedField.FieldName='BookingNO' then FieldByName('BookingNO').Value:=Style;
            if DBGridEh6.SelectedField.FieldName='CustomsNo' then FieldByName('CustomsNo').Value:=Style;
            if DBGridEh6.SelectedField.FieldName='SailingDate' then FieldByName('SailingDate').Value:=Style;
            if DBGridEh6.SelectedField.FieldName='FCRNo_BillNo' then FieldByName('FCRNo_BillNo').Value:=Style;
            if DBGridEh6.SelectedField.FieldName='KindLoading' then FieldByName('KindLoading').Value:=Style;
            if DBGridEh6.SelectedField.FieldName='Forwarder' then FieldByName('Forwarder').Value:=Style;
          end;
          Query6.Next;
        end;
      end;
     end;
   end;

end;

procedure TShipDateConfirm.DBGridEh6ColExit(Sender: TObject);
begin
  if Query6.FieldByName('Complete').Value = null then begin
    showmessage('The Sample Order is not Complete!');
    Query6.FieldByName('BookingNO').Value := null;
    Query6.FieldByName('CustomsNo').Value := null;
    Query6.FieldByName('SailingDate').Value := null;
    Query6.FieldByName('FCRNo_BillNo').Value := null;
    Query6.FieldByName('KindLoading').Value := null;
    Query6.FieldByName('Forwarder').Value := null;
  end;
end;

procedure TShipDateConfirm.Button9Click(Sender: TObject);
var
  ExcelApp: Variant;
  S_YPDH,S_InvoiceNo,S_TestNo: string;
  S_BookingNO,S_CustomsNo,S_SailingDate,S_FCRNo_BillNo,S_KindLoading,S_Forwarder:string;
  i,j:integer;
begin
  if OpenDialog.Execute then
  begin

    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;
    i:=2;
    S_YPDH:=ExcelApp.Cells[i,2].Value;
    S_InvoiceNo:=ExcelApp.Cells[i,6].Value;
    S_TestNo:=ExcelApp.Cells[i,25].Value;
    S_BookingNO:=ExcelApp.Cells[i,8].Value;
    S_CustomsNo:=ExcelApp.Cells[i,9].Value;
    S_SailingDate:=ExcelApp.Cells[i,10].Value;
    S_FCRNo_BillNo:=ExcelApp.Cells[i,11].Value;
    S_KindLoading:=ExcelApp.Cells[i,12].Value;
    S_Forwarder:=ExcelApp.Cells[i,13].Value;
    while ((trim(S_YPDH)<>'') and (trim(S_InvoiceNo)<>'') and (trim(S_TestNo)<>'') )  do
    begin
      Query6.First;
      for j:=0 to Query6.RecordCount-1 do
      begin
        if ((query6.FieldByName('YPDH').Value= S_YPDH) and (query6.FieldByName('InvoiceNo').Value= S_InvoiceNo) and (query6.FieldByName('TestNo').Value= S_TestNo)) then
        begin
          query6.Edit;
          query6.FieldByName('BookingNO').Value:=S_BookingNO;
          query6.FieldByName('CustomsNo').Value:=S_CustomsNo;
          query6.FieldByName('SailingDate').Value:=S_SailingDate;
          query6.FieldByName('FCRNo_BillNo').Value:=S_FCRNo_BillNo;
          query6.FieldByName('KindLoading').Value:=S_KindLoading;
          query6.FieldByName('Forwarder').Value:=S_Forwarder;
          query6.Post;
        end;
        query6.Next;
      end;
      i:=i+1;
      S_YPDH:=ExcelApp.Cells[i,2].Value;
      S_InvoiceNo:=ExcelApp.Cells[i,6].Value;
      S_TestNo:=ExcelApp.Cells[i,25].Value;
      S_BookingNO:=ExcelApp.Cells[i,8].Value;
      S_CustomsNo:=ExcelApp.Cells[i,9].Value;
      S_SailingDate:=ExcelApp.Cells[i,10].Value;
      S_FCRNo_BillNo:=ExcelApp.Cells[i,11].Value;
      S_KindLoading:=ExcelApp.Cells[i,12].Value;
      S_Forwarder:=ExcelApp.Cells[i,13].Value;
    end;
    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
  end;
  BitBtn2.Enabled:=true;
  BitBtn3.Enabled:=true;

end;

procedure TShipDateConfirm.BitBtn13Click(Sender: TObject);
var i:integer;
begin
  with query6 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    query6.First;
    for i:=1 to query6.RecordCount do
    begin
      edit;
      fieldbyname('YN').Value:='0';
      query6.next;
    end;
  end;
  BitBtn1.Enabled := false;
  BitBtn4.Enabled := false;
  BitBtn2.Enabled := true;
  BitBtn3.Enabled := true;
 
end;

procedure TShipDateConfirm.Button10Click(Sender: TObject);
var
  ExcelApp: Variant;
  S_YPDH,S_TestNo,S_CountryNo,S_InvoiceNo: string;
  S_Shipdate,S_Qty,S_UnitPrice,S_InvoiceDate:string;
  i,j:integer;
begin
  if query3.RecordCount>0 then
  begin
    showmessage('Data exists. Can not import the data');
    abort;
  end;
  if OpenDialog.Execute then
  begin
    ExcelApp:=CreateOleObject('Excel.Application');
    ExcelApp.WorkBooks.Open(OpenDialog.FileName);
    ExcelApp.WorkSheets[1].Activate;
    i:=2;
    S_YPDH:=ExcelApp.Cells[i,1].Value;
    S_CountryNo:=ExcelApp.Cells[i,3].Value;
    S_Shipdate:=ExcelApp.Cells[i,5].Value;
    S_Qty:=ExcelApp.Cells[i,6].Value;
    S_InvoiceNo:=ExcelApp.Cells[i,8].Value;
    S_UnitPrice:=ExcelApp.Cells[i,9].Value;
    S_InvoiceDate:=ExcelApp.Cells[i,11].Value;
    while (trim(S_YPDH)<>'') do
    begin
      if (query1.FieldByName('sampleorder').Value= S_YPDH)then
      begin
        query3.Insert;
        query3.FieldByName('TestNo').Value:=query1.FieldByName('TestNo').Value;
        query3.FieldByName('country').Value:=S_CountryNo;
        query3.FieldByName('ShipDate_final').Value:=S_Shipdate;
        query3.FieldByName('Qty').Value:=S_Qty;
        query3.FieldByName('InvoiceNo').Value:=S_InvoiceNo;
        query3.FieldByName('UnitPrice').Value:=S_UnitPrice;
        query3.FieldByName('InvoiceDate').Value:=S_InvoiceDate;
        query3.Post;
        i:=i+1;
        S_YPDH:=ExcelApp.Cells[i,1].Value;
        S_CountryNo:=ExcelApp.Cells[i,3].Value;
        S_Shipdate:=ExcelApp.Cells[i,5].Value;
        S_Qty:=ExcelApp.Cells[i,6].Value;
        S_InvoiceNo:=ExcelApp.Cells[i,8].Value;
        S_UnitPrice:=ExcelApp.Cells[i,9].Value;
        S_InvoiceDate:=ExcelApp.Cells[i,11].Value;
      end else
      begin
        showmessage('Data incorrect');
        abort;
      end;
    end;
    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
  end;
  msave.Enabled:=true;
  mcancel.Enabled:=true;
  Button10.Enabled:=false;
end;

procedure TShipDateConfirm.btnAnnexClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    INV,INV_NO,INV_Month,INV_Year, word,amount_word : string ;
begin
  if edit13.Text='' then
  begin
    showmessage('Pls key in Invoice No');
    abort;
  end;
  if ComboBox2.Text = '' then begin
    showmessage('Please Keyin Brand!');
    exit;
  end;
  INV:='';
  with qrytemp do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select ShipDate_final as ExFtyDate,shoetestshipping.InvoiceNo,shoetestshipping.InvoiceDate as InvoiceDate, sum(shoetestshipping.Qty) as QTY,sum(shoetestshipping.Amount) as Amount ');
    SQL.Add('       ,shoetestdetail.YWSM as Country	,ShipAddress.Address,left(DATENAME(month, shoetestshipping.InvoiceDate),3) INV_Month, YEAR(shoetestshipping.InvoiceDate) as INV_Year,right(YEAR(shoetestshipping.InvoiceDate),2) as Year  ');
    SQL.Add('from shoetestshipping ');
    SQL.Add('left join shoetestdetail on shoetestdetail.yybh=shoetestshipping.country ');
    SQL.Add('left join shoetest on shoetest.TestNo = shoetestshipping.TestNo ');
    SQL.Add('left join YPZL on shoetest.YPDH = YPZL.YPDH ');
    SQL.Add('left join kfxxzl on YPZL.XieXing = kfxxzl.XieXing and YPZL.SheHao = kfxxzl.SheHao');
    SQL.Add('left join DevtoSimis on DevtoSimis.TestNo = shoetestshipping.TestNo and DevtoSimis.InvoiceNo = shoetestshipping.InvoiceNo');
    SQL.Add('left join ShipAddress on shoetestdetail.yybh=ShipAddress.ID ');
    SQL.Add('where ShipDate_final between '''+formatdatetime('yyyy/MM/dd',DTP5.Date)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',DTP6.Date)+''' and YPZL.GSDH = '''+main.Edit2.Text+'''');
    sql.Add('and kfxxzl.KHDH in (select kfdh from kfzl where kfjc = '''+ComboBox2.Text+''')');
    sql.Add('and shoetestshipping.InvoiceNo = '''+Edit13.Text+''' ');
    sql.Add('group by ShipDate_final,shoetestshipping.InvoiceNo,shoetestshipping.InvoiceDate,shoetestdetail.YWSM,ShipAddress.Address,left(DATENAME(month, shoetestshipping.InvoiceDate),3),YEAR(shoetestshipping.InvoiceDate),right(YEAR(shoetestshipping.InvoiceDate),2)  ');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
  INV:= qrytemp.fieldbyname('InvoiceNo').AsString;
  word:= ConvertToWords(qrytemp.FieldByName('Amount').AsFloat,true);
  amount_word:=upperCase(leftstr(word,1)) + copy(word,2,length(word)-1);

  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Shipping_SN12_Annex.xls'),Pchar(AppDir+'Additional\Shipping_SN12_Annex.xls'),false);
  if FileExists(AppDir+'Additional\Shipping_SN12_Annex.xls') then
  begin
     if  qrytemp.active  then
     begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Shipping_SN12_Annex.xls');
        eclApp.Cells(4,7):=qrytemp.FieldByName('InvoiceDate').Value;
        //eclApp.Cells(3,1):=StringReplace(eclApp.Cells[3,1],'[INV]',Copy(Query1.fieldbyname('INV_NO').AsString,1,Pos('/',Query1.fieldbyname('INV_NO').AsString)-1),[rfReplaceAll, rfIgnoreCase]);
        eclApp.Cells(3,1):=StringReplace(eclApp.Cells[3,1],'[INV]',INV,[rfReplaceAll, rfIgnoreCase]);
        eclApp.Cells(3,1):=StringReplace(eclApp.Cells[3,1],'@','TX-'+ qrytemp.fieldbyname('Year').Value,[rfReplaceAll, rfIgnoreCase]);
        eclApp.Cells(30,3) :=INV;
        eclApp.Cells(31,3) :=qrytemp.fieldbyname('QTY').Value;
        eclApp.Cells(31,4) :='pairs, which will be exported to '+qrytemp.fieldbyname('Country').Value;
        eclApp.Cells(32,3) :=qrytemp.fieldbyname('Amount').Value;
        eclApp.Cells(33,3) :=amount_word;
        eclApp.Cells(35,2) :='- F.C.A HO CHI MINH CITY';
        eclApp.Cells(36,3) :=qrytemp.fieldbyname('INV_Month').AsString+'-'+ qrytemp.fieldbyname('INV_Year').AsString;
        eclApp.Cells(37,4) :=qrytemp.FieldByName('Address').AsString;
        showmessage('Succeed');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
     end;
  end;
end;

end.

