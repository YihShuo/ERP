unit EquipmentAssetRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, Comobj,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh ;

type
  TEquipmentAssetRpt = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SBBHEdit: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    TSBHEdit: TEdit;
    InDateCB: TCheckBox;
    YWPMEdit: TEdit;
    ZSYWJCEdit: TEdit;
    ComboBox1: TComboBox;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    TSCDQry: TQuery;
    DS1: TDataSource;
    TSCDQryTSBH: TStringField;
    TSCDQryStatus: TStringField;
    TSCDQryDOCNO: TStringField;
    TSCDQryRKNO: TStringField;
    TSCDQryRKDate: TDateTimeField;
    TSCDQrySBBH: TStringField;
    TSCDQryLSBH: TStringField;
    TSCDQryYWPM: TStringField;
    TSCDQryHGPM: TStringField;
    TSCDQryQUCBH: TStringField;
    TSCDQryRKDepName: TStringField;
    TSCDQryLLDate: TDateTimeField;
    TSCDQryLLDepName: TStringField;
    TSCDQryDepID_Memo: TStringField;
    TSCDQryUSPrice: TFloatField;
    TSCDQryVNPrice: TIntegerField;
    TSCDQryVNTax_HG: TFloatField;
    TSCDQryVNACC_Tax: TFloatField;
    TSCDQryMonthS: TIntegerField;
    TSCDQrySTYM: TStringField;
    TSCDQryEDYM: TStringField;
    TSCDQryUseVNAcc: TFloatField;
    TSCDQryRemVNAcc: TFloatField;
    TSCDQryTSID: TStringField;
    TSCDQryCWHL: TIntegerField;
    TSCDQryCWHL_HG: TIntegerField;
    TSCDQryDWBH: TStringField;
    TSCDQryQty: TFloatField;
    TSCDQryUseVNAcc_YearS: TFloatField;
    TSCDQryUseVNAcc_Year: TFloatField;
    TSCDQryXSBH: TStringField;
    TSCDQryNSX: TStringField;
    TSCDQryJDBDATE: TStringField;
    TSCDQryJDEDATE: TStringField;
    TSCDQryCQDH: TStringField;
    Qtemp: TQuery;
    Label7: TLabel;
    BaseDTP: TDateTimePicker;
    Label8: TLabel;
    DOCNOEdit: TEdit;
    TSCDQryzsjc_yw: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    NDate:TDate;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentAssetRpt: TEquipmentAssetRpt;

implementation

{$R *.dfm}
   uses FunUnit;
procedure TEquipmentAssetRpt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentAssetRpt.FormDestroy(Sender: TObject);
begin
  EquipmentAssetRpt:=nil;
end;

procedure TEquipmentAssetRpt.Button1Click(Sender: TObject);
var sYear,sMonth:String;
    iYear,iMonth,iDay:Word;
