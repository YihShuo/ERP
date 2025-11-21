unit TraceSample1;
                    
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,comobj,
  Dialogs, DB, DBTables, StdCtrls, DBCtrls, Grids, DBGrids, Mask, ComCtrls,DBGridEhImpExp, ShellAPI,Zlib,
  Buttons, ExtCtrls, GridsEh, DBGridEh, OleServer, ExcelXP, Menus;

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
    CGDetSamplePurchaser_Name: TStringField;
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
    DBGridEh1: TDBGridEh;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Label8: TLabel;
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
    procedure CGDetCalcFields(DataSet: TDataSet);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure bbt6Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure S4Click(Sender: TObject);
    procedure S5Click(Sender: TObject);
    procedure ShowPrice1Click(Sender: TObject);
    procedure DBGrid4Columns11NotInList(Sender: TObject; NewText: String;
      var RecheckInList: Boolean);
    procedure S6Click(Sender: TObject);
    procedure S7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TraceSample: TTraceSample;
  NDate:Tdate;

implementation

uses main1, MaterialNG1 , FunUnit ;

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
begin
with CGDet do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CGZLS.CGNO ');
    sql.add('       ,CGZLS.CLBH ');
    sql.add('       ,CGZLInvoiceS_1.Invoice_Customs ');
    sql.add('       ,CGZLS.Qty ');
    sql.add('       ,CGZLS.YQDate ');
    sql.add('       ,CGZLS.CFMDate ');
    sql.add('       ,CGZLS.CFMDate as old_CFMDate');
    sql.add('       ,CGZLS.USERDate ');
    sql.add('       ,CGZLS.USERID ');
    sql.add('       ,CGZLS.Memo ');
    sql.add('       ,CGZLS.USPrice ');
    sql.add('       ,CGZLS.VNPrice ');
    sql.add('       ,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.DWBH,CGZL.SEASON,CGZL.PURPOSE,CGZL.CGDate,CGZL.ZSBH');
    sql.add('       ,MaterialNG.NG_Reason,MaterialNG.Lab ,MaterialNG.Lab_reason ');
    sql.add('       ,MaterialNG.NG_Reason as old_NG_Reason');
    sql.add('       ,MaterialNG.NG_ETD');
    sql.add('       ,MaterialNG.NG_ETA');
    sql.add('       ,MaterialNG.Result');
    sql.add('       ,MaterialNG.NG_Date');
    sql.add('       ,MaterialNG.NG_Date as old_NG_Date');
    sql.add('       ,MaterialNG.QC_Skin,MaterialNG.Softness,MaterialNG.C_window ');
    sql.add('       ,MaterialNG.Remark AS NG_Remark,MaterialNG.File_Name,MaterialNG.File_Size,CGZLInvoice_1.ETA AS INV_ETA,isnull(CGZLInvoice_1.invoice,'''') as invoice ,RKACC.RKUSPrice,RKACC.RKVNPrice,BUSERS.USERNAME as SamplePurchaser_Name  ');
    sql.add('       ,MaterialMOQ.Skin_Size,MaterialMOQ.Skin_Quality  ');
    sql.add('       ,SampleLeatherQC.QC_File_Name ,SampleLeatherQC.QC_File_Size   ');
    sql.add('from CGZLS  ');
    sql.add('left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    sql.add('left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    sql.add('left join ZSZL on CGZL.ZSBH=ZSZL.ZSDH');
    sql.add('left join BUSERS on BUSERS.USERID=ZSZL.SamplePurchaser');
    sql.add('left join MaterialNG  on CGZLS.CLBH=MaterialNG.CLBH and CGZLS.CGNO=MaterialNG.CGNO ');
    sql.add('left join SampleLeatherQC  on CGZLS.CLBH=SampleLeatherQC.CLBH and CGZLS.CGNO=SampleLeatherQC.CGNO ');
    sql.add('left join MaterialMOQ  on CGZLS.CLBH=MaterialMOQ.CLBH and CGZL.SEASON=MaterialMOQ.Season   ');
    sql.Add('left join (select CGNO,CLBH,isnull(Min(CINO),''no invoice'') AS CINO_1,Invoice_Customs from CGZLInvoiceS GROUP BY CGNO,CLBH,Invoice_Customs ) CGZLInvoiceS_1 on CGZLS.CLBH=CGZLInvoiceS_1.CLBH and CGZLS.CGNO=CGZLInvoiceS_1.CGNO ');
    sql.add('left join CGZLInvoice CGZLInvoice_1  on CGZLInvoice_1.CINO=CGZLInvoiceS_1.CINO_1  ');
    sql.Add('left join (SELECT kcrks.clbh,kcrk.zsno,Max(KCRKS.USPrice) as RKUSPrice,Max(KCRKS.VNPrice) as RKVNPrice FROM kcrk,KCRKS WHERE CFMID<>''NO'' and kcrk.RKNO=KCRKS.RKNO group by kcrk.zsno,KCRKS.CLBH) RKACC on RKACC.zsno=cgzls.cgno and RKACC.clbh=cgzls.clbh ');
    sql.add('where LEFT(CGZLS.CLBH,1)<>''V'' AND CGZL.CGDATE>''2011/01/01'' and CGZLS.Qty>0 ');
    sql.add('and CGZL.GSBH='+''''+main.Edit2.Text+'''');
    if Check.Checked then
       sql.Add('and CGZL.USERID='+''''+main.Edit1.Text+'''');
    if edit1.Text<>'' then
       sql.add('and CGZLS.CGNO like '''+edit1.Text+'%'+'''');
    if edit2.Text<>'' then
       sql.add('and CGZL.ZSBH like '''+edit2.Text+'%'+'''');
    if edit3.Text<>'' then
       sql.add('and ZSZL.ZSYWJC like '''+'%'+edit3.Text+'%'+'''');
    if Edit4.Text<>'' then
       sql.add('and CGZL.Season like '''+'%'+Edit4.Text+'%'+'''');
    if Edit5.Text<>'' then
       sql.add('and CGZL.Purpose like '''+'%'+Edit5.Text+'%'+'''');
    if (CheckBox1.Checked)  and (length(edt1.Text)=0) then
       begin
         sql.add('and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111)) between ');
         sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
       end;
    if (Chk_ETD.Checked)  then
       sql.add(' and CFMdate is null');
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
       sql.add(' and CGZLS.CLBH like '''+Edit6.Text+'%'+'''');

    //-----------------add more Thoai May.06------------------------------------

    if length(Edit7.Text) > 0  then
        sql.add(' and CGZLInvoiceS_1.Invoice_Customs like '''+Edit7.Text+'%'+'''');

    //--------------------------------------------------------------------------

//    if Chk_NGPending.Checked then
//       sql.Add('   and isnull(MaterialNG.Result,'''')='''' AND MaterialNG.NG_Date IS NOT NULL  and ISNULL(MaterialNG.NG_Reason,'''')<>''OK'' ' );
    sql.add('    and CGZL.CGLX=''6'' ');
    sql.add('order by CGZLS.CGNO DESC');
    funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  panel2.Visible:=false;
  BB4.Enabled:=true;
  S4.Enabled:=true;
  S5.Enabled:=true;
  Qry_ETDHistory.active:=true;
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
DTP1.Date:=date-3;
DTP2.date:=date;
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
  DBGrid4.columns[8].ButtonStyle:=cbsAuto;
  DBGrid4.columns[11].ButtonStyle:=cbsAuto;
  DBGrid4.columns[12].ButtonStyle:=cbsAuto;
  DBGrid4.columns[13].ButtonStyle:=cbsAuto;
  DBGrid4.columns[20].ButtonStyle:=cbsAuto;
  DBGrid4.columns[18].ButtonStyle:=cbsAuto;
  DBGrid4.columns[19].ButtonStyle:=cbsAuto;
  S4.Enabled:=false;
  S5.Enabled:=false;
  S6.Enabled:=false;
  S7.Enabled:=false;

