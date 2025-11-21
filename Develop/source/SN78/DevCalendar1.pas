unit DevCalendar1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, GridsEh, DBGridEh,comobj, DBClient,
  DBCtrls, DB, DBTables, AppEvnts, Menus, ComCtrls;

type
  TDevCalenDar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Btn1: TButton;
    FC: TQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    OpenDialog: TOpenDialog;
    gettime: TQuery;
    edit1: TComboBox;
    UpFC: TUpdateSQL;
    Label1: TLabel;
    Btn2: TBitBtn;
    Btn4: TBitBtn;
    Btn3: TBitBtn;
    Btn5: TBitBtn;
    FCJijie: TStringField;
    FCDevtype: TStringField;
    FCISD: TStringField;
    FCBuyMonth: TStringField;
    FCPC: TStringField;
    FCRFC: TStringField;
    FCCosting: TStringField;
    FCPricing: TStringField;
    FCBuyReady: TStringField;
    FCOrder_Buy: TStringField;
    FCPossibleRGAC: TStringField;
    FCRDD: TStringField;
    FCUSERDATE: TDateTimeField;
    FCUSERID: TStringField;
    FCYN: TStringField;
    Btn6: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Label2: TLabel;
    BitBtn1: TButton;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Panel5: TPanel;
    DBGridEh2: TDBGridEh;
    hai: TQuery;
    Updhai: TUpdateSQL;
    DataSource2: TDataSource;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    Panel7: TPanel;
    Button1: TButton;
    Query1: TQuery;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    ComboBox4: TComboBox;
    Label5: TLabel;
    haiYPDH: TStringField;
    haiqty: TFloatField;
    haimonth: TStringField;
    haiyear: TStringField;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGridEh4: TDBGridEh;
    Query2: TQuery;
    DataSource4: TDataSource;
    DBGridEh5: TDBGridEh;
    Query3: TQuery;
    DataSource5: TDataSource;
    CheckBox1: TCheckBox;
    Query1hgbh: TStringField;
    Query1Qty: TFloatField;
    Query2hgbh: TStringField;
    Query2clbh: TStringField;
    Query2Qty: TFloatField;
    Query3YPDH: TStringField;
    Query3hgbh: TStringField;
    Query3clbh: TStringField;
    Query3Qty: TFloatField;
    Button2: TButton;
    Query2rateC: TFloatField;
    Query3rateC: TFloatField;
    Edit2: TEdit;
    Label6: TLabel;
    CheckBox2: TCheckBox;
    TabSheet4: TTabSheet;
    Panel11: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Panel12: TPanel;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    DBGridEh6: TDBGridEh;
    DS6: TDataSource;
    QGameplan: TQuery;
    Ed_Season: TEdit;
    Ed_Stage: TEdit;
    UPGameplan: TUpdateSQL;
    QGameplanSeason: TStringField;
    QGameplanStage: TStringField;
    QGameplanGates: TStringField;
    QGameplanCTS_TP_DEADLINE: TDateTimeField;
    QGameplanWearTestSamplePO: TDateTimeField;
    QGameplanPurchasingPOtosupplierdeadline: TDateTimeField;
    QGameplanfirst_2D_BP: TDateTimeField;
    QGameplanPurchasing_trackinglist: TDateTimeField;
    QGameplanInitial_Spec: TDateTimeField;
    QGameplanNew_Material_trackinglist: TDateTimeField;
    QGameplanNew_material_ETA: TDateTimeField;
    QGameplanNew_upper_pattern_confirmed: TDateTimeField;
    QGameplanInitinal_Last_upper_send: TDateTimeField;
    QGameplanSecond_2D_Revision: TDateTimeField;
    QGameplanTooling_2D_confirm: TDateTimeField;
    QGameplanfirst_3D_send: TDateTimeField;
    QGameplanfirst_3D_Revision: TDateTimeField;
    QGameplanSecond_3D_Revision: TDateTimeField;
    QGameplanTooling_3D_confirm: TDateTimeField;
    QGameplanCFM_to_open_tooling: TDateTimeField;
    QGameplanTooling_ready: TDateTimeField;
    QGameplanSampling_tooling_making: TDateTimeField;
    QGameplanMeeting_with_Production: TDateTimeField;
    QGameplanMaterial_ETA: TDateTimeField;
    QGameplanPullover_confirm_deadline: TDateTimeField;
    QGameplanTB_to_Sample_Room: TDateTimeField;
    QGameplanFinal_Spec_to_Costing: TDateTimeField;
    QGameplanFinal_Spec_to_Costing1: TDateTimeField;
    QGameplanSample_starting: TDateTimeField;
    QGameplanSample_finished: TDateTimeField;
    QGameplanCTS_inspection: TDateTimeField;
    QGameplanSample_Packing: TDateTimeField;
    QGameplanSample_XF: TDateTimeField;
    QGameplanInternal_Sample: TDateTimeField;
    QGameplanSample_review: TDateTimeField;
    QGameplanPRODUCT_REVIEW: TDateTimeField;
    QGameplanGlobal_Costing: TDateTimeField;
    QGameplanInternal_TDM: TDateTimeField;
    QGameplanTDM: TDateTimeField;
    QGameplanWear_Test: TDateTimeField;
    QGameplanKey_features: TDateTimeField;
    QGameplanPTRSS_deadline: TDateTimeField;
    QGameplanPC_deadline: TDateTimeField;
    QGameplanRFC_of_first_buy: TDateTimeField;
    QGameplanCFM_transfer: TDateTimeField;
    QGameplanUserID: TStringField;
    QGameplanUserDate: TDateTimeField;
    QGameplanYN: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    QGameplanRFC_of_2nd_buy: TDateTimeField;
    QGameplanRFC_of_3rd_buy: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure Btn5Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn6Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure QGameplanAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DevCalenDar: TDevCalenDar;
  NDate:TDATE;

