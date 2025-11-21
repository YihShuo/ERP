unit MatRFIDCodeRtp1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  Buttons, DBGridEhImpExp,ShellAPI, Menus, DateUtils;

type
  TMatRFIDCodeRtp = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    KCRKRF: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    KCRKRFSS: TQuery;
    KCRKRFCLBH: TStringField;
    KCRKRFYWPM: TStringField;
    KCRKRFDWBH: TStringField;
    KCRKRFRemQty: TFloatField;
    KCRKRFSSSCNO: TStringField;
    KCRKRFSSCLBH: TStringField;
    KCRKRFSSYWPM: TStringField;
    KCRKRFSSDWBH: TStringField;
    KCRKRFSSRemQty: TFloatField;
    KCRKRFSSTagID: TIntegerField;
    KCRKRFSSPack: TIntegerField;
    DS3: TDataSource;
    KCRKS: TQuery;
    KCRKSRKNO: TStringField;
    KCRKSZSNO: TStringField;
    KCRKSDOCNO: TStringField;
    KCRKSCLBH: TStringField;
    KCRKSCGBH: TStringField;
    KCRKSQty: TCurrencyField;
    KCRKRFS: TQuery;
    KCRKRFSSCNO: TStringField;
    KCRKRFSCLBH: TStringField;
    KCRKRFSYWPM: TStringField;
    KCRKRFSDWBH: TStringField;
    KCRKRFSRemQty: TFloatField;
    DS4: TDataSource;
    Splitter1: TSplitter;
    Panel3: TPanel;
    DBGridEh4: TDBGridEh;
    DBGridEh3: TDBGridEh;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    SCNOEdit: TEdit;
    Label7: TLabel;
    CLBHEdit: TEdit;
    Label5: TLabel;
    YWPMEdit: TEdit;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Check: TCheckBox;
    HideCK: TCheckBox;
    bbt6: TBitBtn;
    DBGridEh5: TDBGridEh;
    DS6: TDataSource;
    ErrKSCRKScan: TQuery;
    ErrKSCRKScanSCNO: TStringField;
    ErrKSCRKScanCLBH: TStringField;
    ErrKSCRKScanSCQty: TFloatField;
    ErrKSCRKScanRKQty: TCurrencyField;
    ErrKSCRKScanUSERDATE: TDateTimeField;
    SaveDialog1: TSaveDialog;
    KCRKRFKCQty: TCurrencyField;
    KCRKRFSQty: TFloatField;
    KCRKRFSSQty: TFloatField;
    TabSheet3: TTabSheet;
    Panel4: TPanel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    btnQuery: TBitBtn;
    edtCLBH: TEdit;
    edtYWPM: TEdit;
    btnExcel: TBitBtn;
    cbxYear: TComboBox;
    cbxMonth: TComboBox;
    DBG_REPORT: TDBGridEh;
    DBG_DETAILREPORT: TDBGridEh;
    DS_ReportStock: TDataSource;
    KCCLMONTH_RFPACK: TQuery;
    KCCLMONTH_RFPACKCLBH: TStringField;
    KCCLMONTH_RFPACKYWPM: TStringField;
    KCCLMONTH_RFPACKDWBH: TStringField;
    KCCLMONTH_RFPACKQty: TFloatField;
    KCCLMONTH_RFPACKKCQty: TCurrencyField;
    KCCLMONTH_RFPACKKCYEAR: TStringField;
    KCCLMONTH_RFPACKKCMONTH: TStringField;
    DS_ReportDetailStock: TDataSource;
    RFPACKS: TQuery;
    RFPACKSSCNO: TStringField;
    RFPACKSCLBH: TStringField;
    RFPACKSYWPM: TStringField;
    RFPACKSDWBH: TStringField;
    RFPACKSQty: TFloatField;
    RFPACKSPack: TIntegerField;
    TabSheet4: TTabSheet;
    Panel5: TPanel;
    DBGridEh6: TDBGridEh;
    Splitter4: TSplitter;
    DBGridEh7: TDBGridEh;
    MatQryIn: TQuery;
    DS5: TDataSource;
    MatQryInRKDate: TDateTimeField;
    MatQryInCLBH: TStringField;
    MatQryInYWPM: TStringField;
    MatQryInDWBH: TStringField;
    MatQryInQty: TFloatField;
    DS7: TDataSource;
    MatQryOut: TQuery;
    MatQryOutLLDate: TDateTimeField;
    MatQryOutSCBH: TStringField;
    MatQryOutCLBH: TStringField;
    MatQryOutywpm: TStringField;
    MatQryOutdwbh: TStringField;
    MatQryOutQty: TCurrencyField;
    Label2: TLabel;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    CLBHDEdit: TEdit;
    Label10: TLabel;
    YWPMDEdit: TEdit;
    Label11: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Label12: TLabel;
    PopupMenu1: TPopupMenu;
    MenuN11: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuN21: TMenuItem;
    RFPACKSTAGID: TIntegerField;
    Splitter5: TSplitter;
    PopupMenu3: TPopupMenu;
    DeleteMonthlyData1: TMenuItem;
    RemQty01: TMenuItem;
    tmpQry: TQuery;
    KCCLMONTH_RFPACKCKBH: TStringField;
    Label13: TLabel;
    Label14: TLabel;
    StockDate: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HideCKClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh4CellClick(Column: TColumnEh);
    procedure DBGridEh3CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure DBGridEh5CellClick(Column: TColumnEh);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure btnQueryClick(Sender: TObject);
    procedure DBG_REPORTCellClick(Column: TColumnEh);
    procedure DBG_DETAILREPORTCellClick(Column: TColumnEh);
    procedure BitBtn1Click(Sender: TObject);
    procedure MenuN11Click(Sender: TObject);
    procedure DBGridEh7CellClick(Column: TColumnEh);
    procedure DBGridEh6CellClick(Column: TColumnEh);
    procedure MenuN21Click(Sender: TObject);
    procedure DeleteMonthlyData1Click(Sender: TObject);
    procedure RemQty01Click(Sender: TObject);
    procedure DBG_REPORTGetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure cbxMonthChange(Sender: TObject);
  private
    ayear,amonth:string;
    SelectDBGrid:TDBGridEh;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MatRFIDCodeRtp: TMatRFIDCodeRtp;