begin
  DecodeDate( BaseDTP.Date,iYear, iMonth, iDay);
  sYear:=Format('%.4d',[iYear]);
  sMonth:=Format('%.2d',[iMonth]);
  //
  with TSCDQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select TSCD.TSBH,TSCD.Status,TSCD_KCRK.DOCNO,TSCD_KCRK.RKNO,TSCD_KCRK.CFMDATE as RKDate,TSCD_SB.SBBH,TSCD_SB.LSBH,TSCD_SB.YWPM,TSCD_SB.HGPM,');
    SQL.Add('       TSCD_SB.QUCBH,TSCD_ZSZL.zsjc_yw,BDepartment.DepName as RKDepName,TSCD_KCLL.CFMDATE as LLDate,IsNull(TSCDBdep_JD.DepName, TSCDBdep.DepName) as LLDepName,TSCD.DepID_Memo, ');
    SQL.Add('       TSCD_KCRKS.USPrice,TSCD_KCRKS.VNPrice,TSCD_KCRKS.VNTax_HG,TSCD_KCRKS.VNACC_Tax,TSCD_KCRKS.MonthS,');
    SQL.Add('       Substring(convert(varchar, TSCD_KCRK.CFMDATE ,111),1,7) as STYM ,Substring(convert(varchar,  DateAdd(month,MonthS, TSCD_KCRK.CFMDATE ),111),1,7) as EDYM,');
    SQL.Add('       TSCD_Month.UseVNAcc,TSCD_KCRKS.VNACC_Tax-TSCD_Month.UseVNAcc as RemVNAcc, TSCD_MonthS_Year.UseVNAcc_YearS,TSCD_Month_Year.UseVNAcc_Year, ');
    SQL.Add('       TSCD.TSID,TSCD.XSBH,TSCD.NSX,TSCD.JDBDATE,TSCD.JDEDATE,TSCD_SB.CQDH,TSCD_KCRKS.CWHL,TSCD_KCRKS.CWHL_HG,TSCD_SB.DWBH,TSCD_KCRKS.Qty');
    SQL.Add('from TSCD');
    SQL.Add('left join TSCD_SB on TSCD.SBBH=TSCD_SB.SBBH');
    SQL.Add('left join TSCD_KCRKS on TSCD_KCRKS.TSID=TSCD.TSID');
    SQL.Add('left join TSCD_KCRK on TSCD_KCRKS.RKNO=TSCD_KCRK.RKNO');
    SQL.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_KCRK.DepID');
    SQL.Add('left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_KCRK.ZSBH');
    SQL.Add('left join TSCD_BDepartment TSCDBdep on TSCDBdep.ID=TSCD.DepID');
    SQL.Add('left join TSCD_BDepartment TSCDBdep_JD on TSCDBdep_JD.ID=TSCD.JDTS');
    SQL.Add('left join TSCD_KCLL on TSCD.LLNO=TSCD_KCLL.LLNO');
    SQL.Add('left join (select TSID,SUM(VNAcc) as UseVNAcc from TSCD_Month ');
    SQL.Add('           where KCYEAR+KCMONTH<='''+sYear+sMonth+''' ');
    SQL.Add('           group by TSID ) TSCD_Month on TSCD_Month.TSID=TSCD.TSID');
    SQL.Add('left join (select TSID,SUM(VNAcc) as UseVNAcc_Year from TSCD_Month ');
    SQL.Add('           where KCYEAR='''+sYear+''' and KCMONTH<='''+sMonth+'''');
    SQL.Add('           group by TSID ) TSCD_Month_Year on TSCD_Month_Year.TSID=TSCD.TSID  ');
    SQL.Add('left join (select TSID,SUM(VNAcc) as UseVNAcc_YearS from TSCD_Month ');
    SQL.Add('           where KCYEAR='''+sYear+''' ');
    SQL.Add('           group by TSID ) TSCD_MonthS_Year on TSCD_MonthS_Year.TSID=TSCD.TSID  ');
    SQL.Add('where 1=1 ');
    if SBBHEdit.Text<>'' then
    SQL.Add('and TSCD_SB.SBBH like ''%'+SBBHEdit.Text+'%'' ');
    if TSBHEdit.Text<>'' then
    SQL.Add('and TSCD.TSBH like ''%'+TSBHEdit.Text+'%'' ');
    if YWPMEdit.Text<>'' then
    SQL.Add('and TSCD_SB.YWPM like ''%'+YWPMEdit.Text+'%'' ');
    if ZSYWJCEdit.Text<>'' then
    SQL.Add('and ZSZL.ZSYWJC like ''%'+ZSYWJCEdit.Text+'%'' ');
    if DOCNOEdit.Text<>'' then
    SQL.Add('and TSCD_KCRK.DOCNO like ''%'+DOCNOEdit.Text+'%'' ');
    if InDateCB.Checked=true then
    begin
      SQL.add('and convert(smalldatetime,convert(varchar,TSCD.InDate,111)) between ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +'''');
      SQL.add(' and  ');
      SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    if ComboBox1.ItemIndex=1 then
    begin
      SQL.add('and TSCD.Status=''N'' ');
    end else if ComboBox1.ItemIndex=2 then
    begin
      SQL.add('and TSCD.Status<>''N''  ');
    end else if ComboBox1.ItemIndex=3 then
    begin
      SQL.add('and TSCD.Status=''B''  ');
    end else if ComboBox1.ItemIndex=4 then
    begin
      SQL.add('and TSCD_SB.AuthCE=1  ');
    end;
    funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  DBGridEh1.Columns[23].Title.Caption:=sYear+'年攤提|1-'+sMonth+'Month';
  DBGridEh1.Columns[24].Title.Caption:=sYear+'年攤提|1-12 Month';
end;

procedure TEquipmentAssetRpt.FormCreate(Sender: TObject);
begin
  //
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    DTP1.Date:= NDate-3;
    DTP2.Date:= NDate;
    BaseDTP.Date:=NDate;
  end;
  //
end;

procedure TEquipmentAssetRpt.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  TSCDQry.active  then
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
        for   i:=0   to   TSCDQry.fieldcount-1   do
        begin
           eclApp.Cells(1,i+1):=TSCDQry.fields[i].FieldName;
        end;

        TSCDQry.First;
        j:=2;
        while   not TSCDQry.Eof   do
        begin
          for   i:=0   to  TSCDQry.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=TSCDQry.Fields[i].Value;
          end;
          TSCDQry.Next;
          inc(j);
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

end.