implementation

uses main1;

{$R *.dfm}

procedure TDevCalenDar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TDevCalenDar.FormDestroy(Sender: TObject);
begin
    DevCalenDar:=nil;
end;

procedure TDevCalenDar.Btn1Click(Sender: TObject);
var
  i,j,n:integer;
  flag:boolean;
  eof:string;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  BuyMonth,PC,RFC,Costing,Pricing,Buyready,Order_Buy,PossibleRGAC,RDD,ISD,jijie:TStringlist;
begin
 if edit1.text='' then
 begin
   showmessage('Plz input DevType');
   abort;
 end;
 if edit1.text<>'' then
 begin

    BuyMonth:=TStringList.Create;
    PC:=TStringList.Create;
    RFC:=TStringList.Create;
    Costing:=TStringList.Create;
    Pricing:=TStringList.Create;
    Buyready:=TStringList.Create;

    Order_Buy:=TStringList.Create;
    PossibleRGAC:=TStringList.Create;
    RDD:=TStringList.Create;
    ISD:=TStringList.Create;
    jijie:=TStringList.Create;

    if opendialog.Execute then begin
    MsExcel:=CreateOleObject('Excel.Application');
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    n:=0;
    j:=2;
    flag:=true;

      while(flag=true)  do
       begin
         BuyMonth.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
         PC.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);
         RFC.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,3]);
         Costing.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,4]);
         Pricing.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,5]);
         Buyready.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,6]);
         Order_Buy.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,7]);
         PossibleRGAC.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,8]);
         RDD.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,9]);
         ISD.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,10]);
         jijie.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,11]);


         eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];


         n:=n+1;//秀出目前資料讀取比數
         j:=j+1;
         if (eof='') then
            flag:=false;

       end;
   MsExcelWorkBook.Close;
   MsExcel.Quit;

   with FC do
     begin
     cachedupdates:=true;
     requestlive:=true;
     FC.edit;
     FC.first;
    end;

    for j:=0 to n-2 do
     begin
         FC.insert;
         FC.FieldByName('BuyMonth').value:=BuyMonth[j];
         FC.FieldByName('PC').value:=PC[j];
         FC.FieldByName('RFC').value:=RFC[j];
         FC.FieldByName('Costing').value:=Costing[j];
         FC.FieldByName('Pricing').value:=Pricing[j];
         FC.FieldByName('Buyready').value:=Buyready[j];

         FC.FieldByName('Order_Buy').value:=Order_Buy[j];
         FC.FieldByName('PossibleRGAC').value:=PossibleRGAC[j];
         FC.FieldByName('RDD').value:=RDD[j];
         FC.FieldByName('ISD').value:=ISD[j];
         FC.FieldByName('jijie').value:=jijie[j];

         FC.FieldByName('devtype').value:=edit1.text;
         FC.FieldByName('USERID').value:=main.Edit1.text;
         FC.FieldByName('USERdate').value:=NDate;    

         FC.Post;
     end;
     FC.next;
 end;
 end;
  btn1.Enabled:=false;
  btn2.Enabled:=false;
  btn3.Enabled:=false;
  btn4.Enabled:=true;
  btn5.Enabled:=true;
