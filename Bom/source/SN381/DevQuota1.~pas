unit DevQuota1;
                            
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, DBCtrls, GridsEh, DBGridEh, StdCtrls, ComCtrls,
  Buttons, ExtCtrls,comobj,fununit, Menus,StrUtils ;

type
  TDevQuota = class(TForm)
    Panel1: TPanel;
    BB7: TBitBtn;
    BB1: TBitBtn;
    bbt6: TBitBtn;
    XXZL: TQuery;
    XXZLS: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;                                                   
    XXZLXieXing: TStringField;
    XXZLSheHao: TStringField;
    XXZLArticle: TStringField;
    XXZLXieMing: TStringField;
    XXZLYSSM: TStringField;
    XXZLKFJC: TStringField;
    XXZLBZCC: TStringField;
    XXZLIMGName: TStringField;
    XXZLJiJie: TStringField;
    XXZLDAOMH: TStringField;
    TemQry: TQuery;
    UpdateSQL1: TUpdateSQL;
    XXZLSCLBH: TStringField;
    XXZLSYWPM: TStringField;
    XXZLSZWPM: TStringField;
    XXZLSDWBH: TStringField;
    XXZLSZSDH: TStringField;
    XXZLSZSYWJC: TStringField;
    XXZLSCLZMLB: TStringField;
    XXZLSSamplePrice: TCurrencyField;
    XXZLXX: TStringField;
    XXZLSS: TStringField;
    XXMQ: TQuery;
    DS3: TDataSource;
    UpdateSQL2: TUpdateSQL;
    XXMQCLBH: TStringField;
    XXMQYWPM: TStringField;
    XXMQZWPM: TStringField;
    XXMQDWBH: TStringField;
    XXMQZSDH: TStringField;
    XXMQZSYWJC: TStringField;
    XXMQSamplePrice: TCurrencyField;
    XXZLDEVCODE: TStringField;
    mainPC: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    Label12: TLabel;
    Label25: TLabel;
    Edit9: TEdit;
    Edit12: TEdit;
    Button3: TButton;
    CB2: TComboBox;
    ArticleEdit: TEdit;
    Edit16: TEdit;
    SREdit: TEdit;
    Edit8: TEdit;
    Edit10: TEdit;
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    SeasonEdit: TEdit;
    Edit6: TEdit;
    BuyNoEdit: TEdit;
    DBGrid1: TDBGridEh;
    TS2: TTabSheet;
    Panel3: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit7: TEdit;
    CB1: TComboBox;
    Button2: TButton;
    Popup1: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    Popup2: TPopupMenu;
    Modify2: TMenuItem;
    Save2: TMenuItem;
    Cancel2: TMenuItem;
    XXMQuserID: TStringField;
    XXMQuserdate: TDateTimeField;
    XXZLSuserID: TStringField;
    XXZLSuserdate: TDateTimeField;
    N1: TMenuItem;
    SRList1: TMenuItem;
    N2: TMenuItem;
    SRList2: TMenuItem;
    Label24: TLabel;
    Edit11: TEdit;
    SBtn4: TSpeedButton;
    SBtn3: TSpeedButton;
    SBtn1: TSpeedButton;
    SBtn2: TSpeedButton;
    DisSKUBox2: TCheckBox;
    DisSKUBox1: TCheckBox;
    BWLBCombo1: TComboBox;
    Label26: TLabel;
    Label27: TLabel;
    BWLBCombo2: TComboBox;
    XXZLSFlag: TBooleanField;
    TemQry1: TQuery;
    XXZLSBOMDATE: TDateTimeField;
    XXZLSBWLB: TStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    XXMQCQDH: TStringField;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    XXZLSCQDH: TStringField;
    SupEdit: TEdit;
    Label28: TLabel;
    SBtn5: TSpeedButton;
    RGTable: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    XXMQDeliveryTerm: TStringField;
    XXMQProdLeadTime: TIntegerField;
    XXMQForecast_Leadtime: TIntegerField;
    XXMQProdMOQ: TCurrencyField;
    XXMQSurcharge: TCurrencyField;
    XXMQDyingfee: TCurrencyField;
    XXMQExtraPrice: TCurrencyField;
    XXMQSeason: TStringField;
    Label29: TLabel;
    Edit13: TEdit;
    XXZLSProdLeadTime: TIntegerField;
    XXZLSForecast_Leadtime: TIntegerField;
    XXZLSProdMOQ: TCurrencyField;
    XXZLSSurcharge: TCurrencyField;
    XXZLSDyingfee: TCurrencyField;
    XXZLSExtraPrice: TCurrencyField;
    XXZLSDeliveryTerm: TStringField;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label38: TLabel;
    Label39: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Button4: TButton;
    ComboBox1: TComboBox;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    ComboBox2: TComboBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    Edit22: TEdit;
    DBGridEh1: TDBGridEh;
    DS4: TDataSource;
    Query1: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    CurrencyField1: TCurrencyField;
    StringField6: TStringField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField1: TDateTimeField;
    StringField9: TStringField;
    StringField10: TStringField;
    Label40: TLabel;
    DBText5: TDBText;
    DBGrid3: TDBGridEh;
    XXMQDEVCODE: TStringField;
    XXMQPriceFormula: TStringField;
    CalculateQuery: TQuery;
    XXZLSPriceFormula: TStringField;
    Query1PriceFormula: TStringField;
    XXMQCostingRemark: TStringField;
    Query1CostingRemark: TStringField;
    CheckBox5: TCheckBox;
    TabSheet4: TTabSheet;
    DBGridEh2: TDBGridEh;
    DS5: TDataSource;
    QueryReC: TQuery;
    UpdateSQL3: TUpdateSQL;
    Panel6: TPanel;
    Label44: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label50: TLabel;
    Button5: TButton;
    Edit25: TEdit;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Button6: TButton;
    QueryReCCLBH: TStringField;
    QueryReCGSBH: TStringField;
    QueryReCZSBH: TStringField;
    QueryReCSeason: TStringField;
    QueryReCSamplePrice: TFloatField;
    QueryReCUSERID: TStringField;
    QueryReCUSERDATE: TDateTimeField;
    QueryReCYN: TStringField;
    QueryReCCostingRemark: TStringField;
    QueryReCPriceFormula: TStringField;
    Button7: TButton;
    Query1YN: TBooleanField;
    Query1sku: TStringField;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label45: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label49: TLabel;
    Button8: TButton;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit26: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Button10: TButton;
    DBGridEh3: TDBGridEh;
    QuerySKU: TQuery;
    DS6: TDataSource;
    UpdateSQL4: TUpdateSQL;
    CheckBox8: TCheckBox;
    QuerySKUCLBH: TStringField;
    QuerySKUZSBH: TStringField;
    QuerySKUYN: TStringField;
    QuerySKUSeason: TStringField;
    QuerySKUXieXing: TStringField;
    QuerySKUSheHao: TStringField;
    QuerySKUSKU: TStringField;
    QuerySKUrn: TFloatField;
    Label52: TLabel;
    ComboBox4: TComboBox;
    XXZLSPurRemark: TStringField;
    Query1PurRemark: TStringField;
    QueryCostingSize: TQuery;
    XXZLSCCQQ: TStringField;
    XXZLSCCQZ: TStringField;
    Button9: TButton;
    CheckBox9: TCheckBox;
    Label53: TLabel;
    DBText6: TDBText;
    Button11: TButton;
    XXZLSywsm: TStringField;
    CheckBox10: TCheckBox;
    Label54: TLabel;
    XXZLSeason: TStringField;
    XXZLSFreight: TStringField;
    CheckBox11: TCheckBox;
    XXZLKFCQ: TStringField;
    TabSheet6: TTabSheet;
    Panel8: TPanel;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    DBGridEh4: TDBGridEh;
    Label56: TLabel;
    Edit4: TEdit;
    DS7: TDataSource;
    BitBtn2: TBitBtn;
    BitBtn6: TBitBtn;
    Button12: TButton;
    BB2: TBitBtn;
    UploadQuery: TQuery;
    UpdateSQL5: TUpdateSQL;
    UploadQueryCLBH: TStringField;
    UploadQueryGSBH: TStringField;
    UploadQueryZSBH: TStringField;
    UploadQuerySeason: TStringField;
    UploadQuerySamplePrice: TFloatField;
    UploadQueryUSERID: TStringField;
    UploadQueryUSERDATE: TDateTimeField;
    UploadQueryYN: TStringField;
    UploadQueryProdLeadTime: TIntegerField;
    UploadQueryForecast_Leadtime: TIntegerField;
    UploadQueryProdMOQ: TStringField;
    UploadQueryExtraPrice: TCurrencyField;
    UploadQuerySurcharge: TCurrencyField;
    UploadQueryDyingfee: TCurrencyField;
    UploadQueryCostingRemark: TStringField;
    UploadQueryPriceFormula: TStringField;
    UploadQueryXieXing: TStringField;
    UploadQuerySheHao: TStringField;
    UploadQueryPurRemark: TStringField;
    UploadQueryFreight: TStringField;
    UploadQueryKFCQ: TStringField;
    opendialog: TOpenDialog;
    Query1Freight: TStringField;
    XXZLSCostingRemark: TStringField;
    UploadCBDEx: TQuery;
    UploadCBDExSeason: TStringField;
    UploadCBDExGSBH: TStringField;
    UploadCBDExCWHL: TFloatField;
    UploadCBDExUSERID: TStringField;
    UploadCBDExUSERDATE: TDateTimeField;
    DataSource1: TDataSource;
    UpdateSQL6: TUpdateSQL;
    UploadCBDExCWHL_ID: TFloatField;
    DBGridEh5: TDBGridEh;
    UploadQueryKHDH: TStringField;
    UploadCBDExKHBH: TStringField;
    UploadCBDExCustomerCFMDate: TDateTimeField;
    XXZLSzsdhflex: TStringField;
    CBBrand: TComboBox;
    Label58: TLabel;
    CB_FTY: TComboBox;
    LB_FTY: TLabel;
    DBGrid2: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure XXZLSSamplePriceSetText(Sender: TField; const Text: String);
    procedure XXMQSamplePriceSetText(Sender: TField; const Text: String);
    procedure Modify1Click(Sender: TObject);
    procedure Modify2Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Cancel2Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure SRList1Click(Sender: TObject);
    procedure SRList2Click(Sender: TObject);
    procedure SBtn3Click(Sender: TObject);
    procedure RB1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure DS2DataChange(Sender: TObject; Field: TField);
    procedure ComboBox3Change(Sender: TObject);
//    procedure Button13Click(Sender: TObject);
//    procedure Button9Click(Sender: TObject);
    //procedure mainPCChange(Sender: TObject);
  private
    GSBH_SFL:String;
    MaterailCBD_TB:string;
    { Private declarations }
    procedure ExportExcel(Query:TQuery;DetQry:TQuery);
    procedure SaveBtn(Query:TQuery;Cancel:TMenuItem;Save:TMenuItem;IsFlag:boolean);
    function  GetSpeedButtonString(SBtn:TSpeedButton;EditText:String):string;
    function GetSpeedSeason(EditText:string):string; 
    procedure CostingSize(Query,QueryCostingSize:TQuery;Xiexing,SheHao,SR,sku:String);
    procedure RemoveDuplicate(Query:TQuery);
    procedure ExportExceltw(Query:TQuery;DetQry:TQuery);     
    procedure  GetSpeedButton();
  public
    { Public declarations }
  end;
var
  DevQuota: TDevQuota;
  NDate:TDate;
  KHDH,KFCQ,FTY:string;
implementation

uses main1,DevQuotaEx1,DevQuotaSRList1;
//TabSheet4.Tanvisible:=false;

{$R *.dfm}
procedure TDevquota.GetSpeedButton();
begin
  if main.Edit2.Text='CDC' then
  begin     
    KHDH:='036';
    if CB_FTY.ItemIndex=0 then
      begin
          FTY:='LYN-9Z';
          KFCQ:='JNG'
      end
      else if CB_FTY.ItemIndex=1 then
      begin
          KFCQ:='YQA';
          FTY:='LYI-6L';
      end;
  end
  else if (main.Edit2.Text = 'VDH') and (CBBrand.Text = 'TEVA') then
  begin
      KHDH:='0054';
      if CB_FTY.ItemIndex=0 then
      begin
          KFCQ:='YIH';
          FTY:='LYN-9Z';   //品牌定義名稱  無資料代用LYN
      end
      else if CB_FTY.ItemIndex=1 then
      begin
          KFCQ:='YQA';
          FTY:='LYI-6L';   //品牌定義名稱  無資料代用LYN
      end;
  end
  //////////////////////
  else if (main.Edit2.Text = 'VDH') and (CBBrand.Text = 'HOKA') then
  begin
      KHDH:='0062';
      if CB_FTY.ItemIndex=0 then
      begin
          KFCQ:='YIH';
          FTY:='LYN-9Z';   //品牌定義名稱  無資料代用LYN
      end
      else if CB_FTY.ItemIndex=1 then
      begin
          KFCQ:='YQA';
          FTY:='LYI-6L';   //品牌定義名稱  無資料代用LYN
      end;
  end

  ////////////////////

  else if main.Edit2.Text='HBA' then
  begin
      KHDH:='0062';
      if CB_FTY.ItemIndex=0 then
      begin
          KFCQ:='YIH';
          FTY:='LYN-9Z';   //品牌定義名稱  無資料代用LYN
      end
      else if CB_FTY.ItemIndex=1 then
      begin
          KFCQ:='YQA';
          FTY:='LYI-6L';   //品牌定義名稱  無資料代用LYN
      end;
  end
  else if main.Edit2.Text='TBDC' then
  begin
      KHDH:='0054';
      if CB_FTY.ItemIndex=0 then
      begin
          KFCQ:='TYB';
          FTY:='LYN-9Z';   //品牌定義名稱  無資料代用LYN
      end
      else if CB_FTY.ItemIndex=1 then
      begin
          KFCQ:='YQA';
          FTY:='LYI-6L';   //品牌定義名稱  無資料代用LYN
      end;
  end
  else if main.Edit2.Text='VC1' then
      if CBBrand.ItemIndex=0 then
          KHDH:='0079'
      else if CBBrand.ItemIndex=1 then
          KHDH:='0078'
      else if CBBrand.ItemIndex=2 then
          KHDH:='0082';
end;
function TDevquota.GetSpeedButtonString(SBtn:TSpeedButton;EditText:String):string;
begin
   if SBtn.Caption='=' then
     result:=' = '''+EditText+''' ';
   if SBtn.Caption='%' then
     result:=' like '''+EditText+'%'' ';
   if SBtn.Caption='N%' then
     result:=' not like '''+EditText+'%'' ';
end;


