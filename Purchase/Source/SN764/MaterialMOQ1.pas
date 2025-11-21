unit MaterialMOQ1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, DBTables, StdCtrls, ExtCtrls,comobj,
  ComCtrls, GridsEh, DBGridEh, Menus, OleServer, ExcelXP,DBGridEhImpExp, ShellAPI, Zlib,
  Buttons, Mask, DBCtrls,IniFiles, Excel2000;

type
  TMaterialMOQ = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    SupIDEdit: TEdit;
    Query1: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    CLBHEdit: TEdit;
    Button2: TButton;
    Label4: TLabel;
    SeaEdit: TEdit;
    lbl1: TLabel;
    SuppEdit: TEdit;
    Label3: TLabel;
    YWPMEdit: TEdit;
    pgc1: TPageControl;
    TS1: TTabSheet;
    DBGrid1: TDBGridEh;
    Pop_Quotation: TPopupMenu;
    S1: TMenuItem;
    S2: TMenuItem;
    S3: TMenuItem;
    Update_Quotation: TUpdateSQL;
    ExcelApplication1: TExcelApplication;
    SaveDialog1: TSaveDialog;
    CKBSel: TCheckBox;
    tmpQry: TQuery;
    OpenDialog1: TOpenDialog;
    Label7: TLabel;
    Edit8: TEdit;
    Query1SEASON: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1SampleLeadTime: TIntegerField;
    Query1SampleMOQ: TCurrencyField;
    Query1ProdMOQ: TCurrencyField;
    Query1SamplePrice: TCurrencyField;
    Query1ProdPrice: TCurrencyField;
    Query1REMARK: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    BBTT1: TBitBtn;
    Query1ZSBH: TStringField;
    Panel2: TPanel;
    Chk_NoLeadTime: TCheckBox;
    Chk_NoMOQ: TCheckBox;
    Chk_NoPrice: TCheckBox;
    Query1SamplePriceVN: TCurrencyField;
    Query1EffectiveDate: TDateTimeField;
    Panel3: TPanel;
    Query1EffectiveDate_Old: TDateTimeField;
    DS_MaterialPrice: TDataSource;
    Qry_MaterialPrice: TQuery;
    Qry_MaterialPriceSeason: TStringField;
    Qry_MaterialPriceSamplePrice: TCurrencyField;
    Qry_MaterialPriceSamplePriceVN: TCurrencyField;
    Qry_MaterialPriceEffectiveDate: TDateTimeField;
    Qry_MaterialPriceUSERID: TStringField;
    Qry_MaterialPriceUSERDATE: TDateTimeField;
    Query1ZSBH_Old: TStringField;
    Label6: TLabel;
    Label8: TLabel;
    Query1Location: TStringField;
    Splitter1: TSplitter;
    TabSheet1: TTabSheet;
    Panel10: TPanel;
    Label9: TLabel;
    DBGridEh7: TDBGridEh;
    Qry_Problem: TQuery;
    Qry_ProblemCLBH: TStringField;
    Qry_ProblemZSBH: TStringField;
    Qry_ProblemSeason: TStringField;
    DS_Problem: TDataSource;
    Lbl_Warnning: TLabel;
    Timer1: TTimer;
    Qry_ProblemUSERID: TStringField;
    Qry_ProblemYWPM: TStringField;
    Qry_ProblemZSYWJC: TStringField;
    Delete1: TMenuItem;
    Button3: TButton;
    TS_Policy: TTabSheet;
    DBGridEh3: TDBGridEh;
    Qry_Policy: TQuery;
    StringField1: TStringField;
    Query1CR1: TStringField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    StringField3: TStringField;
    Query1style: TStringField;
    StringField4: TStringField;
    Query1Country: TStringField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    DS_Policy: TDataSource;
    Update_Policy: TUpdateSQL;
    Pop_Policy: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    Insert: TMenuItem;
    Pop_MaterialPrice: TPopupMenu;
    P1: TMenuItem;
    P2: TMenuItem;
    P3: TMenuItem;
    P4: TMenuItem;
    Qry_MaterialPriceZSBH: TStringField;
    Qry_MaterialPriceCLBH: TStringField;
    Qry_MaterialPriceOld_EffectiveDate: TDateTimeField;
    Up_MaterialPrice: TUpdateSQL;
    Qry_PolicyUnit: TStringField;
    Qry_Policyold_Unit: TStringField;
    Qry_PolicyAverage: TCurrencyField;
    Query1TotalLT: TIntegerField;
    Query1Forecast_Leadtime: TIntegerField;
    Panel9: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    DBGridEh1: TDBGridEh;
    Splitter4: TSplitter;
    Panel11: TPanel;
    Panel12: TPanel;
    Label13: TLabel;
    DBGridEh5: TDBGridEh;
    DS_LT_Histiry: TDataSource;
    Qry_LT_Histiry: TQuery;
    Qry_LT_HistirySampleLeadTime: TIntegerField;
    Qry_LT_HistiryProdLeadTime: TIntegerField;
    Qry_LT_HistiryForecast_Leadtime: TIntegerField;
    Qry_LT_HistiryUSERID: TStringField;
    Qry_LT_HistiryUSERDATE: TDateTimeField;
    Query1old_SampleLeadTime: TIntegerField;
    Query1old_ProdLeadTime: TIntegerField;
    Query1old_Forecast_Leadtime: TIntegerField;
    Query1FLT: TIntegerField;
    Query1Skin_Quality: TCurrencyField;
    Query1Skin_Size: TCurrencyField;
    Query2: TQuery;
    Chk_NewMat: TCheckBox;
    Query1ExtraPrice: TCurrencyField;
    Panel5: TPanel;
    Edit2: TEdit;
    Button4: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit7: TEdit;
    Label14: TLabel;
    Edit9: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Edit10: TEdit;
    Label17: TLabel;
    Edit11: TEdit;
    Label18: TLabel;
    Edit12: TEdit;
    Label19: TLabel;
    Edit13: TEdit;
    Label20: TLabel;
    Label21: TLabel;
    Edit14: TEdit;
    Label22: TLabel;
    Edit15: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label23: TLabel;
    ComboBox1: TComboBox;
    Qry_PolicyADT: TStringField;
    Qry_PolicyADT_FreeQty: TCurrencyField;
    Qry_PolicyADT_Charge: TCurrencyField;
    Qry_PolicySMS: TStringField;
    Qry_PolicySMS_FreeQty: TCurrencyField;
    Qry_PolicySMS_Charge: TCurrencyField;
    Qry_PolicySMU: TStringField;
    Qry_PolicySMU_FreeQty: TCurrencyField;
    Qry_PolicySMU_Charge: TCurrencyField;
    Qry_PolicyOTH: TStringField;
    Qry_PolicyOTH_FreeQty: TCurrencyField;
    Qry_PolicyOTH_Charge: TCurrencyField;
    Qry_PolicyCR1_FreeQty: TCurrencyField;
    Qry_PolicyCR1_Charge: TCurrencyField;
    Qry_PolicyCR2: TStringField;
    Qry_PolicyCR2_FreeQty: TCurrencyField;
    Qry_PolicyCR2_charge: TCurrencyField;
    Query1ProdLeadTime: TIntegerField;
    Qry_Policyywpm: TStringField;
    Qry_PolicyCFM: TStringField;
    Qry_PolicyCFM_FreeQty: TCurrencyField;
    Qry_PolicyCFM_Charge: TCurrencyField;
    Qry_Policyzsbh: TStringField;
    Qry_Policyclbh: TStringField;
    Qry_Policydwbh: TStringField;
    Qry_PolicyUSpriceHG: TFloatField;
    Query1country2: TStringField;
    TabSheet2: TTabSheet;
    Memo1: TMemo;
    Query1Surcharge: TCurrencyField;
    Query1Dyingfee: TCurrencyField;
    Edit16: TEdit;
    Edit17: TEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    YPDHEdit: TEdit;
    Label27: TLabel;
    DevCodeEdit: TEdit;
    Label28: TLabel;
    ArticleEdit: TEdit;
    Query1ShippedDate: TDateTimeField;
    Query1AWB: TStringField;
    Query1Brand: TStringField;
    Label29: TLabel;
    Edit21: TEdit;
    ComboBox14: TComboBox;
    Label30: TLabel;
    Query1BankAccount: TStringField;
    Query1ZSYYZS: TStringField;
    Qry_PolicyBankAccount: TStringField;
    Qry_PolicyZSYYZS: TStringField;
    Query1PAYMENTTERM: TStringField;
    Qry_PolicyPAYMENTTERM: TStringField;
    Query1AddTLeadtime: TIntegerField;
    chk_purdate: TCheckBox;
    DTP1: TDateTimePicker;
    Label31: TLabel;
    DTP2: TDateTimePicker;
    Query1MatRemark: TStringField;
    Qry_PolicyMatRemark: TStringField;
    Query1FlexCode: TStringField;
    Query1FlexDescription: TStringField;
    Label32: TLabel;
    Edit1: TEdit;
    Query1PurDate: TDateTimeField;
    Qry_His: TQuery;
    Query1ColorGroup: TStringField;
    Query1Remark_Color: TStringField;
    S4: TMenuItem;
    Query1CLBH_Status: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgrdh4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure BBTT1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Qry_ProblemAfterOpen(DataSet: TDataSet);
    procedure Delete1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure InsertClick(Sender: TObject);
    procedure P4Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure P3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button4Click(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure CLBHEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DevCodeEditKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure S4Click(Sender: TObject);
  private
    { Private declarations }
    GSBH_SFL:String;
  public
    BOM_N31_KFCQ:String;
    procedure ReadIni();
    procedure SREditPaste();
    function GetMutiSRSubSQL(Str:String):String;
    { Public declarations }
    procedure MatNoEditPaste();
    function GetMutiMatNoSubSQL(Str:String):String;
  end;

var
  MaterialMOQ: TMaterialMOQ;
  dbg2 : boolean;
  NDate:TDate;
implementation

uses main1, MaterialMOQ_Purchaser1, CountryLeadtime1, MaterialMOQ_Copy1,
  MaterialMOQ_LaceStyle1, FunUnit,untClipboard, ColorGroup_History1;

{$R *.dfm}
procedure TMaterialMOQ.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      BOM_N31_KFCQ:=MyIni.ReadString('ERP','BOM_N31_KFCQ','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TMaterialMOQ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialMOQ.MatNoEditPaste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalMatNo:String;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    TotalMatNo:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalMatNo:=TotalMatNo+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalMatNo)>0 then
    begin
      CLBHEdit.Text:=Copy(TotalMatNo,1,length(TotalMatNo)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;
function TMaterialMOQ.GetMutiMatNoSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   tmResult,TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   tmResult:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   //BDE TQuery 不能太長所以改用暫存
   if ((tmpList.Count>=20) and (tmpList.Count<=50)) then
   begin
     with tmpQry do
     begin
       Active:=false;
       SQL.Clear;
       SQL.add('if object_id(''tempdb..#CLBHList'') is not null    ');
       SQL.add('begin drop table #CLBHList end                 ');
       SQL.Add('select CLDH into #CLBHList from CLZL');
       SQL.Add('where  CLDH '+tmResult);
       //funcobj.WriteErrorLog(sql.Text);
       ExecSQL();
       Result:=' in (select CLDH from #CLBHList) ';
     end;
   end else if (tmpList.Count>=50) then
   begin
      showmessage('Vui long khong nhap nhieu hon 50 MatNo#');
      abort;
   end else
   begin
      Result:=tmResult;
   end;
   tmpList.Free;
 end else
 begin
   Result:=' like '''+Str+'%'' ';
 end;
end;
//
function TMaterialMOQ.GetMutiSRSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   tmResult,TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   tmResult:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   //BDE TQuery 不能太長所以改用暫存
   if ((tmpList.Count>=20) and (tmpList.Count<=100)) then
   begin
     with tmpQry do
     begin
       Active:=false;
       SQL.Clear;
       SQL.add('if object_id(''tempdb..#SRList'') is not null    ');
       SQL.add('begin drop table #SRList end                 ');
       SQL.Add('select distinct devcode into #SRList from kfxxzl');
       SQL.Add('where  devcode '+tmResult);
       //funcobj.WriteErrorLog(sql.Text);
       ExecSQL();
       Result:=' in (select devcode from #SRList) ';
     end;
   end else if (tmpList.Count>100) then
   begin
      showmessage('Vui long khong nhap nhieu hon 100 SR#');
      abort;
   end else
   begin
      Result:=tmResult;
   end;
   tmpList.Free;
 end else
 begin
   Result:=' like '''+Str+'%'' ';
 end;
end;
//

procedure TMaterialMOQ.Button1Click(Sender: TObject);
var   tmpList, StrList: TStringlist;
      i, StrCount: integer;
      StrSource, YWPMSQL, KHBH: string;
      MatNoEditSubSQL,DevCodeSubSQL:String;
begin

  if  (SeaEdit.Text='') and  (YWPMEdit.text='')  and  (CLBHEdit.text='') and  (SuppEdit.text='') and (YPDHEdit.text='') and (DevCodeEdit.text='') and (main.Edit2.Text <> 'TBDC') and (not chk_purdate.Checked) then
  begin
    showmessage('Pls keyin yellow color condition !');
    exit ;
  end;

  if (YWPMEdit.text <> '') then
  begin
    StrSource := YWPMEdit.Text;
    StrList := TStringList.Create;

    try
      StrList.Delimiter := '@';
      StrList.DelimitedText := StrSource;

      YWPMSQL := 'AND (';
      for i := 0 to StrList.Count-1 do
      begin
        if (i = 0) then
          YWPMSQL := YWPMSQL + 'CLZL.YWPM LIKE ''%' + StrList[i] + '%'' '
        else
          YWPMSQL := YWPMSQL + 'AND CLZL.YWPM LIKE ''%' + StrList[i] + '%'' ';
      end;
      YWPMSQL := YWPMSQL + ')';
    finally
      StrList.Free;
    end;
  end;
  MatNoEditSubSQL:=GetMutiMatNoSubSQL(CLBHEdit.Text);
  DevCodeSubSQL:=GetMutiSRSubSQL(DevCodeEdit.Text);
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select KHBH from KFZL_GS where GSBH = '''+main.Edit2.Text+'''');
    Active:=true;
    While not Eof do
    begin
      KHBH:=KHBH+''''+FieldByName('KHBH').AsString+''',';
      Next;
    end;
    Active:=false;
    if KHBH = '' then
       KHBH:='''036'''
    else
       KHBH:=Copy(KHBH,1,length(KHBH)-1);
  end;

  //第一頁
  Qry_MaterialPrice.Active:=False;
  Qry_LT_Histiry.Active:=False;
  if pgc1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;  //抓該季節有用到的材料 樣品單+採購單
      sql.add('select SEASON ,main.CLBH,ZSBH,ZSBH_Old,YWPM,MatRemark,FlexCode,DWBH,ZSYWJC,');
      sql.add('       SampleLeadTime,ProdLeadTime,AddTLeadtime,SampleMOQ,ProdMOQ,');
      sql.add('       SamplePrice,SamplePriceVN,ProdPrice,SamplePurchaser_Name,');
      sql.add('       main.REMARK,main.USERDATE,main.USERID,EffectiveDate,EffectiveDate_Old ');
      sql.add('       ,Location,Forecast_Leadtime,');
      sql.add('       case when TotalLT is not null then TotalLT else TotalLT1 end as TotalLT,');
      sql.add('       case when FLT is not null then FLT else FLT1 end as FLT,');
      sql.add('       old_SampleLeadTime,old_ProdLeadTime');
      sql.add('       ,old_Forecast_Leadtime,Skin_Size,Skin_Quality,ExtraPrice,country,Surcharge,Dyingfee,ShippedDate,AWB,Brand,BankAccount,ZSYYZS,PAYMENTTERM,FlexDescription,PurDate,ColorGroup,CLZL_ColorGroup.Remark as Remark_Color');
      //sql.add('       ,case when xxzls2.CLBH is null and xxzls2.CLBH is null then '''' else main.CLBH end as CLBH_Status');
      sql.add('       ,case when xxzls2.CLBH is not null or YPZLZLs2.CLBH is not null then main.CLBH else '''' end as CLBH_Status');
      sql.add('from (');
      sql.add('select CG.SEASON,CG.CLBH,CG.ZSBH,CG.ZSBH as ZSBH_Old,CLZL.YWPM,clbzzl.bz as MatRemark,CLZL_FLEX.CLDHFLEX AS FlexCode,CLZL.DWBH,ZSZL.ZSYWJC, ');
      sql.add('       MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,MaterialMOQ.ADDTLeadtime,MaterialMOQ.SampleMOQ,MaterialMOQ.ProdMOQ,');
      sql.add('       MaterialMOQ.SamplePrice,MaterialMOQ.SamplePriceVN,MaterialMOQ.ProdPrice,BUSERS.USERNAME as SamplePurchaser_Name,');
      sql.add('       MaterialMOQ.REMARK,MaterialMOQ.USERDATE,MaterialMOQ.USERID,MaterialMOQ.EffectiveDate,MaterialMOQ.EffectiveDate as EffectiveDate_Old');
      sql.add('       ,MaterialMOQ.Location,MaterialMOQ.Forecast_Leadtime ');
      sql.add('       ,(MaterialMOQ.Forecast_Leadtime+Country.Customclearanceday+Country.ShippingleadtimeSEA) as TotalLT');
      sql.add('       ,(MaterialMOQ.ProdLeadTime+Country.Customclearanceday+Country.ShippingleadtimeSEA) as FLT');
      sql.add('       ,(MaterialMOQ.Forecast_Leadtime+Country.Customclearanceday+Country.Shippingleadtimeair) as TotalLT1');
      sql.add('       ,(MaterialMOQ.ProdLeadTime+Country.Customclearanceday+Country.Shippingleadtimeair) as FLT1');
      sql.add('       ,MaterialMOQ.SampleLeadTime as old_SampleLeadTime ');
      sql.add('       ,MaterialMOQ.ProdLeadTime as old_ProdLeadTime ');
      sql.add('       ,MaterialMOQ.Forecast_Leadtime as old_Forecast_Leadtime ');
      sql.add('       ,MaterialMOQ.Skin_Size  ');
      sql.add('       ,MaterialMOQ.Skin_Quality  ');
      sql.add('       ,MaterialMOQ.ExtraPrice,ZSZL_DEV.country,MaterialMOQ.Surcharge,MaterialMOQ.Dyingfee,CGZL_Color2.ShippedDate,CGZL_Color2.AWB,Brand,zszl_dev.BankAccount,zszl_dev.ZSYYZS,zszl_dev.PAYMENTTERM ');
      sql.add('       ,cldhflexdes as FlexDescription ');
      sql.add('from ( select season,clbh,zsbh,brand from ( ');
      //樣品單材料
      sql.add('select kfxxzl.jijie as season,ypzls.clbh,ypzls.csbh as zsbh,kfxxzl.KHDH as brand from ypzls');
      sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add('left join xxzl on xxzl.xiexing=ypzl.xiexing and xxzl.shehao=ypzl.shehao');
      sql.Add(' left join clzl on clzl.cldh=ypzls.CLBH');
      sql.Add('left join cgzlss on ypzls.ypdh = cgzlss.zlbh and ypzls.clbh = cgzlss.clbh');
      sql.Add('left join cgzl on cgzl.cgno = cgzlss.cgno');
      sql.add('where kfxxzl.khdh in ('+KHBH+')');
      if BOM_N31_KFCQ<>'' then
        SQL.Add(' and kfxxzl.KFCQ in ('''+MaterialMOQ.BOM_N31_KFCQ+''' )');
      if SeaEdit.text<>'' then   sql.add('and kfxxzl.jijie='''+SeaEdit.Text+'''');
      if ComboBox14.Text <> '' then sql.Add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
      if CLBHEdit.text<>'' then   //sql.add('and ypzls.clbh='''+CLBHEdit.text+''' ');
          sql.Add('and ypzls.clbh '+MatNoEditSubSQL);
      if YPDHEdit.text<>'' then  sql.add('and ypzls.ypdh ='''+YPDHEdit.Text+'''');
      if DevCodeEdit.text<>'' then   //sql.add('and kfxxzl.devcode='''+DevCodeEdit.Text+'''');
         sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
      if YWPMEdit.Text<>'' then   sql.Add(YWPMSQL);
      if ArticleEdit.text<>'' then   sql.add('and xxzl.article='''+ArticleEdit.Text+'''');
      if main.Edit2.Text = 'CDC' then
        sql.add(' and ypzls.CSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');
      if chk_purdate.Checked then
        sql.add('and cgzl.Userdate between '''+formatdatetime('YYYY/MM/DD',DTP1.Date)+''' and '''+formatdatetime('YYYY/MM/DD',DTP2.Date)+''' ');

      sql.add('union all ');
      sql.add('select kfxxzl.jijie as season,clzhzl.cldh1 as clbh,clzhzl.zsdh  as zsbh,kfxxzl.KHDH as brand from ypzls');
      sql.add('left join clzhzl on clzhzl.cldh=ypzls.clbh');
      sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
      sql.add('left join xxzl on xxzl.xiexing=ypzl.xiexing and xxzl.shehao=ypzl.shehao');
      sql.Add(' left join clzl on clzl.cldh=clzhzl.cldh1');
      sql.Add('left join cgzlss on ypzls.ypdh = cgzlss.zlbh and ypzls.clbh = cgzlss.clbh');
      sql.Add('left join cgzl on cgzl.cgno = cgzlss.cgno');
      sql.add('where kfxxzl.khdh in ('+KHBH+')   and CLZHZL.SYL>0 ');
      if BOM_N31_KFCQ<>'' then
        SQL.Add(' and kfxxzl.KFCQ in ('''+MaterialMOQ.BOM_N31_KFCQ+''' )');
      if SeaEdit.text<>'' then   sql.add('and kfxxzl.jijie='''+SeaEdit.Text+'''');
      if ComboBox14.Text <> '' then sql.Add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
      if CLBHEdit.text<>'' then   //sql.add('and clzhzl.cldh1='''+CLBHEdit.text+''' ');
          sql.Add('and clzhzl.cldh1 '+MatNoEditSubSQL);
      if YPDHEdit.text<>'' then  sql.add('and ypzls.ypdh ='''+YPDHEdit.Text+'''');
      if DevCodeEdit.text<>'' then  // sql.add('and kfxxzl.devcode='''+DevCodeEdit.Text+'''');
         sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
      if YWPMEdit.Text<>'' then   sql.Add(YWPMSQL);
      if ArticleEdit.text<>'' then   sql.add('and xxzl.article='''+ArticleEdit.Text+'''');
      if main.Edit2.Text = 'CDC' then
        sql.add(' and clzhzl.zsdh not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');
      if chk_purdate.Checked then
        sql.add('and cgzl.Userdate between '''+formatdatetime('YYYY/MM/DD',DTP1.Date)+''' and '''+formatdatetime('YYYY/MM/DD',DTP2.Date)+''' ');

      sql.add('union all ');
      sql.add('select jijie as season,clzhzl.cldh1 as clbh,clzhzl.zsdh  as zsbh,brand from (');
      sql.add('select kfxxzl.jijie,clzhzl.cldh,kfxxzl.KHDH as brand from ypzls ');
      sql.add('inner join clzhzl on clzhzl.cldh=ypzls.clbh');
      sql.add('left join ypzl on ypzl.ypdh=ypzls.ypdh');
      sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao ');
      sql.add('left join xxzl on xxzl.xiexing=ypzl.xiexing and xxzl.shehao=ypzl.shehao ');
      sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
      sql.Add('left join cgzlss on ypzls.ypdh = cgzlss.zlbh and ypzls.clbh = cgzlss.clbh');
      sql.Add('left join cgzl on cgzl.cgno = cgzlss.cgno');
      sql.add('where kfxxzl.khdh in ('+KHBH+') and CLZHZL.SYL>0   and clzl.clzmlb=''Y''');
      if BOM_N31_KFCQ<>'' then
        SQL.Add('     and kfxxzl.KFCQ in ('''+MaterialMOQ.BOM_N31_KFCQ+''' )');
      if SeaEdit.text<>'' then   sql.add('and kfxxzl.jijie='''+SeaEdit.Text+'''');
      if ComboBox14.Text <> '' then sql.Add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
      if YPDHEdit.text<>'' then  sql.add('and ypzls.ypdh ='''+YPDHEdit.Text+'''');
      if DevCodeEdit.text<>'' then   //sql.add('and kfxxzl.devcode='''+DevCodeEdit.Text+'''');
         sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
      if ArticleEdit.text<>'' then   sql.add('and xxzl.article='''+ArticleEdit.Text+'''');
      if main.Edit2.Text = 'CDC' then
        sql.add(' and ypzls.CSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');
      if chk_purdate.Checked then
        sql.add('and cgzl.Userdate between '''+formatdatetime('YYYY/MM/DD',DTP1.Date)+''' and '''+formatdatetime('YYYY/MM/DD',DTP2.Date)+''' ');

      sql.add('  ) clzhzl2');
      sql.add('left join clzhzl on clzhzl.cldh=clzhzl2.cldh');
      sql.add('left JOIN clzl clzl ON clzhzl.cldh1 = clzl.cldh ');
      sql.add('where 1=1 ');
      if CLBHEdit.text<>'' then   //sql.add('   and clzhzl.cldh1='''+CLBHEdit.text+''' ');
          sql.Add('and clzhzl.cldh1 '+MatNoEditSubSQL);
      if YWPMEdit.Text<>'' then   sql.Add(YWPMSQL);
      sql.add(') YPZLS ');
      sql.add('Group by season,clbh,zsbh,brand ');
      //以上樣品單
      if (YPDHEdit.text='') and (DevCodeEdit.text='') and (ArticleEdit.text='') then
      begin
      //採購單材料
        sql.add('union all ');
        sql.add('select cgzl.season,cgzlss.clbh,cgzl.zsbh,kfxxzl.KHDH as brand from cgzl');
        sql.add('left join (select cgno,clbh,zlbh,stage from cgzlss)cgzlss on cgzlss.cgno=cgzl.cgno');
        sql.Add('left join clzl on clzl.cldh=cgzlss.clbh');
        sql.Add('left join YPZL on YPZL.YPDH = CGZLSS.ZLBH');
        sql.Add('left join kfxxzl on kfxxzl.XieXing = YPZL.XieXing and kfxxzl.SheHao = YPZL.SheHao');
        sql.add('where 1=1 and CGZL.GSBH = '''+main.Edit2.Text+''' and kfxxzl.khdh in ('+KHBH+')');   //20221101 CBY 顯示Leadtime 取消 and CGZLSS.ZLBH <> ''ALL''
        if main.Edit2.Text = 'CDC' then
          sql.add(' and CGZL.ZSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');   //20221101 CBY 顯示Leadtime 取消 and CGZLSS.ZLBH <> ''ALL''
        if SeaEdit.text<>'' then   sql.add('and cgzl.season='''+SeaEdit.Text+'''');
        if ComboBox14.Text <> '' then sql.Add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
        if CLBHEdit.text<>'' then   //sql.add('and cgzlss.clbh='''+CLBHEdit.text+''' ');
            sql.add('and cgzlss.clbh '+MatNoEditSubSQL);
        if YWPMEdit.Text<>'' then   sql.Add(YWPMSQL);
        if chk_purdate.Checked then sql.add('and cgzl.Userdate between '''+formatdatetime('YYYY/MM/DD',DTP1.Date)+''' and '''+formatdatetime('YYYY/MM/DD',DTP2.Date)+''' ');
        sql.add('group by cgzl.season,cgzlss.clbh ,cgzl.zsbh,kfxxzl.KHDH');
      end;
      //以下量產材料
      if (YPDHEdit.text='') and (main.Edit2.Text <> 'CDC') then
      begin
        sql.add('union all ');
        sql.add('select season,clbh,zsbh,brand from (');
        sql.add('select xxzl.jijie as season,xxzls.clbh,xxzls.csbh as zsbh,kfxxzl.KHDH as brand from xxzls');
        sql.add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
        sql.add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
        sql.Add('left join clzl on clzl.cldh=xxzls.CLBH');
        sql.add('where xxzl.khdh in ('+KHBH+')');
        if BOM_N31_KFCQ<>'' then
          SQL.Add(' and kfxxzl.KFCQ in ('''+MaterialMOQ.BOM_N31_KFCQ+''' )');
        if SeaEdit.text<>'' then   sql.add('and xxzl.jijie='''+SeaEdit.Text+'''');
        if CLBHEdit.text<>'' then   //sql.add('and xxzls.clbh='''+CLBHEdit.text+''' ');
            sql.Add(' and xxzls.clbh '+MatNoEditSubSQL);
        if YWPMEdit.Text<>'' then   sql.Add(YWPMSQL);
        if DevCodeEdit.text<>'' then  // sql.add('and kfxxzl.devcode='''+DevCodeEdit.Text+'''');
            sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
        if ArticleEdit.text<>'' then   sql.add('and xxzl.article='''+ArticleEdit.Text+'''');
        if main.Edit2.Text = 'CDC' then
          sql.add(' and xxzls.CSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');   //20221101 CBY 顯示Leadtime 取消 and CGZLSS.ZLBH <> ''ALL''

        sql.add('union all ');
        sql.add('select xxzl.jijie as season,clzhzl.cldh1 as clbh,clzhzl.zsdh  as zsbh,kfxxzl.KHDH as brand from xxzls');
        sql.add('left join clzhzl on clzhzl.cldh=xxzls.clbh');
        sql.add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
        sql.add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
        sql.Add(' left join clzl on clzl.cldh=clzhzl.cldh1');
        sql.add('where xxzl.khdh in ('+KHBH+')  and CLZHZL.SYL>0 ');
        if BOM_N31_KFCQ<>'' then
          SQL.Add('    and kfxxzl.KFCQ in ('''+MaterialMOQ.BOM_N31_KFCQ+''' )');
        if SeaEdit.text<>'' then   sql.add('and xxzl.jijie='''+SeaEdit.Text+'''');
        if CLBHEdit.text<>'' then   //sql.add('and clzhzl.cldh1='''+CLBHEdit.text+''' ');
            sql.Add(' and clzhzl.cldh1 '+MatNoEditSubSQL);
        if YWPMEdit.Text<>'' then   sql.Add(YWPMSQL);
        if DevCodeEdit.text<>'' then  // sql.add('and kfxxzl.devcode='''+DevCodeEdit.Text+'''');
            sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
        if ArticleEdit.text<>'' then   sql.add('and xxzl.article='''+ArticleEdit.Text+'''');
        if main.Edit2.Text = 'CDC' then
          sql.add(' and xxzls.CSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');   //20221101 CBY 顯示Leadtime 取消 and CGZLSS.ZLBH <> ''ALL''

        sql.add('union all');
        sql.add('select jijie as season,clzhzl.cldh1 as clbh,clzhzl.zsdh as zsbh,brand from (');
        sql.add('select xxzl.jijie,clzhzl.cldh,kfxxzl.KHDH as brand from xxzls');
        sql.add('inner join clzhzl on clzhzl.cldh=xxzls.clbh');                                                              
        sql.add('left join xxzl on xxzl.xiexing=xxzls.xiexing and xxzl.shehao=xxzls.shehao');
        sql.add('left join kfxxzl on kfxxzl.xiexing=xxzls.xiexing and kfxxzl.shehao=xxzls.shehao');
        sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
        sql.add('where xxzl.khdh in ('+KHBH+') and CLZHZL.SYL>0   and clzl.clzmlb=''Y''');
        if BOM_N31_KFCQ<>'' then
          SQL.Add(' and kfxxzl.KFCQ in ('''+MaterialMOQ.BOM_N31_KFCQ+''' )');
        if SeaEdit.text<>'' then   sql.add('and xxzl.jijie='''+SeaEdit.Text+'''');
        if DevCodeEdit.text<>'' then  // sql.add('and kfxxzl.devcode='''+DevCodeEdit.Text+'''');
          sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
        if ArticleEdit.text<>'' then   sql.add('and xxzl.article='''+ArticleEdit.Text+'''');
        if main.Edit2.Text = 'CDC' then
          sql.add(' and xxzls.CSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');   //20221101 CBY 顯示Leadtime 取消 and CGZLSS.ZLBH <> ''ALL''
        sql.add('  ) clzhzl2');
        sql.add('left join clzhzl on clzhzl.cldh=clzhzl2.cldh');
        sql.add('left join clzl clzl ON clzhzl.cldh1 = clzl.cldh where 1=1');
        if CLBHEdit.text<>'' then   //sql.add('and clzhzl.cldh1='''+CLBHEdit.text+''' ');
          sql.Add('and clzhzl.cldh1 '+MatNoEditSubSQL);
        if YWPMEdit.Text<>'' then   sql.Add(YWPMSQL);
        sql.add(') XXZL ');
        sql.add('group by season,clbh,zsbh,brand ');
      end;
      //以上量產材料
      sql.add('  ) CG  ');
      sql.add('left join CLZL on CLZl.CLDH=CG.CLBH ');
      sql.Add('left join clbzzl on CLZL.CLDH=clbzzl.cldh and clbzzl.zybb=''E'' ');
      sql.Add('left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH ');
      sql.Add('left join CLZL_FLEXS on CLZL_FLEXS.cldhflex=CLZL_FLEX.cldhflex ');
      sql.Add('left join zszl on zszl.zsdh=CG.ZSBH ');
      sql.Add('left join ZSZL_DEV on ZSZL_DEV.zsdh=zszl.zsdh  ');
      sql.add('left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  ');
      sql.add('left join MaterialMOQ  on CG.CLBH=MaterialMOQ.CLBH and CG.SEASON=MaterialMOQ.SEASON and  CG.zsbh=MaterialMOQ.ZSBH  ');
      sql.Add('left join Country on Country.Country=ZSZL_DEV.country');
      sql.Add('left join CGZL_Color2 on CGZL_Color2.clbh=CLZl.CLDH');
      //20121011 新增
      sql.add('where CG.CLBH is not null and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
      if   CLBHEdit.Text<>'' then
           //sql.add(' and CG.CLBH = '''+CLBHEdit.Text+'''');
           sql.Add(' and CG.CLBH '+MatNoEditSubSQL);
      if   SuppEdit.Text<>'' then
           sql.add(' and ZSZL.ZSYWJC like ''%'+SuppEdit.Text+'%'+'''');
      if   YWPMEdit.text <>'' then
           sql.Add(YWPMSQL);
      if   SupIDEdit.Text<>'' then
           sql.add(' and CG.ZSBH='''+SupIDEdit.Text+'''');
      if   edit8.Text<>'' then
           sql.add(' and ZSZL_DEV.SamplePurchaser='+''''+edit8.Text+'''');
      if Chk_NoLeadTime.Checked=true then
         sql.add('   and (MaterialMOQ.SampleLeadTime is null or MaterialMOQ.ProdLeadTime is null ) ');
      if Chk_NoMOQ.Checked=true then
         sql.add('   and (MaterialMOQ.SampleMOQ is null or MaterialMOQ.ProdMOQ is null ) ');
      if Chk_NoPrice.Checked=true then
         sql.add('   and (MaterialMOQ.SamplePrice is null and MaterialMOQ.ProdPrice is null ) ');
      if   edit21.Text<>'' then
           sql.add(' and Brand like '+''''+edit21.Text+'''');
        //抓取MaterialMOQ中有資料但不存在採購單中的資料,抓MaterialMOQ上的廠商
      //先暫時mark，因為約一半材料會被過濾。
      if (YPDHEdit.text='') and (DevCodeEdit.text='') then
      begin
           sql.add('union all  ');
           sql.add('select MaterialMOQ.SEASON AS SEASON,MaterialMOQ.CLBH,MaterialMOQ.ZSBH AS ZSBH,MaterialMOQ.ZSBH AS ZSBH_Old,CLZL.YWPM,clbzzl.bz as MatRemark,CLZL_FLEX.CLDHFLEX AS FlexCode,CLZL.DWBH,ZSZL.ZSYWJC, ');
           sql.add('       MaterialMOQ.SampleLeadTime,MaterialMOQ.ProdLeadTime,MaterialMOQ.ADDTLeadtime,MaterialMOQ.SampleMOQ,MaterialMOQ.ProdMOQ,');
           sql.add('       MaterialMOQ.SamplePrice,MaterialMOQ.SamplePriceVN,MaterialMOQ.ProdPrice,BUSERS.USERNAME as SamplePurchaser_Name,');
           sql.add('       MaterialMOQ.REMARK,MaterialMOQ.USERDATE,MaterialMOQ.USERID,MaterialMOQ.EffectiveDate,MaterialMOQ.EffectiveDate as EffectiveDate_Old');
           sql.add('       ,MaterialMOQ.Location,MaterialMOQ.Forecast_Leadtime');
           sql.add('       ,(MaterialMOQ.Forecast_Leadtime+Country.Customclearanceday+Country.ShippingleadtimeSEA) as TotalLT');
           sql.add('       ,(MaterialMOQ.ProdLeadTime+Country.Customclearanceday+Country.ShippingleadtimeSEA) as FLT');
           sql.add('       ,(MaterialMOQ.Forecast_Leadtime+Country.Customclearanceday+Country.Shippingleadtimeair) as TotalLT1');
           sql.add('       ,(MaterialMOQ.ProdLeadTime+Country.Customclearanceday+Country.Shippingleadtimeair) as FLT1');
           sql.add('       ,MaterialMOQ.SampleLeadTime as old_SampleLeadTime ');
           sql.add('       ,MaterialMOQ.ProdLeadTime as old_ProdLeadTime ');
           sql.add('       ,MaterialMOQ.Forecast_Leadtime as old_Forecast_Leadtime ');
           sql.add('       ,MaterialMOQ.Skin_Size  ');
           sql.add('       ,MaterialMOQ.Skin_Quality  ');
           sql.add('       ,MaterialMOQ.ExtraPrice,ZSZL_DEV.country,MaterialMOQ.Surcharge,MaterialMOQ.Dyingfee,CGZL_Color2.ShippedDate,CGZL_Color2.AWB,'''' as Brand,zszl_dev.BankAccount,zszl_dev.ZSYYZS,zszl_dev.PAYMENTTERM  ');
           sql.add('       ,cldhflexdes as FlexDescription ');
           sql.Add(' from MaterialMOQ ');
           sql.Add(' left join clzl on clzl.cldh=MaterialMOQ.CLBH');
           sql.Add(' left join clbzzl on CLZL.CLDH=clbzzl.cldh and clbzzl.zybb=''E'' ');
           sql.Add(' left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH ');
           sql.Add(' left join CLZL_FLEXS on CLZL_FLEXS.cldhflex=CLZL_FLEX.cldhflex ');
           sql.Add(' left join zszl on zszl.zsdh=MaterialMOQ.ZSBH');    //ypzls上的廠商
           sql.Add(' left join ZSZL_DEV on ZSZL_DEV.zsdh=zszl.zsdh  ');
           sql.add(' left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  ');
           sql.Add(' left join Country on Country.Country=ZSZL_DEV.country ');
           sql.Add('left join CGZL_Color2 on CGZL_Color2.clbh=CLZl.CLDH');
           sql.add('where MaterialMOQ.clbh is not null and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
           if SeaEdit.Text <> '' then
              sql.add('     and MaterialMOQ.SEASON='+''''+SeaEdit.Text+'''');
           sql.add('       and not exists ( select CGZLS.CGNO from CGZLS,CGZL ');
           sql.add('                        where CGZl.CGNO=CGZLS.CGNO ');
           sql.add('                              AND CGZL.CGLX=''6'' and CGZLS.Qty>0  ');
           sql.add('                              and CGZLS.CLBH=MaterialMOQ.CLBH and CGZL.SEASON=MaterialMOQ.SEASON )');
           if CLBHEdit.Text<>'' then
              //sql.add(' and MaterialMOQ.CLBH = '''+CLBHEdit.Text+'''');
              sql.Add('and MaterialMOQ.CLBH '+MatNoEditSubSQL);
           if SuppEdit.Text<>'' then
              sql.add(' and ZSZL.ZSYWJC like ''%'+SuppEdit.Text+'%'+'''');
           if YWPMEdit.Text<>'' then
              sql.Add(YWPMSQL);
           if SupIDEdit.Text<>'' then
              sql.add(' and MaterialMOQ.ZSBH='''+SupIDEdit.Text+'''');
           if edit8.Text<>'' then
              sql.add(' and ZSZL_DEV.SamplePurchaser='+''''+edit8.Text+'''');
           if Chk_NoLeadTime.Checked=true then
              sql.add('   and (MaterialMOQ.SampleLeadTime is null or MaterialMOQ.ProdLeadTime is null ) ');
           if Chk_NoMOQ.Checked=true then
              sql.add('   and (MaterialMOQ.SampleMOQ is null or MaterialMOQ.ProdMOQ is null ) ');
           if Chk_NoPrice.Checked=true then
              sql.add('   and (MaterialMOQ.SamplePrice is null and MaterialMOQ.ProdPrice is null ) ');
           if Chk_NewMat.Checked=true then
              sql.add('   and MaterialMOQ.CLBH not in (select CLBH from ( select CLBH,ROW_NUMBER() over (PARTITION BY CLBH ORDER BY Substring(Season,1,2) DESC,Substring(Season,3,1) ASC) as  rn from MaterialMOQ ) A where A.rn=1 )');
         end;

         sql.add(' ) main ');
         if chk_purdate.Checked then
            sql.add(' left join  (select CLBH,MAX (USERDATE) as PurDate from cgzls where Userdate between '''+formatdatetime('YYYY/MM/DD',DTP1.Date)+''' and '''+formatdatetime('YYYY/MM/DD',DTP2.Date)+'''  group by CLBH) cgzls on cgzls.clbh=main.clbh')
         else
            sql.add(' left join  (select CLBH,MAX (USERDATE) as PurDate from cgzls where 1=2 group by CLBH) cgzls on cgzls.clbh=main.clbh');
         sql.add(' left join cgzls as cgzl on cgzl.CLBH = main.CLBH');
         SQL.Add(' left join CLZL_ColorGroup on CLZL_ColorGroup.CLDH = main.CLBH');

         //Link check N72
         sql.add('left join (');
         sql.add('select YPZLZLs2.CLBH');
         sql.add('from YPZLZLs2 ');
         sql.add('left join YPZL on YPZLZLs2.YPDH = YPZL.YPDH ');
         sql.add('left join kfxxzl on kfxxzl.xiexing = YPZL.xiexing and kfxxzl.shehao = YPZL.shehao ');
         //======20.11.2024
         sql.add('left join YPZLZL on YPZLZL.YPZLBH=YPZLZLS2.YPZLBH');
         //======
         sql.add(' where 1=1 and kfxxzl.khdh in ('+KHBH+')');
          //======20.11.2024
         sql.add('and (convert(smalldatetime, convert(varchar, YPZLZL.INSDATE, 111)) between');
         sql.add('convert(smalldatetime, convert(varchar, dateadd(year, datediff(year, 0, getdate()), 0), 111)) and getdate())');
         //======
         if DevCodeEdit.text<>'' then
            //sql.add('and kfxxzl.devcode like''%'+DevCodeEdit.Text+'%'' ');
            sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
         if SeaEdit.text<>'' then
            sql.add('and kfxxzl.jijie='''+SeaEdit.Text+'''');
         if main.Edit2.Text = 'CDC' then
           sql.add(' and YPZLZLs2.CSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');
         sql.add(' group by YPZLZLs2.CLBH ');
         sql.add(') YPZLZLs2 on main.CLBH = YPZLZLs2.CLBH');

         //===================================================================Highlight
         //Link check BOM N31
         sql.add('left join (');
         sql.add('  SELECT XXZLS.CLBH FROM (');
          //======================//
         sql.add('   SELECT XXZLS.CLBH FROM XXZLS');
         sql.add('   LEFT JOIN clzhzl ON clzhzl.cldh = XXZLS.CLBH  ');
         sql.add('   left join xxzl on xxzls.XieXing=xxzl.XieXing and xxzls.SheHao=xxzl.SheHao  ');
         sql.add('   left join kfxxzl on xxzl.XieXing=kfxxzl.XieXing and xxzl.SheHao=kfxxzl.SheHao  ');
         sql.add('   where 1=1 and kfxxzl.khdh in ('+KHBH+')');
         if DevCodeEdit.text<>'' then
            //sql.add('    and kfxxzl.devcode like''%'+DevCodeEdit.Text+'%'' ');
            sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
         if SeaEdit.text<>'' then
            sql.add('    and kfxxzl.jijie='''+SeaEdit.Text+'''');
         if main.Edit2.Text = 'CDC' then
           sql.add('     and xxzls.CSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');
         //sql.add('    group by xxzls.clbh, xxzls.BWLB ');
         //======================//
         sql.add(' UNION ALL');
         //======================//
         sql.add('   SELECT clzhzl.cldh1 AS CLBH FROM XXZLS');
         sql.add('   INNER JOIN clzhzl ON clzhzl.cldh = XXZLS.CLBH  ');
         sql.add('   left join xxzl on xxzls.XieXing=xxzl.XieXing and xxzls.SheHao=xxzl.SheHao  ');
         sql.add('   left join kfxxzl on xxzl.XieXing=kfxxzl.XieXing and xxzl.SheHao=kfxxzl.SheHao  ');
         sql.add('   where 1=1 and kfxxzl.khdh in ('+KHBH+')');
         if DevCodeEdit.text<>'' then
            //sql.add('    and kfxxzl.devcode like''%'+DevCodeEdit.Text+'%'' ');
            sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
         if SeaEdit.text<>'' then
            sql.add('    and kfxxzl.jijie='''+SeaEdit.Text+'''');
         if main.Edit2.Text = 'CDC' then
           sql.add('     and xxzls.CSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');
         //sql.add('    GROUP BY clzhzl.cldh1, XXZLS.BWLB ');
         //======================//
         sql.add(' UNION ALL');
         //======================//
         sql.add('   SELECT clzhzl2.CLBH FROM (');
         sql.add('   SELECT clzhzl.cldh1 AS CLBH FROM XXZLS');
         sql.add('   INNER JOIN clzhzl ON clzhzl.cldh = XXZLS.CLBH  ');
         sql.add('   left join xxzl on xxzls.XieXing=xxzl.XieXing and xxzls.SheHao=xxzl.SheHao  ');
         sql.add('   left join kfxxzl on xxzl.XieXing=kfxxzl.XieXing and xxzl.SheHao=kfxxzl.SheHao  ');
         sql.add('   where 1=1 and kfxxzl.khdh in ('+KHBH+')');
         if DevCodeEdit.text<>'' then
            //sql.add('    and kfxxzl.devcode like''%'+DevCodeEdit.Text+'%'' ');
            sql.add('and kfxxzl.devcode '+DevCodeSubSQL);
         if SeaEdit.text<>'' then
            sql.add('    and kfxxzl.jijie='''+SeaEdit.Text+'''');
         if main.Edit2.Text = 'CDC' then
           sql.add('     and xxzls.CSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');
         //sql.add('    GROUP BY clzhzl.cldh1, xxzls.BWLB ');
         sql.Add(') clzhzl2');
         sql.Add('INNER JOIN clzhzl ON clzhzl2.CLBH = clzhzl.cldh');
         sql.Add(') XXZLS');
         if CLBHEdit.text<>'' then
            sql.add(' where CLBH='''+CLBHEdit.Text+'''');
         sql.Add(') xxzls2 ON main.CLBH = xxzls2.clbh');
         //===================================================================
         sql.Add(' where ZSBH not in (''JNG'',''JNGR1'',''JNGR2'',''JNGR3'',''T006'',''P154'') ');
         if chk_purdate.Checked then
            sql.add(' and cgzl.UserDate between '''+formatdatetime('YYYY/MM/DD',DTP1.Date)+''' and '''+formatdatetime('YYYY/MM/DD',DTP2.Date)+'''');
         if edit1.Text<> '' then
            sql.Add(' and FlexCode like ''%'+edit1.Text+'%'' ');
         sql.Add(' group by SEASON ,main.CLBH,ZSBH,ZSBH_Old,YWPM,MatRemark,FlexCode,DWBH,ZSYWJC,');
         sql.add(' SampleLeadTime,ProdLeadTime,ADDTLeadtime,SampleMOQ,ProdMOQ,');
         sql.add(' SamplePrice,SamplePriceVN,ProdPrice,SamplePurchaser_Name,');
         sql.add(' main.REMARK,main.USERDATE,main.USERID,EffectiveDate,EffectiveDate_Old ');
         sql.add(' ,Location,Forecast_Leadtime,TotalLT,FLT,old_SampleLeadTime,old_ProdLeadTime');
         sql.add(' ,old_Forecast_Leadtime,Skin_Size,Skin_Quality,ExtraPrice ,TotalLT1,FLT1,country,Surcharge,Dyingfee,ShippedDate,AWB,Brand,BankAccount,ZSYYZS,PAYMENTTERM,FlexDescription,PurDate,ColorGroup,CLZL_ColorGroup.Remark,YPZLZLs2.CLBH,xxzls2.CLBH');
         //sql.add(' order by season,main.CLBH ');
         //showmessage(SQL.Text);
         //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end else if pgc1.ActivePageIndex=1 then
  begin
  //Qry_MaterialPrice.Active:=True;
  //Qry_LT_Histiry.Active:=True;

  //第二頁
    with Qry_Policy do
    begin
      active:=false;
      sql.clear;
      sql.add('select materialmoq.Season,materialmoq.clbh,clzl.ywpm,clbzzl.bz as MatRemark,clzl.dwbh  ');
      sql.add('      ,zszlSamplePayment.CR1  ');
      sql.add('      ,zszlSamplePayment.CR1_FreeQty  ');
      sql.add('      ,zszlSamplePayment.CR1_Charge  ');

      sql.add('      ,zszlSamplePayment.CR2  ');
      sql.add('      ,zszlSamplePayment.CR2_FreeQty  ');
      sql.add('      ,zszlSamplePayment.CR2_Charge  ');

      sql.add('      ,zszlSamplePayment.ADT  ');
      sql.add('      ,zszlSamplePayment.ADT_FreeQty  ');
      sql.add('      ,zszlSamplePayment.ADT_Charge  ');

      sql.add('      ,zszlSamplePayment.SMS  ');
      sql.add('      ,zszlSamplePayment.SMS_FreeQty  ');
      sql.add('      ,zszlSamplePayment.SMS_Charge  ');

      sql.add('      ,zszlSamplePayment.SMU  ');
      sql.add('      ,zszlSamplePayment.SMU_FreeQty  ');
      sql.add('      ,zszlSamplePayment.SMU_Charge  ');

      sql.add('      ,zszlSamplePayment.ADT  ');
      sql.add('      ,zszlSamplePayment.ADT_FreeQty  ');
      sql.add('      ,zszlSamplePayment.ADT_Charge  ');

      sql.add('      ,zszlSamplePayment.OTH  ');
      sql.add('      ,zszlSamplePayment.OTH_FreeQty  ');
      sql.add('      ,zszlSamplePayment.OTH_Charge  ');

      sql.add('      ,zszlSamplePayment.CFM  ');
      sql.add('      ,zszlSamplePayment.CFM_FreeQty  ');
      sql.add('      ,zszlSamplePayment.CFM_Charge  ');

      sql.add('      ,zszlSamplePayment.EffectiveDate  ');
      sql.add('      ,zszlSamplePayment.EffectiveDate as EffectiveDate_OLD ');
      sql.add('      ,zszlSamplePayment.USERID  ');
      sql.add('      ,zszlSamplePayment.USERDATE  ');
      sql.add('      ,zszlSamplePayment.Unit');
      sql.add('      ,zszlSamplePayment.Unit as old_Unit');
      sql.add('      ,zszlSamplePayment.Average');
      sql.add('      ,materialmoq.zsbh,ZSZL.ZSYWJC,ZSZL_DEV.style,BUSERS.USERNAME as SamplePurchaser_Name,ZSZL_DEV.Country,zszlSamplePayment.USPriceHG,ZSZL_DEV.BankAccount,ZSZL_DEV.ZSYYZS,ZSZL_DEV.PAYMENTTERM ');
      sql.add('from MaterialMOQ ');
      sql.add('left join zszl on zszl.zsdh=MaterialMOQ.zsbh');
      sql.Add('left join ZSZL_DEV on ZSZL_DEV.zsdh=MaterialMOQ.zsbh and ZSZL_DEV.GSBH='''+main.Edit2.Text+''' ');
      sql.add('left join (select * from zszlSamplePayment ');
      sql.add('           where zszlSamplePayment.Season='''+SeaEdit.Text+'''');
      sql.add('           ) zszlSamplePayment on MaterialMOQ.zsbh=zszlSamplePayment.zsdh and MaterialMOQ.season=zszlSamplePayment.season and MaterialMOQ.clbh=zszlSamplePayment.cldh');
      sql.add('left join BUSERS  on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  ');
      sql.add('left join clzl on materialmoq.clbh=clzl.cldh');
      sql.Add('left join clbzzl on CLZL.CLDH=clbzzl.cldh and clbzzl.zybb=''E'' ');
      sql.add('where 1=1  ');
      sql.add('       and exists ( select CGZLS.CGNO from CGZLS,CGZL ');
      sql.add('                        where CGZl.CGNO=CGZLS.CGNO ');
      sql.add('                              AND CGZL.CGLX=''6'' and CGZLS.Qty>0  ');
      sql.add('                              and CGZL.ZSBH=ZSZL.zsdh and CGZl.Season='''+SeaEdit.Text+''') ');
      if SeaEdit.text<>'' then
         sql.add(' and materialmoq.season = '''+SeaEdit.Text+'''');
      if Edit8.Text<>'' then
         sql.add(' and isnull(ZSZL_DEV.SamplePurchaser,'''')='''+Edit8.Text+'''');
      if SuppEdit.Text<>'' then
         sql.add(' and ZSZL.ZSYWJC like ''%'+SuppEdit.Text+'%'+'''');
      if SupIDEdit.Text<>'' then
         sql.add(' and ZSZL.zsdh='''+SupIDEdit.Text+'''');
      if CLBHEdit.Text<>'' then
         sql.add(' and MaterialMOQ.CLBH = '''+CLBHEdit.Text+'''');
      if YWPMEdit.Text<>'' then
         sql.Add(YWPMSQL);
      sql.add('and isnull(ZSZL_DEV.SamplePurchaser,'''')<>'''' ');
      sql.add('and ZSZL.YN=''1'' ');  //越南輸入的廠商資料
      sql.add('order by ZSYWJC');
      //funcobj.WriteErrorLog(sql.Text);
      //showmessage(SQL.Text);
      active:=true;
    end;
  end;
  Qry_MaterialPrice.Active:=True;
  Qry_LT_Histiry.Active:=True;
  //第四頁  Problem data
  Qry_Problem.Active:=False;
  Qry_Problem.Active:=True;
end;

procedure TMaterialMOQ.FormDestroy(Sender: TObject);
begin
  MaterialMOQ:=nil;
end;

procedure TMaterialMOQ.FormCreate(Sender: TObject);
begin
  DTP2.Datetime:=Now();
  DTP1.Datetime:=Now()-10;
  ReadIni();
  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;

    sql.Clear;
    sql.add('select SFL from Bgszl where GSDH='''+main.Edit2.Text+''' ');
    active:=true;
    GSBH_SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
  pgc1.ActivePageIndex:=0;
  if GSBH_SFL<>'DC' then
  begin
     s1.Enabled:=false;
     s2.Enabled:=false;
     s3.Enabled:=false;
     delete1.Enabled:=false;
     MenuItem1.Enabled:=false;
     MenuItem2.Enabled:=false;
     MenuItem3.Enabled:=false;
     MenuItem4.Enabled:=false;
     Insert.Enabled:=false;
  end;
  if (main.Edit2.Text = 'CDC') or (main.Edit2.Text = 'SKX') then
    DBGrid1.Columns[10].Destroy
  else begin
    Edit21.Visible := not Edit21.Visible;
    Label29.Visible := not Label29.Visible;
    DBGrid1.Columns[22].Color := clMoneyGreen;
    DBGrid1.Columns[23].Color := clMoneyGreen;
  end;

  if main.Edit2.Text = 'SKX' then
  begin
    Label30.Visible := true;
    ComboBox14.Visible := true;
  end;
  
end;

procedure TMaterialMOQ.dbgrdh4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

//  if   qry_article.Fieldbyname('srtype').AsString ='2'   then //代表有買,但已不使用
//       dbgrdh4.canvas.font.color:=clRed;
//  dbgrdh4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TMaterialMOQ.S1Click(Sender: TObject);
begin
  if query1.Active then
  begin
    Query1.RequestLive:=true;
    Query1.CachedUpdates:=true;

    s1.Enabled:=false;
    S2.enabled:=true;
    S3.enabled:=true;
    panel5.Visible:=true;
  end;
  DBGrid1.columns[8].ButtonStyle:=cbsAuto;
end;

procedure TMaterialMOQ.S2Click(Sender: TObject);
var officeocde: String;
    i: Integer;
    CLBHs: TStringList;
    FirstColorGroup: string;
begin
  Qry_MaterialPrice.Active:=False;
  Qry_LT_Histiry.Active:=False;

  with tmpQry do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  with query1 do
  begin
    first;
    while not eof do
    begin
           if not (query1.fieldbyname('EffectiveDate').isnull) then
           begin
              with tmpQry do
              begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' select * from MaterialPrice where CLBH='''+query1.fieldbyname('CLBH').AsString+'''');
                  sql.Add('                            and ZSBH='''+query1.fieldbyname('ZSBH').AsString+'''');
                  sql.Add('                            and Season='''+query1.fieldbyname('Season').AsString+'''');
                  sql.Add('                            and EffectiveDate='''+query1.fieldbyname('EffectiveDate').AsString+'''');
                  active:=true;
                  if eof then
                  begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' insert MaterialPrice (CLBH,ZSBH,Season,EffectiveDate,SamplePrice,SamplePriceVN,userID,userdate  ');
                      sql.Add(') values (');
                      sql.Add(' '''+query1.fieldbyname('CLBH').AsString+'''');
                      sql.Add(','''+query1.fieldbyname('ZSBH').AsString+'''');
                      sql.Add(','''+query1.fieldbyname('Season').AsString+'''');
                      sql.Add(','''+query1.fieldbyname('EffectiveDate').AsString+'''');
                      sql.Add(','''+query1.fieldbyname('SamplePrice').AsString+'''');
                      sql.Add(','''+query1.fieldbyname('SamplePriceVN').AsString+'''');
                      sql.Add(','''+main.edit1.text+'''');
                      sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                      sql.Add(')');
                      execsql;
                  end  else
                  begin
                      active:=false;
                      sql.Clear;
                      // sql.Add(' update MaterialPrice ');
                      // sql.Add('    set SamplePrice='''+query1.fieldbyname('SamplePrice').AsString+'''');
                      // sql.Add('        ,SamplePriceVN='''+query1.fieldbyname('SamplePriceVN').AsString+'''');
                      // sql.Add(' where CLBH='''+query1.fieldbyname('CLBH').AsString+'''');
                      // sql.Add('                            and ZSBH='''+query1.fieldbyname('ZSBH').AsString+'''');
                      // sql.Add('                            and Season='''+query1.fieldbyname('Season').AsString+'''');
                      // sql.Add('                            and EffectiveDate='''+query1.fieldbyname('EffectiveDate').AsString+'''');
                      // execsql;
                    end;
                  end;
              end;

            if updatestatus=usmodified then
            begin
              if (fieldbyname('ZSBH').AsString='') and (fieldbyname('SampleLeadTime').AsString='') and (fieldbyname('ProdLeadTime').AsString='')and (fieldbyname('Forecast_Leadtime').AsString='')and (fieldbyname('SampleMOQ').AsString='')and (fieldbyname('ProdMOQ').AsString='')and (fieldbyname('SamplePrice').AsString='')and (fieldbyname('ProdPrice').AsString='') and (fieldbyname('REMARK').AsString='') then
              begin
                with tmpQry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' delete MaterialMOQ  ');
                  sql.Add(' where CLBH = '''+query1.fieldbyname('CLBH').AsString+'''');
                  sql.Add('     and ZSBH='''+query1.fieldbyname('ZSBH_Old').AsString+'''');
                  sql.Add('     and Season='''+query1.fieldbyname('Season').AsString+'''');
                  execsql;
                end;
              end else
              begin
                if query1.fieldbyname('ZSBH').AsString='' then
                begin
                     showmessage('Supplier ID can not be empty !');
                     exit
                end;
                officeocde := '';
                with tmpQry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' select CLBH from MaterialMOQ where CLBH='''+query1.fieldbyname('CLBH').AsString+'''');
                  sql.Add('                            and ZSBH='''+query1.fieldbyname('ZSBH').AsString+'''');
                  sql.Add('                            and Season='''+query1.fieldbyname('Season').AsString+'''');
                  active:=true;
                  if RecordCount=0 then
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add('Insert MaterialMOQ (CLBH,ZSBH,Season,REMARK,Location');
                    if not query1.fieldbyname('SampleLeadTime').IsNull then
                       sql.Add(',SampleLeadTime');
                    if not query1.fieldbyname('ProdLeadTime').IsNull then
                       sql.Add(',ProdLeadTime');
                    if not query1.fieldbyname('Forecast_Leadtime').IsNull then
                       sql.Add(',Forecast_Leadtime');
                    if not query1.fieldbyname('AddTLeadtime').IsNull then
                       sql.Add(',AddTLeadtime');
                    if not query1.fieldbyname('SampleMOQ').IsNull then
                       sql.Add(',SampleMOQ');
                    if not query1.fieldbyname('ProdMOQ').IsNull then
                       sql.Add(',ProdMOQ');
                    if not query1.fieldbyname('SamplePrice').IsNull then
                       sql.Add(',SamplePrice');
                    if not query1.fieldbyname('SamplePriceVN').IsNull then
                       sql.Add(',SamplePriceVN');
                    if not query1.fieldbyname('EffectiveDate').IsNull then
                       sql.Add(',EffectiveDate');
                    if not query1.fieldbyname('Skin_Quality').IsNull then
                       sql.Add(',Skin_Quality');
                    if not query1.fieldbyname('Skin_Size').IsNull then
                       sql.Add(',Skin_Size');
                    if not query1.fieldbyname('Surcharge').IsNull then
                       sql.Add(',Surcharge');
                    if not query1.fieldbyname('Dyingfee').IsNull then
                       sql.Add(',Dyingfee');
                    if not query1.fieldbyname('extraPrice').IsNull then
                       sql.Add(',extraPrice');
                    sql.Add(',userID,userdate  ');
                    sql.Add(') values (');
                    sql.Add(' '''+query1.fieldbyname('CLBH').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('ZSBH').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('Season').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('REMARK').AsString+'''');
                    sql.Add(','''+query1.fieldbyname('Location').AsString+'''');
                    if not query1.fieldbyname('SampleLeadTime').IsNull then
                       sql.Add(','''+query1.fieldbyname('SampleLeadTime').AsString+'''');
                    if not query1.fieldbyname('ProdLeadTime').IsNull then
                       sql.Add(','''+query1.fieldbyname('ProdLeadTime').AsString+'''');
                    if not query1.fieldbyname('Forecast_Leadtime').IsNull then
                       sql.Add(','''+query1.fieldbyname('Forecast_Leadtime').AsString+'''');
                    if not query1.fieldbyname('AddTLeadtime').IsNull then
                       sql.Add(','''+query1.fieldbyname('AddTLeadtime').AsString+'''');
                    if not query1.fieldbyname('SampleMOQ').IsNull then
                       sql.Add(','''+query1.fieldbyname('SampleMOQ').AsString+'''');
                    if not query1.fieldbyname('ProdMOQ').IsNull then
                       sql.Add(','''+query1.fieldbyname('ProdMOQ').AsString+'''');
                    if not query1.fieldbyname('SamplePrice').IsNull then
                       sql.Add(','''+query1.fieldbyname('SamplePrice').AsString+'''');
                    if not query1.fieldbyname('SamplePriceVN').IsNull then
                       sql.Add(','''+query1.fieldbyname('SamplePriceVN').AsString+'''');
                    if not query1.fieldbyname('EffectiveDate').IsNull then
                       sql.Add(','''+query1.fieldbyname('EffectiveDate').AsString+'''');
                    if not query1.fieldbyname('Skin_Quality').IsNull then
                       sql.Add(','''+query1.fieldbyname('Skin_Quality').AsString+'''');
                    if not query1.fieldbyname('Skin_Size').IsNull then
                       sql.Add(','''+query1.fieldbyname('Skin_Size').AsString+'''');
                    if not query1.fieldbyname('Surcharge').IsNull then
                       sql.Add(','''+query1.fieldbyname('Surcharge').AsString+'''');
                    if not query1.fieldbyname('Dyingfee').IsNull then
                       sql.Add(','''+query1.fieldbyname('Dyingfee').AsString+'''');
                    if not query1.fieldbyname('extraPrice').IsNull then
                       sql.Add(','''+query1.fieldbyname('extraPrice').AsString+'''');
                    sql.Add(','''+main.edit1.text+'''');
                    sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                    sql.Add(')');
                    execsql;
                    //如果有對應正式料號，新增一筆正式料號的資料
                    active := false;
                    sql.Clear;
                    sql.Add('select JHDH from CLZL_LS where CLDH = '''+query1.fieldbyname('CLBH').AsString+'''');
                    active:=true;
                    if recordcount > 0 then begin
                      officeocde := fields[0].AsString;
                      active := false;
                      sql.Clear;
                      sql.Add(' select CLBH from MaterialMOQ where CLBH='''+officeocde+'''');
                      sql.Add('                            and ZSBH='''+query1.fieldbyname('ZSBH').AsString+'''');
                      sql.Add('                            and Season='''+query1.fieldbyname('Season').AsString+'''');
                      active:=true;
                      if eof then begin
                        active:=false;
                        sql.Clear;
                        sql.Add(' insert MaterialMOQ (CLBH,ZSBH,Season,REMARK,Location');
                        if not query1.fieldbyname('SampleLeadTime').IsNull then
                           sql.Add(',SampleLeadTime');
                        if not query1.fieldbyname('ProdLeadTime').IsNull then
                           sql.Add(',ProdLeadTime');
                        if not query1.fieldbyname('Forecast_Leadtime').IsNull then
                           sql.Add(',Forecast_Leadtime');
                        if not query1.fieldbyname('SampleMOQ').IsNull then
                           sql.Add(',SampleMOQ');
                        if not query1.fieldbyname('ProdMOQ').IsNull then
                           sql.Add(',ProdMOQ');
                        if not query1.fieldbyname('SamplePrice').IsNull then
                           sql.Add(',SamplePrice');
                        if not query1.fieldbyname('SamplePriceVN').IsNull then
                           sql.Add(',SamplePriceVN');
                        if not query1.fieldbyname('EffectiveDate').IsNull then
                           sql.Add(',EffectiveDate');
                        if not query1.fieldbyname('Skin_Quality').IsNull then
                           sql.Add(',Skin_Quality');
                        if not query1.fieldbyname('Skin_Size').IsNull then
                           sql.Add(',Skin_Size');
                        if not query1.fieldbyname('Surcharge').IsNull then
                           sql.Add(',Surcharge');
                        if not query1.fieldbyname('Dyingfee').IsNull then
                           sql.Add(',Dyingfee');
                        if not query1.fieldbyname('extraPrice').IsNull then
                           sql.Add(',extraPrice');
                        sql.Add(',userID,userdate  ');
                        sql.Add(') values (');
                        sql.Add(' '''+officeocde+'''');
                        sql.Add(','''+query1.fieldbyname('ZSBH').AsString+'''');
                        sql.Add(','''+query1.fieldbyname('Season').AsString+'''');
                        sql.Add(','''+query1.fieldbyname('REMARK').AsString+'''');
                        sql.Add(','''+query1.fieldbyname('Location').AsString+'''');
                        if not query1.fieldbyname('SampleLeadTime').IsNull then
                           sql.Add(','''+query1.fieldbyname('SampleLeadTime').AsString+'''');
                        if not query1.fieldbyname('ProdLeadTime').IsNull then
                           sql.Add(','''+query1.fieldbyname('ProdLeadTime').AsString+'''');
                        if not query1.fieldbyname('Forecast_Leadtime').IsNull then
                           sql.Add(','''+query1.fieldbyname('Forecast_Leadtime').AsString+'''');
                        if not query1.fieldbyname('SampleMOQ').IsNull then
                           sql.Add(','''+query1.fieldbyname('SampleMOQ').AsString+'''');
                        if not query1.fieldbyname('ProdMOQ').IsNull then
                           sql.Add(','''+query1.fieldbyname('ProdMOQ').AsString+'''');
                        if not query1.fieldbyname('SamplePrice').IsNull then
                           sql.Add(','''+query1.fieldbyname('SamplePrice').AsString+'''');
                        if not query1.fieldbyname('SamplePriceVN').IsNull then
                           sql.Add(','''+query1.fieldbyname('SamplePriceVN').AsString+'''');
                        if not query1.fieldbyname('EffectiveDate').IsNull then
                           sql.Add(','''+query1.fieldbyname('EffectiveDate').AsString+'''');
                        if not query1.fieldbyname('Skin_Quality').IsNull then
                           sql.Add(','''+query1.fieldbyname('Skin_Quality').AsString+'''');
                        if not query1.fieldbyname('Skin_Size').IsNull then
                           sql.Add(','''+query1.fieldbyname('Skin_Size').AsString+'''');
                        if not query1.fieldbyname('Surcharge').IsNull then
                           sql.Add(','''+query1.fieldbyname('Surcharge').AsString+'''');
                        if not query1.fieldbyname('Dyingfee').IsNull then
                           sql.Add(','''+query1.fieldbyname('Dyingfee').AsString+'''');
                        if not query1.fieldbyname('extraPrice').IsNull then
                           sql.Add(','''+query1.fieldbyname('extraPrice').AsString+'''');
                        sql.Add(','''+main.edit1.text+'''');
                        sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                        sql.Add(')');
                        execsql;
                      end;
                    end;
                  end else
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update MaterialMOQ set ');
                    if query1.fieldbyname('SampleLeadTime').IsNull then
                         sql.Add(' SampleLeadTime=null')
                       else
                         sql.Add(' SampleLeadTime='''+query1.fieldbyname('SampleLeadTime').AsString+'''');
                    if query1.fieldbyname('ProdLeadTime').IsNull then
                         sql.Add(' ,ProdLeadTime=null')
                       else
                         sql.Add(' ,ProdLeadTime='''+query1.fieldbyname('ProdLeadTime').AsString+'''');
                    if query1.fieldbyname('Forecast_Leadtime').IsNull then
                         sql.Add(' ,Forecast_Leadtime=null')
                       else
                         sql.Add(' ,Forecast_Leadtime='''+query1.fieldbyname('Forecast_Leadtime').AsString+'''');
                    if query1.fieldbyname('AddTLeadtime').IsNull then
                         sql.Add(' ,AddTLeadtime=null')
                       else
                         sql.Add(' ,AddTLeadtime='''+query1.fieldbyname('AddTLeadtime').AsString+'''');
                    if query1.fieldbyname('SampleMOQ').IsNull then
                         sql.Add(' ,SampleMOQ=null')
                       else
                         sql.Add(' ,SampleMOQ='''+query1.fieldbyname('SampleMOQ').AsString+'''');
                    if query1.fieldbyname('ProdMOQ').IsNull then
                         sql.Add(' ,ProdMOQ=null')
                       else
                         sql.Add(' ,ProdMOQ='''+query1.fieldbyname('ProdMOQ').AsString+'''');
                    if query1.fieldbyname('SamplePrice').IsNull then
                         sql.Add(' ,SamplePrice=null')
                       else
                         sql.Add(' ,SamplePrice='''+query1.fieldbyname('SamplePrice').AsString+'''');
                    if query1.fieldbyname('SamplePriceVN').IsNull then
                         sql.Add(' ,SamplePriceVN=null')
                       else
                         sql.Add(' ,SamplePriceVN='''+query1.fieldbyname('SamplePriceVN').AsString+'''');
                    if query1.fieldbyname('EffectiveDate').IsNull then
                         sql.Add(' ,EffectiveDate=null')
                       else
                         sql.Add(' ,EffectiveDate='''+query1.fieldbyname('EffectiveDate').AsString+'''');
                    if query1.fieldbyname('Skin_Quality').IsNull then
                         sql.Add(' ,Skin_Quality=null')
                       else
                         sql.Add(' ,Skin_Quality='''+query1.fieldbyname('Skin_Quality').AsString+'''');
                    if query1.fieldbyname('Skin_Size').IsNull then
                         sql.Add(' ,Skin_Size=null')
                       else
                         sql.Add(' ,Skin_Size='''+query1.fieldbyname('Skin_Size').AsString+'''');
                    if query1.fieldbyname('Surcharge').IsNull then
                         sql.Add(' ,Surcharge=null')
                       else
                         sql.Add(' ,Surcharge='''+query1.fieldbyname('Surcharge').AsString+'''');
                    if query1.fieldbyname('Dyingfee').IsNull then
                         sql.Add(' ,Dyingfee=null')
                       else
                         sql.Add(' ,Dyingfee='''+query1.fieldbyname('Dyingfee').AsString+'''');
                    if query1.fieldbyname('extraPrice').IsNull then
                         sql.Add(' ,extraPrice=null')
                       else
                         sql.Add(' ,extraPrice='''+query1.fieldbyname('extraPrice').AsString+'''');
                    sql.Add('   ,Location='''+query1.fieldbyname('Location').AsString+'''');
                    sql.Add('   ,REMARK='''+query1.fieldbyname('REMARK').AsString+'''');
                    sql.Add('   ,userID='''+main.edit1.text+'''');
                    sql.Add('   ,userdate='''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                    sql.Add(' where CLBH = '''+query1.fieldbyname('CLBH').AsString+'''');
                    sql.Add('   and ZSBH = '''+query1.fieldbyname('ZSBH').AsString+'''');
                    sql.Add('   and Season='''+query1.fieldbyname('Season').AsString+'''');
                    execsql;

                    //如果有對應正式料號，但是MOQ還沒有資料，新增一筆正式料號的資料
                    active := false;
                    sql.Clear;
                    sql.Add('select JHDH from CLZL_LS where CLDH = '''+query1.fieldbyname('CLBH').AsString+'''');
                    active:=true;
                    if recordcount > 0 then begin
                      officeocde := fields[0].AsString;
                      active := false;
                      sql.Clear;
                      sql.Add(' select CLBH from MaterialMOQ where CLBH='''+officeocde+'''');
                      sql.Add('                            and Season='''+query1.fieldbyname('Season').AsString+'''');
                      active:=true;
                      if RecordCount=0 then begin
                        active:=false;
                        sql.Clear;
                        sql.Add(' insert MaterialMOQ (CLBH,ZSBH,Season,REMARK,Location');
                        if not query1.fieldbyname('SampleLeadTime').IsNull then
                           sql.Add(',SampleLeadTime');
                        if not query1.fieldbyname('ProdLeadTime').IsNull then
                           sql.Add(',ProdLeadTime');
                        if not query1.fieldbyname('Forecast_Leadtime').IsNull then
                           sql.Add(',Forecast_Leadtime');
                        if not query1.fieldbyname('AddTLeadtime').IsNull then
                           sql.Add(',AddTLeadtime');
                        if not query1.fieldbyname('SampleMOQ').IsNull then
                           sql.Add(',SampleMOQ');
                        if not query1.fieldbyname('ProdMOQ').IsNull then
                           sql.Add(',ProdMOQ');
                        if not query1.fieldbyname('SamplePrice').IsNull then
                           sql.Add(',SamplePrice');
                        if not query1.fieldbyname('SamplePriceVN').IsNull then
                           sql.Add(',SamplePriceVN');
                        if not query1.fieldbyname('EffectiveDate').IsNull then
                           sql.Add(',EffectiveDate');
                        if not query1.fieldbyname('Skin_Quality').IsNull then
                           sql.Add(',Skin_Quality');
                        if not query1.fieldbyname('Skin_Size').IsNull then
                           sql.Add(',Skin_Size');
                        if not query1.fieldbyname('Surcharge').IsNull then
                           sql.Add(',Surcharge');
                        if not query1.fieldbyname('Dyingfee').IsNull then
                           sql.Add(',Dyingfee');
                        if not query1.fieldbyname('extraPrice').IsNull then
                           sql.Add(',extraPrice');
                        sql.Add(',userID,userdate  ');
                        sql.Add(') values (');
                        sql.Add(' '''+officeocde+'''');
                        sql.Add(','''+query1.fieldbyname('ZSBH').AsString+'''');
                        sql.Add(','''+query1.fieldbyname('Season').AsString+'''');
                        sql.Add(','''+query1.fieldbyname('REMARK').AsString+'''');
                        sql.Add(','''+query1.fieldbyname('Location').AsString+'''');
                        if not query1.fieldbyname('SampleLeadTime').IsNull then
                           sql.Add(','''+query1.fieldbyname('SampleLeadTime').AsString+'''');
                        if not query1.fieldbyname('ProdLeadTime').IsNull then
                           sql.Add(','''+query1.fieldbyname('ProdLeadTime').AsString+'''');
                        if not query1.fieldbyname('Forecast_Leadtime').IsNull then
                           sql.Add(','''+query1.fieldbyname('Forecast_Leadtime').AsString+'''');
                        if not query1.fieldbyname('AddTLeadtime').IsNull then
                           sql.Add(','''+query1.fieldbyname('AddTLeadtime').AsString+'''');
                        if not query1.fieldbyname('SampleMOQ').IsNull then
                           sql.Add(','''+query1.fieldbyname('SampleMOQ').AsString+'''');
                        if not query1.fieldbyname('ProdMOQ').IsNull then
                           sql.Add(','''+query1.fieldbyname('ProdMOQ').AsString+'''');
                        if not query1.fieldbyname('SamplePrice').IsNull then
                           sql.Add(','''+query1.fieldbyname('SamplePrice').AsString+'''');
                        if not query1.fieldbyname('SamplePriceVN').IsNull then
                           sql.Add(','''+query1.fieldbyname('SamplePriceVN').AsString+'''');
                        if not query1.fieldbyname('EffectiveDate').IsNull then
                           sql.Add(','''+query1.fieldbyname('EffectiveDate').AsString+'''');
                        if not query1.fieldbyname('Skin_Quality').IsNull then
                           sql.Add(','''+query1.fieldbyname('Skin_Quality').AsString+'''');
                        if not query1.fieldbyname('Skin_Size').IsNull then
                           sql.Add(','''+query1.fieldbyname('Skin_Size').AsString+'''');
                        if not query1.fieldbyname('Surcharge').IsNull then
                           sql.Add(','''+query1.fieldbyname('Surcharge').AsString+'''');
                        if not query1.fieldbyname('Dyingfee').IsNull then
                           sql.Add(','''+query1.fieldbyname('Dyingfee').AsString+'''');
                        if not query1.fieldbyname('extraPrice').IsNull then
                           sql.Add(','''+query1.fieldbyname('extraPrice').AsString+'''');
                        sql.Add(','''+main.edit1.text+'''');
                        sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                        sql.Add(')');
                        execsql;
                      end else
                      begin
                        active:=false;
                        sql.Clear;
                        sql.Add('update MaterialMOQ set ');
                        if query1.fieldbyname('SampleLeadTime').IsNull then
                             sql.Add(' SampleLeadTime=null')
                           else
                             sql.Add(' SampleLeadTime='''+query1.fieldbyname('SampleLeadTime').AsString+'''');
                        if query1.fieldbyname('ProdLeadTime').IsNull then
                             sql.Add(' ,ProdLeadTime=null')
                           else
                             sql.Add(' ,ProdLeadTime='''+query1.fieldbyname('ProdLeadTime').AsString+'''');
                        if query1.fieldbyname('Forecast_Leadtime').IsNull then
                             sql.Add(' ,Forecast_Leadtime=null')
                           else
                             sql.Add(' ,Forecast_Leadtime='''+query1.fieldbyname('Forecast_Leadtime').AsString+'''');
                        if query1.fieldbyname('AddTLeadtime').IsNull then
                             sql.Add(' ,AddTLeadtime=null')
                           else
                             sql.Add(' ,AddTLeadtime='''+query1.fieldbyname('AddTLeadtime').AsString+'''');
                        if query1.fieldbyname('SampleMOQ').IsNull then
                             sql.Add(' ,SampleMOQ=null')
                           else
                             sql.Add(' ,SampleMOQ='''+query1.fieldbyname('SampleMOQ').AsString+'''');
                        if query1.fieldbyname('ProdMOQ').IsNull then
                             sql.Add(' ,ProdMOQ=null')
                           else
                             sql.Add(' ,ProdMOQ='''+query1.fieldbyname('ProdMOQ').AsString+'''');
                        if query1.fieldbyname('SamplePrice').IsNull then
                             sql.Add(' ,SamplePrice=null')
                           else
                             sql.Add(' ,SamplePrice='''+query1.fieldbyname('SamplePrice').AsString+'''');
                        if query1.fieldbyname('SamplePriceVN').IsNull then
                             sql.Add(' ,SamplePriceVN=null')
                           else
                             sql.Add(' ,SamplePriceVN='''+query1.fieldbyname('SamplePriceVN').AsString+'''');
                        if query1.fieldbyname('EffectiveDate').IsNull then
                             sql.Add(' ,EffectiveDate=null')
                           else
                             sql.Add(' ,EffectiveDate='''+query1.fieldbyname('EffectiveDate').AsString+'''');
                        if query1.fieldbyname('Skin_Quality').IsNull then
                             sql.Add(' ,Skin_Quality=null')
                           else
                             sql.Add(' ,Skin_Quality='''+query1.fieldbyname('Skin_Quality').AsString+'''');
                        if query1.fieldbyname('Skin_Size').IsNull then
                             sql.Add(' ,Skin_Size=null')
                           else
                             sql.Add(' ,Skin_Size='''+query1.fieldbyname('Skin_Size').AsString+'''');
                        if query1.fieldbyname('Surcharge').IsNull then
                             sql.Add(' ,Surcharge=null')
                           else
                             sql.Add(' ,Surcharge='''+query1.fieldbyname('Surcharge').AsString+'''');
                        if query1.fieldbyname('Dyingfee').IsNull then
                             sql.Add(' ,Dyingfee=null')
                           else
                             sql.Add(' ,Dyingfee='''+query1.fieldbyname('Dyingfee').AsString+'''');
                        if query1.fieldbyname('extraPrice').IsNull then
                             sql.Add(' ,extraPrice=null')
                           else
                             sql.Add(' ,extraPrice='''+query1.fieldbyname('extraPrice').AsString+'''');
                        sql.Add('   ,Location='''+query1.fieldbyname('Location').AsString+'''');
                        sql.Add('   ,REMARK='''+query1.fieldbyname('REMARK').AsString+'''');
                        sql.Add('   ,userID='''+main.edit1.text+'''');
                        sql.Add('   ,userdate='''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                        sql.Add(' where CLBH = '''+officeocde+'''');
                        sql.Add('   and ZSBH = '''+query1.fieldbyname('ZSBH').AsString+'''');
                        sql.Add('   and Season='''+query1.fieldbyname('Season').AsString+'''');
                        execsql;
                      end;
                    end;

            //填Leadtime異動資料
            if (query1.fieldbyname('SampleLeadTime').AsString<>query1.fieldbyname('old_SampleLeadTime').AsString) or (query1.fieldbyname('ProdLeadTime').AsString<>query1.fieldbyname('old_ProdLeadTime').AsString) or (query1.fieldbyname('Forecast_Leadtime').AsString<>query1.fieldbyname('old_Forecast_Leadtime').AsString)  then
               begin
                  tmpQry.Active:=false  ;
                  tmpQry.SQL.Clear;
                  tmpQry.sql.add('insert MaterialMOQ_LT_History Values');
                  tmpQry.sql.add('('''+query1.FieldByName('SampleLeadTime').AsString+''',');
                  tmpQry.sql.add(''''+query1.FieldByName('ProdLeadTime').AsString+''',');
                  tmpQry.sql.add(''''+query1.FieldByName('Forecast_Leadtime').AsString+''',');
                  tmpQry.sql.add(''''+query1.FieldByName('Season').AsString+''',');
                  if officeocde <> '' then
                    tmpQry.sql.add(''''+officeocde+''',')
                  else
                    tmpQry.sql.add(''''+query1.FieldByName('CLBH').AsString+''',');
                  tmpQry.sql.add(''''+query1.FieldByName('ZSBH').AsString+''',');
                  tmpQry.sql.add(''''+main.edit1.text+''',');
                  tmpQry.sql.add(''''+formatdatetime('yyyy/mm/dd hh:mm:ss',Ndate)+''')');
                  tmpQry.ExecSQL;
               end;


           //填歷史單價
           if not (query1.fieldbyname('EffectiveDate').isnull) then
           begin
                 with tmpQry do
                 begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' select * from MaterialPrice where CLBH='''+query1.fieldbyname('CLBH').AsString+'''');
                  sql.Add('                            and ZSBH='''+query1.fieldbyname('ZSBH').AsString+'''');
                  sql.Add('                            and Season='''+query1.fieldbyname('Season').AsString+'''');
                  sql.Add('                            and EffectiveDate='''+query1.fieldbyname('EffectiveDate').AsString+'''');
                  active:=true;
                  if eof then
                  begin
                         active:=false;
                         sql.Clear;
                         sql.Add(' insert MaterialPrice (CLBH,ZSBH,Season,EffectiveDate,SamplePrice,SamplePriceVN,userID,userdate  ');
                         sql.Add(') values (');
                         sql.Add(' '''+query1.fieldbyname('CLBH').AsString+'''');
                         sql.Add(','''+query1.fieldbyname('ZSBH').AsString+'''');
                         sql.Add(','''+query1.fieldbyname('Season').AsString+'''');
                         sql.Add(','''+query1.fieldbyname('EffectiveDate').AsString+'''');
                         sql.Add(','''+query1.fieldbyname('SamplePrice').AsString+'''');
                         sql.Add(','''+query1.fieldbyname('SamplePriceVN').AsString+'''');
                         sql.Add(','''+main.edit1.text+'''');
                         sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                         sql.Add(')');
                         execsql;
                  end else
                  begin
                         active:=false;
                         sql.Clear;
                         sql.Add(' update MaterialPrice ');
                         sql.Add('    set SamplePrice='''+query1.fieldbyname('SamplePrice').AsString+'''');
                         sql.Add('        ,SamplePriceVN='''+query1.fieldbyname('SamplePriceVN').AsString+'''');
                         sql.Add(' where CLBH='''+query1.fieldbyname('CLBH').AsString+'''');
                         sql.Add('                            and ZSBH='''+query1.fieldbyname('ZSBH').AsString+'''');
                         sql.Add('                            and Season='''+query1.fieldbyname('Season').AsString+'''');
                         sql.Add('                            and EffectiveDate='''+query1.fieldbyname('EffectiveDate').AsString+'''');
                         execsql;
                  end;
                 end;
              end;
           end;
        end;
      end;
    end;
    //2024/09/20 Them cot Color Group and Remark of Color Group
    if (query1.fieldbyname('ColorGroup').OldValue<>query1.fieldbyname('ColorGroup').Value) or (query1.fieldbyname('Remark_Color').OldValue<>query1.fieldbyname('Remark_Color').Value) then
    begin
        with tmpQry do
        begin
          active:=false;
          SQL.Clear;
          SQL.Add(' select * from CLZL_ColorGroup where CLDH='''+query1.fieldbyname('CLBH').AsString+''' ');
          active:=true;
          if RecordCount=0 then
          begin
             active:=false;
             SQL.Clear;
             SQL.Add(' insert CLZL_ColorGroup (CLDH,ColorGroup,Remark,USERID,USERDATE,YN ');
             SQL.Add(') values (');
             SQL.Add(' '''+query1.fieldbyname('CLBH').AsString+''' ');
             SQL.Add(','''+query1.fieldbyname('ColorGroup').AsString+''' ');
             SQL.Add(','''+query1.fieldbyname('Remark_Color').AsString+''' ');
             SQL.Add(','''+main.edit1.text+''' ');
             SQL.Add(','''+formatdatetime('yyyy/MM/dd hh:mm:ss',now)+''' ');
             SQL.Add(',''1'')');
             ExecSQL;
             //==============
             active:=false;
             SQL.Clear;
             SQL.Add(' insert CLZL_ColorGroup_His (CLDH,VER,ColorGroup,Remark,USERID,USERDATE ');
             SQL.Add(') values (');
             SQL.Add(' '''+query1.fieldbyname('CLBH').AsString+''' ');
             SQL.Add(',''0'' ');
             SQL.Add(','''+query1.fieldbyname('ColorGroup').AsString+''' ');
             SQL.Add(','''+query1.fieldbyname('Remark_Color').AsString+''' ');
             SQL.Add(','''+main.edit1.text+'''');
             SQL.Add(','''+formatdatetime('yyyy/MM/dd hh:mm:ss',now)+''') ');
             ExecSQL;
          end else
          begin
             Qry_His.Active:=false;
             Qry_His.SQL.Clear;
             Qry_His.SQL.Add('select max(VER) AS VER from CLZL_ColorGroup_His where CLDH = '''+query1.fieldbyname('CLBH').AsString+''' ');
             Qry_His.Active:=true;
             //
             active:=false;
             SQL.Clear;
             SQL.Add(' insert CLZL_ColorGroup_His (CLDH,VER,ColorGroup,Remark,USERID,USERDATE ');
             SQL.Add(') values (');
             SQL.Add(' '''+query1.fieldbyname('CLBH').AsString+''' ');
             SQL.Add(','''+IntToStr(Qry_His.FieldByName('VER').AsInteger+1)+''' ');
             SQL.Add(','''+query1.fieldbyname('ColorGroup').AsString+''' ');
             SQL.Add(','''+query1.fieldbyname('Remark_Color').AsString+''' ');
             SQL.Add(','''+main.edit1.text+'''');
             SQL.Add(','''+formatdatetime('yyyy/MM/dd hh:mm:ss',now)+''') ');
             ExecSQL;
             // ==============
             active:=false;
             SQL.Clear;
             SQL.Add(' update CLZL_ColorGroup ');
             SQL.Add(' set ColorGroup='''+query1.fieldbyname('ColorGroup').AsString+''' ');
             SQL.Add('     ,Remark='''+query1.fieldbyname('Remark_Color').AsString+''' ');
             SQL.Add('     ,USERID= '''+main.edit1.text+''' ');
             SQL.Add('     ,USERDATE= '''+formatdatetime('yyyy/MM/dd hh:mm:ss',now)+''' ');
             SQL.Add(' where CLDH='''+query1.fieldbyname('CLBH').AsString+''' ');
             ExecSQL;
          end;
        end;
    end;

    next;
  end;
  //=====================================================================Save nhieu dong chung du lieu khi modify
  CLBHs := TStringList.Create;
  try
  for i := 0 to DBGrid1.SelectedRows.Count - 1 do
  begin
    DBGrid1.DataSource.DataSet.GotoBookmark(TBookmark(DBGrid1.SelectedRows.Items[i]));
    CLBHs.Add(DBGrid1.DataSource.DataSet.FieldByName('CLBH').AsString);
  end;
  //ShowMessage('CLBH duoc chon: ' + CLBHs.CommaText);
  //FirstColorGroup := query1.FieldByName('ColorGroup').AsString;  //Lay value dau tien
  if CLBHs.Count > 0 then
    begin
      query1.First;
      while not query1.Eof do
        begin
        if query1.FieldByName('CLBH').AsString = CLBHs[0] then
          begin
            FirstColorGroup := query1.FieldByName('ColorGroup').AsString;
            break;
          end;
      query1.Next;
    end;
  end;
    //=========================== Ap dung lai code tren//Start code
  for i := 0 to CLBHs.Count - 1 do
  begin
    with tmpQry do
    begin
      active := false;
      SQL.Clear;
      SQL.Add('SELECT * FROM CLZL_ColorGroup WHERE CLDH = :CLBH');
      ParamByName('CLBH').AsString := CLBHs[i];
      active := true;

    if RecordCount = 0 then
    begin
      // Insert new record into CLZL_ColorGroup
      active := false;
      SQL.Clear;
      {SQL.Add('INSERT INTO CLZL_ColorGroup (CLDH, ColorGroup, Remark, USERID, USERDATE, YN)');
      SQL.Add('VALUES (:CLBH, :ColorGroup, :Remark, :USERID, :USERDATE, :YN)');
      ParamByName('CLBH').AsString := CLBHs[i];
      ParamByName('ColorGroup').AsString := FirstColorGroup;
      ParamByName('Remark').AsString := query1.FieldByName('Remark_Color').AsString;
      ParamByName('USERID').AsString := main.edit1.text;
      ParamByName('USERDATE').AsDateTime := Now;
      ParamByName('YN').AsString := '1';   }
      SQL.Add(' insert CLZL_ColorGroup (CLDH,ColorGroup,Remark,USERID,USERDATE,YN ');
      SQL.Add(') values (');
      SQL.Add(' '''+CLBHs[i]+''' ');
      SQL.Add(','''+FirstColorGroup+''' ');
      SQL.Add(','''+query1.fieldbyname('Remark_Color').AsString+''' ');
      SQL.Add(','''+main.edit1.text+''' ');
      SQL.Add(','''+formatdatetime('yyyy/MM/dd hh:mm:ss',now)+''' ');
      SQL.Add(',''1'')');
      ExecSQL;

      // Insert into CLZL_ColorGroup_His with VER = 0
      SQL.Clear;
      {SQL.Add('INSERT INTO CLZL_ColorGroup_His (CLDH, VER, ColorGroup, Remark, USERID, USERDATE)');
      SQL.Add('VALUES (:CLBH, :VER, :ColorGroup, :Remark, :USERID, :USERDATE)');
      ParamByName('CLBH').AsString := CLBHs[i];
      ParamByName('VER').AsInteger := 0;
      ParamByName('ColorGroup').AsString := FirstColorGroup;
      ParamByName('Remark').AsString := query1.FieldByName('Remark_Color').AsString;
      ParamByName('USERID').AsString := main.edit1.text;
      ParamByName('USERDATE').AsDateTime := Now;}
      SQL.Add(' insert CLZL_ColorGroup_His (CLDH,VER,ColorGroup,Remark,USERID,USERDATE ');
      SQL.Add(') values (');
      SQL.Add(' '''+CLBHs[i]+''' ');
      SQL.Add(',''0'' ');
      SQL.Add(','''+FirstColorGroup+''' ');
      SQL.Add(','''+query1.fieldbyname('Remark_Color').AsString+''' ');
      SQL.Add(','''+main.edit1.text+'''');
      SQL.Add(','''+formatdatetime('yyyy/MM/dd hh:mm:ss',now)+''') ');
      ExecSQL;
    end
    else
    begin
      // Check if an update is needed
      if (FieldByName('ColorGroup').AsString <> FirstColorGroup) or
         (FieldByName('Remark').AsString <> query1.FieldByName('Remark_Color').AsString) then
      begin
        // Get the latest version
        Qry_His.Active := false;
        Qry_His.SQL.Clear;
        Qry_His.SQL.Add('SELECT MAX(VER) AS MaxVER FROM CLZL_ColorGroup_His WHERE CLDH = :CLBH');
        Qry_His.ParamByName('CLBH').AsString := CLBHs[i];
        Qry_His.Active := true;

        // Insert new version into CLZL_ColorGroup_His
        SQL.Clear;
        {SQL.Add('INSERT INTO CLZL_ColorGroup_His (CLDH, VER, ColorGroup, Remark, USERID, USERDATE)');
        SQL.Add('VALUES (:CLBH, :VER, :ColorGroup, :Remark, :USERID, :USERDATE)');
        ParamByName('CLBH').AsString := CLBHs[i];
        ParamByName('VER').AsInteger := Qry_His.FieldByName('MaxVER').AsInteger + 1;
        ParamByName('ColorGroup').AsString := FirstColorGroup;
        ParamByName('Remark').AsString := query1.FieldByName('Remark_Color').AsString;
        ParamByName('USERID').AsString := main.edit1.text;
        ParamByName('USERDATE').AsDateTime := Now; }
        SQL.Add(' insert CLZL_ColorGroup_His (CLDH,VER,ColorGroup,Remark,USERID,USERDATE ');
        SQL.Add(') values (');
        SQL.Add(' '''+CLBHs[i]+''' ');
        SQL.Add(','''+IntToStr(Qry_His.FieldByName('MaxVER').AsInteger+1)+''' ');
        SQL.Add(','''+FirstColorGroup+''' ');
        SQL.Add(','''+query1.fieldbyname('Remark_Color').AsString+''' ');
        SQL.Add(','''+main.edit1.text+'''');
        SQL.Add(','''+formatdatetime('yyyy/MM/dd hh:mm:ss',now)+''') ');
        ExecSQL;

        // Update CLZL_ColorGroup
        SQL.Clear;
        {SQL.Add('UPDATE CLZL_ColorGroup SET');
        SQL.Add('ColorGroup = :ColorGroup,');
        SQL.Add('Remark = :Remark,');
        SQL.Add('USERID = :USERID,');
        SQL.Add('USERDATE = :USERDATE');
        SQL.Add('WHERE CLDH = :CLBH');
        ParamByName('ColorGroup').AsString := FirstColorGroup;
        ParamByName('Remark').AsString := query1.FieldByName('Remark_Color').AsString;
        ParamByName('USERID').AsString := main.edit1.text;
        ParamByName('USERDATE').AsDateTime := Now;
        ParamByName('CLBH').AsString := CLBHs[i]; }
        SQL.Add(' update CLZL_ColorGroup ');
        SQL.Add(' set ColorGroup='''+FirstColorGroup+''' ');
        SQL.Add('     ,Remark='''+query1.fieldbyname('Remark_Color').AsString+''' ');
        SQL.Add('     ,USERID= '''+main.edit1.text+''' ');
        SQL.Add('     ,USERDATE= '''+formatdatetime('yyyy/MM/dd hh:mm:ss',now)+''' ');
        SQL.Add(' where CLDH='''+CLBHs[i]+''' ');
        ExecSQL;
    end;
    end;
  end;
 end;
    //=========================== End code
  finally
    CLBHs.Free;
  end;
  //=====================================================================

end;

  Query1.active:=false;  //更新顯示資料
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=TRUE;
  Qry_Problem.Active:=false;  //第三頁  Problem data  更新顯示資料
  Qry_Problem.Active:=True;
  Qry_MaterialPrice.Active:=True;
  Qry_LT_Histiry.Active:=True;
  s1.Enabled:=true;
  S2.enabled:=false;
  S3.Enabled:=false;

  panel5.Visible:=false;
  edit2.text:='';
  edit7.text:='';
  edit9.text:='';
  edit10.text:='';
  edit11.text:='';
  edit12.text:='';
  edit13.text:='';
  edit14.text:='';
  edit15.text:='';
  combobox1.text:='';
  DBGrid1.columns[8].ButtonStyle:=cbsnone;
end;

procedure TMaterialMOQ.S3Click(Sender: TObject);
begin
if query1.CachedUpdates then
  begin
    query1.Active:=false;
    query1.CachedUpdates:=false;
    query1.RequestLive:=false;
    s1.Enabled:=true;
    S2.Enabled:=false;
    S3.enabled:=false;
    panel5.Visible:=false;
    query1.Active:=true;
    edit2.text:='';
    edit7.text:='';
    edit9.text:='';
    edit10.text:='';
    edit11.text:='';
    edit12.text:='';
    edit13.text:='';
    edit14.text:='';
    edit15.text:='';
    combobox1.text:='';
  end;
end;

procedure TMaterialMOQ.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  target := 'ts1/ts2/ts3';
  tdbgh := DBGrid1;
  if pgc1.ActivePage.Name='TS1' THEN
     tdbgh := DBGrid1;
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

procedure TMaterialMOQ.DBGridEh1CellClick(Column: TColumnEh);
begin
   dbg2 := true;
end;

procedure TMaterialMOQ.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
//  if   Qry2.Fieldbyname('srtype').AsString ='2'   then //代表沒買的母件
//       DBGridEh1.canvas.font.color:=clblue;
//  if   Qry2.Fieldbyname('srtype').AsString ='3'   then //代表沒買的子件
//       DBGridEh1.canvas.font.color:=clFuchsia;
//  if   Qry2.Fieldbyname('srtype').AsString ='4'   then //代表沒買的其他件
//       DBGridEh1.canvas.font.color:=clAqua;
//  if   Qry2.Fieldbyname('fail').value = true   then //代表Fail
//       DBGridEh1.canvas.font.color:=clRed;
//  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure CompressIt(var CompressedStream: TMemoryStream; const CompressionLevel: TCompressionLevel);

// 參數是傳遞的流和壓縮方式

var

   SourceStream: TCompressionStream;

   DestStream: TMemoryStream;

   Count: int64; //注意，此處修改了,原來是int

begin

   //獲得流的原始尺寸

   Count := CompressedStream.Size;

   DestStream := TMemoryStream.Create;

   SourceStream := TCompressionStream.Create(CompressionLevel, DestStream);

   try

      //SourceStream中保存著原始的流

      CompressedStream.SaveToStream(SourceStream);

      //將原始流進行壓縮， DestStream中保存著壓縮後的流

      SourceStream.Free;

      CompressedStream.Clear;

      //寫入原始圖像的尺寸

      CompressedStream.WriteBuffer(Count, SizeOf(Count));

      //寫入經過壓縮的流

      CompressedStream.CopyFrom(DestStream, 0);

   finally

      DestStream.Free;

   end;

end;

procedure UnCompressit(const CompressedStream: TMemoryStream; var UnCompressedStream: TMemoryStream);

//參數 壓縮過的流，解壓後的流

var

   SourceStream: TDecompressionStream;

   DestStream: TMemoryStream;

   Buffer: PChar;

   Count: int64;

begin

   //從被壓縮的圖像流中讀出原始的尺寸

   CompressedStream.ReadBuffer(Count, SizeOf(Count));

   //根據尺寸大小為將要讀入的原始流分配內存塊

   GetMem(Buffer, Count);

   DestStream := TMemoryStream.Create;

   SourceStream := TDecompressionStream.Create(CompressedStream);

   try

      //將被壓縮的流解壓縮，然後存入 Buffer內存塊中

      SourceStream.ReadBuffer(Buffer^, Count);

      //將原始流保存至 DestStream流中

      DestStream.WriteBuffer(Buffer^, Count);

      DestStream.Position := 0; //復位流指針

//      DestStream.Position := length(VER_INFO);

      //從 DestStream流中載入圖像流

      UnCompressedStream.LoadFromStream(DestStream);

   finally

      FreeMem(Buffer);

      DestStream.Free;

   end;

end;


procedure TMaterialMOQ.BBTT1Click(Sender: TObject);
begin
  MaterialMOQ_Purchaser:=TMaterialMOQ_Purchaser.create(self);
  MaterialMOQ_Purchaser.show;
end;

procedure TMaterialMOQ.Timer1Timer(Sender: TObject);
begin
   if Lbl_Warnning.Visible=true then
      Lbl_Warnning.Visible:=false
   else
      Lbl_Warnning.Visible:=true ;
end;

procedure TMaterialMOQ.Qry_ProblemAfterOpen(DataSet: TDataSet);
begin
   if Qry_Problem.RecordCount>0 then
      Timer1.Enabled:=true
   else
      Timer1.Enabled:=false;
end;

procedure TMaterialMOQ.Delete1Click(Sender: TObject);
begin

if query1.Active then
  begin
    Query1.RequestLive:=true;
    Query1.CachedUpdates:=true;
    s1.Enabled:=false;
    S2.enabled:=true;
    S3.enabled:=true;
    with query1 do
      begin
        edit;
        fieldbyname('ZSBH').AsString:=''  ;
        fieldbyname('SampleLeadTime').AsString:='';
        fieldbyname('ProdLeadTime').AsString:='';
        fieldbyname('extraprice').AsString:='';
        fieldbyname('SampleMOQ').AsString:='' ;
        fieldbyname('ProdMOQ').AsString:=''   ;
        fieldbyname('Surcharge').AsString:='' ;
        fieldbyname('Dyingfee').AsString:=''   ;
        fieldbyname('SamplePrice').AsString:='' ;
        fieldbyname('ProdPrice').AsString:=''   ;
        fieldbyname('REMARK').AsString:=''      ;
        fieldbyname('Forecast_Leadtime').AsString:=''      ;
      end;
  end;
end;

procedure TMaterialMOQ.Button3Click(Sender: TObject);
begin
  if CountryLeadtime<>nil then
  begin
    CountryLeadtime.show;
    CountryLeadtime.windowstate:=wsmaximized;
  end
  else
    begin
      CountryLeadtime:=TCountryLeadtime.create(self);
      CountryLeadtime.show;
    end;
end;

procedure TMaterialMOQ.MenuItem4Click(Sender: TObject);
begin
  if Qry_Policy.CachedUpdates then
  begin
    Qry_Policy.Active:=false;
    Qry_Policy.CachedUpdates:=false;
    Qry_Policy.RequestLive:=false;
    MenuItem1.Enabled:=true;
    MenuItem2.Enabled:=true;
    MenuItem3.Enabled:=false;
    Insert.Enabled:=false;
    MenuItem4.enabled:=false;
    DBGridEh3.Columns[2].ReadOnly:=true;
    DBGridEh3.Columns[3].ReadOnly:=true;
    DBGridEh3.Columns[4].ReadOnly:=true;
    DBGridEh3.Columns[5].ReadOnly:=true;
    DBGridEh3.Columns[6].ReadOnly:=true;
    DBGridEh3.Columns[7].ReadOnly:=true;
    DBGridEh3.Columns[8].ReadOnly:=true;
    DBGridEh3.Columns[9].ReadOnly:=true;
    DBGridEh3.Columns[10].ReadOnly:=true;
    DBGridEh3.Columns[11].ReadOnly:=true;
    DBGridEh3.Columns[12].ReadOnly:=true;
    Qry_Policy.Active:=true;
  end;
end;

procedure TMaterialMOQ.MenuItem2Click(Sender: TObject);
begin
  if Qry_Policy.Active then
  begin
    Qry_Policy.RequestLive:=true;
    Qry_Policy.CachedUpdates:=true;
    DBGridEh3.Columns[2].ReadOnly:=false;
    DBGridEh3.Columns[3].ReadOnly:=false;
    DBGridEh3.Columns[4].ReadOnly:=false;
    DBGridEh3.Columns[5].ReadOnly:=false;
    DBGridEh3.Columns[6].ReadOnly:=false;
    DBGridEh3.Columns[7].ReadOnly:=false;
    DBGridEh3.Columns[8].ReadOnly:=false;
    DBGridEh3.Columns[9].ReadOnly:=false;
    DBGridEh3.Columns[10].ReadOnly:=false;
    DBGridEh3.Columns[11].ReadOnly:=false;
    DBGridEh3.Columns[12].ReadOnly:=false;
    MenuItem1.Enabled:=false;
    MenuItem2.Enabled:=false;
    MenuItem3.Enabled:=true;
    Insert.Enabled:=true;
    MenuItem4.enabled:=true;
    with Qry_Policy do
      begin
        edit;
        fieldbyname('CR1_FreeQty').AsString:=''  ;
        fieldbyname('CR1_Charge').AsString:='';
        fieldbyname('CFM_FreeQty').AsString:='';
        fieldbyname('CFM_charge').AsString:='' ;
        fieldbyname('CR2_FreeQty').AsString:='';
        fieldbyname('CR2_charge').AsString:='' ;
        fieldbyname('OTH_FreeQty').AsString:=''   ;
        fieldbyname('OTH_Charge').AsString:='' ;
        fieldbyname('ADT_FreeQty').AsString:=''   ;
        fieldbyname('ADT_Charge').AsString:='' ;
        fieldbyname('SMS_FreeQty').AsString:=''   ;
        fieldbyname('SMS_Charge').AsString:=''      ;
        fieldbyname('SMU_FreeQty').AsString:=''      ;
        fieldbyname('SMU_Charge').AsString:=''      ;
        fieldbyname('EffectiveDate').AsString:=''      ;
        fieldbyname('USpriceHG').AsString:=''      ;                    
      end;
  end;
end;

procedure TMaterialMOQ.MenuItem1Click(Sender: TObject);
begin
  if Qry_Policy.Active then
  begin

    Qry_Policy.RequestLive:=true;
    Qry_Policy.CachedUpdates:=true;
    DBGridEh3.Columns[2].ReadOnly:=false;
    DBGridEh3.Columns[3].ReadOnly:=false;
    DBGridEh3.Columns[4].ReadOnly:=false;
    DBGridEh3.Columns[5].ReadOnly:=false;
    DBGridEh3.Columns[6].ReadOnly:=false;
    DBGridEh3.Columns[7].ReadOnly:=false;
    DBGridEh3.Columns[8].ReadOnly:=false;
    DBGridEh3.Columns[9].ReadOnly:=false;
    DBGridEh3.Columns[10].ReadOnly:=false;
    DBGridEh3.Columns[11].ReadOnly:=false;
    DBGridEh3.Columns[12].ReadOnly:=false;
    DBGridEh3.Columns[13].ReadOnly:=false;
    DBGridEh3.Columns[14].ReadOnly:=false;
    DBGridEh3.Columns[15].ReadOnly:=false;
    MenuItem1.Enabled:=false;
    MenuItem2.Enabled:=false;
    MenuItem3.Enabled:=true;
    Insert.Enabled:=true;
    MenuItem4.enabled:=true;

  end;
end;

procedure TMaterialMOQ.MenuItem3Click(Sender: TObject);
begin
  with Qry_Policy do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            if (fieldbyname('USpriceHG').isnull) and(fieldbyname('CR1_FreeQty').isnull) and (fieldbyname('CR1_Charge').isnull) and (fieldbyname('CR2_FreeQty').isnull)
                and (fieldbyname('CR2_charge').isnull) and (fieldbyname('ADT_FreeQty').isnull) and (fieldbyname('ADT_Charge').isnull)
                and (fieldbyname('SMS_FreeQty').isnull) and (fieldbyname('SMS_Charge').isnull) and (fieldbyname('SMU_FreeQty').isnull)
                and (fieldbyname('SMU_Charge').isnull) and (fieldbyname('OTH_FreeQty').isnull) and (fieldbyname('OTH_Charge').isnull)
                and (fieldbyname('EffectiveDate').isnull) and (fieldbyname('CFM_FreeQty').isnull) and (fieldbyname('CFM_Charge').isnull) then
                begin
                   with tmpQry do
                   begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' delete zszlSamplePayment  ');
                      sql.add(' where 1=1 ');
                      sql.Add('     and ZSDH='''+Qry_Policy.fieldbyname('ZSbH').AsString+'''');
                      sql.Add('     and Season='''+Qry_Policy.fieldbyname('Season').AsString+'''');
                      sql.Add('     and cldh='''+Qry_Policy.fieldbyname('clbh').AsString+'''');
                      execsql;
                   end;
                end else
                begin
                   with tmpQry do
                   begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' select ZSDH from zszlSamplePayment ');
                      sql.Add('  where ZSDH='''+Qry_Policy.fieldbyname('ZSBH').AsString+'''');
                      sql.Add('       and Season='''+SeaEdit.text+'''');
                      sql.Add('  and cldh='''+Qry_Policy.fieldbyname('clBh').AsString+'''');
                      active:=true;
                      if eof then
                      begin
                         active:=false;
                         sql.Clear;
                         sql.Add(' insert zszlSamplePayment (ZSDH,Season,cldh');
                         if not Qry_Policy.fieldbyname('CR1_FreeQty').IsNull then
                            sql.Add(',CR1_FreeQty');
                        if not Qry_Policy.fieldbyname('CR1_Charge').IsNull then
                            sql.Add(',CR1_Charge');
                        if not Qry_Policy.fieldbyname('CFM_FreeQty').IsNull then
                            sql.Add(',CFM_FreeQty');
                        if not Qry_Policy.fieldbyname('CFM_Charge').IsNull then
                            sql.Add(',CFM_Charge');
                        if not Qry_Policy.fieldbyname('CR2_FreeQty').IsNull then
                            sql.Add(',CR2_FreeQty');
                        if not Qry_Policy.fieldbyname('CR2_charge').IsNull then
                            sql.Add(',CR2_charge');
                        if not Qry_Policy.fieldbyname('ADT_FreeQty').IsNull then
                            sql.Add(',ADT_FreeQty');
                        if not Qry_Policy.fieldbyname('ADT_Charge').IsNull then
                            sql.Add(',ADT_Charge');
                        if not Qry_Policy.fieldbyname('SMS_FreeQty').IsNull then
                            sql.Add(',SMS_FreeQty');
                        if not Qry_Policy.fieldbyname('SMS_Charge').IsNull then
                            sql.Add(',SMS_Charge');
                        if not Qry_Policy.fieldbyname('SMU_FreeQty').IsNull then
                            sql.Add(',SMU_FreeQty');
                        if not Qry_Policy.fieldbyname('SMU_Charge').IsNull then
                            sql.Add(',SMU_Charge');
                        if not Qry_Policy.fieldbyname('OTH_FreeQty').IsNull then
                            sql.Add(',OTH_FreeQty');
                        if not Qry_Policy.fieldbyname('OTH_Charge').IsNull then
                            sql.Add(',OTH_Charge');
                         if not Qry_Policy.fieldbyname('USpriceHG').IsNull then
                            sql.Add(',USpriceHG');
                         sql.Add(',EffectiveDate,Unit,userID,userdate) values (');
                         sql.Add(''''+Qry_Policy.fieldbyname('ZSBH').AsString+'''');
                         sql.Add(','''+SeaEdit.Text+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('clbh').AsString+'''');
                         if not Qry_Policy.fieldbyname('CR1_FreeQty').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('CR1_FreeQty').AsString+'''');
                         if not Qry_Policy.fieldbyname('CR1_Charge').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('CR1_Charge').AsString+'''');
                         if not Qry_Policy.fieldbyname('CFM_FreeQty').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('CFM_FreeQty').AsString+'''');
                         if not Qry_Policy.fieldbyname('CFM_Charge').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('CFM_Charge').AsString+'''');
                         if not Qry_Policy.fieldbyname('CR2_FreeQty').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('CR2_FreeQty').AsString+'''');
                         if not Qry_Policy.fieldbyname('CR2_charge').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('CR2_charge').AsString+'''');
                         if not Qry_Policy.fieldbyname('ADT_FreeQty').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('ADT_FreeQty').AsString+'''');
                         if not Qry_Policy.fieldbyname('ADT_Charge').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('ADT_Charge').AsString+'''');
                         if not Qry_Policy.fieldbyname('SMS_FreeQty').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('SMS_FreeQty').AsString+'''');
                         if not Qry_Policy.fieldbyname('SMS_Charge').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('SMS_Charge').AsString+'''');
                         if not Qry_Policy.fieldbyname('SMU_FreeQty').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('SMU_FreeQty').AsString+'''');
                         if not Qry_Policy.fieldbyname('SMU_Charge').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('SMU_Charge').AsString+'''');
                         if not Qry_Policy.fieldbyname('OTH_FreeQty').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('OTH_FreeQty').AsString+'''');
                         if not Qry_Policy.fieldbyname('OTH_Charge').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('OTH_Charge').AsString+'''');
                         if not Qry_Policy.fieldbyname('USpriceHG').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('USpriceHG').AsString+'''');
                         if not Qry_Policy.fieldbyname('EffectiveDate').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('EffectiveDate').AsString+'''')
                         else
                            sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('dwbh').AsString+'''');
                         sql.Add(','''+main.edit1.text+'''');
                         sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');

                         sql.Add(')');
                         execsql;
                      end else
                      begin
                         active:=false;
                         sql.Clear;
                         sql.Add(' update zszlSamplePayment set ');
                         sql.Add('   CR1_FreeQty='''+Qry_Policy.fieldbyname('CR1_FreeQty').AsString+''', ');
                         sql.Add('   CR1_Charge='''+Qry_Policy.fieldbyname('CR1_Charge').AsString+''', ');
                         sql.Add('   CFM_FreeQty='''+Qry_Policy.fieldbyname('CFM_FreeQty').AsString+''',');
                         sql.Add('   CFM_charge='''+Qry_Policy.fieldbyname('CFM_charge').AsString+''',');
                         sql.Add('   CR2_FreeQty='''+Qry_Policy.fieldbyname('CR2_FreeQty').AsString+''',');
                         sql.Add('   CR2_charge='''+Qry_Policy.fieldbyname('CR2_charge').AsString+''',');
                         sql.Add('   ADT_FreeQty='''+Qry_Policy.fieldbyname('ADT_FreeQty').AsString+''',');
                         sql.Add('   ADT_Charge='''+Qry_Policy.fieldbyname('ADT_Charge').AsString+''',');
                         sql.Add('   SMS_FreeQty='''+Qry_Policy.fieldbyname('SMS_FreeQty').AsString+''',');
                         sql.Add('   SMS_Charge='''+Qry_Policy.fieldbyname('SMS_Charge').AsString+''',');
                         sql.Add('   SMU_FreeQty='''+Qry_Policy.fieldbyname('SMU_FreeQty').AsString+''',');
                         sql.Add('   SMU_Charge='''+Qry_Policy.fieldbyname('SMU_Charge').AsString+''',');
                         sql.Add('   OTH_FreeQty='''+Qry_Policy.fieldbyname('OTH_FreeQty').AsString+''',');
                         sql.Add('   OTH_Charge='''+Qry_Policy.fieldbyname('OTH_Charge').AsString+''',');
                         sql.Add('   USpriceHG='''+Qry_Policy.fieldbyname('USpriceHG').AsString+''',');
                         sql.Add('   Unit='''+Qry_Policy.fieldbyname('Unit').AsString+''',');
                         sql.Add('   Average='''+Qry_Policy.fieldbyname('Average').AsString+''',');
                         if not Qry_Policy.fieldbyname('EffectiveDate').IsNull then
                            sql.Add(' EffectiveDate='''+Qry_Policy.fieldbyname('EffectiveDate').AsString+''',');
                         sql.Add('   userID='''+main.edit1.text+''',');
                         sql.Add('   userdate='''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                         sql.Add(' where 1=1');
                         sql.Add('   and ZSDH = '''+Qry_Policy.fieldbyname('ZSBH').AsString+'''');
                         sql.Add('   and Season='''+Qry_Policy.fieldbyname('Season').AsString+'''');
                         sql.Add('   and cldh = '''+Qry_Policy.fieldbyname('clbh').AsString+'''');
                         execsql;
                         active:=false;
                      end;
                   end;
                end;
          end;
         { else
          begin
            if (fieldbyname('CR1_FreeQty').isnull) and (fieldbyname('CR1_Charge').isnull) and (fieldbyname('CR2_FreeQty').isnull)
                and (fieldbyname('CR2_charge').isnull) and (fieldbyname('ADT_FreeQty').isnull) and (fieldbyname('ADT_Charge').isnull)
                and (fieldbyname('SMS_FreeQty').isnull) and (fieldbyname('SMS_Charge').isnull) and (fieldbyname('SMU_FreeQty').isnull)
                and (fieldbyname('SMU_Charge').isnull) and (fieldbyname('OTH_FreeQty').isnull) and (fieldbyname('OTH_Charge').isnull)
                and (fieldbyname('EffectiveDate').isnull)  and (fieldbyname('CFM_FreeQty').isnull) and (fieldbyname('CFM_Charge').isnull)then
                begin
                   with tmpQry do
                   begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' delete zszlSamplePayment  ');
                      sql.add(' where 1=1 ');
                      sql.Add('     and ZSDH='''+Qry_Policy.fieldbyname('zsbh').AsString+'''');
                      sql.Add('     and Season='''+Qry_Policy.fieldbyname('Season').AsString+'''');
                      sql.Add('     and cldh='''+Qry_Policy.fieldbyname('clbh').AsString+'''');
                      execsql;
                   end;
                end else
                begin
                   with tmpQry do
                   begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' select ZSDH from zszlSamplePayment ');
                      sql.Add('  where ZSDH='''+Qry_Policy.fieldbyname('ZSbH').AsString+'''');
                      sql.Add('       and Season='''+Edit1.text+'''');
                      sql.Add('  and cldh='''+Qry_Policy.fieldbyname('clbh').AsString+'''');
                      active:=true;
                      if eof then
                      begin
                         active:=false;
                         sql.Clear;
                         sql.Add(' insert zszlSamplePayment (ZSDH,Season,cldh,CR1_FreeQty,CR1_Charge,CFM_FreeQty,CFM_Charge,CR2_FreeQty,CR2_charge');
                         sql.Add(',ADT_FreeQty,ADT_Charge,SMS_FreeQty,SMS_Charge,SMU_FreeQty,SMU_Charge,OTH_FreeQty,OTH_Charge');
                         sql.Add(',EffectiveDate,Unit,userID,userdate) values (');
                         sql.Add(''''+Qry_Policy.fieldbyname('ZSbH').AsString+'''');
                         sql.Add(','''+Edit1.Text+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('clbh').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('CR1_FreeQty').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('CR1_Charge').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('CFM_FreeQty').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('CFM_charge').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('CR2_FreeQty').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('CR2_charge').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('ADT_FreeQty').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('ADT_Charge').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('SMS_FreeQty').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('SMS_Charge').AsString+'''');

                         sql.Add(','''+Qry_Policy.fieldbyname('SMU_FreeQty').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('SMU_Charge').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('OTH_FreeQty').AsString+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('OTH_Charge').AsString+'''');
                         if not Qry_Policy.fieldbyname('EffectiveDate').IsNull then
                            sql.Add(','''+Qry_Policy.fieldbyname('EffectiveDate').AsString+'''')
                         else
                            sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                         sql.Add(','''+Qry_Policy.fieldbyname('Unit').AsString+'''');
                         sql.Add(','''+main.edit1.text+'''');
                         sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                         sql.Add(')');
                         execsql;
                      end else
                      begin
                         active:=false;
                         sql.Clear;
                         sql.Add(' update zszlSamplePayment set ');
                         sql.Add('   CR1_FreeQty='''+Qry_Policy.fieldbyname('CR1_FreeQty').AsString+'''');
                         sql.Add('   ,CR1_Charge='''+Qry_Policy.fieldbyname('CR1_Charge').AsString+'''');
                         sql.Add('   ,CFM_FreeQty='''+Qry_Policy.fieldbyname('CFM_FreeQty').AsString+'''');
                         sql.Add('   ,CFM_charge='''+Qry_Policy.fieldbyname('CFM_charge').AsString+'''');
                         sql.Add('   ,CR2_FreeQty='''+Qry_Policy.fieldbyname('CR2_FreeQty').AsString+'''');
                         sql.Add('   ,CR2_charge='''+Qry_Policy.fieldbyname('CR2_charge').AsString+'''');
                         sql.Add('   ,ADT_FreeQty='''+Qry_Policy.fieldbyname('ADT_FreeQty').AsString+'''');
                         sql.Add('   ,ADT_Charge='''+Qry_Policy.fieldbyname('ADT_Charge').AsString+'''');
                         sql.Add('   ,SMS_FreeQty='''+Qry_Policy.fieldbyname('SMS_FreeQty').AsString+'''');
                         sql.Add('   ,SMS_Charge='''+Qry_Policy.fieldbyname('SMS_Charge').AsString+'''');
                         sql.Add('   ,SMU_FreeQty='''+Qry_Policy.fieldbyname('SMU_FreeQty').AsString+'''');
                         sql.Add('   ,SMU_Charge='''+Qry_Policy.fieldbyname('SMU_Charge').AsString+'''');
                         sql.Add('   ,OTH_FreeQty='''+Qry_Policy.fieldbyname('OTH_FreeQty').AsString+'''');
                         sql.Add('   ,OTH_Charge='''+Qry_Policy.fieldbyname('OTH_Charge').AsString+'''');
                         sql.Add('   ,Unit='''+Qry_Policy.fieldbyname('Unit').AsString+'''');
                         sql.Add('   ,Average='''+Qry_Policy.fieldbyname('Average').AsString+'''');
                         if not Qry_Policy.fieldbyname('EffectiveDate').IsNull then
                            sql.Add(' ,EffectiveDate='''+Qry_Policy.fieldbyname('EffectiveDate').AsString+'''');
                         sql.Add('   ,userID='''+main.edit1.text+'''');
                         sql.Add('   ,userdate='''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                         sql.Add(' where 1=1');
                         sql.Add('   and ZSDH = '''+Qry_Policy.fieldbyname('ZSBH').AsString+'''');
                         sql.Add('   and Season='''+Qry_Policy.fieldbyname('Season').AsString+'''');
                         sql.Add('   and cldh = '''+Qry_Policy.fieldbyname('clbh').AsString+'''');
                         execsql;
                         active:=false;
                      end;
                   end;
                end;
          end;     }
          next;
      end;
  end;
  Qry_Policy.active:=false;  //更新顯示資料
  Qry_Policy.cachedupdates:=false;
  Qry_Policy.requestlive:=false;
  Qry_Policy.active:=TRUE;
  MenuItem1.Enabled:=true;
  MenuItem2.Enabled:=true;
  MenuItem3.Enabled:=false;
  Insert.Enabled:=false;
  MenuItem4.enabled:=false;
  DBGridEh3.Columns[2].ReadOnly:=true;
  DBGridEh3.Columns[3].ReadOnly:=true;
  DBGridEh3.Columns[4].ReadOnly:=true;
  DBGridEh3.Columns[5].ReadOnly:=true;
  DBGridEh3.Columns[6].ReadOnly:=true;
  DBGridEh3.Columns[7].ReadOnly:=true;
  DBGridEh3.Columns[8].ReadOnly:=true;
  DBGridEh3.Columns[9].ReadOnly:=true;
  DBGridEh3.Columns[10].ReadOnly:=true;
  DBGridEh3.Columns[11].ReadOnly:=true;
  DBGridEh3.Columns[12].ReadOnly:=true;
end;

procedure TMaterialMOQ.InsertClick(Sender: TObject);
begin
if Qry_Policy.Active then
  begin
    Qry_Policy.RequestLive:=true;
    Qry_Policy.CachedUpdates:=true;
    Qry_Policy.Insert;
    DBGridEh3.Columns[0].ReadOnly:=false;
    DBGridEh3.Columns[3].ReadOnly:=false;
    DBGridEh3.Columns[2].ReadOnly:=false;
    DBGridEh3.Columns[3].ReadOnly:=false;
    DBGridEh3.Columns[4].ReadOnly:=false;
    DBGridEh3.Columns[5].ReadOnly:=false;
    DBGridEh3.Columns[6].ReadOnly:=false;
    DBGridEh3.Columns[7].ReadOnly:=false;
    DBGridEh3.Columns[8].ReadOnly:=false;
    DBGridEh3.Columns[9].ReadOnly:=false;
    DBGridEh3.Columns[10].ReadOnly:=false;
    DBGridEh3.Columns[11].ReadOnly:=false;
    DBGridEh3.Columns[12].ReadOnly:=false;
    DBGridEh3.Columns[13].ReadOnly:=false;
    DBGridEh3.Columns[14].ReadOnly:=false;
    DBGridEh3.Columns[15].ReadOnly:=false;
    MenuItem1.Enabled:=false;
    MenuItem2.Enabled:=false;
    MenuItem3.Enabled:=true;
    Insert.Enabled:=true;
    MenuItem4.enabled:=true;

  end;
end;

procedure TMaterialMOQ.P4Click(Sender: TObject);
begin
if Qry_MaterialPrice.CachedUpdates then
  begin
    Qry_MaterialPrice.Active:=false;
    Qry_MaterialPrice.CachedUpdates:=false;
    Qry_MaterialPrice.RequestLive:=false;
    P1.Enabled:=true;
    P2.Enabled:=true;
    P3.Enabled:=false;
    P4.Enabled:=false;
    DBGrid1.Enabled:=TRUE;
    DBGridEh1.Columns[1].ReadOnly:=true;
    DBGridEh1.Columns[2].ReadOnly:=true;
    DBGridEh1.Columns[3].ReadOnly:=true;
    Qry_MaterialPrice.Active:=true;
  end;
end;

procedure TMaterialMOQ.P1Click(Sender: TObject);
begin
if Qry_MaterialPrice.Active then
  begin
    Qry_MaterialPrice.RequestLive:=true;
    Qry_MaterialPrice.CachedUpdates:=true;
    DBGridEh1.Columns[1].ReadOnly:=false;
    DBGridEh1.Columns[2].ReadOnly:=false;
    DBGridEh1.Columns[3].ReadOnly:=false;
    P1.Enabled:=false;
    P2.Enabled:=false;
    P3.Enabled:=true;
    P4.enabled:=true;
    DBGrid1.Enabled:=false;
  end;
end;

procedure TMaterialMOQ.P2Click(Sender: TObject);
begin
if Qry_MaterialPrice.Active then
  begin
    Qry_MaterialPrice.RequestLive:=true;
    Qry_MaterialPrice.CachedUpdates:=true;
    DBGridEh1.Columns[1].ReadOnly:=false;
    DBGridEh1.Columns[2].ReadOnly:=false;
    DBGridEh1.Columns[3].ReadOnly:=false;
    P1.Enabled:=false;
    P2.Enabled:=false;
    P3.Enabled:=true;
    P4.enabled:=true;
    DBGrid1.Enabled:=false;
    with Qry_MaterialPrice do
      begin
        edit;
        fieldbyname('SamplePrice').AsString:=''  ;
        fieldbyname('SamplePriceVN').AsString:='';
        fieldbyname('EffectiveDate').AsString:='';
      end;
  end;

end;

procedure TMaterialMOQ.P3Click(Sender: TObject);
begin
with Qry_MaterialPrice do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            if (fieldbyname('SamplePrice').isnull)
                and (fieldbyname('SamplePriceVN').isnull)
                and (fieldbyname('EffectiveDate').isnull) then
              begin
                with tmpQry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' delete MaterialPrice  ');
                  sql.add(' where CLBH='''+Qry_MaterialPrice.fieldbyname('CLBH').AsString+'''');
                  sql.Add('     and ZSBH='''+Qry_MaterialPrice.fieldbyname('ZSBH').AsString+'''');
                  sql.Add('     and Season='''+Qry_MaterialPrice.fieldbyname('Season').AsString+'''');
                  sql.Add('     and EffectiveDate='''+Qry_MaterialPrice.fieldbyname('Old_EffectiveDate').AsString+'''');
                  execsql;
                end;
              end
            else
              begin
                if Qry_MaterialPrice.fieldbyname('EffectiveDate').AsString='' then
                   begin
                     showmessage('[EffectiveDate] can not be empty !');
                     exit
                   end;
                with tmpQry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' select ZSBH from MaterialPrice ');
                  sql.add(' where CLBH='''+Query1.fieldbyname('CLBH').AsString+'''');
                  sql.Add('     and ZSBH='''+Query1.fieldbyname('ZSBH').AsString+'''');
                  sql.Add('     and Season='''+Query1.fieldbyname('Season').AsString+'''');
                  sql.Add('     and EffectiveDate='''+Qry_MaterialPrice.fieldbyname('EffectiveDate').AsString+'''');
                  active:=true;
                  if eof then
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' insert MaterialPrice (ZSBH');
                    sql.Add(',Season');
                    sql.Add(',CLBH');
                    sql.Add(',SamplePrice');
                    sql.Add(',SamplePriceVN');
                    sql.Add(',EffectiveDate');
                    sql.Add(',userID,userdate  ');
                    sql.Add(') values (');
                    sql.Add(''''+Query1.fieldbyname('ZSBH').AsString+'''');
                    sql.Add(','''+Query1.fieldbyname('Season').AsString+'''');
                    sql.Add(','''+Query1.fieldbyname('CLBH').AsString+'''');
                    sql.Add(','''+Qry_MaterialPrice.fieldbyname('SamplePrice').AsString+'''');
                    sql.Add(','''+Qry_MaterialPrice.fieldbyname('SamplePriceVN').AsString+'''');
                    sql.Add(','''+Qry_MaterialPrice.fieldbyname('EffectiveDate').AsString+'''') ;
                    sql.Add(','''+main.edit1.text+'''');
                    sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                    sql.Add(')');
                    execsql;
                  end
                  else
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' update MaterialPrice set ');
                    sql.Add('   SamplePrice='''+Qry_MaterialPrice.fieldbyname('SamplePrice').AsString+'''');
                    sql.Add('   ,SamplePriceVN='''+Qry_MaterialPrice.fieldbyname('SamplePriceVN').AsString+'''');
                    sql.Add('   ,EffectiveDate='''+Qry_MaterialPrice.fieldbyname('EffectiveDate').AsString+'''');
                    sql.Add('   ,userID='''+main.edit1.text+'''');
                    sql.Add('   ,userdate='''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                    sql.add(' where CLBH='''+Qry_MaterialPrice.fieldbyname('CLBH').AsString+'''');
                    sql.Add('     and ZSBH='''+Qry_MaterialPrice.fieldbyname('ZSBH').AsString+'''');
                    sql.Add('     and Season='''+Qry_MaterialPrice.fieldbyname('Season').AsString+'''');
                    sql.Add('     and EffectiveDate='''+Qry_MaterialPrice.fieldbyname('Old_EffectiveDate').AsString+'''');
                    execsql;
                    active:=false;
                  end;
                end;
              end;
          end;

        if updatestatus=usinserted then
          begin
            if ((Qry_MaterialPrice.fieldbyname('SamplePrice').isnull) and (Qry_MaterialPrice.fieldbyname('SamplePriceVN').isnull)) then
                begin
                  showmessage('[Price] can not be empty !');
                  exit ;
                end;
            if (fieldbyname('EffectiveDate').isnull) then
                begin
                  showmessage('[EffectiveDate] can not be empty !');
                  exit ;
                end;
                with tmpQry do
                begin
                  active:=false;
                  sql.Clear;
                  sql.Add(' select ZSBH from MaterialPrice ');
                    sql.add(' where CLBH='''+Query1.fieldbyname('CLBH').AsString+'''');
                    sql.Add('     and ZSBH='''+Query1.fieldbyname('ZSBH').AsString+'''');
                    sql.Add('     and Season='''+Query1.fieldbyname('Season').AsString+'''');
                    sql.Add('     and EffectiveDate='''+Qry_MaterialPrice.fieldbyname('EffectiveDate').AsString+'''');
                  active:=true;
                  if eof then
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' insert MaterialPrice (ZSBH');
                    sql.Add(',Season');
                    sql.Add(',CLBH');
                    sql.Add(',SamplePrice');
                    sql.Add(',SamplePriceVN');
                    sql.Add(',EffectiveDate');
                    sql.Add(',userID,userdate  ');
                    sql.Add(') values (');
                    sql.Add(''''+Query1.fieldbyname('ZSBH').AsString+'''');
                    sql.Add(','''+Query1.fieldbyname('Season').AsString+'''');
                    sql.Add(','''+Query1.fieldbyname('CLBH').AsString+'''');
                    sql.Add(','''+Qry_MaterialPrice.fieldbyname('SamplePrice').AsString+'''');
                    sql.Add(','''+Qry_MaterialPrice.fieldbyname('SamplePriceVN').AsString+'''');
                    sql.Add(','''+Qry_MaterialPrice.fieldbyname('EffectiveDate').AsString+'''') ;
                    sql.Add(','''+main.edit1.text+'''');
                    sql.Add(','''+formatdatetime('yyyy/MM/dd',Ndate)+'''');
                    sql.Add(')');
                    execsql;
                  end
                  else
                  begin
                     Messagedlg('[EffectiveDate] repeat !',mtwarning,[mbyes],0);
                     exit;
                  end;
                end;
          end;
        next;
      end;
  end;

    Qry_MaterialPrice.active:=false;  //更新顯示資料
    Qry_MaterialPrice.cachedupdates:=false;
    Qry_MaterialPrice.requestlive:=false;
    Qry_MaterialPrice.active:=TRUE;
    P1.Enabled:=true;
    P2.Enabled:=true;
    P3.Enabled:=false;
    P4.enabled:=false;
    DBGrid1.Enabled:=TRUE;    
    DBGridEh3.Columns[1].ReadOnly:=true;
    DBGridEh3.Columns[2].ReadOnly:=true;
    DBGridEh3.Columns[3].ReadOnly:=true;

end;

procedure TMaterialMOQ.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Copy(Query1.FieldByName('CLBH').AsString,1,4)='V901' then
  begin
    DBGrid1.canvas.font.color:=clBlue;
    DBGrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if Query1.FieldByName('CLBH_Status').IsNull or
     (Query1.FieldByName('CLBH_Status').AsString = '') then
  begin
    DBGrid1.Canvas.Font.Color := clRed;
  end
  else
  begin
    DBGrid1.Canvas.Font.Color := clWindowText;
  end;

  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TMaterialMOQ.Button4Click(Sender: TObject);     
begin
   Query1.RequestLive:=true;
   Query1.CachedUpdates:=true;
   with  query1 do
   begin
   first;
      while not query1.eof do
      begin
      edit;
      if edit17.text<>'' then
         query1.fieldbyname('Surcharge').AsString:=edit17.text;
      if edit16.text<>'' then
         query1.fieldbyname('Dyingfee').AsString:=edit16.text;
      if edit9.text<>'' then
      if edit2.text<>'' then
         query1.fieldbyname('SampleLeadTime').AsString:=edit2.text;
      if edit7.text<>'' then
         query1.fieldbyname('ProdLeadTime').AsString:=edit7.text;
      if edit9.text<>'' then
         query1.fieldbyname('Forecast_Leadtime').AsString:=edit9.text;
      if edit10.text<>'' then
         query1.fieldbyname('SampleMOQ').AsString:=edit10.text;
      if edit11.text<>'' then
         query1.fieldbyname('ProdMOQ').AsString:=edit11.text;
      if edit12.text<>'' then
         query1.fieldbyname('ExtraPrice').AsString:=edit12.text;
      if edit13.text<>'' then
         query1.fieldbyname('SamplePrice').AsString:=edit13.text;
      if edit14.text<>'' then
         query1.fieldbyname('SamplePriceVN').AsString:=edit14.text;
      if edit15.text<>'' then
         query1.fieldbyname('EffectiveDate').AsString:=edit15.text;
      if combobox1.text<>'' then
         query1.fieldbyname('Location').AsString:=combobox1.text;
      post;
      Next;
      end;

   end;
end;


procedure TMaterialMOQ.DateTimePicker1Change(Sender: TObject);
begin
    Edit15.text:=FormatDateTime('yyyy/MM/dd',DateTimePicker1.datetime);
end;

procedure TMaterialMOQ.CLBHEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    MatNoEditPaste();
  end;
end;

procedure TMaterialMOQ.SREditPaste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalSR:String;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    TotalSR:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalSR:=TotalSR+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalSR)>0 then
    begin
      DevCodeEdit.Text:=Copy(TotalSR,1,length(TotalSR)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;

procedure TMaterialMOQ.DevCodeEditKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    SREditPaste();
  end;
end;

procedure TMaterialMOQ.S4Click(Sender: TObject);
begin
  ColorGroup_History:=TColorGroup_History.create(self);
  ColorGroup_History.ShowModal();
end;

end.
