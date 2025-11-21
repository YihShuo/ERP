unit PurSampleInvoice1;

interface
                                                
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,ShellAPI,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls,  Mask, ComCtrls,DBGridEhImpExp,
  Buttons, ExtCtrls, Menus, ComObj, GridsEh, DBGridEh, ExcelXP;

type
  TPurSampleInvoice = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    PC1: TPageControl;
    TS3: TTabSheet;
    Query1: TQuery;
    CGMas: TQuery;
    CGMasZSBH: TStringField;
    CGMasZSYWJC: TStringField;
    CGMasUSERDATE: TDateTimeField;
    CGMasUSERID: TStringField;
    CGMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    CGDet: TQuery;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetQty: TCurrencyField;
    CGDetMemo: TStringField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    CGDetYN: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    CGMasGSBH: TStringField;
    BDelRec: TQuery;
    CGMasMEMO: TStringField;
    CGDetREMARK: TStringField;
    qry1: TQuery;
    CGMasCINO: TStringField;
    CGMasCIDate: TDateTimeField;
    CGMasCILX: TStringField;
    CGMasInvoice: TStringField;
    CGDetCINO: TStringField;
    CGDetUSPrice: TCurrencyField;
    CGDetVNPrice: TCurrencyField;
    CGDetACCUS: TCurrencyField;
    CGDetACCVN: TCurrencyField;
    CGDetXqQty: TCurrencyField;
    CGS: TQuery;
    CGSCGNO: TStringField;
    CGSCLBH: TStringField;
    CGSZLBH: TStringField;
    CGSXXCC: TStringField;
    CGSQty: TCurrencyField;
    CGSCLSL: TCurrencyField;
    CGSUSERDate: TDateTimeField;
    CGSUSERID: TStringField;
    CGSYN: TStringField;
    CGSYQDate: TDateTimeField;
    CGSCFMDate: TDateTimeField;
    strngfldCGSXIEMING: TStringField;
    strngfldCGSStage: TStringField;
    DS5: TDataSource;
    CGDetPMARK: TIntegerField;
    CGMasBillNO: TStringField;
    CGMastransport: TStringField;
    CGMasCustom: TStringField;
    CGMasETA: TDateTimeField;
    DBGrid3: TDBGridEh;
    TS5: TTabSheet;
    DBGridEh1: TDBGridEh;
    Qry_All: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    DateTimeField2: TDateTimeField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    DateTimeField3: TDateTimeField;
    DS6: TDataSource;
    Qry_AllCGNO: TStringField;
    Qry_AllCLBH: TStringField;
    Qry_AllYWPM: TStringField;
    Qry_AllDWBH: TStringField;
    Qry_AllQty: TCurrencyField;
    Qry_AllPMARK: TIntegerField;
    Panel8: TPanel;
    BitBtn13: TBitBtn;
    SaveDialog1: TSaveDialog;
    ckbsel: TCheckBox;
    TabSheet1: TTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGridEh2: TDBGridEh;
    Qry_Check: TQuery;
    DS_Check: TDataSource;
    Qry_CheckInvoice: TStringField;
    Qry_CheckCINO: TStringField;
    Qry_CheckZSYWJC: TStringField;
    Label15: TLabel;
    Lbl_Warnning: TLabel;
    Timer1: TTimer;
    Qry_CheckUSERID: TStringField;
    Panel11: TPanel;
    Panel12: TPanel;
    Label16: TLabel;
    DBGridEh3: TDBGridEh;
    DS_Check2: TDataSource;
    Qry_Check2: TQuery;
    Qry_Check2CINO: TStringField;
    BBTT1: TBitBtn;
    Label1: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    Button1: TButton;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGridEh7: TDBGridEh;
    DBGrid4: TDBGridEh;
    Splitter1: TSplitter;
    Panel6: TPanel;
    Label19: TLabel;
    Label20: TLabel;
    BD2: TBitBtn;
    BD3: TBitBtn;
    BD4: TBitBtn;
    BD5: TBitBtn;
    BD6: TBitBtn;
    BD7: TBitBtn;
    BDT5: TBitBtn;
    BitBtn1: TBitBtn;
    BDT6: TBitBtn;
    DBEdit13: TDBEdit;
    DBMemo1: TDBMemo;
    Splitter2: TSplitter;
    CGDethgbh: TStringField;
    CGDethgpm: TStringField;
    Qry_Allhgbh: TStringField;
    Qry_Allhgpm: TStringField;
    Invoive_Cust: TLabel;
    Edit5: TEdit;
    CGMasInvoice_Customs: TStringField;
    CGDetInvoice_Customs: TStringField;
    BBTT3: TBitBtn;
    CGSFD: TStringField;
    Qry_AllQty_1: TCurrencyField;
    Qry_Allarticle: TStringField;
    Qry_Allkfjd: TStringField;
    Qry_Allfd: TStringField;
    CGSArticle: TStringField;
    CGDetPurReceiveDate: TDateTimeField;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Memo1: TMemo;
    CGMasW_ETA: TDateTimeField;
    CGMasW_USERDate: TDateTimeField;
    CGMasW_USERID: TStringField;
    CGMasShipmentPort: TStringField;
    CGMasArrivePort: TDateTimeField;
    CGMasFreight_fee_VND: TCurrencyField;
    CGMasFreight_fee_USD: TCurrencyField;
    CGDetBJNO: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetBILLNO: TStringField;
    CGDetWAY: TStringField;
    CGDetMEMO1: TStringField;
    CGDetDGDATE: TDateTimeField;
    CGDetETA: TDateTimeField;
    CGDetOther_fee_VND: TCurrencyField;
    CGDetOther_fee_USD: TCurrencyField;
    CGSOSsize: TStringField;
    BitBtn2: TBitBtn;
    HangTag: TQuery;
    DataSource1: TDataSource;
    CGSDelQty: TCurrencyField;
    CGSProductionLocation: TStringField;
    CGSLAI: TStringField;
    CGSYSSM: TStringField;
    Qry_AllYSSM: TStringField;
    Label2: TLabel;
    Edit6: TEdit;
    Label30: TLabel;
    ComboBox14: TComboBox;
    below: TButton;
    Label6: TLabel;
    DTP3: TDateTimePicker;
    Label7: TLabel;
    ComboBox1: TComboBox;
    CGDetMatRemark: TStringField;
    CGDetFlexCode: TStringField;
    CGDetMOQ: TStringField;
    CGDetDeyeing_fee: TStringField;
    CGMasTotalAmount: TCurrencyField;
    Button2: TButton;
    CGMasInvoiceToWarehouseDate: TDateTimeField;
    CGDetRKdate: TDateTimeField;
    DTMReceivedDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BD2Click(Sender: TObject);
    procedure BD3Click(Sender: TObject);
    procedure BD4Click(Sender: TObject);
    procedure BD5Click(Sender: TObject);
    procedure BD6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BD7Click(Sender: TObject);
    procedure CGDetAfterOpen(DataSet: TDataSet);
    procedure BBTT1Click(Sender: TObject);
    procedure CGMasAfterOpen(DataSet: TDataSet);
    procedure PC1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure BDT5Click(Sender: TObject);
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid3EditButtonClick(Sender: TObject);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn13Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Qry_CheckAfterOpen(DataSet: TDataSet);
    procedure Qry_Check2AfterOpen(DataSet: TDataSet);
    procedure BBTT3Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure belowClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public   
    TagDate: string;
    { Public declarations }
  end;