function TDevquota.GetSpeedSeason(EditText:String):String;
begin

    if (copy(EditText,5,2) = '01') or (copy(EditText,5,2) = '02') or (copy(EditText,5,2) = '03') then
        result:=copy(EditText,3,2)+'F'
    else if (copy(EditText,5,2) = '04') or (copy(EditText,5,2) = '05') or (copy(EditText,5,2) = '06') then
        result:=copy(EditText,3,2)+'H'
    else if (copy(EditText,5,2) = '07') or (copy(EditText,5,2) = '08') or (copy(EditText,5,2) = '09') then
        result:=inttostr(strtoint(copy(EditText,3,2))+1)+'S'
    else if (copy(EditText,5,2) = '10') or (copy(EditText,5,2) = '11') or (copy(EditText,5,2) = '12') then
        result:=inttostr(strtoint(copy(EditText,3,2))+1)+'U'
    else
      showmessage('BuyNo need to similar with 202301');
end;
                  {
function TDevquota.GetSpeedSeason(EditText:String):string;
begin
   if (copy(EditText,3,1)='S') or (copy(EditText,3,1)='U') then
     result:=' '''+copy(EditText,1,2)+'S'' or '''+copy(EditText,1,2)+'U='' ';
   if (copy(EditText,3,1)='F') or (copy(EditText,3,1)='H')   then
     result:=' '''+copy(EditText,1,2)+'F'' or '''+copy(EditText,1,2)+'H='' ';
end;}
//
procedure TDevQuota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDevQuota.FormDestroy(Sender: TObject);
begin
  DevQuota:=Nil;
end;

procedure TDevQuota.Button1Click(Sender: TObject);
begin
  GetSpeedButton();
  if (CheckBox5.Checked=true) and (BuyNoEdit.Text='') and (SeasonEdit.text='') then
    BuyNoEdit.Text:=formatdatetime('yyyyMM',Ndate);
  if BuyNoEdit.Text<>'' then
    SeasonEdit.Text:=GetSpeedSeason(BuyNoEdit.Text);
  if (SeasonEdit.text='') and (Edit3.Text='') and(Edit11.text='') and(CheckBox5.Checked=false) then
  begin
     showmessage('Please input season or Article or BuyNO or SR# or Mine keypoint ');
   end else
   begin
      XXZLS.Active:=false;
      with XXZL do
      begin
         active:=false;
         sql.clear;
         sql.add('select XXZL.XieXing,XXZL.SheHao,XXZL.Article,xxzls.XieXing as XX,xxzls.SheHao as SS,');
         sql.add('       XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,XXZL.IMGName,XXZL.DAOMH,KFXXZL.DEVCODE');  
         sql.Add('       ,CostingPriceList.PricingSeason as JiJie');

         if (main.Edit2.Text='CDC') or (main.Edit2.Text='VB1') then
             begin
              sql.Add('       ,case when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''F'' then ''FH''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''H'' then ''FH''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''S'' then ''SS''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''U'' then ''SS''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');    
              sql.Add('       else '''' end as Season,XXZL.KFCQ');
             end
         else if main.Edit2.Text='VC1' then
             begin
              sql.Add('       ,case when SUBSTRING(CostingPriceList.PricingSeason,1,2)=''FA'' then ''FW''+ Right(CostingPriceList.PricingSeason,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,1,2)=''WI'' then ''FW''+ Right(CostingPriceList.PricingSeason,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,1,2)=''SP'' then ''SS''+ Right(CostingPriceList.PricingSeason,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,1,2)=''SU'' then ''SS''+ Right(CostingPriceList.PricingSeason,2) ');
              sql.Add('       else '''' end as Season,XXZL.KFCQ');
             end
         else
          begin
              sql.Add('       ,CostingPriceList.PricingSeason as Season,XXZL.KFCQ ');
          end;
         sql.Add('From (');                 
         if main.Edit2.Text='VDH' then
            sql.Add('Select PricingSeason,SKU,CheckID,color_code from CostingPriceList  ')
         else
            sql.Add('Select PricingSeason,SKU,CheckID from CostingPriceList  ');
         sql.Add('where (ModelDescription not like ''%CBY%''   or ModelDescription is null)');
         if SeasonEdit.Text<>'' then
            SQL.Add('and CostingPriceList.PricingSeason like '''+SeasonEdit.Text+'%''');
         sql.add('and CostingPriceList.KFCQ='''+KFCQ+'''');
         if (main.Edit2.Text='CDC') or (main.Edit2.Text='VB1') or (main.Edit2.Text='VC1') then
         begin
           sql.Add('UNION  ALL ');
           sql.Add('Select CostingSeason as PricingSeason,SKU,username as CheckID  from CostingPriceListNew');
           sql.Add('where Round like ''FNL%''');
           if SeasonEdit.Text<>'' then
              SQL.Add('and CostingPriceListNew.CostingSeason like '''+SeasonEdit.Text+'%''');
           sql.add('and CostingPriceListNew.Factory='''+FTY+'''');
         end;
         sql.Add(')CostingPriceList');
         if (main.Edit2.Text='VDH') or (main.Edit2.Text='HBA') then
          sql.add('inner join XXZL with (nolock) on CostingPriceList.SKU+''-''+CostingPriceList.color_code = XXZL.article ')
         else
          sql.add('inner join XXZL with (nolock) on CostingPriceList.SKU = left(XXZL.article,LEN(CostingPriceList.SKU))  and XXZL.JiJie is not null ');
         sql.add('and XXZL.KFCQ='''+KFCQ+''' ');   
         sql.add('and XXZL.KHDH='''+KHDH+'''');
         sql.add('inner join KFXXZL on xxzl.XieXing=KFXXZL.XieXing and xxzl.SheHao=KFXXZL.SheHao ');
         sql.add('inner join KFZL on KFZL.KFDH=XXZL.KHDH ');
         //SQL.Add('left join(select XXZLS.XieXing,XXZLS.SheHao');
         //24U
         SQL.Add('left join(select XXZLS.XieXing,XXZLS.SheHao,CostingPriceList.PricingSeason  ---,XXZLS.CLBH,MaterialCBD_His.PriceFormula ---維修查找不正常反紅');
         //SQL.Add('		  FROM (select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.BWLB from XXZLS');
         //SQL.Add('		  		  FROM CostingPriceList');
         sql.Add('    From (');
         //
         if main.Edit2.Text='VDH' then
          sql.Add('Select PricingSeason,SKU,color_code from CostingPriceList  ')
         else
          sql.Add('Select PricingSeason,SKU from CostingPriceList  ');
         sql.Add('where 1=1');
         if SeasonEdit.Text<>'' then
            SQL.Add('and CostingPriceList.PricingSeason like '''+SeasonEdit.Text+'%''');
         sql.add('and CostingPriceList.KFCQ='''+KFCQ+'''');          
         if (main.Edit2.Text='CDC') or (main.Edit2.Text='VB1') or (main.Edit2.Text='VC1') then
         begin             
           sql.Add('UNION  ALL ');
           sql.Add('Select CostingSeason as PricingSeason,SKU  from CostingPriceListNew');
           sql.Add('where Round like ''FNL%''');
           if SeasonEdit.Text<>'' then
              SQL.Add('and CostingPriceListNew.CostingSeason like '''+SeasonEdit.Text+'%''');
           sql.add('and CostingPriceListNew.Factory='''+FTY+'''');
         end;
         //
         sql.Add(')CostingPriceList');
         if main.Edit2.Text='VDH' then
          SQL.Add('		  		  inner join XXZL with (nolock) on CostingPriceList.SKU+''-''+CostingPriceList.color_code = xxzl.article  and XXZL.JiJie is not null ')
         else
          SQL.Add('		  		  inner join XXZL with (nolock) on CostingPriceList.SKU = left(xxzl.article,charindex(''/'',xxzl.article+''/'')-1)   and XXZL.JiJie is not null ');
         sql.add('and XXZL.KFCQ='''+KFCQ+''' ');
         sql.add('and XXZL.KHDH='''+KHDH+'''');
         SQL.Add('		  		  inner join ');
         SQL.Add('		  			(select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.BWLB from XXZLS');
         SQL.Add('					      union all ');
         SQL.Add('				    select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB from XXZLS');
         SQL.Add('				    inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH ');
         {SQL.Add('					union all ');  第三層子材料查詢伺服器狀況不好無法完成- 使用率低關閉
         SQL.Add('		  	select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB');
         SQL.Add('		    from (select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BWLB from XXZLS');
         SQL.Add('		          inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH');
         SQL.Add('		          ) XXZLS');
         SQL.Add('		    inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH   ');  }
         SQL.Add('		        )XXZLS on XXZLS.XieXing=XXZL.XieXing and  XXZLS.Shehao=XXZL.Shehao');

         SQL.Add('      inner JOIN  CLZL on CLZL.CLDH=XXZLS.CLBH ');
         SQL.Add('      Left JOIN  MaterialCBD_His ON MaterialCBD_His.ZSBH=XXZLS.CSBH and MaterialCBD_His.CLBH=XXZLS.CLBH and MaterialCBD_His.season=');
         if (main.Edit2.Text='CDC') or (main.Edit2.Text='VB1') then
             begin
              sql.Add('       (case when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''F'' then ''FH''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''H'' then ''FH''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''S'' then ''SS''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''U'' then ''SS''+ SUBSTRING(CostingPriceList.PricingSeason,1,2)  end)');
             end
         else if main.Edit2.Text='VC1' then
             begin
              sql.Add('       (case when SUBSTRING(CostingPriceList.PricingSeason,1,2)=''FA'' then ''FW''+ Right(CostingPriceList.PricingSeason,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,1,2)=''WI'' then ''FW''+ Right(CostingPriceList.PricingSeason,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,1,2)=''SP'' then ''SS''+ Right(CostingPriceList.PricingSeason,2) ');
              sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,1,2)=''SU'' then ''SS''+ Right(CostingPriceList.PricingSeason,2)  end)');
             end
         else
         begin
              sql.Add('      CostingPriceList.PricingSeason');
         end;
         SQL.add('               and MaterialCBD_His.YN=0 and MaterialCBD_His.PriceFormula<>'''' and MaterialCBD_His.PriceFormula is not null');
         SQL.add('             and MaterialCBD_His.KFCQ=XXZL.KFCQ');
         if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='CDC')then
             sql.Add('and MaterialCBD_His.GSBH=''VB1''')
         else
             SQL.add('and MaterialCBD_His.GSBH='''+main.Edit2.Text+''''); 
         sql.add('and MaterialCBD_His.KHDH='''+KHDH+'''');
         SQL.add('      Left join MaterialCBDNo on MaterialCBDNo.XieXing=XXZLS.XieXing and MaterialCBDNo.SheHao=XXZLS.SheHao ');
         SQL.add('              and MaterialCBDNo.CLBH=XXZLS.CLBH and MaterialCBDNo.Season=CostingPriceList.PricingSeason ');
          if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='CDC')then
               sql.add('and MaterialCBDNo.GSBH=''VB1''')
          else 
              sql.add('and MaterialCBDNo.GSBH='''+main.Edit2.Text+'''');
         SQL.add('      LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=XXZLS.CSBH and ZSZL_DEV.GSBH = ''CDC'' ');
         //SQL.add('      and MaterialCBDNo.CLBH=XXZLS.CLBH ');
         //等24U下單完畢後啟用
         SQL.Add('      Where IsNull(MaterialCBD_His.PriceFormula,'''')=''''  AND CLZL.CLZMLB=''N'' and IsNull(MaterialCBDNo.YN,0)<>1 ');
         if ((checkbox3.Checked=true) and (checkbox4.Checked=false)) then
            sql.add('       and CLZL.CQDH=''TW''');
         if ((checkbox3.Checked=false) and (checkbox4.Checked=true)) then
            sql.add('       and CLZL.CQDH=''VN'''); 
         if SeasonEdit.Text<>'' then
            SQL.Add('       and CostingPriceList.PricingSeason like '''+SeasonEdit.Text+'%''');
         if BWLBCombo2.ItemIndex>0 then
            SQL.Add('      and (XXZLS.BWLB='+Copy(BWLBCombo2.Text,1,1)+') ');
         if SupEdit.Text<>'' then
            SQL.Add('      and XXZLS.CSBH '+GetSpeedButtonString(SBtn5,SupEdit.Text) );
            SQL.Add('      and XXZLS.CSBH <>'''' ');
            SQL.Add('      and XXZLS.CSBH <>''JNG'' ');
            SQL.Add('      and XXZLS.CSBH <>''YQA'' ');
            SQL.Add('      and XXZLS.CSBH <>''FNS'' ');

         SQL.Add('      Group by XXZLS.XieXing,XXZLS.SheHao,CostingPriceList.PricingSeason');
         SQL.Add('      ) XXZLS on xxzls.XieXing=xxzl.XieXing and xxzls.SheHao=xxzl.SheHao and XXZLS.PricingSeason=CostingPriceList.PricingSeason');
         //
         sql.add('where 1=1');
         if Edit1.Text<>'' then
            sql.add('and XXZL.XieXing like '''+edit1.Text+'''');
         if Edit2.Text<>'' then
            sql.add(' and XXZL.SheHao like '''+edit2.Text+'''');
         if Edit3.Text<>'' then
            sql.add(' and XXZL.ARTICLE '+GetSpeedButtonString(SBtn4,Edit3.Text) );
         ////sql.add(' and KFZL.KFJC like '+''''+ComboBox5.Text+'''');
         if Edit5.Text<>'' then
            sql.add(' and XXZL.XieMing like '+''''+edit5.Text+'%'+'''');
         if Edit11.Text<>'' then
            sql.Add('and KFXXZL.DEVCODE '+GetSpeedButtonString(SBtn3,Edit11.Text) );
         //if BuyNoEdit.Text<>'' then
         //   sql.add('and exists (select XieXing,SheHao from DDZl where DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' group by XieXing,Shehao) ' );
         if Edit6.Text<>'' then
            sql.add('  and XXZL.DAOMH like ''%'+Edit6.Text+'%'' ');
            //sql.add('  and KFXXZL.JiJie = '+GetSpeedSeason(SeasonEdit.Text)+'=KFXXZL.JiJie ');
         if CheckBox5.Checked=true then   //使用者上傳
            sql.add('and CostingPriceList.CheckID like '''+main.edit1.text+'''');
         if DisSKUBox2.Checked=false then
            sql.add('and not exists (select XieXing from XXZL_H where XXZL_H.XieXing=XXZL.XieXing and XXZL_H.SheHao =XXZL.SheHao ) ');
         sql.add('group by XXZL.XieXing,XXZL.SheHao,XXZL.Article,xxzls.XieXing,xxzls.SheHao, ');
         sql.add('		XXZL.XieMing,XXZL.YSSM,KFZL.KFJC,XXZL.BZCC,XXZL.IMGName,XXZL.DAOMH,KFXXZL.DEVCODE,CostingPriceList.PricingSeason,XXZL.KFCQ');
         sql.add(' order by xxzls.SheHao desc,XXZL.XieXing,XXZL.Shehao');
         //funcobj.WriteErrorLog(sql.Text);
         if CheckBox9.Checked =true then
            showmessage(SQL.Text);
         active:=true;
      end;
      //Button2.Click;//XXZLS.Active:=true;
      BBT6.Enabled:=true;
   end;
end;


procedure TDevQuota.BB1Click(Sender: TObject);
begin
  Panel2.Visible:=true;
  Panel4.Visible:=true;
end;

procedure TDevQuota.BB7Click(Sender: TObject);
begin
  close();
end;

procedure TDevQuota.FormCreate(Sender: TObject);
//var i:integer;
begin
  with TemQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select getdate() as NDate');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  with TemQry do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select SFL from Bgszl where GSDH='''+main.Edit2.Text+''' ');
    active:=true;
    GSBH_SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
  MainPC.ActivePageIndex:=1;    
  PC1.ActivePageIndex:=0;
  //VA12 只輸入特定材料
 { if GSBH_SFL='PD' then
  begin
    RB1.Checked:=true; //暫存表格
    RGTable.Enabled:=false;
    BWLBCombo1.Enabled:=false;
    BWLBCombo2.Enabled:=false;
    BWLBCombo1.ItemIndex:=2;
    BWLBCombo2.ItemIndex:=2;
    //DBGrid2.Columns[0].Visible:=false;
  end; }
  if (main.edit1.text='51267') or (main.edit1.text='51295') then
  begin
    Button9.Visible:=true;//全部重跑分段判斷
    CheckBox9.Visible:=true;
    CheckBox10.Visible:=true;
    //CheckBox9.Checked:=true;
  end;
  //CBD成本單價表格
  MaterailCBD_TB:=RB1.Hint;
  if main.Edit2.Text='VC1' then
        begin
          CBBrand.Items.Clear ;
          CBBrand.Items.Add('1-Cariuma');    //0079
          CBBrand.Items.Add('2-Uniqlo');    //0078
          CBBrand.Items.Add('3-Vessi');
          CBBrand.ItemIndex:=0;
          LB_FTY.Visible:=false;
          CB_FTY.Visible:=false;
          SeasonEdit.Text:='Winter';
          CheckBox1.Checked:=False;
        end
  else if main.Edit2.Text='TBDC' then
  begin
      CB_FTY.Items.Clear ;
      CB_FTY.Items.Add('TYB');
      CB_FTY.Items.Add('YQA');
      CB_FTY.ItemIndex:=0;
      CBBrand.Items.Clear ;
      CBBrand.Items.Add('New Balance');    //0081
      CBBrand.ItemIndex:=0;
      Button9.Visible:=true;//全部重跑分段
  end
  else if main.Edit2.Text='HBA' then
  begin
      CB_FTY.Items.Clear ;
      CB_FTY.Items.Add('YIH');
      CB_FTY.Items.Add('YQA');
      CB_FTY.ItemIndex:=0;
      CBBrand.Items.Clear ;
      CBBrand.Items.Add('HOKA');    //0062
      CBBrand.ItemIndex:=0;
      Button9.Visible:=true;//全部重跑分段
  end
  else if main.Edit2.Text='VDH' then
  begin
      CB_FTY.Items.Clear ;
      CB_FTY.Items.Add('YIH');
      CB_FTY.Items.Add('YQA');
      CB_FTY.ItemIndex:=0;
      CBBrand.Items.Clear ;
      CBBrand.Items.Add('TEVA');    //0054
      CBBrand.Items.Add('HOKA');    //007
      CBBrand.ItemIndex:=0;
      Button9.Visible:=true;//全部重跑分段
  end;


end;

procedure TDevQuota.Button2Click(Sender: TObject);
begin
  GetSpeedButton();
if XXZL.Active=false then XXZL.Active:=true;
  with XXZLS do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select xh,CONVERT(Bit,IsNull(Max(MaterialCBDNo.YN),0)) as Flag,XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,');
    SQL.Add('CLZL.DWBH,Max(XXZLS.CSBH) as ZSDH,Max(ZSZL.ZSYWJC) as ZSYWJC,CLZL.CLZMLB');
    sql.Add('        ,MaterialCBD_His.SamplePrice,MaterialCBD_His.userID,MaterialCBD_His.userdate,MaterialCBD_His.PriceFormula,MaterialCBD_His.CostingRemark,MaterialCBD_His.Freight');

    sql.Add('       ,Max(XXZLS.USERDATE) as BOMDATE,Max(XXZLS.BWLB) as BWLB,CLZL.CQDH');
    sql.Add('       ,MaterialMOQ.ProdLeadTime,MaterialMOQ.Forecast_Leadtime,MaterialMOQ.ProdMOQ');
    sql.Add('        ,MaterialMOQ.Surcharge,MaterialMOQ.Dyingfee,MaterialMOQ.ExtraPrice');
    sql.Add('        ,ZSZL_DEV.DeliveryTerm,MaterialMOQ.Remark as PurRemark,CCQQ,max(CCQZ) as CCQZ,BWZL.ywsm,zszl_flex.zsdhflex');
    SQL.Add('FROM (');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.BWLB,XXZLS.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH   ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  ');
    SQL.Add(' union all ');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH    ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
    SQL.Add(' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  ');
    SQL.Add(' union all ');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,CLZHZL.USERDATE,CCQQ,CCQZ,XH,XXZLS.BWBH    from ( ');
    SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BWLB,CCQQ,CCQZ,XH,XXZLS.BWBH  ');
    SQL.Add(' from XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH ');
    SQL.Add(' where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao ) XXZLS ');
    SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
    SQL.Add(' ) XXZLS ');
    SQL.Add('inner JOIN CLZL ON XXZLS.CLBH = CLZL.cldh');
    SQL.Add('inner JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH');
    SQL.Add('LEFT JOIN BWZL  ON XXZLS.BWBH = BWZL.bwdh');
    
    // add Season
    SQL.add('Left Join MaterialCBD_His ON  MaterialCBD_His.ZSBH=XXZLS.CSBH and MaterialCBD_His.CLBH=XXZLS.CLBH');
    SQL.add('       and MaterialCBD_His.Season=:Season and MaterialCBD_His.YN=0');             
    sql.add('and MaterialCBD_His.KFCQ='''+KFCQ+'''');
    if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='HBA')then
         sql.add('and MaterialCBD_His.GSBH=''VB1''')
    else
        sql.add('and MaterialCBD_His.GSBH='''+main.Edit2.Text+''''); 
    sql.add('and MaterialCBD_His.KHDH='''+KHDH+'''');

    SQL.add('Left join MaterialCBDNo on MaterialCBDNo.XieXing=XXZLS.XieXing and MaterialCBDNo.SheHao=XXZLS.SheHao ');
    SQL.add('      and MaterialCBDNo.CLBH=XXZLS.CLBH and MaterialCBDNo.Season=:JiJie');
    if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='HBA')then
         sql.add('and MaterialCBDNo.GSBH=''VB1''')
    else 
        sql.add('and MaterialCBDNo.GSBH='''+main.Edit2.Text+'''');

    sql.Add('Left JOIN (select CLBH,ZSBH,Season,ProdLeadTime,Forecast_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice,MaterialMOQ.Remark ');
    sql.Add('               from(');
    sql.Add('                   select CLBH,ZSBH,Season,ProdLeadTime,Forecast_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice,MaterialMOQ.Remark from MaterialMOQ ');
    sql.Add('                   UNION ALL');
    sql.Add('                   select CLZL_LS.JHDH as CLBH,ZSBH,season,ProdLeadTime,Forecast_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice,MaterialMOQ.Remark from MaterialMOQ ');
    sql.Add('                   INNER  join CLZL_LS on CLZL_LS.CLDH = MaterialMOQ.CLBH');
    sql.Add('                   ) MaterialMOQ');
    sql.Add('           )MaterialMOQ on MaterialMOQ.ZSBH=XXZLS.CSBH and  MaterialMOQ.CLBH = XXZLS.CLBH ');
    SQL.add('LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=XXZLS.CSBH and ZSZL_DEV.GSBH = '''+main.Edit2.Text+'''');
    SQL.add('left join zszl_flex on zszl_flex.zsdh=XXZLS.CSBH');
    SQL.Add('where XXZLS.XieXing=:XieXing and XXZLS.SheHao=:SheHao  AND CLZL.CLZMLB=''N''');
    sql.Add('and XXZLS.CLBH like'''+edit7.Text+'%''');  //材料編號
    //20180515
    if ((checkbox3.Checked=true) and (checkbox4.Checked=false)) then
      sql.add('       and CLZL.CQDH=''TW''');                         //廠區代號
    if ((checkbox3.Checked=false) and (checkbox4.Checked=true)) then
      sql.add('       and CLZL.CQDH=''VN''');
    if SupEdit.Text<>'' then
      sql.Add('      and XXZLS.CSBH '+GetSpeedButtonString(SBtn5,SupEdit.Text) );
    if CB1.ItemIndex=1 then
    begin
      sql.Add('and (MaterialCBD.SamplePrice is null ) ');
      sql.Add('and IsNull(MaterialCBDNo.YN,0)<>1 ');
    end;
    if CB1.ItemIndex=2 then
    begin
      sql.Add('and (MaterialCBD.SamplePrice is not null or  MaterialCBDNo.YN=1 ) ');
    end;
    if BWLBCombo2.ItemIndex>0 then
      sql.Add('and (XXZLS.BWLB='+Copy(BWLBCombo2.Text,1,1)+' ) ');                     //部位類別
    SQL.Add('group by XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,CLZL.CLZMLB,CLZL.CQDH');
    sql.Add('         ,MaterialCBD_His.CLBH,MaterialCBD_His.SamplePrice,MaterialCBD_His.userID,MaterialCBD_His.userdate,MaterialCBD_His.PriceFormula,MaterialCBD_His.CostingRemark,MaterialCBD_His.Freight');
    //sql.Add('         ,MaterialCBD_His2.SamplePrice,MaterialCBD_His2.userID,MaterialCBD_His2.userdate,MaterialCBD_His2.PriceFormula,MaterialCBD_His2.CostingRemark,MaterialCBD_His2.Freight');
    sql.Add('         ,MaterialMOQ.ProdLeadTime,MaterialMOQ.Forecast_Leadtime ');
    sql.Add('         ,MaterialMOQ.ProdMOQ,MaterialMOQ.Surcharge,MaterialMOQ.Dyingfee');
    sql.Add('         ,MaterialMOQ.ExtraPrice,ZSZL_DEV.DeliveryTerm,MaterialMOQ.Remark,xh,CCQQ,BWZL.ywsm,zszl_flex.zsdhflex ');
    SQL.Add('ORDER BY XH,ywsm');
    if CheckBox9.Checked =true then
        showmessage(SQL.Text);
    Active:=true;
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;

  if main.Edit2.Text='CDC' then
    if Checkbox11.Checked then
      CostingSize(XXZLS,QueryCostingSize,XXZL.fieldbyname('XieXing').AsString,XXZL.fieldbyname('SheHao').AsString,XXZL.fieldbyname('DEVCODE').AsString,XXZL.fieldbyname('Article').AsString);
  RemoveDuplicate(XXZLS);

