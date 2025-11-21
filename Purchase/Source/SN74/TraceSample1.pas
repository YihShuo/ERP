unit TraceSample1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,DBGridEhImpExp, ShellAPI,Zlib,
  Buttons,IniFiles, ExtCtrls, GridsEh, DBGridEh, OleServer, ExcelXP, Menus, DateUtils;

type
  TTraceSample = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    Panel2: TPanel;                           
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    PC1: TPageControl;
    DS4: TDataSource;
    CGDet: TQuery;
    CGDetCGNO: TStringField;
    CGDetCLBH: TStringField;
    CGDetYWPM: TStringField;
    CGDetDWBH: TStringField;
    CGDetQty: TCurrencyField;
    CGDetMemo: TStringField;
    CGDetYQDate: TDateTimeField;
    CGDetCFMDate: TDateTimeField;
    CGDetUSERDate: TDateTimeField;
    CGDetUSERID: TStringField;
    UPDet: TUpdateSQL;
    Query1: TQuery;
    CGDetInvoice: TStringField;
    edt1: TEdit;
    lbl1: TLabel;
    qry1: TQuery;
    qry2: TQuery;
    CGDetACCUS: TCurrencyField;
    CGDetACCVN: TCurrencyField;
    CGDetUSPrice: TCurrencyField;
    CGDetVNPrice: TCurrencyField;
    CGDetUSPrice_: TCurrencyField;
    CGDetVNPrice_: TCurrencyField;
    Qry_zszlSamplePayment: TQuery;
    Qry_zszlSamplePaymentFreeQty: TCurrencyField;
    Qry_zszlSamplePaymentCharge: TCurrencyField;
    Qry_MaterialPrice: TQuery;
    Qry_MaterialPriceSamplePrice: TCurrencyField;
    Qry_MaterialPriceSamplePriceVN: TCurrencyField;
    CGDetQ_USPrice_: TCurrencyField;
    CGDetQ_VNPrice_: TCurrencyField;
    CGDetFreeQty_: TCurrencyField;
    CGDetCharge_: TCurrencyField;
    Label6: TLabel;
    Edit4: TEdit;
    Check: TCheckBox;
    Label7: TLabel;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    CGDetZSYWJC: TStringField;
    CGDetSEASON: TStringField;
    CGDetPURPOSE: TStringField;
    DBGrid4: TDBGridEh;
    CGDetCGDate: TDateTimeField;
    CGDetZSBH: TStringField;
    Chk_ETD: TCheckBox;
    Chk_Price: TCheckBox;
    CGDetNG_Reason: TStringField;
    CGDetNG_ETD: TDateTimeField;
    CGDetNG_ETA: TDateTimeField;
    CGDetResult: TStringField;
    CGDetFile_Name: TStringField;
    CGDetFile_Size: TFloatField;
    CGDetINV_ETA: TDateTimeField;
    bbt6: TBitBtn;
    BitBtn1: TBitBtn;
    SaveDialog1: TSaveDialog;
    ExcelApplication1: TExcelApplication;
    PopupMenu1: TPopupMenu;
    S4: TMenuItem;
    S5: TMenuItem;
    CGDetNG_Remark: TStringField;
    OpenDialog1: TOpenDialog;
    CGDetNG_Date: TDateTimeField;
    CGDetRKUSPrice: TCurrencyField;
    CGDetRKVNPrice: TCurrencyField;
    Qry_MaterialPriceEffectiveDate: TDateTimeField;
    ShowPrice1: TMenuItem;
    Chk_PDT: TCheckBox;
    Label3: TLabel;
    Edit6: TEdit;
    Qry_SamplePayment_Unit: TQuery;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    Chk_NGPending: TCheckBox;
    CGDetold_NG_Date: TDateTimeField;
    Chk_Confirm: TCheckBox;
    CGDetold_NG_Reason: TStringField;
    CGDetold_CFMDate: TDateTimeField;
    Splitter1: TSplitter;
    DS_ETDHistory: TDataSource;
    Qry_ETDHistory: TQuery;
    Qry_ETDHistoryETD: TDateTimeField;
    Qry_ETDHistoryUSERDate: TDateTimeField;
    Qry_ETDHistoryUSERID: TStringField;
    CGDetQC_skin: TCurrencyField;
    CGDetSkin_Size: TCurrencyField;
    CGDetSkin_Quality: TCurrencyField;
    N1: TMenuItem;
    N2: TMenuItem;
    CGDetQC_File_Name: TStringField;
    CGDetQC_File_Size: TFloatField;
    S6: TMenuItem;
    S7: TMenuItem;
    N3: TMenuItem;
    Label9: TLabel;
    CGDetC_window: TStringField;
    CGDetLab: TStringField;
    CGDetLab_reason: TStringField;
    CGDetInvoice_Customs: TStringField;
    CGDetSoftness: TStringField;
    Label10: TLabel;
    Edit7: TEdit;
    chk_CGQty: TCheckBox;
    CGDetvisually: TStringField;
    CGDetspectro: TStringField;
    CGDetspectro_file: TStringField;
    CGDetresult_1: TStringField;
    CGDetSamplePurchaser_Name: TStringField;
    CGDetUSERDate_1: TDateTimeField;
    Button2: TButton;
    CGDetremark: TStringField;
    NGremark: TQuery;
    DataSource1: TDataSource;
    NGremarkremark: TStringField;
    NGremarkuserid: TStringField;
    NGremarkuserdate: TStringField;
    CGDetA4Comfirm: TStringField;
    CGDettrackingA4Comfirm: TStringField;
    CGDetDateA4Comfirm: TDateTimeField;
    CGDetColorWindow: TStringField;
    CGDetDateColorWindow: TDateTimeField;
    CGDetPC_Confirm: TStringField;
    NoInvoiceETA: TCheckBox;
    Label14: TLabel;
    BrandCombo: TComboBox;
    CGDetArticle_All: TStringField;
    CGDetshippedDate: TDateTimeField;
    CGDetsignedDate: TDateTimeField;
    CGDetSigner: TStringField;
    CGDetDCName: TStringField;
    CGDetPRO: TStringField;
    CGDetSenter: TStringField;
    CGDetExpireDate: TDateTimeField;
    CGDetSharedDC: TStringField;
    CGDetUpdater: TStringField;
    CGDetcolor2remark: TStringField;
    UpdateSQL1: TUpdateSQL;
    Edit8: TEdit;
    Label12: TLabel;
    Query2: TQuery;
    Label13: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    CGDetAWB: TStringField;
    CGDetETA: TDateTimeField;
    Label18: TLabel;
    ComboBox14: TComboBox;
    CGDetReturnDate: TDateTimeField;
    CGDetReturnQuantity: TCurrencyField;
    CGDetSerialNumber: TStringField;
    Chk_NG: TCheckBox;
    ComboBox1: TComboBox;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel4: TPanel;
    Label8: TLabel;
    DBGridEh1: TDBGridEh;
    Panel6: TPanel;
    Panel7: TPanel;
    Label11: TLabel;
    DBGridEh2: TDBGridEh;
    Panel8: TPanel;
    Memo1: TMemo;
    Splitter2: TSplitter;
    Timer1: TTimer;
    Edit12: TEdit;
    Label15: TLabel;
    CGDetQty_not: TFloatField;
    CGDetCommitedETD: TDateTimeField;
    ComboBox2: TComboBox;
    Label58: TLabel;
    CGDetMaterial_ETA: TDateTimeField;
    CGDetProductionLocation: TStringField;
    CGDetLateETA: TStringField;
    CGDetsampleorder: TStringField;
    CGDetMatRemark: TStringField;
    Chk_NoDC: TCheckBox;
    CGDetFlexCode: TStringField;
    CGDetPurReceiveDate: TDateTimeField;
    PurReDate: TCheckBox;
    CGDetRFCDeadlineDate: TDateTimeField;
    CGDetCheckResult: TStringField;
    CGDetDelayReason: TStringField;
    CGDetDevtype: TStringField;
    Label16: TLabel;
    Cb_DevTP: TComboBox;
    Button3: TButton;
    Button4: TButton;
    DTMReceivedDate: TDateTimeField;
    Label17: TLabel;
    DTP3: TDateTimePicker;
    below: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure BBT1Click(Sender: TObject);
    procedure BBT2Click(Sender: TObject);
    procedure BBT3Click(Sender: TObject);
    procedure BBT4Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure CGDetAfterOpen(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure S4Click(Sender: TObject);
    procedure S5Click(Sender: TObject);
    procedure ShowPrice1Click(Sender: TObject);
    procedure DBGrid4Columns11NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure S6Click(Sender: TObject);
    procedure S7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGrid4CellClick(Column: TColumnEh);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure belowClick(Sender: TObject);
  private
    STFilePath: string;
    { Private declarations } 
    procedure ReadIni();
    procedure SaveFileExcel();
    procedure DefaultExcel();
  public
    { Public declarations }
    ColumnE_ExcelKPI_N762: Integer;
    ColumnF_ExcelKPI_N762: Integer;
    ColumnN_ExcelKPI_N762: Integer;
    ColumnT_ExcelKPI_N762: Integer;
    ColumnV_ExcelKPI_N762: Integer;
    ColumnX_ExcelKPI_N762: Integer;
    ColumnAC_ExcelKPI_N762: Integer;
    TotalColumnAC_ExcelKPI_N762: Extended;
    PODate, ETDDate: TDateTime;
    PurReceiveDate, Material_ETA: TDateTime;
    ColumnF_DateDifference: Integer;
  end;

var
  TraceSample: TTraceSample;
  NDate:Tdate;

implementation

uses main1, MaterialNG1 , FunUnit , SupplierKPI1;

{$R *.dfm}

procedure TTraceSample.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if BB5.enabled  then
  begin
    messagedlg('You have to save data Record of report first.',mtwarning,[mbyes],0);
    action:=canone;
  end
  else
    begin
      action:=Cafree;
    end;
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


procedure TTraceSample.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TTraceSample.Button1Click(Sender: TObject);
var CGZL_MinUserDate:string;
begin
  //
  dbgrid4.FrozenCols:=strtoint(edit8.text);
  if  ((edit4.text='') or (edit5.text='')) and (not checkbox1.Checked) then
  begin
    showmessage('plz set Season or date between') ;
    abort;
  end;

  with Query1 do
  begin
    Active:=false;
    SQL.CLear;
    SQL.Add('Select  IsNull(Min(CGZL.cgdate),''2030/01/01 00:00:00'') as UserDate from  CGZL,CGZLS ');
    sql.add('where CGZL.CGNO=CGZLS.CGNO and CGZL.CGDATE>''2011/01/01'' and CGZLS.Qty>0 ');
    sql.add('and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
       sql.Add('and CGZL.USERID='+''''+main.Edit1.Text+'''');
    if edit1.Text<>'' then
       sql.add('and CGZLS.CGNO like '''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
       sql.add('and CGZL.ZSBH like '''+edit2.Text+'%'+'''');
    if Edit4.Text<>'' then
       sql.add('and CGZL.Season like '''+Edit4.Text+'%'+'''');
    if Edit5.Text<>'' then
       sql.add('and CGZL.Purpose like '''+Edit5.Text+'%'+'''');
    if (CheckBox1.Checked)  and (length(edt1.Text)=0) then
       begin
        if ComboBox1.ItemIndex = 0 then
          begin
            sql.add('and convert(smalldatetime,convert(varchar,CGZL.cgdate,111)) between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end
        else if ComboBox1.ItemIndex = 1 then
          begin
            sql.add('and convert(smalldatetime,convert(varchar,CGZLS.ReturnDate,111)) between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end;
       end;
    if (Chk_ETD.Checked)  then
       sql.add(' and CGZLS.CFMdate is null');
    if Chk_PDT.Checked then
       sql.add(' and isnull(CGZL.PURPOSE,'''')<>''PDT''  ');

    if length(Edit6.Text) > 0  then
       sql.add(' and CGZLS.CLBH like '''+Edit6.Text+'%'+'''');
    sql.add('    and CGZL.CGLX=''6'' ');
    //funcobj.WriteErrorLog(sql.Text);
    //Active:=true;
    Active:=true;
    if RecordCount>0 then CGZL_MinUserDate:=FormatDateTime('YYYY/MM/DD HH:NN:SS',FieldByName('UserDate').Value);
    Active:=false;
  end;
  //
  with CGDet do
  begin
    active:=false;
    sql.Clear;
    
    sql.add('select A.*');
    sql.add('       ,CGZL_color.visually,CGZL_color.spectro,CGZL_color.spectro_file');
    sql.add('	   ,CGZL_color.result,CGZL_color.userdate,CGZL_color.userid,CGZL_color.remark remark');
    sql.add('       ,cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2.DateA4Comfirm');
    sql.add('	   ,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm');
    sql.add('	   ,cgzl_color2.shippedDate,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signer');
    sql.add('	   ,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate');
    sql.add('	   ,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark');
    sql.add('from (');

    sql.add('select CGZLS.CGNO ');
    sql.add('       ,CGZLS.CLBH ');

    //sql.add('       ,CGZLInvoiceS_1.Invoice_Customs, CGZLInvoiceS_1.PurReceiveDate ');
    sql.add('       ,CGZLInvoiceS_1.Invoice_Customs, CGZLInvoiceS_1.PurReceiveDate, MAX(CGZLInvoiceS_1.DTMReceivedDate) as DTMReceivedDate ');

    sql.add('       ,CGZLS.Qty,(cgzls.Qty - isnull(CGZLInvoiceS_1.Qty,0)) as Qty_not '); // them cot Qty_not
    sql.add('       ,CGZLS.YQDate ');
    sql.add('       ,CGZLS.CFMDate ');
    sql.add('       ,CGZLS.CFMDate as old_CFMDate');
    sql.add('       ,CGZLS.USERDate ');
    sql.add('       ,CGZLS.USERID ');
    sql.add('       ,CGZLS.Memo ');
    sql.add('       ,CGZLS.USPrice ');
    sql.add('       ,CGZLS.VNPrice ');
    sql.add('       ,CGZLS.Article_All ');
    sql.add('       ,ZSZL.ZSYWJC,CLZL.YWPM,CLZL_FLEX.CLDHFLEX AS FlexCode,clbzzl.bz as MatRemark,CLZL.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.CGDate,CGZL.ZSBH');
    sql.add('       ,MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reason ');
    sql.add('       ,MaterialNG.NG_Reason as old_NG_Reason');
    sql.add('       ,MaterialNG.NG_ETD');
    sql.add('       ,MaterialNG.NG_ETA');
    sql.add('       ,MaterialNG.Result');
    sql.add('       ,MaterialNG.NG_Date');
    sql.add('       ,MaterialNG.NG_Date as old_NG_Date');
    {sql.add('       ,CGZL_color.visually');
    sql.add('       ,CGZL_color.spectro');
    sql.add('       ,CGZL_color.spectro_file');
    sql.add('       ,CGZL_color.result');
    sql.add('       ,CGZL_color.userdate');
    sql.add('       ,CGZL_color.userid');
    SQL.Add('	      ,CGZL_color.remark remark');   }
    sql.add('       ,MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_window ');
    sql.add('       ,MaterialNG.Remark AS NG_Remark,MaterialNG.File_Name,MaterialNG.File_Size,CGZLInvoice_1.ETA AS INV_ETA,isnull(CGZLInvoice_1.invoice,'''') as invoice ,RKACC.USPrice as RKUSPrice,RKACC.VNPrice as RKVNPrice,BUSERS.USERNAME as SamplePurchaser_Name  ');
    sql.add('       ,MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality  ');
    sql.add('       ,SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Size, cast(cgzlssampleorder.sampleorder as VarChar(999) ) as sampleorder');
   { sql.add('       ,cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2.DateA4Comfirm');
    sql.add('       ,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm,cgzl_color2.shippedDate');
    sql.add('       ,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signer,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark,cgzls.ETA'); }
    sql.add('       ,cgzls.ETA');
    sql.add('       ,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber,CGZLS.CommitedETD, YPZL.ProductionLocation,xxzlkf.RFCDeadlineDate,CGZLInvoiceS_1.CheckResult,CGZLS.DelayReason,kfxxzl.Devtype ');
    SQL.Add('       ,max(case when ((left(CGZLS.Article_All,1)=''S'' or left(CGZLS.Article_All,1)=''G'') and KFXXZL.Devtype = ''CTM'' and (R1Sample.RSD is not null and convert(smalldatetime,R1Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R1Sample.RSD,111)-14  ');
    SQL.Add('  		            when (left(CGZLS.Article_All,1)=''C'' and KFXXZL.Devtype = ''CTM'' and (R3Sample.RSD is not null and convert(smalldatetime,R3Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R3Sample.RSD,111)-14  ');
    SQL.Add('                 when (left(CGZLS.Article_All,1)=''G'' and KFXXZL.Devtype = ''Incubate'' and CGZL.PURPOSE=''CR1'' and (R1Sample.RSD is not null and convert(smalldatetime,R1Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R1Sample.RSD,111)-14  ');
    SQL.Add('                 when (left(CGZLS.Article_All,1)=''G'' and KFXXZL.Devtype = ''Incubate'' and CGZL.PURPOSE=''CR2'' and (R2Sample.RSD is not null and convert(smalldatetime,R2Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R2Sample.RSD,111)-14  ');
    SQL.Add('                 when (left(CGZLS.Article_All,1)=''G'' and KFXXZL.Devtype = ''Incubate'' and CGZL.PURPOSE=''SMS'' and (R3Sample.RSD is not null and convert(smalldatetime,R3Sample.RSD,111)-14 > getdate())) then convert(smalldatetime,R3Sample.RSD,111)-14  ');
    SQL.Add('                 when (GamePlan.Material_ETA is not null and convert(smalldatetime,GamePlan.Material_ETA ,111) > getdate()) then GamePlan.Material_ETA ');
    SQL.Add('  	              else null end ) as Material_ETA  ');
    sql.add('from CGZLS  ');
    sql.add('inner join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('inner join CLZL on CLZL.CLDH=CGZLS.CLBH');
    sql.add('left join CLZL_FLEX on CLZL_FLEX.CLDH = CLZL.CLDH');
    sql.add('inner join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');

    if main.Edit2.Text = 'SKX' then
    begin
      sql.add('inner join CGZLSS on CGZLS.CGNO=CGZLSS.CGNO');
      sql.add('left join YPZL on CGZLSS.ZLBH=YPZL.YPDH');
    end;
    sql.Add('left join clbzzl on clzl.cldh=clbzzl.cldh and clbzzl.zybb=''E'' ');
    sql.add('left join ZSZL_DEV on ZSZL_DEV.ZSDH=ZSZL.ZSDH and ZSZL_DEV.GSBH='''+main.Edit2.Text+'''');
    sql.add('left join BUSERS on BUSERS.USERID=ZSZL_DEV.SamplePurchaser  ');
    sql.add('left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO ');
    sql.add('left join SampleLeatherQC  on CGZLS.CLBH=SampleLeatherQC.CLBH and CGZLS.CGNO=SampleLeatherQC.CGNO ');
    sql.add('left join MaterialMOQ  on CGZLS.CLBH=MaterialMOQ.CLBH and CGZL.SEASON=MaterialMOQ.Season   ');

    //sql.add('left join cgzl_color2  on CGZLS.CLBH=cgzl_color2.CLBH');
    //sql.add('left join cgzl_color on cgzl_color.cgno=cgzls.cgno and cgzl_color.clbh=cgzls.clbh');
    //臨時正式串聯
{
    sql.add('    left join(select CLZL.cldh,case when (left(CLZL.cldh,1)<>''V'' and cgzl_color2.CLBH  IS NOT NULL) THEN CLZL.cldh ');
    sql.add('             when (left(CLZL_LS.JHDH,1)<>''V'' and cgzl_color2_TEMP.CLBH  IS NOT NULL and CLZL_LS.JHDH <>'''') THEN CLZL_LS.JHDH');
    sql.add('             when (cgzl_color2_TEMP.CLBH  IS NOT NULL and CLZL_LS.JHDH <>'''') THEN CLZL_LS.JHDH');
    sql.add('             else CLZL.cldh  end ColorCLDH  ');
    sql.add('        From CLZL ');
    sql.add('        left join(select CLDH,JHDH from  CLZL_LS UNION ALL select JHDH as CLDH,CLDH as JHDH from  CLZL_LS)CLZL_LS on CLZL_LS.CLDH=CLZL.cldh ');
    sql.add('        left join cgzl_color2 on cgzl_color2.CLBH=CLZL.cldh');
    sql.add('        left join cgzl_color2 cgzl_color2_TEMP on cgzl_color2_TEMP.CLBH=CLZL_LS.JHDH');
    sql.add('    )ColorCLDH on ColorCLDH.cldh=CGZLS.CLBH');
    sql.add('    left join cgzl_color on cgzl_color.cgno=cgzls.cgno and cgzl_color.clbh=ColorCLDH.ColorCLDH');
    sql.add('    left join cgzl_color2 on cgzl_color2.CLBH=ColorCLDH.ColorCLDH');         }

    //sql.Add('left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1,Invoice_Customs, qty, PurReceiveDate, CheckResult ');
    sql.Add('left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1,Invoice_Customs, qty, PurReceiveDate, CheckResult, MAX(DTMReceivedDate) as DTMReceivedDate ');

    sql.Add('           from CGZLInvoiceS GROUP BY CGNO,CLBH,Invoice_Customs, qty, PurReceiveDate, CheckResult ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
    sql.add('left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
    //20150314 修改加快查詢
    sql.add('left join KCRKS RKACC  on RKACC.DOCNO=cgzls.cgno and RKACC.clbh=cgzls.clbh ');
    /// loc SR#----------------------------------------------------
    sql.add('inner join CGZLSS on CGZL.CGNO=CGZLSs.CGNO and cgzlss.CLBH = CGZLS.CLBH  ');
    sql.add('Left join YPZL on YPZL.YPDH=CGZLSS.ZLBH   Left join KFXXZL  on KFXXZL.SheHao=YPZL.SheHao  and KFXXZL.XieXing=YPZL.XieXing ');
    sql.Add('Left join xxzlkf  on  KFXXZL.XieXing=xxzlkf.XieXing and KFXXZL.SheHao=xxzlkf.SheHao ');

    sql.Add('left join (');
    sql.add('  select Season, Stage, MAX(Material_ETA) AS Material_ETA from GamePlan');
    sql.add('  GROUP BY Season,Stage');
    sql.add(') AS GamePlan on CGZL.Season=GamePlan.Season and CGZL.PURPOSE=GamePlan.Stage');

    sql.add('left join ( ');
    sql.add('select cs.cgno,cs.clbh ,(select zlbh+''/'' from CGZLSS where cgno=cs.cgno and clbh=cs.clbh FOR XML PATH (''''))as sampleorder ');
    sql.add('from CGZLSS cs group by cs.cgno,cs.clbh ');
    sql.add(')cgzlssampleorder on cgzlssampleorder.CGNO=CGZLS.cgno and cgzlssampleorder.CLBH=CGZLS.CLBH ');
    SQL.Add('left join R1Sample on  R1Sample.Xiexing = KFXXZL.XieXing and R1Sample.Shehao = KFXXZL.Shehao  ');
    SQL.Add('left join R3Sample on  R3Sample.Xiexing = KFXXZL.XieXing and R3Sample.Shehao = KFXXZL.Shehao  ');
    SQL.Add('left join R2Sample on  R2Sample.Xiexing = KFXXZL.XieXing and R2Sample.Shehao = KFXXZL.Shehao  ');

    sql.add('where CGZL.CGDATE>''2011/01/01''  ');
    sql.add('and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    //20150324 修改顯示 CGZLS=0
    if chk_CGQty.Checked then
       sql.add('and CGZLS.Qty>0 ');
    if ComboBox14.Text <> '' then
       sql.Add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
    if ComboBox2.Text <> '' then
       sql.Add('and YPZL.ProductionLocation like '''+ComboBox2.Text+'%''');
    if Check.Checked then
       sql.Add('and CGZL.USERID='+''''+main.Edit1.Text+'''');
    if edit1.Text<>'' then
       sql.add('and CGZLS.CGNO like '''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
       sql.add('and CGZL.ZSBH like '''+edit2.Text+'%'+'''');
    if edit3.Text<>'' then
       sql.add('and ZSZL.ZSYWJC like '''+'%'+edit3.Text+'%'+'''');
    if Edit4.Text<>'' then
       sql.add('and CGZL.Season like '''+Edit4.Text+'%'+'''');
    if Edit5.Text<>'' then
       sql.add('and CGZL.Purpose like '''+Edit5.Text+'%'+'''');
    if Edit9.Text<>'' then
       sql.add('  and CLZL.YWPM like'+''''+'%'+Edit9.text+'%'+'''');
    if Edit10.Text<>'' then
       sql.add('  and CLZL.YWPM like'+''''+'%'+Edit10.text+'%'+'''');
    if Edit11.Text<>'' then
       sql.add('  and CLZL.YWPM like'+''''+'%'+Edit11.text+'%'+'''');
    if Cb_DevTP.Text<>'' then
       sql.Add('  and KFXXZL.Devtype like ''%'+Cb_DevTP.Text+'%'' ');
    // Loc SR#
    if Edit12.Text<>'' then
       sql.add(' and  kfxxzl.DEVCODE like'+''''+'%'+Edit12.text+'%'+'''');
    if (CheckBox1.Checked)  and (length(edt1.Text)=0) then
       begin
        if ComboBox1.ItemIndex = 0 then
          begin
            sql.add('and convert(smalldatetime,convert(varchar,CGZL.cgdate,111)) between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end
        else if ComboBox1.ItemIndex = 1 then
          begin
            sql.add('and convert(smalldatetime,convert(varchar,CGZLS.ReturnDate,111)) between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end
        else if ComboBox1.ItemIndex = 2 then
          begin
            sql.add('  and convert(smalldatetime, convert(varchar, CGZLInvoiceS_1.PurReceiveDate, 111)) between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end;
       end;
    if (Chk_ETD.Checked)  then
       sql.add(' and CGZLS.CFMdate is null');
    if NoinvoiceETA.Checked then
       sql.add(' and CGZLInvoice_1.ETA is null');
    if (Chk_Confirm.Checked)  then
       sql.add(' and isnull(MaterialNG.NG_Reason,'''')='''' ');
    if length(edt1.Text) > 0  then    //invoice
       begin
         sql.add(' and exists (select CGZLInvoice.* from CGZLInvoice,CGZLInvoiceS where CGZLInvoiceS.CINO=CGZLInvoice.CINO and CGZLInvoiceS.CGNO=CGZLS.CGNO  ');
         sql.add(' and CGZLInvoice.Invoice like '''+edt1.Text+'%'+''')');
       end;
    if Chk_PDT.Checked then
       sql.add(' and isnull(CGZL.PURPOSE,'''')<>''PDT''  ');
    if length(Edit6.Text) > 0  then
       sql.add(' and CGZLS.CLBH like '''+Edit6.Text+'%'+''' ');
    if Chk_NG.Checked then
       sql.add(' and MaterialNG.NG_ETD is not null');
    if PurReDate.Checked then
       sql.add(' and CGZLInvoiceS_1.PurReceiveDate is null');
    //if CB_PRD.Checked then
    //  sql.add('  and convert(smalldatetime, convert(varchar, CGZLInvoiceS_1.PurReceiveDate, 111)) between ''' + FormatDateTime('yyyy/MM/dd', DTP3.Date) + ''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP4.Date) + '''');

    //-----------------add more Thoai May.06------------------------------------
    if length(Edit7.Text) > 0  then
        sql.add(' and CGZLInvoiceS_1.Invoice_Customs like '''+Edit7.Text+'%'+'''');
    //--------------------------------------------------------------------------
    //20201026 增加多品牌查詢
    if BrandCombo.Text<>'' then
    begin
      SQL.Add('and  exists (');
      SQL.Add('   select CGZLSS.CGNO from CGZLSS,YPZL,KFXXZL ');
      SQL.Add('   where CGZL.CGNO=CGZLSS.CGNO and YPZL.YPDH=CGZLSS.ZLBH ');
      SQL.Add('         and  YPZL.XieXing=KFXXZL.XieXing ');
      SQL.Add('         and YPZL.SheHao=KFXXZL.SheHao ');
      SQL.Add('         and KFXXZL.KHDH='''+Copy(BrandCombo.Text,Pos('-',BrandCombo.Text)+1,length(BrandCombo.Text))+'''    ');
      SQL.Add('   Group by CGZLSS.CGNO)');
    end;
    sql.add('    and CGZL.CGLX=''6'' ');
    sql.add('group by CGZLS.CGNO,CGZLS.CLBH,CGZLInvoiceS_1.Invoice_Customs, CGZLInvoiceS_1.PurReceiveDate,CLZL_FLEX.CLDHFLEX');
    sql.add(',CGZLS.Qty,CGZLS.YQDate,CGZLS.CFMDate');
    sql.add(',CGZLS.CFMDate,CGZLS.USERDate,CGZLS.USERID');
    sql.add(',CGZLS.Memo,CGZLS.USPrice,CGZLS.VNPrice,CGZLS.Article_All');
    sql.add(',ZSZL.ZSYWJC,CLZL.YWPM,clbzzl.bz,CLZL.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.CGDate,CGZL.ZSBH');
    sql.add(',MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reason');
    sql.add(',MaterialNG.NG_Reason,MaterialNG.NG_ETD,MaterialNG.NG_ETA');
    sql.add(',MaterialNG.Result,MaterialNG.NG_Date,MaterialNG.NG_Date');
    sql.add(',MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_window');
    sql.add(',MaterialNG.Remark,MaterialNG.File_Name,MaterialNG.File_Size,CGZLInvoice_1.ETA');
    sql.add(',isnull(CGZLInvoice_1.invoice,'''') ,RKACC.USPrice,RKACC.VNPrice,BUSERS.USERNAME');
    sql.add(',MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality');
    sql.add(',SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Size');
    {sql.add(',cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2.DateA4Comfirm');
    sql.add(',cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm');
    sql.add(',cgzl_color2.shippedDate,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signer,cgzl_color2.DCName');
    sql.add(',cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark,cgzls.ETA,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber, CGZLInvoiceS_1.Qty,CGZLS.CommitedETD,xxzlkf.RFCDeadlineDate'); }
    sql.add(',YPZL.ProductionLocation,cgzlssampleorder.sampleorder,cgzls.ETA,CGZLS.ReturnDate,CGZLS.ReturnQuantity,CGZLS.SerialNumber, CGZLInvoiceS_1.Qty,CGZLS.CommitedETD,xxzlkf.RFCDeadlineDate');
    sql.Add(',CGZLInvoiceS_1.CheckResult,CGZLS.DelayReason,kfxxzl.Devtype ');
    sql.Add(')A ');
    sql.add('left join (select cgno,CLBH,CGZL_color.visually,CGZL_color.spectro,CGZL_color.spectro_file');
    sql.add('     ,CGZL_color.result,CGZL_color.userdate,CGZL_color.userid,CGZL_color.remark from cgzl_color');
    sql.add('        UNION all');
    sql.add('     select cgno,CLZL_LS.CLDH as CLBH,CGZL_color.visually,CGZL_color.spectro,CGZL_color.spectro_file');
    sql.add('     ,CGZL_color.result,CGZL_color.userdate,CGZL_color.userid,CGZL_color.remark  from cgzl_color');
    sql.add('     left join CLZL_LS on CLZL_LS.JHDH=cgzl_color.CLBH');
    sql.add('        UNION all');
    sql.add('     select cgno,CLZL_LS.JHDH as CLBH,CGZL_color.visually,CGZL_color.spectro,CGZL_color.spectro_file');
    sql.add('     ,CGZL_color.result,CGZL_color.userdate,CGZL_color.userid,CGZL_color.remark from cgzl_color');
    sql.add('     left join CLZL_LS on  CLZL_LS.CLDH=cgzl_color.CLBH');
    sql.add('     ) cgzl_color on cgzl_color.CGNO=A.cgno and cgzl_color.CLBH=A.CLBH and  CGZL_color.visually is not null   ');
    sql.add('left join (select CLBH,cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2.DateA4Comfirm');
    sql.add('     ,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm');
    sql.add('     ,cgzl_color2.shippedDate,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signer');
    sql.add('     ,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate');
    sql.add('     ,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark from cgzl_color2');
    sql.add('        UNION all');
    sql.add('     Select CLZL_LS.CLDH as CLBH,cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2.DateA4Comfirm');
    sql.add('     ,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm');
    sql.add('     ,cgzl_color2.shippedDate,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signer');
    sql.add('     ,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate');
    sql.add('     ,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark from cgzl_color2');
    sql.add('     left join CLZL_LS on CLZL_LS.JHDH=cgzl_color2.CLBH ');
    sql.add('        UNION all');
    sql.add('     select CLZL_LS.JHDH as CLBH,cgzl_color2.A4Comfirm,cgzl_color2.trackingA4Comfirm,cgzl_color2.DateA4Comfirm');
    sql.add('     ,cgzl_color2.ColorWindow,cgzl_color2.DateColorWindow,cgzl_color2.PC_Confirm');
    sql.add('     ,cgzl_color2.shippedDate,cgzl_color2.AWB,cgzl_color2.signedDate,cgzl_color2.Signer');
    sql.add('     ,cgzl_color2.DCName,cgzl_color2.PRO,cgzl_color2.Senter,cgzl_color2.ExpireDate');
    sql.add('     ,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark from cgzl_color2');
    sql.add('     left join CLZL_LS on  CLZL_LS.CLDH=cgzl_color2.CLBH');
    sql.add('     ) cgzl_color2 on cgzl_color2.CLBH=A.CLBH and  cgzl_color2.A4Comfirm is not null');

    if Chk_NoDC.Checked then
       sql.add(' where (cgzl_color2.signedDate is not null and cgzl_color2.shippedDate is null)');
    sql.add('order by A.CGNO DESC');
    //sql.add('order by CGZLS.CGNO DESC');
    //funcobj.WriteErrorLog(sql.Text);
    //memo2.Lines:= sql;
    //showmessage(SQL.text);
    active:=true;
  end;
  panel2.Visible:=false;
  BB4.Enabled:=true;
  S4.Enabled:=true;
  S5.Enabled:=true;
  Qry_ETDHistory.active:=true;
  NGremark.active:=true;
end;

procedure TTraceSample.FormCreate(Sender: TObject);
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
  //20201026 增加品牌
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KFZL.KFDH,KFZL.KFJC ');
    sql.add('from KFZL_GS ');
    sql.add('Left join KFZL on KFZL_GS.KHBH=KFZL.KFDH ');
    sql.add('where KFZL_GS.GSBH='''+main.Edit2.Text+''' ');
    active:=true;
    BrandCombo.Clear;
    BrandCombo.Items.Add('');
    while not Eof do
    begin
      BrandCombo.Items.Add(FieldByName('KFJC').AsString+'-'+FieldByName('KFDH').AsString);
      Next;
    end;
    active:=false;
  end;
  if main.Edit2.Text = 'SKX' then
  begin
    Label18.Visible := true;
    ComboBox14.Visible := true;
  end;
  DTP1.Date:=date-3;
  DTP2.date:=date;
  ReadIni();
end;


procedure TTraceSample.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  STFilePath := '\\192.168.123.111\Purchasing\Color Specialist\SPETRO REPORTS';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      STFilePath:=MyIni.ReadString('Spectro','Purchase_N735_STFilePath','');
    finally
      MyIni.Free;
    end;
  end;
end;


procedure TTraceSample.BB4Click(Sender: TObject);
begin

  with CGDet do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  BB4.Enabled:=false;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  below.Visible:=true;
  DBGrid4.columns[13].ButtonStyle:=cbsAuto;
  DBGrid4.columns[17].ButtonStyle:=cbsAuto;
  DBGrid4.columns[22].ButtonStyle:=cbsAuto;
  DBGrid4.columns[23].ButtonStyle:=cbsAuto;
  DBGrid4.columns[38].ButtonStyle:=cbsAuto;
  DBGrid4.columns[36].ButtonStyle:=cbsAuto;
  DBGrid4.columns[37].ButtonStyle:=cbsAuto;
  DBGrid4.columns[40].ButtonStyle:=cbsAuto;
  DBGrid4.columns[49].ButtonStyle:=cbsAuto;
  DBGrid4.columns[52].ButtonStyle:=cbsAuto;
  S4.Enabled:=false;
  S5.Enabled:=false;
  S6.Enabled:=false;
  S7.Enabled:=false;

end;

procedure TTraceSample.BB5Click(Sender: TObject);
  Function ConductString(before:string):string;
  begin
    if Pos('''''',before)<=0 then
      if Pos('''',before)>0 then
         result:=StringReplace(before, '''', '''''',[rfReplaceAll, rfIgnoreCase])
      else
         result:=before
    else
      result:=before;
  end;
var i:integer;
    mdate : Tdate;
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

  try
    Qry_ETDHistory.active:=false;
    CGDet.first;
    for i:=1 to CGDet.RecordCount do
      begin
        if CGDet.updatestatus=usmodified then
          begin
            //處理ETD和單價資料
            //if (CGDet.FieldByName('USPrice').IsNull and CGDet.FieldByName('VNPrice').IsNull) then
            //  begin
            //    showmessage('The Price can not be empty.');
            //    abort;
            //  end;
            if (not CGDet.FieldByName('USPrice').IsNull) and (not CGDet.FieldByName('VNPrice').IsNull) then
              begin
                showmessage('Can not have two price.');
                abort;
              end;
            with query1 do
              begin
                active:=false;
                sql.Clear;
                if CGDet.fieldByName('CFMdate').AsString<>CGDet.fieldByName('old_CFMDate').AsString   then   //ETD
                begin
                  qry1.Active:=false  ;
                  qry1.SQL.Clear;
                  qry1.sql.add('select * from  CGZLSS ');
                  qry1.sql.add('where CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
                  qry1.sql.add('and CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
  //                qry1.sql.add('and CFMDate is null');
                  qry1.Active:=true;
                  while not qry1.Eof do
                   begin
                    qry2.Active:=false  ;
                    qry2.SQL.Clear;
                    qry2.sql.add('delete ETDTemp ');
                    qry2.sql.add('where CGNO='+''''+qry1.FieldByName('CGNO').Value+'''');
                    qry2.sql.add('and CLBH='+''''+qry1.FieldByName('CLBH').Value+'''');
                    qry2.sql.add('and ARTICLE='+''''+qry1.FieldByName('ZLBH').Value+'''');
                    qry2.sql.add('and GSBH ='''+main.Edit2.Text+''' ');
                    qry2.sql.add('and Ver =''9'' ');
                    qry2.execsql;
                    qry2.Active:=false  ;
                    qry2.SQL.Clear;
                    qry2.sql.add('update ETDTemp set ver=ver+1');
                    qry2.sql.add('where CGNO='+''''+qry1.FieldByName('CGNO').Value+'''');
                    qry2.sql.add('and CLBH='+''''+qry1.FieldByName('CLBH').Value+'''');
                    qry2.sql.add('and ARTICLE='+''''+qry1.FieldByName('ZLBH').Value+'''');
                    qry2.sql.add('and GSBH ='''+main.Edit2.Text+''' ');
                    qry2.ExecSQL;
                    qry2.SQL.Clear;
                    qry2.sql.add('insert ETDTemp Values');
                    qry2.sql.add('('''+qry1.FieldByName('CGNO').Value+''',');
                    qry2.sql.add(''''+qry1.FieldByName('CLBH').Value+''',');
                    qry2.sql.add(''''+qry1.FieldByName('ZLBH').Value+''',''0'',');
                    qry2.sql.add(''''+formatdatetime('yyyy/mm/dd',date)+''',');
                    qry2.sql.add(''''+main.edit1.text+''',');
                    qry2.sql.add(' '''+main.Edit2.Text+''',');
                    qry2.sql.add(''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('CFMdate').Value)+''')');
                    qry2.ExecSQL;
                    qry1.Next;
                   end;
                  sql.add('update CGZLSS set CFMDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('CFMdate').Value)+'''');
                  sql.add(',USERDate='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
                  sql.add(',USERID='+''''+CGDet.FieldByName('USERID').Value+'''');
                  sql.add('where CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
                  sql.add('and CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
                  execsql;
                end;
                sql.Clear;
                if cgdet.fieldByName('CFMdate').IsNull then
                  sql.add('update CGZLS set CFMDate=null')
                else
                  sql.add('update CGZLS set CFMDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('CFMdate').Value)+'''');
                sql.add(',memo = '''+ConductString(CGDet.FieldByName('Memo').AsString)+'''');
                if  CGDet.FieldByName('USPrice').AsString='' then
                    sql.add(',USPrice=NULL   ')
                  else
                    sql.add(',USPrice='+''''+CGDet.FieldByName('USPrice').AsString+'''');
                if  CGDet.FieldByName('VNPrice').AsString='' then
                    sql.add(',VNPrice=NULL  ')
                  ELSE
                    sql.add(',VNPrice='+''''+CGDet.FieldByName('VNPrice').AsString+'''');
                sql.add(',USERDate='+''''+formatdatetime('yyyy/mm/dd',date)+'''');
                sql.add(',USERID='+''''+CGDet.FieldByName('USERID').Value+'''');
                if cgdet.fieldByName('ETA').IsNull then
                  sql.add(',ETA=null')
                else
                  sql.add(',ETA='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('ETA').Value)+'''');
                if cgdet.fieldByName('ReturnDate').IsNull then
                  sql.add(',ReturnDate=null')
                else
                  sql.add(',ReturnDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('ReturnDate').Value)+'''');
                if cgdet.fieldByName('ReturnQuantity').IsNull then
                  sql.add(',ReturnQuantity=null')
                else
                  sql.add(',ReturnQuantity='+''''+CGDet.FieldByName('ReturnQuantity').AsString+'''');
                if cgdet.fieldByName('SerialNumber').IsNull then
                  sql.add(',SerialNumber=null')
                else
                  sql.add(',SerialNumber='+''''+CGDet.FieldByName('SerialNumber').AsString+'''');
                if cgdet.fieldByName('CommitedETD').IsNull then
                  sql.add(',CommitedETD=null')
                else
                  sql.add(',CommitedETD='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('CommitedETD').Value)+'''');
                if cgdet.fieldByName('DelayReason').IsNull then
                  sql.add(',DelayReason=null')
                else
                  sql.add(',DelayReason='+''''+CGDet.FieldByName('DelayReason').AsString+'''');
                sql.add('where CGNO='+''''+CGDet.FieldByName('CGNO').Value+'''');
                sql.add('and CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
                execsql;
                close;
              end;

             //處理NG資料
              if (CGDet.fieldbyname('NG_Reason').AsString='')and (CGDet.fieldbyname('NG_ETD').AsString='')and (CGDet.fieldbyname('NG_ETA').AsString='')and (CGDet.fieldbyname('Result').AsString='') then
                begin
                  with qry1 do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' delete MaterialNG  ');
                    sql.Add(' where CLBH = '''+CGDet.fieldbyname('CLBH').AsString+'''');
                    sql.Add('     and CGNO='''+CGDet.fieldbyname('CGNO').AsString+'''');
                    sql.Add('     and NG_Date='''+CGDet.fieldbyname('old_NG_Date').AsString+'''');
                    execsql;
                  end;
                end
              else
                begin
                  with qry1 do
                  begin
                    active:=false;
                    sql.Clear;
                    sql.Add(' select * from MaterialNG where CLBH='''+CGDet.fieldbyname('CLBH').AsString+'''');
                    sql.Add('                            and CGNO='''+CGDet.fieldbyname('CGNO').AsString+'''');
  //                  sql.Add('                            and NG_Date='''+CGDet.fieldbyname('old_NG_Date').AsString+'''');
                    active:=true;
                    if eof then
                    begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' insert MaterialNG (CLBH,CGNO,NG_Date,NG_Reason,Result,REMARK,QC_Skin,Softness,MaterialNG.C_window, MaterialNG.Lab ,MaterialNG.Lab_reason ');
                      if not CGDet.fieldbyname('NG_ETD').IsNull then
                         sql.Add(',NG_ETD');
                      if not CGDet.fieldbyname('NG_ETA').IsNull then
                         sql.Add(',NG_ETA');
                      sql.Add(',USERDate,USERID) values (');
                      sql.Add(' '''+CGDet.fieldbyname('CLBH').AsString+'''');
                      sql.Add(','''+CGDet.fieldbyname('CGNO').AsString+'''');
                      sql.Add(','''+formatdatetime('yyyy/mm/dd hh:mm:ss',Ndate)+'''' ) ;//NG_DATE
                      sql.Add(','''+CGDet.fieldbyname('NG_Reason').AsString+'''');
                      sql.Add(','''+CGDet.fieldbyname('Result').AsString+'''');
                      sql.Add(','''+CGDet.fieldbyname('NG_REMARK').AsString+'''');
                      sql.Add(','''+CGDet.fieldbyname('QC_SKIN').AsString+'''');
                      sql.Add(','''+CGDet.fieldbyname('Softness').AsString+'''');
                      sql.Add(','''+CGDet.fieldbyname('C_window').AsString+'''');
                      sql.Add(','''+CGDet.fieldbyname('Lab').AsString+'''');
                      sql.Add(','''+CGDet.fieldbyname('Lab_reason').AsString+'''');
                      if not CGDet.fieldbyname('NG_ETD').IsNull then
                         sql.Add(','''+CGDet.fieldbyname('NG_ETD').AsString+'''');
                      if not CGDet.fieldbyname('NG_ETA').IsNull then
                         sql.Add(','''+CGDet.fieldbyname('NG_ETA').AsString+'''');
                      sql.add(' ,'''+formatdatetime('yyyy/mm/dd hh:mm:ss',Ndate)+'''');
                      sql.add(' ,'''+main.edit1.text+'''');
                      sql.Add(')');
                      execsql;

                    end
                    else
                    begin
                      active:=false;
                      sql.Clear;
                      sql.Add(' update MaterialNG set ');
                      if CGDet.fieldbyname('NG_ETD').IsNull then
                         sql.Add(' NG_ETD=null')
                         else
                         sql.Add(' NG_ETD='''+CGDet.fieldbyname('NG_ETD').AsString+'''');
                      if CGDet.fieldbyname('NG_ETA').IsNull then
                         sql.Add(' ,NG_ETA=null')
                         else
                         sql.Add(' ,NG_ETA='''+CGDet.fieldbyname('NG_ETA').AsString+'''');
                      //sql.Add(' ,NG_Date='''+CGDet.fieldbyname('NG_Date').AsString+'''');
                      IF  CGDet.fieldbyname('NG_Reason').AsString<>CGDet.fieldbyname('old_NG_Reason').AsString THEN
                          sql.Add(' ,NG_Date='''+formatdatetime('yyyy/mm/dd',Ndate)+'''');
                      sql.Add(' ,NG_Reason='''+CGDet.fieldbyname('NG_Reason').AsString+'''');
                      sql.Add(' ,Result='''+CGDet.fieldbyname('Result').AsString+'''');
                      sql.Add(' ,REMARK='''+CGDet.fieldbyname('NG_REMARK').AsString+'''');
                      sql.Add(' ,QC_SKIN='''+CGDet.fieldbyname('QC_SKIN').AsString+'''');
                      sql.Add(' ,Softness='''+CGDet.fieldbyname('Softness').AsString+'''');
                      sql.Add(' ,C_window='''+CGDet.fieldbyname('C_window').AsString+'''');
                      sql.Add(' ,Lab='''+CGDet.fieldbyname('Lab').AsString+'''');
                      sql.Add(' ,Lab_reason='''+CGDet.fieldbyname('Lab_reason').AsString+'''');
                      sql.add(' ,USERDate='+''''+formatdatetime('yyyy/mm/dd',Ndate)+'''');
                      sql.add(' ,USERID='+''''+main.edit1.text+'''');
                      sql.Add(' where CLBH = '''+CGDet.fieldbyname('CLBH').AsString+'''');
                      sql.Add('   and CGNO = '''+CGDet.fieldbyname('CGNO').AsString+'''');
                      mdate := CGDet.fieldbyname('old_NG_Date').Value;
                      sql.Add('   and NG_Date='''+formatdatetime('yyyy/mm/dd hh:mm:ss',mdate)+'''');
                      execsql;
                    end;
                  end;
                end;
             //處理海關號碼問題
             with qry1 do
             begin
               // 先判斷CGZLInvoices是否有資料
               active:=false;
               sql.Clear;
               sql.Add('select * from cgzlinvoices where cgno = '''+CGDet.fieldbyname('CGNO').AsString+'''');
               sql.Add(' and CLBH = ''' +CGDet.fieldbyname('CLBH').AsString + '''');
               active := true;
               // CGZLInvoices有資料更新
               if not eof then
               begin
                 active:=false;
                 sql.Clear;
                 sql.Add('update cgzlinvoices set Invoice_Customs  = ''' +CGDet.fieldbyname('Invoice_Customs').AsString+'''');
                 sql.Add('where cgno = '''+CGDet.fieldbyname('CGNO').AsString+'''');
                 sql.Add(' and CLBH = ''' +CGDet.fieldbyname('CLBH').AsString + '''');
                 execsql;
               end;

               // 先判斷cgzl_color2是否有資料
               active:=false;
               sql.Clear;
               sql.Add('select * from cgzl_color2 where CLBH = ''' +CGDet.fieldbyname('CLBH').AsString + '''');
               active := true;
               if recordcount > 0 then
               begin
                 sql.add('update cgzl_color2 set');
                 if CGDet.FieldByName('shippedDate').Value <> null then
                   sql.add('shippedDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('shippedDate').Value)+'''')
                 else
                   sql.add('shippedDate=null');
                 if CGDet.FieldByName('shippedDate').Value = null then
                   sql.add(',AWB=''''')
                 else
                   sql.add(',AWB='+''''+CGDet.FieldByName('AWB').AsString+'''');
                 sql.add('where CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
                 execsql;
               end
               else begin
                 sql.Add(' insert into cgzl_color2 (clbh,shippedDate,AWB) values (');
                 sql.Add(' '''+CGDet.FieldByName('CLBH').Value+'''');
                 if CGDet.FieldByName('shippedDate').Value <> null then
                   sql.Add(','''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('shippedDate').Value)+'''')
                 else
                   sql.Add(',null');
                 sql.Add(','''+CGDet.fieldbyname('AWB').AsString+'''');
                 sql.Add(')');
                 execsql;
               end;
               qry2.Active := false;
               qry2.SQL.Text := 'Select JHDH from CLZL_LS where CLDH = '''+CGDet.fieldbyname('CLBH').AsString+'''';
               qry2.Active := true;
               if qry2.RecordCount > 0 then begin
               // 先判斷cgzl_color2是否有資料
                 active:=false;
                 sql.Clear;
                 sql.Add('select * from cgzl_color2 where CLBH = ''' +qry2.fieldbyname('JHDH').AsString + '''');
                 active := true;
                 if recordcount > 0 then
                 begin
                   sql.add('update cgzl_color2 set');
                   if CGDet.FieldByName('shippedDate').Value <> null then
                     sql.add('shippedDate='+''''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('shippedDate').Value)+'''')
                   else
                     sql.add('shippedDate=null');
                   if CGDet.FieldByName('shippedDate').Value = null then
                     sql.add(',AWB=''''')
                   else
                     sql.add(',AWB='+''''+CGDet.FieldByName('AWB').AsString+'''');
                   sql.add('where CLBH='+''''+qry2.FieldByName('JHDH').Value+'''');
                   execsql;
                 end
                 else begin
                   sql.Add(' insert into cgzl_color2 (clbh,shippedDate,AWB) values (');
                   sql.Add(' '''+qry2.FieldByName('JHDH').Value+'''');
                   if CGDet.FieldByName('shippedDate').Value <> null then
                     sql.Add(','''+formatdatetime('yyyy/mm/dd',CGDet.FieldByName('shippedDate').Value)+'''')
                   else
                     sql.Add(',null');
                   sql.Add(','''+CGDet.fieldbyname('AWB').AsString+'''');
                   sql.Add(')');
                   execsql;
                 end;
               end;
             end;
          end;
        CGDet.next;
      end;
    CGDet.active:=false;
    CGDet.cachedupdates:=false;
    CGDet.requestlive:=false;
    CGDet.active:=true;
    Qry_ETDHistory.active:=true;
    BB4.Enabled:=true;
    BB5.Enabled:=false;
    BB6.Enabled:=false;
    DBGrid4.columns[13].ButtonStyle:=cbsnone;
    DBGrid4.columns[17].ButtonStyle:=cbsnone;
    DBGrid4.columns[22].ButtonStyle:=cbsnone;
    DBGrid4.columns[23].ButtonStyle:=cbsnone;
    DBGrid4.columns[32].ButtonStyle:=cbsnone;
    DBGrid4.columns[30].ButtonStyle:=cbsnone;
    DBGrid4.columns[31].ButtonStyle:=cbsnone;
    DBGrid4.columns[52].ButtonStyle:=cbsnone;
    S4.Enabled:=true;
    S5.Enabled:=true;
    S6.Enabled:=true;
    S7.Enabled:=true;

  except
      Messagedlg('Have wrong, can not save data!',mtwarning,[mbyes],0);
  end;
end;

procedure TTraceSample.BB6Click(Sender: TObject);
begin
with CGDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  BB4.Enabled:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  DBGrid4.columns[13].ButtonStyle:=cbsnone;
  DBGrid4.columns[17].ButtonStyle:=cbsnone;
  DBGrid4.columns[22].ButtonStyle:=cbsnone;
  DBGrid4.columns[23].ButtonStyle:=cbsnone;
  DBGrid4.columns[32].ButtonStyle:=cbsnone;
  DBGrid4.columns[30].ButtonStyle:=cbsnone;
  DBGrid4.columns[31].ButtonStyle:=cbsnone;
  DBGrid4.columns[52].ButtonStyle:=cbsnone;
  S4.Enabled:=true;
  S5.Enabled:=true;
  S6.Enabled:=true;
  S7.Enabled:=true;

end;

procedure TTraceSample.BBT1Click(Sender: TObject);
begin
CGDet.first;
end;

procedure TTraceSample.BBT2Click(Sender: TObject);
begin
  CGDet.prior;
end;

procedure TTraceSample.BBT3Click(Sender: TObject);
begin
  CGDet.next;
end;

procedure TTraceSample.BBT4Click(Sender: TObject);
begin
  CGDet.last;
end;

procedure TTraceSample.BB7Click(Sender: TObject);
begin
  close;
end;

procedure TTraceSample.CGDetAfterOpen(DataSet: TDataSet);
begin
  BB4.Enabled:=true;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
end;

procedure TTraceSample.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit2.SetFocus;
end;

procedure TTraceSample.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    edit3.SetFocus;
end;

procedure TTraceSample.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    button1click(nil);
end;

procedure TTraceSample.FormDestroy(Sender: TObject);
begin
  TraceSample:=nil;
end;

procedure TTraceSample.DefaultExcel();
var eclApp,WorkBook:olevariant;
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
          for   i:=0   to   DBGrid4.Columns.Count-1   do
            begin
                eclApp.Cells(1,i+1):=DBGrid4.Columns[i].Title.Caption;
            end;

          CGDet.First;
          j:=2;
          while   not   CGDet.Eof   do
            begin
              for   i:=0   to  DBGrid4.Columns.Count-1  do
              begin
                eclApp.Cells(j,i+1):=DBGrid4.Fields[i].Value;
              end;
            CGDet.Next;
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
procedure TTraceSample.SaveFileExcel();
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  tdbgh := DBGrid4;
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
        SaveDBGridEhToExportFile(ExpClass,tdbgh,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
end;
procedure TTraceSample.BitBtn1Click(Sender: TObject);
begin
if MaterialNG<>nil then
  begin
    MaterialNG.show;
    MaterialNG.windowstate:=wsmaximized;
  end
  else
    begin
      MaterialNG:=TMaterialNG.create(self);
      MaterialNG.show;
    end;
end;

procedure TTraceSample.S4Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with Query1 do
            begin
              active:=false;
              sql.Clear;
              SQL.Add('update MaterialNG set zipReport=:zipReport,file_name=:file_Name,file_Size=:file_Size,userid=:userid,userdate=:userdate ');//進行插入操作
              sql.Add(' where CLBH = '''+CGDet.fieldbyname('CLBH').AsString+'''');
              sql.Add('   and CGNO = '''+CGDet.fieldbyname('CGNO').AsString+'''');
              sql.Add('   and NG_Date='''+CGDet.fieldbyname('NG_Date').AsString+'''');
              ParamByName('zipReport').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('file_name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('file_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('userID').Value:=main.edit1.text;
              ParamByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              //button1.OnClick(Sender);
              CGDet.active:=false;
              CGDet.active:=TRUE;
            end;
         finally
            SM.Free;
         end;
      end;

end;

procedure TTraceSample.S5Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not CGDet.FieldByName('File_Name').IsNull then
  begin
    savedialog1.FileName :=  CGDet.FieldByName('File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with Query1 do
          begin
           active:=false;
           sql.Clear;
           sql.add('select zipReport FROM MaterialNG ');
           sql.Add(' where CLBH = '''+CGDet.fieldbyname('CLBH').AsString+'''');
           sql.Add('   and CGNO = '''+CGDet.fieldbyname('CGNO').AsString+'''');
           sql.Add('   and NG_Date='''+CGDet.fieldbyname('NG_Date').AsString+'''');
           active:=true;
          end;
         blob := TBlobStream.Create((Query1.FieldByName('zipReport') as TBlobField), bmRead);
         blob.Seek(0, soFromBeginning);
         SM := TMemoryStream.Create;
         SM.CopyFrom(blob,blob.Size);
         DM := TMemoryStream.Create;
         try
            SM.Position := 0;
            UnCompressit(sm, dm);
            dm.Position := 0;
            dm.SaveToFile(SaveDialog1.FileName);
         finally
            SM.Free;
            DM.Free;
         end;
         if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
  end;

end;




procedure TTraceSample.ShowPrice1Click(Sender: TObject);
begin
{
  if not CGDet.Active then
     abort;

  if MaterialMOQ<>nil then
  begin
    MaterialMOQ.show;
    MaterialMOQ.windowstate:=wsmaximized;
  end
  else
    begin
      MaterialMOQ:=TMaterialMOQ.create(self);
      MaterialMOQ.show;
    end;

  MaterialMOQ.Edit1.Text:=CGDet.fieldbyname('SEASON').AsString;
  MaterialMOQ.Edit6.Text:=CGDet.fieldbyname('CLBH').AsString;
  MaterialMOQ.Edit5.Text:=CGDet.FieldByName('ZSBH').AsString;

  MaterialMOQ.Button1Click(nil);
}
end;

procedure TTraceSample.DBGrid4Columns11NotInList(Sender: TObject;
  NewText: String; var RecheckInList: Boolean);
begin
       showmessage('Pls select reason from list ');
       abort;
end;

procedure TTraceSample.S6Click(Sender: TObject);
var
   SM: TMemoryStream;
begin
   if OpenDialog1.Execute then
      begin
         SM := TMemoryStream.Create;
         try
            Sm.LoadFromFile(OpenDialog1.FileName);
            SM.Position := 0;
            Compressit(sm, clDefault);
            with Query1 do
            begin
              active:=false;
              sql.Clear;
              sql.Add(' select CLBH from SampleLeatherQC ');
              sql.Add('             where CLBH='''+CGDet.fieldbyname('CLBH').AsString+'''');
              sql.Add('                   and CGNO = '''+CGDet.fieldbyname('CGNO').AsString+'''');
              active:=true;
              if eof then
                 begin
                   active:=false;
                   sql.Clear;
                   sql.Add('insert into SampleLeatherQC (CLBH,CGNO) values ('''+CGDet.fieldbyname('CLBH').AsString+''','''+CGDet.fieldbyname('CGNO').AsString+''')');
                   ExecSQL;
                 end;
              active:=false;
              sql.Clear;
              SQL.Add('update SampleLeatherQC set zipReport=:zipReport,QC_file_name=:QC_file_Name,QC_file_Size=:QC_file_Size,userid=:userid,userdate=:userdate ');//進行插入操作
              sql.Add(' where CLBH = '''+CGDet.fieldbyname('CLBH').AsString+'''');
              sql.Add('   and CGNO = '''+CGDet.fieldbyname('CGNO').AsString+'''');
              ParamByName('zipReport').LoadFromStream(sm,ftBlob);//讀取保存的壓縮檔
              ParamByName('QC_file_name').Value:=extractfilename(OpenDialog1.FileName);
              ParamByName('QC_file_Size').Value:=strtoint(inttostr(sm.Size));
              ParamByName('userID').Value:=main.edit1.text;
              ParamByName('userdate').Value:=formatdatetime('yyyy/MM/dd',Ndate);
              ExecSQL;
              CGDet.active:=false;
              CGDet.active:=TRUE;
            end;
         finally
            SM.Free;
         end;
      end;


end;

procedure TTraceSample.S7Click(Sender: TObject);
var
  blob: TBlobStream;
  SM,DM: TMemoryStream;
begin
  if not CGDet.FieldByName('QC_File_Name').IsNull then
  begin
    savedialog1.FileName :=  CGDet.FieldByName('QC_File_Name').AsString;
    if SaveDialog1.Execute then
      begin
        with Query1 do
          begin
           active:=false;
           sql.Clear;
           sql.add('select zipReport FROM SampleLeatherQC ');
           sql.Add(' where CLBH = '''+CGDet.fieldbyname('CLBH').AsString+'''');
           sql.Add('   and CGNO = '''+CGDet.fieldbyname('CGNO').AsString+'''');
           active:=true;
          end;
         blob := TBlobStream.Create((Query1.FieldByName('zipReport') as TBlobField), bmRead);
         blob.Seek(0, soFromBeginning);
         SM := TMemoryStream.Create;
         SM.CopyFrom(blob,blob.Size);
         DM := TMemoryStream.Create;
         try
            SM.Position := 0;
            UnCompressit(sm, dm);
            dm.Position := 0;
            dm.SaveToFile(SaveDialog1.FileName);
         finally
            SM.Free;
            DM.Free;
         end;
         if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
            shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
  end;

end;

procedure TTraceSample.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
      ETD_ALL:string;
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
        eclApp.Rows[1].WrapText  := True;//自動換列
      {  eclApp.Columns[1].ColumnWidth := 6; //設定欄寬
        eclApp.Columns[2].ColumnWidth := 7; }
        eclApp.Cells(1,1):='Season';
        eclApp.Cells(1,2):='ProductionLocation';
        eclApp.Cells(1,3):='Stage';
        eclApp.Cells(1,4):='SampleOrder';
        eclApp.Cells(1,5):='DevType';
        eclApp.Cells(1,6):='PO NO';
        eclApp.Cells(1,7):='Pur Order Date';
        eclApp.Cells(1,8):='Material Name';
        eclApp.Cells(1,9):='Flex Code';
        eclApp.Cells(1,10):='Mat Remark';
        eclApp.Cells(1,11):='Qty';
        eclApp.Cells(1,12):='Unit';
        eclApp.Cells(1,13):='Request Date';
        eclApp.Cells(1,14):='Order Memo';
        eclApp.Cells(1,15):='ETD';
        eclApp.Cells(1,16):='Actual ETD';
        eclApp.Cells(1,17):='DelayReason';
        eclApp.Cells(1,18):='Material_ETA';
        eclApp.Cells(1,19):='LateETA';
        eclApp.Cells(1,20):='Invoice ETA';
        eclApp.Cells(1,21):='Color Swatch Card Tracking Report|Visually Approved?';
        eclApp.Cells(1,22):='Color Swatch Card Tracking Report|Final Result';
        eclApp.Cells(1,23):='Color Swatch Card Tracking Report|USERDate';
        eclApp.Cells(1,24):='Color Swatch Card Tracking Report|Remark';
        eclApp.Cells(1,25):='Confirm Date';
        eclApp.Cells(1,26):='Confirm Quality Status';
        eclApp.Cells(1,27):='Confirm Color Status';
        eclApp.Cells(1,28):='Invoice';
        eclApp.Cells(1,29):='Supplier';
        eclApp.Cells(1,30):='Purchaser';
        eclApp.Cells(1,31):='Material No';
        eclApp.Cells(1,32):='UserID';
        eclApp.Cells(1,33):='UserDate';
        eclApp.Cells(1,34):='ETD record';
        eclApp.Cells(1,35):='Article_All';
        CGDet.First;
        j:=2;
        while   not   CGDet.Eof   do
          begin
            for   i:=0   to  CGDet.fieldcount-1  do
            begin
               eclApp.Cells(j,1):=CGDet.FieldByName('Season').value;
               eclApp.Cells(j,2):=CGDet.FieldByName('ProductionLocation').value;
               eclApp.Cells(j,3):=CGDet.FieldByName('PURPOSE').value;
               eclApp.Cells(j,4):=CGDet.FieldByName('sampleorder').value;
               eclApp.Cells(j,5):=CGDet.FieldByName('Devtype').Value;
               eclApp.Cells(j,6):=CGDet.FieldByName('CGNO').value;
               eclApp.Cells(j,7):=CGDet.FieldByName('CGDATE').value;
               eclApp.Cells(j,8):=CGDet.FieldByName('YWPM').value;
               eclApp.Cells(j,9):=CGDet.FieldByName('FlexCode').value;
               eclApp.Cells(j,10):=CGDet.FieldByName('matremark').value;
               eclApp.Cells(j,11):=CGDet.FieldByName('Qty').value;
               eclApp.Cells(j,12):=CGDet.FieldByName('DWBH').value;
               eclApp.Cells(j,13):=CGDet.FieldByName('YQDate').value;
               eclApp.Cells(j,14):=CGDet.FieldByName('Memo').value;
               eclApp.Cells(j,15):=CGDet.FieldByName('CFMDate').value;
               eclApp.Cells(j,16):=CGDet.FieldByName('CommitedETD').value;
               eclApp.Cells(j,17):=CGDet.FieldByName('DelayReason').value;
               eclApp.Cells(j,18):=CGDet.FieldByName('Material_ETA').value;
               eclApp.Cells(j,19):=CGDet.FieldByName('LateETA').value;
               eclApp.Cells(j,20):=CGDet.FieldByName('INV_ETA').value;
               eclApp.Cells(j,21):=CGDet.FieldByName('visually').value;
               eclApp.Cells(j,22):=CGDet.FieldByName('result_1').value;
               eclApp.Cells(j,23):=CGDet.FieldByName('USERDate_1').value;
               eclApp.Cells(j,24):=CGDet.FieldByName('remark').value;
               eclApp.Cells(j,25):=CGDet.FieldByName('USERDate_1').value;
               eclApp.Cells(j,26):=CGDet.FieldByName('NG_Date').value;
               eclApp.Cells(j,27):=CGDet.FieldByName('CheckResult').value;
               eclApp.Cells(j,28):=CGDet.FieldByName('Invoice').value;
               eclApp.Cells(j,29):=CGDet.FieldByName('ZSYWJC').value;
               eclApp.Cells(j,30):=CGDet.FieldByName('SamplePurchaser_Name').value;
               eclApp.Cells(j,31):=CGDet.FieldByName('CLBH').value;
               eclApp.Cells(j,32):=CGDet.FieldByName('userid').value;
               eclApp.Cells(j,33):=CGDet.FieldByName('USERDate').value;
               eclApp.Cells(j,35):=CGDet.FieldByName('article_all').value;
               Qry_ETDHistory.Active:=true;
               Qry_ETDHistory.First;
                  while  not Qry_ETDHistory.Eof do
                     begin
                        ETD_ALL:=ETD_ALL+'ETD:'+Qry_ETDHistory.FieldByName('ETD').AsString+''+Chr(10)+'';
                        Qry_ETDHistory.Next;
                    end;
                eclApp.Cells(j,34):=ETD_ALL;
                ETD_ALL:='';
            end;
          CGDet.Next;
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

procedure TTraceSample.bbt6Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Direct Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    DefaultExcel()
  else
    SaveFileExcel();
end;

procedure TTraceSample.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if CGDet.FieldByName('INV_ETA').value <> null then
  begin
    DBGrid4.canvas.font.color:=clBlack;
    DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
  end else
  begin
    if(CGDet.FieldByName('CommitedETD').value = null)  then
    begin
      if ((( CGDet.FieldByName('CFMDate').value - formatdatetime('YYYY/MM/DD',now) )>0 ) and (( CGDet.FieldByName('CFMDate').value - formatdatetime('YYYY/MM/DD',now) )<4)) then
        begin
          DBGrid4.canvas.font.color:=clred;
          DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
        end;
    end else if(CGDet.FieldByName('CFMDate').value = null)  then
    begin
      if((( CGDet.FieldByName('CommitedETD').value - formatdatetime('YYYY/MM/DD',now) ) > 0) and (( CGDet.FieldByName('CommitedETD').value - formatdatetime('YYYY/MM/DD',now) ) < 4)) then
          begin
            DBGrid4.canvas.font.color:=clred;
            DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
          end;
    end else
    begin
      if((( CGDet.FieldByName('CommitedETD').value - formatdatetime('YYYY/MM/DD',now) ) > 0) and (( CGDet.FieldByName('CommitedETD').value - formatdatetime('YYYY/MM/DD',now) ) < 4)) then
      begin
        if((( CGDet.FieldByName('CFMDate').value - formatdatetime('YYYY/MM/DD',now) )>0)  and (( CGDet.FieldByName('CFMDate').value - formatdatetime('YYYY/MM/DD',now) )<4)) then
        begin
          DBGrid4.canvas.font.color:=clred;
          DBGrid4.defaultdrawcolumncell(rect,datacol,column,state);
        end;
      end;
    end;
  end;
end;

procedure TTraceSample.CGDetCalcFields(DataSet: TDataSet);
  var Result: Integer;
begin
  if (CGDet.FieldByName('CFMDate').Value<>null) and (CGDet.FieldByName('Material_ETA').Value<>null) then
  begin
    Result:= CompareDate(CGDet.FieldByName('CFMDate').Value+5,CGDet.FieldByName('Material_ETA').Value);
    if (Result>0) then
      CGDet.FieldByName('LateETA').Value := 'Y'
    else
      CGDet.FieldByName('LateETA').Value := 'N';
  end else CGDet.FieldByName('LateETA').Value := 'N';
end;

procedure TTraceSample.DBGrid4CellClick(Column: TColumnEh);
var path:PChar;
begin
  if (DBGrid4.SelectedField.FieldName = 'spectro_file') and (not CGDet.FieldByName('spectro_file').isnull) then
  begin
    path:= pchar( STFilePath + string(CGDet.FieldByName('spectro_file').value) );
    if FileExists(Path)=true then
    ShellExecute(Handle, nil, path,  nil, nil, SW_SHOWNORMAL);   
    //showmessage(StrPas(path));
  end;

end;

procedure TTraceSample.Button3Click(Sender: TObject);
begin
  //Dat con tro ve dong dau tien de tinh cho chinh xac
  DBGrid4.DataSource.DataSet.First;

  //Cot E
  if Assigned(DBGrid4.DataSource.DataSet) then
  
  begin
    ColumnE_ExcelKPI_N762 := DBGrid4.DataSource.DataSet.RecordCount;
    SupplierKPI.Label11.Caption := IntToStr(ColumnE_ExcelKPI_N762);
    //showmessage(IntToStr(ColumnE_ExcelKPI_N762));
  end;

  //Cot F
  ColumnF_ExcelKPI_N762 := DBGrid4.DataSource.DataSet.RecordCount;
  ColumnF_DateDifference := 0;

  while not DBGrid4.DataSource.DataSet.EOF do
  begin
    if not DBGridEh1.DataSource.DataSet.FieldByName('UserDate').IsNull then
    begin
      ETDDate := DBGridEh1.DataSource.DataSet.FieldByName('UserDate').AsDateTime;
      PODate := DBGrid4.DataSource.DataSet.FieldByName('CGDate').AsDateTime;



      if Trunc(ETDDate) - Trunc(PODate) <= 3 then
        Inc(ColumnF_DateDifference);
      end;
      DBGrid4.DataSource.DataSet.Next;
    end;

    //ShowMessage(IntToStr(ColumnF_DateDifference));

    if ETDDate <> 0 then
      SupplierKPI.Label12.Caption := IntToStr(ColumnF_DateDifference)
    else
      SupplierKPI.Label12.Caption := '0';

    ShowMessage('Success');
end;

procedure TTraceSample.Button4Click(Sender: TObject);
begin
  //Dat con tro ve dong dau tien de tinh cho chinh xac
  DBGrid4.DataSource.DataSet.First;

  //Cot N
  if Assigned(DBGrid4.DataSource.DataSet) then
  begin
    ColumnN_ExcelKPI_N762 := DBGrid4.DataSource.DataSet.RecordCount;
    SupplierKPI.Label13.Caption := IntToStr(ColumnN_ExcelKPI_N762);
    //showmessage(IntToStr(ColumnN_ExcelKPI_N762));
  end;

  //Cot T
  ColumnT_ExcelKPI_N762 := 0;
  DBGrid4.DataSource.DataSet.First;
  if Assigned(DBGrid4.DataSource.DataSet) then
  begin
    while not DBGrid4.DataSource.DataSet.EOF do
    begin
      if (not DBGrid4.DataSource.DataSet.FieldByName('NG_Reason').IsNull or
          not DBGrid4.DataSource.DataSet.FieldByName('CheckResult').IsNull) and
         ((DBGrid4.DataSource.DataSet.FieldByName('CheckResult').AsString = 'NG') or
          (DBGrid4.DataSource.DataSet.FieldByName('CheckResult').AsString = 'ForThisStage')) then
      begin
        Inc(ColumnT_ExcelKPI_N762);
      end;
      DBGrid4.DataSource.DataSet.Next;
    end;

    SupplierKPI.Label14.Caption := IntToStr(ColumnT_ExcelKPI_N762);
    //ShowMessage('Count: ' + IntToStr(ColumnT_ExcelKPI_N762));
  end;

  //Cot V
  ColumnV_ExcelKPI_N762 := 0;
  DBGrid4.DataSource.DataSet.First;
  if Assigned(DBGrid4.DataSource.DataSet) then
  begin
    while not DBGrid4.DataSource.DataSet.EOF do
    begin
      if (DBGrid4.DataSource.DataSet.FieldByName('CheckResult').AsString = 'NG') then
      begin
        Inc(ColumnV_ExcelKPI_N762);
      end;
      DBGrid4.DataSource.DataSet.Next;
    end;

    SupplierKPI.Label15.Caption := IntToStr(ColumnV_ExcelKPI_N762);
    //ShowMessage('IsNGCount: ' + IntToStr(ColumnV_ExcelKPI_N762));
  end;

  //Cot X
  ColumnX_ExcelKPI_N762 := 0;
  DBGrid4.DataSource.DataSet.First;
  if Assigned(DBGrid4.DataSource.DataSet) then
  begin
    while not DBGrid4.DataSource.DataSet.EOF do
    begin
      if not DBGrid4.DataSource.DataSet.FieldByName('NG_Reason').IsNull then
      begin
        Inc(ColumnX_ExcelKPI_N762);
      end;
      DBGrid4.DataSource.DataSet.Next;
    end;

    SupplierKPI.Label16.Caption := IntToStr(ColumnX_ExcelKPI_N762);
    //ShowMessage('X: ' + IntToStr(ColumnX_ExcelKPI_N762));
  end;

  //Cot AC
  ColumnAC_ExcelKPI_N762 := 0;
  DBGrid4.DataSource.DataSet.First;
  if Assigned(DBGrid4.DataSource.DataSet) then
  begin
    DBGrid4.DataSource.DataSet.First;
    while not DBGrid4.DataSource.DataSet.EOF do
    begin
      if not DBGrid4.DataSource.DataSet.FieldByName('PurReceiveDate').IsNull then
      begin
        PurReceiveDate := DBGrid4.DataSource.DataSet.FieldByName('PurReceiveDate').AsDateTime;
        if not DBGrid4.DataSource.DataSet.FieldByName('Material_ETA').IsNull then
        begin
          Material_ETA := DBGrid4.DataSource.DataSet.FieldByName('Material_ETA').AsDateTime;
          if (PurReceiveDate <= Material_ETA) then      //Kiem tra PurReceiveDate <= Material_ETA thi cong don
            Inc(ColumnAC_ExcelKPI_N762);
        end
        else
          Inc(ColumnAC_ExcelKPI_N762); //Neu trong thi van cong don
      end;
      DBGrid4.DataSource.DataSet.Next;
    end;

    TotalColumnAC_ExcelKPI_N762 := (ColumnAC_ExcelKPI_N762 / ColumnN_ExcelKPI_N762) * 100;
    SupplierKPI.Label17.Caption := FloatToStr(TotalColumnAC_ExcelKPI_N762);
    //SupplierKPI.Label17.Caption := IntToStr(ColumnAC_ExcelKPI_N762);
    //ShowMessage('AC Count: ' + IntToStr(ColumnAC_ExcelKPI_N762));


    ShowMessage('Success');
  end;
end;

procedure TTraceSample.belowClick(Sender: TObject);
var i:integer;
begin
  CGDet.RequestLive:=true;
  CGDet.CachedUpdates:=true;
  for i:=1 to CGDet.RecordCount do
  begin
    with CGDet do
    begin
      CGDet.edit ;
      CGDet.FieldByName('CFMDate').Value:=formatdatetime('yyyy/MM/dd',DTP3.Date);
      CGDet.post;
      CGDet.next;
    end;
  end;
end;

end.
