unit SplitInvoice1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls,StrUtils,NumberToWords,
  Menus, Buttons;

type
  TSplitInvoice = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    chkIndate: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    qry2: TQuery;
    qry2INV_DATE: TDateTimeField;
    qry2SHIP_BY: TStringField;
    qry2FROM_WHERE: TStringField;
    qry2TO_WHERE: TStringField;
    qry2TOTAL_PAIRS: TIntegerField;
    qry2TOTAL_AMOUNT: TCurrencyField;
    qry2TOTAL_AMOUNT_WORD: TStringField;
    qry2BRAND: TStringField;
    qry2NO: TIntegerField;
    qry2FACTORY: TStringField;
    qry2YEAR: TStringField;
    qry2SAVE_USER: TStringField;
    qry2SAVE_TIME: TDateTimeField;
    qry2PRINT_LOCK: TStringField;
    qry2CFM_USER: TStringField;
    qry2CFM_TIME: TDateTimeField;
    qry2CFMED: TStringField;
    qry2PRINT_USER: TStringField;
    qry2PRINT_TIME: TDateTimeField;
    qry2UNLOCK_USER: TStringField;
    qry2UNLOCK_TIME: TDateTimeField;
    qry2YN: TStringField;
    qry2CURRENCY: TStringField;
    qry2Season: TStringField;
    qry2Stage: TStringField;
    qry2Inv_Type: TStringField;
    DS2: TDataSource;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh3: TDBGridEh;
    Splitter2: TSplitter;
    DBGridEh2: TDBGridEh;
    Splitter3: TSplitter;
    qry1: TQuery;
    qry1XH: TStringField;
    qry1SIZ: TStringField;
    qry1CTS: TIntegerField;
    qry1QTY: TIntegerField;
    qry1PAIRS: TIntegerField;
    qry1NW: TFloatField;
    qry1GW: TFloatField;
    qry1L: TFloatField;
    qry1W: TFloatField;
    qry1H: TFloatField;
    qry1CBM: TFloatField;
    DS1: TDataSource;
    qry4: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField7: TStringField;
    DateTimeField1: TDateTimeField;
    DS4: TDataSource;
    qry3: TQuery;
    qry3PACK_NO: TStringField;
    qry3STYLE_NAME: TStringField;
    qry3PO: TStringField;
    qry3CUSTORDNO: TStringField;
    qry3ARTICLE: TStringField;
    qry3SIZE_RUN: TStringField;
    qry3PAIRS: TIntegerField;
    qry3UNIT_PRICE: TCurrencyField;
    qry3AMOUNT: TCurrencyField;
    qry3UserID: TStringField;
    qry3UserDate: TDateTimeField;
    DS3: TDataSource;
    qry1YB: TIntegerField;
    qry1BRAND: TStringField;
    qry1FACTORY: TStringField;
    qry1YEAR: TStringField;
    qry1Inv_Type: TStringField;
    Panel4: TPanel;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    packing_D: TQuery;
    packing_DCTS: TIntegerField;
    packing_DPairs: TIntegerField;
    packing_DNW: TFloatField;
    packing_DGW: TFloatField;
    packing_DUserID: TStringField;
    packing_DUserDate: TDateTimeField;
    packing_DCBM: TFloatField;
    packing_DWord: TStringField;
    DS5: TDataSource;
    btnAdd: TButton;
    UpdateSQL2: TUpdateSQL;
    btnAddmore: TButton;
    Splitter4: TSplitter;
    PopupMenu1: TPopupMenu;
    SplitRY1: TMenuItem;
    qry1CTQ: TIntegerField;
    qry1CTZ: TIntegerField;
    qry4CTQ: TIntegerField;
    qry4CTZ: TIntegerField;
    qry1Inv_Date: TDateTimeField;
    UpdateSQL3: TUpdateSQL;
    Pop_inv: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Upd_PackingD: TUpdateSQL;
    Pop_PackingD: TPopupMenu;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    packing_DYN: TStringField;
    Qry_Temp: TQuery;
    qry1INV_NO: TStringField;
    qry1RYNO: TStringField;
    qry3INV_NO: TStringField;
    qry3RYNO: TStringField;
    qry2INV_NO: TStringField;
    qry2Inv_Sup: TStringField;
    qry4INV_NO: TStringField;
    qry4RYNO: TStringField;
    packing_DINV_NO: TStringField;
    packing_DRYNO: TStringField;
    Label21: TLabel;
    Panel15: TPanel;
    Label22: TLabel;
    qry2RISK: TStringField;
    qry2CUSTID: TStringField;
    qry1TNW: TFloatField;
    qry1TGW: TFloatField;
    qry4TNW: TFloatField;
    qry4TGW: TFloatField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnAddmoreClick(Sender: TObject);
    procedure qry2AfterOpen(DataSet: TDataSet);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure DBGridEh5GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Modify2Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure packing_DAfterOpen(DataSet: TDataSet);
    procedure qry1AfterOpen(DataSet: TDataSet);
    procedure qry3AfterOpen(DataSet: TDataSet);
    procedure Pop_invPopup(Sender: TObject);
    procedure qry1BeforeClose(DataSet: TDataSet);
    procedure qry2BeforeClose(DataSet: TDataSet);
    procedure packing_DBeforeClose(DataSet: TDataSet);
    procedure Pop_PackingDPopup(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure qry3BeforeClose(DataSet: TDataSet);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure DBGridEh3Columns6UpdateData(Sender: TObject;
      var Text: String; var Value: Variant; var UseText, Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SplitInvoice: TSplitInvoice;

implementation
     uses Main1, SplitInvoice_RY1;

{$R *.dfm}

procedure TSplitInvoice.FormDestroy(Sender: TObject);
begin
    SplitInvoice:=nil;
end;

procedure TSplitInvoice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if qry2.RequestLive or qry4.RequestLive or packing_D.RequestLive then
  begin
      showmessage('You must save data first.');
      abort;
  end;
  action:=cafree;
end;

procedure TSplitInvoice.Button1Click(Sender: TObject);
begin
  if qry2.RequestLive or qry4.RequestLive or packing_D.RequestLive then
  begin
      showmessage('You must save data first.');
      abort;
  end;
  qry1.Active:=false;
  if(not chkIndate.Checked)and(trim(edit1.Text)='')and(trim(edit2.Text)='')then
  begin
    Messagedlg('Pls, input data for FILLTER first!',mtwarning,[mbyes],0);
    abort;
  end;
    with qry1 do
    begin
        active:=false;
        sql.Clear;
        sql.Add('SELECT p.INV_NO, p.RYNO, p.XH, p.SIZ, p.CTQ, p.CTZ, p.CTS, p.QTY,p.PAIRS,p.NW, p.GW, p.L, p.W');
        sql.Add('    , p.H, round(p.CBM,4) CBM,0 as YB,im.BRAND,im.FACTORY,im.[YEAR],im.Inv_Type,im.Inv_Date,p.TNW,p.TGW');
        sql.Add('FROM PACKING p LEFT JOIN INVOICE_M im ON p.INV_NO=im.INV_NO');
        sql.Add('left join DDZL do ON do.DDBH=p.RYNO and do.ddzt <> ''C'' ');
        sql.Add('WHERE im.PRINT_LOCK IS NULL and inv_Type=''Mass Production'' ');
        if edit1.Text <> '' then
          sql.Add('   and p.Inv_no ='''+edit1.Text+''' ');
        //sql.Add('  and p.Inv_no like '''+edit1.Text+'%'' ');
        sql.Add('  and p.RYNo like '''+edit2.Text+'%'' ');
        if chkIndate.Checked then
        begin
            SQL.Add('and convert(varchar,im.Inv_Date,111) between ');
            SQL.Add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
        end;
        active:=true;
    end;
end;

procedure TSplitInvoice.FormCreate(Sender: TObject);
begin
    DTP1.Date:=date-7;
    DTP2.Date:=date;
    with Qry_Temp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.add('select Memo from ShipCountry group by Memo ');
      Active:=true;
      First;
      DBGridEh3.FieldColumns['TO_WHERE'].PickList.Clear;      //TO_where
      while not Eof do
      begin
        DBGridEh3.FieldColumns['TO_WHERE'].PickList.Add(upperCase(fieldbyName('Memo').AsString));
        Next;
      end;
    end;
end;

procedure TSplitInvoice.btnAddClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
      showmessage('You must search Invoice no first.');
      edit1.SetFocus;
      abort;
  end;
  if DBGridEh1.SelectedRows.Count = 0 then
  begin
       showmessage('You must select data first.');
       abort;
  end;

   if (not qry1.Active) then abort;
   if (qry1.recordcount<1) then abort;

  if messagedlg('Do you really want to add these record?',mtWarning,[mbYes,mbNo],0)=mrYes then
  begin
      SplitInvoice_RY:=TSplitInvoice_RY.create(self);
      SplitInvoice_RY.show;

      btnAdd.Enabled:=false;
      btnaddmore.Enabled:=true;
  end;
end;

procedure TSplitInvoice.btnAddmoreClick(Sender: TObject);
begin
    if SplitInvoice_RY <> nil then
        SplitInvoice_RY.Button1Click(nil)
    else
    begin
        showmessage('Error...!!!');
        abort;
    end; 
end;


procedure TSplitInvoice.qry2AfterOpen(DataSet: TDataSet);
begin
    if(qry2.RecordCount > 0)and(not qry3.Active) then
      qry3.Open; 
end;

procedure TSplitInvoice.Modify1Click(Sender: TObject);
begin
     qry2.RequestLive:=true;
     qry2.CachedUpdates:=true;
     qry2.Edit;
     DBGridEh3.FieldColumns['INV_DATE'].ReadOnly:=false;
     DBGridEh3.FieldColumns['TO_WHERE'].ReadOnly:=false;
     PopupMenu1.AutoPopup:=false;
     Pop_PackingD.AutoPopup:=false;
end;

procedure TSplitInvoice.Cancel1Click(Sender: TObject);
begin
     qry2.Active:=false;
     qry2.RequestLive:=false;
     qry2.CachedUpdates:=false;
     qry2.Active:=true;
end;

procedure TSplitInvoice.Save1Click(Sender: TObject);
var i:integer;
    J:Variant;
begin
  try
    qry3.Active:=false;
    qry2.first; 
    for i:=1 to qry2.RecordCount do
      begin
        case qry2.updatestatus of
          usmodified:
             begin
                if qry2.FieldByName('PRINT_LOCK').AsString = 'Y' then
                begin
                    showmessage('Invoice has clocked!!! You must unclock before modify.');
                    exit;
                end;
                qry2.edit;
                j:=qry2.fieldbyname('INV_NO').Value;
                qry2.FieldByName('SAVE_USER').Value:= main.edit1.Text;
                UpdateSQL3.apply(ukmodify);
             end;
        end;
       qry2.next;
      end;
    qry2.active:=false;
    qry2.cachedupdates:=false;
    qry2.requestlive:=false;
    qry2.active:=true;
  except
    Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;

  IF J<>' ' THEN qry2.Locate('INV_NO',J,[]) ;

end;


procedure TSplitInvoice.DBGridEh5GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
    if packing_D.FieldByName('YN').Value = '2' then
      DBGridEh5.Canvas.Font.Color:=clred;
end;

procedure TSplitInvoice.Modify2Click(Sender: TObject);
begin
   packing_D.RequestLive:=true;
   packing_D.CachedUpdates:=true;
   packing_D.Edit;
   PopupMenu1.AutoPopup:=false;
   Pop_inv.AutoPopup:=false;
end;

procedure TSplitInvoice.Cancel2Click(Sender: TObject);
begin
   packing_D.Active:=false;
   packing_D.RequestLive:=false;
   packing_D.CachedUpdates:=false;
   packing_D.Active:=true; 
end;

procedure TSplitInvoice.Save2Click(Sender: TObject);
var i:integer;
begin
  try
    packing_D.first;
    for i:=1 to packing_D.RecordCount do
      begin
        case packing_D.updatestatus of
          usmodified:
             begin
                 packing_D.edit;
                 packing_D.FieldByName('UserID').Value:= Main.edit1.Text;
                 packing_D.FieldByName('YN').Value:= '2'; //revise NW/GW/CBM
                 Upd_PackingD.apply(ukmodify);
             end;
        end;
       packing_D.next;
      end;
    packing_D.active:=false;
    packing_D.cachedupdates:=false;
    packing_D.requestlive:=false;
    packing_D.active:=true;

  except
    Messagedlg('Error, can not save data!',mtwarning,[mbyes],0);
    abort;
  end;

end;

procedure TSplitInvoice.packing_DAfterOpen(DataSet: TDataSet);
begin
    if packing_D.RecordCount > 0 then
        modify2.Enabled:=true;
end;

procedure TSplitInvoice.qry1AfterOpen(DataSet: TDataSet);
begin
  if qry1.RecordCount>0 then
    qry2.Open;
end;

procedure TSplitInvoice.qry3AfterOpen(DataSet: TDataSet);
begin
  if qry3.RecordCount>0 then
  begin
    if not qry4.Active then
      qry4.Open;
    if not packing_D.Active then
      packing_D.Open; 
  end;
end;

procedure TSplitInvoice.Pop_invPopup(Sender: TObject);
begin
  Modify1.Enabled:=false;
  save1.Enabled:=false;
  cancel1.Enabled:=false;
  if(qry2.Active)and(qry2.RecordCount>0) then
    Modify1.Enabled:=true;
  if qry2.RequestLive then
  begin
     save1.Enabled:=true;
     cancel1.Enabled:=true;
  end;
end;

procedure TSplitInvoice.qry1BeforeClose(DataSet: TDataSet);
begin 
  qry2.Active:=false;
  Pop_inv.AutoPopup:=true;
  Pop_PackingD.AutoPopup:=true;
end;

procedure TSplitInvoice.qry2BeforeClose(DataSet: TDataSet);
begin 
  qry3.Active:=false;
  DBGridEh3.FieldColumns['INV_DATE'].ReadOnly:=true;
  DBGridEh3.FieldColumns['TO_WHERE'].ReadOnly:=true;
  PopupMenu1.AutoPopup:=true;
  Pop_PackingD.AutoPopup:=true;
end;

procedure TSplitInvoice.packing_DBeforeClose(DataSet: TDataSet);
begin
  PopupMenu1.AutoPopup:=true;
  Pop_inv.AutoPopup:=true;
end;

procedure TSplitInvoice.Pop_PackingDPopup(Sender: TObject);
begin
  modify2.Enabled:=false;
  save2.Enabled:=false;
  cancel2.Enabled:=false;
  if(packing_D.Active)and(packing_D.RecordCount>0) then
     modify2.Enabled:=true;
  if packing_D.RequestLive then
  begin
    save2.Enabled:=true;
    cancel2.Enabled:=true;
  end;
end;

procedure TSplitInvoice.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 { if trim(qry3.FieldByName('SPECID').AsString) = 'FX' then
  begin
      DBGridEh2.canvas.Font.Style:=[fsBold];
      DBGridEh2.canvas.Font.Size:=DBGridEh2.canvas.Font.Size-1;
  end;  }
end;

procedure TSplitInvoice.qry3BeforeClose(DataSet: TDataSet);
begin 
  qry4.Active:=false;
  packing_D.Active:=false;
end;

procedure TSplitInvoice.PopupMenu1Popup(Sender: TObject);
begin
  SplitRY1.Enabled:=False;
  if (qry1.Active)and(qry1.RecordCount>0) then
    SplitRY1.Enabled:=true;
end;

procedure TSplitInvoice.DBGridEh3Columns6UpdateData(Sender: TObject;
  var Text: String; var Value: Variant; var UseText, Handled: Boolean);
var REF_Str:string;
begin
  if (Trim(Text) = '') and  UseText then
  begin
    ShowMessage('TO_WHERE is Important data,Plase input data !!! ');
    exit;
  end;
  REF_Str:='';
  with Qry_Temp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.add('select top 1 CountryID from ShipCountry where Memo='''+Text+''' ');
    Active:=true;
  end;
  if trim(Qry_Temp.fieldByName('CountryID').asstring)='' then
  begin
    showmessage('CountryID not found, pls check N31 with TO_WHERE !');
    exit;
  end;
  if length(Qry_Temp.fieldByName('CountryID').asstring)<>2 then
  begin
    showmessage('Only 2 character !');
    exit;
  end;

end;

end.