end;

procedure TDevQuota.DBGrid1DblClick(Sender: TObject);
begin
  if XXZL.active then
  begin
    PC1.ActivePage:=TS2;
    Button2.Click;
  end;
end;
//
procedure TDevQuota.ExportExcel(Query:TQuery;DetQry:TQuery);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  Query.active  then
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
        for   i:=0   to   Query.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=Query.fields[i].FieldName;
        end;

        Query.First;
        j:=2;
        while   not   Query.Eof   do
        begin
          for   i:=0   to  Query.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=Query.Fields[i].Value;
          end;
        Query.Next;
        inc(j);
        end;
       eclapp.columns.autofit;
       eclApp.ActiveSheet.Columns[2].ColumnWidth := 50;
       eclApp.ActiveSheet.Columns[3].ColumnWidth := 50;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
 if DetQry<>nil then DetQry.Active:=true;   
end;
//
procedure TDevQuota.bbt6Click(Sender: TObject);
begin
  if MainPC.ActivePageIndex=1 then
  begin
    //if PC1.ActivePageIndex=0 then  ExportExcel(XXZL,XXZLS);
    if PC1.ActivePageIndex=0 then  ExportExcel(XXZL,nil);
    if PC1.ActivePageIndex=1 then  ExportExcel(XXZLS,nil);
  end else
  if MainPC.ActivePageIndex=0 then
  begin
    if not checkbox1.Checked then
      ExportExcel(XXMQ,nil)
    else
      ExportExceltw(XXMQ,nil);
  end;
  if MainPC.ActivePageIndex=2 then  ExportExceltw(Query1,nil);
end;




