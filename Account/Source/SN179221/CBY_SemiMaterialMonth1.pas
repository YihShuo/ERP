unit CBY_SemiMaterialMonth1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  DateUtils, comobj, Menus, ADODB, iniFiles;

type
  TCBY_SemiMaterialMonth = class(TForm)
    PC1: TPageControl;
    TS2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    DDBHEdit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    TempQry: TQuery;
    DS2: TDataSource;
    Query2: TQuery;
    DBGridEh2: TDBGridEh;
    Query2DDBH: TStringField;
    Query2VNACC: TCurrencyField;
    Query2SemiVNACC: TCurrencyField;
    Query2FShoeVNACC: TFloatField;
    Query2FShoe1Pair_VNACC: TFloatField;
    Query2VNACCMon: TCurrencyField;
    Query2ZVNACC: TFloatField;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Button3: TButton;
    Button4: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DDBHEdit1: TEdit;
    DBGridEh3: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1DDBH: TStringField;
    Query1VNACC: TCurrencyField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1ARTICLE: TStringField;
    Button6: TButton;
    Button8: TButton;
    Label8: TLabel;
    CBX_HGLB1: TComboBox;
    Label9: TLabel;
    CBX_HGLB2: TComboBox;
    CheckBox1: TCheckBox;
    Label10: TLabel;
    CPNVLPBLabel: TLabel;
    Label15: TLabel;
    CWBHEdit2: TEdit;
    Label13: TLabel;
    CWBHEdit1: TEdit;
    chk_PB1: TCheckBox;
    Query1CKBH: TStringField;
    Query2Pairs: TFloatField;
    Query2FKCQy: TFloatField;
    Query2NoFKCQty1: TFloatField;
    Query2InQty: TFloatField;
    Query2NotInQty: TFloatField;
    PopupMenu1: TPopupMenu;
    Adjust_NVL_PB: TMenuItem;
    Adjust_NVL_TT: TMenuItem;
    PopupMenu2: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UPDet1: TUpdateSQL;
    OpenDialog1: TOpenDialog;
    N1: TMenuItem;
    mnu1: TMenuItem;
    Button5: TButton;
    Label14: TLabel;
    CBX3: TComboBox;
    Label16: TLabel;
    CBX4: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    N2: TMenuItem;
    Save_GT: TMenuItem;
    CheckQry: TQuery;
    Confirm_GT: TMenuItem;
    N3: TMenuItem;
    Modify_SL: TMenuItem;
    Save_SL: TMenuItem;
    Cancel_SL: TMenuItem;
    UPDet2: TUpdateSQL;
    Query2BDEDesigner30: TFloatField;
    Query2BDEDesigner3160: TFloatField;
    Query2BDEDesigner6190: TFloatField;
    Query2BDEDesigner91120: TFloatField;
    Query2BDEDesigner121180: TFloatField;
    Query2BDEDesigner181360: TFloatField;
    Query2BDEDesigner360: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Adjust_NVL_PBClick(Sender: TObject);
    procedure Adjust_NVL_TTClick(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure DBGridEh2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure mnu1Click(Sender: TObject);
    procedure Save_GTClick(Sender: TObject);
    procedure Confirm_GTClick(Sender: TObject);
    procedure Modify_SLClick(Sender: TObject);
    procedure Save_SLClick(Sender: TObject);
    procedure Cancel_SLClick(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
  private
    AppDir:string;
    { Private declarations }
    procedure Readini();
    procedure ExportDefaultExcel(Query:TQuery);
    procedure ExportFormatExcel(Query:TQuery);
    procedure CW_MatCostMonth();
    procedure CW_MatCostMonth_Temp();
  public
    CKBHID:String;//代表原材料倉全部庫別
    CKBH_SQL:string; //原材料倉 SQL
    { Public declarations }
  end;

var
  CBY_SemiMaterialMonth: TCBY_SemiMaterialMonth;

implementation

uses
  CBY_SemiMaterialMonth_ZZ1, FunUnit, main1, CBY_MaterialCostReport_Print1,
  Adjust_CPNVL_PB_CDC1, CBY_SemiMaterialMonth_Detail1;

{$R *.dfm}
procedure TCBY_SemiMaterialMonth.Readini();
var MyIni:TiniFile;
begin
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      CKBHID:=MyIni.ReadString('Account_N179221_Develop','CKBHID','CDC');
      CKBH_SQL:=MyIni.ReadString('Account_N179221_Develop','CKBH_SQL',' in (''CDC'',''CDT'',''BYC'',''BYT'',''SRC'',''SRT'',''SDC'',''SDT'',''CBY'')');
    finally
      MyIni.Free;
    end;
  end;  
end;


procedure TCBY_SemiMaterialMonth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCBY_SemiMaterialMonth.FormDestroy(Sender: TObject);
begin
  CBY_SemiMaterialMonth := Nil;
end;

procedure TCBY_SemiMaterialMonth.CW_MatCostMonth();
begin
  with TempQry do begin
    Active := false;
    SQL.Clear;
    SQL.Add('select top 1 KCYEAR, KCMonth from CW_MatCostMonth order by KCYEAR desc,KCMONTH desc');
    Active := true;
  end;
  with  query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#SemiMat_Mon'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SemiMat_Mon END ');
    SQL.Add('Select *  ');
    SQL.Add(',case when (diffdate <=30) then CW_MatCostMonth.NotInQty else 0 end as ''<=30'' ');
    SQL.Add(',case when (diffdate >30) and (diffdate <=60) then CW_MatCostMonth.NotInQty else 0 end as ''31~60'' ');
    SQL.Add(',case when (diffdate >60) and (diffdate <=90) then CW_MatCostMonth.NotInQty else 0 end as ''61~90'' ');
    SQL.Add(',case when (diffdate >90) and (diffdate <=120) then CW_MatCostMonth.NotInQty else 0 end as ''91~120'' ');
    SQL.Add(',case when (diffdate >120) and (diffdate <=180) then CW_MatCostMonth.NotInQty else 0 end as ''121~180'' ');
    SQL.Add(',case when (diffdate >180) and (diffdate <=360) then CW_MatCostMonth.NotInQty else 0 end as ''181~360'' ');
    SQL.Add(',case when (diffdate >360) then CW_MatCostMonth.NotInQty else 0 end as ''>360'' ');
    SQL.Add('into #SemiMat_Mon ');
    SQL.Add('from ( ');
//    if (CBX3.Text = TempQry.FieldByName('KCYEAR').AsString) and (CBX4.Text >= TempQry.FieldByName('KCMonth').AsString) then
    if (CBX3.Text = TempQry.FieldByName('KCYEAR').AsString) then begin
      if (CBX4.Text >= TempQry.FieldByName('KCMonth').AsString) then
        SQL.Add('select CW_MatCostMonth.*,DATEDIFF(day, (select max(CFMDate) from KCLL left join KCLLS on KCLL.LLNO = KCLLS.LLNO where KCLLS.SCBH = CW_MatCostMonth.DDBH) , CONVERT(VARCHAR(10), GETDATE(), 111) ) as diffdate ')
      else
        SQL.Add('select CW_MatCostMonth.*,DATEDIFF(day, (select max(CFMDate) from KCLL left join KCLLS on KCLL.LLNO = KCLLS.LLNO where KCLLS.SCBH = CW_MatCostMonth.DDBH and CFMDate < '''+CBX3.Text+'/'+inttostr(strtoint(CBX4.Text)+1)+'/01'') , '''+CBX3.Text+'/'+inttostr(strtoint(CBX4.Text)+1)+'/01'' ) as diffdate ');
    end
    else begin
      if (CBX4.Text <> '12') then
        SQL.Add('select CW_MatCostMonth.*,DATEDIFF(day, (select max(CFMDate) from KCLL left join KCLLS on KCLL.LLNO = KCLLS.LLNO where KCLLS.SCBH = CW_MatCostMonth.DDBH and CFMDate < '''+CBX3.Text+'/'+inttostr(strtoint(CBX4.Text)+1)+'/01'') , '''+CBX3.Text+'/'+inttostr(strtoint(CBX4.Text)+1)+'/01'' ) as diffdate ')
      else
        SQL.Add('select CW_MatCostMonth.*,DATEDIFF(day, (select max(CFMDate) from KCLL left join KCLLS on KCLL.LLNO = KCLLS.LLNO where KCLLS.SCBH = CW_MatCostMonth.DDBH and CFMDate < '''+inttostr(strtoint(CBX3.Text)+1)+'/01/01'') , '''+inttostr(strtoint(CBX3.Text)+1)+'/01/01'' ) as diffdate ');
    end;
    SQL.Add('from CW_MatCostMonth ');
    SQL.Add('Where KCYear='''+CBX3.Text+''' and KCMOnth='''+CBX4.Text+''' and CKBH=''' + CKBHID + ''' ');
    SQL.Add(')  CW_Matcostmonth ');
    SQL.Add('Select * from #SemiMat_Mon where 1=1 ');
    if DDBHEdit2.Text<>'' then
    begin
      SQL.Add(' AND DDBH like '''+DDBHEdit2.Text+'%'' ');
    end;
    Active:=true;
  end;
end;

procedure TCBY_SemiMaterialMonth.CW_MatCostMonth_Temp();
var
  iYear, iMonth, iDay, iiYear, iiMonth, iiDay: Word;
  sYear, sMonth, VNACC, ssYear, ssMonth: string;
  sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(CBX3.Text), StrToInt(CBX4.Text), 1);
  ssYear := CBX3.Text;
  ssMonth := CBX4.Text;
  DecodeDate(sDate, iYear, iMonth, iDay); //找庫存相關的數據
  IncAMonth(iYear, iMonth, iDay, -1);
  sYear := FloatToStr(iYear);
  sMonth := FloatToStr(iMonth);
  if (Length(sMonth) = 1) then
    sMonth := '0' + sMonth;
  //
  //計算攤提金額
  VNACC := '0.0';
  with TempQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('Select sum(isnull(KCLL.VNACC,0)) - sum(isnull(KCRK.VNACC,0)) as VNACC,sum(InQty) as InQty,(sum(isnull(convert(float,KCLL.VNACC),0)) - sum(isnull(convert(float,KCRK.VNACC),0)))/sum(InQty) as AVGZVNACC ');
    SQL.Add('from (	select sum(VNACC) as VNACC ');
    SQL.Add('   		from(	Select Sum(VNACC_HG) as VNACC ');
    SQL.Add('             From KCLL');
    SQL.Add('     				Left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('             left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH  ');
    SQL.Add('     				where KCLL.YN=''5'' and KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('             and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    //SQL.Add('     				and KCCK.CKBH in ( select CKBH from KCCK where GSBH=''CDC'') ');
    if CWBHEdit2.Text<> '' then
    SQL.add('             and KCZLS.CWBH = '''+CWBHEdit2.Text+'''');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'') ');
    SQL.Add('     				and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'' or SUBSTRING(KCLLS.SCBH,4,1)=''T'' or SUBSTRING(KCLLS.SCBH,4,1)=''K'') ');//KCLLS.SCBH like ''LAIT%'' or KCLLS.SCBH like ''LAIK%'' or KCLLS.SCBH like ''CBYT%'' or KCLLS.SCBH like ''CBYK%'')');
    //會計規定分攤費用不包含寶億樣品試作或留底
    SQL.Add('             and KCLLS.SCBH not like ''BYIK%'' and  KCLLS.SCBH not like ''BYIT%'' ');
    SQL.Add('     				and not exists(select * from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH) ');
    SQL.Add('     				UNION ALL');
    SQL.Add('     				SELECT Sum(VNACC) as VNACC ');
    SQL.Add('     				FROM KCLLS_CB ');
    SQL.Add('     				Left join KCLL on KCLL.LLNO=KCLLS_CB.LLNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('     				where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('             and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    //SQL.Add('     				and KCCK.CKBH in ( select CKBH from KCCK where GSBH=''CDC'') ');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS_CB.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and KCLLS_CB.HGLB in (''NK'',''KD'',''HD'',''TC'') ');
    SQL.Add('      				and KCLLS_CB.CostID like ''621%'' and (KCLLS_CB.SCBH_Cost like ''ZZZZ%'' or SUBSTRING(KCLLS_CB.SCBH,4,1)=''T'' or SUBSTRING(KCLLS_CB.SCBH,4,1)=''K'') ');// KCLLS_CB.SCBH_Cost like ''LAIT%'' or KCLLS_CB.SCBH_Cost like ''LAIK%'' or KCLLS_CB.SCBH like ''CBYT%'' or KCLLS_CB.SCBH like ''CBYK%'')');
    //會計規定分攤費用不包含寶億樣品試作或留底
    SQL.Add('             and KCLLS_CB.SCBH not like ''BYIK%'' and  KCLLS_CB.SCBH not like ''BYIT%'' ');
    SQL.Add('     			) KCLL');
    SQL.Add('   	 ) KCLL');
    SQL.Add('left join (  SELECT SUM(KCRKS.VNACC+ISNULL(EXCHACC,0)) VNACC');
    SQL.Add('             FROM KCRKS');
    SQL.Add('             LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    SQL.Add('             WHERE Convert(varchar,KCRK.USERDATE,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('             and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    SQL.Add('     			  AND KCRKS.CostID LIKE ''6211%''');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('             AND KCRK.HGLB ='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('             AND KCRK.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    SQL.Add('             AND KCRKS.CGBH LIKE ''ZZZZ%''');
    SQL.Add('          )KCRK ON 1=1');
    SQL.Add('left join (  select Sum(InQty)+1 as InQty '); //為什麼+1
    SQL.Add('             From ( SELECT SUM(total) AS InQty');
    SQL.Add('       			FROM CBY_Orders');
    SQL.Add('       			WHERE CONVERT(VARCHAR, StockDate, 111) BETWEEN '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('       			GROUP BY MasterOrder');
    SQL.Add('       			Union all');
    SQL.Add('       			Select sum(shoetest2.qty) as InQty');
    SQL.Add('       			from shoetest');
    SQL.Add('       			left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('       			where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('     		    and SUBSTRING(shoetest.YPDH,4,1)=''V''');
    SQL.Add('       			) ddzl');
    SQL.Add('       		) B on 1=1');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
    if (RecordCount > 0) AND (FieldByName('AVGZVNACC').AsString <> '') then
      VNACC := FieldByName('AVGZVNACC').AsString;
    Active := false;
  end;
  CPNVLPBLabel.Caption := VNACC;
  //訂單清單
  with Query2 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('IF OBJECT_ID(''tempdb..#DDZL_Mon'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #DDZL_Mon END');
    SQL.Add('  Select DDBH  into #DDZL_Mon from (');
    //樣品鞋
    SQL.Add('  SELECT YPDH AS DDBH ');
    SQL.Add('  FROM shoetest ');
    SQL.Add('  WHERE CONVERT(VARCHAR, Complete, 111) BETWEEN '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('  and  SUBSTRING(shoetest.YPDH,4,1)=''V'' ');
    SQL.Add('  GROUP BY YPDH');
    //CBY 訂單
    SQL.Add('  Union All');
    SQL.Add('  SELECT MasterOrder AS DDBH ');
    SQL.Add('  FROM CBY_Orders ');
    SQL.Add('  WHERE CONVERT(VARCHAR, StockDate, 111) BETWEEN '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('  GROUP BY MasterOrder');
    //開發領料
    SQL.Add('  Union ALL');
    SQL.Add('  SELECT KCLLS.SCBH ');
    SQL.Add('  FROM KCLL ');
    SQL.Add('  LEFT JOIN KCLLS ON KCLL.LLNO = KCLLS.LLNO');
    SQL.Add('  Left join KCCK on KCCK.CKBH=KCLL.CKBH ');     //20230623
    SQL.Add('  WHERE KCLL.CFMID <> ''NO'' AND CONVERT(VARCHAR, KCLL.CFMDate, 111) BETWEEN '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('  AND SUBSTRING(KCLLS.SCBH,4,1)=''V'' ');//((KCLLS.SCBH LIKE ''LAIV%'') or (KCLLS.SCBH LIKE ''BYIV%''))');
    SQL.Add('  and KCCK.CKBH'+CKBH_SQL);   //20230623
    if (CBX_HGLB2.ItemIndex > 0) AND (CBX_HGLB2.ItemIndex <> 5) then
    SQL.Add('  AND KCLLS.HGLB = ''' + CBX_HGLB2.Text + '''');
    SQL.Add('  AND KCLLS.Qty <> 0');
    SQL.Add('  GROUP BY KCLLS.SCBH');
    //期初樣品單+CBY訂單
    SQL.Add('  Union All');
    SQL.Add('  SELECT DDBH FROM CWKCLLMonth');
    SQL.Add('  WHERE KCYEAR = ''' + sYear + ''' AND KCMONTH = ''' + sMonth + '''');
    SQL.Add('  AND  SUBSTRING(CWKCLLMonth.DDBH,4,1)=''V'' ');//((CKBH = ''CDC'') or (CKBH = ''BYC'')) AND ((DDBH LIKE ''LAIV%'') or (DDBH LIKE ''BYIV%''))');
    SQL.Add('  GROUP BY DDBH');
    SQL.Add(') AS DDZL');
    //再製品費用---------------------------------------------------------------------------------
    SQL.Add('IF OBJECT_ID(''tempdb..#SemiMat_Mon'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SemiMat_Mon END');
    SQL.Add('select CPNVL_Tot.DDBH,CPNVL_Tot.Pairs,CPNVL_Tot.FKCQy,CPNVL_Tot.NoFKCQty1,CPNVL_Tot.InQty,CPNVL_Tot.VNACCMon,CPNVL_Tot.VNACC,CPNVL_Tot.ZVNACC,CPNVL_Tot.NotInQty ');
    SQL.Add('  	   ,CPNVL_Tot.SemiVNACC,isnull(convert(float,CPNVL_Tot.VNACCMon),0)+isnull(convert(float,CPNVL_Tot.VNACC),0)+isnull(convert(float,CPNVL_Tot.ZVNACC),0)-isnull(convert(float,CPNVL_Tot.SemiVNACC),0) as FShoeVNACC ');
    SQL.Add('	     ,case when (CPNVL_Tot.InQty)>0 then ');
    SQL.Add('            round((isnull(convert(float,CPNVL_Tot.VNACCMon),0)+isnull(convert(float,CPNVL_Tot.VNACC),0)+isnull(convert(float,CPNVL_Tot.ZVNACC),0)-isnull(convert(float,CPNVL_Tot.SemiVNACC),0))/(CPNVL_Tot.InQty),0)');
    SQL.Add('        else NULL end as FShoe1Pair_VNACC');
    SQL.Add('     into #SemiMat_Mon ');
    SQL.Add('from ( select CPNVL.DDBH,CPNVL.Pairs,FKCQy,NoFKCQty1,KCQty,InQty,VNACCMon,VNACC,ZVNACC,NotInQty');
    SQL.Add('              ,case when (NoFKCQty1=0 ) then  Round(isnull( convert(float,VNACCMon),0) + isnull(convert(float,VNACC),0),0)');
    SQL.Add('          		 else Round(convert(money,(isnull(convert(Float,VNACCMon),0) + isnull(convert(float,VNACC),0) ) / NoFKCQty1 *	NotInQty),0) end as SemiVNACC ');
    SQL.Add('  	   from ( select DDZL.DDBH,DDZL.Pairs,Case when ((IsNull(CWKCLLMonth.VNACC,0)=0) and (IsNull(YWCPKC.KCQty,0)=0)) then null else  (DDZL.Pairs-IsNull(Shiping.Pairs,0))- IsNull(YWCPKC.KCQty,0) end as FKCQy');   //FKCQy=上一個月尚未完成的數量
    SQL.Add('                  	 ,IsNull((DDZL.Pairs-IsNull(Shiping.Pairs,0))- IsNull(YWCPKC.KCQty,0),DDZL.Pairs) as NoFKCQty1,(DDZL.Pairs-IsNull(Shiping.Pairs,0))-IsNull(YWCPKC.KCQty,0)-IsNull(YWCP_Mon.InQty,0) as NotInQty'); //NoFKCQty1 =前期尚未入庫(用來計算再製品)  , NotInQty=再製品期末數量
    SQL.Add('                  	 ,IsNull(YWCPKC.KCQty,0) as KCQty, YWCP_Mon.InQty,Isnull(CWKCLLMonth.VNACC,0) as VNACCMon,IsNull(KCLLS.VNACC,0)- Isnull(RK_THUHOI.VNACC,0)+isnull(CWKCLLMonth_Adjust_TT.ExchACC,0)  as VNACC');
    SQL.Add('                  	 ,Round(convert(float,YWCP_Mon.InQty*'+VNACC+'),0)+isnull(CWKCLLMonth_Adjust_PB.ExchACC,0)  as ZVNACC ');
    SQL.Add('FROM (');
    //樣品單
    SQL.Add('  SELECT YPZL.YPDH AS DDBH, SUM(Quantity) AS Pairs FROM YPZL');
    SQL.Add('  WHERE YPZL.YPDH IN (SELECT DDBH FROM #DDZL_Mon)');
    SQL.Add('  GROUP BY YPZL.YPDH');
    //CBY訂單
    SQL.Add('  Union all ');
    SQL.Add('  SELECT MasterOrder AS DDBH, SUM(total) AS Pairs FROM CBY_Orders');
    SQL.Add('  WHERE MasterOrder IN (SELECT DDBH FROM #DDZL_Mon) ');
    SQL.Add('  GROUP BY MasterOrder');
    SQL.Add(') AS DDZL');
    //期初成品倉
    SQL.Add('LEFT JOIN (');
    //SQL.Add(' Select YSBH, sum(KCQty) as KCQty from (');
    SQL.Add('  Select ypzl.YPDH AS YSBH,sum(shoetestmonth.Qty) as KCQty'); //樣品單
    SQL.Add('  from shoetestmonth WITH (NOLOCK)');
    SQL.Add('  left join ShoeTest on shoetestmonth.TestNo=ShoeTest.TestNo');
    SQL.Add('  left join ypzl on ShoeTest.YPDH=ypzl.YPDH');
    SQL.Add('  WHERE ShoeTestMonth.KCYEAR = ''' + sYear + ''' AND ShoeTestMonth.KCMONTH = ''' + sMonth + '''');
    SQL.Add('       and ypzl.YPDH is not null');
    SQL.Add('  Group by ypzl.YPDH');
    SQL.Add('  Union all ');   //CBY 訂單
    SQL.Add('  SELECT CBY_Orders.MasterOrder AS YSBH, SUM(ShoeTestMonth.Qty) AS KCQty');
    SQL.Add('  FROM ShoeTestMonth WITH (NOLOCK)');
    SQL.Add('  LEFT JOIN CBY_Orders ON CBY_Orders.workOrderId = ShoeTestMonth.TestNo');
    SQL.Add('  WHERE ShoeTestMonth.KCYEAR = ''' + sYear + ''' AND ShoeTestMonth.KCMONTH = ''' + sMonth + '''');
    SQL.Add('        AND CBY_Orders.workOrderId IS NOT NULL');
    SQL.Add('   GROUP BY CBY_Orders.MasterOrder');
    SQL.Add(') AS YWCPKC ON YWCPKC.YSBH = DDZL.DDBH');
    //開發樣品訂單分批數量出貨
    SQL.Add('Left join (');
    SQL.Add(' SELECT CBY_Orders.MasterOrder as YSBH,SUM(total) AS Pairs ');
    SQL.Add(' FROM CBY_Orders ');
    SQL.Add(' WHERE  MasterOrder IN (SELECT DDBH FROM #DDZL_Mon) ');
    SQL.Add('    and CONVERT(VARCHAR, CBY_Orders.shipdate, 111) < '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' ');
    SQL.Add(' GROUP BY MasterOrder');
    SQL.Add(' Union all ');
    SQL.Add(' SELECT YPZL.YPDH AS DDBH, SUM(shoetestshipping.qty) AS Pairs ');
    SQL.Add(' FROM YPZL');
    SQL.Add(' left join shoetest on YPZL.YPDH=shoeTest.YPDH');
    SQL.Add(' left join (Select TestNO,shipdate_final,Sum(Qty) as Qty from shoetestshipping   Group by TestNO,shipdate_final ) shoetestshipping on shoetest.testno=shoetestshipping.testno');
    SQL.Add(' WHERE YPZL.YPDH IN (SELECT DDBH FROM #DDZL_Mon)');
    SQL.Add('     and Convert(varchar,shoetestshipping.shipdate_final, 111) < '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+'''');
    SQL.Add(' GROUP BY YPZL.YPDH');
    SQL.Add(') AS Shiping ON Shiping.YSBH = DDZL.DDBH');
    //期初再製品費用
    SQL.Add('LEFT JOIN (');
    SQL.Add('  SELECT CWKCLLMonth.DDBH, CWKCLLMonth.VNACC FROM CWKCLLMonth WITH (NOLOCK)');
    SQL.Add('  WHERE CWKCLLMonth.KCYEAR = ''' + sYear + ''' AND CWKCLLMonth.KCMONTH = ''' + sMonth + '''');
    SQL.Add('  AND CWKCLLMonth.DDBH LIKE ''' + DDBHEdit2.Text + '%''');
    SQL.Add('  AND SUBSTRING(CWKCLLMonth.DDBH,4,1)=''V'' ');
    SQL.Add('  AND ((CWKCLLMonth.CKBH = '''+CKBHID+'''))');
    SQL.Add(') AS CWKCLLMonth ON CWKCLLMonth.DDBH = DDZL.DDBH');
    //當期入庫
    SQL.Add('LEFT JOIN (');
    SQL.Add('  Select shoetest.YPDH as YSBH,sum(shoetest2.qty) as InQty');
    SQL.Add('  From shoetest');
    SQL.Add('  Left join (select testno,sum(qty) as qty from shoetest2 group by testno ) shoetest2 on  shoetest2.testno=shoetest.testno');
    SQL.Add('  Where Convert(varchar,shoetest.complete, 111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('        And SUBSTRING(shoetest.YPDH,4,1)=''V''');
    SQL.Add('  Group by shoetest.YPDH');
    SQL.Add('  Union all ');  // CBY 訂單
    SQL.Add('  SELECT MasterOrder AS YSBH, SUM(total) AS InQty FROM CBY_Orders');
    SQL.Add('  WHERE CONVERT(VARCHAR, StockDate, 111) BETWEEN '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('  GROUP BY MasterOrder');
    SQL.Add(') AS YWCP_Mon ON YWCP_Mon.YSBH = DDZL.DDBH');
    //調整
    SQL.Add('left join ( select DDBH,isnull(ExchACC,0) as ExchACC');
    SQL.Add('            from CWKCLLMonth_Adjust_PB');
    SQL.Add('      			where KCYEAR='''+ssYear+''' and KCMONTH='''+ssMonth+'''  and LB=''PB''');
    SQL.Add('             AND SUBSTRING(CWKCLLMonth_Adjust_PB.DDBH,4,1)=''V'' ');
    SQL.Add('			        and CKBH='''+CKBHID+''' ');
    SQL.Add('          ) CWKCLLMonth_Adjust_PB on CWKCLLMonth_Adjust_PB.DDBH = DDZL.DDBH');
    SQL.Add('left join ( select DDBH,isnull(ExchACC,0) as ExchACC');
    SQL.Add('            from CWKCLLMonth_Adjust_PB');
    SQL.Add('      			where KCYEAR='''+ssYear+''' and KCMONTH='''+ssMonth+'''  and LB=''TT''');
    SQL.Add('             AND SUBSTRING(CWKCLLMonth_Adjust_PB.DDBH,4,1)=''V'' ');
    SQL.Add('			        and CKBH='''+CKBHID+''' ');
    SQL.Add('          ) CWKCLLMonth_Adjust_TT on CWKCLLMonth_Adjust_TT.DDBH = DDZL.DDBH');
    //當期領料
    SQL.Add('left join ( Select KCLLS.SCBH,sum(VNACC) as VNACC ');
    SQL.Add('            From ( Select KCLLS.SCBH,Sum(VNACC_HG) as VNACC ');
    SQL.Add('     	             From KCLL ');
    SQL.Add('     	             Left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('                   Left join KCCK on KCCK.CKBH=KCLL.CKBH  ');
    SQL.Add('                   left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH  ');
    SQL.Add('                   where  KCLL.YN=''5'' and KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('                   and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    if CWBHEdit2.Text<> '' then
    SQL.add('                  and KCZLS.CWBH = '''+CWBHEdit2.Text+'''');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('                  and KCLLS.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('           	      and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    SQL.Add('    		          and not Exists(select * from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH)');
    SQL.Add('                  Group by KCLLS.SCBH');
    SQL.Add('                  UNION ALL');
    SQL.Add('		              SELECT KCLLS_CB.SCBH_Cost as SCBH,sum(VNACC) as VNACC');
    SQL.Add('                  FROM KCLLS_CB');
    SQL.Add('          	      Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add('                  Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('	                where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('                   and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('           	      and KCLLS_CB.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('                  and KCLLS_CB.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    SQL.Add('		              Group by KCLLS_CB.SCBH_Cost) KCLLS group by KCLLS.SCBH ) KCLLS on KCLLS.SCBH=DDZL.DDBH ');
    //當期退庫
    SQL.Add('left join (	SELECT  KCRKS.CGBH as SCBH,SUM(KCRKS.VNACC+ISNULL(EXCHACC,0)) VNACC');
    SQL.Add('            FROM KCRKS');
    SQL.Add('            LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('            Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    SQL.Add('            WHERE  KCRK.YN=''5'' and Convert(varchar,KCRK.USERDATE,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('                   and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    SQL.Add('      			AND KCRKS.CostID=''6211''');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('            AND KCRK.HGLB ='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('            AND KCRK.HGLB in (''NK'',''KD'',''HD'',''TC'')');
    SQL.Add('            GROUP BY KCRKS.CGBH )RK_THUHOI on RK_THUHOI.SCBH=DDZL.DDBH');
    SQL.Add('WHERE 1 = 1');
    SQL.Add(') CPNVL ) CPNVL_Tot');
    SQL.Add('where 1=1 ');
    if DDBHEdit2.Text<>'' then
    SQL.Add('and CPNVL_Tot.DDBH like '''+DDBHEdit2.Text+'%'' ');
    //20230213 add DICH VU KHAI THAC
    SQL.Add('Union All');
    SQL.Add('select ''DICH VU KHAI THAC'' as DDBH,0 as Pairs, 1 as FKCQty, 1 as NoFKCQty,1 as InQty,0 as VNACCMon,KCLL_DICHVUKHAITHAC.VNACC,round('+VNACC+',0) as ZVNACC,0 as NotInQty,0 as SemiVNACC,round(KCLL_DICHVUKHAITHAC.VNACC+'+VNACC+',0) as FShoeVNACC,round(KCLL_DICHVUKHAITHAC.VNACC+'+VNACC+',0)  as FShoe1Pair_VNACC');
    SQL.Add('from (	select sum(VNACC) as VNACC ');
    SQL.Add('   		  from(	Select Sum(VNACC_HG) as VNACC ');
    SQL.Add('              From KCLL');
    SQL.Add('     				  Left join KCLLS on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('               Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('               left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH  ');
    SQL.Add('     				  where KCLL.YN=''5'' and KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('                   and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    if CWBHEdit2.Text<> '' then
    SQL.add('              and KCZLS.CWBH = '''+CWBHEdit2.Text+'''');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				  and KCLLS.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				  and KCLLS.HGLB in (''NK'',''KD'',''HD'',''TC'') ');
    SQL.Add('     				  and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''BYIT%'' or KCLLS.SCBH like ''BYIK%'')');
    SQL.Add('     				  and not exists(select * from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH) ');
    SQL.Add('     				  UNION ALL');
    SQL.Add('     				  SELECT Sum(VNACC) as VNACC ');
    SQL.Add('     				  FROM KCLLS_CB ');
    SQL.Add('     	 			  Left join KCLL on KCLL.LLNO=KCLLS_CB.LLNO');
    SQL.Add('               Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('     				  where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('                   and KCCK.CKBH'+CBY_SemiMaterialMonth.CKBH_SQL);
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				  and KCLLS_CB.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				  and KCLLS_CB.HGLB in (''NK'',''KD'',''HD'',''TC'') ');
    SQL.Add('      			  and KCLLS_CB.CostID like ''621%'' and (KCLLS_CB.SCBH_Cost like ''BYIT%'' or KCLLS_CB.SCBH_Cost like ''BYIK%'')');
    SQL.Add('     			) KCLL ) KCLL_DICHVUKHAITHAC');
    //顯示
     SQL.Add('select *');
     SQL.Add(',case when (diffdate <=30) then #SemiMat_Mon.NotInQty else 0 end as ''<=30'' ');
     SQL.Add(',case when (diffdate >30) and (diffdate <=60) then #SemiMat_Mon.NotInQty else 0 end as ''31~60'' ');
     SQL.Add(',case when (diffdate >60) and (diffdate <=90) then #SemiMat_Mon.NotInQty else 0 end as ''61~90'' ');
     SQL.Add(',case when (diffdate >90) and (diffdate <=120) then #SemiMat_Mon.NotInQty else 0 end as ''91~120'' ');
     SQL.Add(',case when (diffdate >120) and (diffdate <=180) then #SemiMat_Mon.NotInQty else 0 end as ''121~180'' ');
     SQL.Add(',case when (diffdate >180) and (diffdate <=360) then #SemiMat_Mon.NotInQty else 0 end as ''181~360'' ');
     SQL.Add(',case when (diffdate >360) then #SemiMat_Mon.NotInQty else 0 end as ''>360'' ');
     SQL.Add('from ( ');
     SQL.Add('select #SemiMat_Mon.*,DATEDIFF(day, (select max(CFMDate) from KCLL left join KCLLS on KCLL.LLNO = KCLLS.LLNO where KCLLS.SCBH = #SemiMat_Mon.DDBH and CFMDate < CONVERT(VARCHAR(10), GETDATE(), 111) ) , CONVERT(VARCHAR(10), GETDATE(), 111) ) as diffdate ');
     SQL.Add('from #SemiMat_Mon ');
     SQL.Add(')  #SemiMat_Mon Order by DDBH');
    //Funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;


procedure TCBY_SemiMaterialMonth.Button1Click(Sender: TObject);

begin
  with  TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from CW_MatCostMonth ');
    SQL.Add('Where KCYear='''+CBX3.Text+''' and KCMOnth='''+CBX4.Text+''' and CKBH=''' + CKBHID + ''' ');
    Active:=true;
  end;
  if TempQry.RecordCount>0 then
  begin
    CW_MatCostMonth();
  end else
  begin
    CW_MatCostMonth_Temp();
  end;
end;

procedure TCBY_SemiMaterialMonth.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  Readini();
  PC1.ActivePageIndex := 1;
end;

procedure TCBY_SemiMaterialMonth.Button2Click(Sender: TObject);
begin
  if (Messagedlg('Format Excel?', mtInformation, [mbNo, mbYes], 0) = mrYes) then
    ExportFormatExcel(Query2)
  else
    ExportDefaultExcel(Query2);
end;

procedure TCBY_SemiMaterialMonth.ExportDefaultExcel(Query:TQuery);
var
  eclApp, WorkBook: OleVariant;
  i, j: integer;
begin
  if (Query.Active) then
  begin
    if (Query.RecordCount = 0) then
    begin
      ShowMessage('No record.');
      Abort;
    end;
  end
  else begin
    ShowMessage('No record.');
    Abort;
  end;

  try
    eclApp := CreateOleObject('Excel.Application');
    WorkBook := CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook := eclApp.Workbooks.Add;
    eclApp.Cells[1, 1] := 'NO';
    for i:=1 to Query.FieldCount do
    begin
      eclApp.Cells[1, i+1] := Query.Fields[i-1].FieldName;
    end;
    Query.First;
    j := 2;
    while not Query.Eof do
    begin
      eclApp.Cells[j, 1] := j-1;
      for i:=1 to Query.FieldCount do
      begin
        eclApp.Cells[j,i+1] := Query.Fields[i-1].Value;
      end;
      Query.Next;
      Inc(j);
    end;
    eclapp.Columns.Autofit;
    ShowMessage('Succeed.');
    eclApp.Visible := true;
  except on F:Exception do
    ShowMessage(F.Message);
  end;
end;

procedure TCBY_SemiMaterialMonth.ExportFormatExcel(Query: TQuery);
var
  eclApp,WorkBook: OleVariant;
  i, j, k, l: integer;
  //iYear, iMonth, iDay: word;
  sYear, sMonth: string;
begin
  sYear := CBY_SemiMaterialMonth.CBX3.Text;
  sMonth := CBY_SemiMaterialMonth.CBX4.Text;
  if (Length(sMonth) = 1) then
    sMonth := '0' + sMonth;

  if (not DirectoryExists(AppDir + 'Additional\')) then ForceDirectories(AppDir + 'Additional\');
    CopyFile(Pchar('\\' + main.ServerIP + '\liy_erp\Additional\Account_SN1792.xlsx'), PChar(AppDir + 'Additional\Account_SN1792.xlsx'), false);

  if (FileExists(AppDir + 'Additional\Account_SN1792.xlsx')) then
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
      eclApp.WorkBooks.Open(AppDir + 'Additional\Account_SN1792.xlsx');
      eclApp.WorkSheets[1].Activate;
      eclApp.Cells[1, 7].NumberFormatLocal := '@';
      eclApp.Cells[1, 7].Font.Name := 'Times New Roman';
      eclApp.Cells[1, 7].Font.Size := 16;
      eclApp.Cells(1, 7) := sMonth + '/' + sYear;
      eclApp.Cells(2, 2) := sYear + '年' + sMonth + '月份的材料費用計算表';

      Query.First;
      j := 5;
      for i:=1 to Query.RecordCount do
      begin
        eclApp.Cells[j, 1] := CBY_SemiMaterialMonth.CKBHID;
        eclApp.Cells[j, 2] := Query.FieldByName('DDBH').Value;
        eclApp.Cells[j, 3] := Query.FieldByName('Pairs').Value;
        eclApp.Cells[j, 4] := Query.FieldByName('FKCQy').Value;
        eclApp.Cells[j, 5] := Query.FieldByName('NoFKCQty1').Value;
        eclApp.Cells[j, 6] := Query.FieldByName('InQty').Value;
        eclApp.Cells[j, 7] := Query.FieldByName('VNACCMon').Value;
        eclApp.Cells[j, 8] := Query.FieldByName('VNACC').Value;
        eclApp.Cells[j, 9] := Query.FieldByName('ZVNACC').Value;
        eclApp.Cells[j, 10] := Query.FieldByName('NotInQty').Value;
        eclApp.Cells[j, 11] := Query.FieldByName('SemiVNACC').Value;
        eclApp.Cells[j, 12] := Query.FieldByName('FShoeVNACC').Value;
        eclApp.Cells[j, 13] := Query.FieldByName('FShoe1Pair_VNACC').Value;
        Query.Next;
        Inc(j);
      end;
      eclApp.Range[eclApp.Cells[j, 2], eclApp.Cells[j, 3]].Merge;
      eclApp.ActiveSheet.Rows[j].Font.Bold := true;
      eclApp.Range[eclApp.Cells[j, 1], eclApp.Cells[j, 15]].Interior.Color := $CCFFCC;
      eclApp.Cells[j, 2] := 'TOTAL:';
      eclApp.Cells[j, 4].Formula := '=SUM(D5:D' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 6].Formula := '=SUM(F5:F' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 7].Formula := '=SUM(G5:G' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 8].Formula := '=SUM(H5:H' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 9].Formula := '=SUM(I5:I' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 10].Formula := '=SUM(J5:J' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 11].Formula := '=SUM(K5:K' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 12].Formula := '=SUM(L5:L' + IntToStr(j-1) + ')';
      eclApp.Cells[j, 13].Formula := '=SUM(M5:M' + IntToStr(j-1) + ')';

      eclApp.ActiveSheet.Columns[4].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[6].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[7].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[8].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[9].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[10].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[11].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[12].NumberFormat := '##,#0';
      eclApp.ActiveSheet.Columns[13].NumberFormat := '##,#0';
      // add outline
      for k:=1 to 4 do
      begin
        eclApp.Range[eclApp.Cells[5, 1], eclApp.Cells[j, 15]].Borders[k].LineStyle := 1;
      end;
      eclapp.Columns.Autofit;
      ShowMessage('Succeed.');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

procedure TCBY_SemiMaterialMonth.Button4Click(Sender: TObject);
begin
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT CWKCLLMonth.*, YPZL.Article AS Article FROM CWKCLLMonth');
    SQL.Add('LEFT JOIN YPZL ON YPZL.YPDH = CWKCLLMonth.DDBH');
    SQL.Add('WHERE CWKCLLMonth.DDBH not LIKE ''CBYV%'' AND  CWKCLLMonth.KCYEAR = ''' + CBX1.Text + ''' AND CWKCLLMonth.KCMONTH = ''' + CBX2.Text + '''');
    if (DDBHEdit1.Text <> '') then
      SQL.Add('AND CWKCLLMonth.DDBH LIKE ''' + DDBHEdit1.Text + '%''');
    SQL.Add('AND CWKCLLMonth.CKBH = ''' + CKBHID + '''');
    //CBY 訂單
    SQL.Add('Union All');
    SQL.Add('SELECT DISTINCT CWKCLLMonth.*, CBY_Orders.style AS Article FROM CWKCLLMonth');
    SQL.Add('LEFT JOIN CBY_Orders ON CBY_Orders.MasterOrder = CWKCLLMonth.DDBH');
    SQL.Add('WHERE CWKCLLMonth.DDBH LIKE ''CBYV%'' AND CWKCLLMonth.KCYEAR = ''' + CBX1.Text + ''' AND CWKCLLMonth.KCMONTH = ''' + CBX2.Text + '''');
    if (DDBHEdit1.Text <> '') then
      SQL.Add('AND CWKCLLMonth.DDBH LIKE ''' + DDBHEdit1.Text + '%''');
    SQL.Add('AND CWKCLLMonth.CKBH = ''' + CKBHID+ '''');
    //funcObj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TCBY_SemiMaterialMonth.Button3Click(Sender: TObject);
begin
  ExportDefaultExcel(Query1);
end;

procedure TCBY_SemiMaterialMonth.Button6Click(Sender: TObject);
begin
  CBY_SemiMaterialMonth_ZZ := TCBY_SemiMaterialMonth_ZZ.Create(Self);
  CBY_SemiMaterialMonth_ZZ.Show;
end;

procedure TCBY_SemiMaterialMonth.Button5Click(Sender: TObject);
begin
  if (strtoint(CBX3.Text)>=2023) and (strtoint(CBX4.Text)>=4) then
  begin
    showmessage('Do not allow calculate > 2023/05');
    abort;
  end;
  if Query2.Active=false then
  begin
    Showmessage('Please Query first');
    Exit;
  end;
  with CheckQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 YN  FROM CWKCLLMonth');
    SQL.Add('WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' ');
    Active := true;
  end;
  if CheckQry.FieldByName('YN').AsString='1' then
  begin
    showmessage('Gia Thanh da confirm. Khong the tinh lai !');
    abort
  end else
  begin
    with TempQry do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DELETE FROM CWKCLLMonth WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' and YN=''2'' ');
      SQL.Add('INSERT INTO CWKCLLMonth (KCYEAR, KCMONTH, CKBH, DDBH, VNACC, UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + CBX3.Text + ''' AS KCYEAR, ''' + CBX4.Text + ''' AS KCMONTH, ''' + CKBHID + ''' AS CKBH, DDBH, SemiVNACC AS VNACC, ''' + main.Edit1.Text + ''' AS USERID, GetDate() AS UserDate, ''2'' AS YN FROM (');
      SQL.Add('Select * from #SemiMat_Mon  ');
      SQL.Add('where SemiVNACC>0 ) SemiMat_Mon');
      //FuncObj.WriteErrorLog(sql.Text);
      ExecSQL;
    end;
    ShowMessage('Finished');
  end;
end;

procedure TCBY_SemiMaterialMonth.Button8Click(Sender: TObject);
begin
  CBY_MaterialCostReport_Print := TCBY_MaterialCostReport_Print.Create(self);
  CBY_MaterialCostReport_Print.Quickrep1.Prepare;
  CBY_MaterialCostReport_Print.PageN.Caption := IntToStr(CBY_MaterialCostReport_Print.Quickrep1.QRPrinter.PageCount);
  CBY_MaterialCostReport_Print.Quickrep1.Preview;
  CBY_MaterialCostReport_Print.Free;
end;

procedure TCBY_SemiMaterialMonth.Adjust_NVL_PBClick(Sender: TObject);
begin
  Adjust_CPNVL_PB_CDC:=TAdjust_CPNVL_PB_CDC.create(self);
  Adjust_CPNVL_PB_CDC.Lbl_LB.Caption:='PB';
  Adjust_CPNVL_PB_CDC.Button1.Click;
  Adjust_CPNVL_PB_CDC.show;
end;

procedure TCBY_SemiMaterialMonth.Adjust_NVL_TTClick(Sender: TObject);
begin
  Adjust_CPNVL_PB_CDC:=TAdjust_CPNVL_PB_CDC.create(self);
  Adjust_CPNVL_PB_CDC.Lbl_LB.Caption:='TT';
  Adjust_CPNVL_PB_CDC.Button1.Click;
  Adjust_CPNVL_PB_CDC.show;
end;

procedure TCBY_SemiMaterialMonth.Modify1Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TCBY_SemiMaterialMonth.Save1Click(Sender: TObject);
var i:integer;
begin
  Query1.First;
  for i:=0 to Query1.RecordCount-1 do
  begin
    case Query1.updatestatus of
      usmodified:
      begin
        Query1.Edit;
        Query1.FieldByName('userID').Value:=main.edit1.text;
        Query1.FieldByName('userdate').Value:=Date;
        UPDet1.apply(ukmodify);
      end;
    end;
    Query1.Next;
  end;
  Query1.active:=false;
  Query1.cachedupdates:=false;
  Query1.requestlive:=false;
  Query1.active:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;   
end;

procedure TCBY_SemiMaterialMonth.Cancel1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TCBY_SemiMaterialMonth.DBGridEh2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((Query2.FieldByName('NotInQty').value=0) and (Query2.FieldByName('SemiVNACC').value>0))   then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

procedure TCBY_SemiMaterialMonth.mnu1Click(Sender: TObject);
begin
  CBY_SemiMaterialMonth_Detail:=TCBY_SemiMaterialMonth_Detail.Create(self);
  CBY_SemiMaterialMonth_Detail.Show;
end;

procedure TCBY_SemiMaterialMonth.Save_GTClick(Sender: TObject);
begin
  if Query2.Active=false then
  begin
    Showmessage('Please Query first');
    Exit;
  end;
  with CheckQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 YN  FROM CW_MatCostMonth');
    SQL.Add('WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' ');
    Active := true;
  end;
  if CheckQry.FieldByName('YN').AsString='1' then
  begin
    showmessage('Gia Thanh da confirm, khong the sua');
    abort
  end else
  begin
    with TempQry do
    begin
      Active := false;
      SQL.Clear;
      SQL.Add('DELETE FROM CW_MatCostMonth WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' and YN=''2'' ');
      SQL.Add('INSERT INTO CW_MatCostMonth(KCYEAR, KCMONTH, CKBH, DDBH,Pairs,FKCQy,NoFKCQty1,InQty,VNACCMon,VNACC,ZVNACC,NotInQty,SemiVNACC,FShoeVNACC,FShoe1Pair_VNACC,UserID, UserDate, YN)');
      SQL.Add('SELECT ''' + CBX3.Text + ''' AS KCYEAR, ''' + CBX4.Text + ''' AS KCMONTH, ''' + CKBHID + ''' AS CKBH,DDBH,Pairs,FKCQy,NoFKCQty1,InQty,VNACCMon,VNACC,ZVNACC,NotInQty,SemiVNACC,FShoeVNACC,FShoe1Pair_VNACC, ''' + main.Edit1.Text + ''' AS USERID, GetDate() AS UserDate, ''2'' AS YN FROM (');
      SQL.Add('Select * from #SemiMat_Mon  ');
      SQL.Add(') SemiMat_Mon');
      //FuncObj.WriteErrorLog(sql.Text);
      ExecSQL;
    end;
    ShowMessage('Finished');
  end;
  button1.Click;
end;

procedure TCBY_SemiMaterialMonth.Confirm_GTClick(Sender: TObject);
begin
  with TempQry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('UPDATE CW_MatCostMonth ');
    SQL.Add('SET YN=''1'' ');
    SQL.Add('WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' ');

    SQL.Add('UPDATE CWKCLLMonth ');
    SQL.Add('SET YN=''1'' ');
    SQL.Add('WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' ');
    ExecSQL;
  end;
  ShowMessage('Da khoa !');
  button1.Click;
end;

procedure TCBY_SemiMaterialMonth.Modify_SLClick(Sender: TObject);
begin
  with Query2 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save_SL.Enabled:=true;
  Cancel_SL.Enabled:=true;
end;

procedure TCBY_SemiMaterialMonth.Save_SLClick(Sender: TObject);
var i:integer;
begin
  Query2.First;
  for i:=0 to Query2.RecordCount-1 do
  begin
    case Query2.updatestatus of
      usmodified:
      begin
        with TempQry do
        begin
          Close;
          SQL.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('''+'CW_MatCostMonth'+''','''+Query2.fieldbyname('DDBH').Value+'''');
          sql.add(','''+floattostr(Query2.fieldbyname('NoFKCQty1').OldValue)+'***'+floattostr(Query2.FieldByName('NotInQty').OldValue)+''','''+main.Edit1.Text+''',');
          sql.add(''''+main.Edit1.Text+''',getdate())');

          SQL.Add('UPDATE CW_MatCostMonth ');
          SQL.Add('SET NoFKCQty1=''' + Query2.FieldByName('NoFKCQty1').AsString + ''',NotInQty=''' + Query2.FieldByName('NotInQty').AsString + ''',UserID=''' + main.Edit1.Text + ''',UserDate=GETDATE() ');
          SQL.Add('WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' AND DDBH='''+Query2.fieldbyname('DDBH').value+''' ');
          //funcobj.WriteErrorLog(sql.Text);
          ExecSQL;
        end;
      end;
    end;
    Query2.Next;
  end;
  Query2.active:=false;
  Query2.cachedupdates:=false;
  Query2.requestlive:=false;
  Query2.active:=true;
  Save_SL.Enabled:=false;
  Cancel_SL.Enabled:=false;
end;

procedure TCBY_SemiMaterialMonth.Cancel_SLClick(Sender: TObject);
begin
  with Query2 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save_SL.Enabled:=false;
  Cancel_SL.Enabled:=false;
end;

procedure TCBY_SemiMaterialMonth.Query2AfterOpen(DataSet: TDataSet);
begin
  with TempQry do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('SELECT TOP 1 YN  FROM CW_MatCostMonth');
    SQL.Add('WHERE KCYEAR = ''' + CBX3.Text + ''' AND KCMONTH = ''' + CBX4.Text + ''' AND CKBH = ''' + CKBHID + ''' ');
    active:=true;
  end;
  if  (TempQry.FieldByName('YN').AsString='1') then
  begin
    Adjust_NVL_PB.Enabled:=false;
    Adjust_NVL_TT.Enabled:=false;
    Save_GT.Enabled:=false;
    Confirm_GT.Enabled:=false;
    Modify_SL.Enabled:=false;
  end else
  begin
    Adjust_NVL_PB.Enabled:=true;
    Adjust_NVL_TT.Enabled:=true;
    Save_GT.Enabled:=true;
    Confirm_GT.Enabled:=true;
    Modify_SL.Enabled:=true;
  end;
end;

end.
