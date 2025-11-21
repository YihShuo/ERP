unit SupplierSample1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, ShellAPI,
  Dialogs, Buttons, DBTables, DB, StdCtrls, Grids, DBGrids, ExtCtrls,comobj,DBGridEhImpExp,
  GridsEh, DBGridEh, ComCtrls, Menus;

type
  TSupplierSample = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    UpSQL1: TUpdateSQL;
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
    BBTT1: TBitBtn;
    Edit3: TEdit;
    rg1: TRadioGroup;
    rb1: TRadioButton;
    rb2: TRadioButton;
    Edit4: TEdit;
    BBTT2: TBitBtn;
    Edit5: TEdit;
    BBTT3: TBitBtn;
    Edit6: TEdit;
    BBTT4: TBitBtn;
    Panel4: TPanel;
    DBGrideh1: TDBGridEh;
    spl1: TSplitter;
    Panel5: TPanel;
    pgc1: TPageControl;
    ts2: TTabSheet;
    ts4: TTabSheet;
    dbgrdh4: TDBGridEh;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    qry_tmp: TQuery;
    DS_Material: TDataSource;
    Qry_Material: TQuery;
    Qry_MaterialCLBH: TStringField;
    Qry_MaterialYWPM: TStringField;
    Qry_MaterialDWBH: TStringField;
    Qry_MaterialPurQty: TCurrencyField;
    Qry_MaterialCGDate: TDateTimeField;
    DS_SamplePolicy: TDataSource;
    Qry_SamplePolicy: TQuery;
    Qry_SamplePolicySeason: TStringField;
    Qry_SamplePolicyUSERID: TStringField;
    Qry_SamplePolicyCR1: TStringField;
    Qry_SamplePolicyCR2: TStringField;
    Qry_SamplePolicySMS: TStringField;
    Panel6: TPanel;
    btn_Policy_Modify: TButton;
    btn_Policy_Save: TButton;
    btn_Policy_Cancel: TButton;
    btn_Policy_ViewAlll: TButton;
    Update_Policy: TUpdateSQL;
    Qry_SamplePolicyUSERDATE: TDateTimeField;
    Qry_SamplePolicyold_Season: TStringField;
    Qry_SamplePolicyzsdh: TStringField;
    btn_Policy_Excel: TButton;
    Button2: TButton;
    pnl1: TPanel;
    dbgrdh2: TDBGridEh;
    spl2: TSplitter;
    dbgrdh3: TDBGridEh;
    DS_Material_PO: TDataSource;
    Qry_Material_PO: TQuery;
    Qry_MaterialZSBH: TStringField;
    Qry_Material_POCGNO: TStringField;
    Qry_Material_POPurQty: TCurrencyField;
    Qry_Material_POCGDate: TDateTimeField;
    Qry_Material_POPURPOSE: TStringField;
    Qry_Material_POSEASON: TStringField;
    Qry_SamplePolicyCR1_FreeQty: TCurrencyField;
    Qry_SamplePolicyCR1_Charge: TCurrencyField;
    Qry_SamplePolicyCR2_FreeQty: TCurrencyField;
    Qry_SamplePolicyCR2_charge: TCurrencyField;
    Qry_SamplePolicySMS_FreeQty: TCurrencyField;
    Qry_SamplePolicySMS_Charge: TCurrencyField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SaveDialog1: TSaveDialog;
    SupplierTW_CK: TCheckBox;
    TabSheet1: TTabSheet;
    Memo1: TMemo;
    Query1zsdh: TStringField;
    Query1Style: TStringField;
    Query1GroupName: TStringField;
    Query1zsywjc: TStringField;
    Query1Country: TStringField;
    Query1SamplePurchaser: TStringField;
    Query1ZSJC: TStringField;
    Query1yjdz: TStringField;
    Query1MZSDH: TStringField;
    Query1Zsdh_TW: TStringField;
    Query1Customclearanceday: TIntegerField;
    Query1ShippingleadtimeSEA: TIntegerField;
    Query1ShippingleadtimeAIR: TIntegerField;
    Query1dh: TStringField;
    Query1cz: TStringField;
    Query1zsqm: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1Zsdh_TW_jc: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    VNPaymentNotNullCK: TCheckBox;
    Query1Zsdh_JG_jc: TStringField;
    Query1Bonded: TBooleanField;
    Query1Zsdh_JG: TStringField;
    Query1ZSYYZS: TStringField;
    Query1BankAccount: TStringField;
    Query1PAYMENTTERM: TStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Query1LastPODate: TDateTimeField;
    Query1DEVid: TStringField;
    Query1DEVdate: TDateTimeField;
    Query1DeliveryTerm: TStringField;
    Query1email: TStringField;
    Query1email2: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BBTT1Click(Sender: TObject);
    procedure BBTT2Click(Sender: TObject);
    procedure BBTT3Click(Sender: TObject);
    procedure BBTT4Click(Sender: TObject);
    procedure btn_Policy_ModifyClick(Sender: TObject);
    procedure btn_Policy_CancelClick(Sender: TObject);
    procedure btn_Policy_SaveClick(Sender: TObject);
    procedure btn_Policy_ExcelClick(Sender: TObject);
    procedure btn_Policy_ViewAlllClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrideh1EditButtonClick(Sender: TObject);
    procedure Query1Zsdh_TWSetText(Sender: TField; const Text: String);
    procedure bbt6Click(Sender: TObject);
    procedure pgc1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SupplierSample: TSupplierSample;
  Ndate: Tdate  ;

