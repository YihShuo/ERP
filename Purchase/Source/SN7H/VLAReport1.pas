unit VLAReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, GridsEh, DBGridEh, StdCtrls, ComCtrls, Buttons,
  ExtCtrls,IniFiles,ShellApi,DateUtils;

type
  TVLAReport = class(TForm)
    Panel1: TPanel;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    below: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lbl1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    Edit3: TEdit;
    edt1: TEdit;
    Edit4: TEdit;
    Check: TCheckBox;
    Edit5: TEdit;
    CheckBox1: TCheckBox;
    Edit6: TEdit;
    Edit7: TEdit;
    BrandCombo: TComboBox;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    ComboBox14: TComboBox;
    ComboBox1: TComboBox;
    Edit12: TEdit;
    Cb_DevTP: TComboBox;
    CheckBox2: TCheckBox;
    DBGrid4: TDBGridEh;
    Query1: TQuery;
    DS4: TDataSource;
    QryVLA: TQuery;
    QryVLASEASON: TStringField;
    QryVLAPURPOSE: TStringField;
    QryVLACGNO: TStringField;
    QryVLACGDate: TDateTimeField;
    QryVLACLBH: TStringField;
    QryVLAYWPM: TStringField;
    QryVLAMatRemark: TStringField;
    QryVLAQty: TCurrencyField;
    QryVLADWBH: TStringField;
    QryVLAYQDate: TDateTimeField;
    QryVLAMemo: TStringField;
    QryVLACFMDate: TDateTimeField;
    QryVLAArticle_All: TStringField;
    QryVLAUSERDate: TDateTimeField;
    QryVLAUSERID: TStringField;
    QryVLAInvoice: TStringField;
    QryVLAACCUS: TCurrencyField;
    QryVLAACCVN: TCurrencyField;
    QryVLAUSPrice: TCurrencyField;
    QryVLAVNPrice: TCurrencyField;
    QryVLAUSPrice_: TCurrencyField;
    QryVLAVNPrice_: TCurrencyField;
    QryVLAQ_USPrice_: TCurrencyField;
    QryVLAQ_VNPrice_: TCurrencyField;
    QryVLAFreeQty_: TCurrencyField;
    QryVLACharge_: TCurrencyField;
    QryVLAZSYWJC: TStringField;
    QryVLAZSBH: TStringField;
    QryVLANG_Reason: TStringField;
    QryVLANG_ETD: TDateTimeField;
    QryVLANG_ETA: TDateTimeField;
    QryVLAResult: TStringField;
    QryVLAFile_Name: TStringField;
    QryVLAFile_Size: TFloatField;
    QryVLAINV_ETA: TDateTimeField;
    QryVLANG_Remark: TStringField;
    QryVLANG_Date: TDateTimeField;
    QryVLARKUSPrice: TCurrencyField;
    QryVLARKVNPrice: TCurrencyField;
    QryVLAold_NG_Date: TDateTimeField;
    QryVLAold_NG_Reason: TStringField;
    QryVLAold_CFMDate: TDateTimeField;
    QryVLAQC_skin: TCurrencyField;
    QryVLASkin_Size: TCurrencyField;
    QryVLASkin_Quality: TCurrencyField;
    QryVLAQC_File_Name: TStringField;
    QryVLAQC_File_Size: TFloatField;
    QryVLAC_window: TStringField;
    QryVLALab: TStringField;
    QryVLALab_reason: TStringField;
    QryVLAInvoice_Customs: TStringField;
    QryVLASoftness: TStringField;
    QryVLAvisually: TStringField;
    QryVLAspectro: TStringField;
    QryVLAspectro_file: TStringField;
    QryVLAresult_1: TStringField;
    QryVLASamplePurchaser_Name: TStringField;
    QryVLAUSERDate_1: TDateTimeField;
    QryVLAremark: TStringField;
    QryVLAA4Comfirm: TStringField;
    QryVLAtrackingA4Comfirm: TStringField;
    QryVLADateA4Comfirm: TDateTimeField;
    QryVLAColorWindow: TStringField;
    QryVLADateColorWindow: TDateTimeField;
    QryVLAPC_Confirm: TStringField;
    QryVLAshippedDate: TDateTimeField;
    QryVLAsignedDate: TDateTimeField;
    QryVLASigner: TStringField;
    QryVLADCName: TStringField;
    QryVLAPRO: TStringField;
    QryVLASenter: TStringField;
    QryVLAExpireDate: TDateTimeField;
    QryVLASharedDC: TStringField;
    QryVLAUpdater: TStringField;
    QryVLAcolor2remark: TStringField;
    QryVLAAWB: TStringField;
    QryVLAETA: TDateTimeField;
    QryVLAReturnDate: TDateTimeField;
    QryVLAReturnQuantity: TCurrencyField;
    QryVLASerialNumber: TStringField;
    QryVLAQty_not: TFloatField;
    QryVLACommitedETD: TDateTimeField;
    QryVLAMaterial_ETA: TDateTimeField;
    QryVLALateETA: TStringField;
    QryVLAProductionLocation: TStringField;
    QryVLAsampleorder: TStringField;
    QryVLAFlexCode: TStringField;
    QryVLAPurReceiveDate: TDateTimeField;
    QryVLARFCDeadlineDate: TDateTimeField;
    QryVLACheckResult: TStringField;
    QryVLADelayReason: TStringField;
    QryVLADevtype: TStringField;
    DTMReceivedDate: TDateTimeField;
    QryVLAVLAReportUserID: TStringField;
    QryVLAVLAReportUserDate: TDateTimeField;
    QryVLAReportDay: TDateTimeField;
    QryVLAYN: TStringField;
    QryVLATestReportFile: TStringField;
    QryVLAHaveReportDay: TStringField;
    UPVLA: TUpdateSQL;
    OpenDialog1: TOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BB6Click(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid4Columns16EditButtonDown(Sender: TObject;
      TopButton: Boolean; var AutoRepeat, Handled: Boolean);
    procedure BB3Click(Sender: TObject);
    procedure DBGrid4DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    DCTFilePath: string;
    { Private declarations }
  public
    procedure ReadIni();
    { Public declarations }
  end;

var
  VLAReport: TVLAReport;
  NDate:Tdate;
implementation

uses main1;

{$R *.dfm}

procedure TVLAReport.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TVLAReport.FormDestroy(Sender: TObject);
begin
  VLAReport:=nil;
end;

procedure TVLAReport.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  DCTFilePath := '\\192.168.123.111\bom\Purchasing\';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      DCTFilePath:=MyIni.ReadString('VLAReport','Purchase_N7H_VLAFilePath','\\192.168.123.111\bom\Purchasing\');
      //ShowMessage(DCTFilePath);
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TVLAReport.FormCreate(Sender: TObject);
begin
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

procedure TVLAReport.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TVLAReport.Button1Click(Sender: TObject);
 var CGZL_MinUserDate:string;
begin
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
  with QryVLA do
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
    sql.add('	   ,cgzl_color2.SharedDC,cgzl_color2.Updater,cgzl_color2.color2remark');
    sql.add('	   ,VLAReport.UserID as VLAReportUserID,VLAReport.USERDATE as VLAReportUserDate,VLAReport.ReportDay,VLAReport.TestReportFile,VLAReport.HaveReportDay,VLAReport.YN');
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
    if ComboBox14.Text <> '' then
       sql.Add('and YPZL.YPDH like '''+ComboBox14.Text+'%''');
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
    if length(edt1.Text) > 0  then    //invoice
       begin
         sql.add(' and exists (select CGZLInvoice.* from CGZLInvoice,CGZLInvoiceS where CGZLInvoiceS.CINO=CGZLInvoice.CINO and CGZLInvoiceS.CGNO=CGZLS.CGNO  ');
         sql.add(' and CGZLInvoice.Invoice like '''+edt1.Text+'%'+''')');
       end;
    if length(Edit6.Text) > 0  then
       sql.add(' and CGZLS.CLBH like '''+Edit6.Text+'%'+''' ');
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
    sql.add('     left join VLAReport on VLAReport.CGNO = A.CGNO and VLAReport.CLBH = A.CLBH');
    if CheckBox2.Checked then
       sql.Add('where (VLAReport.HaveReportDay is null or  VLAReport.HaveReportDay=''0'')');
    sql.add('order by A.CGNO DESC');
    //sql.add('order by CGZLS.CGNO DESC');
    //funcobj.WriteErrorLog(sql.Text);
    //memo2.Lines:= sql;
    //showmessage(SQL.text);
    active:=true;
  end;
  panel2.Visible:=false;
  BB4.Enabled:=true;
  BB3.Enabled:=true;
end;

procedure TVLAReport.BB4Click(Sender: TObject);
begin
  with QryVLA do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;

  BB5.Enabled := true;
  BB6.Enabled := true;
  DBGrid4.columns[16].ButtonStyle:=cbsEllipsis;
end;

procedure TVLAReport.BB5Click(Sender: TObject);
var
  NDate: TDate;
  i: integer;
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT GETDATE() AS NDate');
    Active := true;

    NDate := FieldByName('NDate').Value;
    Active := false;
  end;

  try
    QryVLA.First;
    for i := 1 to QryVLA.RecordCount do
    begin
      if VarIsNull(QryVLA.FieldByName('ReportDay').Value) or
         (QryVLA.FieldByName('ReportDay').AsString = '') then
      begin
        QryVLA.Edit;
        QryVLA.FieldByName('HaveReportDay').Value := '0';
      end
      else
      begin
        QryVLA.Edit;
        QryVLA.FieldByName('HaveReportDay').Value := '1';
      end;

      case QryVLA.UpdateStatus of
        usModified:
        begin
          if (QryVLA.FieldByName('YN').AsString = '1') then
          begin
            QryVLA.Edit;
            QryVLA.FieldByName('VLAReportUserID').Value := main.Edit1.Text;
            QryVLA.FieldByName('VLAReportUserDate').Value := NDate;
            UPVLA.Apply(ukModify);
          end
          else if (QryVLA.FieldByName('YN').AsString = '') then
          begin
            QryVLA.Edit;
            QryVLA.FieldByName('VLAReportUserID').Value := main.Edit1.Text;
            QryVLA.FieldByName('VLAReportUserDate').Value := NDate;
            QryVLA.FieldByName('YN').Value := 1;
            UPVLA.Apply(ukInsert);
          end;
        end;
      end;

      QryVLA.Next;
    end;

    QryVLA.Active := false;
    QryVLA.CachedUpdates := false;
    QryVLA.RequestLive := false;
    QryVLA.Active := true;
    BB5.Enabled := false;
    BB6.Enabled := false;
  except
    MessageDlg('Have wrong, can not save data!', mtWarning, [mbyes], 0);
  end;
end;


procedure TVLAReport.BB6Click(Sender: TObject);
begin
  with QryVLA do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;

  BB5.Enabled := false;
  BB6.Enabled := false;
  DBGrid4.columns[16].ButtonStyle:=cbsNone;
end;

procedure TVLAReport.DBGrid4DblClick(Sender: TObject);
begin
  if (DBGrid4.SelectedField.FieldName = 'TestReportFile') and (QryVLA.FieldByName('TestReportFile').AsString <> '') and (BB5.Enabled = false) then
    ShellExecute(0, 'open', PChar(DCTFilePath + QryVLA.FieldByName('TestReportFile').AsString), nil, nil, SW_Normal);
end;

procedure TVLAReport.DBGrid4Columns16EditButtonDown(Sender: TObject;
  TopButton: Boolean; var AutoRepeat, Handled: Boolean);
var DCTFileName: string;
begin
  if (OpenDialog1.Execute) then
  begin
    DCTFileName := ExtractFileName(OpenDialog1.FileName);
    if not (QryVLA.State in [dsEdit, dsInsert]) then
      QryVLA.Edit;
    if (FileExists(DCTFilePath + DCTFileName) = false) then
    begin
      QryVLA.FieldByName('TestReportFile').Value := ExtractFileName(OpenDialog1.FileName);
      CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), true);
    end else
    begin
      if (MessageDlg('File ''' + DCTFileName + ''' already exists. Do you want to replace it?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
      begin
        QryVLA.FieldByName('TestReportFile').Value := ExtractFileName(OpenDialog1.FileName);
        CopyFile(PChar(OpenDialog1.FileName), PChar(DCTFilePath + DCTFileName), false);
      end
    end;
  end;
end;

procedure TVLAReport.BB3Click(Sender: TObject);
begin
  with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('DELETE FROM VLAReport');
      sql.add('WHERE ReportDay IS NOT NULL AND ReportDay <> '''' ');
      sql.add('AND ReportDay <= DATEADD(month, -6, GETDATE()) ');
      ExecSQL;
    end;
    button1.Click;
end;

procedure TVLAReport.DBGrid4DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if (QryVLA.FieldByName('HaveReportDay').AsString = '0') or (QryVLA.FieldByName('HaveReportDay').IsNull )  then
  begin
    DBGrid4.Canvas.Font.Color := clFuchsia;
  end;
  DBGrid4.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

end.
