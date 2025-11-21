unit SemiMonthTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, Menus, DB, GridsEh, DBGridEh, StdCtrls, ExtCtrls,
  ComCtrls,Comobj, Mask, DBCtrls,math;

type
  TSemiMonthTotal = class(TForm)
    PC1: TPageControl;
    TS2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    DDBHEdit: TEdit;
    Button1: TButton;
    Button2: TButton;
    ExchangeEdit: TEdit;
    CBX3: TComboBox;
    CBX4: TComboBox;
    Button5: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    TempQry: TQuery;
    DS2: TDataSource;
    Query2: TQuery;
    CheckQry: TQuery;
    UPDet2: TUpdateSQL;
    Label1: TLabel;
    Label3: TLabel;
    Query2KCYEAR: TStringField;
    Query2KCMONTH: TStringField;
    Query2Factory: TStringField;
    Query2G_DDBH: TStringField;
    Query2Pairs: TFloatField;
    Query2H_FKCQy: TFloatField;
    Query2NoFKCQty1: TFloatField;
    Query2I_InQty: TFloatField;
    Query2J_VNACCMon_Mas: TCurrencyField;
    Query2K_VNACCMon_HC: TCurrencyField;
    Query2L_VNACCMon: TCurrencyField;
    Query2M_Rate_TP: TFloatField;
    Query2N_SP_TuongDuong: TFloatField;
    Query2O_VNACC_Mas: TCurrencyField;
    Query2P_ZVNACC_Mas: TCurrencyField;
    Query2Q_VNACC_HC: TCurrencyField;
    Query2R_ZVNACC_HC: TCurrencyField;
    Query2S_CPPB: TCurrencyField;
    Query2T_TCPPS: TCurrencyField;
    Query2U_CP622: TCurrencyField;
    Query2V_CP627: TCurrencyField;
    Query2W_TOTAL: TCurrencyField;
    Query2X_NotInQty: TFloatField;
    Query2Y_SemiVNACC_Mas: TCurrencyField;
    Query2Z_SemiVNACCC_HC: TCurrencyField;
    Query2AA_SemiVNACC: TCurrencyField;
    Query2AB_FShoeVNACC_Mas: TCurrencyField;
    Query2AC_FShoeVNACC_HC: TCurrencyField;
    Query2AD_CPPB: TCurrencyField;
    Query2AE_TCPNVL: TCurrencyField;
    Query2AF_CPNCTT: TCurrencyField;
    Query2AG_CPSXC: TCurrencyField;
    Query2AH_TGTSP: TCurrencyField;
    Query2AI_GIATHANH_1DOI: TCurrencyField;
    Query2AJ_GT1DOI_USD: TCurrencyField;
    Query2AK_GIABAN: TCurrencyField;
    Query2AM_GVGB: TFloatField;
    Query2AN_TLPB: TFloatField;
    Query2AP_KHACHHANG: TStringField;
    Query2AR_VNPrice: TCurrencyField;
    Query2CP621_GP: TCurrencyField;
    Query2CP622_GP: TCurrencyField;
    Query2CP627_GP: TCurrencyField;
    Query2CWHL: TCurrencyField;
    Query2UserID: TStringField;
    Query2UserDate: TDateTimeField;
    Query2YN: TStringField;
    DBEdit_NVLTTPB: TDBEdit;
    DBEdit_NCTT: TDBEdit;
    DBEdit_SXC: TDBEdit;
    PopupMenu2: TPopupMenu;
    Adjust1: TMenuItem;
    Qry_DT: TQuery;
    Qry_DTDOANHTHU_ALL: TCurrencyField;
    Query2DOANHTHU_ALL: TFloatField;
    Query2AL_DOANHTHU: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Adjust1Click(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
    
  private
    AppDir:string;
    { Private declarations }
    procedure ExportDefaultExcel(Query:TQuery);
    procedure ExportFormatExcel(Query:TQuery);
  public
    { Public declarations }
  end;

var
  SemiMonthTotal: TSemiMonthTotal;

implementation
uses Fununit, main1, Adjust_CP1;

{$R *.dfm}

procedure TSemiMonthTotal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSemiMonthTotal.FormDestroy(Sender: TObject);
begin
  SemiMonthTotal:=nil;
end;

procedure TSemiMonthTotal.Button1Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('  Select Total.KCYEAR,Total.KCMONTH,Total.Factory,Total.G_DDBH,Total.Pairs,Total.H_FKCQy,Total.NoFKCQty1,Total.I_InQty,Total.J_VNACCMon_Mas,Total.K_VNACCMon_HC,Total.L_VNACCMon  ');
    SQL.Add('  	   ,Total.M_Rate_TP,Total.N_SP_TuongDuong,Total.O_VNACC_Mas,Total.P_ZVNACC_Mas,Total.Q_VNACC_HC,Total.R_ZVNACC_HC,ISNULL(Total.S_CPPB,0)  + Isnull(Adjust.S_CPPB,0) as S_CPPB  ');
    SQL.Add('  	   ,ISNULL(Total.T_TCPPS,0) + Isnull(Adjust.S_CPPB,0) as T_TCPPS,Total.U_CP622 + Isnull(Adjust.U_CP622,0) as U_CP622,Total.V_CP627 + Isnull(Adjust.V_CP627,0) as V_CP627  ');
    SQL.Add('  	   ,ISNULL(Total.W_TOTAL,0) + Isnull(Adjust.S_CPPB,0) + Isnull(Adjust.U_CP622,0) + Isnull(Adjust.V_CP627,0) as W_TOTAL,X_NotInQty,Y_SemiVNACC_Mas,Z_SemiVNACCC_HC,AA_SemiVNACC  ');
    SQL.Add('  	   ,AB_FShoeVNACC_Mas,AC_FShoeVNACC_HC,ISNULL(AD_CPPB,0) + Isnull(Adjust.S_CPPB,0) as AD_CPPB, AE_TCPNVL + Isnull(Adjust.S_CPPB,0) as AE_TCPNVL,ISNULL(AF_CPNCTT,0) + Isnull(Adjust.U_CP622,0) as AF_CPNCTT  ');
    SQL.Add('  	   ,ISNULL(AG_CPSXC,0) + Isnull(Adjust.V_CP627,0) as AG_CPSXC,AH_TGTSP + Isnull(Adjust.S_CPPB,0) + Isnull(Adjust.U_CP622,0) + Isnull(Adjust.V_CP627,0) as AH_TGTSP  ');
    SQL.Add('  	   ,CASE WHEN ISNULL(I_InQty,0)>0 THEN (ISNULL(AH_TGTSP,0) + Isnull(Adjust.S_CPPB,0) + Isnull(Adjust.U_CP622,0) + Isnull(Adjust.V_CP627,0))/I_InQty ELSE 0 END as AI_GIATHANH_1DOI    ');
    SQL.Add('  	   ,CASE WHEN ISNULL(I_InQty,0)>0 THEN (ISNULL(AH_TGTSP,0) + Isnull(Adjust.S_CPPB,0) + Isnull(Adjust.U_CP622,0) + Isnull(Adjust.V_CP627,0))/I_InQty/CWHL ELSE 0 END as AJ_GT1DOI_USD   ');
    SQL.Add('  	   ,AK_GIABAN,AL_DOANHTHU as AL_DOANHTHU ');
    SQL.Add('      ,CASE WHEN ISNULL(I_InQty,0)>0 THEN round(((ISNULL(AH_TGTSP,0) + Isnull(Adjust.S_CPPB,0) + Isnull(Adjust.U_CP622,0) + Isnull(Adjust.V_CP627,0))/I_InQty/CWHL/AK_GIABAN)*100,2) ELSE 0 END as AM_GVGB ');
    SQL.Add('	     ,round(AN_TLPB*100,3) as AN_TLPB ');
    SQL.Add('      ,AP_KHACHHANG,AR_VNPrice,CP621_GP,CP622_GP,CP627_GP,CWHL,Total.UserID,Total.UserDate,Total.YN, DT.DOANHTHU_ALL');
    SQL.Add('  From CW_MatCostMonth_Total  Total  ');
    SQL.Add('  Left join CW_MatCostMonth_Total_adjust Adjust   ');
    SQL.Add('  on Total.KCYEAR=Adjust.KCYEAR and Total.KCMONTH=Adjust.KCMONTH and Total.G_DDBH=Adjust.DDBH  ');
    SQL.Add('  Left join ( Select round(sum(cast(AL_DOANHTHU as decimal(38,10))),2) as DOANHTHU_ALL From CW_MatCostMonth_Total Where KCYEAR='''+ CBX3.Text+ ''' and KCMONTH='''+ CBX4.Text+''' ) DT on 1=1 ');
    SQL.Add('  Where Total.KCYEAR='''+ CBX3.Text+ ''' and Total.KCMONTH='''+ CBX4.Text+''' ');
    if DDBHEdit.Text <> '' then
      SQL.Add(' and Total.G_DDBH like '''+DDBHEdit.Text+'%'' ');
    SQL.Add(' Order by Total.Factory, Total.G_DDBH ');  
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TSemiMonthTotal.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,index:integer;
begin
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[i])=myYear then
    begin
      CBX3.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX4.Items.Count-1 do
  begin
    if strtoint(CBX4.Items[i])=myMonth then
    begin
      CBX4.ItemIndex:=i-1;
      break;
    end;
  end;
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TSemiMonthTotal.Button5Click(Sender: TObject);
begin
  if ExchangeEdit.Text = '' then
  begin
    showmessage('Pls key in Exchange');
    abort;
  end;

  With CheckQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT* FROM CW_MatCostMonth_Total');
    sql.Add('WHERE KCYEAR='''+CBX3.Text+''' AND KCMONTH='''+CBX4.Text+''' ');
    active:=true;
    if RecordCount>0 then
    begin
      if messagedlg('Are you sure to calculate it again?',mtCustom, [mbYes,mbNo], 0)=mrYes then
      begin
        with CheckQry do
        begin
          active:=false;
          sql.Clear;
          sql.Add('DELETE CW_MatCostMonth_Total');
          sql.Add('WHERE KCYEAR='''+CBX3.Text+''' AND KCMONTH='''+CBX4.Text+''' ');
          sql.Add('DELETE CW_MatCostMonth_Total_Adjust');
          sql.Add('WHERE KCYEAR='''+CBX3.Text+''' AND KCMONTH='''+CBX4.Text+''' ');
          ExecSQL;
        end;
      end;
    end;
  end;
  
  With TempQry do
  begin
    active:=false;
    SQL.Clear;
    // CHI PHI GP
    SQL.Add('  IF OBJECT_ID(''tempdb..#FactoryCost'') IS NOT NULL       ');
    SQL.Add('  BEGIN DROP TABLE #FactoryCost END    ');
    SQL.Add('  SELECT YEARS,MONTHS,TK621,TK622,TK627 into #FactoryCost    ');
    SQL.Add('    FROM(    ');
    SQL.Add('         SELECT YEARS,MONTHS      ');
    SQL.Add('      	        ,SUM(CASE WHEN TK_Ketoan like ''6212%'' THEN Sotien_ben_co_Noi_te END) ''TK621''      ');
    SQL.Add('      	        ,SUM(CASE WHEN TK_Ketoan like ''622%'' THEN Sotien_ben_co_Noi_te END) ''TK622''      ');
    SQL.Add('      	        ,SUM(CASE WHEN TK_Ketoan like ''627%'' THEN Sotien_ben_co_Noi_te END) ''TK627''     ');
    SQL.Add('         FROM(      ');
    SQL.Add('              SELECT YEAR(Ngay_CT) YEARS,MONTH(Ngay_CT) MONTHS,LEFT(TK_Ketoan,4) TK_Ketoan      ');
    SQL.Add('                     ,SUM(Sotien_ben_no_Noi_te)Sotien_ben_no_Noi_te      ');
    SQL.Add('      	              ,SUM(Sotien_ben_co_Noi_te)Sotien_ben_co_Noi_te      ');
    SQL.Add('              FROM GP_Import_Cost     ');
    SQL.Add('              WHERE YEAR(Ngay_CT)='''+CBX3.Text+''' AND MONTH(Ngay_CT)='''+CBX4.Text+'''      ');
    SQL.Add('               AND LEFT(Ma_bo_phan,1) =''A''    ');
    SQL.Add('      	        AND Maso_TK_doi_ung=''1541''      ');
    SQL.Add('              GROUP BY YEAR(Ngay_CT),MONTH(Ngay_CT),LEFT(TK_Ketoan,4)      ');
    SQL.Add('              UNION ALL      ');
    SQL.Add('              SELECT YEAR(Ngay_CT) YEARS,MONTH(Ngay_CT) MONTHS,LEFT(TK_Ketoan,4) TK_Ketoan      ');
    SQL.Add('                     ,SUM(Sotien_ben_no_Noi_te-ROUND(Sotien_ben_no_Noi_te/2,0))Sotien_ben_no_Noi_te      ');
    SQL.Add('      	              ,SUM(Sotien_ben_co_Noi_te-ROUND(Sotien_ben_co_Noi_te/2,0))Sotien_ben_co_Noi_te      ');
    SQL.Add('              FROM GP_Import_Cost      ');
    SQL.Add('              WHERE YEAR(Ngay_CT)='''+CBX3.Text+''' AND MONTH(Ngay_CT)='''+CBX4.Text+'''     ');
    SQL.Add('                AND Ma_bo_phan=''TX''     ');
    SQL.Add('              GROUP BY YEAR(Ngay_CT),MONTH(Ngay_CT),LEFT(TK_Ketoan,4)      ');
    SQL.Add('      	    )CP      ');
    SQL.Add('        GROUP BY YEARS,MONTHS    ');
    SQL.Add('       )CP    ');
    //

    SQL.Add('  IF OBJECT_ID(''tempdb..#MonthlyMatCost'') IS NOT NULL       ');
    SQL.Add('  BEGIN DROP TABLE #MonthlyMatCost END      ');
    SQL.Add('  Select CW_MatCostMonth.KCYEAR,CW_MatCostMonth.KCMONTH  ');
    SQL.Add('  		    ,CW_MatCostMonth.DDBH as G_DDBH --G  ');
    SQL.Add('  		    ,max(Pairs) as Pairs  ');
    //SQL.Add('  		    ,max(FKCQy) as H_FKCQy --H SL Chua Thuc hien ky truoc  ');
    SQL.Add('  		    ,case when max(FKCQy)>0 then max(FKCQy) else max(NoFKCQty1) end as H_FKCQy --H SL Chua Thuc hien ky truoc  ');
    SQL.Add('  		    ,max(NoFKCQty1) as NoFKCQty1   ');
    SQL.Add('  		    ,max(InQty) as I_InQty --I SL Nhap Kho  ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)<>''W'' then VNACCMon end) as J_VNACCMon_Mas -- J CP NVL DDDK  ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)=''W'' then VNACCMon end) as K_VNACCMon_HC -- K CP HC DDDK  ');
    SQL.Add('  		    ,sum(VNACCMon) as L_VNACCMon -- L Tong Cong DDDK  ');
    SQL.Add('  		    ,case when InQty>0 then 100 else 0 end M_Rate_TP --M ty le thuc hien TP  ');
    SQL.Add('  		    ,InQty as N_SP_TuongDuong --N SP hoan thanh tuong duong  ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)<>''W'' then VNACC end) as O_VNACC_Mas -- O CP NVLTT   ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)<>''W'' then ZVNACC end) as P_ZVNACC_Mas -- P CP NVL phan bo  ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)=''W'' then VNACC end) as Q_VNACC_HC -- Q CP HC  ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)=''W'' then ZVNACC end) as R_ZVNACC_HC -- R CP HC phan bo  ');
    //SQL.Add('  		    ,max(NotInQty) as X_NotInQty --X SL DDCK  ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)<>''W'' then SemiVNACC end) as Y_SemiVNACC_Mas --Y CP DDCK NVL  ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)=''W'' then SemiVNACC end) as Z_SemiVNACCC_HC -- Z CP DDCK HC  ');
    SQL.Add('  		    ,sum(SemiVNACC) as AA_SemiVNACC --AA Tong cong DDCK  ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)<>''W'' then FShoeVNACC end) as AB_FShoeVNACC_Mas -- AB CP NVLTT Chinh  ');
    SQL.Add('  		    ,max(case when RIGHT(CKBH,1)=''W'' then FShoeVNACC end) as AC_FShoeVNACC_HC -- AC CP NVL HC  ');
    SQL.Add('  		    ,case when max(InQty)>0  then ISNULL(CW_MatCostMonth_Price.USPrice,RY_VNPRICE.VNPRICE) else '''' end as AK_GIABAN -- AK Gia ban 1 doi  ');
    SQL.Add('  		    ,case when max(InQty)>0 then ISNULL(CW_MatCostMonth_Price.USPrice,RY_VNPRICE.VNPRICE) *max(InQty) else '''' end as AL_DOANHTHU --AL Doanh thu du kien  ');
    SQL.Add('  into #MonthlyMatCost      ');
    SQL.Add('  From CW_MatCostMonth  ');
    SQL.Add('  Left join (	Select DDBH,RY_VNPRICE.VNPRICE  ');
    SQL.Add('  			        From CW_MatCostMonth left join RY_VNPRICE   ');
    SQL.Add('  			        on CW_MatCostMonth.DDBH=RY_VNPRICE.RYNO  ');
    SQL.Add('  			        Where KCYEAR='''+CBX3.Text+'''  and KCMONTH='''+CBX4.Text+'''   ');
    SQL.Add('  			          and left(DDBH,1)=''Y'' and InQty>0  ');
    SQL.Add('               Group by  DDBH,RY_VNPRICE.VNPRICE ');
    SQL.Add('  			        Union all  ');
    SQL.Add('  			        Select CW_MatCostMonth.DDBH,RY_VNPRICE.VNPRICE  ');
    SQL.Add('  			        From CW_MatCostMonth left join CBY_Orders   ');
    SQL.Add('  			        on CW_MatCostMonth.DDBH=CBY_Orders.MasterOrder  ');
    SQL.Add('  			        Left join RY_VNPRICE on  CBY_Orders.workOrderId=RY_VNPRICE.RYNO  ');
    SQL.Add('  			        Where KCYEAR='''+CBX3.Text+'''  and KCMONTH='''+CBX4.Text+'''   ');
    SQL.Add('  			          and left(DDBH,3)=''CBY'' and InQty>0  ');
    SQL.Add('               Group by  CW_MatCostMonth.DDBH,RY_VNPRICE.VNPRICE ');
    SQL.Add('  			        Union all  ');
    SQL.Add('  			        Select  DDBH,round(sum(shoetestshipping.amount)/sum(shoetestshipping.qty),2) as VNPRICE  ');
    SQL.Add('  			        From CW_MatCostMonth left join ShoeTest   ');
    SQL.Add('  			        on CW_MatCostMonth.DDBH=ShoeTest.YPDH  ');
    SQL.Add('  			        Left join shoetestshipping on ShoeTest.TestNo=shoetestshipping.TestNo  ');
    SQL.Add('  			          and YEAR(shipdate_final)='''+CBX3.Text+'''  and MONTH(shipdate_final)='''+CBX4.Text+'''   ');
    SQL.Add('  			        Where KCYEAR='''+CBX3.Text+'''  and KCMONTH='''+CBX4.Text+'''   ');
    SQL.Add('  			          and left(DDBH,3) <> ''CBY''  ');
    SQL.Add('  			          and SUBSTRING(DDBH,4,1)=''V''  and InQty>0   ');
    SQL.Add('  			        Group by DDBH  ');
    SQL.Add('  			        Union All  ');
    SQL.Add('  			        Select CW_MatCostMonth.DDBH,USPrice as VNPRICE  ');
    SQL.Add('  			        From CW_MatCostMonth inner join LIY_DD.dbo.OUTSOLE_PRICE Price  ');
    SQL.Add('  			        on CW_MatCostMonth.DDBH=Price.RYNO  ');
    SQL.Add('  			        Where KCYEAR='''+CBX3.Text+''' and KCMONTH='''+CBX4.Text+''' and InQty>0  ');
    SQL.Add('  			        Group by CW_MatCostMonth.DDBH,USPrice  ');
    SQL.Add('           ) RY_VNPRICE on RY_VNPRICE.DDBH=CW_MatCostMonth.DDBH  ');
    SQL.Add('  Left join  CW_MatCostMonth_Price on  CW_MatCostMonth_Price.KCYEAR = CW_MatCostMonth.KCYEAR  ');
    SQL.Add('             and CW_MatCostMonth_Price.KCMONTH= CW_MatCostMonth.KCMONTH and CW_MatCostMonth_Price.DDBH = CW_MatCostMonth.DDBH ');
    SQL.Add('  Where CW_MatCostMonth.KCYEAR='''+CBX3.Text+'''  and CW_MatCostMonth.KCMONTH='''+CBX4.Text+'''   ');
    SQL.Add('  Group by CW_MatCostMonth.KCyear,CW_MatCostMonth.KCmonth,CW_MatCostMonth.DDBH,InQty,RY_VNPRICE.VNPRICE,CW_MatCostMonth_Price.USPrice ');
    SQL.Add('  Order by CW_MatCostMonth.KCYEAR,CW_MatCostMonth.KCMONTH,CW_MatCostMonth.DDBH  ');

    SQL.Add('  IF OBJECT_ID(''tempdb..#GTTotal'') IS NOT NULL       ');
    SQL.Add('  BEGIN DROP TABLE #GTTotal END   ');
    SQL.Add('  Select KCYEAR,KCMONTH, Factory, G_DDBH, Pairs, H_FKCQy, NoFKCQty1, I_InQty, J_VNACCMon_Mas, K_VNACCMon_HC, L_VNACCMon, M_Rate_TP, N_SP_TuongDuong, O_VNACC_Mas  ');
    SQL.Add('  	      , P_ZVNACC_Mas, Q_VNACC_HC, R_ZVNACC_HC, S_CPPB  ');
    SQL.Add('  	      , ISNULL(O_VNACC_Mas,0)+ISNULL(P_ZVNACC_Mas,0)+ISNULL(Q_VNACC_HC,0)+ISNULL(R_ZVNACC_HC,0)+ISNULL(S_CPPB,0) T_TCPPS, U_CP622, V_CP627  ');
    SQL.Add('  	      ,(ISNULL(O_VNACC_Mas,0)+ISNULL(P_ZVNACC_Mas,0)+ISNULL(Q_VNACC_HC,0)+ISNULL(R_ZVNACC_HC,0)+ISNULL(S_CPPB,0)+ISNULL(U_CP622,0)+ISNULL(V_CP627,0)) W_TOTAL  ');
    SQL.Add('  	      , X_NotInQty, Y_SemiVNACC_Mas, Z_SemiVNACCC_HC, AA_SemiVNACC, AB_FShoeVNACC_Mas, AC_FShoeVNACC_HC, S_CPPB as AD_CPPB   ');
    SQL.Add('  	      , ISNULL(AB_FShoeVNACC_Mas,0)+ISNULL(AC_FShoeVNACC_HC,0)+ISNULL(S_CPPB,0) AE_TCPNVL   ');
    SQL.Add('  	      , U_CP622 as AF_CPNCTT,V_CP627 as AG_CPSXC  ');
    SQL.Add('  	      , ISNULL(AB_FShoeVNACC_Mas,0)+ISNULL(AC_FShoeVNACC_HC,0)+ISNULL(S_CPPB,0)+ISNULL(U_CP622,0)+ISNULL(V_CP627,0) AH_TGTSP  ');
    //SQL.Add('  	      , CASE WHEN ISNULL(I_InQty,0)>0 THEN ROUND((ISNULL(AB_FShoeVNACC_Mas,0)+ISNULL(AC_FShoeVNACC_HC,0)+ISNULL(S_CPPB,0)+ISNULL(U_CP622,0)+ISNULL(V_CP627,0))/I_InQty,0) ELSE 0 END AI_GIATHANH_1DOI      ');
    SQL.Add('  	      , CASE WHEN ISNULL(I_InQty,0)>0 THEN (ISNULL(AB_FShoeVNACC_Mas,0)+ISNULL(AC_FShoeVNACC_HC,0)+ISNULL(S_CPPB,0)+ISNULL(U_CP622,0)+ISNULL(V_CP627,0))/I_InQty ELSE 0 END AI_GIATHANH_1DOI      ');
    //SQL.Add('         , CASE WHEN ISNULL(I_InQty,0)>0 THEN ROUND(((ISNULL(AB_FShoeVNACC_Mas,0)+ISNULL(AC_FShoeVNACC_HC,0)+ISNULL(S_CPPB,0)+ISNULL(U_CP622,0)+ISNULL(V_CP627,0))/I_InQty)/'+ExchangeEdit.Text+',2) ELSE 0 END AJ_GT1DOI_USD      ');
    SQL.Add('         , CASE WHEN ISNULL(I_InQty,0)>0 THEN ((ISNULL(AB_FShoeVNACC_Mas,0)+ISNULL(AC_FShoeVNACC_HC,0)+ISNULL(S_CPPB,0)+ISNULL(U_CP622,0)+ISNULL(V_CP627,0))/I_InQty)/'+ExchangeEdit.Text+' ELSE 0 END AJ_GT1DOI_USD      ');
    SQL.Add('  	      , AK_GIABAN,AL_DOANHTHU      ');
    SQL.Add('         , CASE WHEN ISNULL(I_InQty,0)>0 THEN ((ISNULL(AB_FShoeVNACC_Mas,0)+ISNULL(AC_FShoeVNACC_HC,0)+ISNULL(S_CPPB,0)+ISNULL(U_CP622,0)+ISNULL(V_CP627,0))/I_InQty)/'+ExchangeEdit.Text+'/AK_GIABAN ELSE 0 END AM_GVGB      ');
    SQL.Add('         , AN_TLPB,AP_KHACHHANG,AR_VNPrice,TK621 as CP621_GP,TK622 as CP622_GP,TK627 as CP627_GP  INTO #GTTotal        	  ');
    SQL.Add('  From (  ');
    SQL.Add('  		    Select Cost.KCYEAR, Cost.KCMONTH ');
    SQL.Add('                , Case When left(G_DDBH,3) <> ''CBY'' and SUBSTRING(G_DDBH,4,1)=''V'' then ''A-KT'' When left(G_DDBH,3) =''CBY'' and SUBSTRING(G_DDBH,4,1)=''V'' then ''A-KTCBY'' ');
    SQL.Add('           						When G_DDBH in ( Select top 1 DDBH From LIY_DD.dbo.OUTSOLE_RK Where DDBH=Cost.G_DDBH) then ''A-DE'' else ''A'' end as Factory ');
    SQL.Add('                , Cost.G_DDBH, Cost.Pairs, Cost.H_FKCQy,Cost.NoFKCQty1, Cost.I_InQty, Cost.J_VNACCMon_Mas, Cost.K_VNACCMon_HC, Cost.L_VNACCMon, Cost.M_Rate_TP, Cost.N_SP_TuongDuong  ');
    SQL.Add('  			         , Cost.O_VNACC_Mas, Cost.P_ZVNACC_Mas, Cost.Q_VNACC_HC, Cost.R_ZVNACC_HC  ');
    SQL.Add('  			         , Case when Isnull(Cost.I_InQty,0) > 0 THEN ROUND(convert(float,FCost.TK621)*ISNULL(Cost.AL_DOANHTHU,0)/MC.DOANHTHU_ALL,0) ELSE 0 END S_CPPB   ');
    SQL.Add('  	             , Case when Isnull(Cost.I_InQty,0) > 0 THEN ROUND(convert(float,FCost.TK622)*ISNULL(Cost.AL_DOANHTHU,0)/MC.DOANHTHU_ALL,0) ELSE 0 END U_CP622      ');
    SQL.Add('  	             , Case when Isnull(Cost.I_InQty,0) > 0 THEN ROUND(convert(float,FCost.TK627)*ISNULL(Cost.AL_DOANHTHU,0)/MC.DOANHTHU_ALL,0) ELSE 0 END V_CP627   ');
    //SQL.Add('  	             , Cost.X_NotInQty, Cost.Y_SemiVNACC_Mas, Cost.Z_SemiVNACCC_HC, Cost.AA_SemiVNACC,Cost.AB_FShoeVNACC_Mas, Cost.AC_FShoeVNACC_HC  ');
    SQL.Add('  	             , IsNull(Cost.H_FKCQy,0) - IsNull(Cost.I_InQty,0) as X_NotInQty, Cost.Y_SemiVNACC_Mas, Cost.Z_SemiVNACCC_HC, Cost.AA_SemiVNACC,Cost.AB_FShoeVNACC_Mas, Cost.AC_FShoeVNACC_HC  ');
    SQL.Add('  	             , Cost.AK_GIABAN, Cost.AL_DOANHTHU   ');
    SQL.Add('  	             , Case when Isnull(Cost.I_InQty,0) > 0 then Isnull(Cost.AL_DOANHTHU,0)/MC.DOANHTHU_ALL else 0 end as AN_TLPB  ');
    SQL.Add('  	             ,''CONVERSE'' as AP_KHACHHANG	  ');
    SQL.Add('  			         , Cost.AK_GIABAN as AR_VNPrice,FCost.TK621,FCost.TK622,FCost.TK627   ');
    SQL.Add('  		    From #MonthlyMatCost Cost   ');
    SQL.Add('  		    Left join #FactoryCost FCost  ');
    SQL.Add('  		    on Cost.KCYEAR=FCost.YEARS and Cost.KCMONTH=FCost.MONTHS  ');
    SQL.Add('  		    Left join ( Select sum(AL_DOANHTHU) as DOANHTHU_ALL From #MonthlyMatCost ) MC on 1=1   ');
    SQL.Add('  	  ) MCE  ');

    SQL.Add('  INSERT INTO CW_MatCostMonth_Total   ');
    SQL.Add('  SELECT*,'''+ExchangeEdit.Text+''','''+main.edit1.text+''',GETDATE(),''1''       ');
    SQL.Add('  FROM #GTTotal     ');
    //FuncObj.WriteErrorLog(sql.Text);
    ExecSQL;
  end;

  Showmessage('Finish');
  button1.Click;

end;

procedure TSemiMonthTotal.Button2Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query2);
  end else
  begin
    ExportDefaultExcel(Query2);
  end;

end;
procedure TSemiMonthTotal.ExportDefaultExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if query2.Active then
  begin
    if query2.recordcount=0 then
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
    for i:=0 to DBGridEh2.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGridEh2.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+2].font.Name:='Times New Roman';
      eclApp.Cells.Cells.item[1,i+2].font.size:='10';
    end;
    query2.First;
    j:=2;
    while   not  query2.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh2.Columns.Count-1 do
      begin
        //eclApp.Cells[j,i+8].NumberFormatLocal:='@';
        {if (DBGridEh2.Fields[i].FieldName = 'AI_GIATHANH_1DOI')   then
          eclApp.ActiveSheet.Cells[j, i + 2].NumberFormat := '#,##0';

        if DBGridEh2.Fields[i].FieldName = 'AJ_GT1DOI_USD' then
          eclApp.ActiveSheet.Cells[j, i + 2].NumberFormat := '#,##0.00';

        if DBGridEh2.Fields[i].FieldName = 'AL_DOANHTHU' then
          eclApp.ActiveSheet.Cells[j, i + 2].NumberFormat := '#,##0.00';  }

        eclApp.Cells(j,i+2):=DBGridEh2.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+2].font.Name:='Times New Roman';
        eclApp.Cells.Cells.item[j,i+2].font.size:='10';
      end;
      query2.Next;
      inc(j);
    end;
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TSemiMonthTotal.ExportFormatExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
begin
    with TempQry do
    begin
      active:=false;
      sql.Clear;
      sql.Add(' Select round(sum(cast(AL_DOANHTHU as decimal(38,10))),2)  as DOANHTHU_ALL From CW_MatCostMonth_Total Where KCYEAR='''+CBX3.Text+''' and KCMONTH='''+CBX4.Text+''' ');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN179242.xlsx'),Pchar(AppDir+'Additional\Account_SN179242.xlsx'),false);
     if FileExists(AppDir+'Additional\Account_SN179242.xlsx') then
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
          eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN179242.xlsx');
          eclApp.WorkSheets[1].Activate;
          eclApp.Cells(1,2):='BANG TINH GIA THANH THANG '+ CBX4.Text+'.'+CBX3.Text+'- '+CBX3.Text+'年'+ CBX4.Text+'月成本計算表';
          Query2.First;
          j:=3;
          {while   not  query2.Eof   do
          begin
            eclApp.ActiveSheet.Rows[j+1].Insert(-4121);
            for i:=0 to DBGridEh2.Columns.Count-1 do
            begin
              if ((DBGridEh2.Fields[i].FieldName = 'AN_TLPB') or (DBGridEh2.Fields[i].FieldName = 'M_Rate_TP') or (DBGridEh2.Fields[i].FieldName = 'AM_GVGB')) then
              begin
                eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].Value/100;
              end else
              begin
                eclApp.Cells(j,i+1):=DBGridEh2.Fields[i].Value;
              end;
            end;
            Query2.Next;
            inc(j);
          end; }
          for i:=0 to Query2.RecordCount-1 do
          begin
            eclApp.ActiveSheet.Rows[j+1].Insert(-4121);
            eclApp.Cells(j,1):=Query2.FieldByName('Factory').Value;
            eclApp.Cells(j,2):=Query2.FieldByName('G_DDBH').Value;
            eclApp.Cells(j,3):=Query2.FieldByName('H_FKCQy').Value;
            eclApp.Cells(j,4):=Query2.FieldByName('I_InQty').Value;
            eclApp.Cells(j,5):=Query2.FieldByName('J_VNACCMon_Mas').Value;
            eclApp.Cells(j,6):=Query2.FieldByName('K_VNACCMon_HC').Value;
            eclApp.Cells(j,7):=Query2.FieldByName('L_VNACCMon').Value;
            eclApp.Cells(j,8):=Query2.FieldByName('M_Rate_TP').Value/100;
            eclApp.Cells(j,9):=Query2.FieldByName('N_SP_TuongDuong').Value;
            eclApp.Cells(j,10):=Query2.FieldByName('O_VNACC_Mas').Value;
            eclApp.Cells(j,11):=Query2.FieldByName('P_ZVNACC_Mas').Value;
            eclApp.Cells(j,12):=Query2.FieldByName('Q_VNACC_HC').Value;
            eclApp.Cells(j,13):=Query2.FieldByName('R_ZVNACC_HC').Value;
            eclApp.Cells(j,14):=Query2.FieldByName('S_CPPB').Value;
            eclApp.Cells(j,15):=Query2.FieldByName('T_TCPPS').Value;
            eclApp.Cells(j,16):=Query2.FieldByName('U_CP622').Value;
            eclApp.Cells(j,17):=Query2.FieldByName('V_CP627').Value;
            eclApp.Cells(j,18):=Query2.FieldByName('W_TOTAL').Value;
            eclApp.Cells(j,19):=Query2.FieldByName('X_NotInQty').Value;
            eclApp.Cells(j,20):=Query2.FieldByName('Y_SemiVNACC_Mas').Value;
            eclApp.Cells(j,21):=Query2.FieldByName('Z_SemiVNACCC_HC').Value;
            eclApp.Cells(j,22):=Query2.FieldByName('AA_SemiVNACC').Value;
            eclApp.Cells(j,23):=Query2.FieldByName('AB_FShoeVNACC_Mas').Value;
            eclApp.Cells(j,24):=Query2.FieldByName('AC_FShoeVNACC_HC').Value;
            eclApp.Cells(j,25):=Query2.FieldByName('AD_CPPB').Value;
            eclApp.Cells(j,26):=Query2.FieldByName('AE_TCPNVL').Value;
            eclApp.Cells(j,27):=Query2.FieldByName('AF_CPNCTT').Value;
            eclApp.Cells(j,28):=Query2.FieldByName('AG_CPSXC').Value;
            eclApp.Cells(j,29):=Query2.FieldByName('AH_TGTSP').Value;
            eclApp.Cells(j,30):=Query2.FieldByName('AI_GIATHANH_1DOI').Value;
            eclApp.Cells(j,31):=Query2.FieldByName('AJ_GT1DOI_USD').Value;
            eclApp.Cells(j,32):=Query2.FieldByName('AK_GIABAN').Value;
            eclApp.Cells(j,33):=Query2.FieldByName('AL_DOANHTHU').Value;
            eclApp.Cells(j,34):=Query2.FieldByName('AM_GVGB').Value/100;
            eclApp.Cells(j,35):=Query2.FieldByName('AN_TLPB').Value/100;
            eclApp.Cells(j,36):=Query2.FieldByName('AP_KHACHHANG').Value;
            Query2.Next;
            inc(j);
          end;
          eclApp.ActiveSheet.Rows[j].Delete;
          eclApp.Cells[j,3].Formula:='=SUM(C3:C'+inttostr(j-1)+')';
          eclApp.Cells[j,4].Formula:='=SUM(D3:D'+inttostr(j-1)+')';
          eclApp.Cells[j,5].Formula:='=SUM(E3:E'+inttostr(j-1)+')';
          eclApp.Cells[j,6].Formula:='=SUM(F3:F'+inttostr(j-1)+')';
          eclApp.Cells[j,7].Formula:='=SUM(G3:G'+inttostr(j-1)+')';
          eclApp.Cells[j,8].Formula:='=SUM(H3:H'+inttostr(j-1)+')';
          eclApp.Cells[j,9].Formula:='=SUM(I3:I'+inttostr(j-1)+')';
          eclApp.Cells[j,10].Formula:='=SUM(J3:J'+inttostr(j-1)+')';
          eclApp.Cells[j,11].Formula:='=SUM(K3:K'+inttostr(j-1)+')';
          eclApp.Cells[j,12].Formula:='=SUM(L3:L'+inttostr(j-1)+')';
          eclApp.Cells[j,13].Formula:='=SUM(M3:M'+inttostr(j-1)+')';
          eclApp.Cells[j,14].Formula:='=SUM(N3:N'+inttostr(j-1)+')';
          eclApp.Cells[j,15].Formula:='=SUM(O3:O'+inttostr(j-1)+')';
          eclApp.Cells[j,16].Formula:='=SUM(P3:P'+inttostr(j-1)+')';
          eclApp.Cells[j,17].Formula:='=SUM(Q3:Q'+inttostr(j-1)+')';
          eclApp.Cells[j,18].Formula:='=SUM(R3:R'+inttostr(j-1)+')';
          eclApp.Cells[j,19].Formula:='=SUM(S3:S'+inttostr(j-1)+')';
          eclApp.Cells[j,20].Formula:='=SUM(T3:T'+inttostr(j-1)+')';
          eclApp.Cells[j,21].Formula:='=SUM(U3:U'+inttostr(j-1)+')';
          eclApp.Cells[j,22].Formula:='=SUM(V3:V'+inttostr(j-1)+')';
          eclApp.Cells[j,23].Formula:='=SUM(W3:W'+inttostr(j-1)+')';
          eclApp.Cells[j,24].Formula:='=SUM(X3:X'+inttostr(j-1)+')';
          eclApp.Cells[j,25].Formula:='=SUM(Y3:Y'+inttostr(j-1)+')';
          eclApp.Cells[j,26].Formula:='=SUM(Z3:Z'+inttostr(j-1)+')';
          eclApp.Cells[j,27].Formula:='=SUM(AA3:AA'+inttostr(j-1)+')';
          eclApp.Cells[j,28].Formula:='=SUM(AB3:AB'+inttostr(j-1)+')';
          eclApp.Cells[j,29].Formula:='=SUM(AC3:AC'+inttostr(j-1)+')';
          eclApp.Cells[j,30].Formula:='=SUM(AD3:AD'+inttostr(j-1)+')';
          eclApp.Cells[j,31].Formula:='=SUM(AE3:AE'+inttostr(j-1)+')';
          eclApp.Cells[j,32].Formula:='=SUM(AF3:AF'+inttostr(j-1)+')';
          //eclApp.Cells[j,33].Formula:='=SUM(AG3:AG'+inttostr(j-1)+')';
          eclApp.Cells(j,33):= TempQry.FieldByName('DOANHTHU_ALL').Value;
          eclApp.Cells[j,34].Formula:='=SUM(AH3:AH'+inttostr(j-1)+')';
          eclApp.Cells[j,35].Formula:='=SUM(AI3:AI'+inttostr(j-1)+')';
          //eclapp.columns.autofit;
          showmessage('Succeed.');
          eclApp.Visible:=True;
        except
          on   F:Exception   do
          showmessage(F.Message);
        end;
     end;

end;

procedure TSemiMonthTotal.Adjust1Click(Sender: TObject);
begin
  Adjust_CP:=TAdjust_CP.create(self);
  Adjust_CP.Button1.Click;
  Adjust_CP.show;
end;

procedure TSemiMonthTotal.Query2AfterOpen(DataSet: TDataSet);
begin
  with TempQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' Select top 1 CWHL From CW_MatCostMonth_Total Where KCYEAR='''+CBX3.Text+''' and KCMONTH='''+CBX4.Text+''' ');
    Active:=true;
  end;
  if TempQry.RecordCount>0 then
  begin
    ExchangeEdit.Text:= TempQry.fieldbyname('CWHL').AsString;
  end;

  with CheckQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add(' Select * From CW_MatCostMonth_Total Where KCYEAR='''+CBX3.Text+''' and KCMONTH='''+CBX4.Text+''' ');
    Active:=true;
  end;
  if CheckQry.RecordCount=0 then
  begin
    if messagedlg('No data. Do you want to calculate it ?',mtCustom, [mbYes,mbNo], 0)=mrYes then
    begin
      Button5.Click;
    end;
  end;
end;

end.