end;

procedure TTraceSample.BB5Click(Sender: TObject);
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
                  qry2.sql.add('and GSBH =''R&D'' ');
                  qry2.sql.add('and Ver =''9'' ');
                  qry2.execsql;
                  qry2.Active:=false  ;
                  qry2.SQL.Clear;
                  qry2.sql.add('update ETDTemp set ver=ver+1');
                  qry2.sql.add('where CGNO='+''''+qry1.FieldByName('CGNO').Value+'''');
                  qry2.sql.add('and CLBH='+''''+qry1.FieldByName('CLBH').Value+'''');
                  qry2.sql.add('and ARTICLE='+''''+qry1.FieldByName('ZLBH').Value+'''');
                  qry2.sql.add('and GSBH =''R&D'' ');
                  qry2.ExecSQL;
                  qry2.SQL.Clear;
                  qry2.sql.add('insert ETDTemp Values');
                  qry2.sql.add('('''+qry1.FieldByName('CGNO').Value+''',');
                  qry2.sql.add(''''+qry1.FieldByName('CLBH').Value+''',');
                  qry2.sql.add(''''+qry1.FieldByName('ZLBH').Value+''',''0'',');
                  qry2.sql.add(''''+formatdatetime('yyyy/mm/dd',date)+''',');
                  qry2.sql.add(''''+main.edit1.text+''',');
                  qry2.sql.add(' ''R&D'',');
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
              sql.add(',memo = '''+CGDet.FieldByName('Memo').AsString+'''');
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
  DBGrid4.columns[8].ButtonStyle:=cbsnone;
  DBGrid4.columns[11].ButtonStyle:=cbsnone;
  DBGrid4.columns[12].ButtonStyle:=cbsnone;
  DBGrid4.columns[13].ButtonStyle:=cbsnone;
  DBGrid4.columns[20].ButtonStyle:=cbsnone;
  DBGrid4.columns[18].ButtonStyle:=cbsnone;
  DBGrid4.columns[19].ButtonStyle:=cbsnone;
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
  DBGrid4.columns[8].ButtonStyle:=cbsnone;
  DBGrid4.columns[11].ButtonStyle:=cbsnone;
  DBGrid4.columns[12].ButtonStyle:=cbsnone;
  DBGrid4.columns[13].ButtonStyle:=cbsnone;
  DBGrid4.columns[20].ButtonStyle:=cbsnone;
  DBGrid4.columns[18].ButtonStyle:=cbsnone;
  DBGrid4.columns[19].ButtonStyle:=cbsnone;
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

procedure TTraceSample.CGDetCalcFields(DataSet: TDataSet);
begin
 {
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

  Qry_SamplePayment_Unit.Active:=false  ;
  Qry_SamplePayment_Unit.SQL.Clear;
  Qry_SamplePayment_Unit.sql.add('SELECT CR1_FreeQty as FreeQty,CR1_Charge as Charge from zszlSamplePayment ');
  Qry_SamplePayment_Unit.sql.add('where Season='+''''+CGDet.FieldByName('SEASON').AsString+'''');
  Qry_SamplePayment_Unit.sql.add('      and zsdh='+''''+CGDet.FieldByName('ZSBH').AsString+'''');
  Qry_SamplePayment_Unit.sql.add('      and Unit='+''''+CGDet.FieldByName('DWBH').AsString+'''');
  Qry_SamplePayment_Unit.Active:=true;


  Qry_zszlSamplePayment.Active:=false  ;
  Qry_zszlSamplePayment.SQL.Clear;
  if (CGDet.FieldByName('PURPOSE').Value='SEE')
      or (CGDet.FieldByName('PURPOSE').Value='TRIAL')
      or (CGDet.FieldByName('PURPOSE').Value='SMU')
      or (CGDet.FieldByName('PURPOSE').Value='SU2')
      or (CGDet.FieldByName('PURPOSE').Value='SU3')
      or (CGDet.FieldByName('PURPOSE').Value='SU4')
      or (CGDet.FieldByName('PURPOSE').Value='CR1')
      or (CGDet.FieldByName('PURPOSE').Value='CR2')
      or (CGDet.FieldByName('PURPOSE').Value='PSE')
      or (CGDet.FieldByName('PURPOSE').Value='SMS')
      or (CGDet.FieldByName('PURPOSE').Value='SM1')
      or (CGDet.FieldByName('PURPOSE').Value='SM2')
      or (CGDet.FieldByName('PURPOSE').Value='SM3')
      or (CGDet.FieldByName('PURPOSE').Value='SM4')
      or (CGDet.FieldByName('PURPOSE').Value='MCS')
      or (CGDet.FieldByName('PURPOSE').Value='FES')
      or (CGDet.FieldByName('PURPOSE').Value='PDT')
      then
     begin
       if (CGDet.FieldByName('PURPOSE').Value='SEE') OR (CGDet.FieldByName('PURPOSE').Value='TRIAL') then
          Qry_zszlSamplePayment.sql.add('select CR1_FreeQty as FreeQty,CR1_Charge as Charge ');
       if (CGDet.FieldByName('PURPOSE').Value='CR1') OR (CGDet.FieldByName('PURPOSE').Value='CR2') then
          Qry_zszlSamplePayment.sql.add('select CR2_FreeQty as FreeQty,CR2_Charge as Charge  ');
       if CGDet.FieldByName('PURPOSE').Value='PSE' then
          Qry_zszlSamplePayment.sql.add('select Presell_FreeQty as FreeQty,Presell_Charge as Charge  ');
       if (CGDet.FieldByName('PURPOSE').Value='SMS') OR (CGDet.FieldByName('PURPOSE').Value='SM1')OR (CGDet.FieldByName('PURPOSE').Value='SM2')OR (CGDet.FieldByName('PURPOSE').Value='SM3')OR (CGDet.FieldByName('PURPOSE').Value='SM4') then
          Qry_zszlSamplePayment.sql.add('select SMS_FreeQty as FreeQty,SMS_Charge as Charge  ');
       if CGDet.FieldByName('PURPOSE').Value='PDT' then
          Qry_zszlSamplePayment.sql.add('select PT_FreeQty as FreeQty,PT_Charge as Charge  ');
       if (CGDet.FieldByName('PURPOSE').Value='SMU')OR (CGDet.FieldByName('PURPOSE').Value='SU2')OR (CGDet.FieldByName('PURPOSE').Value='SU3')OR (CGDet.FieldByName('PURPOSE').Value='SU4')OR (CGDet.FieldByName('PURPOSE').Value='FES')OR (CGDet.FieldByName('PURPOSE').Value='MCS')then
          Qry_zszlSamplePayment.sql.add('select MCS_FreeQty as FreeQty,MCS_Charge as Charge  ');
       Qry_zszlSamplePayment.sql.add('from  zszlSamplePayment ');
       Qry_zszlSamplePayment.sql.add('where Season='+''''+CGDet.FieldByName('SEASON').AsString+'''');
       Qry_zszlSamplePayment.sql.add('      and zsdh='+''''+CGDet.FieldByName('ZSBH').AsString+'''');
       if Qry_SamplePayment_Unit.RecordCount>0 then
          Qry_zszlSamplePayment.sql.add('   and Unit='+''''+CGDet.FieldByName('DWBH').AsString+'''')
       else
          Qry_zszlSamplePayment.sql.add('   and Unit='''' ');

       Qry_zszlSamplePayment.Active:=true;
       Qry_zszlSamplePayment.first;
       if not Qry_zszlSamplePayment.eof then
          begin
            CGDet.FieldByName('FreeQty_').value:=Qry_zszlSamplePayment.FieldByName('FreeQty').value;
            CGDet.FieldByName('Charge_').value:=Qry_zszlSamplePayment.FieldByName('Charge').value;
            if CGDet.FieldByName('Qty').value<=Qry_zszlSamplePayment.FieldByName('FreeQty').Value then
               begin
                 CGDet.FieldByName('USPrice_').value:=0;
               end;
            if CGDet.FieldByName('Qty').value>Qry_zszlSamplePayment.FieldByName('FreeQty').Value then
               begin
                 Qry_MaterialPrice.Active:=false  ;
                 Qry_MaterialPrice.SQL.Clear;
                 Qry_MaterialPrice.sql.add('select  top 1 SamplePrice,SamplePriceVN,EffectiveDate from  MaterialPrice ');
                 Qry_MaterialPrice.sql.add('where Season='+''''+CGDet.FieldByName('SEASON').Value+'''');
                 Qry_MaterialPrice.sql.add('      and ZSBH='+''''+CGDet.FieldByName('ZSBH').Value+'''');
                 Qry_MaterialPrice.sql.add('      and CLBH='+''''+CGDet.FieldByName('CLBH').Value+'''');
                 Qry_MaterialPrice.sql.add('      and EffectiveDate<='+''''+CGDet.FieldByName('CGDate').AsString+'''');
                 Qry_MaterialPrice.sql.add('    order by EffectiveDate desc ');
                 Qry_MaterialPrice.Active:=true;
                 //showmessage('CGDet'+Qry_MaterialPrice.FieldByName('EffectiveDate').AsString+' ');
                 Qry_MaterialPrice.first;
                 CGDet.FieldByName('Q_USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value ;
                 CGDet.FieldByName('Q_VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value ;
                 CGDet.FieldByName('USPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePrice').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100) ;
                 CGDet.FieldByName('VNPrice_').value:=Qry_MaterialPrice.FieldByName('SamplePriceVN').value*(Qry_zszlSamplePayment.FieldByName('Charge').Value/100) ;
               end;
          end;
       end;
  }

end;

procedure TTraceSample.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
//  if (CGDet.Fieldbyname('USPrice').AsString>CGDet.Fieldbyname('USPrice_').AsString) AND (NOT CGDet.Fieldbyname('USPrice_').ISNULL) AND (NOT CGDet.Fieldbyname('USPrice').ISNULL) then
//     DBGrid4.canvas.font.color:=clRed;
//  DBGrid4.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TTraceSample.bbt6Click(Sender: TObject);
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

end.