implementation
   uses main1, MatRFIDCodeInDet1, MatRFIDCodeOutDet1 ,FunUnit;
{$R *.dfm}

procedure TMatRFIDCodeRtp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMatRFIDCodeRtp.FormDestroy(Sender: TObject);
begin
  MatRFIDCodeRtp:=nil;
end;

procedure TMatRFIDCodeRtp.BitBtn2Click(Sender: TObject);
begin
   with KCRKRF do
   begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select RFSS.*,KCZLS.KCQty from (');
    SQL.Add('select CLBH,YWPM,DWBH,Sum(RemQty) as RemQty from (');
    SQL.Add('select RFSS.CLBH,RFSS.Pack,RFSS.Qty,IsNull(RemQty,Qty) as RemQty ,RFSS.TagID,CLZL.YWPM,CLZL.DWBH ');
    SQL.Add('from KCRKScan_RFSS RFSS');
    SQL.Add('left join KCRKScan_RF on KCRKScan_RF.SCNO=RFSS.SCNO ');
    SQL.Add('left join   CLZL on CLZL.CLDH=RFSS.CLBH');
    SQL.Add('where KCRKScan_RF.CKBH='''+main.Edit2.Text+''' and RFSS.SCNO like '''+SCNOEdit.Text+'%'' ');
    SQL.Add('   and RFSS.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('   and CLZL.YWPM like ''%'+YWPMEdit.Text+'%'' ');
    if Check.Checked=true then
    begin
     SQL.Add('   and convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDATE,111)) between ');
     SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add(') RFSS');
    SQL.Add('where RFSS.RemQty>0');
    SQL.Add('Group by CLBH,YWPM,DWBH ) RFSS');
    SQL.Add('Left join KCZLS on RFSS.CLBH=KCZLS.CLBH and KCZLS.CKBH='''+main.Edit2.Text+''' ');
    Active:=true;
   end;
   with KCRKRFS do
   begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SCNO,CLBH,YWPM,DWBH,sum(Qty) as Qty,sum(RemQty) as RemQty');
    SQL.Add('from (');
    SQL.Add('select RFSS.SCNO,RFSS.CLBH,RFSS.Pack,RFSS.Qty,IsNull(RemQty,Qty) as RemQty ,RFSS.TagID,CLZL.YWPM,CLZL.DWBH ');
    SQL.Add('from KCRKScan_RFSS RFSS');
    SQL.Add('left join KCRKScan_RF on KCRKScan_RF.SCNO=RFSS.SCNO ');
    SQL.Add('left join   CLZL on CLZL.CLDH=RFSS.CLBH');
    SQL.Add('where RFSS.SCNO like '''+SCNOEdit.Text+'%'' ');
    SQL.Add('   and RFSS.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('   and CLZL.YWPM like ''%'+YWPMEdit.Text+'%'' ');
    if Check.Checked=true then
    begin
     SQL.Add('   and convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDATE,111)) between ');
     SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    end;
    SQL.Add(') RFSS');
    SQL.Add('where RFSS.RemQty>0 and RFSS.CLBH=:CLBH');
    SQL.Add('Group by SCNO,CLBH,YWPM,DWBH');
    Active:=true;
   end;
   KCRKRFSS.Active:=true;
   if HideCK.Checked=true then
    KCRKS.Active:=true;
end;

procedure TMatRFIDCodeRtp.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date()-3;
  DTP2.date:=Date();
  //
  DTP3.Date:=Date();
  DTP4.date:=Date();
  StockDate.Date:=Date();
end;

procedure TMatRFIDCodeRtp.HideCKClick(Sender: TObject);
begin
  if HideCK.Checked=true then
  begin
    DBGridEh4.Visible:=true;
    DBGridEh2.Visible:=true;
    KCRKS.Active:=true;
  end else
  begin
    DBGridEh4.Visible:=false;
    DBGridEh2.Visible:=false;
    KCRKS.Active:=false;
  end;
end;

procedure TMatRFIDCodeRtp.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex=3 then
    ErrKSCRKScan.Active:=true;
end;

procedure TMatRFIDCodeRtp.bbt6Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
    tdbgh := SelectDBGrid;
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

procedure TMatRFIDCodeRtp.DBGridEh1CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh1;
end;

procedure TMatRFIDCodeRtp.DBGridEh4CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh4;
end;

procedure TMatRFIDCodeRtp.DBGridEh3CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh3;
end;

procedure TMatRFIDCodeRtp.DBGridEh2CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh2;
end;

procedure TMatRFIDCodeRtp.DBGridEh5CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh5;
end;

procedure TMatRFIDCodeRtp.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCRKRF.FieldByName('RemQty').AsString<>KCRKRF.FieldByName('KCQty').AsString then
  begin
    DBGridEh1.canvas.font.color:=clblue;
  end;
end;

procedure TMatRFIDCodeRtp.btnQueryClick(Sender: TObject);
var year,month,day:word;
    KCRK,KCRKS,KCLL,KCLLS:string;
begin

  decodedate(StockDate.Date,Year,Month,Day);   //т畐闽计沮
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;


  KCRK:='KCRK with (nolock) ';
  KCRKS:='KCRKS with (nolock) ';
  KCLL:='KCLL with (nolock) ';
  KCLLS:='KCLLS with (nolock) ';

  with KCCLMONTH_RFPACK do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#CLZLKC'+''''+') is not null  ');
    sql.add('begin   drop table #CLZLKC end   ');
    sql.Add('select clzl.*,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,JGCKTemp.JGCK as JGCKTemp into #CLZLKC  ');
    sql.Add('from (');
    sql.Add('    select '''+main.Edit2.Text+''' as CKBH,clzl.zsdh,CLZL.CLDH,CLZL.DWBH,LastKC.LBBH,LastKC.LastRem');
    sql.Add('     from CLZL with (nolock) ');
                 //戳畐
    sql.add('     left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.LBBH,KCCLMONTH.Qty as LastRem ');
    sql.add('     from KCCLMONTH   with (nolock) where KCCLMONTH.KCYEAR='+''''+ayear+'''');
    sql.add('     and KCMONTH='+''''+amonth+'''');
    sql.add('     and KCCLMONTH.CLBH like '+''''+edtCLBH.Text+'%'+'''');
    sql.Add('           and KCCLMONTH.CKBH='+''''+main.Edit2.Text+'''');
    sql.add('     ) LastKC on LastKC.CLBH=CLZL.CLDH )clzl ');
    sql.add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from '+KCRKS+' ');    //畐计秖

    sql.add('           left join '+KCRK+'  on KCRK.RKNO=KCRKS.RKNO where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=') ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(StockDate.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',StockDate.date)+''''  );
    sql.add('           and KCRKS.CLBH like '+''''+edtCLBH.Text+'%'+'''');
    sql.Add('           and KCRK.CKBH='+''''+main.Edit2.Text+'''');
    sql.add('           group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH  and RK.CKBH=clzl.ckbh');
    //畐计秖
    sql.add('left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from '+KCLLS+'  ');
    sql.add('           left join '+KCLL+'   on KCLL.LLNO=KCLLS.LLNO where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(StockDate.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',StockDate.date)+''''  );
    sql.add('           and KCLLS.CLBH like '+''''+edtCLBH.Text+'%'+'''');
    sql.add('           and KCLL.CFMID<>'+''''+'NO'+'''');
    //2017/09/01 sua gia cong vat tu
    sql.add('           and KCLL.SCBH<>''JJJJJJJJJJ''');
    sql.Add('           and KCLL.CKBH='+''''+main.Edit2.Text+'''');
    sql.add('           group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH and LL.CKBH=clzl.ckbh');
    //畐计秖
    sql.add('left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(StockDate.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',StockDate.date)+''''  );
    sql.add('           and JGZLS.CLBH like '+''''+edtCLBH.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('           and JGZL.CKBH='+''''+main.Edit2.Text+'''');
    sql.add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH and JGRK.CKBH=clzl.ckbh');
    // 2017/09/01 sua gia cong vat tu
    //畐计秖
    sql.add('left join (select JGZL.CKBH,JGZLS.ZMLB,convert(money,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(StockDate.date))+''''  );
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('                      '''+formatdatetime('yyyy/MM/dd',StockDate.date)+''''  );
   // sql.add('                      and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('                      and JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    sql.Add('                   and JGZL.CKBH='+''''+main.Edit2.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',startofthemonth(StockDate.date))+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',StockDate.date)+''''  );
    sql.add('           and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    sql.add('           and JGZLS.ZMLB like '+''''+edtCLBH.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 <>'+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('        and JGZL.CKBH='+''''+main.Edit2.Text+'''');
    sql.add('        group by JGZL.CKBH,JGZLS.ZMLB ');
    // KCLL.SCBH='JJJJJJJJJJ'
    sql.Add('        union all');
    sql.Add('        select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
    sql.add('        left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('        where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=')   ;
    sql.add('        '''+formatdatetime('yyyy/MM/dd',startofthemonth(StockDate.date))+''''  );
    sql.add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',StockDate.date)+''''  );
    sql.Add('        and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('        and KCLL.SCBH = ''JJJJJJJJJJ'' and KCLL.CFMID<>'+''''+'NO'+'''');
    sql.add('        and KCLLS.CLBH like '+''''+edtCLBH.Text+'%'+'''');
    sql.Add('        and KCLL.CKBH='+''''+main.Edit2.Text+'''');
    sql.add('         group by KCLL.CKBH,KCLLS.CLBH');
    sql.add('        ) JGCK on JGCK.ZMLB=CLZL.CLDH and JGCK.CKBH=clzl.ckbh');
    //虫秨临ゼㄓ计秖
    sql.add('left join (select JGZL.CKBH,JGZLS.ZMLB,convert(money,sum(round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),2))) as JGCK from JGZLS with (nolock) ');
    sql.add('           left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS  with (nolock) ');
    sql.add('                      left join JGZL  with (nolock) on JGZL.JGNO=JGZLS.JGNO ');
    sql.add('                      where  JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('                      and JGZL.CKBH='+''''+main.Edit2.Text+'''');
    sql.add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('           where  JGZLS.ZMLB like '+''''+edtCLBH.Text+'%'+'''');
    sql.add('           and JGZL.CFMID1 ='+''''+'NO'+'''');
    sql.add('           and JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
    sql.Add('        and JGZL.CKBH='+''''+main.Edit2.Text+'''');
    sql.add('        group by JGZL.CKBH,JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH and JGCKTemp.CKBH=clzl.ckbh');

    //
    sql.Add('select RFPACK.*,KCZLS.KCQty from (');
    sql.Add('select KCYEAR,KCMONTH,CKBH,CLBH,YWPM,DWBH,Sum(Qty) as Qty from (');
    sql.Add('select KCYEAR,KCMONTH,CKBH,RFPACK.CLBH,RFPACK.Pack,RFPACK.Qty,CLZL.YWPM,CLZL.DWBH');
    sql.Add('from KCCLMONTH_RFPACK RFPACK');
    sql.Add('left join   CLZL on CLZL.CLDH=RFPACK.CLBH');
    sql.Add('where 1=1');
    sql.Add('     and RFPACK.CLBH like'+''''+edtCLBH.Text+'%'' ');
    sql.Add('     and CLZL.YWPM like ''%'+edtYWPM.Text+'%'' ');
    sql.Add('     and RFPACK.KCYEAR like'+''''+cbxYear.Text+'%''');
    sql.Add('     and RFPACK.KCMONTH like'+''''+cbxMonth.Text+'%''');
    sql.Add('     and RFPACK.CKBH='''+main.Edit2.Text+''' ');
    sql.Add(') RFPACK Group by CLBH,YWPM,DWBH,KCYEAR,KCMONTH,CKBH ) RFPACK');
    //Stock Qty
    sql.Add('left join ( ');
    sql.Add('select #CLZLKC.CKBH,#CLZLKC.CLDH as CLBH,  ');
    sql.Add('       isnull(Round(#CLZLKC.LastRem,2),0)+isnull(Round(#CLZLKC.RKQty,2),0)-isnull(Round(#CLZLKC.LLQty,2),0)+isnull(Round(#CLZLKC.JGRK,2),0)-isnull(Round(#CLZLKC.JGCK,2),0) as KCQty ');
    sql.Add('from #CLZLKC ');
    sql.Add('where not (#CLZLKC.LastRem is null  and #CLZLKC.RKQty is null and #CLZLKC.LLQty is null ');
    sql.Add('      and #CLZLKC.JGRK is null and #CLZLKC.JGCK is null and #CLZLKC.JGCKTemp is null) ');
    sql.Add(') KCZLS on  RFPACK.CLBH=KCZLS.CLBH and KCZLS.CKBH=RFPACK.CKBH ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  RFPACKS.active:=true;
end;

procedure TMatRFIDCodeRtp.DBG_REPORTCellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBG_REPORT;
end;

procedure TMatRFIDCodeRtp.DBG_DETAILREPORTCellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBG_DETAILREPORT;
end;

procedure TMatRFIDCodeRtp.BitBtn1Click(Sender: TObject);
begin
   //
   with MatQryIn do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select * from (');
     SQL.Add('select  convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDATE,111)) as RKDate,KCRKScan_RFSS.CLBH,CLZL.YWPM,CLZL.DWBH,SUM(Qty) as Qty from KCRKScan_RFSS');
     SQL.Add('left join KCRKScan_RF on KCRKScan_RFSS.SCNO=KCRKScan_RF.SCNO');
     SQL.Add('left join CLZL on CLZL.CLDH=KCRKScan_RFSS.CLBH');
     SQL.Add('where KCRKScan_RF.CKBH='''+main.Edit2.Text+''' ');
     SQL.Add('   and convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDATE,111)) between ');
     SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
     if CLBHDEdit.Text<>'' then
     SQL.Add('   and KCRKScan_RFSS.CLBH like '''+CLBHDEdit.Text+'%'' ');
     if YWPMDEdit.Text<>'' then
     SQL.Add('   and CLZL.YWPM like ''%'+YWPMDEdit.Text+'%'' ');
     SQL.Add('Group by convert(smalldatetime,convert(varchar,KCRKScan_RF.USERDATE,111)),KCRKScan_RFSS.CLBH,CLZL.YWPM,CLZL.DWBH');
     SQL.Add(') RK order by RKDate,CLBH');
     Active:=true;
   end;
   //
   with MatQryOut do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select convert(smalldatetime,convert(varchar,KCLLS.SCANUSERDATE,111)) as LLDate,KCLLS.SCBH,KCLLS.CLBH,CLZL.ywpm,CLZL.dwbh,SUM(KCLLS.Qty) as Qty from KCLLS');
     SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
     SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
     SQL.Add('where KCLL.CKBH='''+main.Edit2.Text+''' ');
     SQL.Add('   and convert(smalldatetime,convert(varchar,KCLLS.SCANUSERDATE,111)) between ');
     SQL.add('          '''+formatdatetime('yyyy/MM/dd',DTP3.Date) +''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.Date) +'''');
     SQL.add('   and KCLLS.SCANUSERDATE is not null ');
     if CLBHDEdit.Text<>'' then
     SQL.Add('   and KCLLS.CLBH like '''+CLBHDEdit.Text+'%'' ');
     if YWPMDEdit.Text<>'' then
     SQL.Add('   and CLZL.YWPM like ''%'+YWPMDEdit.Text+'%'' ');
     SQL.Add('Group by convert(smalldatetime,convert(varchar,KCLLS.SCANUSERDATE,111)),KCLLS.SCBH,KCLLS.CLBH,CLZL.ywpm,CLZL.dwbh');
     Active:=true;
   end;
   //
end;

procedure TMatRFIDCodeRtp.MenuN11Click(Sender: TObject);
begin
  //
  MatRFIDCodeInDet:=TMatRFIDCodeInDet.Create(self);
  MatRFIDCodeInDet.ShowModal();
  //
end;

procedure TMatRFIDCodeRtp.DBGridEh7CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh7;
end;

procedure TMatRFIDCodeRtp.DBGridEh6CellClick(Column: TColumnEh);
begin
  SelectDBGrid:=DBGridEh6;
end;

procedure TMatRFIDCodeRtp.MenuN21Click(Sender: TObject);
begin

  MatRFIDCodeOutDet:=TMatRFIDCodeOutDet.Create(self);
  MatRFIDCodeOutDet.ShowModal();

end;

procedure TMatRFIDCodeRtp.DeleteMonthlyData1Click(Sender: TObject);
begin
  if KCCLMONTH_RFPACK.Active=false then exit;
  if KCCLMONTH_RFPACK.RecordCount>0 then
  begin
    if messagedlg('Xoa hang thang ton kho khong?',mtCustom,[mbYes,mbNo], 0)=mrYes then
    begin
      with tmpQry do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Delete from KCCLMONTH_RFPack ');
        SQL.Add('where KCYEAR='''+KCCLMONTH_RFPACK.FieldByName('KCYEAR').AsString+''' and KCMONTH='''+KCCLMONTH_RFPACK.FieldByName('KCMONTH').AsString+''' and CKBH='''+KCCLMONTH_RFPACK.FieldByName('CKBH').AsString+''' ');
        //funcObj.WriteErrorLog(sql.Text);
        ExecSQL();
      end;
      KCCLMONTH_RFPACK.Active:=false;
      KCCLMONTH_RFPACK.Active:=true;
      Showmessage('Success');
    end;
  end else
  begin
    Showmessage('Khong co hang thang ton kho');
  end;

end;

procedure TMatRFIDCodeRtp.RemQty01Click(Sender: TObject);
begin
  if KCCLMONTH_RFPACK.Active=false then exit;
  if KCCLMONTH_RFPACK.RecordCount>0 then
  begin
    if messagedlg('Cap nhat vat tu so luong theo ton kho  khong?',mtCustom,[mbYes,mbNo], 0)=mrYes then
    begin
      with tmpQry do
      begin
        Active:=false;
        SQL.Clear;
        //穝KCRKScan_RFSS.RemQty=0 ┮ぃる┏絃翴い
        SQL.Add('update KCRKScan_RFSS set RemQty=0');
        SQL.Add('from (');
        SQL.Add('  Select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,KCRKScan_RFSS.Pack ');
        SQL.Add('  from  KCRKScan_RFSS ');
        SQL.Add('  where 1=1 ');
        SQL.Add('  and not exists (select KCCLMONTH_RFPack.SCNO,KCCLMONTH_RFPack.CLBH,KCCLMONTH_RFPack.Pack  from KCCLMONTH_RFPack where  KCYEAR='''+KCCLMONTH_RFPACK.FieldByName('KCYEAR').AsString+''' and KCMONTH='''+KCCLMONTH_RFPACK.FieldByName('KCMONTH').AsString+''' and CKBH='''+KCCLMONTH_RFPACK.FieldByName('CKBH').AsString+''' and  KCRKScan_RFSS.SCNO=''20''+KCCLMONTH_RFPack.SCNO and KCRKScan_RFSS.CLBH=KCCLMONTH_RFPack.CLBH and KCRKScan_RFSS.Pack=KCCLMONTH_RFPack.Pack )');
        SQL.Add('  and Year(KCRKScan_RFSS.USERDATE)<='+KCCLMONTH_RFPACK.FieldByName('KCYEAR').AsString+' and Month(KCRKScan_RFSS.USERDATE)<='+KCCLMONTH_RFPACK.FieldByName('KCMONTH').AsString);
        SQL.Add(') KCCLMONTH_RFPack');
        SQL.Add('where  KCRKScan_RFSS.SCNO=KCCLMONTH_RFPack.SCNO and KCRKScan_RFSS.CLBH=KCCLMONTH_RFPack.CLBH and KCRKScan_RFSS.Pack=KCCLMONTH_RFPack.Pack ');
        //穝KCRKScan_RFSS.RemQtyヘ玡る┏絃翴龟悔计秖
        SQL.Add('update KCRKScan_RFSS set RemQty=KCCLMONTH_RFPack.RemQty ');
        SQL.Add('from (');
        SQL.Add('  Select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CLBH,KCRKScan_RFSS.Pack,KCCLMONTH_RFPack.Qty as RemQty ');
        SQL.Add('  from  KCRKScan_RFSS ');
        SQL.Add('  inner join KCCLMONTH_RFPack on KCYEAR='''+KCCLMONTH_RFPACK.FieldByName('KCYEAR').AsString+''' and KCMONTH='''+KCCLMONTH_RFPACK.FieldByName('KCMONTH').AsString+''' and CKBH='''+KCCLMONTH_RFPACK.FieldByName('CKBH').AsString+''' and KCRKScan_RFSS.SCNO=''20''+KCCLMONTH_RFPack.SCNO and KCRKScan_RFSS.CLBH=KCCLMONTH_RFPack.CLBH and KCRKScan_RFSS.Pack=KCCLMONTH_RFPack.Pack');
        SQL.Add(') KCCLMONTH_RFPack');
        SQL.Add('where  KCRKScan_RFSS.SCNO=KCCLMONTH_RFPack.SCNO and KCRKScan_RFSS.CLBH=KCCLMONTH_RFPack.CLBH and KCRKScan_RFSS.Pack=KCCLMONTH_RFPack.Pack ');
        //funcObj.WriteErrorLog(sql.Text);
        ExecSQL();
      end;
      Showmessage('Success');
    end;
  end else
  begin
    Showmessage('Khong co hang thang ton kho');
  end;
end;

procedure TMatRFIDCodeRtp.DBG_REPORTGetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if KCCLMONTH_RFPACK.FieldByName('Qty').AsString<>KCCLMONTH_RFPACK.FieldByName('KCQty').AsString then
  begin
    DBG_REPORT.canvas.font.color:=clblue;
  end;
end;

procedure TMatRFIDCodeRtp.cbxMonthChange(Sender: TObject);
begin
  StockDate.Date:=EndOfAMonth(strtoint(cbxyear.Text),strtoint(cbxmonth.Text));
end;

end.
