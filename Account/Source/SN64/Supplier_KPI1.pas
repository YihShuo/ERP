unit Supplier_KPI1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls, DB, DBTables, Dateutils,
  Comobj,StrUtils,IniFiles;

type
  TSupplier_KPI = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    DBGridEh1: TDBGridEh;
    Qry_Temp: TQuery;
    Qry_Supplier: TQuery;
    DS_Supplier: TDataSource;
    Qry_Monthly: TQuery;
    TS2: TTabSheet;
    DBGridEh2: TDBGridEh;
    Qry_topten: TQuery;
    DS_topten: TDataSource;
    Qry_toptenRN: TFloatField;
    Qry_toptenSupplierID: TStringField;
    Qry_toptenSupplierName: TStringField;
    Qry_toptenVNACC: TFloatField;
    Qry_toptenRate: TFloatField;
    Qry_SupplierSupplierID: TStringField;
    Qry_SupplierSupplierName: TStringField;
    Qry_SupplierQ1: TFloatField;
    Qry_SupplierQ2: TFloatField;
    Qry_SupplierQ3: TFloatField;
    Qry_SupplierQ4: TFloatField;
    Qry_toptenTermPayment: TStringField;
    TS3: TTabSheet;
    DBGridEh3: TDBGridEh;
    Qry_Compare: TQuery;
    DS_Compare: TDataSource;
    Panel4: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edt_SuppName: TEdit;
    BT_Query: TButton;
    BT_Excel: TButton;
    cbx_Month: TComboBox;
    btn_Monthly: TButton;
    cbx_Year: TComboBox;
    Qry_CompareRN: TFloatField;
    Qry_CompareSupplierID: TStringField;
    Qry_CompareSupplierName: TStringField;
    Qry_CompareTermPayment: TStringField;
    Qry_CompareSupType: TStringField;
    Qry_CompareLast_VNACC: TFloatField;
    Qry_CompareLast_Rate: TFloatField;
    Qry_CompareVNACC: TFloatField;
    Qry_CompareRate: TFloatField;
    Qry_CompareDiff: TFloatField;
    Qry_CompareMatType: TStringField;
    Qry_toptenSuppType: TStringField;
    SaveDialog1: TSaveDialog;
    cbx_Top: TComboBox;
    Label1: TLabel;
    TS4: TTabSheet;
    Qry_Detail: TQuery;
    DS_Detail: TDataSource;
    Qry_DetailGSBH: TStringField;
    Qry_DetailCKBH: TStringField;
    Qry_DetailRKNO: TStringField;
    Qry_DetailSuppID: TStringField;
    Qry_DetailZSNO: TStringField;
    Qry_DetailDOCNO: TStringField;
    Qry_DetailDECLARATION: TStringField;
    Qry_DetailCFMDATE: TDateTimeField;
    Qry_DetailDWBH: TStringField;
    Qry_DetailCWBH: TStringField;
    Qry_DetailPaQty: TFloatField;
    Qry_DetailQTY: TCurrencyField;
    Qry_DetailUSPRICE: TFloatField;
    Qry_DetailUSACC: TFloatField;
    Qry_DetailCWHL: TIntegerField;
    Qry_DetailVNPRICE: TCurrencyField;
    Qry_DetailVNACC: TFloatField;
    Qry_DetailEXCHACC: TFloatField;
    Qry_DetailCGBH: TStringField;
    Qry_DetailRKSB: TStringField;
    Qry_DetailCOSTID: TStringField;
    Qry_DetailCNO: TStringField;
    Qry_DetailHQName: TStringField;
    Qry_DetailUnitC: TStringField;
    Qry_DetailRateC: TFloatField;
    Qry_DetailHGLB: TStringField;
    Qry_DetailFKBH: TStringField;
    btn_Data: TButton;
    Qry_DetailYears: TStringField;
    Qry_DetailMonths: TStringField;
    Qry_DetailRKDATE: TDateTimeField;
    Qry_DetailMatName: TStringField;
    Qry_DetailCLBH: TStringField;
    Qry_DetailSupplierName: TStringField;
    DBGridEh4: TDBGridEh;
    procedure Qry_SupplierAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btn_MonthlyClick(Sender: TObject);
    procedure BT_QueryClick(Sender: TObject);
    procedure PC1Change(Sender: TObject);
    procedure BT_ExcelClick(Sender: TObject);
    procedure Qry_CompareAfterOpen(DataSet: TDataSet);
    procedure btn_DataClick(Sender: TObject);
    procedure Qry_DetailAfterOpen(DataSet: TDataSet);
    procedure cbx_TopChange(Sender: TObject);
    procedure Qry_DetailBeforeOpen(DataSet: TDataSet);
  private
    AppDir:string;
    { Private declarations }
    procedure CalEntryDate();
  public
    AcountN64_CheckBFactory:string;
    { Public declarations }
    procedure ReadIni();
  end;