end;




procedure TDevCalenDar.FormCreate(Sender: TObject);
begin
  with gettime do          //取服務器的年月值
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('Ndate').value;
  end;
end;

procedure TDevCalenDar.btn4Click(Sender: TObject);
var
 i:integer;

begin
  btn1.Enabled:=false;
  btn2.Enabled:=true;
  btn3.Enabled:=true;
  btn4.Enabled:=false;
  btn5.Enabled:=false;
  btn6.Enabled:=false;  
  try
    fc.cachedupdates:=true;
    fc.requestlive:=true;
    fc.first;
    for i:=1 to fc.RecordCount do
    begin
      case fc.updatestatus of
      usinserted:
           upFC.apply(ukinsert);
      usmodified:
       begin
         if FC.fieldbyname('YN').value='0' then
         begin
            upFC.apply(ukdelete);
         end else
         begin
            if  FC.FieldByName('userID').Value=main.Edit1.Text then
            begin
               upFC.apply(ukmodify);
            end else
            begin
               showmessage('It is not yours, can not modify.');
            end;
          end;
       end;
      end;
      fc.next;
    end;


    with fc do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;

    edit1.text:='';
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;

end;

procedure TDevCalenDar.Btn2Click(Sender: TObject);
begin
    btn1.Enabled:=true;
    btn2.Enabled:=true;
    btn3.Enabled:=true;
    btn4.Enabled:=false;
    btn5.Enabled:=false;
    with FC do
    begin
         active:=false;
         sql.Clear;
         sql.add('select *,''1'' as YN from devCalendar where 1=1');
         if edit1.text<>'' then
            sql.add('and devtype ='''+edit1.text+''' ');
         sql.add('order by ISD');
         active:=true;
    end;
end;



procedure TDevCalenDar.Btn5Click(Sender: TObject);
begin
  btn1.Enabled:=false;
  btn2.Enabled:=true;
  btn3.Enabled:=true;
  btn4.Enabled:=false;
  btn5.Enabled:=false;
  btn6.Enabled:=false;

end;

procedure TDevCalenDar.Btn3Click(Sender: TObject);
begin
  btn1.Enabled:=false;
  btn2.Enabled:=false;
  btn3.Enabled:=false;
  btn4.Enabled:=true;
  btn5.Enabled:=true;
  btn6.Enabled:=true;
  with FC do
  begin
    cachedupdates:=true;
    requestlive:=true;
    FC.edit;
  end;
end;

procedure TDevCalenDar.Btn6Click(Sender: TObject);
begin
  //
  if FC.fieldbyname('USERID').value=main.edit1.Text then
  begin
      FC.requestlive:=true;
      FC.cachedupdates:=true;
      FC.Edit;
      FC.fieldbyname('YN').Value:='0';
  end else
  begin
     showmessage('It is not yours,can not delete.');
  end;

end;

procedure TDevCalenDar.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if FC.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TDevCalenDar.BitBtn1Click(Sender: TObject);
var
  i,j,n:integer;
  flag:boolean;
  eof:string;
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;
  Ypdh,Qty,Month,year:TStringlist;
begin
 if (combobox1.text='') or (combobox3.text='') then
 begin
   showmessage('Plz input Year and Month');
   abort;
 end;
 if combobox1.text<>'' then
 begin

    Ypdh:=TStringList.Create;
    Qty:=TStringList.Create;
    Month:=TStringList.Create;
    year:=TStringList.Create;

    if opendialog.Execute then begin
    MsExcel:=CreateOleObject('Excel.Application');
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    n:=0;
    j:=2;
    flag:=true;

      while(flag=true)  do
       begin
         Ypdh.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1]);
         Qty.Add(msExcel.WorkBooks[1].WorkSheets[1].Cells[j,2]);
         Month.Add(combobox1.text);
         Year.Add(combobox3.text);

         eof:=msExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];


         n:=n+1;//秀出目前資料讀取比數
         j:=j+1;
         if (eof='') then
            flag:=false;

       end;
   MsExcelWorkBook.Close;
   MsExcel.Quit;

   with hai do
     begin
     cachedupdates:=true;
     requestlive:=true;
     hai.edit;
     hai.first;
    end;

    for j:=0 to n-2 do
     begin
         hai.insert;
         hai.FieldByName('ypdh').value:=ypdh[j];
         hai.FieldByName('qty').value:=qty[j];
         hai.FieldByName('month').value:=month[j];
         hai.FieldByName('year').value:=year[j];
         hai.Post;
     end;
     hai.next;
 end;
 end;
  BitBtn1.Enabled:=false;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=false;
  BitBtn4.Enabled:=true;
  BitBtn5.Enabled:=true;
end;

procedure TDevCalenDar.BitBtn2Click(Sender: TObject);
begin
    BitBtn1.Enabled:=true;
    BitBtn2.Enabled:=true;
    BitBtn3.Enabled:=true;
    BitBtn4.Enabled:=false;
    BitBtn5.Enabled:=false;
    with hai do
    begin
         active:=false;
         sql.Clear;
         sql.add('select *  from ypzlhai where 1=1');
         if combobox3.text<>'' then
            sql.add('and year ='''+combobox3.text+''' ');
         if combobox1.text<>'' then
            sql.add('and month ='''+combobox1.text+''' ');
         sql.add('order by ypdh');
         active:=true;
    end;
end;
procedure TDevCalenDar.BitBtn3Click(Sender: TObject);
begin
  BitBtn1.Enabled:=false;
  BitBtn2.Enabled:=false;
  BitBtn3.Enabled:=false;
  BitBtn4.Enabled:=true;
  BitBtn5.Enabled:=true;
  BitBtn6.Enabled:=true;
  with hai do
  begin
    cachedupdates:=true;
    requestlive:=true;
    hai.edit;
  end;
end;

procedure TDevCalenDar.BitBtn4Click(Sender: TObject);
var
 i:integer;

begin
  if (combobox3.text='') or (combobox1.text='')  then
  begin
  showmessage('Please type Year and Month');
  abort;
  end;
  BitBtn1.Enabled:=false;
  BitBtn2.Enabled:=true;
  BitBtn3.Enabled:=true;
  BitBtn4.Enabled:=false;
  BitBtn5.Enabled:=false;
  BitBtn6.Enabled:=false;
  try
    hai.cachedupdates:=true;
    hai.requestlive:=true;
    hai.first;
    for i:=1 to hai.RecordCount do
    begin
      case hai.updatestatus of
      usinserted:
           updhai.apply(ukinsert);
      usmodified:
       begin
       {  if FC.fieldbyname('YN').value='0' then
         begin
            upFC.apply(ukdelete);
         end else
         begin
            if  FC.FieldByName('userID').Value=main.Edit1.Text then
            begin
               upFC.apply(ukmodify);
            end else
            begin
               showmessage('It is not yours, can not modify.');
            end;
          end;}
       end;
      end;
      hai.next;
    end;


    with hai do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;


    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;

end;


procedure TDevCalenDar.BitBtn5Click(Sender: TObject);
begin
  BitBtn1.Enabled:=false;
  BitBtn2.Enabled:=true;
  BitBtn3.Enabled:=true;
  BitBtn4.Enabled:=false;
  BitBtn5.Enabled:=false;
  BitBtn6.Enabled:=false;
end;

procedure TDevCalenDar.Button1Click(Sender: TObject);
begin
 if (combobox2.text='') or (combobox4.text='') then
 begin
   showmessage('Plz input Year and Month');
   abort;
 end;
    with query1 do
    begin
         active:=false;
         sql.Clear;
         sql.add('select hgbh,isnull(sum(ypzls.clsl*isnull(clhg.rateC,1)),0) as Qty from (');
         sql.add('SELECT ypzls.YPDH  ,ypzls.BWBH ,ypzls.CLBH  ,ypzls.CLSL*ypzlhai.qty as clsl');
         sql.add(' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,clzl.clzmlb');
         sql.add('FROM ypzlhai ypzlhai');
         sql.add('left join ypzls on ypzls.ypdh=ypzlhai.ypdh');
         sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
         sql.add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
         sql.add(' WHERE ypzlhai.month ='''+combobox2.text+''' and  ypzlhai.year ='''+combobox4.text+'''');
         if edit2.text<>'' then
             sql.add('and ypzlhai.ypdh='''+edit2.text+'''');
         sql.add('union all');
         sql.add('SELECT ypzls.YPDH  ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
         sql.add(' ,ypzls.CLSL*clzhzl.syl*ypzlhai.qty  as CLSL');
         sql.add(',clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh');
         sql.add(',clzl.clzmlb');
         sql.add('FROM ypzlhai ypzlhai');
         sql.add('left join ypzls on ypzls.ypdh=ypzlhai.ypdh');
         sql.add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
         sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
         sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
         sql.add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
         sql.add('WHERE ypzlhai.month ='''+combobox2.text+''' and  ypzlhai.year ='''+combobox4.text+'''  and CLZHZL.SYL>0');
         if edit2.text<>'' then
             sql.add('and ypzlhai.ypdh='''+edit2.text+'''');

         sql.add('union all');
         sql.add('Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH');
         sql.add(',clzhzl2.CLSL*clzhzl.syl*qty as CLSL');
         sql.add(' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh');
         sql.add(',clzl.clzmlb');
         sql.add(' from (');
         sql.add('SELECT ypzls.YPDH  ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
         sql.add(' ,ypzls.CLSL*clzhzl.syl as CLSL,ypzlhai.qty');
         sql.add(' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh');
         sql.add(',clzl.clzmlb');
         sql.add('FROM ypzlhai ypzlhai');
         sql.add('left join ypzls on ypzls.ypdh=ypzlhai.ypdh');
         sql.add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
         sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
         sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
         sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
         sql.add('WHERE ypzlhai.month ='''+combobox2.text+''' and  ypzlhai.year ='''+combobox4.text+'''  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''');
         if edit2.text<>'' then
             sql.add('and ypzlhai.ypdh='''+edit2.text+'''');         
         sql.add(') clzhzl2');
         sql.add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
         sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
         sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
         sql.add(')  YPZLS');
         sql.add('left join clhg on clhg.clbh=YPZLS.clbh');
         sql.add('group by hgbh');
         active:=true;
    end;

end;

procedure TDevCalenDar.DBGridEh3CellClick(Column: TColumnEh);
begin
   if checkbox1.checked then
   begin
   with query2 do
    begin
         active:=false;
         sql.Clear;
         sql.add('select hgbh,ypzls.clbh,isnull(sum(ypzls.clsl*isnull(clhg.rateC,1)),0) as Qty,rateC from (');
         sql.add('SELECT ypzls.YPDH  ,ypzls.BWBH ,ypzls.CLBH  ,ypzls.CLSL*ypzlhai.qty as clsl');
         sql.add(' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,clzl.clzmlb');
         sql.add('FROM ypzlhai ypzlhai');
         sql.add('left join ypzls on ypzls.ypdh=ypzlhai.ypdh');
         sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
         sql.add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
         sql.add(' WHERE ypzlhai.month ='''+combobox2.text+''' and  ypzlhai.year ='''+combobox4.text+''' ');
         if edit2.text<>'' then
             sql.add('and ypzlhai.ypdh='''+edit2.text+'''');         
         sql.add('union all');
         sql.add('SELECT ypzls.YPDH  ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
         sql.add(' ,ypzls.CLSL*clzhzl.syl*ypzlhai.qty  as CLSL');
         sql.add(',clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh');
         sql.add(',clzl.clzmlb');
         sql.add('FROM ypzlhai ypzlhai');
         sql.add('left join ypzls on ypzls.ypdh=ypzlhai.ypdh');
         sql.add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
         sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
         sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
         sql.add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
         sql.add('WHERE ypzlhai.month ='''+combobox2.text+''' and  ypzlhai.year ='''+combobox4.text+''' and CLZHZL.SYL>0');
         if edit2.text<>'' then
             sql.add('and ypzlhai.ypdh='''+edit2.text+'''');
         sql.add('union all');
         sql.add('Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH');
         sql.add(',clzhzl2.CLSL*clzhzl.syl*qty as CLSL');
         sql.add(' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh');
         sql.add(',clzl.clzmlb');
         sql.add(' from (');
         sql.add('SELECT ypzls.YPDH  ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
         sql.add(' ,ypzls.CLSL*clzhzl.syl as CLSL,ypzlhai.qty');
         sql.add(' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh');
         sql.add(',clzl.clzmlb');
         sql.add('FROM ypzlhai ypzlhai');
         sql.add('left join ypzls on ypzls.ypdh=ypzlhai.ypdh');
         sql.add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
         sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
         sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
         sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
         sql.add('WHERE ypzlhai.month ='''+combobox2.text+''' and  ypzlhai.year ='''+combobox4.text+''' and CLZHZL.SYL>0  and clzl.clzmlb=''Y''');
         if edit2.text<>'' then
             sql.add('and ypzlhai.ypdh='''+edit2.text+'''');
         sql.add(') clzhzl2');
         sql.add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
         sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
         sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
         sql.add(')  YPZLS');
         sql.add('left join clhg on clhg.clbh=YPZLS.clbh');
         sql.add('where  hgbh=:hgbh');
         sql.add('group by hgbh,ypzls.clbh,rateC');
         active:=true;
    end;
   end;
end;

procedure TDevCalenDar.DBGridEh4CellClick(Column: TColumnEh);
begin
   if checkbox2.checked then
   begin
   with query3 do
    begin
         active:=false;
         sql.Clear;
         sql.add('select ypzls.YPDH,hgbh,ypzls.clbh,isnull(sum(ypzls.clsl*isnull(clhg.rateC,1)),0) as Qty,rateC from (');
         sql.add('SELECT ypzls.YPDH  ,ypzls.BWBH ,ypzls.CLBH  ,ypzls.CLSL*ypzlhai.qty as clsl');
         sql.add(' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,clzl.clzmlb');
         sql.add('FROM ypzlhai ypzlhai');
         sql.add('left join ypzls on ypzls.ypdh=ypzlhai.ypdh');
         sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
         sql.add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
         sql.add(' WHERE ypzlhai.month ='''+combobox2.text+''' and  ypzlhai.year ='''+combobox4.text+''' ');
         if edit2.text<>'' then
             sql.add('and ypzlhai.ypdh='''+edit2.text+'''');
         sql.add('union all');
         sql.add('SELECT ypzls.YPDH  ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
         sql.add(' ,ypzls.CLSL*clzhzl.syl*ypzlhai.qty  as CLSL');
         sql.add(',clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh');
         sql.add(',clzl.clzmlb');
         sql.add('FROM ypzlhai ypzlhai');
         sql.add('left join ypzls on ypzls.ypdh=ypzlhai.ypdh');
         sql.add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
         sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
         sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
         sql.add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
         sql.add('WHERE ypzlhai.month ='''+combobox2.text+''' and  ypzlhai.year ='''+combobox4.text+''' and CLZHZL.SYL>0');
         if edit2.text<>'' then
             sql.add('and ypzlhai.ypdh='''+edit2.text+'''');
         sql.add('union all');
         sql.add('Select clzhzl2.YPDH,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH');
         sql.add(',clzhzl2.CLSL*clzhzl.syl*qty as CLSL');
         sql.add(' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh');
         sql.add(',clzl.clzmlb');
         sql.add(' from (');
         sql.add('SELECT ypzls.YPDH  ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
         sql.add(' ,ypzls.CLSL*clzhzl.syl as CLSL,ypzlhai.qty');
         sql.add(' ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh');
         sql.add(',clzl.clzmlb');
         sql.add('FROM ypzlhai ypzlhai');
         sql.add('left join ypzls on ypzls.ypdh=ypzlhai.ypdh');
         sql.add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
         sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
         sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
         sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
         sql.add('WHERE ypzlhai.month ='''+combobox2.text+''' and  ypzlhai.year ='''+combobox4.text+''' and CLZHZL.SYL>0  and clzl.clzmlb=''Y''');
         if edit2.text<>'' then
             sql.add('and ypzlhai.ypdh='''+edit2.text+'''');         
         sql.add(') clzhzl2');
         sql.add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
         sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
         sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
         sql.add(')  YPZLS');
         sql.add('left join clhg on clhg.clbh=YPZLS.clbh');
         sql.add('where  hgbh=:hgbh and ypzls.clbh=:clbh');
         sql.add('group by ypdh,hgbh,ypzls.clbh,rateC');
         active:=true;
    end;
   end;
end;

procedure TDevCalenDar.Button2Click(Sender: TObject);
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
        for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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


procedure TDevCalenDar.CheckBox2Click(Sender: TObject);
begin
   if checkbox2.Checked then
      panel10.visible:=true
   else
      panel10.visible:=false;
end;

procedure TDevCalenDar.BB3Click(Sender: TObject);
begin
  if QGameplan.fieldbyname('USERID').value=main.edit1.Text then
  begin
      QGameplan.requestlive:=true;
      QGameplan.cachedupdates:=true;
      QGameplan.Edit;
      QGameplan.fieldbyname('YN').Value:='0';
  end else
  begin
     showmessage('It is not yours,can not delete.');
     exit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
end;

procedure TDevCalenDar.BB2Click(Sender: TObject);
begin
  if (trim(Ed_Stage.Text) = '') or (trim(Ed_Season.Text) = '') then begin
    showmessage('Please Keyin Season and Stage !');
    exit;
  end;
  with QGameplan do
  begin
    requestlive:=true;
    cachedupdates:=true;
    Last;
    Append;
    FieldByName('Season').AsString:=Ed_Season.Text;
    FieldByName('Stage').AsString:=Ed_Stage.Text;
    FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
    FieldByName('UserID').AsString:=main.Edit1.Text;
    FieldByName('YN').Value:='1';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh6.columns[0].ButtonStyle:=cbsAuto;
end;

procedure TDevCalenDar.BB4Click(Sender: TObject);
begin
  if QGameplan.IsEmpty then abort;
  if QGameplan.fieldbyname('USERID').value <> main.edit1.Text then
  begin
    showmessage('It is not yours, can not modify.');
    exit;
  end;
  with QGameplan do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh6.columns[0].ButtonStyle:=cbsAuto;
end;

procedure TDevCalenDar.BB6Click(Sender: TObject);
begin
  QGameplan.active:=false;
  QGameplan.cachedupdates:=false;
  QGameplan.requestlive:=false;
  QGameplan.active:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  //
  DBGridEh6.columns[0].ButtonStyle:=cbsnone;
end;

procedure TDevCalenDar.BB5Click(Sender: TObject);
var i: Integer;
begin
  BB1.Enabled:=true;
  BB2.Enabled:=true;
  BB3.Enabled:=true;
  BB4.Enabled:=true;
  BB5.enabled:=false;
  BB6.enabled:=false;
  try
    QGameplan.cachedupdates:=true;
    QGameplan.requestlive:=true;
    QGameplan.first;
    for i:=1 to QGameplan.RecordCount do
    begin
      case QGameplan.updatestatus of
      usinserted:
        upGameplan.apply(ukinsert);

      usmodified:
        begin
          if QGameplan.fieldbyname('YN').value='0' then
            upGameplan.apply(ukdelete)
          else begin
            QGameplan.Edit;
            QGameplan.FieldByName('UserDate').AsString:=FormatDateTime('YYYY/MM/DD',Ndate);
            QGameplan.FieldByName('UserID').AsString:=main.Edit1.Text;
            upGameplan.apply(ukmodify);
          end;
        end;
      end;
      QGameplan.next;
    end;


    with QGameplan do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       active:=true;
    end;


    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;

procedure TDevCalenDar.BB1Click(Sender: TObject);
begin
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    with QGameplan do
    begin
      active:=false;
      sql.Clear;
      sql.add('select * from GamePlan where 1=1');
      if Ed_Season.text<>'' then
        sql.add('and Season ='''+Ed_Season.text+''' ');
      if Ed_Stage.text<>'' then
        sql.add('and Stage ='''+Ed_Stage.text+''' ');
      sql.add('order by Season,Stage,Gates');
      active:=true;
    end;
end;

procedure TDevCalenDar.bbt6Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  QGameplan.active  then
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

        eclApp.ActiveSheet.Cells.Font.Size := 8;
        eclApp.Range[eclApp.Cells[1, 1], eclApp.Cells[2, 1]].Merge;
        eclApp.Cells[1, 1] := 'Game Plan Dates and Gates';
        eclApp.Cells[3, 1] := 'CTS TP Deadline (VN +1day) - TP received later than this date (VN +1day) ';
        eclApp.Cells[4, 1] := 'Wear Test Sample PO.';
        eclApp.Cells[5, 1] := 'Purchasing PO to supplier deadline.';
        eclApp.Cells[6, 1] := '1st 2D B/P revision for TN ';
        eclApp.Cells[7, 1] := 'Purchasing 1st material tracking list.';
        eclApp.Cells[8, 1] := 'Initial Spec to Costing';
        eclApp.Cells[9, 1] := 'New material/ Material tracking list deadline for lab';
        eclApp.Cells[10, 1] := 'New material for pullover ETA';
        eclApp.Cells[11, 1] := 'New upper pattern confirmed for final 2D B/P'+#10+'(TPDD+20 days)';
        eclApp.Cells[12, 1] := 'Initinal Last upper send for 3D creation'+#10+'(Finail Construction)';
        eclApp.Cells[13, 1] := '2nd 2D Revision to HQ';
        eclApp.Cells[14, 1] := 'Tooling 2D confirm deadline';
        eclApp.Cells[15, 1] := '1st 3D send to HQ';
        eclApp.Cells[16, 1] := '1st 3D Revision';
        eclApp.Cells[17, 1] := '2nd 3D Revision';
        eclApp.Cells[18, 1] := 'Tooling 3D confirm deadline';
        eclApp.Cells[19, 1] := 'CFM to open tooling deadline';
        eclApp.Cells[20, 1] := 'Tooling ready';
        eclApp.Cells[21, 1] := 'TN-Sampling tooling making days';
        eclApp.Cells[22, 1] := 'Meeting with Production for R3 SR making assignment';
        eclApp.Cells[23, 1] := 'Material ETA';
        eclApp.Cells[24, 1] := 'Pullover confirm deadline (NG/NM)';
        eclApp.Cells[25, 1] := 'Sample TB to Sample Room Deadline (All).';
        eclApp.Cells[26, 1] := 'Final Spec to Costing (NM/NC/NG).';
        eclApp.Cells[27, 1] := 'Final Spec to Costing (TN/NU/NM+).';
        eclApp.Cells[28, 1] := 'Sample starting inspection day.';
        eclApp.Cells[29, 1] := 'Sample finished deadline.';
        eclApp.Cells[30, 1] := 'CTS inspection deadline.';
        eclApp.Cells[31, 1] := 'Sample Packing deadline.';
        eclApp.Cells[32, 1] := 'Sample X/F day.';
        eclApp.Cells[33, 1] := 'Internal Sample review meeting.';
        eclApp.Cells[34, 1] := 'Sample review meeting (HQ Review date).'+#10+'(Triad: R1/R2 Sample Tear Down (HQ Costing & HQ Development))';
        eclApp.Cells[35, 1] := 'PRODUCT REVIEW & ASSORTMENT FINALIZATION ';
        eclApp.Cells[36, 1] := 'Global Costing & HQ Development provide feedback on cost suggestions to CTS';
        eclApp.Cells[37, 1] := 'Internal TDM';
        eclApp.Cells[38, 1] := 'TDM  (HQ TDM Review date)';
        eclApp.Cells[39, 1] := 'Wear Test X/F day.';
        eclApp.Cells[40, 1] := 'Key features deadline to CTS.';
        eclApp.Cells[41, 1] := 'PTRSS deadline to CTS.';
        eclApp.Cells[42, 1] := 'PC deadline of 1st buy';
        eclApp.Cells[43, 1] := 'RFC of 1st buy';
        eclApp.Cells[44, 1] := 'RFC of 2nd buy';
        eclApp.Cells[45, 1] := 'RFC of 3rd buy';
        eclApp.Cells[46, 1] := 'CFM transfer to mass production deadline';


        QGameplan.First;
        j:=2;
        while   not   QGameplan.Eof   do
          begin
            eclApp.Cells(1,j):=QGameplan.Fields[0].Value+' '+QGameplan.Fields[1].Value;
            for   i:=2   to  QGameplan.fieldcount-4  do
            begin
              if (i = 2) and (QGameplan.Fields[i].Value = '.') then
                eclApp.Cells(i,j):=''
              else
                eclApp.Cells(i,j):=QGameplan.Fields[i].Value;
            end;
          QGameplan.Next;
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

procedure TDevCalenDar.QGameplanAfterScroll(DataSet: TDataSet);
begin
  if not QGameplan.IsEmpty then begin
    Label9.Caption := 'Season: ' + QGameplan.Fields[0].AsString;
    Label10.Caption := 'Stage: ' + QGameplan.Fields[1].AsString;
  end
  else begin
    Label9.Caption := '';
    Label10.Caption := '';
  end;
end;

end.
