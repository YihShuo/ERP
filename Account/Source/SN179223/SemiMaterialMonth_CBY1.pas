unit SemiMaterialMonth_CBY1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Menus, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  ComCtrls,DateUtils,comobj,iniFiles;

type
  TSemiMaterialMonth_CBY = class(TForm)
    PC1: TPageControl;
    TS1: TTabSheet;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Button3: TButton;
    Button4: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    DDBHEdit1: TEdit;
    CBX_HGLB1: TComboBox;
    CWBHEdit1: TEdit;
    chk_PB1: TCheckBox;
    DBGridEh3: TDBGridEh;
    TS2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    CPNVLPBLabel: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    DDBHEdit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button6: TButton;
    Button8: TButton;
    CBX_HGLB2: TComboBox;
    CheckBox1: TCheckBox;
    CWBHEdit2: TEdit;
    Button5: TButton;
    CBX3: TComboBox;
    CBX4: TComboBox;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    TempQry: TQuery;
    DS2: TDataSource;
    Query2: TQuery;
    Query2DDBH: TStringField;
    Query2FKCQy: TFloatField;
    Query2NoFKCQty1: TFloatField;
    Query2VNACCMon: TCurrencyField;
    Query2VNACC: TCurrencyField;
    Query2NotInQty: TFloatField;
    Query2ZVNACC: TFloatField;
    Query2SemiVNACC: TCurrencyField;
    Query2FShoeVNACC: TFloatField;
    Query2FShoe1Pair_VNACC: TFloatField;
    DS1: TDataSource;
    Query1: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1DDBH: TStringField;
    Query1VNACC: TCurrencyField;
    Query1ARTICLE: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1CKBH: TStringField;
    PopupMenu1: TPopupMenu;
    Adjust_NVL_PB: TMenuItem;
    Adjust_NVL_TT: TMenuItem;
    N1: TMenuItem;
    mnu1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UPDet1: TUpdateSQL;
    OpenDialog1: TOpenDialog;
    N2: TMenuItem;
    Save_GT: TMenuItem;
    Query2Pairs: TFloatField;
    Query2InQty: TFloatField;
    CheckQry: TQuery;
    Confirm_GT: TMenuItem;
    UPDet2: TUpdateSQL;
    N3: TMenuItem;
    Modify_SL: TMenuItem;
    Save_SL: TMenuItem;
    Cancel_SL: TMenuItem;
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
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Adjust_NVL_PBClick(Sender: TObject);
    procedure Adjust_NVL_TTClick(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Save_GTClick(Sender: TObject);
    procedure Confirm_GTClick(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure Modify_SLClick(Sender: TObject);
    procedure Save_SLClick(Sender: TObject);
    procedure Cancel_SLClick(Sender: TObject);
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
  SemiMaterialMonth_CBY: TSemiMaterialMonth_CBY;

implementation

uses fununit, main1, Adjust_CPNVL_PB_CBY1, SemiMaterialMonth_CBY_Detail1,
  SemiMaterialMonth_CBY_ZZ1, SemiMaterialMonth_CBY_Print1;

{$R *.dfm}
procedure TSemiMaterialMonth_CBY.Readini();
var MyIni:TiniFile;
begin
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      CKBHID:=MyIni.ReadString('Account_N179223_CBY','CKBHID','CBY');
      CKBH_SQL:=MyIni.ReadString('Account_N179223_CBY','CKBH_SQL',' in (''CBY'')');
    finally
      MyIni.Free;
    end;
  end;  
end;


procedure TSemiMaterialMonth_CBY.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSemiMaterialMonth_CBY.FormDestroy(Sender: TObject);
begin
  SemiMaterialMonth_CBY:=nil;
end;

procedure TSemiMaterialMonth_CBY.CW_MatCostMonth();
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
{    if (CBX3.Text = TempQry.FieldByName('KCYEAR').AsString) then begin
      if (CBX4.Text >= TempQry.FieldByName('KCMonth').AsString) then
        SQL.Add('select CW_MatCostMonth.*,DATEDIFF(day, (select max(CFMDate) from KCLL where SCBH = CW_MatCostMonth.DDBH) , CONVERT(VARCHAR(10), GETDATE(), 111) ) as diffdate ')
      else
        SQL.Add('select CW_MatCostMonth.*,DATEDIFF(day, (select max(CFMDate) from KCLL where SCBH = CW_MatCostMonth.DDBH and CFMDate < '''+CBX3.Text+'/'+inttostr(strtoint(CBX4.Text)+1)+'/01'') , '''+CBX3.Text+'/'+inttostr(strtoint(CBX4.Text)+1)+'/01'' ) as diffdate ');
    end
    else begin
      if (CBX4.Text <> '12') then
        SQL.Add('select CW_MatCostMonth.*,DATEDIFF(day, (select max(CFMDate) from KCLL where SCBH = CW_MatCostMonth.DDBH and CFMDate < '''+CBX3.Text+'/'+inttostr(strtoint(CBX4.Text)+1)+'/01'') , '''+CBX3.Text+'/'+inttostr(strtoint(CBX4.Text)+1)+'/01'' ) as diffdate ')
      else
        SQL.Add('select CW_MatCostMonth.*,DATEDIFF(day, (select max(CFMDate) from KCLL where SCBH = CW_MatCostMonth.DDBH and CFMDate < '''+inttostr(strtoint(CBX3.Text)+1)+'/01/01'') , '''+inttostr(strtoint(CBX3.Text)+1)+'/01/01'' ) as diffdate ');
    end;  }
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
    SQL.Add('and (FKCQy>0 or NoFKCQty1>0 or VNACCMon>0 or VNACC>0 or ZVNACC>0 or NotInQty>0 or SemiVNACC>0) ');
    if DDBHEdit2.Text<>'' then
    begin
      SQL.Add(' AND DDBH like '''+DDBHEdit2.Text+'%'' ');
    end;
    Active:=true;
  end;
end;

procedure  TSemiMaterialMonth_CBY.CW_MatCostMonth_Temp();
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
    SQL.Add('             and KCCK.CKBH'+CKBH_SQL);
    //SQL.Add('     				and KCCK.CKBH in ( select CKBH from KCCK where GSBH=''CDC'') ');
    if CWBHEdit2.Text<> '' then
    SQL.add('             and KCZLS.CWBH = '''+CWBHEdit2.Text+'''');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and left(KCLLS.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    SQL.Add('     				and KCLLS.CostID like ''621%'' and (KCLLS.SCBH like ''ZZZZ%'') ');// CBY phan bo ZZZZ
    SQL.Add('     				and not exists(select * from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH) ');
    SQL.Add('     				UNION ALL');
    SQL.Add('     				SELECT Sum(VNACC) as VNACC ');
    SQL.Add('     				FROM KCLLS_CB ');
    SQL.Add('     				Left join KCLL on KCLL.LLNO=KCLLS_CB.LLNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('     				where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('             and KCCK.CKBH'+CKBH_SQL);
    //SQL.Add('     				and KCCK.CKBH in ( select CKBH from KCCK where GSBH=''CDC'') ');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('     				and KCLLS_CB.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('     				and left(KCLLS_CB.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'') ');
    SQL.Add('      				and KCLLS_CB.CostID like ''621%'' and (KCLLS_CB.SCBH_Cost like ''ZZZZ%'') ');
    SQL.Add('     			) KCLL');
    SQL.Add('   	 ) KCLL');
    SQL.Add('left join (  SELECT SUM(KCRKS.VNACC+ISNULL(EXCHACC,0)) VNACC');
    SQL.Add('             FROM KCRKS');
    SQL.Add('             LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('             Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    SQL.Add('             WHERE Convert(varchar,KCRK.USERDATE,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('             and KCCK.CKBH'+CKBH_SQL);
    SQL.Add('     			  AND KCRKS.CostID LIKE ''6211%''');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('             AND KCRK.HGLB ='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('             AND left(KCRK.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('             AND KCRKS.CGBH LIKE ''ZZZZ%''');
    SQL.Add('          )KCRK ON 1=1');
    SQL.Add('left join (  select Sum(InQty) as InQty '); //為什麼+1
    SQL.Add('             From ( SELECT SUM(total) AS InQty');
    SQL.Add('       			FROM CBY_Orders');
    SQL.Add('       			WHERE CONVERT(VARCHAR, StockDate, 111) BETWEEN '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('       			GROUP BY MasterOrder');
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
    SQL.Add('  SELECT MasterOrder AS DDBH ');
    SQL.Add('  FROM CBY_Orders ');
    SQL.Add('  WHERE CONVERT(VARCHAR, StockDate, 111) BETWEEN '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('  GROUP BY MasterOrder');
    SQL.Add('  Union All');
    SQL.Add('  SELECT KCLLS.SCBH ');
    SQL.Add('  FROM KCLL ');
    SQL.Add('  Left join KCCK on KCCK.CKBH=KCLL.CKBH ');     //20230623
    SQL.Add('  LEFT JOIN KCLLS ON KCLL.LLNO = KCLLS.LLNO');
    SQL.Add('  and KCCK.CKBH'+CKBH_SQL);   //20230623
    SQL.Add('  WHERE KCLL.CFMID <> ''NO'' AND CONVERT(VARCHAR, KCLL.CFMDate, 111) BETWEEN '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    SQL.Add('  AND SUBSTRING(KCLLS.SCBH,4,1)=''V'' AND KCLLS.SCBH LIKE ''CBYV%''');
    if (CBX_HGLB2.ItemIndex > 0) AND (CBX_HGLB2.ItemIndex <> 5) then
    SQL.Add('  AND KCLLS.HGLB = ''' + CBX_HGLB2.Text + '''');
    SQL.Add('  AND KCLLS.Qty <> 0');
    SQL.Add('  GROUP BY KCLLS.SCBH');
    //期初樣品單+CBY訂單
    SQL.Add('  Union All');
    SQL.Add('  SELECT DDBH FROM CWKCLLMonth');
    SQL.Add('  WHERE KCYEAR = ''' + sYear + ''' AND KCMONTH = ''' + sMonth + '''');
    SQL.Add('  AND  SUBSTRING(CWKCLLMonth.DDBH,4,1)=''V'' ');
    SQL.Add('  AND CWKCLLMonth.CKBH = '''+CKBHID+''' ');
    SQL.Add('  GROUP BY DDBH');
    SQL.Add(') AS DDZL');
    //再製品費用---------------------------------------------------------------------------------
    SQL.Add('IF OBJECT_ID(''tempdb..#SemiMat_Mon'') IS NOT NULL');
    SQL.Add('BEGIN DROP TABLE #SemiMat_Mon END');
    SQL.Add('select CPNVL_Tot.DDBH,cast(CPNVL_Tot.Pairs as float) as Pairs,CPNVL_Tot.FKCQy,CPNVL_Tot.NoFKCQty1,cast(CPNVL_Tot.InQty as Float) as InQty,CPNVL_Tot.VNACCMon,CPNVL_Tot.VNACC,CPNVL_Tot.ZVNACC,cast(CPNVL_Tot.NotInQty as float) as NotInQty ');
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
    SQL.Add('  SELECT MasterOrder AS DDBH, SUM(total) AS Pairs FROM CBY_Orders');
    SQL.Add('  WHERE MasterOrder IN (SELECT DDBH FROM #DDZL_Mon) ');
    SQL.Add('  GROUP BY MasterOrder');
    SQL.Add(') AS DDZL');
    //期初成品倉
    SQL.Add('LEFT JOIN (');
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
    SQL.Add('                   and KCCK.CKBH'+CKBH_SQL);
    if CWBHEdit2.Text<> '' then
    SQL.add('                  and KCZLS.CWBH = '''+CWBHEdit2.Text+'''');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('                  and KCLLS.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('           	     and left(KCLLS.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('    		           and not Exists(select * from KCLLS_CB where LLNO=KCLLS.LLNO and SCBH=KCLLS.SCBH and CLBH=KCLLS.CLBH)');
    SQL.Add('                  Group by KCLLS.SCBH');
    SQL.Add('                  UNION ALL');
    SQL.Add('		               SELECT KCLLS_CB.SCBH_Cost as SCBH,sum(VNACC) as VNACC');
    SQL.Add('                  FROM KCLLS_CB');
    SQL.Add('          	       Left join KCLL on KCLLS_CB.LLNO=KCLL.LLNO');
    SQL.Add('                  Left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    SQL.Add('	                 where KCLL.CFMID<>''NO'' and Convert(varchar,KCLL.CFMDate,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('                   and KCCK.CKBH'+CKBH_SQL);
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('           	      and KCLLS_CB.HGLB='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('                  and left(KCLLS_CB.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('		              Group by KCLLS_CB.SCBH_Cost) KCLLS group by KCLLS.SCBH ) KCLLS on KCLLS.SCBH=DDZL.DDBH ');
    //當期退庫
    SQL.Add('left join (	SELECT  KCRKS.CGBH as SCBH,SUM(KCRKS.VNACC+ISNULL(EXCHACC,0)) VNACC');
    SQL.Add('            FROM KCRKS');
    SQL.Add('            LEFT JOIN KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('            Left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    SQL.Add('            WHERE  KCRK.YN=''5'' and Convert(varchar,KCRK.USERDATE,111) between '''+Formatdatetime('yyyy/MM/dd',startofthemonth(sDate))+''' and '''+Formatdatetime('yyyy/MM/dd',endofthemonth(sDate))+''' ');
    //20230325全部原料品倉
    SQL.Add('                   and KCCK.CKBH'+CKBH_SQL);
    SQL.Add('      			AND KCRKS.CostID=''6211''');
    if (CBX_HGLB2.ItemIndex>0) and (CBX_HGLB2.ItemIndex<>5) then
    SQL.Add('            AND KCRK.HGLB ='''+CBX_HGLB2.Text+'''');
    if CBX_HGLB2.ItemIndex=5 then
    SQL.Add('            AND left(KCRK.HGLB,2) in (''NK'',''KD'',''HD'',''TC'',''NQ'')');
    SQL.Add('            GROUP BY KCRKS.CGBH )RK_THUHOI on RK_THUHOI.SCBH=DDZL.DDBH');
    SQL.Add('WHERE 1 = 1');
    SQL.Add(') CPNVL ) CPNVL_Tot');
    SQL.Add('where 1=1 ');
    SQL.Add('and (FKCQy>0 or NoFKCQty1>0 or VNACCMon>0 or VNACC>0 or ZVNACC>0 or NotInQty>0 or SemiVNACC>0) ');
    if DDBHEdit2.Text<>'' then
    SQL.Add('and CPNVL_Tot.DDBH like '''+DDBHEdit2.Text+'%'' ');
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
     SQL.Add(')  #SemiMat_Mon Order by DDBH ');
//    SQL.Add('Select * from #SemiMat_Mon  Order by DDBH ');
    //Funcobj.WriteErrorLog(sql.Text);
    Active := true;
  end;
end;

procedure TSemiMaterialMonth_CBY.Button1Click(Sender: TObject);
var
   sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(CBX3.Text), StrToInt(CBX4.Text), 1);
  if Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/05/01' then
  begin
    showmessage('No use this function < 2023/05');
    abort;
  end;
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

procedure TSemiMaterialMonth_CBY.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,index:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  Readini();
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      CBX3.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i-1;
      CBX4.ItemIndex:=i-1;
      break;
    end;
  end;
  PC1.ActivePageIndex := 1;
end;

procedure TSemiMaterialMonth_CBY.Button2Click(Sender: TObject);
begin
  if (Messagedlg('Format Excel?', mtInformation, [mbNo, mbYes], 0) = mrYes) then
    ExportFormatExcel(Query2)
  else
    ExportDefaultExcel(Query2);
end;
procedure TSemiMaterialMonth_CBY.ExportDefaultExcel(Query:TQuery);
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
procedure TSemiMaterialMonth_CBY.ExportFormatExcel(Query: TQuery);
var
  eclApp,WorkBook: OleVariant;
  i, j, k, l: integer;
  //iYear, iMonth, iDay: word;
  sYear, sMonth: string;
begin
  sYear := SemiMaterialMonth_CBY.CBX3.Text;
  sMonth := SemiMaterialMonth_CBY.CBX4.Text;
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
        eclApp.Cells[j, 1] := SemiMaterialMonth_CBY.CKBHID;
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

procedure TSemiMaterialMonth_CBY.Button5Click(Sender: TObject);
var sDate:TDate;
begin
  sDate := EncodeDate(StrToInt(CBX3.Text), StrToInt(CBX4.Text), 1);
  if Formatdatetime('yyyy/MM/dd',endofthemonth(sDate)) < '2023/05/01' then
  begin
    showmessage('Do not allow calculate < 2023/05');
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

procedure TSemiMaterialMonth_CBY.Button4Click(Sender: TObject);
begin
  if (strtoint(CBX1.Text)<=2023) and (strtoint(CBX2.Text)<=4) then
  begin
    showmessage('No use this function < 2023/05');
    abort;
  end;
  with Query1 do
  begin
    Active := false;
    SQL.Clear;
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

procedure TSemiMaterialMonth_CBY.Modify1Click(Sender: TObject);
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

procedure TSemiMaterialMonth_CBY.Save1Click(Sender: TObject);
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

procedure TSemiMaterialMonth_CBY.Cancel1Click(Sender: TObject);
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

procedure TSemiMaterialMonth_CBY.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if ((Query2.FieldByName('NotInQty').value=0) and (Query2.FieldByName('SemiVNACC').value>0))   then
  begin
    DBGridEh2.canvas.font.color:=clred;
  end;
end;

procedure TSemiMaterialMonth_CBY.Adjust_NVL_PBClick(Sender: TObject);
begin
  Adjust_CPNVL_PB_CBY:=TAdjust_CPNVL_PB_CBY.create(self);
  Adjust_CPNVL_PB_CBY.Lbl_LB.Caption:='PB';
  Adjust_CPNVL_PB_CBY.Button1.Click;
  Adjust_CPNVL_PB_CBY.show;
end;

procedure TSemiMaterialMonth_CBY.Adjust_NVL_TTClick(Sender: TObject);
begin
  Adjust_CPNVL_PB_CBY:=TAdjust_CPNVL_PB_CBY.create(self);
  Adjust_CPNVL_PB_CBY.Lbl_LB.Caption:='TT';
  Adjust_CPNVL_PB_CBY.Button1.Click;
  Adjust_CPNVL_PB_CBY.show;
end;

procedure TSemiMaterialMonth_CBY.mnu1Click(Sender: TObject);
begin
  SemiMaterialMonth_CBY_Detail:=TSemiMaterialMonth_CBY_Detail.Create(self);
  SemiMaterialMonth_CBY_Detail.Show;
end;

procedure TSemiMaterialMonth_CBY.Button6Click(Sender: TObject);
begin
  SemiMaterialMonth_CBY_ZZ := TSemiMaterialMonth_CBY_ZZ.Create(Self);
  SemiMaterialMonth_CBY_ZZ.Show;
end;

procedure TSemiMaterialMonth_CBY.Button8Click(Sender: TObject);
begin
  SemiMaterialMonth_CBY_Print := TSemiMaterialMonth_CBY_Print.Create(self);
  SemiMaterialMonth_CBY_Print.Quickrep1.Prepare;
  SemiMaterialMonth_CBY_Print.PageN.Caption := IntToStr(SemiMaterialMonth_CBY_Print.Quickrep1.QRPrinter.PageCount);
  SemiMaterialMonth_CBY_Print.Quickrep1.Preview;
  SemiMaterialMonth_CBY_Print.Free;
end;

procedure TSemiMaterialMonth_CBY.Save_GTClick(Sender: TObject);
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

procedure TSemiMaterialMonth_CBY.Confirm_GTClick(Sender: TObject);
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

procedure TSemiMaterialMonth_CBY.Query2AfterOpen(DataSet: TDataSet);
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

procedure TSemiMaterialMonth_CBY.Modify_SLClick(Sender: TObject);
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

procedure TSemiMaterialMonth_CBY.Save_SLClick(Sender: TObject);
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

procedure TSemiMaterialMonth_CBY.Cancel_SLClick(Sender: TObject);
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

end.