var
  Supplier_KPI: TSupplier_KPI;
  sdate, sdate2, edate, NDate: Tdate;
  QryOpen:boolean;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TSupplier_KPI.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  AcountN64_CheckBFactory:='Y';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      AcountN64_CheckBFactory:=MyIni.ReadString('ERP','AcountN64_CheckBFactory','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TSupplier_KPI.Qry_SupplierAfterOpen(DataSet: TDataSet);
begin
  if cbx_Month.Text<>'ALL' then
  begin
    with Qry_Temp do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select* from KPI_Supplier');
      sql.Add('where YEARS='''+cbx_Year.Text+''' and MONTHS='''+cbx_Month.Text+''' ');
      active:=true;
    end;
    if Qry_Temp.RecordCount=0 then
    begin
      if messagedlg('No data '''+cbx_Year.Text+'/'+cbx_Month.Text+'''. Do you want to calculate it ?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        btn_Monthly.Click;
      end;
    end;
  end;
end;

procedure TSupplier_KPI.FormCreate(Sender: TObject);
var i : integer;
    Ndate:TDate;
begin
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GETDATE() NDate');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
  end;
  // Load year-month
  if strtoint(formatdatetime('yyyy',Ndate))-5<2022 then
    i:=2022
  else
    i:=strtoint(formatdatetime('yyyy',Ndate))-5;
  cbx_Year.Clear;
  while i<(strtoint(formatdatetime('yyyy',Ndate))+3) do
  begin
      cbx_Year.Items.Add(inttostr(i));
      i:=i+1;
  end;
  cbx_Year.ItemIndex:=cbx_Year.Items.IndexOf(formatdatetime('yyyy',Ndate));
  cbx_Month.Text:='01-03';
  PC1.ActivePage:=TS1;
  AppDir:=ExtractFilePath(Application.ExeName);
  ReadIni();
end;


procedure TSupplier_KPI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with Qry_Temp do
  begin
    Active:=false;
    sql.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#Entry_Supplier'') IS NOT NULL ');
    SQL.Add('BEGIN DROP TABLE #Entry_Supplier END ');
    SQL.Add('if OBJECT_id(''tempdb..#TopSupp'') is not null    ');
    SQL.Add('begin drop table #TopSupp end    ');
    SQL.Add('if OBJECT_id(''tempdb..#Top11Supp'') is not null ');
    SQL.Add('begin drop table #Top11Supp end ');
    SQL.Add('if OBJECT_id(''tempdb..#Top10Supp'') is not null ');
    SQL.Add('begin drop table #Top10Supp end ');
    SQL.Add('if OBJECT_id(''tempdb..#EntryDetail'') is not null ');
    SQL.Add('begin drop table #EntryDetail end  ');
    SQL.Add('if OBJECT_id(''tempdb..#AFac_Entry'') is not null  ');
    SQL.Add('begin drop table #AFac_Entry end  ');
    ExecSQL;
  end;
  QryOpen:=False;
  Action:=Cafree;
end;

procedure TSupplier_KPI.FormDestroy(Sender: TObject);
begin
  Supplier_KPI:=Nil;
end;

procedure TSupplier_KPI.btn_MonthlyClick(Sender: TObject);
begin
  CalEntryDate();
  //
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM KPI_Supplier');
    sql.Add('WHERE YEARS='''+cbx_Year.Text+''' AND MONTHS='''+cbx_Month.Text+''' ');
    active:=true;
    if RecordCount>0 then
    begin
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with Qry_Temp do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE KPI_Supplier');
          sql.Add('WHERE YEARS='''+cbx_Year.Text+''' AND MONTHS='''+cbx_Month.Text+'''  ');
          ExecSQL;
        end;
      end;
    end;
  end;
  //

  With Qry_Monthly do
  begin
    active:=false;
    SQL.Clear;
    if AcountN64_CheckBFactory='Y' then
    begin
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      SQL.Clear;
    end;
    SQL.Add('  IF OBJECT_ID(''tempdb..#Entry_Supplier'') IS NOT NULL  ');
    SQL.Add('  BEGIN DROP TABLE #Entry_Supplier END  ');
    SQL.Add('  Select KCRK.ZSBH SuppID,KCRKS.CLBH  ');
    SQL.Add('    			,Sum(KCRKS.VNACC) as VNACC  ');
    SQL.Add('          into #Entry_Supplier ');
    SQL.Add('  from KCRK    ');
    SQL.Add('  left join KCRKS on KCRK.RKNO=KCRKS.RKNO    ');
    SQL.Add('  left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH    ');
    SQL.Add('  left join KCZLS on KCZLS.CKBH=KCRK.CKBH and KCZLS.CLBH=KCRKS.CLBH  ');
    SQL.Add('  where KCRK.YN=5 and KCZLS.CWBH in(''152'',''153'')    ');
    SQL.Add('    	 and  Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between  ''' + formatdatetime('yyyy/mm/dd', sdate) + ''' AND ''' + formatdatetime('yyyy/mm/dd', edate) + '''     ');
    SQL.Add('      and ZSZL.zsywjc not like ''%TY XUAN%''    ');
    SQL.Add('      and VNACC>0  ');
    SQL.Add('      and HGLB<>''GC'' ');
    SQL.Add('  Group by KCRK.ZSBH,KCRKS.CLBH    ');
    SQL.Add('    --=================  ');
    SQL.Add('  union all  ');
    SQL.Add('  Select KCRK.ZSBH SuppID,KCRKS.SBBH   ');
    SQL.Add('      		,Sum(KCRKS.VNACC+isnull(KCRKS.ExchACC,0)) VNACC    ');
    SQL.Add('  from CCDC_KCRK KCRK      ');
    SQL.Add('  left join CCDC_KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO      ');
    SQL.Add('  left join TSCD_ZSZL ZSZL on ZSZL.ZSDH=KCRK.ZSBH      ');
    SQL.Add('  left join TSCD_SB TSCD_SB on KCRKS.SBBH=TSCD_SB.SBBH   ');
    SQL.Add('  where KCRK.YN=5      ');
    SQL.Add('    and CONVERT(VARCHAR, KCRK.USERDATE, 111) between ''' + formatdatetime('yyyy/mm/dd', sdate) + ''' AND ''' + formatdatetime('yyyy/mm/dd', edate) + '''      ');
    SQL.Add('    and ZSZL.zsjc_yw not like ''%TY XUAN%''      ');
    SQL.Add('  Group by KCRK.ZSBH,KCRKS.SBBH  ');
    SQL.Add('    --=================  ');
    //20240123 not calcuate assets
    {SQL.Add('  union all  ');
    SQL.Add('  Select KCRK.ZSBH SuppID,KCRKS.SBBH   ');
    SQL.Add('      		,Sum(KCRKS.VNACC+isnull(KCRKS.VNTax_HG,0)) VNACC    ');
    SQL.Add('  from TSCD_KCRK KCRK      ');
    SQL.Add('  left join TSCD_KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO      ');
    SQL.Add('  left join TSCD_ZSZL ZSZL on ZSZL.ZSDH=KCRK.ZSBH      ');
    SQL.Add('  left join TSCD_SB TSCD_SB on KCRKS.SBBH=TSCD_SB.SBBH   ');
    SQL.Add('  where KCRK.YN=5      ');
    SQL.Add('    and CONVERT(VARCHAR, KCRK.USERDATE, 111) between ''' + formatdatetime('yyyy/mm/dd', sdate) + ''' AND ''' + formatdatetime('yyyy/mm/dd', edate) + '''       ');
    SQL.Add('    and ZSZL.zsjc_yw not like ''%TY XUAN%''      ');
    SQL.Add('  Group by KCRK.ZSBH,KCRKS.SBBH  ');    
    SQL.Add('  --============================================================================================================  ');  }
    if AcountN64_CheckBFactory='Y' then
    begin
      SQL.Add('  union all    ');
      SQL.Add('  Select case when ZSZL.MZSDH=''VR02'' or ZSZL.MZSDH=''VJ29'' or ZSZL.MZSDH=''VS64'' or ZSZL.MZSDH=''VB40'' then ZSZL.MZSDH else KCRK.ZSBH end SuppID    ');
      SQL.Add('  	      ,KCRKS.CLBH,Sum(KCRKS.VNACC) as VNACC     ');
      SQL.Add('  from LacTyDB.LIY_ERP.dbo.KCRK KCRK   ');
      SQL.Add('  left join LacTyDB.LIY_ERP.dbo.KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO    ');
      SQL.Add('  left join LacTyDB.LIY_ERP.dbo.ZSZL ZSZL on ZSZL.ZSDH=KCRK.ZSBH    ');
      SQL.Add('  left join LacTyDB.LIY_ERP.dbo.KCZLS KCZLS on KCZLS.CKBH=KCRK.CKBH and KCZLS.CLBH=KCRKS.CLBH  ');
      SQL.Add('  where KCRK.YN=5 and KCZLS.CWBH in(''152'',''153'')    ');
      SQL.Add('    	and  CONVERT(VARCHAR, KCRK.USERDATE, 111) between ''' + formatdatetime('yyyy/mm/dd', sdate) + ''' AND ''' + formatdatetime('yyyy/mm/dd', edate) + '''      ');
      SQL.Add('     and ZSZL.zsywjc not like ''%TY XUAN%''    ');
      SQL.Add('     and VNACC>0  ');
      SQL.Add('     and HGLB<>''GC'' ');
      SQL.Add('  Group by KCRK.ZSBH,ZSZL.MZSDH,KCRKS.CLBH ');
    end;

    SQL.Add('  Insert into KPI_Supplier (YEARS, MONTHS, SupplierID, VNACC, UserID, UserDate, YN)');
    SQL.Add('  select '''+cbx_Year.Text+''' YEARS,'''+cbx_Month.Text+''' MONTHS,SuppID,Sum(VNACC) as VNACC  ');
    SQL.Add('         ,'''+main.edit1.text+''' UserID,getdate()UserDate,''1'' YN ');
    SQL.Add('  from #Entry_Supplier E  ');
    SQL.Add('  group by SuppID ');
    SQL.Add('  order by SuppID  ');
    //funcobj.WriteErrorLog(sql.Text);
    ExecSQL;

  end;

  showmessage('Finish');
  BT_Query.Click;
end;


procedure TSupplier_KPI.BT_QueryClick(Sender: TObject);
begin
  cbx_TopChange(nil);
  QryOpen:=True;
  PC1Change(Nil);
end;

procedure TSupplier_KPI.CalEntryDate();
var y, m, m2: word;
begin
  if (cbx_Year.text = '') or (cbx_Month.text = '')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  if cbx_Month.Text<>'ALL' then
  begin
    y := strtoint(cbx_Year.Text);
    m := strtoint(copy(cbx_Month.Text,1,2));
    m2 := strtoint(copy(cbx_Month.Text,4,2));
    sdate := encodedate(y, m, 1);
    sdate2 := encodedate(y, m2, 1);
    edate := endofthemonth(sdate2);

    if (y > 2999) or (y < 1900) then
    begin
      showmessage('Pls key in right year');
      abort;
    end;
    if (m = 0) or (m > 12) then
    begin
      showmessage('Pls key in right month');
      abort;
    end;
  end;
end;

procedure TSupplier_KPI.PC1Change(Sender: TObject);
begin
  CalEntryDate();
  //
  if PC1.ActivePage=TS1 then
  begin
    Label1.Visible:=False;
    cbx_Top.Visible:=False;
  end else
  begin
    Label1.Visible:=True;
    cbx_Top.Visible:=True;
  end;
  if  QryOpen then
  begin
    //Supplier Trace
    if (QryOpen) and (PC1.ActivePage=TS1)  and (not Qry_Supplier.Active) then
    begin
      With Qry_Supplier do
      begin
        active:=false;
        sql.Clear;
        SQL.Add('select SupplierID, zszl.zsqm SupplierName  ');
        SQL.Add('       ,sum(case when MONTHS=''01-03'' then VNACC end) ''Q1''  ');
        SQL.Add('       ,sum(case when MONTHS=''04-06'' then VNACC end) ''Q2''  ');
        SQL.Add('  	    ,sum(case when MONTHS=''07-09'' then VNACC end) ''Q3''  ');
        SQL.Add('  	    ,sum(case when MONTHS=''10-12'' then VNACC end) ''Q4''  ');
        SQL.Add('from KPI_Supplier  ');
        SQL.Add('left join zszl on zszl.zsdh=KPI_Supplier.SupplierID');
        SQL.Add('where Years='''+cbx_Year.Text+'''  ');
        if Edt_SuppName.Text<>'' then
          SQL.Add('    and SupplierID like ''%'+Edt_SuppName.Text+'%'' ');
        SQL.Add('group by SupplierID, zszl.zsqm  ');
        active:=true;
      end;
    end;
    //Top 10 Supplier
    if (QryOpen) and (PC1.ActivePage=TS2)  and (not Qry_Topten.Active) then
    begin
      With Qry_topten do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select Supp.*,zszl.zsqm SupplierName,isnull(Style,'''')+isnull(Style_Chinese,'''') SuppType,SaleContract.TermPayment,convert(float,VNACC)/convert(float,SUM(VNACC) OVER (PARTITION BY Years))*100 Rate');
        SQL.Add('from(  ');
        SQL.Add('     select *  ');
        SQL.Add('     from(  ');
        SQL.Add('          select ROW_NUMBER() over (ORDER BY VNACC desc)  RN, *  ');
        SQL.Add('          from( ');
        SQL.Add('               select Years,SupplierID,sum(VNACC) VNACC');
        SQL.Add('               from KPI_Supplier  ');
        SQL.Add('               where years='''+cbx_Year.Text+'''  ');
        if cbx_Month.Text<>'ALL' then
          SQL.Add('                 and Months='''+cbx_Month.Text+''' ');
        SQL.Add('               group by Years,SupplierID ');
        SQL.Add('              )Supp  ');
        SQL.Add('         )Supp  ');
        SQL.Add('     where RN<= '''+cbx_Top.Text+'''  ');
        SQL.Add('     union all  ');
        SQL.Add('     select '''+inttostr(strtoint(cbx_Top.Text)+1)+''' RN, Years,''Other'' SupplierID,sum(VNACC) VNACC ');
        SQL.Add('     from(  ');
        SQL.Add('          select ROW_NUMBER() over (ORDER BY VNACC desc)  RN, *  ');
        SQL.Add('          from(  ');
        SQL.Add('               select Years,SupplierID,sum(VNACC) VNACC  ');
        SQL.Add('               from KPI_Supplier  ');
        SQL.Add('               where years='''+cbx_Year.Text+'''   ');
        if cbx_Month.Text<>'ALL' then
          SQL.Add('                 and Months='''+cbx_Month.Text+''' ');
        SQL.Add('               group by Years,SupplierID');
        SQL.Add('              )Supp  ');
        SQL.Add('         )Supp  ');
        SQL.Add('     where RN> '''+cbx_Top.Text+'''  ');
        SQL.Add('     group by Years');
        SQL.Add('   )Supp  ');
        SQL.Add('left join SaleContract on SaleContract.ZSBH=Supp.SupplierID');
        SQL.Add('left join zszl on zszl.zsdh=Supp.SupplierID');
        SQL.Add('order by RN  ');
        Open;
      end;
    end;
    //Compare
    if (QryOpen) and (PC1.ActivePage=TS3)  and (not Qry_Compare.Active) then
    begin
      With Qry_Compare do
      begin
        Close;
        SQL.Clear;
        SQL.Add('  if OBJECT_id(''tempdb..#Top10Supp'') is not null    ');
        SQL.Add('  begin drop table #Top10Supp end    ');
        SQL.Add('  select * into #Top10Supp   ');
        SQL.Add('  from(    ');
        SQL.Add('       select ROW_NUMBER() over (ORDER BY Supp1.VNACC desc)  RN, *    ');
        SQL.Add('       from(    ');
        SQL.Add('            select Years,SupplierID,sum(VNACC) VNACC   ');
        SQL.Add('            from KPI_Supplier    ');
        SQL.Add('            where years= '''+cbx_Year.Text+'''     ');
        if cbx_Month.Text<>'ALL' then
          SQL.Add('             and Months='''+cbx_Month.Text+''' ');
        SQL.Add('            group by Years,SupplierID    ');
        SQL.Add('           )Supp1  ');
        SQL.Add('  	    left join (select Years LastYear,SupplierID Last_SupplierID,sum(VNACC) Last_VNACC   ');
        SQL.Add('                  from KPI_Supplier    ');
        SQL.Add('                  where years= '''+inttostr(strtoint(cbx_Year.Text)-1)+'''    ');
        if cbx_Month.Text<>'ALL' then
          SQL.Add('                   and Months='''+cbx_Month.Text+''' ');
        SQL.Add('                  group by Years,SupplierID )Supp2 on Supp2.Last_SupplierID=Supp1.SupplierID  ');
        SQL.Add('      )Supp10    ');
        SQL.Add('  where RN<= '''+cbx_Top.Text+'''  ');
        //
        SQL.Add('  --=======================================================  ');
        SQL.Add('  if OBJECT_id(''tempdb..#Top11Supp'') is not null    ');
        SQL.Add('  begin drop table #Top11Supp end    ');
        SQL.Add('  select* into #Top11Supp  ');
        SQL.Add('  from(  ');
        SQL.Add('       select '''+inttostr(strtoint(cbx_Top.Text)+1)+''' RN, Years,''Other'' SupplierID,sum(VNACC) VNACC   ');
        SQL.Add('       from(    ');
        SQL.Add('            select ROW_NUMBER() over (ORDER BY Supp1.VNACC desc)  RN, *    ');
        SQL.Add('            from(    ');
        SQL.Add('                 select Years,SupplierID,sum(VNACC) VNACC   ');
        SQL.Add('                 from KPI_Supplier    ');
        SQL.Add('                 where years= '''+cbx_Year.Text+'''     ');
        if cbx_Month.Text<>'ALL' then
          SQL.Add('                   and Months='''+cbx_Month.Text+''' ');
        SQL.Add('                 group by Years,SupplierID    ');
        SQL.Add('                )Supp1  ');
        SQL.Add('           )Supp    ');
        SQL.Add('      where RN> '''+cbx_Top.Text+'''  ');
        SQL.Add('      group by Years) Supp11  ');
        SQL.Add('  left join (select Years LastYear,''Other'' Last_SupplierID,sum(VNACC) Last_VNACC   ');
        SQL.Add('             from KPI_Supplier    ');
        SQL.Add('             where years= '''+inttostr(strtoint(cbx_Year.Text)-1)+'''    ');
        if cbx_Month.Text<>'ALL' then
          SQL.Add('               and Months='''+cbx_Month.Text+''' ');
        SQL.Add('  				      and not exists(select 1 from #Top10Supp TopSupp where Last_SupplierID=KPI_Supplier.SupplierID and RN<= '''+cbx_Top.Text+''')  ');
        SQL.Add('             group by Years )Supp2 on Supp2.Last_SupplierID=Supp11.SupplierID  ');
        SQL.Add('  --=======================================================  ');
        SQL.Add('  select RN,SupplierID,zszl.zsqm SupplierName,SaleContract.TermPayment,''公司'' SupType  ');
        SQL.Add('         ,Last_VNACC,convert(float,Last_VNACC)/convert(float,SUM(Last_VNACC) OVER (PARTITION BY LastYear))*100 Last_Rate  ');
        SQL.Add('         ,VNACC,convert(float,VNACC)/convert(float,SUM(VNACC) OVER (PARTITION BY Years))*100 Rate  ');
        SQL.Add('  	      ,Last_VNACC-VNACC Diff  ');
        SQL.Add('         ,isnull(Style,'''')+isnull(Style_Chinese,'''') MatType  ');
        SQL.Add('  from(  ');
        SQL.Add('       select* from #Top10Supp  ');
        SQL.Add('       union all   ');
        SQL.Add('       select* from #Top11Supp)Supp  ');
        SQL.Add('  left join SaleContract on SaleContract.ZSBH=Supp.SupplierID   ');
        SQL.Add('  left join zszl on zszl.zsdh=Supp.SupplierID  ');
        Open;
      end;
    end;
    if  (QryOpen) and (PC1.ActivePage=TS4) and (not Qry_Detail.Active) then
    begin
      With Qry_Detail do
      begin
        if AcountN64_CheckBFactory='Y' then
        begin
          Close;
          SQL.Clear;
          SQL.Add('  SET ANSI_NULLS ON  ');
          SQL.Add('  SET ANSI_WARNINGS ON  ');
          ExecSQL;
        end;
        Close;
        sql.Clear;
        if cbx_Top.Text<>'' then
        begin
          SQL.Add('  if OBJECT_id(''tempdb..#TopSupp'') is not null    ');
          SQL.Add('  begin drop table #TopSupp end    ');
          SQL.Add('  select * into #TopSupp   ');
          SQL.Add('  from(    ');
          SQL.Add('       select ROW_NUMBER() over (ORDER BY Supp1.VNACC desc)  RN, *    ');
          SQL.Add('       from(    ');
          SQL.Add('            select Years,SupplierID,sum(VNACC) VNACC   ');
          SQL.Add('            from KPI_Supplier    ');
          SQL.Add('            where years= '''+cbx_Year.Text+'''     ');
          if cbx_Month.Text<>'ALL' then
            SQL.Add('             and Months='''+cbx_Month.Text+''' ');
          SQL.Add('            group by Years,SupplierID    ');
          SQL.Add('           )Supp1  ');
          SQL.Add('      )Supp10    ');
          SQL.Add('  where RN<= '''+cbx_Top.Text+'''  ');
        end;
        SQL.Add(' if OBJECT_id(''tempdb..#EntryDetail'') is not null  ');
        SQL.Add(' begin drop table #EntryDetail end  ');
        SQL.Add(' SELECT * into #EntryDetail  ');
        SQL.Add(' FROM(  ');
        SQL.Add(' Select '''+cbx_Year.Text+''' Years,'''+cbx_Month.Text+''' Months ,KCRK.GSBH,KCRK.CKBH,KCRK.RKNO,KCRK.ZSBH SupplierID,ZSZL.zsqm SupplierName,KCRK.ZSNO,KCRK.DOCNO,KCPK.Declaretion DECLARATION ');
        SQL.Add('        ,KCRK.USERDATE RKDate,KCRK.CFMDATE,KCRKS.CLBH,CLZL.YWPM MatName,CLZL.DWBH,KCZLS.CWBH,KCRKS.PaQty,KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,cast(KCRKS.CWHL as int)CWHL,KCRKS.VNPrice ');
        SQL.Add('        ,KCRKS.VNACC,KCRKS.ExchACC,KCRKS.CGBH,KCRKS.RKSB,KCRKS.CostID,KCRKS.CNO  ');
        SQL.Add('	       ,Case when KCRK.HGLB =''NK'' then CLHG.HGPM when KCRK.HGLB =''TC'' then CLTC.HGPM when KCRK.HGLB=''HD'' then  CLHD.HGPM  ');
        SQL.Add('              when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.HGPM else  NULL end as HQName ');
        SQL.Add('        ,Case when KCRK.HGLB =''NK'' then CLHG.UnitC when KCRK.HGLB =''TC'' then CLTC.UnitC when KCRK.HGLB=''HD'' then  CLHD.UnitC ');
        SQL.Add('              when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.UnitC else  NULL end as UnitC  ');
        SQL.Add('        ,Case when KCRK.HGLB =''NK'' then CLHG.RateC when KCRK.HGLB =''TC'' then CLTC.RateC when KCRK.HGLB=''HD'' then  CLHD.RateC  ');
        SQL.Add('              when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.RateC else  NULL end as RateC ');
        SQL.Add('  	     ,KCRK.HGLB,CWFK.FKBH  ');
        SQL.Add(' From (select * from  KCRKS union all select * from  KCRKS_2014) KCRKS ');
        SQL.Add(' Left join (select * from KCRK union all select * from  KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO  ');
        SQL.Add(' Left join  CLZL on CLZL.CLDH=KCRKS.CLBH ');
        SQL.Add(' Left join CLHG on CLHG.CLBH=KCRKS.CLBH and KCRK.HGLB=''NK'' ');
        SQL.Add(' Left join CLTC on CLTC.CLBH=KCRKS.CLBH and KCRK.HGLB=''TC'' ');
        SQL.Add(' Left join CLHD on CLHD.CLBH=KCRKS.CLBH and KCRK.HGLB=''HD'' ');
        SQL.Add(' Left join CLKD on CLKD.CLBH=KCRKS.CLBH and KCRK.HGLB=''KD'' ');
        SQL.Add(' Left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
        SQL.Add(' Left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH ');
        SQL.Add(' Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
        SQL.Add(' Left join KCPK on KCPK.PKNO=KCRK.RKNO ');
        SQL.Add(' Left join CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB ');
        SQL.Add(' Left join CWFK ON CWFK.FKBH=CWYF.FKBH ');
        SQL.Add(' Where 1=1 ');
        if cbx_Month.Text<>'ALL' then
        begin
          SQL.Add('  and Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between   ');
          SQL.Add('        ''' + formatdatetime('yyyy/mm/dd', sdate) + ''' AND ''' + formatdatetime('yyyy/mm/dd', edate) + '''   ');
        end else
          SQL.Add('  and year(KCRK.USERDate)='''+cbx_Year.Text+''' ');
        if cbx_Top.Text<>'' then
          SQL.Add('    and exists(select SupplierID from #TopSupp where SupplierID=KCRK.ZSBH )');
        SQL.Add(' and KCZLS.CWBH in (''152'',''153'') ');
        SQL.Add(' and KCRK.HGLB<>''GC'' AND KCRKS.VNACC>0 ');
        SQL.Add(' and ZSZL.zsywjc not like ''%TY XUAN%''  ');
        SQL.Add('    --=================  ');
        SQL.Add('  union all	  ');
        SQL.Add('  select '''+cbx_Year.Text+''' Years,'''+cbx_Month.Text+''' Months ,KCRK.GSBH,KCRK.GSBH CKBH,KCRK.RKNO,KCRK.ZSBH SupplierID,ZSZL.zsjc_yw SuplierName,KCRK.ZSNO,'''' DOCNO,'''' Declaretion  ');
        SQL.Add('  	   ,KCRK.USERDATE RKDate,KCRK.CFMDATE,KCRKS.SBBH CLBH,TSCD_SB.VWPM  MatName,TSCD_SB.DWBH,''153'' CWBH  ');
        SQL.Add('  	   ,KCRKS.Qty PaQty,KCRKS.Qty ,KCRKS.USPrice,KCRKS.USACC  ');
        SQL.Add('  	   ,cast(KCRKS.CWHL as int)CWHL , KCRKS.VNPrice,KCRKS.VNACC,KCRKS.ExchACC,KCRKS.TSBH CGBH,'''' RKSB,KCRKS.CostID,'''' CNO,'''' HQName,'''' UnitC,'''' RateC  ');
        SQL.Add('  	   ,'''' HGLB,'''' FKBH  ');
        SQL.Add('  from CCDC_KCRK KCRK      ');
        SQL.Add('  left join CCDC_KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO      ');
        SQL.Add('  left join TSCD_ZSZL ZSZL on ZSZL.ZSDH=KCRK.ZSBH      ');
        SQL.Add('  left join TSCD_SB TSCD_SB on KCRKS.SBBH=TSCD_SB.SBBH   ');
        SQL.Add('  where KCRK.YN=5      ');
        if cbx_Month.Text<>'ALL' then
          SQL.Add('    and CONVERT(VARCHAR, KCRK.USERDATE, 111) between  ''' + formatdatetime('yyyy/mm/dd', sdate) + ''' AND ''' + formatdatetime('yyyy/mm/dd', edate) + '''       ')
        else
          SQL.Add('    and year(KCRK.USERDATE)='''+cbx_Year.Text+''' ');
        if cbx_Top.Text<>'' then
            SQL.Add('    and exists(select SupplierID from #TopSupp where SupplierID=KCRK.ZSBH)');
        SQL.Add('    and ZSZL.zsjc_yw not like ''%TY XUAN%''  ');
        SQL.Add('    --=================  ');
        //20240124 not calculate Asssest
        {SQL.Add('  union all	  ');
        SQL.Add('  Select '''+cbx_Year.Text+''' Years,'''+cbx_Month.Text+''' Months ,KCRK.GSBH,KCRK.GSBH as CKBH,KCRK.RKNO,KCRK.ZSBH SupplierID,ZSZL.zsjc_yw SupplierName,KCRK.ZSNO,KCRK.DOCNO,KCPK.Declaretion,KCRK.USERDATE RKDate    ');
        SQL.Add('    	   ,KCRK.CFMDATE,KCRKS.SBBH CLBH,TSCD_SB.VWPM  MatName,TSCD_SB.DWBH DWBH,'''' CWBH,'''' as PaQty,KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC    ');
        SQL.Add('    	   ,cast(KCRKS.CWHL as int)CWHL,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.VNTax_HG,'''' as CGBH,'''' as RKSB,KCRKS.CostID,'''' as CNO    ');
        SQL.Add('    	   ,'''' as HQName,'''' as UnitC,'''' as RateC,'''' as HGLB,'''' as FKBH    ');
        SQL.Add('  from TSCD_KCRKS KCRKS    ');
        SQL.Add('  left join TSCD_KCRK KCRK on KCRK.RKNO=KCRKS.RKNO    ');
        SQL.Add('  left join TSCD_SB on KCRKS.SBBH=TSCD_SB.SBBH     ');
        SQL.Add('  left join TSCD_ZSZL ZSZL on ZSZL.ZSDH=KCRK.ZSBH    ');
        SQL.Add('  left join TSCD_KCPK KCPK on KCPK.PKNO=KCRK.RKNO     ');
        SQL.Add('  where KCRK.YN=5      ');
        if cbx_Month.Text<>'ALL' then
          SQL.Add('    and CONVERT(VARCHAR, KCRK.USERDATE, 111) between ''' + formatdatetime('yyyy/mm/dd', sdate) + ''' AND ''' + formatdatetime('yyyy/mm/dd', edate) + '''       ')
        else
          SQL.Add('    and year(KCRK.USERDATE)='''+cbx_Year.Text+''' ');
        SQL.Add('    and ZSZL.zsjc_yw not like ''%TY XUAN%''  ');
        if cbx_Top.Text<>'' then
          SQL.Add('    and exists(select SupplierID from #TopSupp where SupplierID=KCRK.ZSBH)');
        SQL.Add('    --=================  ');  }
        if AcountN64_CheckBFactory='Y' then
        begin
          SQL.Add('  union all  ');
          SQL.Add('  select '''+cbx_Year.Text+''' Years,'''+cbx_Month.Text+''' Months ,*  ');
          SQL.Add('  from LacTyDB.LIY_ERP.[dbo].[View_KCRKS] KCRKS  ');
          if cbx_Month.Text<>'ALL' then
          begin
            SQL.Add('  where convert(varchar,RKDate,111) between ');
            SQL.Add('        ''' + formatdatetime('yyyy/mm/dd', sdate) + ''' AND ''' + formatdatetime('yyyy/mm/dd', edate) + '''   ');
          end else
            SQL.Add('  where year(RKDate)='''+cbx_Year.Text+''' ');
          if cbx_Top.Text<>'' then
            SQL.Add('    and exists(select SupplierID from #TopSupp where SupplierID=KCRKS.SupplierID)');
        end;
        SQL.Add('  ) A  ');

        SQL.Add('  SELECT* FROM #EntryDetail  ');
        if Edt_SuppName.Text<>'' then
          SQL.Add(' WHERE SupplierID LIKE ''%'+Edt_SuppName.Text+'%'' ');
        SQL.Add('  ORDER BY SupplierID,CKBH,RKNO  ');
        //funcobj.WriteErrorLog(sql.Text);
        Active:=True;
      end;
    end;
  end;
end;

procedure TSupplier_KPI.BT_ExcelClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,k:integer;
begin
  if  PC1.ActivePage=TS1 then
  begin
    if Qry_Supplier.Active then
    begin
      if Qry_Supplier.recordcount=0 then
      begin
          showmessage('No record.');
          abort;
      end;
    end else
    begin
        showmessage('No record.');
        abort;
    end;

    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.Cells(1,1):='NO';
      for   i:=1   to   Qry_Supplier.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=Qry_Supplier.fields[i-1].FieldName;
        if (Qry_Supplier.fields[i-1].FieldName='Q1') or (Qry_Supplier.fields[i-1].FieldName='Q2') or (Qry_Supplier.fields[i-1].FieldName='Q3') or (Qry_Supplier.fields[i-1].FieldName='Q4') then
          eclApp.Columns[i+1].NumberFormat:='##,#0';
      end;
      Qry_Supplier.First;
      j:=2;
      while   not  Qry_Supplier.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Qry_Supplier.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=Qry_Supplier.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        end;
        Qry_Supplier.Next;
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
  //
  if  PC1.ActivePage=TS2 then
  begin
    if Qry_topten.Active then
    begin
      if Qry_topten.recordcount=0 then
      begin
          showmessage('No record.');
          abort;
      end;
    end else
    begin
        showmessage('No record.');
        abort;
    end;

    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   Qry_topten.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=Qry_topten.fields[i].FieldName;
        if Qry_topten.fields[i].FieldName='VNACC' then
          eclApp.Columns[i+1].NumberFormat:='##,#0';
      end;
      Qry_topten.First;
      j:=2;
      while   not  Qry_topten.Eof   do
      begin
        for   i:=0   to   Qry_topten.fieldcount-1   do
        begin
          eclApp.Cells(j,i+1):=Qry_topten.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        end;
        Qry_topten.Next;
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
  //
  if  PC1.ActivePage=TS3 then
  begin
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
       CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN64.xlsx'),Pchar(AppDir+'Additional\Account_SN64.xlsx'),false);
    if FileExists(AppDir+'Additional\Account_SN64.xlsx') then
    begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        eclApp.DisplayAlerts := False;
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN64.xlsx');

        eclApp.ActiveSheet.Rows[4].NumberFormatLocal:='@';
        eclApp.Cells(4,6):= inttostr(strtoint(cbx_Year.Text)-1);
        eclApp.Cells(4,8):= cbx_Year.text;

        Qry_Compare.First;
        j:=7;
        while not Qry_Compare.Eof   do
        begin
          for i:=0 to Qry_Compare.FieldCount-1 do
          begin
            eclApp.Cells(j,i+1):=Qry_Compare.Fields[i].Value;
            if Qry_Compare.Fields[i].AsString='Other' then
              eclApp.Cells(j,i+1):='其他' ;
          end;
          Qry_Compare.Next;
          inc(j);
        end;
        eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,3]].font.Bold:=true;
        eclApp.Cells(j,1):= 'TOTAL';
        eclApp.Cells(j,3):= '合計';
        eclApp.Cells[j,6].Formula:='=SUM(F7:F'+inttostr(j-1)+')';
        eclApp.Cells[j,7].Formula:='=SUM(G7:G'+inttostr(j-1)+')';
        eclApp.Cells[j,8].Formula:='=SUM(H7:H'+inttostr(j-1)+')';
        eclApp.Cells[j,9].Formula:='=SUM(I7:I'+inttostr(j-1)+')';
        eclApp.Cells[j,10].Formula:='=SUM(J7:J'+inttostr(j-1)+')';
        eclApp.Range[eclApp.Cells[7,10],eclApp.Cells[j,10]].interior.color:=$99FFFF ;
        // add outline
        for k:=1 to 4 do
        begin
           eclApp.range[eclApp.cells[7,1],eclApp.cells[j,i+2]].borders[k].linestyle:=1;
        end;
        //
        eclapp.columns.autofit;
        //showmessage('Succeed.');
        eclApp.Visible:=True;
      except
        on   F:Exception   do
        showmessage(F.Message);
      end;
    end;
  end;
  //
  if  PC1.ActivePage=TS4 then
  begin
    if Qry_Detail.Active then
    begin
      if Qry_Detail.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
    end else
    begin
      showmessage('No record.');
      abort;
    end;

    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook:=eclApp.workbooks.Add;
      eclApp.Cells(1,1):='NO';

      for i:=1 to DBGridEh4.FieldCount do
      begin
        eclApp.cells(1,i+1) := DBGridEh4.Columns[i-1].Title.Caption;
        if (DBGridEh4.Columns[i-1].Title.Caption='發票|INVOICE/VATNO') or (DBGridEh4.Columns[i-1].Title.Caption='報關單|TOKHAI') then
            eclApp.Columns[i+1].NumberFormat:='@';
      end;

      j:=2;
      Qry_Detail.First;
      while   not  Qry_Detail.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;

        for i:=1 to DBGridEh4.FieldCount do
        begin
          eclApp.cells(j,i+1) := (DBGridEh4.Fields[i-1].AsString);
        end;

        Qry_Detail.Next;
        Inc(j);

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

procedure TSupplier_KPI.Qry_CompareAfterOpen(DataSet: TDataSet);
begin
  if cbx_Month.Text<>'ALL' then
  begin
    with Qry_Temp do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select* from KPI_Supplier');
      sql.Add('where YEARS='''+cbx_Year.Text+''' and MONTHS='''+cbx_Month.Text+''' ');
      active:=true;
    end;
    if Qry_Temp.RecordCount=0 then
    begin
      if messagedlg('No data '''+cbx_Year.Text+'/'+cbx_Month.Text+'''. Do you want to calculate it ?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        btn_Monthly.Click;
      end;
    end;
  end;
  //
  with DBGridEh3 do
  begin
    columns[5].Title.Caption:='Last Year|VNACC|進貨淨額';
    columns[6].Title.Caption:='Last Year|Rate|進貨比率';
    columns[7].Title.Caption:='This Year|VNACC|進貨淨額';
    columns[8].Title.Caption:='This Year|Rate|進貨比率';

    if copy(columns[5].Title.Caption,1,9)='Last Year' then
    begin
      columns[5].Title.Caption:=inttostr(strtoint(cbx_Year.Text)-1)+'|'+copy(columns[5].Title.Caption,10,length(columns[5].Title.Caption));
      columns[6].Title.Caption:=inttostr(strtoint(cbx_Year.Text)-1)+'|'+copy(columns[6].Title.Caption,10,length(columns[6].Title.Caption));
    end;
    if copy(columns[7].Title.Caption,1,9)='This Year' then
    begin
      columns[7].Title.Caption:=cbx_Year.Text+'|'+copy(columns[7].Title.Caption,10,length(columns[7].Title.Caption));
      columns[8].Title.Caption:=cbx_Year.Text+'|'+copy(columns[8].Title.Caption,10,length(columns[8].Title.Caption));
    end;
  end;
end;

procedure TSupplier_KPI.btn_DataClick(Sender: TObject);
begin
  CalEntryDate();
  //
  with Qry_Temp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT 1 FROM AFactory_EntryDetail ');
    sql.Add('WHERE YEARS='''+cbx_Year.Text+''' AND MONTHS='''+cbx_Month.Text+''' ');
    active:=true;
    if RecordCount>0 then
    begin
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with Qry_Temp do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE AFactory_EntryDetail ');
          sql.Add('WHERE YEARS='''+cbx_Year.Text+''' AND MONTHS='''+cbx_Month.Text+''' ');
          ExecSQL;
        end;
      end;
    end;
  end;
  //
  with Qry_Monthly do
  begin
    Close;
    SQL.Clear;
    SQL.Add('  SET ANSI_NULLS ON  ');
    SQL.Add('  SET ANSI_WARNINGS ON  ');
    ExecSQL;
    //
    Active:=false;
    SQL.Clear;
    SQL.Add('  if OBJECT_id(''tempdb..#TopSupp'') is not null    ');
    SQL.Add('  begin drop table #TopSupp end    ');
    SQL.Add('  select * into #TopSupp   ');
    SQL.Add('  from(    ');
    SQL.Add('       select ROW_NUMBER() over (ORDER BY Supp1.VNACC desc)  RN, *    ');
    SQL.Add('       from(    ');
    SQL.Add('            select Years,SupplierID,sum(VNACC) VNACC   ');
    SQL.Add('            from KPI_Supplier    ');
    SQL.Add('            where years= '''+cbx_Year.Text+'''     ');
    if cbx_Month.Text<>'ALL' then
      SQL.Add('             and Months='''+cbx_Month.Text+''' ');
    SQL.Add('            group by Years,SupplierID    ');
    SQL.Add('           )Supp1  ');
    SQL.Add('      )Supp10    ');
    SQL.Add('  where RN<= '''+cbx_Top.Text+'''  ');

    SQL.Add('  if OBJECT_id(''tempdb..#AFac_Entry'') is not null  ');
    SQL.Add('  begin drop table #AFac_Entry end  ');
    SQL.Add('  SELECT * into #AFac_Entry  ');
    SQL.Add('  FROM(  ');
    SQL.Add('  Select KCRK.GSBH  ');
    SQL.Add('        ,KCRK.CKBH  ');
    SQL.Add('        ,KCRK.RKNO  ');
    SQL.Add('  		   ,KCRK.ZSBH SupplierID  ');
    SQL.Add('  		   ,ZSZL.zsqm SupplierName ');
    SQL.Add('  		   ,KCRK.ZSNO  ');
    SQL.Add('  		   ,KCRK.DOCNO  ');
    SQL.Add('  		   ,KCPK.Declaretion  ');
    SQL.Add('  		   ,KCRK.USERDATE RKDate  ');
    SQL.Add('  		   ,KCRK.CFMDATE  ');
    SQL.Add('  		   ,KCRKS.CLBH   ');
    SQL.Add('        ,CLZL.YWPM MatName  ');
    SQL.Add('  		   ,CLZL.DWBH  ');
    SQL.Add('  		   ,KCZLS.CWBH  ');
    SQL.Add('  		   ,KCRKS.PaQty  ');
    SQL.Add('  		   ,KCRKS.Qty  ');
    SQL.Add('  		   ,KCRKS.USPrice  ');
    SQL.Add('  		   ,KCRKS.USACC  ');
    SQL.Add('  		   ,cast(KCRKS.CWHL as int)CWHL ');
    SQL.Add('  		   ,KCRKS.VNPrice  ');
    SQL.Add('  		   ,KCRKS.VNACC  ');
    SQL.Add('  		   ,KCRKS.ExchACC   ');
    SQL.Add('        ,KCRKS.CGBH  ');
    SQL.Add('  		   ,KCRKS.RKSB  ');
    SQL.Add('  		   ,KCRKS.CostID  ');
    SQL.Add('  		   ,KCRKS.CNO  ');
    SQL.Add('  		   ,Case when KCRK.HGLB =''NK'' then CLHG.HGPM when KCRK.HGLB =''TC'' then CLTC.HGPM when KCRK.HGLB=''HD'' then  CLHD.HGPM  ');
    SQL.Add('              when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.HGPM else  NULL end as HQName  ');
    SQL.Add('        ,Case when KCRK.HGLB =''NK'' then CLHG.UnitC when KCRK.HGLB =''TC'' then CLTC.UnitC when KCRK.HGLB=''HD'' then  CLHD.UnitC  ');
    SQL.Add('              when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.UnitC else  NULL end as UnitC  ');
    SQL.Add('        ,Case when KCRK.HGLB =''NK'' then CLHG.RateC when KCRK.HGLB =''TC'' then CLTC.RateC when KCRK.HGLB=''HD'' then  CLHD.RateC  ');
    SQL.Add('              when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.RateC else  NULL end as RateC  ');
    SQL.Add('  	    ,KCRK.HGLB  ');
    SQL.Add('  	    ,CWFK.FKBH  ');
    SQL.Add('  from (select * from ltx.liy_erp.dbo.KCRKS KCRKS union all select * from ltx.liy_erp.dbo.KCRKS_2014 KCRKS_2014) KCRKS  ');
    SQL.Add('  left join (select * from ltx.liy_erp.dbo.KCRK KCRK union all select * from ltx.liy_erp.dbo.KCRK_2014 KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO  ');
    SQL.Add('  left join ltx.liy_erp.dbo.CLZL CLZL on CLZL.CLDH=KCRKS.CLBH  ');
    SQL.Add('  left join ltx.liy_erp.dbo.CLHG CLHG on CLHG.CLBH=KCRKS.CLBH and KCRK.HGLB=''NK''  ');
    SQL.Add('  left join ltx.liy_erp.dbo.CLTC CLTC on CLTC.CLBH=KCRKS.CLBH and KCRK.HGLB=''TC''  ');
    SQL.Add('  left join ltx.liy_erp.dbo.CLHD CLHD on CLHD.CLBH=KCRKS.CLBH and KCRK.HGLB=''HD''  ');
    SQL.Add('  left join ltx.liy_erp.dbo.CLKD CLKD on CLKD.CLBH=KCRKS.CLBH and KCRK.HGLB=''KD''  ');
    SQL.Add('  left join ltx.liy_erp.dbo.ZSZL ZSZL on ZSZL.ZSDH=KCRK.ZSBH  ');
    SQL.Add('  left join ltx.liy_erp.dbo.KCZLS KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH   ');
    SQL.Add('  left join ltx.liy_erp.dbo.KCCK KCCK on KCCK.CKBH=KCRK.CKBH   ');
    SQL.Add('  left join ltx.liy_erp.dbo.KCPK KCPK on KCPK.PKNO=KCRK.RKNO   ');
    SQL.Add('  left join ltx.liy_erp.dbo.CWYF CWYF on CWYF.DJNO=KCRKS.RKNO AND CWYF.CLBH=KCRKS.CLBH AND CWYF.CGBH=KCRKS.CGBH AND CWYF.DJLX=KCRKS.RKSB   ');
    SQL.Add('  left join ltx.liy_erp.dbo.CWFK CWFK ON CWFK.FKBH=CWYF.FKBH   ');
    SQL.Add('  where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between   ');
    SQL.Add('        ''' + formatdatetime('yyyy/mm/dd', sdate) + ''' AND ''' + formatdatetime('yyyy/mm/dd', edate) + '''   ');
    SQL.Add('    and KCZLS.CWBH in(''152'',''153'')  ');
    SQL.Add('    and exists(select SupplierID from #TopSupp where SupplierID=zszl.zsdh)');
    SQL.Add('    and KCRK.HGLB<>''GC''  ');
    SQL.Add('    and KCRKS.VNACC>0 ');
    SQL.Add(')Detail');
    SQL.Add('  Insert into AFactory_EntryDetail  (Years,Months,GSBH,CKBH,RKNO,SupplierID,SupplierName,ZSNO,DOCNO,DECLARATION,RKDATE,CFMDATE,CLBH,MatName,DWBH,CWBH,PaQty,QTY,USPRICE,USACC,CWHL,VNPRICE,VNACC,EXCHACC,CGBH,RKSB,COSTID,CNO,HQName,UnitC,RateC,HGLB,FKBH)');
    SQL.Add('  SELECT '''+cbx_Year.Text+''' Years, '''+cbx_Month.Text+''' Months,* FROM #AFac_Entry  ');
    ExecSQL;
  end;
  showmessage('Finish');
  BT_Query.Click;
end;

procedure TSupplier_KPI.Qry_DetailAfterOpen(DataSet: TDataSet);
begin
{
  if cbx_Month.Text<>'ALL' then
  begin
    with Qry_Temp do
    begin
      active:=false;
      sql.Clear;
      sql.Add('SELECT 1 FROM AFactory_EntryDetail');
      sql.Add('WHERE YEARS='''+cbx_Year.Text+''' AND MONTHS='''+cbx_Month.Text+''' ');
      active:=true;
    end;
    if Qry_Temp.RecordCount=0 then
    begin
      if messagedlg('No data '''+cbx_Year.Text+'/'+cbx_Month.Text+'''. Do you want to get data ?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        btn_Data.Click;
      end;
    end;
  end;
  }
end;

procedure TSupplier_KPI.cbx_TopChange(Sender: TObject);
begin
  QryOpen:=False;
  Qry_Supplier.Close;
  Qry_Topten.Close;
  Qry_Compare.Close;
  Qry_Detail.Close;
end;

procedure TSupplier_KPI.Qry_DetailBeforeOpen(DataSet: TDataSet);
begin
  if cbx_Top.Text<>'' then
  begin
    DBGridEh4.FooterRowCount:=1;
    DBGridEh4.SumList.Active:=True;
  end else
  begin
    DBGridEh4.FooterRowCount:=0;
    DBGridEh4.SumList.Active:=False;
  end;
end;

end.