implementation

uses main1, SupplierSample_Purchaser1, SupplierSample_Style1,SupplierSample_PurchaserA1,
  SupplierSample_Group1, SupplierSample_Country1, SupplierSample_SamplePolicy1, SamplePolicy1, FunUnit,
  SupplierSample_ZSDH_VN1;

{$R *.dfm}

procedure TSupplierSample.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if BB5.enabled then
  begin
    messagedlg('You have to save data first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
   action:=Cafree;
end;

procedure TSupplierSample.BB1Click(Sender: TObject);
begin
//panel3.Visible:=true;
end;

procedure TSupplierSample.FormCreate(Sender: TObject);
begin
  DTP2.Datetime:=Now();
  DTP1.Datetime:=Now()-30;
  query1.Active:=false;
end;

procedure TSupplierSample.BB2Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    Insert;
  end;
  DBGrideh1.columns[7].ButtonStyle:=cbsEllipsis;
  Button1.enabled:=false;
  bb5.enabled:=true;
  bb6.enabled:=true;
  

  btn_Policy_Modify.Enabled:=false;
  btn_Policy_Save.Enabled:=false;
  btn_Policy_Cancel.Enabled:=false;
  btn_Policy_ViewAlll.Enabled:=false;

end;

procedure TSupplierSample.BB4Click(Sender: TObject);
begin
  with query1 do
  begin
      cachedupdates:=true;
      requestlive:=true;
      query1.edit;
  end;

  Button1.enabled:=false;
  bb5.enabled:=true;
  bb6.enabled:=true;

  btn_Policy_Modify.Enabled:=false;
  btn_Policy_Save.Enabled:=false;
  btn_Policy_Cancel.Enabled:=false;
  btn_Policy_ViewAlll.Enabled:=false;
  //
  DBGrideh1.columns[5].ButtonStyle:=cbsEllipsis;
  DBGrideh1.columns[6].ButtonStyle:=cbsEllipsis;
  //
  DBGrideh1.columns[7].ButtonStyle:=cbsEllipsis;
  DBGrideh1.columns[8].ButtonStyle:=cbsEllipsis;
  //
  DBGrideh1.columns[9].ButtonStyle:=cbsEllipsis;
  DBGrideh1.columns[10].ButtonStyle:=cbsEllipsis;
end;

procedure TSupplierSample.BB5Click(Sender: TObject);
var i:integer;
begin
  //
  try
    query1.first;
    for i:=1 to query1.RecordCount do
      begin
        case query1.updatestatus of
          usinserted:
            begin
              if query1.fieldbyname('ZSDH').isnull or (trim(query1.fieldbyname('ZSDH').Value) = '') then
                begin
                  query1.delete;
                end
                 else
                   begin
                     query1.edit;
                     query1.FieldByName('ZSDH').Value:=Uppercase(query1.FieldByName('ZSDH').AsString);
                     query1.FieldByName('ZSYWJC').Value:=Uppercase(query1.FieldByName('ZSYWJC').AsString);
                     if query1.FieldByName('ZSQM').AsString<>''  then
                        query1.FieldByName('ZSQM').Value :=Uppercase(query1.FieldByName('ZSQM').AsString);;
                     query1.FieldByName('ZSJC').Value :=query1.FieldByName('ZSYWJC').AsString;
                     query1.FieldByName('USERDATE').Value:=date;
                     query1.FieldByName('USERID').Value:=main.edit1.text;
                     Query1.FieldByName('YN').Value:='2';
                     upsql1.apply(ukinsert);

                     //20150521更新zszl_dev
                     with qry_tmp do
                     begin
                       Active:=false;
                       SQL.Clear;
                       SQL.Add('Select * from zszl_dev where GSBH='''+main.Edit2.Text+''' and ZSDH='''+query1.FieldByName('ZSDH').Value+''' ');
                       Active:=true;
                       if RecordCount=0 then //Insert
                       begin
                         Active:=false;
                         SQL.Clear;
                         SQL.Add('Insert into zszl_dev (ZSDH,GSBH,Country,MZSDH,Style, SamplePurchaser, GroupName, Zsdh_TW, Zsdh_JG, Bonded, ZSYYZS, BankAccount, PAYMENTTERM,USERID,USERDATE,DeliveryTerm, email, email2) ');
                         SQL.Add('Values (');
                         SQL.Add(''''+query1.FieldByName('ZSDH').AsString+''',');
                         SQL.Add(''''+main.Edit2.Text+''',');
                         SQL.Add(''''+query1.FieldByName('Country').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('MZSDH').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('Style').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('SamplePurchaser').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('GroupName').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('Zsdh_TW').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('Zsdh_JG').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('Bonded').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('ZSYYZS').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('BankAccount').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('PAYMENTTERM').AsString+''',');
                         SQL.Add(''''+main.Edit1.Text+''',Getdate(),');
                         SQL.Add(''''+query1.FieldByName('DeliveryTerm').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('email').AsString+''',');
                         SQL.Add(''''+query1.FieldByName('email2').AsString+''')');
                         ExecSQL();
                       end else      //Update
                       begin
                         Active:=false;
                         SQL.Clear;
                         SQL.Add('Update zszl_dev Set ');
                         SQL.Add('Country='''+query1.FieldByName('Country').AsString+''',');
                         SQL.Add('MZSDH='''+query1.FieldByName('MZSDH').AsString+''',');
                         SQL.Add('Style='''+query1.FieldByName('Style').AsString+''',');
                         SQL.Add('SamplePurchaser='''+query1.FieldByName('SamplePurchaser').AsString+''',');
                         SQL.Add('GroupName='''+query1.FieldByName('GroupName').AsString+''',');
                         SQL.Add('Zsdh_TW='''+query1.FieldByName('Zsdh_TW').AsString+''', ');
                         SQL.Add('Zsdh_JG='''+query1.FieldByName('Zsdh_JG').AsString+''', ');
                         SQL.Add('Bonded='''+query1.FieldByName('Bonded').AsString+''', ');
                         SQL.Add('ZSYYZS='''+query1.FieldByName('ZSYYZS').AsString+''', ');
                         SQL.Add('BankAccount='''+query1.FieldByName('BankAccount').AsString+''',');
                         SQL.Add('PAYMENTTERM='''+query1.FieldByName('PAYMENTTERM').AsString+''',');
                         SQL.Add('USERID='''+main.edit1.text+''',');
                         SQL.Add('USERDATE= Getdate(),');
                         SQL.Add('DeliveryTerm='''+query1.FieldByName('DeliveryTerm').AsString+''',');
                         SQL.Add('email='''+query1.FieldByName('email').AsString+''',');
                         SQL.Add('email2='''+query1.FieldByName('email2').AsString+'''');
                         SQL.Add('where ZSDH='''+query1.FieldByName('ZSDH').AsString+''' and GSBH='''+main.Edit2.Text+''' ');
                         ExecSQL();
                         //
                       end;
                     end;
                   end;
            end;
          usmodified:
             begin
               if query1.fieldbyname('YN').value='0' then
                 begin
                   if  query1.fieldbyname('USERDATE').value>=(date-3) then
                     begin
                       upsql1.Apply(ukdelete);
                     end
                     else
                       begin
                         showmessage(query1.FieldByName('ZSDH').Value+' >3 days,can not delete.');
                       end;
                 end
                 else
                   begin
                     if query1.fieldbyname('USERDATE').value>=(date-10000) then
                     begin
                         //20150521更新zszl_dev
                         with qry_tmp do
                         begin
                           Active:=false;
                           SQL.Clear;
                           SQL.Add('Select * from zszl_dev where GSBH='''+main.Edit2.Text+''' and ZSDH='''+query1.FieldByName('ZSDH').Value+''' ');
                           Active:=true;
                           if RecordCount=0 then //Insert
                           begin
                             Active:=false;
                             SQL.Clear;
                             SQL.Add('Insert into zszl_dev (ZSDH,GSBH,Country,MZSDH,Style, SamplePurchaser, GroupName, Zsdh_TW, Zsdh_JG, Bonded,ZSYYZS,BankAccount,PAYMENTTERM,USERID,USERDATE,DeliveryTerm,email, email2) ');
                             SQL.Add('Values (');
                             SQL.Add(''''+query1.FieldByName('ZSDH').AsString+''',');
                             SQL.Add(''''+main.Edit2.Text+''',');
                             SQL.Add(''''+query1.FieldByName('Country').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('MZSDH').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('Style').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('SamplePurchaser').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('GroupName').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('Zsdh_TW').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('Zsdh_JG').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('Bonded').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('ZSYYZS').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('BankAccount').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('PAYMENTTERM').AsString+''',');
                             SQL.Add(''''+main.Edit1.Text+''',Getdate(),');
                             SQL.Add(''''+query1.FieldByName('DeliveryTerm').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('email').AsString+''',');
                             SQL.Add(''''+query1.FieldByName('email2').AsString+''')');
                             ExecSQL();
                           end else      //Update
                           begin
                             Active:=false;
                             SQL.Clear;
                             SQL.Add('Update zszl_dev Set ');
                             SQL.Add('Country='''+query1.FieldByName('Country').AsString+''',');
                             SQL.Add('MZSDH='''+query1.FieldByName('MZSDH').AsString+''',');
                             SQL.Add('Style='''+query1.FieldByName('Style').AsString+''',');
                             SQL.Add('SamplePurchaser='''+query1.FieldByName('SamplePurchaser').AsString+''',');
                             SQL.Add('GroupName='''+query1.FieldByName('GroupName').AsString+''',');
                             SQL.Add('Zsdh_TW='''+query1.FieldByName('Zsdh_TW').AsString+''', ');
                             SQL.Add('Zsdh_JG='''+query1.FieldByName('Zsdh_JG').AsString+''', ');
                             SQL.Add('Bonded='''+query1.FieldByName('Bonded').AsString+''', ');
                             SQL.Add('ZSYYZS='''+query1.FieldByName('ZSYYZS').AsString+''', ');
                             SQL.Add('BankAccount='''+query1.FieldByName('BankAccount').AsString+''', ');
                             SQL.Add('PAYMENTTERM='''+query1.FieldByName('PAYMENTTERM').AsString+''',');
                             SQL.Add('USERID='''+main.edit1.text+''',');
                             SQL.Add('USERDATE= Getdate(),');
                             SQL.Add('DeliveryTerm='''+query1.FieldByName('DeliveryTerm').AsString+''',');
                             SQL.Add('email='''+query1.FieldByName('email').AsString+''',');
                             SQL.Add('email2='''+query1.FieldByName('email2').AsString+'''');
                             SQL.Add('where ZSDH='''+query1.FieldByName('ZSDH').AsString+''' and GSBH='''+main.Edit2.Text+''' ');
                             ExecSQL();
                             //
                           end;
                           Active:=false;
                         end;

                         //
                     end else
                     begin
                         showmessage(query1.FieldByName('ZSDH').Value+' >10000 days,can not modify.');
                     end;
                   end;
             end;
        end;

        query1.next;
      end;
    query1.active:=false;
    query1.cachedupdates:=false;
    query1.requestlive:=false;
    query1.active:=true;
    //
    DBGrideh1.columns[6].ButtonStyle:=cbsnone;
    Button1.enabled:=True;
    bb5.enabled:=false;
    bb6.enabled:=false;

    btn_Policy_Modify.Enabled:=true;
    btn_Policy_Save.Enabled:=false;
    btn_Policy_Cancel.Enabled:=false;
    btn_Policy_ViewAlll.Enabled:=true;
    //
    DBGrideh1.columns[5].ButtonStyle:=cbsnone;
    DBGrideh1.columns[6].ButtonStyle:=cbsnone;
    DBGrideh1.columns[7].ButtonStyle:=cbsnone;
    DBGrideh1.columns[8].ButtonStyle:=cbsnone;
    DBGrideh1.columns[9].ButtonStyle:=cbsnone;
    DBGrideh1.columns[10].ButtonStyle:=cbsnone;
  except
    on E:Exception do
    begin
       Messagedlg('Have wrong, can not save!'+E.Message,mtwarning,[mbyes],0);
    end;
  end;


end;

procedure TSupplierSample.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select ZSZL.zsdh,zszl_dev.Style,zszl_dev.GroupName,ZSZL.zsywjc,zszl_dev.Country,zszl_dev.SamplePurchaser,ZSZL.ZSJC    ');
    sql.add('       ,ZSZL.yjdz,zszl_dev.MZSDH,zszl_dev.Zsdh_TW,zszl_dev.Zsdh_JG,Country.Customclearanceday,Country.ShippingleadtimeSEA,Country.ShippingleadtimeAIR');
    sql.add('       ,ZSZL.dh,ZSZL.cz,ZSZL.zsqm,ZSZL.USERDATE,ZSZL.USERID,ZSZL.YN,zszl_dev.Email, zszl_dev.email2 ');
    sql.add('       ,BUSERS.USERNAME as SamplePurchaser_Name');
    sql.add('       ,(select zsywjc from zszl B where B.zsdh=zszl_dev.Zsdh_TW ) as  Zsdh_TW_jc ');
    sql.add('       ,(select zsywjc from zszl B where B.zsdh=zszl_dev.Zsdh_JG ) as  Zsdh_JG_jc ');
    sql.add('       ,zszl_dev.Bonded,zszl_dev.ZSYYZS,zszl_dev.BankAccount,zszl_dev.PAYMENTTERM,MAX(CGZL.CGDate) as LastPODate,ZSZL_DEV.userid as DEVid,ZSZL_DEV.userdate as DEVdate,ZSZL_dev.DeliveryTerm ');
    if not CheckBox1.Checked then begin
      sql.add('from ZSZL ');
      sql.add('left join zszl_dev  on zszl_dev.zsdh=zszl.zsdh  and zszl_dev.GSBH='''+main.Edit2.Text+''' ');
    end
    else begin
      sql.add('from ZSZL_DEV ');
      sql.add('left join zszl on zszl_dev.zsdh=zszl.zsdh ');
    end;
    sql.add('left join BUSERS  on BUSERS.USERID=zszl_dev.SamplePurchaser  ');
    sql.add('left join Country ON Country.Country=zszl_dev.Country    ');
    sql.add('left join CGZL on CGZL.ZSBH = zszl_dev.zsdh and CGZL.GSBH = '''+main.Edit2.Text+'''');
    sql.add('where 1=1 ');
    if CheckBox1.Checked then
      sql.Add(' and zszl_dev.GSBH='''+main.Edit2.Text+'''');
    if CheckBox2.Checked then begin
      sql.add('and convert(smalldatetime,convert(varchar,ZSZL.USERDATE,111))  between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and  '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if rb1.Checked=True then
       sql.add(' and zszl_dev.SamplePurchaser is not null and zszl_dev.SamplePurchaser<>''''  ');
    if length(Edit1.Text) > 0 then
       sql.add(' and zszl.ZSDH like '+''''+edit1.Text+'%'+'''');
    if length(Edit2.Text) > 0 then
       sql.add(' and ZSYWJC like ''%'+edit2.Text+'%'+'''');
    if length(Edit3.Text) > 0 then
       sql.add(' and zszl_dev.SamplePurchaser='''+edit3.Text+'''');
    if length(Edit4.Text) > 0 then
       sql.add(' and zszl_dev.style='''+edit4.Text+'''');
    if length(Edit5.Text) > 0 then
       sql.add(' and zszl_dev.GroupName='''+edit5.Text+'''');
    if length(Edit6.Text) > 0 then
       sql.add(' and zszl_dev.Country='''+edit6.Text+'''');
    if SupplierTW_CK.Checked=true  then
       sql.add('    and ZSZL.YN=''1'' ');
    if VNPaymentNotNullCK.Checked=true then
       sql.add('    and IsNull(zszl_dev.Zsdh_TW,'''')<>'''' ');
    sql.add('group by ZSZL.zsdh,zszl_dev.Style,zszl_dev.GroupName,ZSZL.zsywjc,zszl_dev.Country,zszl_dev.SamplePurchaser,ZSZL.ZSJC ');
    sql.add(',ZSZL.yjdz,zszl_dev.MZSDH,zszl_dev.Zsdh_TW,Zsdh_JG,Country.Customclearanceday,Country.ShippingleadtimeSEA,Country.ShippingleadtimeAIR');
    sql.add(',ZSZL.dh,ZSZL.cz,ZSZL.zsqm,ZSZL.USERDATE,ZSZL.USERID,ZSZL.YN,ZSZL_DEV.userid,ZSZL_DEV.userdate, zszl_dev.Email, zszl_dev.email2');
    sql.add(',BUSERS.USERNAME,zszl_dev.Bonded,zszl_dev.ZSYYZS,zszl_dev.BankAccount,zszl_dev.PAYMENTTERM,ZSZL_dev.DeliveryTerm');
    sql.add('order by zsywjc');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //panel3.visible:=false;
  DBGrideh1.columns[1].ButtonStyle:=cbsnone;
  bb2.enabled:=false;
  bb4.enabled:=true;
  bb5.enabled:=false;
  bb6.enabled:=false;
  bb7.enabled:=true;
  bbt1.enabled:=true;
  bbt2.enabled:=true;
  bbt3.enabled:=true;
  bbt4.enabled:=true;
  bbt6.enabled:=true;
  //Qry_Material.Active:=true;
  //Qry_Material_PO.Active:=true;
end;

procedure TSupplierSample.BB6Click(Sender: TObject);
begin
    with query1 do
    begin
        active:=false;
        cachedupdates:=false;
        requestlive:=false;
        active:=true;
    end;

    Button1.enabled:=True;
    bb5.enabled:=false;
    bb6.enabled:=false;

    btn_Policy_Modify.Enabled:=true;
    btn_Policy_Save.Enabled:=false;
    btn_Policy_Cancel.Enabled:=false;
    btn_Policy_ViewAlll.Enabled:=true;
    //
    DBGrideh1.columns[5].ButtonStyle:=cbsnone;
    DBGrideh1.columns[6].ButtonStyle:=cbsnone;
    DBGrideh1.columns[7].ButtonStyle:=cbsnone;
    DBGrideh1.columns[8].ButtonStyle:=cbsnone;
    DBGrideh1.columns[9].ButtonStyle:=cbsnone;
    DBGrideh1.columns[10].ButtonStyle:=cbsnone;
end;

procedure TSupplierSample.BB7Click(Sender: TObject);
begin
close;
end;

procedure TSupplierSample.BBT1Click(Sender: TObject);
begin
query1.First;
end;

procedure TSupplierSample.BBT2Click(Sender: TObject);
begin
query1.prior;
end;

procedure TSupplierSample.BBT3Click(Sender: TObject);
begin
query1.next;
end;

procedure TSupplierSample.BBT4Click(Sender: TObject);
begin
query1.last;
end;

procedure TSupplierSample.FormDestroy(Sender: TObject);
begin
  SupplierSample:=nil;
end;

procedure TSupplierSample.BBTT1Click(Sender: TObject);
begin
  SupplierSample_Purchaser:=TSupplierSample_Purchaser.create(self);
  SupplierSample_Purchaser.show;
end;

procedure TSupplierSample.BBTT2Click(Sender: TObject);
begin
  SupplierSample_Style:=TSupplierSample_Style.create(self);
  SupplierSample_Style.show;
end;

procedure TSupplierSample.BBTT3Click(Sender: TObject);
begin
  SupplierSample_Group:=TSupplierSample_Group.create(self);
  SupplierSample_Group.show;
end;

procedure TSupplierSample.BBTT4Click(Sender: TObject);
begin
  SupplierSample_Country:=TSupplierSample_Country.create(self);
  SupplierSample_Country.show;
end;

procedure TSupplierSample.btn_Policy_ModifyClick(Sender: TObject);
begin
if (Qry_SamplePolicy.Active) and (BB2.Enabled=true)   then
  begin
    Qry_SamplePolicy.RequestLive:=true;
    Qry_SamplePolicy.CachedUpdates:=true;
    BB2.enabled:=false;
    BB3.enabled:=false;
    BB4.enabled:=false;
    BB5.enabled:=false;
    BB6.enabled:=false;
    DBGrideh1.Enabled:=false;
    Button1.Enabled:=false;
    btn_Policy_Modify.Enabled:=false;
    btn_Policy_Save.Enabled:=True;
    btn_Policy_Cancel.Enabled:=True;
    btn_Policy_ViewAlll.Enabled:=false;
    //DBGrideh1.Columns[9].ReadOnly:=false;
    //DBGrideh1.Columns[10].ReadOnly:=false;
    //DBGrideh1.Columns[11].ReadOnly:=false;
    //DBGrideh1.Columns[9].ButtonStyle:=cbsellipsis;
  end;

end;

procedure TSupplierSample.btn_Policy_CancelClick(Sender: TObject);
begin
if Qry_SamplePolicy.CachedUpdates then
  begin
    Qry_SamplePolicy.Active:=false;
    Qry_SamplePolicy.CachedUpdates:=false;
    Qry_SamplePolicy.RequestLive:=false;
    BB2.enabled:=True;
    BB4.enabled:=True;
    DBGrideh1.Enabled:=True;
    Button1.Enabled:=True;
    btn_Policy_Modify.Enabled:=True;
    btn_Policy_Save.Enabled:=false;
    btn_Policy_Cancel.Enabled:=false;
    btn_Policy_ViewAlll.Enabled:=True;
    Qry_SamplePolicy.Active:=true;
  end;
end;

procedure TSupplierSample.btn_Policy_SaveClick(Sender: TObject);
begin
with Qry_SamplePolicy do
  begin
    first;
    while not eof do
      begin

        if updatestatus=usinserted then
          begin

            if (fieldbyname('Season').AsString<>'') then //因為Season為key值,所以不可以空白
               begin
                  with qry_tmp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' select * from zszlSamplePayment where zsdh = '''+Qry_SamplePolicy.fieldbyname('zsdh').AsString+'''');
                    sql.Add('                          and Season = '''+Qry_SamplePolicy.fieldbyname('Season').AsString+'''');
                    active:=true;
                    if eof then
                    begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' insert zszlSamplePayment (zsdh,Season,CR1,CR2,Presell,SMS,PT,USERDATE,USERID) ');
                      sql.Add(' values (');
                      sql.Add(' '''+Query1.fieldbyname('zsdh').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('Season').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('CR1').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('CR2').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('Presell').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('SMS').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('PT').AsString+'''');
                      sql.Add(','''+formatdatetime('yyyy/mm/dd',date)+'''');
                      sql.Add(','''+main.edit1.text+'''');
                      sql.Add(')');
                      execsql;
                    end;
                  end;
               end;



          END;
        if updatestatus=usmodified then
          begin
            if (fieldbyname('Season').AsString<>fieldbyname('Old_Season').AsString ) and (fieldbyname('Old_Season').AsString<>'') then
               begin
                  with qry_tmp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' delete zszlSamplePayment ');
                    sql.Add(' where Season = '''+Qry_SamplePolicy.fieldbyname('Old_Season').AsString+'''');
                    sql.Add(' and zsdh = '''+Qry_SamplePolicy.fieldbyname('zsdh').AsString+'''');
                    execsql;
                  end;
               end;

            if (fieldbyname('Season').AsString<>'') then //因為Season為key值,所以不可以空白
               begin
                  with qry_tmp do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' select * from zszlSamplePayment where zsdh = '''+Qry_SamplePolicy.fieldbyname('zsdh').AsString+'''');
                    sql.Add('                          and Season = '''+Qry_SamplePolicy.fieldbyname('Season').AsString+'''');
                    active:=true;
                    if eof then
                    begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' insert zszlSamplePayment (zsdh,Season,CR1,CR2,Presell,SMS,PT,USERID,USERDATE) ');
                      sql.Add(' values (');
                      sql.Add(' '''+Query1.fieldbyname('zsdh').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('Season').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('CR1').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('CR2').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('Presell').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('SMS').AsString+'''');
                      sql.Add(','''+Qry_SamplePolicy.fieldbyname('PT').AsString+'''');
                      sql.Add(','''+formatdatetime('yyyy/mm/dd',date)+'''');
                      sql.Add(','''+main.edit1.text+'''');
                      sql.Add(')');
                      execsql;
                    end
                    else
                    begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' update zszlSamplePayment set ');
                      sql.Add(' CR1='''+Qry_SamplePolicy.fieldbyname('CR1').AsString+'''');
                      sql.Add(' ,CR2='''+Qry_SamplePolicy.fieldbyname('CR2').AsString+'''');
                      sql.Add(' ,Presell='''+Qry_SamplePolicy.fieldbyname('Presell').AsString+'''');
                      sql.Add(' ,SMS='''+Qry_SamplePolicy.fieldbyname('SMS').AsString+'''');
                      sql.Add(' ,PT='''+Qry_SamplePolicy.fieldbyname('PT').AsString+'''');
                      sql.Add(' where zsdh = '''+Qry_SamplePolicy.fieldbyname('zsdh').AsString+'''');
                      sql.Add(' and  Season = '''+Qry_SamplePolicy.fieldbyname('Season').AsString+'''');
                      execsql;
                    end;
                  end;
               end;

          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
    BB2.enabled:=True;
    BB4.enabled:=True;
    DBGrideh1.Enabled:=True;
    Button1.Enabled:=True;
    btn_Policy_Modify.Enabled:=True;
    btn_Policy_Save.Enabled:=false;
    btn_Policy_Cancel.Enabled:=false;
    btn_Policy_ViewAlll.Enabled:=True;
end;

procedure TSupplierSample.btn_Policy_ExcelClick(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j:integer;
  begin
  if  Qry_SamplePolicy.active  then
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
        for   i:=0   to   Qry_SamplePolicy.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Qry_SamplePolicy.fields[i].FieldName;
          end;

        Qry_SamplePolicy.First;
        j:=2;
        while   not   Qry_SamplePolicy.Eof   do
          begin
            for   i:=0   to  Qry_SamplePolicy.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Qry_SamplePolicy.Fields[i].Value;
            end;
          Qry_SamplePolicy.Next;
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

  end;


procedure TSupplierSample.btn_Policy_ViewAlllClick(Sender: TObject);
begin
SupplierSample_SamplePolicy:=TSupplierSample_SamplePolicy.create(self);
SupplierSample_SamplePolicy.show;
end;

procedure TSupplierSample.Button2Click(Sender: TObject);
begin
SamplePolicy:=TSamplePolicy.create(self);
SamplePolicy.show;
end;

procedure TSupplierSample.DBGrideh1EditButtonClick(Sender: TObject);
begin

  if (DBGrideh1.Selectedfield.fieldname='Zsdh_TW') or (DBGrideh1.Selectedfield.fieldname='Zsdh_TW_jc') then
  begin
    SupplierSample_ZSDH_VN:=TSupplierSample_ZSDH_VN.create(self);
    SupplierSample_ZSDH_VN.TWorJG:='TW';
    SupplierSample_ZSDH_VN.Edit2.Text:=Query1.fieldByName('zsywjc').AsString;
    SupplierSample_ZSDH_VN.show;
  end;

  if (DBGrideh1.Selectedfield.fieldname='SamplePurchaser') or (DBGrideh1.Selectedfield.fieldname='SamplePurchaser_Name') then
  begin
    SupplierSample_PurchaserA:=TSupplierSample_PurchaserA.create(self);
    SupplierSample_PurchaserA.show;
  end;

  if (DBGrideh1.Selectedfield.fieldname='Zsdh_JG') or (DBGrideh1.Selectedfield.fieldname='Zsdh_JG_jc') then
  begin
    SupplierSample_ZSDH_VN:=TSupplierSample_ZSDH_VN.create(self);
    SupplierSample_ZSDH_VN.TWorJG:='JG';
    SupplierSample_ZSDH_VN.Edit2.Text:=Query1.fieldByName('zsywjc').AsString;
    SupplierSample_ZSDH_VN.show;
  end;
end;

procedure TSupplierSample.Query1Zsdh_TWSetText(Sender: TField;
  const Text: String);
begin
  Sender.Value:=Text;
  with qry_tmp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select ZSDH,YN from ZSZL ');
    SQL.Add('where ZSZL.ZSDH='''+Sender.Value+''' ');
    Active:=true;
    if RecordCount>0 then
    begin
      if ((qry_tmp.FieldByName('YN').AsString='1') and (Query1.FieldByName('YN').AsString='1') and (Query1.FieldByName('ZSDH').AsString<>qry_tmp.FieldByName('ZSDH').AsString) ) then
      begin
        if Query1.FieldByName('Zsdh_TW').AsString<>'' then
        Sender.Value:=Query1.FieldByName('Zsdh_TW').OldValue;
      end;
    end else
    begin
      if Query1.FieldByName('Zsdh_TW').AsString<>'' then 
      Sender.Value:=Query1.FieldByName('Zsdh_TW').OldValue;
    end;
    Active:=false;
  end;
end;

procedure TSupplierSample.bbt6Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   Query1.fieldCount-1   do
      begin
        eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
      end;
      eclApp.Cells(1,1):='Vendor Code';
      eclApp.Cells(1,4):='Vendor EN. name';
      eclApp.Cells(1,8):='Vendor CN. name';
      eclApp.Cells(1,9):='Address';
      eclApp.Cells(1,18):='Tel.';
      eclApp.Cells(1,19):='Fax.';
      eclApp.Cells(1,20):='Vendor full name';
      eclApp.Cells(1,25):='Business License.';

      Query1.First;
      j:=2;
      while   not   Query1.Eof   do
      begin
        for i:=0  to  Query1.FieldCount-1 do
        begin
          eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
        end;
        Query1.Next;
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

end;

procedure TSupplierSample.pgc1Change(Sender: TObject);
begin
  if pgc1.ActivePageIndex=0 then
  begin
    Qry_Material.Active:=true;
    Qry_Material_PO.Active:=true;
  end else if pgc1.ActivePageIndex=1 then
  begin
    Qry_SamplePolicy.Active:=true;
  end;
end;

end.