var
  PurSampleInvoice: TPurSampleInvoice;
  NDate: TDate;

implementation

uses main1, PurSampleInvoice_ZS1, PurSampleInvoice_IM1, PurSampleInvoice_Print1,
     PurSampleInvoice_PrintALL1, FunUnit, HangTagDate1, Barcode1281;

{$R *.dfm}

procedure TPurSampleInvoice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    PC1.ActivePage:=TS3;
    action:=canone;
  end
  else
    begin
      if BD5.enabled then
        begin
          messagedlg('You have to save data Report first.',mtwarning,[mbyes],0);
          PC1.ActivePage:=TS3;
          action:=canone;
        end
          else
            begin
              action:=Cafree;
            end;
    end;
end;

procedure TPurSampleInvoice.Button1Click(Sender: TObject);
begin

  with CGMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZLInvoice.cino,CGZLInvoice.gsbh,CGZLInvoice.zsbh,CGZLInvoice.cidate,CGZLInvoice.userdate,CGZLInvoice.userid,CGZLInvoice.cilx,');
    sql.add('CGZLInvoice.YN,CGZLInvoice.Invoice,CGZLInvoice.Memo,CGZLInvoice.BillNO,CGZLInvoice.Transport,case when CGZLInvoice.Custom=''XT'' then '''' else CGZLInvoice.Custom end Custom,CGZLInvoice.ETA,');
    sql.add('CGZLInvoice.W_ETA,CGZLInvoice.W_USERDATE,CGZLInvoice.W_USERID,CGZLInvoice.shipmentPort,CGZLInvoice.ArrivePort,CGZLInvoice.Freight_fee_VND,CGZLInvoice.Freight_fee_USD,ZSZL.ZSYWJC');
    sql.add(',(select max(CGZLInvoiceS.Invoice_Customs) DD from CGZLInvoiceS where CGZLInvoiceS.CINO=CGZLInvoice.CINO group by cino) as Invoice_Customs,TotalAmount, InvoiceToWarehouseDate');
    sql.add('from CGZLInvoice');
    sql.add('left join ZSZL on CGZLInvoice.ZSBH=ZSZL.ZSDH');
    sql.add('where CGZLInvoice.CILX=''6''  ');
    if edit1.Text<>'' then
       sql.add('and CGZLInvoice.Invoice like '+''''+edit1.Text+'%'+'''');
    if Edit6.Text<>'' then
       sql.add('and CGZLInvoice.BillNO like '+''''+Edit6.Text+'%'+'''');
    if edit3.Text<>'' then
       sql.add('and ZSZL.ZSYWJC like '+''''+'%'+edit3.Text+'%'+'''');
    if ComboBox1.Text <> '' then
       sql.Add('and CGZLInvoice.Transport like '''+ComboBox1.Text+'%''');
    if edit2.Text<>'' then
       sql.add('and exists (select cino from CGZLInvoiceS where CGZLInvoiceS.CINO=CGZLInvoice.CINO and CGZLInvoiceS.CGNO='+''''+edit2.Text+''''+')');
    if edit4.Text<>'' then
       sql.add('and exists (select cino from CGZLInvoiceS where CGZLInvoiceS.CINO=CGZLInvoice.CINO and CGZLInvoiceS.CLBH='+''''+edit4.Text+''''+')');
    if edit5.Text<>'' then
       sql.add('and exists (select Invoice_Customs from CGZLInvoiceS where CGZLInvoiceS.CINO=CGZLInvoice.CINO and Invoice_Customs='+''''+edit5.Text+''''+')');
    sql.add('and convert(smalldatetime,convert(varchar,CGZLInvoice.USERDATE,111))  between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZLInvoice.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
    begin
        sql.Add('and CGZLInvoice.USERID='+''''+main.Edit1.Text+'''');
    end;
    sql.add('ORDER BY CGZLInvoice.CINO');
    active:=true;
    //funcobj.WriteErrorLog(sql.Text);
   //showmessage(SQL.Text);
  end;

  with Qry_All do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZLInvoice.* ,ZSZL.ZSYWJC ,CGZLInvoiceS.CGNO,CGZLInvoiceS.CLBH,CLZL.YWPM,CLZL.DWBH,CGZLInvoiceS.Qty,CGZLSS.Qty,kfxxzl.article,ypzl.kfjd,kfxxzl.fd,CGZLInvoiceS.PMARK,clzl.hgbh,clzl.hgpm,kfxxzl.YSSM ');
    sql.add('from CGZLInvoice');
    sql.add('left join ZSZL on CGZLInvoice.ZSBH=ZSZL.ZSDH');
    sql.add('left join CGZLInvoiceS on CGZLInvoiceS.CINO=CGZLInvoice.CINO');
    sql.add('left join CLZL on CLZL.CLDH=CGZLInvoiceS.CLBH');
    sql.add('left join CGZLSS on CGZLInvoiceS.CGNO=CGZLSS.CGNO and CGZLInvoiceS.clbh=CGZLSS.clbh');
    sql.add('Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH ');
    sql.add('Left join KFXXZL  on KFXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXing=YPZL.XieXing');
    sql.add('where CGZLInvoice.CILX=''6''  ');
    if edit1.Text<>'' then
       sql.add('and CGZLInvoice.Invoice like '+''''+edit1.Text+'%'+'''');
    if ComboBox14.Text <> '' then
       sql.Add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
    if edit3.Text<>'' then
       sql.add('and ZSZL.ZSYWJC like '+''''+'%'+edit3.Text+'%'+'''');
    if edit2.Text<>'' then
       sql.add('and CGZLInvoiceS.CGNO='+''''+edit2.Text+'''');
    if edit4.Text<>'' then
       sql.add('and CGZLInvoiceS.CLBH='+''''+edit4.Text+'''');

    //----------------add more Thoai May.06.2013----------------------------

    if edit5.Text<>'' then
       sql.add('and CGZLInvoiceS.Invoice_Customs='+''''+edit5.Text+'''');

    //----------------------------------------------------------------------

    sql.add('and convert(smalldatetime,convert(varchar,CGZLInvoice.USERDATE,111))  between ');
    sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.add('and CGZLInvoice.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
      begin
        sql.Add('and CGZLInvoice.USERID='+''''+main.Edit1.Text+'''');
      end;
    sql.add('order by CGZLInvoice.Invoice,CGZLInvoiceS.CGNO,CGZLInvoiceS.CLBH DESC');
    active:=true;
    //memo2.Lines:=sql;
  end;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  //check.Checked:=true;
  check.Color:=clBtnFace;
  CGDet.Active:=true;
  CGS.Active:=true;
  //hangtag.Active:=true;
  Timer1.Enabled:=false;
  Qry_Check.Active:=false;
  Qry_Check.Active:=true;
  Qry_Check2.Active:=false;
  Qry_Check2.Active:=true;

end;


procedure TPurSampleInvoice.BB2Click(Sender: TObject);
begin
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  dbgrid3.Columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid3.Columns[5].ButtonStyle:=cbsAuto;
  dbgrid3.Columns[7].ButtonStyle:=cbsAuto;
  dbgrid3.Columns[8].ButtonStyle:=cbsAuto;

  Panel6.Enabled:=false;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  Button1.Enabled:=false;

  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;

end;

procedure TPurSampleInvoice.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  PC1.ActivePage:=TS3;
  DTP1.Date:=date-3;
  DTP2.date:=date;

  if main.Edit2.Text = 'SKX' then
  begin
    Label30.Visible := true;
    ComboBox14.Visible := true;
  end;

  if main.Edit2.Text ='CDC' then
  begin
     DBGrid3.FieldColumns['Invoice_Customs'].visible:=false;
     DBGrid4.FieldColumns['hgbh'].visible:=false;
     DBGrid4.FieldColumns['hgpm'].visible:=false;
     DBGrid4.FieldColumns['Invoice_Customs'].visible:=false;
  end;
  
end;

procedure TPurSampleInvoice.BB3Click(Sender: TObject);
begin

  if CGDet.recordcount=0 then
  begin
    with CGMas do
      begin
        if fieldbyname('USERID').value=main.edit1.Text then
          begin
            requestlive:=true;
            cachedupdates:=true;
            edit;
            fieldbyname('YN').Value:='0';
          end
          else
            begin
              showmessage('It is not yours,can not delete.');
            end;
      end;
  end
    else
      begin
        showmessage('Pls delete the Deliver Detail first.')
      end;
  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
//dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
end;

procedure TPurSampleInvoice.BB4Click(Sender: TObject);
begin
  with CGMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Panel6.Enabled:=false;
  BB2.Enabled:=false;
  BB3.Enabled:=false;
  BB4.Enabled:=false;
  Button1.Enabled:=false;

  BBTT1.Visible:=true;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  dbgrid3.columns[1].ButtonStyle:=cbsEllipsis;
  dbgrid3.Columns[5].ButtonStyle:=cbsAuto;
  dbgrid3.Columns[7].ButtonStyle:=cbsAuto;
  dbgrid3.Columns[8].ButtonStyle:=cbsAuto;
end;


procedure TPurSampleInvoice.BB5Click(Sender: TObject);
var y,m,a:string;
i,item:integer;
VND,USD: real;
begin
  VND := 0;
  USD := 0;
  with query1 do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select year(getdate()) as FY,month(getdate()) as FM,getdate() as NDate ');
    active:=true;
    y:=fieldbyname('FY').asstring;
    m:=fieldbyname('FM').asstring;
    NDate:=fieldbyname('Ndate').Value;
    active:=false;
  end;
  if length(m)<2 then
  m:='0'+m;

  try
    CGMas.first;
    for i:=1 to CGMas.RecordCount do
      begin
        case CGMas.updatestatus of
          usinserted:
            begin
              if (CGMas.fieldbyname('ZSBH').isnull) or (CGMas.fieldbyname('Invoice').isnull) then
                begin
                  CGMas.delete;
                end
                 else
                   begin
                     with query1 do    //計算領料單流水號
                       begin
                         active:=false;
                         sql.Clear;
                         sql.Add('select CINO from CGZLInvoice where CINO like '+''''+y+m+'%'+'''');
                         sql.add('order by CINO');
                         active:=true;
                         if recordcount >0 then
                           begin
                             last;
                             a:=fieldbyname('CINO').AsString;
                             a:=copy(a,7,5);
                             a:=inttostr(strtoint(a)+1);
                             while length(a)<5 do
                               begin
                                 a:='0'+a;
                               end;
                           end
                             else
                               begin
                                 a:='00001';
                               end;
                         a :=y+m+a;
                         active:=false;
                       end;
                     CGMas.edit;
                     CGMas.fieldbyname('CINO').Value:=a;
                     CGMas.fieldbyname('GSBH').Value:=main.Edit2.text;
                     if CGMas.FieldByName('ETA').IsNull=true then
                       CGMas.fieldbyname('ETA').Value:=Date();
                     CGMas.fieldbyname('CILX').Value:='6';
                     CGMas.FieldByName('userID').Value:=main.edit1.text;
                     CGMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     CGMas.FieldByName('CIDate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                     CGMas.FieldByName('YN').Value:='1';
                     upMas.apply(ukinsert);
                   end;
            end;
          usmodified:
             begin
              if CGMas.fieldbyname('YN').value='0'then
                begin
                  with BDelRec do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.add('insert into BDelRec ');
                    sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                    sql.add('values ('+''''+'CGZLInvoice'+''''+','+''''+CGMas.fieldbyname('CINO').Value+'''');
                    sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
                    sql.add(''''+main.Edit1.Text+''''+',getdate())');
                    execsql;
                    active:=false;
                  end;
                  upMas.apply(ukdelete);
                end
                else
                  begin
                    if (NDate-CGMas.FieldByName('USERDATE').value)<365  then
                      begin
                        CGMas.edit;
                        CGMas.FieldByName('userID').Value:=main.edit1.text;
                        CGMas.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                        if (CGMas.FieldByName('InvoiceToWarehouseDate').IsNull) or (CGMas.FieldByName('InvoiceToWarehouseDate').OldValue=CGMas.FieldByName('InvoiceToWarehouseDate').Value) then
                          upMas.apply(ukmodify)
                        else
                        begin
                          with BDelRec do
                          begin
                            active:=false;
                            sql.Clear;
                            sql.add('insert into BDelRec ');
                            sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                            sql.add('values ('+''''+'CGZLInvoice'+''''+','+''''+CGMas.fieldbyname('CINO').Value+'''');
                            if CGMas.fieldbyname('InvoiceToWarehouseDate').OldValue = Null then
                              sql.add(','+''''+' '+''''+','+''''+CGMas.fieldbyname('USERID').Value+''''+',')
                            else
                              sql.add(','''+DatetoStr(CGMas.fieldbyname('InvoiceToWarehouseDate').OldValue)+'***'+DatetoStr(CGMas.fieldbyname('InvoiceToWarehouseDate').Value)+''','+''''+CGMas.fieldbyname('USERID').Value+''''+',');
                            sql.add(''''+main.Edit1.Text+''''+',getdate())');
                            execsql;
                            active:=false;
                          end;
                          //
                          with Query1 do
                          begin
                            active:=false;
                            sql.Clear;
                            sql.Add('update CGZLInvoice set InvoiceToWarehouseDate='''+CGMas.fieldbyname('InvoiceToWarehouseDate').AsString+''' where CINO ='''+CGMas.fieldbyname('CINO').AsString+''' ');
                            ExecSQL;
                            active:=false;
                          end;
                        end;
                      end else
                      begin
                        showmessage('Date>60 , can not modify.');
                      end;
                  end;
             end;
        end;
       CGMas.next;
      end;
      CGMas.active:=false;
      CGMas.cachedupdates:=false;
      CGMas.requestlive:=false;
      CGMas.active:=true;
      Panel6.Enabled:=true;
      BB2.Enabled:=true;
      BB3.Enabled:=true;
      BB4.Enabled:=true;
      Button1.Enabled:=true;

      bb5.enabled:=false;
      bb6.enabled:=false;
      BBTT1.Visible:=false;
      DBGrid3.columns[1].ButtonStyle:=cbsnone;
      DBGrid3.columns[5].ButtonStyle:=cbsnone;
      DBGrid3.columns[7].ButtonStyle:=cbsnone;
      DBGrid3.columns[8].ButtonStyle:=cbsnone;

      item := StrToInt(DBGrid4.GetFooterValue(0,DBGrid4.Columns[0]));;
      if item>0 then
      begin
        query1.Active:=false;
        query1.sql.Clear;
        if (CGMas.FieldByName('Freight_fee_USD').AsFloat <> null) and (CGMas.FieldByName('Freight_fee_USD').AsFloat <> 0) then
          USD:= CGMas.FieldByName('Freight_fee_USD').AsFloat;
        if (CGMas.FieldByName('Freight_fee_VND').AsFloat <> null) and (CGMas.FieldByName('Freight_fee_VND').AsFloat <> 0) then
          VND:= CGMas.FieldByName('Freight_fee_VND').AsFloat;
        query1.SQL.Text := 'Update CGZLInvoices set Other_fee_VND = cast(round('+floattostr(VND/item)+',2) as numeric(10,2)) ,Other_fee_USD = cast(round('+floattostr(USD/item)+',2) as numeric(10,2)) where CINO = '''+CGMas.FieldByName('CINO').Value+''' ';
        query1.ExecSQL;
      end;
    button1.Click;

  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
end;


end;

procedure TPurSampleInvoice.BB6Click(Sender: TObject);
begin
  with CGMas do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Panel6.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  Button1.Enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  BBTT1.Visible:=false;
  DBGrid3.columns[1].ButtonStyle:=cbsnone;
  DBGrid3.columns[5].ButtonStyle:=cbsnone;
  DBGrid3.columns[7].ButtonStyle:=cbsnone;
  DBGrid3.columns[8].ButtonStyle:=cbsnone;

end;

procedure TPurSampleInvoice.BD2Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    abort;
  end;

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
  end;
  DBGrid3.Enabled:=false;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BBTT3.Visible:=true;
  below.Visible:=true;
end;

procedure TPurSampleInvoice.BD3Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    abort;
  end;

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;

  BD5.Enabled:=true;
  BD6.Enabled:=true;
  BBTT3.Visible:=true;
  below.Visible:=true;

end;

procedure TPurSampleInvoice.BD4Click(Sender: TObject);
begin
  if CGMas.RequestLive then
  begin
    showmessage('Pls save Master data first.');
    PC1.ActivePage:=TS3;
    abort;
  end;

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  DBGrid3.Enabled:=false;
  BD2.Enabled:=false;
  BD3.Enabled:=false;
  BD4.Enabled:=false;

  BBTT3.Visible:=true;
  below.Visible:=true;
  BD5.Enabled:=true;
  BD6.Enabled:=true;
  dbgrid4.columns[0].ReadOnly:=true;

end;

procedure TPurSampleInvoice.BD5Click(Sender: TObject);
var i:integer;
    J:Variant;
begin
J:=' ';
  with CGDet do
    begin
      first;
      while not CGDet.Eof do
        begin
          if CGDet.FieldByName('Qty').IsNull  then
            begin
              edit;
              CGDet.FieldByName('Qty').value:=0;
            end;
//          if (CGDet.FieldByName('USPrice').IsNull and CGDet.FieldByName('VNPrice').IsNull) then
//            begin
//              showmessage('The Price can not be empty.');
//              abort;
//            end;
//          if (not CGDet.FieldByName('USPrice').IsNull) and (not CGDet.FieldByName('VNPrice').IsNull) then
//            begin
//              showmessage('Can not have two price.');
//              abort;
//            end;
          next;
        end;
    end;

  try
    CGDet.first;
      for i:=1 to CGDet.RecordCount do
        begin
          case CGDet.updatestatus of
            usinserted:
              begin
                if CGDet.fieldbyname('CLBH').isnull then
                  begin
                    CGDet.delete;
                  end
                   else
                     begin
                       CGDet.edit;
                       CGDet.fieldbyname('CINO').Value:=CGMas.fieldbyname('CINO').Value;
                       CGDet.FieldByName('userID').Value:=main.edit1.text;
                       CGDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                       //CGDet.FieldByName('CFMdate').Value:=CGDet.FieldByName('YQdate').Value ;
                       CGDet.FieldByName('YN').Value:='1';
                       upDet.apply(ukinsert);
                     end;
              end;
            usmodified:
               begin
                j:=CGDet.fieldbyname('CLBH').Value;
                if CGDet.fieldbyname('YN').value='0'then
                  begin
                    with BDelRec do
                    begin
                      active:=false;
                      sql.Clear;
                      sql.add('insert into BDelRec ');
                      sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                      sql.add('values ('+''''+'CGZLInvoiceS'+''''+','+''''+CGDet.fieldbyname('CINO').Value+'''');
                      sql.add(','+''''+CGDet.fieldbyname('CGNO').Value+'***'+CGDet.fieldbyname('CLBH').Value+''''+','+''''+CGDet.fieldbyname('USERID').Value+''''+',');
                      sql.add(''''+main.Edit1.Text+''''+',getdate())');
                      execsql;
                      active:=false;
                    end;
                    UpDet.apply(ukdelete);
                  end
                  else
                    begin
                      CGDet.edit;
                      //CGDet.FieldByName('CFMdate').Value:=CGDet.FieldByName('YQdate').Value ;
                      CGDet.FieldByName('userID').Value:=main.edit1.text;
                      CGDet.FieldByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
                      upDet.apply(ukmodify);
                    end;
                end;

          end;
         CGDet.next;
        end;
  CGDet.active:=false;
  CGDet.cachedupdates:=false;
  CGDet.requestlive:=false;
  CGDet.active:=true;
  DBGrid3.Enabled:=true;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;

  BD5.Enabled:=false;
  BD6.Enabled:=false;
  BBTT3.Visible:=false;
  below.Visible:=false;
  dbgrid4.columns[0].ReadOnly:=false;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;

IF  J<>' ' THEN   CGDet.Locate('CLBH',J,[]) ;


end;

procedure TPurSampleInvoice.BD6Click(Sender: TObject);
begin
with CGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  DBGrid3.Enabled:=true;
  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;

BD5.Enabled:=false;
BD6.Enabled:=false;
BBTT3.Visible:=false;
below.Visible:=false;
dbgrid4.columns[0].ReadOnly:=false;

end;

procedure TPurSampleInvoice.BB7Click(Sender: TObject);
begin
close;
end;

procedure TPurSampleInvoice.BD7Click(Sender: TObject);
begin
close;
end;

procedure TPurSampleInvoice.CGDetAfterOpen(DataSet: TDataSet);
begin

  BD2.Enabled:=true;
  BD3.Enabled:=true;
  BD4.Enabled:=true;
  BDT5.Enabled:=true;
  BDT6.Enabled:=true;
  if CGDet.recordcount>0 then
  begin
  end
  else
    begin
    end ;
//開發採購說60天比較足夠，先暫時改60天    
  if (((NDate-CGMas.FieldByName('USERDATE').value)>365) and (formatdatetime('yyyy/MM/dd',NDate)>='2008/12/01'))  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if CGMas.FieldByName('USERID').value<>main.edit1.text  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  if CGMas.cachedupdates  then
  begin
    BD2.Enabled:=false;
    BD3.Enabled:=false;
    BD4.Enabled:=false;
  end;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  //dbgrid4.columns[0].ButtonStyle:=cbsNone;
  //dbgrid4.columns[6].ButtonStyle:=cbsNone;
  //dbgrid4.columns[5].ButtonStyle:=cbsNone;

end;

procedure TPurSampleInvoice.BBTT1Click(Sender: TObject);
begin
  PurSampleInvoice_ZS:=TPurSampleInvoice_ZS.create(self);
  PurSampleInvoice_ZS.show;
end;

procedure TPurSampleInvoice.CGMasAfterOpen(DataSet: TDataSet);
begin

  BB5.Enabled:=false;
  BB6.Enabled:=false;
  BD5.Enabled:=false;
  BD6.Enabled:=false;
  CGMas.RequestLive:=false;
  CGMas.CachedUpdates:=false;

end;

procedure TPurSampleInvoice.PC1Change(Sender: TObject);
begin

if PC1.ActivePage=TS3 then
   begin
     panel8.visible:=false;
   end;
if PC1.ActivePage=TS5 then
   begin
     panel8.visible:=true;
   end;

end;

procedure TPurSampleInvoice.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
edit3.SetFocus;
end;

procedure TPurSampleInvoice.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
button1click(nil);
end;

procedure TPurSampleInvoice.BDT5Click(Sender: TObject);
Var
    J:Variant;
begin
if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
if CGMas.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
J:=' ';  
j:=CGDet.fieldbyname('CLBH').Value;
PurSampleInvoice_Print:=TPurSampleInvoice_Print.Create(nil);
//PurSampleInvoice_Print.quickrep1.prepare;
//PurSample_Print.Qpage1.caption:=inttostr(PurSample_Print.quickrep1.QRPrinter.pagecount);
PurSampleInvoice_Print.quickrep1.preview;
PurSampleInvoice_Print.Free;

with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    if fieldbyname('PMARK').isnull then
      begin
        fieldbyname('PMARK').value:=1;
      end
      else
        begin
          fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
        end;
    upDet.Apply(ukmodify);
    requestlive:=false;
    cachedupdates:=false;
  end;
CGDet.Active:=false;
CGDet.Active:=true;

IF  J<>' ' THEN   CGDet.Locate('CLBH',J,[]) ;

end;

procedure TPurSampleInvoice.CGDetCalcFields(DataSet: TDataSet);
begin
with CGDet do
  begin
    if FieldByName('USPrice').value<>0 then
      begin
        FieldByName('ACCUS').value:=FieldByName('Qty').value*FieldByName('USPrice').value;
      end;
    if FieldByName('VNPrice').value<>0 then
      begin
        FieldByName('ACCVN').value:=FieldByName('Qty').value*FieldByName('VNPrice').value;
      end;
  end;
end;

procedure TPurSampleInvoice.FormDestroy(Sender: TObject);
begin
  PurSampleInvoice:=nil;
end;

procedure TPurSampleInvoice.BitBtn1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  CGDet.active  then
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
        for   i:=0   to   CGDet.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=CGDet.fields[i].FieldName;
          end;
        eclApp.Cells(1,i+1):='SR';
        eclApp.Cells(1,i+2):='Stage';
        eclApp.Cells(1,i+3):='FD';
        CGDet.First;
        j:=2;
        while   not   CGDet.Eof   do
          begin
            for   i:=0   to  CGDet.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=CGDet.Fields[i].Value;
            end;
            while not  CGS.eof do
              begin
                eclApp.Cells(j,i+1):=CGS.FieldByName('Article').AsString;
                eclApp.Cells(j,i+2):=CGS.FieldByName('Stage').AsString;
                eclApp.Cells(j,i+3):=CGS.FieldByName('FD').AsString;                
                CGS.Next;
                inc(j);
              end;
          CGDet.Next;

          end;
      eclapp.columns.autofit;
       eclApp.Visible:=True;  
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TPurSampleInvoice.DBGrid3DblClick(Sender: TObject);
begin
if  CGMas.Active then
  begin
    if  (CGMas.recordcount>0) then
      begin
        PC1.ActivePage:=TS3;
      end;
  end;
end;

procedure TPurSampleInvoice.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGMas.FieldByName('YN').value='0' then
  begin
    DBGrid3.canvas.font.color:=clred;
    DBGrid3.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSampleInvoice.DBGrid3EditButtonClick(Sender: TObject);
begin
if DBGrid3.Selectedfield.fieldname='ZSBH' then
  begin
    BBTT1Click(nil);
  end;
end;

procedure TPurSampleInvoice.DBGrid3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key=#13 then
    DBGrid3DblClick(nil);
end;

procedure TPurSampleInvoice.BitBtn13Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
 begin
      tdbgh := DBGridEh1  ;


  if (tdbgh is TDBGridEh) then
    if SaveDialog1.Execute then
    begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,not ckbsel.Checked);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;


end;

procedure TPurSampleInvoice.BDT6Click(Sender: TObject);
begin
if CGDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;
if CGMas.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end;



PurSampleInvoice_PrintALL:=TPurSampleInvoice_PrintALL.Create(nil);
PurSampleInvoice_PrintALL.quickrep1.preview;
PurSampleInvoice_PrintALL.Free;

with CGDet do
  begin
    first;
    while not CGDet.Eof do
      begin
        requestlive:=true;
        cachedupdates:=true;
        edit;
        if fieldbyname('PMARK').isnull then
          begin
            fieldbyname('PMARK').value:=1;
          end
          else
            begin
              fieldbyname('PMARK').value:=fieldbyname('PMARK').value+1;
            end;
        upDet.Apply(ukmodify);
        requestlive:=false;
        cachedupdates:=false;
        next;
      end;
  end;

CGDet.Active:=false;
CGDet.Active:=true;

end;

procedure TPurSampleInvoice.Timer1Timer(Sender: TObject);
begin
   if Lbl_Warnning.Visible=true then
      Lbl_Warnning.Visible:=false
   else
      Lbl_Warnning.Visible:=true ;

{
   if Lbl_Warnning.Color=clBtnFace then
      Lbl_Warnning.Color:=clYellow
   else
      Lbl_Warnning.Color:=clBtnFace ;
}

end;

procedure TPurSampleInvoice.Qry_CheckAfterOpen(DataSet: TDataSet);
begin
   if (Qry_Check.RecordCount>0)   then
      Timer1.Enabled:=true ;
end;

procedure TPurSampleInvoice.Qry_Check2AfterOpen(DataSet: TDataSet);
begin
   if  (Qry_Check2.RecordCount>0)  then
      Timer1.Enabled:=true ;
end;

procedure TPurSampleInvoice.BBTT3Click(Sender: TObject);
begin
  PurSampleInvoice_IM:=TPurSampleInvoice_IM.create(self);
  PurSampleInvoice_IM.EDIT8.text:=PurSampleInvoice.CGMas.fieldbyname('ZSBH').value;
  PurSampleInvoice_IM.EDIT9.text:=PurSampleInvoice.CGMas.fieldbyname('ZSYWJC').value;
  PurSampleInvoice_IM.DTP1.Date:=date-30;
  PurSampleInvoice_IM.DTP2.date:=date;
  PurSampleInvoice_IM.show;
end;

procedure TPurSampleInvoice.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
 if CGDet.FieldByName('YN').value='0' then
  begin
    DBGrid4.canvas.font.color:=clred;
    DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;

  if CGDet.FieldByName('CINO').isnull then
  begin
    DBGrid4.canvas.font.color:=clLime;
    DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TPurSampleInvoice.BitBtn2Click(Sender: TObject);
var
 eclApp, WorkBook, WorkSheet, WorkRange, Picture: OleVariant;
 i, j, Row, Col: integer;
 Barcode: TImage;
 Barcode128 : TBarcode128;
begin
  with HangTag do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT CGNO, CLDH, PURPOSE, SEASON, SR, Material_Name, MatRemark, Supplier_Name, XqQty, Qty, DWBH, Received_Date, KFJC, CAST(STUFF((');
    SQL.Add('  SELECT '','' + MainA.Type FROM ( ');
    SQL.Add('    SELECT CGZLInvoiceS.CGNO, CGZLSS.CLBH, SUBSTRING(CGZLSS.ZLBH, 1, 4) AS Type FROM CGZLInvoice');
    SQL.Add('    LEFT JOIN CGZLInvoiceS ON CGZLInvoiceS.CINO = CGZLInvoice.CINO');
    SQL.Add('    LEFT JOIN CGZLSS ON CGZLInvoiceS.CGNO = CGZLSS.CGNO AND CGZLInvoiceS.CLBH = CGZLSS.CLBH');
    SQL.Add('    WHERE CGZLInvoice.CILX = ''6''');
    SQL.Add('    AND CGZLInvoice.CINO = ''' + PurSampleInvoice.CGMas.FieldByName('CINO').Value +'''');
    SQL.Add('    GROUP BY CGZLInvoiceS.CGNO, CGZLSS.CLBH, CONVERT(VARCHAR(12), CGZLInvoice.ETA, 104), SUBSTRING(CGZLSS.ZLBH, 1, 4)');
    SQL.Add('  ) AS MainA');
    SQL.Add('  WHERE MainA.CGNO = MainB.CGNO AND MainA.CLBH = MainB.CLDH');
    SQL.Add('  FOR XML PATH('''')');
    SQL.Add('), 1, 1, '''') AS VARCHAR) AS Type FROM (');
    SQL.Add('  SELECT CGZLInvoiceS.CGNO, CLZL.CLDH, CGZL.PURPOSE, CGZL.SEASON, CGZLS.Article_All AS SR, CLZL.YWPM Material_Name, clbzzl.bz as MatRemark, ZSZL.ZSYWJC AS Supplier_Name, CGZLS.XqQty,');
    SQL.Add('  CONVERT(VARCHAR, CGZLInvoiceS.Qty) AS Qty, CLZL.DWBH, CONVERT(VARCHAR(12), CGZLInvoices.PurReceiveDate, 104) AS Received_Date, SUBSTRING(CGZLSS.ZLBH, 1, 4) AS Type, KFZL.KFJC FROM CGZLInvoice');
    SQL.Add('  LEFT JOIN ZSZL ON CGZLInvoice.ZSBH = ZSZL.ZSDH');
    SQL.Add('  LEFT JOIN CGZLInvoiceS ON CGZLInvoiceS.CINO = CGZLInvoice.CINO');
    SQL.Add('  LEFT JOIN CLZL ON CLZL.CLDH = CGZLInvoiceS.CLBH ');
    SQL.Add('  LEFT JOIN clbzzl on clzl.cldh=clbzzl.cldh and clbzzl.zybb=''E'' ');
    SQL.Add('  LEFT JOIN CGZLSS ON CGZLInvoiceS.CGNO = CGZLSS.CGNO AND CGZLInvoiceS.CLBH = CGZLSS.CLBH');
    SQL.Add('  LEFT JOIN CGZLS ON CGZLS.CGNO = CGZLSS.CGNO AND CGZLS.CLBH = CGZLSS.CLBH');
    SQL.Add('  LEFT JOIN YPZL ON YPZL.YPDH = CGZLSS.ZLBH');
    SQL.Add('  LEFT JOIN CGZL ON CGZLS.CGNO = CGZL.CGNO');
    SQL.Add('  LEFT JOIN KFXXZL ON KFXXZL.SheHao = YPZL.SheHao AND KFXXZL.XieXing = YPZL.XieXing');
    SQL.Add('  LEFT JOIN KFZL ON KFXXZL.KHDH = KFZL.KFDH');
    SQL.Add('  WHERE CGZLInvoice.CILX = ''6''');
    SQL.Add('  AND CGZLInvoice.CINO = ''' + PurSampleInvoice.CGMas.FieldByName('CINO').AsString + '''');
    SQL.Add('  GROUP BY CGZLInvoiceS.CGNO, CLZL.CLDH, CGZL.PURPOSE, CGZL.SEASON, CGZLS.Article_All, CLZL.YWPM, clbzzl.bz, ZSZL.ZSYWJC, CGZLS.XqQty,');
    SQL.Add('  CONVERT(VARCHAR, CGZLInvoiceS.Qty), CLZL.DWBH, CONVERT(VARCHAR(12), CGZLInvoices.PurReceiveDate, 104), SUBSTRING(CGZLSS.ZLBH, 1, 4), KFZL.KFJC');
    SQL.Add(') AS MainB');
    //funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;

  if (HangTag.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.Workbooks.Add;
      eclApp.ActiveSheet.Cells.NumberFormatLocal := '@';//將儲存格改成文字格式
      eclApp.ActiveSheet.PageSetup.TopMargin := 0/0.035;
      eclApp.ActiveSheet.PageSetup.BottomMargin := 0/0.035;
      eclApp.ActiveSheet.PageSetup.LeftMargin := 0/0.035;
      eclApp.ActiveSheet.PageSetup.RightMargin := 0/0.035;
      eclApp.ActiveSheet.PageSetup.HeaderMargin := 0/0.035;
      eclApp.ActiveSheet.PageSetup.FooterMargin := 0/0.035;
      //邊界
      eclApp.Cells.EntireColumn.WrapText := true;
      //自動換行
      eclapp.ActiveSheet.Cells.EntireColumn.HorizontalAlignment := $FFFFEFF4;
      eclapp.ActiveSheet.Cells.EntireColumn.VerticalAlignment := $FFFFEFF4;
      //置中
      eclApp.Cells.EntireColumn.ColumnWidth := 6;  //設定全部列寬為8
      eclApp.Cells[1].ColumnWidth := 3;
      eclApp.Cells[3].ColumnWidth := 23;
      eclApp.Cells[4].ColumnWidth := 3;
      eclApp.Cells[6].ColumnWidth := 23;
      eclApp.Cells[7].ColumnWidth := 3;
      eclApp.Cells[9].ColumnWidth := 23;
      //列寬
      eclApp.Cells.EntireColumn.RowHeight := 25;   //設定所有欄位高度為30
      eclApp.Cells.EntireColumn.Font.Size := 8;  //設定全部字型大小為8

      HangTag.First;
      i := 0;
      Row := 0;
      Col := 0;
      while not HangTag.Eof do                                          
      begin
        Row := (i DIV 3) * 8;
        Col := (i MOD 3) * 3 + 1;

        eclApp.Range[eclApp.Cells[Row+1, Col], eclApp.Cells[Row+8, Col]].Merge;
        eclApp.Range[eclApp.Cells[Row+1, Col+1], eclApp.Cells[Row+1, Col+2]].Merge;
        eclApp.Cells[Row+1, Col+1].Font.Size := 16;
        eclApp.Cells[Row+1, Col+1] := HangTag.FieldByName('KFJC').Value;
        eclApp.Cells[Row+2, Col+1] := 'PO#:';
        eclApp.Cells[Row+2, Col+2] := HangTag.FieldByName('CGNO').Value + '   ' + HangTag.FieldByName('CLDH').Value + #10 + HangTag.FieldByName('PURPOSE').Value + '      ' + HangTag.FieldByName('SEASON').Value + '      ' + HangTag.FieldByName('Type').Value;
        eclApp.Rows[Row+3].RowHeight := 70;
        eclApp.Cells[Row+3, Col+1] := 'SR:';
        eclApp.Cells[Row+3, Col+2] := HangTag.FieldByName('SR').Value;
        eclApp.Rows[Row+4].RowHeight := 70;
        eclApp.Cells[Row+4, Col+1] := 'Material Name:';
        if HangTag.FieldByName('MatRemark').AsString<>'' then
          eclApp.Cells[Row+4, Col+2] := HangTag.FieldByName('Material_Name').AsString +' // Remark '+HangTag.FieldByName('MatRemark').AsString
        else
          eclApp.Cells[Row+4, Col+2] := HangTag.FieldByName('Material_Name').Value;
        eclApp.Cells[Row+5, Col+1] := 'Supplier Name:';
        eclApp.Cells[Row+5, Col+2] := HangTag.FieldByName('Supplier_Name').Value;
        eclApp.Cells[Row+6, Col+1] := 'Quantity:';
        eclApp.Cells[Row+6, Col+2] := HangTag.FieldByName('Qty').Value + ' ' + HangTag.FieldByName('DWBH').Value + ' (' + HangTag.FieldByName('XqQty').AsString + ')';
        eclApp.Cells[Row+7, Col+1] := 'Received Date:';
        eclApp.Cells[Row+7, Col+2] := HangTag.FieldByName('Received_Date').Value;
        eclApp.Cells[Row+8, Col+1] := 'CINO:';
        eclApp.Cells[Row+8, Col+2] := PurSampleInvoice.CGMas.FieldByName('CINO').AsString;

        try
          Barcode := TImage.Create(Self);
          Barcode.Width := 30;
          Barcode128 := TBarcode128.Create;
          Barcode128.GenerateCode128(Barcode, 'Auto', PurSampleInvoice.CGMas.FieldByName('CINO').AsString + ';' + HangTag.FieldByName('CGNO').AsString + ';' + HangTag.FieldByName('CLDH').AsString, 0, 0, 30, 5, 'Vertical');
          Barcode128.Free;
          Barcode.Picture.Bitmap.SaveToFile(ExtractFilePath(Application.ExeName) + '\SN751Barcode.bmp');
          Barcode.Free;

          WorkSheet := WorkBook.ActiveSheet;
          WorkSheet.Select;
          WorkRange := WorkSheet.Range[WorkSheet.Cells.Item[Row+1, Col], WorkSheet.Cells.Item[Row+8, Col]];
          Picture := WorkSheet.Shapes.AddPicture(ExtractFilePath(Application.ExeName) + '\SN751Barcode.bmp', False, True, WorkRange.Left+4, WorkRange.Top+10, WorkRange.Width - 7, WorkRange.Height - 19);
          //Picture.LockAspectRatio := true;
          Picture.Placement := xlMoveAndSize;
          Picture := Unassigned;
          DeleteFile(ExtractFilePath(Application.ExeName) + '\SN751Barcode.bmp');
        except on F:Exception do
          ShowMessage(F.Message);
        end;

        eclApp.Range[eclApp.Cells[Row+1, Col], eclApp.Cells[Row+8, Col]].Borders[xlEdgeTop].LineStyle := xlContinuous;
        eclApp.Range[eclApp.Cells[Row+1, Col], eclApp.Cells[Row+8, Col]].Borders[xlEdgeLeft].LineStyle := xlContinuous;
        eclApp.Range[eclApp.Cells[Row+1, Col], eclApp.Cells[Row+8, Col]].Borders[xlEdgeBottom].LineStyle := xlContinuous;
        for j := 1 to 8 do
        begin
          eclApp.Cells[Row+j, Col+1].Borders[xlEdgeTop].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+1].Borders[xlEdgeTop].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+1].Borders[xlEdgeTop].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+1].Borders[xlEdgeLeft].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+1].Borders[xlEdgeLeft].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+1].Borders[xlEdgeLeft].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+2].Borders[xlEdgeTop].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+2].Borders[xlEdgeTop].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+2].Borders[xlEdgeTop].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+2].Borders[xlEdgeRight].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+2].Borders[xlEdgeRight].LineStyle := xlContinuous;
          eclApp.Cells[Row+j, Col+2].Borders[xlEdgeRight].LineStyle := xlContinuous;
        end;      
        eclApp.Cells[Row+8, Col+1].Borders[xlEdgeBottom].LineStyle := xlContinuous;
        eclApp.Cells[Row+8, Col+1].Borders[xlEdgeBottom].LineStyle := xlContinuous;
        eclApp.Cells[Row+8, Col+1].Borders[xlEdgeBottom].LineStyle := xlContinuous;
        eclApp.Cells[Row+8, Col+2].Borders[xlEdgeBottom].LineStyle := xlContinuous;
        eclApp.Cells[Row+8, Col+2].Borders[xlEdgeBottom].LineStyle := xlContinuous;
        eclApp.Cells[Row+8, Col+2].Borders[xlEdgeBottom].LineStyle := xlContinuous;

        Inc(i);
        HangTag.Next;
      end;

      eclApp.ActiveSheet.PageSetup.Orientation := 1; //列印直=1,橫式=2
      eclApp.ActiveSheet.PageSetup.Zoom := false; //使用頁次縮放功能
      eclApp.ActiveSheet.PageSetup.FitToPagesWide := 1; //縮放成一頁寬(需配合Zoom = True)
      eclApp.ActiveSheet.PageSetup.FitToPagesTall := 1; //縮放成一頁高(需配合Zoom = True)
      
      ShowMessage('Succeed.');
      eclApp.Visible := true;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TPurSampleInvoice.belowClick(Sender: TObject);
var i:integer;
begin
  CGDet.RequestLive:=true;
  CGDet.CachedUpdates:=true;
  for i:=1 to CGDet.RecordCount do
  begin
    with CGDet do
    begin
      CGDet.edit ;
      CGDet.FieldByName('purreceivedate').Value:=formatdatetime('yyyy/MM/dd',DTP3.Date);
      CGDet.post;
      CGDet.next;
    end;
  end;
end;

procedure TPurSampleInvoice.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if CGMas.Active then
  begin
    if CGMas.recordcount=0 then
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
    for i:=0 to DBGrid3.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGrid3.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    CGMas.First;
    j:=2;
    while   not  CGMas.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGrid3.Columns.Count-1 do
      begin
         eclApp.Cells(j,i+1):=DBGrid3.Fields[i].Value;
         eclApp.Cells.Cells.item[j,i+1].font.size:='10';
         eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      CGMas.Next;
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