procedure TDevQuota.Button3Click(Sender: TObject);
begin
  if Edit10.Text<>'' then
    Edit13.Text:=GetSpeedSeason(Edit10.Text);
  if ( (ArticleEdit.Text='') and (SREdit.Text='') and (edit8.Text='') and (Edit13.Text='')  ) then
  begin
    showmessage('Please input  keypoint ');
    abort;
  end;
  with XXMQ do
  begin
    Active:=false;
    SQL.Clear;

    SQL.Add('select max(KFXXZL.DEVCODE)as DEVCODE,XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,Max(XXZLS.CSBH) as ZSDH,Max(ZSZL.ZSYWJC) as ZSYWJC');   
    sql.Add('       ,(case when MaterialCBD_His.CLBH is null then MaterialCBD_His2.SamplePrice else MaterialCBD_His.SamplePrice end) as SamplePrice');
    sql.Add('       ,(case when MaterialCBD_His.CLBH is null then MaterialCBD_His2.PriceFormula else MaterialCBD_His.PriceFormula end) as PriceFormula');
    sql.Add('       ,(case when MaterialCBD_His.CLBH is null then MaterialCBD_His2.CostingRemark else MaterialCBD_His.CostingRemark end) as CostingRemark');
    sql.Add('       ,(case when MaterialCBD_His.CLBH is null then MaterialCBD_His2.userID else MaterialCBD_His.userID end) as userID');
    sql.Add('       ,(case when MaterialCBD_His.CLBH is null then MaterialCBD_His2.userdate else MaterialCBD_His.userdate end) as userdate');

    //sql.Add('       MaterialCBD.SamplePrice,max(MaterialCBD.PriceFormula)as PriceFormula,max(MaterialCBD.CostingRemark)as CostingRemark,');
    //sql.Add('	      MaterialCBD.userID,MaterialCBD.userdate,CLZL.CQDH,');
    sql.Add('	      ,CLZL.CQDH,');
    sql.Add('       Max(MaterialMOQ.ProdLeadTime) as ProdLeadTime,Max(MaterialMOQ.Forecast_Leadtime)as Forecast_Leadtime,');
    sql.Add('       Max(MaterialMOQ.ProdMOQ)as ProdMOQ,Max(MaterialMOQ.Surcharge) as Surcharge,');
    sql.Add('       Max(MaterialMOQ.Dyingfee)as Dyingfee, Max(MaterialMOQ.ExtraPrice) as ExtraPrice,');
    sql.Add('       CostingPriceList.PricingSeason as season');
    sql.Add('       ,(select DeliveryTerm from ZSZL_DEV where ZSZL_DEV.ZSDH=XXZLS.CSBH and ZSZL_DEV.GSBH = '''+main.Edit2.Text+''') as DeliveryTerm');
    SQL.Add('FROM CostingPriceList ');
    sql.add('left join XXZL on XXZL.article like CostingPriceList.SKU+''%''  and XXZL.JiJie is not null');
    sql.add('and XXZL.KFCQ='''+KFCQ+''' and XieXing not like ''COI%''');
    sql.add('left join KFXXZL on xxzl.XieXing=KFXXZL.XieXing and xxzl.SheHao=KFXXZL.SheHao ');
    sql.add('LEFT JOIN XXZLS  on XXZLS.XieXing=KFXXZL.XieXing and XXZLS.SheHao=KFXXZL.SheHao ');
    sql.add('left join KFZL on KFZL.KFDH=KFXXZL.KHDH ');
    SQL.Add('LEFT JOIN CLZL   ON XXZLS.CLBH = CLZL.cldh');
    SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=XXZLS.CSBH and ZSZL.ZSYWJC is not null');
    sql.Add('Left JOIN (select CLBH,ZSBH,Season,ProdLeadTime,Forecast_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice ');
    sql.Add('               from(');
    sql.Add('                   select CLBH,ZSBH,Season,ProdLeadTime,Forecast_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice from MaterialMOQ');
    sql.Add('                   UNION ALL');
    sql.Add('                   select CLZL_LS.JHDH as CLBH,ZSBH,season,ProdLeadTime,Forecast_Leadtime,ProdMOQ,Surcharge,Dyingfee,ExtraPrice from MaterialMOQ');
    sql.Add('                   INNER  join CLZL_LS on CLZL_LS.CLDH = MaterialMOQ.CLBH');
    sql.Add('                   ) MaterialMOQ');
    sql.Add('           )MaterialMOQ on MaterialMOQ.ZSBH=XXZLS.CSBH and  MaterialMOQ.CLBH = XXZLS.CLBH ');
    sql.add('Left JOIN  MaterialCBD_His ON MaterialCBD_His.ZSBH=XXZLS.CSBH and MaterialCBD_His.CLBH=XXZLS.CLBH and MaterialCBD_His.season=');
         // add Season
         sql.Add('       (case when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''F'' then ''FH''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
         sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''H'' then ''FH''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
         sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''S'' then ''SS''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
         sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''U'' then ''SS''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) end)');
         sql.Add('and MaterialCBD_His.YN=0');
    sql.add('Left JOIN  MaterialCBD_His MaterialCBD_His2 ON MaterialCBD_His2.ZSBH=XXZLS.CSBH and MaterialCBD_His2.CLBH=XXZLS.CLBH and MaterialCBD_His2.season=');
         // add Season
         sql.Add('       (case when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''F'' then ''FH''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
         sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''H'' then ''FH''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
         sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''S'' then ''SS''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) ');
         sql.Add('       when SUBSTRING(CostingPriceList.PricingSeason,3,1)=''U'' then ''SS''+ SUBSTRING(CostingPriceList.PricingSeason,1,2) end)');
         sql.Add('and MaterialCBD_His2.YN=1');
    SQL.add('Left join MaterialCBDNo on MaterialCBDNo.XieXing=XXZLS.XieXing and MaterialCBDNo.SheHao=XXZLS.SheHao ');
    //SQL.add('and MaterialCBDNo.CLBH=XXZLS.CLBH ');
    //等24U下單完畢後啟用
    SQL.add('      and MaterialCBDNo.CLBH=XXZLS.CLBH and MaterialCBDNo.Season=CostingPriceList.PricingSeason');

    //SQL.Add('Left JOIN DDZL on DDZL.XieXing=XXZLS.XieXing and DDZL.SheHao=XXZLS.SheHao ');
    SQL.Add('where  CLZL.CLZMLB=''N''');
    ////sql.add(' and KFZL.KFJC like '+''''+'%'+ComboBox5.Text+'%'+''''); //converse
    if Edit13.Text<>'' then
    SQL.Add('and CostingPriceList.PricingSeason like '''+Edit13.Text+'%''');    
            sql.add('and CostingPriceList.KFCQ='''+KFCQ+'''');
    if ArticleEdit.Text<>'' then
    SQL.Add('and XXZL.Article '+GetSpeedButtonString(SBtn2,ArticleEdit.Text));
    sql.Add('and XXZLS.CLBH like '''+edit8.Text+'%''');
    sql.add('and CLZL.YWPM like '+''''+'%'+edit9.Text+'%'+'''');
    sql.add('and CLZL.ZWPM like '+''''+'%'+edit12.Text+'%'+'''');
    sql.add('and XXZLS.CSBH<>''''');       //排除部分吊牌CLZL無建立廠商-品牌提供
    if edit16.Text<>'' then
       sql.add('and ZSZL.ZSYWJC like '+''''+'%'+edit16.Text+'%'+'''');
    if CB2.ItemIndex=1 then
    begin
      sql.Add('and (MaterialCBD_His.SamplePrice is null ) ');
      sql.Add('and IsNull(MaterialCBDNo.YN,0)<>1 ');
    end;
    if CB2.ItemIndex=2 then
    begin
      sql.Add('and (MaterialCBD_His.SamplePrice is not null or  MaterialCBDNo.YN=1 ) ');
    end;
    if SREdit.Text<>'' then
      sql.Add('and KFXXZL.DEVCODE '+GetSpeedButtonString(SBtn1,SREdit.Text) );
    //if Edit10.Text<>'' then
    //  sql.Add('and DDZL.BUYNO like '''+Edit10.Text+'%'' ');
    if BWLBCombo1.ItemIndex>0 then
      sql.Add('and (XXZLS.BWLB='+Copy(BWLBCombo1.Text,1,1)+') ');
    //20180515
    if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
      sql.add('       and CLZL.CQDH=''TW''');
    if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
      sql.add('       and CLZL.CQDH=''VN''');
    if DisSKUBox1.Checked=false then
      sql.add('and not exists (select XieXing from XXZL_H where XXZL_H.XieXing=XXZL.XieXing and XXZL_H.SheHao =XXZL.SheHao ) ');
    SQL.Add('group by XXZLS.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,CostingPriceList.PricingSeason');
    SQL.Add('         ,XXZLS.CSBH');
    sql.Add('         ,MaterialCBD_His.CLBH,MaterialCBD_His.SamplePrice,MaterialCBD_His.userID,MaterialCBD_His.userdate,MaterialCBD_His.PriceFormula,MaterialCBD_His.CostingRemark');
    sql.Add('         ,MaterialCBD_His2.SamplePrice,MaterialCBD_His2.userID,MaterialCBD_His2.userdate,MaterialCBD_His2.PriceFormula,MaterialCBD_His2.CostingRemark');

    SQL.Add('ORDER BY XXZLS.CLBH');
    //showmessage(SQL.Text);
    //funcObj.WriteErrorLog(sql.Text);    
    if CheckBox9.Checked =true then
       showmessage(SQL.Text);
    Active:=true;
    BBT6.Enabled:=true;
 end;
end;

procedure TDevQuota.XXZLSSamplePriceSetText(Sender: TField;
  const Text: String);
begin
  if Text<>'' then
  begin
    Sender.Value:=Text;
    XXZLS.edit;
    //XXZLS.FieldByName('SeaSon').Value:='18F';
    XXZLS.Post;
  end else
  begin
    Sender.Value:=null;
  end;
end;

procedure TDevQuota.XXMQSamplePriceSetText(Sender: TField;
  const Text: String);
begin
  if Text<>'' then
  begin
    Sender.Value:=Text;
    XXMQ.Edit;
    //XXMQ.FieldByName('SeaSon').Value:='18F';
    XXMQ.Post;
  end else
  begin
    Sender.Value:=null;
  end;
end;

procedure TDevQuota.Modify1Click(Sender: TObject);
begin
  if XXZLS.Active=true then
  begin
    with XXZLS do
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end;
    Cancel1.Enabled:=true;
    Save1.Enabled:=true;
  end;
end;

procedure TDevQuota.Modify2Click(Sender: TObject);
begin
  if XXMQ.Active=true then
  begin
    with XXMQ do
    begin
      cachedupdates:=true;
      requestlive:=true;
      edit;
    end;
    Cancel2.Enabled:=true;
    Save2.Enabled:=true;
  end;
end;

procedure TDevQuota.Cancel1Click(Sender: TObject);
begin
    with XXZLS do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    //Cancel1.Enabled:=false;
    //Save1.Enabled:=false;
end;

procedure TDevQuota.Cancel2Click(Sender: TObject);
begin
    with XXMQ do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
      active:=true;
    end;
    //Cancel2.Enabled:=false;
    //Save2.Enabled:=false;
end;

//
procedure TDevQuota.SaveBtn(Query:TQuery;Cancel:TMenuItem;Save:TMenuItem;IsFlag:boolean);
//計算
function Eval(expStr: string): string;
var js: OleVariant;
begin js := CreateOleObject('ScriptControl');
js.Language := 'JavaScript';
Result := js.Eval(expStr);
js := Unassigned;
end;
   function GetSkuMat_BWBH(XieXing:string;SheHao:string;CLBH:String):String;
   var TotalStr:string;
   begin
     with TemQry1 do
     begin
       Active:=false;
       SQL.Clear;
       SQL.Add('select XXZLS.*,BWZL.ywsm  ');
       SQL.Add('FROM (');
       SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,XXZLS.CLBH,XXZLS.CSBH,XXZLS.BWLB,XXZLS.BWBH ');
       SQL.Add(' from XXZLS ');
       SQL.Add(' where XXZLS.XieXing='''+XieXing+''' and XXZLS.SheHao='''+SheHao+'''  ');
       SQL.Add(' union all ');
       SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,XXZLS.BWBH  ');
       SQL.Add(' from XXZLS ');
       SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
       SQL.Add(' where XXZLS.XieXing='''+XieXing+''' and XXZLS.SheHao='''+SheHao+'''  ');
       SQL.Add(' union all ');
       SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,CLZHZL.ZSDH as CSBH,XXZLS.BWLB,XXZLS.BWBH  from ( ');
       SQL.Add(' select XXZLS.XieXing,XXZLS.Shehao,CLZHZL.CLDH1 as CLBH,XXZLS.BWLB,XXZLS.BWBH ');
       SQL.Add(' from XXZLS ');
       SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH ');
       SQL.Add(' where XXZLS.XieXing='''+XieXing+''' and XXZLS.SheHao='''+SheHao+''' ) XXZLS ');
       SQL.Add(' inner join CLZHZL on CLZHZL.CLDH=XXZLS.CLBH  ');
       SQL.Add(' ) XXZLS ');
       SQL.Add('left join BWZL on BWZL.bwdh=XXZLS.BWBH');
       SQL.Add('where XXZLS.XieXing='''+XieXing+''' and XXZLS.SheHao='''+SheHao+'''  and CLBH='''+CLBH+''' ');
       Active:=true;
       while not Eof do
       begin
          TotalStr:=TotalStr+FieldByName('BWBH').AsString;
         Next;
       end;
       Active:=false;
     end;
     if length(TotalStr)>0 then TotalStr:=Copy(TotalStr,1,length(TotalStr)-1);
     Result:=TotalStr;
   end;

begin
  GetSpeedButton();
    with Query do
    begin
      first;
      while not eof do
      begin

        if (Query.fieldbyname('PriceFormula').Value<>Query.fieldbyname('PriceFormula').OldValue)
            OR(Query.fieldbyname('CostingRemark').Value<>Query.fieldbyname('CostingRemark').OldValue)
            OR(Query.fieldbyname('Freight').Value<>Query.fieldbyname('Freight').OldValue)
            OR(Query.fieldbyname('flag').Value<>Query.fieldbyname('flag').OldValue) then
        begin
         with TemQry do
          begin
            //寫入歷史資料
            active:=false;
            sql.Clear;
            sql.Add(' select CLBH,GSBH from MaterialCBD_His where CLBH='''+Query.fieldbyname('CLBH').AsString+''' ');
            sql.Add(' and ZSBH='''+Query.fieldbyname('ZSDH').AsString+''' ');
            if Isflag=true then   //    Articel  存
                sql.Add(' and Season = '''+XXZL.fieldbyname('Season').AsString+'''')
            else       //    His存盤
                sql.Add(' and Season = '''+Query.fieldbyname('Season').AsString+'''');
            if (Query.fieldbyname('flag').Value=true) then
              sql.Add('and YN=1') //打勾=1
            else
              sql.Add('and YN=0');
            if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='HBA')then
              sql.Add('and GSBH=''VB1''')
            else
              sql.Add('and GSBH='''+main.Edit2.Text+'''');    
            sql.add('and KFCQ='''+KFCQ+''' ');      
            sql.add('and KHDH='''+KHDH+'''');
            active:=true;
            if eof then
            begin
              active:=false;
              sql.Clear;
              sql.Add(' insert MaterialCBD_His (CLBH,GSBH,ZSBH,SamplePrice,PriceFormula,Freight,CostingRemark,userID');
              sql.Add(' ,userdate,YN,Season,ProdLeadTime,Forecast_Leadtime,ProdMOQ,ExtraPrice,Surcharge,Dyingfee,XieXing,SheHao,PurRemark,KFCQ,KHDH');
              sql.Add(') values (');
              sql.Add(' '''+Query.fieldbyname('CLBH').AsString+'''');
              //sql.Add(','''+main.edit2.Text+'''');     //品牌選擇修改不同廠區
              if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='CDC')then
                sql.Add(',''VB1''')
              else
                sql.Add(','''+main.Edit2.Text+'''');
              sql.Add(','''+Query.fieldbyname('ZSDH').AsString+''',');
              //sql.Add(','''+Query.fieldbyname('Season').AsString+''',');
              if Query.fieldbyname('flag').Value=true then
              begin
                sql.Add('null,null,null');
                if (Query.FieldByName('CostingRemark').IsNull) or (Query.FieldByName('CostingRemark').AsString='') then
                      sql.Add(' ,''CBD No use;'+Query.fieldbyname('CostingRemark').AsString+''',')
                else
                      sql.Add(' ,'''+Query.fieldbyname('CostingRemark').AsString+''',');
              end
              else
              begin
                //sql.Add(''''+Query.fieldbyname('SamplePrice').AsString+''',');
                sql.Add(''''+Eval(Query.fieldbyname('PriceFormula').AsString)+''',');
                sql.Add(''''+Query.fieldbyname('PriceFormula').AsString+''',');
              sql.Add(''''+Query.fieldbyname('Freight').AsString+''',');
                sql.Add(''''+Query.fieldbyname('CostingRemark').AsString+''',');
              end;
              sql.Add(''''+main.edit1.text+'''');
              sql.Add(',CONVERT(varchar(100), GETDATE(), 120)');
            if (Query.fieldbyname('flag').Value=true) then
              sql.Add(',1') //打勾=1
            else
              sql.Add(',0');
            if Isflag=true then
                sql.Add(' ,'''+XXZL.fieldbyname('Season').AsString+''',')
            else
              sql.Add(' ,'''+Query.fieldbyname('Season').AsString+''',');
              sql.Add(''''+Query.fieldbyname('ProdLeadTime').AsString+''',');
              sql.Add(''''+Query.fieldbyname('Forecast_Leadtime').AsString+''',');
              sql.Add(''''+Query.fieldbyname('ProdMOQ').AsString+''',');
              sql.Add(''''+Query.fieldbyname('ExtraPrice').AsString+''',');
              sql.Add(''''+Query.fieldbyname('Surcharge').AsString+''',');
              sql.Add(''''+Query.fieldbyname('Dyingfee').AsString+''',');
              sql.Add(''''+XXZL.fieldbyname('XieXing').AsString+''',');
              sql.Add(''''+XXZL.fieldbyname('SheHao').AsString+''',');
              sql.Add(''''+Query.fieldbyname('PurRemark').AsString+''',');
              sql.add(''''+KFCQ+''',');
              sql.add(''''+KHDH+'''');
              sql.add(')');
              //sql.Add(''''+Query.fieldbyname('Freight').AsString+''')');
              if CheckBox10.Checked =true then
                  showmessage(sql.text);
              execsql;
            end
            else
            begin
              if (main.edit2.Text=TemQry.FieldByName('GSBH').AsString) or (TemQry.FieldByName('GSBH').AsString='VB1') then
              begin
                active:=false;
                sql.Clear;
                sql.Add(' update MaterialCBD_His set ');
                if (Query.fieldbyname('flag').Value=true) then
                  Begin
                    sql.Add(' SamplePrice=null,PriceFormula=null,Freight=null');
                    if (Query.FieldByName('CostingRemark').IsNull) or (Query.FieldByName('CostingRemark').AsString='') then
                      sql.Add(' ,CostingRemark=''CBD No use;''')
                    else
                      sql.Add(' ,CostingRemark=''CBD No use;'+Query.fieldbyname('CostingRemark').AsString+'''');
                  end
                else
                  begin
                    sql.Add(' SamplePrice='''+Eval(Query.fieldbyname('PriceFormula').AsString)+'''');
                    sql.Add(' ,PriceFormula='''+Query.fieldbyname('PriceFormula').AsString+'''');
                    sql.Add(' ,CostingRemark='''+Query.fieldbyname('CostingRemark').AsString+'''');
                    sql.Add(' ,Freight='''+Query.fieldbyname('Freight').AsString+'''');
                  end;
                sql.Add('   ,ZSBH='''+Query.fieldbyname('ZSDH').AsString+''' ');
                sql.Add('   ,userID='''+main.edit1.text+'''');
                sql.Add('   ,userdate=CONVERT(varchar(100), GETDATE(), 120)');
                sql.Add('   ,ProdLeadTime='''+Query.fieldbyname('ProdLeadTime').AsString+''' ');
                sql.Add('   ,Forecast_Leadtime='''+Query.fieldbyname('Forecast_Leadtime').AsString+''' ');
                sql.Add('   ,ProdMOQ='''+Query.fieldbyname('ProdMOQ').AsString+''' ');
                sql.Add('   ,ExtraPrice ='''+Query.fieldbyname('ExtraPrice').AsString+''' ');
                sql.Add('   ,Surcharge='''+Query.fieldbyname('Surcharge').AsString+''' ');
                sql.Add('   ,Dyingfee='''+Query.fieldbyname('Dyingfee').AsString+''' ');
                sql.Add('   ,XieXing='''+XXZL.fieldbyname('XieXing').AsString+''' ');
                sql.Add('   ,SheHao='''+XXZL.fieldbyname('SheHao').AsString+''' ');
                sql.Add('   ,PurRemark='''+Query.fieldbyname('PurRemark').AsString+''' ');
                sql.Add(' where CLBH = '''+Query.fieldbyname('CLBH').AsString+''' ');
                sql.Add(' and ZSBH = '''+Query.fieldbyname('ZSDH').AsString+''' ');
                if Isflag=true then
                    sql.Add(' and Season = '''+XXZL.fieldbyname('Season').AsString+'''')
                else
                    sql.Add(' and Season = '''+Query.fieldbyname('Season').AsString+'''');
                if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='HBA')then
                  sql.Add('and GSBH=''VB1''')
                else
                  sql.Add('and GSBH='''+main.Edit2.Text+'''');          
                sql.add('and KFCQ='''+KFCQ+''' ');
                if (Query.fieldbyname('flag').Value=true) then
                    sql.Add(' and YN=1')
                else 
                    sql.Add(' and YN=0'); 
               sql.add('and KHDH='''+KHDH+'''');


                if CheckBox10.Checked =true then
                    showmessage(sql.text);
                execsql;
              end else
              begin
                active:=false;
                showmessage('Department not the same ');
                abort;
              end;
            end;

          end;
        end;

        //註記CBD 沒有這個材料
        //if IsFlag=true then
        //begin
          if (Query.fieldbyname('Flag').Value<>Query.fieldbyname('Flag').OldValue) then
          begin
            with TemQry do
            begin
              active:=false;
              sql.Clear;
              sql.Add('Select CLBH,GSBH from  MaterialCBDNo where XieXing='''+XXZL.FieldByName('XieXing').AsString+'''');
              sql.Add('and Shehao='''+XXZL.FieldByName('Shehao').AsString+''' and CLBH='''+Query.fieldbyname('CLBH').AsString+'''');
              sql.Add(' and Season='''+XXZL.fieldbyname('JiJie').AsString+'''');
              if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='HBA')then
                sql.Add('and GSBH=''VB1''')
              else
                sql.Add('and GSBH='''+main.Edit2.Text+'''');
              //showmessage(SQL.Text);
              active:=true;
              if eof then
              begin
                active:=false;
                sql.Clear;
                //sql.Add(' insert MaterialCBDNo (XieXing,SheHao,CLBH,GSBH,Remark,userID,userdate,YN');
                //24U下單後開啟
                sql.Add(' insert MaterialCBDNo (XieXing,SheHao,CLBH,Season,GSBH,Remark,userID,userdate,YN');
                sql.Add(') values (');
                sql.Add(' '''+XXZL.fieldbyname('XieXing').AsString+'''');
                sql.Add(','''+XXZL.fieldbyname('SheHao').AsString+'''');
                sql.Add(','''+Query.fieldbyname('CLBH').AsString+'''');
                sql.Add(','''+XXZL.fieldbyname('JiJie').AsString+'''');
                if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='CDC')then
                  sql.Add(',''VB1''')
                else
                  sql.Add(','''+main.Edit2.Text+'''');
                sql.Add(','''+GetSkuMat_BWBH(XXZL.fieldbyname('XieXing').AsString,XXZL.fieldbyname('SheHao').AsString,Query.fieldbyname('CLBH').AsString)+'''');
                sql.Add(','''+main.edit1.text+'''');
                sql.Add(',CONVERT(varchar(100), GETDATE(), 120)');
                if Query.fieldbyname('flag').Value=true then
                  sql.Add(',1)')
                else
                  sql.Add(',0)');
                //showmessage(SQL.Text);
                execsql;
              end
              else
              begin
                if main.edit2.Text=TemQry.FieldByName('GSBH').AsString then
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' update MaterialCBDNo set ');
                  if Query.fieldbyname('Flag').AsBoolean=true then
                  begin
                    sql.Add('   YN=''1'' ');
                    sql.Add('   ,Remark='''+GetSkuMat_BWBH(XXZL.fieldbyname('XieXing').AsString,XXZL.fieldbyname('SheHao').AsString,Query.fieldbyname('CLBH').AsString)+'''');
                  end else
                  begin
                    sql.Add('   YN=''0'' ');
                    sql.Add('   ,Remark=null ');
                  end;
                  sql.Add('   ,userID='''+main.edit1.text+'''');
                  sql.Add('   ,userdate=CONVERT(varchar(100), GETDATE(), 120)');
                  sql.Add(' where  XieXing='''+XXZL.FieldByName('XieXing').AsString+''' and Shehao='''+XXZL.FieldByName('Shehao').AsString+''' ');
                  sql.Add(' and CLBH = '''+Query.fieldbyname('CLBH').AsString+'''');
                  sql.Add(' and season='''+XXZL.fieldbyname('JiJie').AsString+'''');
                  if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='HBA')then
                    sql.Add('and GSBH=''VB1''')
                  else
                    sql.Add('and GSBH='''+main.Edit2.Text+'''');
                  //showmessage(SQL.Text);
                  execsql;
                end else
                begin
                  active:=false;
                  //showmessage('Department not the same ');
                  abort;
                end;
              end;
           // end;
          end;
        end;
        //
        Next;
      end;
    end;
    Query.active:=false;
    Query.active:=TRUE;
end;


procedure TDevQuota.Save1Click(Sender: TObject);
begin
  if (main.Edit2.Text='CDC') or (main.Edit2.Text='VB1') then
      if Checkbox11.Checked then
  CostingSize(XXZLS,QueryCostingSize,XXZL.fieldbyname('XieXing').AsString,XXZL.fieldbyname('SheHao').AsString,XXZL.fieldbyname('DEVCODE').AsString,XXZL.fieldbyname('Article').AsString);
  SaveBtn(XXZLS,Cancel1,Save1,true);
end;

procedure TDevQuota.Save2Click(Sender: TObject);
begin  
  if (main.Edit2.Text='CDC') or (main.Edit2.Text='VB1') then
      if Checkbox11.Checked then
 SaveBtn(XXMQ,Cancel2,Save2,false);
end;


procedure TDevQuota.SRList1Click(Sender: TObject);
begin
 DevQuotaSRList:=TDevQuotaSRList.Create(self);
 DevQuotaSRList.ShowSKUList(XXZLS.FieldByName('CLBH').AsString);
 DevQuotaSRList.ShowModal();
end;

procedure TDevQuota.SRList2Click(Sender: TObject);
begin
 DevQuotaSRList:=TDevQuotaSRList.Create(self);
 DevQuotaSRList.ShowSKUList(XXMQ.FieldByName('CLBH').AsString);
 DevQuotaSRList.ShowModal();
end;

procedure TDevQuota.SBtn3Click(Sender: TObject);
begin
  if TSpeedButton(Sender).Caption='=' then
    TSpeedButton(Sender).Caption:='%'
  else if TSpeedButton(Sender).Caption='%' then
    TSpeedButton(Sender).Caption:='N%'
  else
    TSpeedButton(Sender).Caption:='=';
end;


procedure TDevQuota.RB1Click(Sender: TObject);
begin
  MaterailCBD_TB:=TRadioButton(Sender).Hint;
  with XXZLS do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
  end;
  //Cancel1.Enabled:=false;
  //Save1.Enabled:=false;
  with XXMQ do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
  end;
  //Cancel2.Enabled:=false;
  //Save2.Enabled:=false;
  XXZL.Active:=false;
end;

procedure TDevQuota.ExportExceltw(Query:TQuery;DetQry:TQuery);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 if DetQry<>nil then DetQry.Active:=false;
 if  Query.active  then
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
        eclApp.Cells(1,1):='價格核准書';
        eclApp.Cells(2,1):='廠商';
        eclApp.Cells(2,2):='料號';
        eclApp.Cells(2,3):='英文品名';
//        eclApp.Cells(2,4):='中文品名';
        eclApp.Cells(2,4):='單位';
        eclApp.Cells(2,5):='CBD單價';
        eclApp.Cells(2,6):='價格公式';
        eclApp.Cells(2,7):='運費';
        eclApp.Cells(2,8):='Remark';
        eclApp.Cells(2,9):='廠商代碼';
        eclApp.Cells(2,10):='MOQ Pro';
        eclApp.Cells(2,11):='Surcharge';
        eclApp.Cells(2,12):='Dying Fee';
        eclApp.Cells(2,13):='Extra Price';
        eclApp.Cells(2,14):='LeadTime Pro';
        eclApp.Cells(2,15):='LeadTime no F/C';
        eclApp.Cells(2,16):='Pur Remark';
        eclApp.Cells(2,17):='Delivery Term';
        eclApp.Cells(2,18):='UserId';
        eclApp.Cells(2,19):='UserDate';
        eclApp.Cells(2,20):='採區';
        eclApp.Cells(2,21):='SeaSon';
        eclApp.Cells(2,22):='SKU';



        Query.First;
        j:=3;
        while   not   Query.Eof   do
        begin
          //for   i:=0   to  Query.fieldcount-1  do
          for   i:=0   to  22  do
          begin
            if (i = 5)  or (i = 11) or (i = 12) then
              eclApp.Cells(j,i):='$'+Query.Fields[i].AsString
            else if i = 3 then
            else if i < 3 then
              eclApp.Cells(j,i+1):=Query.Fields[i].Value
            else if i > 3 then
              eclApp.Cells(j,i):=Query.Fields[i].Value;
          end;
        Query.Next;
        inc(j);
        end;

       eclApp.Cells(j+2,1):='幣別$=USD';
       eclApp.Cells(j+3,1):='匯率';
       eclApp.Cells(j+4,1):='複核';
       eclApp.Cells(j+4,3):='初核';
       eclapp.columns.autofit;
       //eclApp.ActiveSheet.Columns[5].NumberFormatLocal:='$#,##0.0000;[Red]-$#,##0.0000';
       eclApp.ActiveSheet.Range['E3:E'+inttostr(j-1)].NumberFormatLocal:='$#,##0.0000;-$#,##0.0000';
       eclApp.ActiveSheet.Columns[3].ColumnWidth := 50;
       eclApp.ActiveSheet.Columns[3].WrapText := True;
       eclApp.ActiveSheet.Columns[16].ColumnWidth := 45;
       eclApp.ActiveSheet.Columns[16].WrapText := True;
       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
 if DetQry<>nil then DetQry.Active:=true;   
end;

procedure TDevQuota.Button4Click(Sender: TObject);
begin

    if Edit21.Text<>'' then
    Edit22.Text:=GetSpeedSeason(Edit21.Text);
  if ( (Edit17.Text='') and  (Edit19.Text='') and (Edit20.Text='') and (Edit22.Text='') ) then
  begin
    ShowMessage('Please input keypoint');
    abort;
  end;
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;

    SQL.Add('select CONVERT(Bit,IsNull(MaterialCBD_His.YN,0)) as YN,MaterialCBD_His.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,MaterialCBD_His.ZSBH as ZSDH');
    sql.Add('   ,Max(ZSZL.ZSYWJC) as ZSYWJC,MaterialCBD_His.SamplePrice,Max(MaterialCBD_His.PriceFormula)as PriceFormula');
    sql.Add('	   ,max(MaterialCBD_His.CostingRemark) as CostingRemark ,MaterialCBD_His.userID,MaterialCBD_His.userdate,CLZL.CQDH');
    sql.add('   ,max(MaterialMOQ.ProdLeadTime)as ProdLeadTime,max(MaterialMOQ.Forecast_Leadtime)as Forecast_Leadtime,max(MaterialMOQ.ProdMOQ) as ProdMOQ');
    sql.add('   ,max(MaterialMOQ.Surcharge) as Surcharge,max(MaterialMOQ.Dyingfee) as Dyingfee,max(MaterialMOQ.ExtraPrice) as ExtraPrice');
    sql.add('          ,ZSZL_DEV.DeliveryTerm,MaterialMOQ.Remark as PurRemark');
    sql.Add('   ,MaterialCBD_His.Season,max(xxzl.ARTICLE) as sku,MaterialCBD_His.Freight');
    sql.add('From MaterialCBD_His');
    SQL.Add('LEFT JOIN CLZL   ON MaterialCBD_His.CLBH = CLZL.cldh ');       //and MaterialCBD_His.ZSBH= CLZL.ZSDH   CLZL 廠商資料不完整 刪除條件
    SQL.Add('LEFT JOIN ZSZL on ZSZL.ZSDH=MaterialCBD_His.ZSBH ');
    SQL.Add('left join xxzl on MaterialCBD_His.SheHao=xxzl.SheHao and MaterialCBD_His.XieXing=xxzl.XieXing');
    sql.Add('Left JOIN KFXXZL on MaterialCBD_His.XieXing=KFXXZL.XieXing and MaterialCBD_His.SheHao=KFXXZL.SheHao ');
    sql.add('left join(select case when MaterialMOQ.CLBH is not null then MaterialMOQ.CLBH ');
    sql.add('       else MaterialMOQ_Temp.CLBH end as CLBH,');
    sql.add('       MaterialMOQ.Season,MaterialCBD_His.ZSBH,MaterialCBD_His.Season as Season2');
    sql.add('From MaterialCBD_His');
    sql.add('left join MaterialMOQ on MaterialMOQ.CLBH=MaterialCBD_His.CLBH  and MaterialMOQ.ZSBH=MaterialCBD_His.ZSBH ');
    sql.add('left join CLZL_LS on CLZL_LS.CLDH = MaterialMOQ.CLBH and CLZL_LS.JHDH is not null');
    sql.add('left join MaterialMOQ MaterialMOQ_Temp on CLZL_LS.JHDH = MaterialMOQ_Temp.CLBH and MaterialMOQ_Temp.ZSBH=MaterialCBD_His.ZSBH ');
    sql.add(')MaterialMOQ_Temp on MaterialMOQ_Temp.CLBH=MaterialCBD_His.CLBH and MaterialMOQ_Temp.ZSBH=MaterialCBD_His.ZSBH');
    sql.add('Left JOIN MaterialMOQ on MaterialMOQ_Temp.CLBH=MaterialMOQ.CLBH and MaterialMOQ_Temp.ZSBH=MaterialMOQ.ZSBH');

    sql.add('  LEFT JOIN ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH  and ZSZL_DEV.GSBH = ''VDH''');
    SQL.Add('where CLZL.CLZMLB=''N''  and MaterialCBD_His.KFCQ='''+KFCQ+'''');

    if Edit17.Text<>'' then
    SQL.Add('and xxzl.Article '+GetSpeedButtonString(SpeedButton2,Edit17.Text));
    sql.Add('and MaterialCBD_His.CLBH like '''+Edit20.Text+'%''');
    sql.add('and CLZL.YWPM like '+''''+'%'+Edit14.Text+'%'+'''');
    sql.add('and CLZL.ZWPM like '+''''+'%'+Edit15.Text+'%'+'''');
    if Edit18.Text<>'' then
       sql.add('and ZSZL.ZSYWJC like '+''''+'%'+Edit18.Text+'%'+'''');
    if ComboBox1.ItemIndex=1 then
    begin
      sql.Add('and (MaterialCBD_His.SamplePrice is null ) ');
      sql.Add('and IsNull(MaterialCBD_His.YN,0)<>1 ');
    end;
    if ComboBox1.ItemIndex=2 then
    begin
      sql.Add('and (MaterialCBD_His.SamplePrice is not null or  MaterialCBD_His.YN=1 ) ');
    end;
    if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='HBA')then
      sql.Add('and  MaterialCBD_His.GSBH=''VB1''')
    else
      sql.Add('and  MaterialCBD_His.GSBH='''+main.Edit2.Text+'''');

    if (main.Edit2.Text='CDC') or (main.Edit2.Text='VB1') then
      begin
          if (copy(Edit22.Text,3,1)='F') or  (copy(Edit22.Text,3,1)='H') then
            sql.Add('and MaterialCBD_His.Season like ''FH'+copy(Edit22.Text,1,2)+'''' )
          else if (copy(Edit22.Text,3,1)='S') or  (copy(Edit22.Text,3,1)='U') then
            sql.Add('and MaterialCBD_His.Season like ''SS'+copy(Edit22.Text,1,2)+'''' );
      end
    else if main.Edit2.Text='VC1' then
      begin
          if (copy(Edit22.Text,1,1)='F') or  (copy(Edit22.Text,1,1)='W') then
            sql.Add('and MaterialCBD_His.Season like ''FW'+RightStr(Edit22.Text,2)+'''' )
          else if (copy(Edit22.Text,1,1)='S') or  (copy(Edit22.Text,1,1)='S') then
            sql.Add('and MaterialCBD_His.Season like ''SS'+RightStr(Edit22.Text,2)+'''' );

      end
    else
      sql.Add('and MaterialCBD_His.Season = '''+Edit22.Text+'''' );
    sql.add('and MaterialCBD_His.KHDH='''+KHDH+'''');
    if Edit19.Text<>'' then
      sql.Add('and KFXXZL.DEVCODE '+GetSpeedButtonString(SpeedButton1,Edit19.Text) );
    if ((checkbox6.Checked=true) and (checkbox7.Checked=false)) then
      sql.add('       and CLZL.CQDH=''TW''');
    if ((checkbox6.Checked=false) and (checkbox7.Checked=true)) then
      sql.add('       and CLZL.CQDH=''VN''');
    SQL.Add('group by MaterialCBD_His.YN,MaterialCBD_His.CLBH,CLZL.YWPM, CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,MaterialCBD_His.ZSBH,');
    SQL.Add('         MaterialCBD_His.SamplePrice,MaterialCBD_His.userID,MaterialCBD_His.userdate,MaterialCBD_His.Season');
    sql.add('          ,ZSZL_DEV.DeliveryTerm,MaterialMOQ.Remark,MaterialCBD_His.Freight');

    SQL.Add('ORDER BY ZSDH');
    if CheckBox9.Checked =true then
        showmessage(SQL.Text);
    Active:=true;
    BBT6.Enabled:=true;
 end;
end;

procedure TDevQuota.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((XXZlS.FieldByName('PriceFormula').IsNull) or (XXZlS.FieldByName('PriceFormula').AsString='') ) and (XXZlS.fieldbyname('flag').Value=false)  then
  begin
    dbgrid2.canvas.font.color:=clred;
  end;
{  if (copy(XXZlS.FieldByName('CLBH').AsString,1,1)='L')   then
  begin
    dbgrid2.canvas.font.color:=clblue;
  end;     }
end;



procedure TDevQuota.Button5Click(Sender: TObject);
begin
{ if Edit10.Text<>'' then
    Edit13.Text:=GetSpeedSeason(Edit10.Text);
  if ( (ArticleEdit.Text='') and (SREdit.Text='') and (edit8.Text='') and (Edit13.Text='')  ) then
  begin
    showmessage('Please input  keypoint ');
    abort;
  end;         }
  with QueryReC do
  begin
    Active:=false;
    SQL.Clear;

    SQL.Add('select * from MaterialCBD');
    SQL.Add('where PriceFormula<>''''');

    //showmessage(SQL.Text);
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
 end;
end;

procedure TDevQuota.Button6Click(Sender: TObject);
//var i:integer;
//計算
function Eval(expStr: string): string;
var js: OleVariant;
begin js := CreateOleObject('ScriptControl');
js.Language := 'JavaScript';
Result := js.Eval(expStr);
js := Unassigned;
end;
begin
    //if  QueryReC.Active=true then
    {QueryReC.First;
    QueryReC.edit;
    //with QueryReC do
    for i:=1 to QueryReC.RecordCount do
    begin
        QueryReC.fieldbyname('SamplePrice').Value:=Eval(QueryReC.fieldbyname('PriceFormula').AsString);
        //QueryReC.fieldbyname('SamplePrice').Value:='11';
        QueryReC.Next;
    end; }
    with QueryReC do
    begin
    First;
    cachedupdates:=true;
    requestlive:=true;
      while not Eof do
       begin  
        edit;
        QueryReC.fieldbyname('SamplePrice').Value:=Eval(QueryReC.fieldbyname('PriceFormula').AsString);
         Next;
       end;
    end;

end;

procedure TDevQuota.Button7Click(Sender: TObject);      
var  i:integer;
begin
  //label4.Visible:=false;
  //SeaEdit.Visible:=false;
  try
    QueryReC.first;
    for i:=1 to QueryReC.RecordCount do
    begin
      UpdateSQL3.apply(ukmodify);

      QueryReC.next;
    end;
    with QueryReC do
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


procedure TDevQuota.Button8Click(Sender: TObject);
begin
  with QuerySKU do
  begin
    Active:=false;
    SQL.Clear;

    SQL.Add('select * from(');
    SQL.Add('select MaterialCBD_His.CLBH,MaterialCBD_His.ZSBH,MaterialCBD_His.YN,MaterialCBD_His.Season,');
    SQL.Add('xxzl.XieXing,xxzl.SheHao, CostingPriceList.SKU,');
    SQL.Add('	ROW_NUMBER() over (PARTITION by  MaterialCBD_His.CLBH,MaterialCBD_His.ZSBH,MaterialCBD_His.YN,MaterialCBD_His.Season ORDER BY CostingPriceList.SKU) as rn');
    SQL.Add('	from MaterialCBD_His');
    SQL.Add('left join XXZLS on MaterialCBD_His.CLBH=XXZLS.CLBH 	');
    SQL.Add('left join xxzl on XXZLS.SheHao=xxzl.SheHao and XXZLS.XieXing=xxzl.XieXing');
    SQL.Add('left join CostingPriceList on CostingPriceList.SKU like xxzl.ARTICLE and CostingPriceList.PricingSeason=MaterialCBD_His.Season');
    SQL.Add('where CostingPriceList.SKU is not null');
    if edit32.Text<>'' then
      SQL.Add('and MaterialCBD_His.season like '''+'%'+edit32.Text+'%'+''' ');
    if edit23.Text<>'' then
      SQL.Add('and xxzl.ARTICLE like '''+'%'+edit23.Text+'%'+''' ');
    if edit26.Text<>'' then
      SQL.Add('and MaterialCBD_His.CLBH like '''+'%'+edit26.Text+'%'+''' ');
    if CheckBox8.Checked=true then
      SQL.Add('and MaterialCBD_His.Xiexing is null ');
    SQL.Add(')x where rn=1');

    //showmessage(SQL.Text);
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TDevQuota.Button10Click(Sender: TObject);
var  i:integer;
begin
  //label4.Visible:=false;
  //SeaEdit.Visible:=false;
  try
    QuerySKU.first;
    for i:=1 to QuerySKU.RecordCount do
    begin
      UpdateSQL4.apply(ukmodify);

      QuerySKU.next;
    end;
    with QuerySKU do
    begin
       active:=false;
       requestlive:=false;
       cachedupdates:=false;
       //active:=true;
    end;
    except
       Messagedlg('Have wrong,can not save!',mtwarning,[mbyes],0);
   end;
end;



//整理 報價碼
procedure TDevquota.CostingSize(Query,QueryCostingSize:TQuery;Xiexing,SheHao,SR,sku:String);
var SamplePrice,PriceFormula,freight,CostingRemark,segment,QQ,CLBH_QQ,ZSYWJC_QQ,lace_size,LaceName,tempStr :string;
    i,j:integer;
    CostingSize:Double;
    Gender:Char;
    KHDH,KFCQ,FTY:string;
begin
  if main.Edit2.Text='CDC' then
          KHDH:='036'
  else if main.Edit2.Text='VC1' then
      if CBBrand.ItemIndex=0 then
          KHDH:='0079'
      else if CBBrand.ItemIndex=1 then
          KHDH:='0078'
      else if CBBrand.ItemIndex=2 then
          KHDH:='0082';
  if CB_FTY.ItemIndex=0 then
  begin
      FTY:='LYN-9Z';
      KFCQ:='JNG'
  end
  else if CB_FTY.ItemIndex=1 then
  begin
      KFCQ:='YQA';
      FTY:='LYI-6L';
  end;

    CostingSize:=0;
    with TemQry1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select CostingSize from CostingPriceListNew where SKU='''+ XXZL.fieldbyname('Article').AsString+'''');
      //showmessage(sql.text);
      Active:=true;
      if TemQry1.fieldbyname('CostingSize').AsString<>'' then
        CostingSize:= StrToFloat(TemQry1.fieldbyname('CostingSize').AsString);
      Active:=false;
    end;
    if CostingSize=0 then
    begin
        Gender:=SR[13];
        Case Gender of
          'U':
            Gender:='U';
          'M':
            Gender:='M';
          'W':
            Gender:='W';
          'K':
            Gender:='K';
          'J':
            Gender:='J';
          'Y':
            Gender:='Y';
          'N':
            Gender:='I';
          'C':
            Gender:='C';
          'X':
            Gender:='X';
        end;
        //QueryCostingSize.Active:=false;
        with QueryCostingSize do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('select segment from xxzlkf where ');
          SQL.Add(' Xiexing='''+Xiexing+''' and SheHao='''+SheHao+'''');
          //showmessage(sql.text);
          Active:=true;
          segment:= QueryCostingSize.fieldbyname('segment').AsString;
          Active:=false;
        end;
        if(((segment='')or (segment = null) )
          or ((Gender<>'U') and (Gender<>'W') and (Gender<>'M') and (Gender<>'K') and (Gender<>'J') and (Gender<>'Y') and (Gender<>'I') and (Gender<>'C') and (Gender<>'X'))) then
              begin
                showmessage('Cant find size Grading;segment='''+segment+''';Gender='''+Gender+'''');
                CostingSize:=Strtofloat(inputbox('Please entry costing size:','Costing size','7.5'));
              end
        else
        begin    //    showmessage('Finded segment='+segment+'Gender='+Gender);
          if segment<>'Converse Cons' then
          begin 
            case  Gender of
              'M':
                CostingSize:=10;
              'U':
                CostingSize:=7.5;
              'W':
                CostingSize:=8;
              'K':
                CostingSize:=5.5;
              'J':
                CostingSize:=3;
              'Y':
                CostingSize:=2;
              'I':
                CostingSize:=8;
              'C':
                CostingSize:=3;
              'X':
                CostingSize:=0; //無使用
              else
                begin
                  showmessage('CostingSize not found,segment='''+segment+''';Gender='''+Gender+'''');
                  CostingSize:=Strtofloat(inputbox('Please entry costing size:','Costing size','7.5'));
                end;
             end;
          end
          else
          begin    
            case  Gender of
              'M':
                CostingSize:=10;
              'U':
                CostingSize:=9;
              'W':
                CostingSize:=8;
              'K':
                CostingSize:=5.5;
              'J':
                CostingSize:=3;
              'Y':
                CostingSize:=1.5;
              'I':
                CostingSize:=9;
              'C':
                CostingSize:=0;//無使用
              'X':
                CostingSize:=0; //無使用
              else
                begin
                  showmessage('CostingSize not found,segment='''+segment+''';Gender='''+Gender+'''');
                  CostingSize:=Strtofloat(inputbox('Please entry costing size:','Costing size','7.5'));
                end;
            end;
          end;
      end;
    end;
    //showmessage('CostingSize'+varToStr(CostingSize));
    //PriceFomula:='';
    CLBH_QQ:='';
    ZSYWJC_QQ:='';
    PriceFormula:='';
    Query.first;

    for i:=1 to Query.RecordCount do
    begin

      //自動查詢填如價格,如價格公式欄位為空
      if (XXZLS.fieldbyname('PriceFormula').asstring='') and (XXZlS.fieldbyname('flag').Value=false) then
        begin
          with TemQry1 do
          begin
            Active:=false;
            SQL.Clear;
            SQL.Add('select CostingPriceLibrary.MaterialCost,CostingPriceLibrary.PriceOVR,CostingMatLibrary.T1Freight,CostingXXZLS.SKU,CostingXXZLS.CostingSeason');
            SQL.Add('From CostingMatLibrary');
            SQL.Add('left join CostingPriceLibrary on CostingMatLibrary.MTL_No=CostingPriceLibrary.MTL_No');
            SQL.Add('left join CostingXXZLS on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No');
            SQL.Add('where CostingPriceLibrary.PriceStatus=''Final''');
            SQL.Add('and MaterialSeason='''+XXZL.fieldbyname('Season').asstring+'''');
            SQL.Add('and CostingPriceLibrary.CLBH='''+XXZLS.fieldbyname('CLBH').asstring+'''');
            SQL.Add('and SupplierCode='''+XXZLS.fieldbyname('zsdhflex').asstring+'''');     
            sql.add('and CostingXXZLS.Factory='''+FTY+'''');
            //showmessage(sql.text);
            Active:=true;
            if  not  TemQry1.Eof   then
            begin
              Query.Edit;
              if Copy(XXZL.fieldbyname('Season').asstring,3,2)='25' then
              begin
                if (TemQry1.fieldbyname('PriceOVR').AsString<>'') and (TemQry1.fieldbyname('PriceOVR').AsString<>'0') then
                  begin
                  if (TemQry1.fieldbyname('T1Freight').AsString<>'0') and (TemQry1.fieldbyname('T1Freight').AsString<>'') then
                     Query.fieldbyname('PriceFormula').Value:=FloatToStr(StrToFloat(TemQry1.fieldbyname('PriceOVR').AsString))+'*(1+'+TemQry1.fieldbyname('T1Freight').AsString+'/100)'
                  else
                     Query.fieldbyname('PriceFormula').Value:=FloatToStr(StrToFloat(TemQry1.fieldbyname('PriceOVR').AsString))
                  end
                else
                  begin
                  if (TemQry1.fieldbyname('T1Freight').AsString<>'0') and (TemQry1.fieldbyname('T1Freight').AsString<>'') then
                       Query.fieldbyname('PriceFormula').Value:=FloatToStr(StrToFloat(TemQry1.fieldbyname('MaterialCost').AsString))+'*(1+'+TemQry1.fieldbyname('T1Freight').AsString+'/100)'
                  else
                       Query.fieldbyname('PriceFormula').Value:=FloatToStr(StrToFloat(TemQry1.fieldbyname('MaterialCost').AsString))
                  end;
                  Query.fieldbyname('Freight').Value:=TemQry1.fieldbyname('T1Freight').AsString;
              end
              else
              begin     
                if (TemQry1.fieldbyname('PriceOVR').AsString<>'') and (TemQry1.fieldbyname('PriceOVR').AsString<>'0') then
                     Query.fieldbyname('PriceFormula').Value:=FloatToStr(StrToFloat(TemQry1.fieldbyname('PriceOVR').AsString))
                else
                      Query.fieldbyname('PriceFormula').Value:=FloatToStr(StrToFloat(TemQry1.fieldbyname('MaterialCost').AsString));
                Query.fieldbyname('Freight').Value:=TemQry1.fieldbyname('T1Freight').AsString;
              end;
              if pos('LACE',Query.fieldbyname('YWSM').Value)>0  then
              begin
                  tempStr:=Copy(Query.fieldbyname('YWPM').Value,1,2);
                  if (tempStr[2] in ['0'..'9']) then
                    tempStr := Copy(tempStr, 1, 2)   // 第二個字是數字 → 取前兩碼
                  else
                    tempStr := Copy(tempStr, 1, 1);  // 第二個字不是數字 → 只取第一碼
                Query.fieldbyname('PriceFormula').Value:=Query.fieldbyname('PriceFormula').asstring+'*'+tempStr;
              end;     
              Query.fieldbyname('CostingRemark').Value:=Query.fieldbyname('CostingRemark').AsString+';Auto link from SKU:'+TemQry1.fieldbyname('SKU').AsString;
              ShowMessage(Query.fieldbyname('CostingRemark').asstring);
            end;
            Active:=false;
                //抓鞋墊價格     ZSYWJC
                if (Query.fieldbyname('ZSYWJC').AsString='Colortech') or  (Query.fieldbyname('ZSYWJC').AsString='WEI SHENG') or  (Query.fieldbyname('ZSYWJC').AsString='WEI SHENG (VN)')
                       or  (Query.fieldbyname('ZSYWJC').AsString='Weisheng (Indonesia)')  or  (Query.fieldbyname('ZSYWJC').AsString='Ortholite') or  (Query.fieldbyname('ZSYWJC').AsString='Ortholite(Indonesia)')
                       or  (Query.fieldbyname('ZSYWJC').AsString='O2 Partner LLC')  or  (Query.fieldbyname('ZSYWJC').AsString='DA SHENG') or  (Query.fieldbyname('ZSYWJC').AsString='DAH JU (S.VN)') then
                              if   (pos('INSOLE',Query.fieldbyname('ywsm').AsString)>0) and (Length(Query.fieldbyname('ywsm').AsString)<10) then
                              begin
                                  //showmessage('check sockliner price');
                                  SQL.Clear;
                                  SQL.Add('select CostingMatLibrary.Supplier,CostingPriceLibrary.MaterialCost,CostingPriceLibrary.PriceOVR');
                                  SQL.Add(',CostingMatLibrary.T1Freight,CostingXXZLS.SKU,CostingXXZLS.CostingSeason,CostingXXZLS.UnitCost');
                                  SQL.Add('From CostingMatLibrary');
                                  SQL.Add('left join CostingPriceLibrary on CostingMatLibrary.MTL_No=CostingPriceLibrary.MTL_No');
                                  SQL.Add('left join CostingXXZLS on CostingMatLibrary.MTL_No=CostingXXZLS.MTL_No and CostingPriceLibrary.Color_No=CostingXXZLS.Color_No');
                                  SQL.Add('where (CostingPriceLibrary.PriceStatus=''Final'' or CostingPriceLibrary.PriceStatus='''')');     
                                  sql.add('and (CAST(CostingPriceLibrary.MaterialCost as float)>0 or CAST (CostingPriceLibrary.PriceOVR as float)>0)');
                                  SQL.Add('and Component like ''Logo-Sockliner%''');
                                  SQL.Add('and Round like ''FNL%''');
                                  SQL.Add('and SKU = '''+SKU+'''');
                                  SQL.Add('and MaterialSeason='''+XXZL.fieldbyname('Season').asstring+'''');        
                                  sql.add('and CostingXXZLS.Factory='''+FTY+'''');
                                    //showmessage(sql.text);
                                  Active:=true;
                                  if  (TemQry1.RecordCount=1)   then
                                  begin
                                    segment:=Query.fieldbyname('CostingRemark').AsString;
                                    Query.Edit;
                                    if (TemQry1.fieldbyname('UnitCost').AsString<>'') and (TemQry1.fieldbyname('UnitCost').AsString<>'0') then
                                      begin
                                        Query.fieldbyname('PriceFormula').Value:=Query.fieldbyname('PriceFormula').Value+'+'+TemQry1.fieldbyname('UnitCost').AsString;
                                        Query.fieldbyname('CostingRemark').Value:=segment+';logo from'+TemQry1.fieldbyname('Supplier').AsString+';UnitCost:'+'+'+TemQry1.fieldbyname('UnitCost').AsString;
                                      end;
                                  end
                                  else if (TemQry1.RecordCount>1)   then
                                    showmessage('More than one FNL CBD(PMR), please check Logo-Sockliner cost!');
                                  Active:=false;
                                end;
            end;
          end;


      if NOT((Query.FieldByName('CCQQ').IsNull) or (Query.FieldByName('CCQQ').AsString='')) then
      if((ZSYWJC_QQ='') or ((ZSYWJC_QQ<>Query.fieldbyname('ZSYWJC').AsString) or (POS(Query.fieldbyname('CCQQ').Value,QQ)>0) )) then
      begin
        ZSYWJC_QQ:=Query.fieldbyname('ZSYWJC').AsString;
        QQ:=Query.fieldbyname('CCQQ').Value;
        CLBH_QQ:= Query.fieldbyname('CLBH').Value;
        if CheckBox10.Checked =true then
          showmessage('第一次找到'+CLBH_QQ+';CCQQ:'+QQ+'ZSYWJC_QQ'+ZSYWJC_QQ);
        for j:=0 to  Query.RecordCount do
        begin
          //沒找到分段材料
          if (Query.FieldByName('CCQQ').IsNull) or (Query.FieldByName('CCQQ').AsString='') then//
              begin
              //找不到報價馬
              //showmessage('Cant not find costing size:'+FloatToStr(CostingSize));
              PriceFormula:='';
              freight:='';
              CostingRemark:='Grading:Cost#Non-Fuond';
              Query.moveby(-j);
              end
          else if((StrToFloat(Query.fieldbyname('CCQQ').Value)<=CostingSize) and (CostingSize<=StrToFloat(Query.fieldbyname('CCQZ').Value))
                or(CostingSize<=StrToFloat(Query.fieldbyname('CCQQ').Value)) and (CostingSize<=StrToFloat(Query.fieldbyname('CCQZ').Value))
                  and (StrToFloat(Query.fieldbyname('CCQQ').Value)>StrToFloat(Query.fieldbyname('CCQZ').Value)))   then
              begin
            //找到報價碼
                CLBH_QQ:=Query.fieldbyname('CLBH').AsString;
                CostingRemark:='Grading:Cost#'+FloatToStr(CostingSize)+':'+Query.fieldbyname('CLBH').AsString;
                if ((Query.FieldByName('CostingRemark').IsNull) or (Query.FieldByName('CostingRemark').AsString=''))
                  or (pos('Grading:Cost#',Query.fieldbyname('CostingRemark').Value)>0 )
                  and (NOT(pos('CBD',Query.fieldbyname('CostingRemark').Value)>0 )or (pos('Costing size;SKU',Query.fieldbyname('CostingRemark').Value)>0 ))then
                    begin
                      Query.Edit;
                      Query.fieldbyname('CostingRemark').Value:='Costing size;SKU:'+sku;
                      lace_size:='';
                      PriceFormula:='';
                      freight:='';
                    end;         
                //自動填鞋帶
               if (pos('LACE',Query.fieldbyname('YWSM').Value)>0) and (Query.fieldbyname('PriceFormula').asstring<>'') then
                  begin
                        //
                    lace_size:=Copy(Query.fieldbyname('YWPM').Value,1,2);
                    if (Length(lace_size) >= 2) and (lace_size[2] in ['0'..'9']) then
                      lace_size := Copy(lace_size, 1, 2)   // 第二個字是數字 → 取前兩碼
                    else
                      lace_size := Copy(lace_size, 1, 1);  // 第二個字不是數字 → 只取第一碼
                    PriceFormula:=Query.fieldbyname('PriceFormula').AsString;
                    freight:=Query.fieldbyname('freight').AsString;
                    //LaceNamelong:=Length(Query.fieldbyname('YWPM').Value);
                    LaceName:=Copy(Query.fieldbyname('YWPM').Value,3,999);
                 if CheckBox10.Checked =true then
                    showmessage('自動填鞋帶:PriceFormula:'+PriceFormula);
                    //showmessage('lace_size'+lace_size+'PriceFormula'+PriceFormula)
                  end
                else
                  begin
                    PriceFormula:='';
                    lace_size:='';
                    PriceFormula:='';
                    freight:='';
                  end;
               if CheckBox10.Checked =true then
                  showmessage('找到報價馬指標上移:CostingRemark:'+CostingRemark+'J:'+inttostr(j));
              Query.moveby(-j);
              break;
          end;
          Query.next;
        end;
      end;
      if CheckBox10.Checked =true then
              showmessage(Query.fieldbyname('ZSYWJC').AsString+'ZSYWJC_QQ'+ZSYWJC_QQ);
      if NOT((Query.FieldByName('CCQQ').IsNull) or (Query.FieldByName('CCQQ').AsString='')) then
        if (ZSYWJC_QQ=Query.fieldbyname('ZSYWJC').AsString) then    //新增條件 相同廠商
        if (CLBH_QQ=Query.fieldbyname('CLBH').AsString) then
        begin
            QQ:=QQ+ Query.fieldbyname('CCQQ').Value;
            if CheckBox10.Checked =true then
                  showmessage(Query.fieldbyname('CLBH').AsString+'CLBH='+CLBH_QQ+':找到報價碼材料材料:QQ:'+QQ)
        end
        else if
            NOT((StrToFloat(Query.fieldbyname('CCQQ').Value)<=CostingSize) and (CostingSize<=StrToFloat(Query.fieldbyname('CCQZ').Value))
                or(CostingSize<=StrToFloat(Query.fieldbyname('CCQQ').Value)) and (CostingSize<=StrToFloat(Query.fieldbyname('CCQZ').Value))
                  and (StrToFloat(Query.fieldbyname('CCQQ').Value)>StrToFloat(Query.fieldbyname('CCQZ').Value)))
            and ((Query.FieldByName('CostingRemark').IsNull) or (Query.FieldByName('CostingRemark').AsString=''))
                     or (pos('Grading:Cost#',Query.fieldbyname('CostingRemark').Value)>0 ) then
            begin
              Query.Edit;
              if CheckBox10.Checked =true then
                    showmessage('找到分段材料:CostingRemark:'+CostingRemark);
              //自動填分段鞋帶
              if pos('LACE',Query.fieldbyname('YWSM').Value)>0  then
                begin
                  if ((Query.FieldByName('PriceFormula').IsNull) or (Query.FieldByName('PriceFormula').AsString='')) then        //LaceName
                      if (PriceFormula<>'') and (pos(LaceName,Query.fieldbyname('YWPM').asstring)>0)then
                          begin
                            tempStr:=Copy(Query.fieldbyname('YWPM').Value,1,2);
                            if (tempStr[2] in ['0'..'9']) then
                              tempStr := Copy(tempStr, 1, 2)   // 第二個字是數字 → 取前兩碼
                            else
                              tempStr := Copy(tempStr, 1, 1);  // 第二個字不是數字 → 只取第一碼
                            Query.fieldbyname('PriceFormula').Value:=StringReplace(PriceFormula,lace_size,tempStr,[]);
                            Query.fieldbyname('Flag').AsBoolean:=false;
                            Query.fieldbyname('freight').Value:=freight;
                            //showmessage('filling lace Name'+inttostr(LaceNamelong));
                          end
                      else
                          Query.fieldbyname('Flag').AsBoolean:=True;
                end
              else
                Query.fieldbyname('Flag').AsBoolean:=True;
              //else
              //showmessage(inttostr(pos('Grading:Cost#',Query.fieldbyname('CostingRemark').Value))+'PriceFormula'+PriceFormula);
              Query.fieldbyname('CostingRemark').Value:=CostingRemark;
              QQ:=QQ+ Query.fieldbyname('CCQQ').Value;
              if CheckBox10.Checked =true then
                showmessage('QQ='+QQ);
            end;




    Query.next;
    end;    //for
Query.first;
end;

procedure TDevQuota.Button9Click(Sender: TObject);
var  i:integer;
begin
if XXZL.Active=true then
  begin
    XXZL.First;
    for i:=1 to  XXZL.RecordCount do
    begin
       Button2.Click;
       SaveBtn(XXZLS,Cancel1,Save1,true);
       XXZL.next;
       Label54.Caption:='NO:'+inttostr(i);
    end;
  end;
end;




//去除重複
procedure TDevquota.RemoveDuplicate(Query:TQuery);
var i:integer;
    Duplicate,dellist:string;
begin
Duplicate:='';
Query.first;
for i:=1 to Query.RecordCount do
begin
  if Pos(Query.fieldbyname('CLBH').AsString+Query.fieldbyname('ZSDH').AsString,Duplicate)>0 then
  begin
    //showmessage('now CLBH:'+Query.fieldbyname('CLBH').AsString+'list'+Duplicate);
    Query.Delete;
  end
  else
  begin
    Duplicate:=Duplicate+Query.fieldbyname('CLBH').AsString+Query.fieldbyname('ZSDH').AsString+'/';
    Query.next;
  end;
end;
//showmessage(dellist);
Query.first;
end;

procedure TDevQuota.Button11Click(Sender: TObject);
begin

  if (main.Edit2.Text='CDC') or (main.Edit2.Text='VB1') then
      if Checkbox11.Checked then
        CostingSize(XXZLS,QueryCostingSize,XXZL.fieldbyname('XieXing').AsString,XXZL.fieldbyname('SheHao').AsString,XXZL.fieldbyname('DEVCODE').AsString,XXZL.fieldbyname('Article').AsString);
  SaveBtn(XXZLS,Cancel1,Save1,true);
end;



procedure TDevQuota.BitBtn6Click(Sender: TObject);
begin
  with UploadQuery do
  begin
    Active:=false;
    SQL.Clear;

    SQL.Add('Select MaterialCBD_His.* from MaterialCBD_His');
    SQL.Add('LEFT JOIN CLZL   ON MaterialCBD_His.CLBH = CLZL.cldh');

    //SQL.Add('where rn=1 and CLZL.CLZMLB=''N''');
    SQL.Add('where MaterialCBD_His.KFCQ='''+KFCQ+'''');

    if (CB_FTY.ItemIndex=1) and (main.Edit2.Text='CDC')then
      sql.Add('and  MaterialCBD_His.GSBH=''VB1''')
    else
      sql.Add('and  MaterialCBD_His.GSBH='''+main.Edit2.Text+'''');
    if (main.Edit2.Text='CDC') or (main.Edit2.Text='VB1') then
      begin
        if Edit4.Text<>'' then
          if (copy(Edit4.Text,3,1)='F') or  (copy(Edit4.Text,3,1)='H') then
            sql.Add('and MaterialCBD_His.Season like ''FH'+copy(Edit4.Text,1,2)+'''' )
          else if (copy(Edit4.Text,3,1)='S') or  (copy(Edit4.Text,3,1)='U') then
            sql.Add('and MaterialCBD_His.Season like ''SS'+copy(Edit4.Text,1,2)+'''' );
      end
    else if main.Edit2.Text='VC1' then
      begin
          if (copy(Edit4.Text,1,1)='F') or  (copy(Edit4.Text,1,1)='W') then
            sql.Add('and MaterialCBD_His.Season like ''FW'+RightStr(Edit4.Text,2)+'''' )
          else if (copy(Edit4.Text,1,1)='S') or  (copy(Edit4.Text,1,1)='S') then
            sql.Add('and MaterialCBD_His.Season like ''SS'+RightStr(Edit4.Text,2)+'''' );
      end;     
     sql.add('and MaterialCBD_His.KHDH='''+KHDH+'''');

    if ((checkbox12.Checked=true) and (checkbox13.Checked=false)) then
      sql.add('       and CLZL.CQDH=''TW''');
    if ((checkbox12.Checked=false) and (checkbox13.Checked=true)) then
      sql.add('       and CLZL.CQDH=''VN''');
    if CheckBox9.Checked =true then
        showmessage(SQL.Text);
    Active:=true;
 end;

end;

procedure TDevQuota.BitBtn2Click(Sender: TObject);
var  eclApp,WorkBook:olevariant;
     i,j:integer;
begin
 //if DetQry<>nil then DetQry.Active:=false;
 if  UploadQuery.active  then
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
        eclApp.Cells(1,1):='No';
        for   i:=0   to   UploadQuery.fieldcount-1   do
        begin
            eclApp.Cells(1,i+2):=UploadQuery.fields[i].FieldName;
        end;

        UploadQuery.First;

        j:=2;
        while   not   UploadQuery.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  UploadQuery.fieldcount-1  do
          begin
            eclApp.Cells(j,i+2):=''''+UploadQuery.Fields[i].AsString;
          end;
        UploadQuery.Next;
        inc(j);
        end;

       eclapp.columns.autofit;

  with TemQry1 do
  begin
    Active:=false;
    SQL.Clear;

    SQL.Add('select Season,GSBH,KHBH,CWHL,CWHL_ID,USERID,USERDATE,CustomerCFMDate from MaterialCBDEx');
    if CheckBox9.Checked =true then
        showmessage(SQL.Text);
    Active:=true;
 end;      
      eclApp.WorkSheets[1].Name := 'MaterialCBD_His';
      //eclApp.Workbooks[1].WorkSheets.Add;
      eclApp.WorkSheets[2].Activate;
      eclApp.WorkSheets[2].Name := 'MaterialCBDEX';
        for   i:=0   to   TemQry1.fieldcount-1   do
        begin
            eclApp.Cells(1,i+2):=TemQry1.fields[i].FieldName;
        end;

        TemQry1.First;

        j:=2;
        while   not   TemQry1.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=0   to  TemQry1.fieldcount-1  do
          begin
            eclApp.Cells(j,i+2):=''''+TemQry1.Fields[i].AsString;
          end;
        TemQry1.Next;
        inc(j);
        end;
       eclapp.columns.autofit;     
      eclApp.WorkSheets[1].Activate;



       showmessage('Succeed');
       eclApp.Visible:=True;

      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
end;

procedure TDevQuota.Button12Click(Sender: TObject);
var
  i,j:integer; 
  MsExcel:olevariant;
  MsExcelWorkbook: Variant;   
  flag:boolean;
  Text2: String;
begin
   with UploadQuery do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From MaterialCBD_His where 1=2');
         active:=true;
      end;
  try
    MsExcel:=CreateOleObject('Excel.Application');
  except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK+MB_ICONWarning);
        EXIT;
      end;
  end;
  try
  if OpenDialog.Execute=true then
   begin
    MsExcelWorkBook := msExcel.Workbooks.Open(OpenDialog.FileName);
    with UploadQuery do
     begin
     cachedupdates:=true;
     requestlive:=true;
     UploadQuery.edit;
     UploadQuery.first;
     j:=2;
     flag:=true;
     while (flag=true) do
        begin
        Text2:=MsExcel.WorkBooks[1].WorkSheets[1].Cells[j,1];
        if Text2='' then
          break;
        insert;
        for   i:=0   to  UploadQuery.fieldcount-1  do    
        begin
          Text2:=MsExcel.WorkBooks[1].WorkSheets[1].Cells[j,i+2];
          if (Text2<>'') and (Text2<>'NULL')  then
            UploadQuery.Fields[i].Value:=Text2;
        end;
        inc(j);
        end;   //with UploadQuery do
    end;     //with UploadQuery do


    with UploadCBDEx do
     begin
         active:=false;
         sql.Clear;
         sql.add('Select * From MaterialCBDEx where 1=2');
         active:=true;
     cachedupdates:=true;
     requestlive:=true;
     UploadCBDEx.edit;
     UploadCBDEx.first;
     j:=2;
     flag:=true;
     while (flag=true) do
        begin
        Text2:=MsExcel.WorkBooks[1].WorkSheets[2].Cells[j,1];
        if Text2='' then
          break;
        insert;
        for   i:=0   to  UploadCBDEx.fieldcount-1  do
        begin
          Text2:=MsExcel.WorkBooks[1].WorkSheets[2].Cells[j,i+2];
          if Text2<>'' then
            UploadCBDEx.Fields[i].Value:=Text2;
        end;
        inc(j);
        end;   //with UploadQuery do
    end;     //with UploadQuery do
  end;     //if OpenDialog.Execute=true






     MsExcel.ActiveWorkBook.Saved := True;
     MsExcelWorkBook.Close;
     MsExcel.Quit;
     VarClear(MsExcel);
  except
   on E:Exception do
      begin
        //showmessage('123');
        Application.MessageBox(PChar('NO EXCEL '+E.Message),'', MB_OK);
        MsExcel.ActiveWorkBook.Saved := True;
        MsExcelWorkBook.Close;
        MsExcel.Quit;
        VarClear(MsExcel);
        Exit;
      end;  
   end;  //except
   BB2.Enabled:=true;
end;  //procedure

procedure TDevQuota.BB2Click(Sender: TObject);
var i:integer;
begin

    if  UploadQuery.active=false  then
      exit;
    UploadQuery.first;
    for i:=1 to UploadQuery.RecordCount do
    begin
      with TemQry1 do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From MaterialCBD_His where 1=1');
         sql.add('  and CLBH='''+UploadQuery.fieldbyname('CLBH').AsString+'''');
         sql.add('  and GSBH='''+UploadQuery.fieldbyname('GSBH').AsString+'''');
         sql.add('  and ZSBH='''+UploadQuery.fieldbyname('ZSBH').AsString+'''');
         sql.add('  and Season='''+UploadQuery.fieldbyname('Season').AsString+'''');
         sql.add('  and YN='''+UploadQuery.fieldbyname('YN').AsString+'''');
         sql.add('  and KFCQ='''+UploadQuery.fieldbyname('KFCQ').AsString+'''');
         sql.add('  and KHDH='''+UploadQuery.fieldbyname('KHDH').AsString+'''');
         active:=true;
      end;
      if TemQry1.Eof then
          UpdateSQL5.Apply(ukinsert)
      else
          UpdateSQL5.Apply(ukmodify);
      UploadQuery.next;
    end;

    UploadCBDEx.first;
    for i:=1 to UploadCBDEx.RecordCount do
    begin
      with TemQry1 do
      begin
         active:=false;
         sql.Clear;
         sql.add('Select * From MaterialCBDEx where 1=1');
         sql.add('  and Season='''+UploadCBDEx.fieldbyname('Season').AsString+'''');
         sql.add('  and GSBH='''+UploadCBDEx.fieldbyname('GSBH').AsString+'''');
         sql.add('  and KHBH='''+UploadCBDEx.fieldbyname('KHBH').AsString+'''');
         active:=true;
      end;
      if TemQry1.Eof then
          UpdateSQL6.Apply(ukinsert)
      else
          UpdateSQL6.Apply(ukmodify);
      UploadCBDEx.next;
    end;
    TemQry1.active:=false;
    BB2.Enabled:=false;   
    UploadCBDEx.active:=false;
    UploadQuery.active:=false;
end;







procedure TDevQuota.DS2DataChange(Sender: TObject; Field: TField);
begin
    if Field <> nil then
      if Field.FieldName= 'PriceFormula' then
      begin
        if (pos('Auto link',XXZLS.fieldbyname('CostingRemark').AsString)>0)  then
          begin
          XXZLS.edit;
          XXZLS.fieldbyname('CostingRemark').AsString:=copy(XXZLS.fieldbyname('CostingRemark').AsString,1,pos('Auto link',XXZLS.fieldbyname('CostingRemark').AsString)-1);
          end;
      end;
end;
procedure TDevQuota.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if not(XXZl.FieldByName('SS').IsNull or XXZl.FieldByName('XX').IsNull)  then
  begin
    dbgrid1.canvas.font.color:=clred;
  end;
end;
procedure TDevQuota.ComboBox3Change(Sender: TObject);
begin
  if CB_FTY.ItemIndex=1 then
    SupEdit.Text:='YQA'
  else   
    SupEdit.Text:='JNG';

end;

end.

