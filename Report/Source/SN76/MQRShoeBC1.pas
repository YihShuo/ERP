unit MQRShoeBC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,dateutils,comobj,
  ComCtrls;

type
  TMQRShoeBC = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    CBX1: TComboBox;
    Label7: TLabel;
    CBX2: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DS1: TDataSource;
    QDep: TQuery;
    Qtemp: TQuery;
    GroupBox1: TGroupBox;
    CK1: TCheckBox;
    CK2: TCheckBox;
    CK3: TCheckBox;
    CK4: TCheckBox;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    TS3: TTabSheet;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DBGridEh3: TDBGridEh;
    QCom: TQuery;
    DS2: TDataSource;
    OpenDialog: TOpenDialog;
    QCom2: TQuery;
    DS3: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    AppDir:string;
    OrderListExcel:Variant;
    { Private declarations }
    function Get_SCBBS_SubSQL():String;
    function Get_WOPR_SubSQL():String;
    function Get_KCRK_QC_SubSQL():String;
    function Get_GXLB_SubSQL():String;
    procedure ExportDefaultExcel1();
    procedure ExportDefaultExcel();
    procedure ExportFormatExcel();
    procedure ExportExternalExcel();

  public
    { Public declarations }
    ExcelSheetI:integer;
  end;

var
  MQRShoeBC: TMQRShoeBC;
  sdate,edate:Tdate;

implementation

uses main1, FunUnit, ExcelSheetDlg1;

{$R *.dfm}

procedure TMQRShoeBC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMQRShoeBC.FormDestroy(Sender: TObject);
begin
  MQRShoeBC:=nil;
end;
//SCBBS工段回傳SQL
function TMQRShoeBC.Get_SCBBS_SubSQL():String;
var SubSQL:string;
begin

   //20140308舊版異動SMZL
   if (CK1.Checked or CK2.Checked) then SubSQL:=SubSQL+' scbbs.GXLB = ''A'' or ';
   if CK3.Checked then SubSQL:=SubSQL+' scbbs.GXLB = ''C'' or ';
   if CK4.Checked then SubSQL:=SubSQL+' scbbs.GXLB = ''S'' or ';
   if SubSQL<>'' then SubSQL:=' and ( '+Copy(SubSQL,1,length(SubSQL)-4)+')';
   result:=SubSQL;
end;
//WOPR工段回傳SQL
function TMQRShoeBC.Get_WOPR_SubSQL():String;
var SubSQL:string;
begin
   if CK1.Checked then SubSQL:=SubSQL+' WOPR.GXLB = ''A'' or ';
   if CK2.Checked then SubSQL:=SubSQL+' WOPR.GXLB = ''AR'' or ';
   if CK3.Checked then SubSQL:=SubSQL+' WOPR.GXLB = ''C'' or ';
   if CK4.Checked then SubSQL:=SubSQL+' WOPR.GXLB = ''C+S'' or ';
   if SubSQL<>'' then SubSQL:=' and ( '+Copy(SubSQL,1,length(SubSQL)-4)+')';
   result:=SubSQL;
end;
//KCRK_QC工段回傳SQL
function TMQRShoeBC.Get_KCRK_QC_SubSQL():String;
var SubSQL:string;
begin
   if CK2.Checked then SubSQL:=SubSQL+' BDepartment.GXLB = ''A'' or ';
   if SubSQL<>'' then SubSQL:=' and ( '+Copy(SubSQL,1,length(SubSQL)-4)+')';
   result:=SubSQL;
end;
//
function TMQRShoeBC.Get_GXLB_SubSQL():String;
var SubSQL:string;
begin
   if CK1.Checked then SubSQL:=SubSQL+' ''A'' ';
   if CK2.Checked then SubSQL:=SubSQL+' ''AR'' ';
   if CK3.Checked then SubSQL:=SubSQL+' ''C'' ';
   if CK4.Checked then SubSQL:=SubSQL+' ''S'' ';
   if SubSQL<>'' then SubSQL:=Copy(SubSQL,1,length(SubSQL));
   result:=SubSQL;
end;

procedure TMQRShoeBC.Button1Click(Sender: TObject);
var
  a,b,c,j :word;
  IsThisMonth:boolean;
  iYear,iMonth,iDay:word;//今天去Decode
begin
  //至少勾選一個工段
  if ((CK1.Checked=false) and (CK2.Checked=false) and (CK3.Checked=false) and (CK4.Checked=false)) then
  begin
    showmessage('Please select 1 GXLB at last!');
    exit;
  end;
  DecodeDate(Date(),iYear,iMonth,iDay);
  a:=strtoint(CBX1.text);
  b:=strtoint(CBX2.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  //判斷選擇是否為當月
  if ((a=iYear) and (b=iMonth)) then
  begin
    IsThisMonth:=true;
    edate:=Date();//從月初抓到今天就可以了
  end else
  begin
    //非當月從月初抓到月底
    IsThisMonth:=false;
    edate:=endofthemonth(sdate);
  end;



  //整理交叉表的內容
  if PC1.ActivePageIndex=0 then
  begin
  //整理當月工作日期
    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select distinct NDay ');
      sql.add('from (select  datepart(day, SCBB.SCDate) as NDay from SCBB');
      sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNo ');
      sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      //sql.add('             and SCBB.GSBH ='+''''+main.sGSBH+''''+'');
      sql.Add('      union all');
      sql.add('      select  datepart(day, SMZL.SCanDate) as NDay from SMZL');
      sql.add('      left join BDepartment on BDepartment.ID=SMZL.DepNo ');
      sql.add('      where  convert(smalldatetime,convert(varchar,SMZL.SCanDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('      ) as DayList order by NDay');
      active:=true;
    end;
    with QDep do
    begin
      active:=false;
      sql.Clear;
      sql.add('select QCC.DepNo,QCC.DepName,QCC.GXLB,QCC.SB');
      while not QTemp.eof do
      begin
        //e:=Qtemp.fieldbyname('NDay').asstring;
        sql.add(',sum(case  when NDay='+''''+Qtemp.fieldbyname('NDay').asstring+'''');
        sql.add(' then Qty  end) as '+''''+Qtemp.fieldbyname('NDay').asstring+'''');
        QTemp.Next;
      end;
          //部門檢驗數量
      sql.add('from ( ');
      sql.add('	     select WOPR.DepNo,BDepartment.DepName,Replace(WOPR.GXLB,''C+S'',''S'') as GXLB,'+''''+'1.Total inspection'+''''+' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty');
      sql.add('             ,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.add('	     from WOPR');
      sql.add('	     left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.add('      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('             and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //20140226根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_WOPR_SubSQL());
      //
      sql.add('	     group by WOPR.DepNo,BDepartment.DepName,WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE)');
      //鞋子 B 品數量
      sql.add('	     union all');
      sql.add('	     select KCRK_BC.DepID,BDepartment.DepName,BDepartment.GXLB,'+''''+'2.B Class Shoe'+''''+' as SB,SUM(ISNULL(KCRKS_BC.Qty, 0)) as Qty');
      sql.add('             ,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('	     from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');      
      sql.add('      where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('             and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('	     group by KCRK_BC.DepID,BDepartment.DepName,BDepartment.GXLB,DATEPART(DAY,KCRK_BC.CFMDate)');

      //鞋子 C 品數量
      sql.add('	     union all');
      sql.add('	     select KCRK_BC.DepID,BDepartment.DepName,BDepartment.GXLB,'+''''+'3.C Class Shoe'+''''+' as SB,SUM(ISNULL(KCRKS_BC.Qty, 0)) as Qty');
      sql.add('             ,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('	     from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');      
      sql.add('      where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('             and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('	     group by KCRK_BC.DepID,BDepartment.DepName,BDepartment.GXLB,DATEPART(DAY,KCRK_BC.CFMDate)');
      //B/C 比率
      sql.add('	     union all');
      sql.add('      select WOPRB.DepNo,WOPRB.DepName,Replace(WOPRB.GXLB,''C+S'',''S''),'+''''+'4. B/C Rate%'+''''+' as SB,');
      sql.add('			 Round(((CAST(QCRDB.Qty AS Float)/NULLIF(WOPRB.Qty,0))*100),2) as Qty,WOPRB.NDay');
      sql.add('	     from(select WOPR.DepNo,BDepartment.DepName,WOPR.GXLB,(SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty)-sum(IsNull(WOPR.ShoeB,0))- sum(IsNull(WOPR.ShoeC,0))) as Qty');
      sql.add('           ,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.add('		        from WOPR');
      sql.add('		        left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.add('           where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
      sql.add('                  '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                  and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //20140226根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_WOPR_SubSQL());
      //
      sql.add('		        group by WOPR.DepNo,BDepartment.DepName,WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE)) as WOPRB');
      sql.Add('	     left join (select DepNo, GXLB, Qty, Nday from (');
      sql.Add('select KCRK_BC.DepID as DepNo, ''AR'' as GXLB, sum(isnull(KCRKS_BC.Qty, 0)) as Qty, DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('			            from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');         
      sql.add('                 where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                        and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('group by KCRK_BC.DepID, KCRKS_BC.Qty, DATEPART(DAY,KCRK_BC.CFMDate))as tempKCRK_BC) as QCRDB on WOPRB.DepNo = QCRDB.DepNo and WOPRB.GXLB = QCRDB.GXLB and WOPRB.NDay = QCRDB.NDay');

      //每日 B class 總數量
      sql.add('	     union all');
      sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'5.Daily B Class Shoe'+''''+' as SB');
      sql.add('             ,SUM(IsNull(KCRKS_BC.Qty,0)) as Qty,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('		   from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'); 
      sql.add('      where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('             and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('			 group by KCRKS_BC.Qty, DATEPART(DAY,KCRK_BC.CFMDate)');

      //每日 C class 總數量
      sql.add('	     union all');
      sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'6.Daily C Class Shoe'+''''+' as SB');
      sql.add('             ,SUM(IsNull(KCRKS_BC.Qty,0)) as Qty,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('		   from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'); 
      sql.add('      where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('             and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('			 group by KCRKS_BC.Qty, DATEPART(DAY,KCRK_BC.CFMDate)');
      //每日 B/C class 總數量
      sql.add('	     union all');
      sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'7.Daily B/C Class Shoe'+''''+' as SB');
      sql.add('             ,SUM(IsNull(KCRKS_BC.Qty,0)) as Qty,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('		   from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'); 
      sql.add('      where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('             and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('			 group by KCRKS_BC.Qty, DATEPART(DAY,KCRK_BC.CFMDate)');

      //線均 B Class 數量
      sql.add('	     union all');
      sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'8.AVG B Class Shoe'+''''+' as SB');
      sql.add('             ,round(CAST(DayInsp.Qty AS Float)/Depcount.Depcount,2) as Qty,DayInsp.NDay ');
      sql.add('	     from (select SUM(IsNull(Qty,0)) as Qty,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('	    		   from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'); 
      sql.add('            where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                   and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('			       group by KCRKS_BC.Qty, DATEPART(DAY,KCRK_BC.CFMDate)) as DayInsp');
      sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.add('				          from WOPR');
      sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
      sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                        and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //20140226根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_WOPR_SubSQL());
      //
      sql.add('			            group by DATEPART(DAY,WOPR.USERDATE)) as Depcount on DayInsp.NDay = Depcount.NDay');

      //線均 C Class 數量
      sql.add('	     union all');
      sql.add('	     select '+''''+'Z'+''''+' as DepNo,'+''''+'Z'+''''+' as DepName,'' '' as GXLB,'+''''+'9.AVG C Class Shoe'+''''+' as SB');
      sql.add('             ,round(CAST(DayInsp.Qty AS Float)/Depcount.Depcount,2) as Qty,DayInsp.NDay ');
      sql.add('	     from (select SUM(IsNull(Qty,0)) as Qty,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('	    		   from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'); 
      sql.add('            where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                   and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('			       group by KCRKS_BC.Qty, DATEPART(DAY,KCRK_BC.CFMDate)) as DayInsp');
      sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.add('				          from WOPR');
      sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
      sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                        and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //20140226根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_WOPR_SubSQL());
      //
      sql.add('			            group by DATEPART(DAY,WOPR.USERDATE)) as Depcount on DayInsp.NDay = Depcount.NDay');

      //線均 B/C Class 數量
      sql.add('	     union all');
      sql.add('	     select '+''''+'Z1'+''''+' as DepNo,'+''''+'Z1'+''''+' as DepName,'' '' as GXLB,'+''''+'10.AVG B/C Class Shoe'+''''+' as SB');
      sql.add('             ,(Round( (CAST(DayInsp.Qty AS Float)/Depcount.Depcount),2)) as Qty');
      sql.add('	            ,DayInsp.NDay ');
      sql.add('	     from (select SUM(IsNull(Qty,0)) as Qty,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('			       from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO'); 
      sql.add('            where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                   and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('			       group by KCRKS_BC.Qty, DATEPART(DAY,KCRK_BC.CFMDate)) as DayInsp');
      sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.add('				          from WOPR');
      sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
      sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                        and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //20140226根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_WOPR_SubSQL());
      //
      sql.add('				          group by DATEPART(DAY,WOPR.USERDATE)) as Depcount on DayInsp.NDay = Depcount.NDay');

      //B/C RFT比率
      sql.add('	     union all');
      sql.add('	     select '+''''+'Z1'+''''+' as DepNo,'+''''+'Z1'+''''+' as DepName,'' '' as GXLB,'+''''+'11.B/C RFT%'+''''+' as SB');
      sql.add('             ,100-(Round(((CAST(TempKCRK_BC.NGQty AS Float)/Depcount.Depcount)/(CAST(DayInsp.InsQty AS Float)/Depcount.Depcount))*100,2)) as Qty');
      sql.add('	            ,DayInsp.NDay ');
      sql.add('	     from (select SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as InsQty,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.add('			       from WOPR');
      sql.add('			       left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.add('            where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
      sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                   and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //20140226根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_WOPR_SubSQL());
      //
      sql.add('			       group by DATEPART(DAY,WOPR.USERDATE)) as DayInsp');
      sql.add('	     left join (select count(distinct DepNo) as Depcount,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.add('				          from WOPR');
      sql.add('                 where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
      sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                        and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //20140226根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                         Get_WOPR_SubSQL());
      //
      sql.add('				          group by DATEPART(DAY,WOPR.USERDATE)) as Depcount on DayInsp.NDay = Depcount.NDay');
      //
      sql.add('left join (select SUM(IsNull(Qty,0)) as NGQty,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('from KCRK_BC');
      sql.add('	     left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	     left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');   
      sql.add('            where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                   and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(Get_KCRK_QC_SubSQL());
      //
      sql.add('group by DATEPART(DAY,KCRK_BC.CFMDate)) as TempKCRK_BC on DayInsp.NDay = TempKCRK_BC.NDay');          
      //
      sql.add(')as QCC');
      sql.add('group by QCC.DepNo,QCC.DepName,QCC.GXLB,QCC.SB	');
      sql.add('order by QCC.DepName,QCC.DepNo,QCC.GXLB,QCC.SB');
      //funcObj.WriteErrorLog(sql.Text);   
      active:=true;
    end;

    with DBGrideh1 do
    begin
      columns[0].Width:=0;
      columns[0].title.caption:='部門編號|DepNo';
      columns[1].Width:=95;
      columns[1].title.caption:='部門名稱|DepName';
      columns[2].Width:=40;
      columns[2].title.caption:='工段|'+columns[2].title.caption;
      columns[3].Width:=125;
      columns[3].title.caption:='項目|'+columns[3].title.caption;
      for j:=4 to QDep.FieldCount-1 do
      begin
        columns[j].Width:=35;
        columns[j].Title.Caption:='日   期   Weekday|'+columns[j].Title.Caption;
        if j mod 2 <> 0 then
          columns[j].Color:=clInfoBk;
      end;
    end;
  end;

  //Company
  if PC1.ActivePageIndex=1 then
  begin
    if ((CK1.Checked and CK2.Checked) or (CK1.Checked and CK3.Checked) or (CK1.Checked and CK4.Checked) or (CK2.Checked and CK3.Checked)
        or (CK2.Checked and CK4.Checked) or (CK3.Checked and CK4.Checked)) then
    begin
      showmessage('Pls choice only one GXLB ');
      exit;
    end;

    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select distinct NDay ');
      sql.add('from (select  datepart(day, SCBB.SCDate) as NDay from SCBB');
      sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNo ');
      sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      //sql.add('             and SCBB.GSBH ='+''''+main.sGSBH+''''+'');
      sql.add('      ) as DayList order by NDay');
      active:=true;
    end;
    
    with QCom do
    begin
      active:=false;
      sql.Clear;
      sql.add('select QCC.GSBH,QCC.GXLB,QCC.SB');
      while not QTemp.eof do
      begin
        sql.add(',sum(case  when NDay='+''''+Qtemp.fieldbyname('NDay').asstring+'''');
        sql.add(' then Qty  end) as '+''''+Qtemp.fieldbyname('NDay').asstring+'''');
        QTemp.Next;
      end;
      sql.Add(',Total');
      //生產雙數
      sql.add('from ( ');
      sql.Add('      select T1.GSBH, T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.Add('      from(select BDepartment.DepName as GSBH,');
      sql.Add('                  scbbs.GXLB,''1.Output'' as SB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay');
      sql.Add('           from scbbs');
      sql.Add('           left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('           left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('           where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.Add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('           and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(            Get_SCBBS_SubSQL());
      sql.Add('           group by BDepartment.DepName,');
      sql.Add('                    scbbs.GXLB,DATEPART(DAY,SCBB.SCDate))T1');
      sql.Add('           left join(select BDepartment.DepName as GSBH,');
      sql.Add('                            scbbs.GXLB,''1.Output'' as SB,SUM(scbbs.Qty) as Total');
      sql.Add('                     from scbbs');
      sql.Add('                     left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                     left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.Add('                               '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('                     and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                      Get_SCBBS_SubSQL());
      sql.Add('                     group by BDepartment.DepName,scbbs.GXLB)T2');
      sql.Add('           on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');
      
      //部門檢驗數量
      sql.Add('      union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('	     from(select BDepartment.DepName as GSBH,');
      sql.Add('                  Replace(WOPR.GXLB,''C+S'',''S'') as GXLB,'+''''+'2.Total inspection'+''''+' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty');
      sql.add('                  ,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.add('	          from WOPR');
      sql.add('	          left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.add('           where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
      if IsThisMonth=true then
        sql.add('                    '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                    '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and WOPR.GSBH ='+''''+main.Edit2.Text+''''+''+' and BDepartment.DepName <> ''PM''');
      //根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(            Get_WOPR_SubSQL());
      sql.add('	          group by BDepartment.DepName,WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE))T1');
      sql.Add('           left join (select BDepartment.DepName as GSBH,');
      sql.Add('                             Replace(WOPR.GXLB,''C+S'',''S'') as GXLB,''2.Total inspection'' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Total');
      sql.Add('                      from WOPR');
      sql.Add('                      left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.Add('                      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between');
      if IsThisMonth=true then
        sql.Add('                               '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.Add('                               '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and WOPR.GSBH ='+''''+main.Edit2.Text+''''+''+' and BDepartment.DepName <> ''PM''');
      //根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_WOPR_SubSQL());
      sql.Add('                      group by BDepartment.DepName,WOPR.GXLB)T2 ');
      sql.Add('           on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //鞋子 B 品數量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('	     from(select BDepartment.DepName as GSBH, BDepartment.GXLB AS GXLB,'+''''+'3.B Class Shoe'+''''+' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Qty, DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('	          from KCRK_BC');
      sql.add('	          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(            Get_KCRK_QC_SubSQL());
      sql.add('	          group by BDepartment.DepName, BDepartment.GXLB, DATEPART(DAY,KCRK_BC.CFMDate))T1');
      sql.Add('           left join (select BDepartment.DepName as GSBH, BDepartment.GXLB AS GXLB,'+''''+'3.B Class Shoe'+''''+' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Total');
      sql.Add('                      from KCRK_BC');
      sql.add('	          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.Add('                      group by BDepartment.DepName, BDepartment.GXLB)T2');
      sql.Add('           on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //鞋子 C 品數量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('	     from(select BDepartment.DepName as GSBH, BDepartment.GXLB AS GXLB,'+''''+'4.C Class Shoe'+''''+' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Qty, DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('	          from KCRK_BC');
      sql.add('	          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(            Get_KCRK_QC_SubSQL());
      sql.add('	          group by BDepartment.DepName, BDepartment.GXLB, DATEPART(DAY,KCRK_BC.CFMDate))T1');
      sql.Add('           left join (select BDepartment.DepName as GSBH, BDepartment.GXLB AS GXLB,'+''''+'4.C Class Shoe'+''''+' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Total');
      sql.Add('                      from KCRK_BC');
      sql.add('	          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.Add('                      group by BDepartment.DepName, BDepartment.GXLB)T2');
      sql.Add('           on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //B/C 比率
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('      from(select SCBB.GSBH,SCBB.GXLB,''5. B/C Rate%'' as SB,Round(((CAST(QCRDB.Qty AS Float)/NULLIF(SCBB.Qty,0))*100),2) as Qty,SCBB.NDay');
      sql.add('			      from(select BDepartment.DepName as GSBH,');
      sql.add('	                      '+Get_GXLB_SubSQL()+'as GXLB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay');
      sql.add('                from scbbs');
      sql.add('		             left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.add('		             left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.add('                where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('                         '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                 Get_SCBBS_SubSQL());
      sql.add('		             group by BDepartment.DepName ');
      sql.Add('	                        ,DATEPART(DAY,SCBB.SCDate)) as SCBB');
      sql.add('			           left join (select GSBH, GXLB, SUM(IsNull(ShoeB,0)+IsNull(ShoeC,0)) as Qty, NDay from (');
      sql.add('SELECT BDepartment.DepName as GSBH, ''AR'' as GXLB, sum(CASE WHEN Grade = ''B'' then Qty else 0 end) as ShoeB,sum(CASE WHEN Grade = ''C'' then Qty else 0 end) as ShoeC,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('                           from KCRK_BC');
      sql.add('                           left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('                           left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');      
      sql.Add('                           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between');
      if Isthismonth=true then
        sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('                           and BDepartment.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                            Get_KCRK_QC_SubSQL());      
      sql.add('				          group by BDepartment.DepName, DATEPART(DAY,KCRK_BC.CFMDate)) AS KCRK_BC');
      sql.Add('                 group by GSBH, GXLB, ShoeB, ShoeC, NDay) as QCRDB on SCBB.GSBH = QCRDB.GSBH and SCBB.GXLB = QCRDB.GXLB and SCBB.NDay = QCRDB.NDay)T1');
      sql.Add('                 left join (select SCBB.GSBH,SCBB.GXLB,''5. B/C Rate%'' as SB,Round(((CAST(QCRDB.Qty AS Float)/NULLIF(SCBB.Qty,0))*100),2) as Total');
      sql.Add('                            from(select BDepartment.DepName as GSBH,');
      sql.Add('                                        '+Get_GXLB_SubSQL()+'as GXLB,SUM(scbbs.Qty) as qty');
      sql.Add('                                 from scbbs');
      sql.Add('                                 left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                                 left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                                 where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                                 and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                                  Get_SCBBS_SubSQL());
      sql.Add('                                 group by BDepartment.DepName,scbbs.GXLB) as SCBB ');
      sql.Add('                                 left join (select GSBH, GXLB, SUM(IsNull(ShoeB,0)+IsNull(ShoeC,0)) as Qty from(');
      sql.Add('select BDepartment.DepName as GSBH, ''AR'' as GXLB, sum(CASE WHEN Grade = ''B'' then Qty else 0 end) as ShoeB, sum(CASE WHEN Grade = ''C'' then Qty else 0 end) as ShoeC');
      sql.Add('                                            from KCRK_BC');
      sql.add('                                            left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('                                            left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');        
      sql.Add('                                            where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                                                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                                                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('                                            and BDepartment.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                                             Get_KCRK_QC_SubSQL());
      sql.Add('                                            group by BDepartment.DepName) AS KCRK_BC');
      sql.Add('                                            group by GSBH, GXLB, ShoeB, ShoeC) as QCRDB');
      sql.Add('                                on SCBB.GSBH = QCRDB.GSBH and SCBB.GXLB = QCRDB.GXLB)T2');
      sql.Add('               on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //每日總產量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.Add('      from(select ''Z'' as GSBH,'' '' as GXLB,'' 6. Total Output'' as SB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay');
      sql.Add('           from scbbs');
      sql.Add('           left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('           left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('           where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                     '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(            Get_SCBBS_SubSQL());
      sql.Add('           group by DATEPART(DAY,SCBB.SCDate))T1');
      sql.Add('           left join (select ''Z'' as GSBH,'' '' as GXLB,'' 6. Total Output'' as SB,SUM(scbbs.Qty) as Total');
      sql.Add('                      from scbbs');
      sql.Add('                      left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                      left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                      and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                       Get_SCBBS_SubSQL());
      sql.Add('                      )T2 on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //每日檢查總數量
      sql.Add('      union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.Add('      from(select ''Z'' as GSBH,'' '' as GXLB,'' 7. Daily Total inspection'' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty');
      sql.Add('                   ,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.Add('           from WOPR');
      sql.Add('           left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.Add('           where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('           and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                     Get_WOPR_SubSQL());
      sql.Add('           group by DATEPART(DAY,WOPR.USERDATE))T1');
      sql.Add('           left join (select ''Z'' as GSBH,'' '' as GXLB,'' 7. Daily Total inspection'' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Total');
      sql.Add('                      from WOPR');
      sql.Add('                      left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.Add('                      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between');
      if Isthismonth=true then
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('                      and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_WOPR_SubSQL());
      sql.Add('                      )T2 on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //每日 B class 總數量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,isnull(T2.Total,0) as Total');
      sql.add('	     from(select '+''''+'Z'+''''+' as GSBH,'' '' as GXLB,'+''''+' 8.Daily B Class Shoe'+''''+' as SB');
      sql.add('                  ,SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Qty, DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('		        from KCRK_BC');
      sql.add('			      left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('			      left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');      
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.add('			      group by DATEPART(DAY,KCRK_BC.CFMDate))T1');
      sql.Add('           left join (select ''Z'' as GSBH,'' '' as GXLB,'' 8.Daily B Class Shoe'' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) as Total');
      sql.Add('                      from KCRK_BC');
      sql.add('			      left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('			      left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');   
      sql.add('                      where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.Add('                      )T2 on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //每日 C class 總數量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,isnull(T2.Total,0) as Total');
      sql.add('	     from(select '+''''+'Z'+''''+' as GSBH,'' '' as GXLB,'+''''+' 9.Daily C Class Shoe'+''''+' as SB');
      sql.add('                  ,SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Qty, DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('		        from KCRK_BC');
      sql.add('			      left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('			      left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');      
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.add('			      group by DATEPART(DAY,KCRK_BC.CFMDate))T1');
      sql.Add('           left join (select ''Z'' as GSBH,'' '' as GXLB,'' 9.Daily C Class Shoe'' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) as Total');
      sql.Add('                      from KCRK_BC');
      sql.add('			      left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('			      left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');   
      sql.add('                      where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.Add('                      )T2 on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');


      //每日 B/C 比率
      sql.add('	     union all');
      sql.add('	     select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('      from(select ''Z'' as GSBH,SCBB.GXLB,''10.Daily B/C Rate%'' as SB,Round(((CAST(QCRDB.Qty AS Float)/NULLIF(SCBB.Qty,0))*100),2) as Qty,SCBB.NDay');
      sql.add('		        from(select ''Z'' as GSBH,'' '' as GXLB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay');
      sql.add('			           from scbbs');
      sql.Add('                left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                 Get_SCBBS_SubSQL());
      sql.add('                group by DATEPART(DAY,SCBB.SCDate)) as SCBB ');
      sql.add('                left join (select ''Z'' as GSBH,'' '' as GXLB, SUM(IsNull(ShoeB,0)+IsNull(ShoeC,0)) as Qty, NDay from (');
      sql.add('SELECT ''Z'' as GSBH,'' '' as GXLB, sum(CASE WHEN Grade = ''B'' then Qty else 0 end) as ShoeB,sum(CASE WHEN Grade = ''C'' then Qty else 0 end) as ShoeC,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('FROM KCRK_BC');
      sql.add('	                          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('	                          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');      
      sql.add('                           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                           and BDepartment.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                            Get_KCRK_QC_SubSQL());
      sql.Add('                           group by DATEPART(DAY,KCRK_BC.CFMDate)) AS KCRK_BC');
      sql.Add('           group by GSBH, GXLB, ShoeB, ShoeC, NDay) as QCRDB on SCBB.GSBH = QCRDB.GSBH and SCBB.GXLB = QCRDB.GXLB and SCBB.NDay = QCRDB.NDay)T1');
      sql.add('			      left join (select ''Z'' as GSBH,SCBB.GXLB,''10.Daily B/C Rate%'' as SB,');
      sql.Add('                             Round(((CAST(QCRDB.Qty AS Float)/NULLIF(SCBB.Qty,0))*100),2) as Total');
      sql.Add('                      from(select ''Z'' as GSBH,'' '' as GXLB,SUM(scbbs.Qty) as qty');
      sql.Add('                           from scbbs');
      sql.Add('                           left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                           left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                           where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                           and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                            Get_SCBBS_SubSQL());
      sql.Add('                           ) as SCBB');
      sql.Add('                      left join (select ''Z'' as GSBH,'' '' as GXLB, SUM(IsNull(ShoeB,0)+IsNull(ShoeC,0)) as Qty from(');
      sql.Add('SELECT ''Z'' as GSBH,'' '' as GXLB, sum(CASE WHEN Grade = ''B'' then Qty else 0 end) as ShoeB,sum(CASE WHEN Grade = ''C'' then Qty else 0 end) as ShoeC');
      sql.add('FROM KCRK_BC');
      sql.add('	                          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('	                          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID'); 
      sql.add('                                 where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                                      '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                                      '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                                 and BDepartment.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                                  Get_KCRK_QC_SubSQL());
      sql.Add('                                 ) AS KCRK_BC');
      sql.Add('                      group by GSBH, GXLB, ShoeB, ShoeC) as QCRDB');
      sql.Add('                      on SCBB.GSBH = QCRDB.GSBH and SCBB.GXLB = QCRDB.GXLB)T2');
      sql.Add('          on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');
      //
      sql.add('	     )as QCC');
      sql.add('group by QCC.GSBH,QCC.GXLB,QCC.SB,QCC.Total	');
      sql.add('order by QCC.GSBH,QCC.SB');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    with DBGrideh2 do
    begin
      columns[0].Width:=70;
      columns[0].title.caption:='廠別|Company';
      columns[1].Width:=40;
      columns[1].title.caption:='工段|'+columns[1].title.caption;
      columns[2].Width:=125;
      columns[2].title.caption:='項目|'+columns[2].title.caption;
      for j:=3 to QCom.FieldCount-2 do
      begin
        columns[j].Width:=40;
        columns[j].Title.Caption:='日   期   Weekday|'+columns[j].Title.Caption;
        if j mod 2 <> 0 then
          columns[j].Color:=clInfoBk;
      end;
      columns[QCom.FieldCount-1].Width:=60;
      columns[QCom.FieldCount-1].font.style:=[fsbold];
      columns[QCom.FieldCount-1].title.caption:='合計|Total';
    end;
  end;

  //Company(A1A2)
  if PC1.ActivePageIndex=2 then
  begin
    if ((CK1.Checked and CK2.Checked) or (CK1.Checked and CK3.Checked) or (CK1.Checked and CK4.Checked) or (CK2.Checked and CK3.Checked)
        or (CK2.Checked and CK4.Checked) or (CK3.Checked and CK4.Checked)) then
    begin
      showmessage('Pls choice only one GXLB ');
      exit;
    end;

    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('select distinct NDay ');
      sql.add('from (select  datepart(day, SCBB.SCDate) as NDay from SCBB');
      sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNo ');
      sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      //sql.add('             and SCBB.GSBH ='+''''+main.sGSBH+''''+'');
      sql.add('      ) as DayList order by NDay');
      active:=true;
    end;
    
    with QCom2 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select QCC.GSBH,QCC.GXLB,QCC.SB');
      while not QTemp.eof do
      begin
        sql.add(',sum(case  when NDay='+''''+Qtemp.fieldbyname('NDay').asstring+'''');
        sql.add(' then Qty  end) as '+''''+Qtemp.fieldbyname('NDay').asstring+'''');
        QTemp.Next;
      end;
      sql.Add(',Total');
      //生產雙數
      sql.add('from ( ');
      sql.Add('      select T1.GSBH, T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.Add('      from(select BDepartment.DFL as GSBH,');
      sql.Add('                  scbbs.GXLB,''1.Output'' as SB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay');
      sql.Add('           from scbbs');
      sql.Add('           left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('           left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('           where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.Add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('           and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(            Get_SCBBS_SubSQL());
      sql.Add('           group by BDepartment.DFL,');
      sql.Add('                    scbbs.GXLB,DATEPART(DAY,SCBB.SCDate))T1');
      sql.Add('           left join(select BDepartment.DFL as GSBH,');
      sql.Add('                            scbbs.GXLB,''1.Output'' as SB,SUM(scbbs.Qty) as Total');
      sql.Add('                     from scbbs');
      sql.Add('                     left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                     left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                     where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.Add('                               '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('                     and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                      Get_SCBBS_SubSQL());
      sql.Add('                     group by BDepartment.DFL,scbbs.GXLB)T2');
      sql.Add('           on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');
      
      //部門檢驗數量
      sql.Add('      union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('	     from(select BDepartment.DFL as GSBH,');
      sql.Add('                  Replace(WOPR.GXLB,''C+S'',''S'') as GXLB,'+''''+'2.Total inspection'+''''+' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty');
      sql.add('                  ,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.add('	          from WOPR');
      sql.add('	          left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.add('           where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between ');
      if IsThisMonth=true then
        sql.add('                    '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                    '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and WOPR.GSBH ='+''''+main.Edit2.Text+''''+''+' and BDepartment.DFL <> ''PM''');
      //根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(            Get_WOPR_SubSQL());
      sql.add('	          group by BDepartment.DFL,WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE))T1');
      sql.Add('           left join (select BDepartment.DFL as GSBH,');
      sql.Add('                             Replace(WOPR.GXLB,''C+S'',''S'') as GXLB,''2.Total inspection'' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Total');
      sql.Add('                      from WOPR');
      sql.Add('                      left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.Add('                      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between');
      if IsThisMonth=true then
        sql.Add('                               '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.Add('                               '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and WOPR.GSBH ='+''''+main.Edit2.Text+''''+''+' and BDepartment.DFL <> ''PM''');
      //根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_WOPR_SubSQL());
      sql.Add('                      group by BDepartment.DFL,WOPR.GXLB)T2 ');
      sql.Add('           on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //鞋子 B 品數量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('	     from(select BDepartment.DFL as GSBH, BDepartment.GXLB AS GXLB,'+''''+'3.B Class Shoe'+''''+' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Qty, DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('	          from KCRK_BC');
      sql.add('	          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(            Get_KCRK_QC_SubSQL());
      sql.add('	          group by BDepartment.DFL, BDepartment.GXLB, DATEPART(DAY,KCRK_BC.CFMDate))T1');
      sql.Add('           left join (select BDepartment.DFL as GSBH, BDepartment.GXLB AS GXLB,'+''''+'3.B Class Shoe'+''''+' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Total');
      sql.Add('                      from KCRK_BC');
      sql.add('	          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.Add('                      group by BDepartment.DFL, BDepartment.GXLB)T2');
      sql.Add('           on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //鞋子 C 品數量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('	     from(select BDepartment.DFL as GSBH, BDepartment.GXLB AS GXLB,'+''''+'4.C Class Shoe'+''''+' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Qty, DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('	          from KCRK_BC');
      sql.add('	          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(            Get_KCRK_QC_SubSQL());
      sql.add('	          group by BDepartment.DFL, BDepartment.GXLB, DATEPART(DAY,KCRK_BC.CFMDate))T1');
      sql.Add('           left join (select BDepartment.DFL as GSBH, BDepartment.GXLB AS GXLB,'+''''+'4.C Class Shoe'+''''+' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Total');
      sql.Add('                      from KCRK_BC');
      sql.add('	          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('	          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.Add('                      group by BDepartment.DFL, BDepartment.GXLB)T2');
      sql.Add('           on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //B/C 比率
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('      from(select SCBB.GSBH,SCBB.GXLB,''5. B/C Rate%'' as SB,Round(((CAST(QCRDB.Qty AS Float)/NULLIF(SCBB.Qty,0))*100),2) as Qty,SCBB.NDay');
      sql.add('			      from(select BDepartment.DFL as GSBH,');
      sql.add('	                      '+Get_GXLB_SubSQL()+'as GXLB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay');
      sql.add('                from scbbs');
      sql.add('		             left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.add('		             left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.add('                where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('                         '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                 Get_SCBBS_SubSQL());
      sql.add('		             group by BDepartment.DFL ');
      sql.Add('	                        ,DATEPART(DAY,SCBB.SCDate)) as SCBB');
      sql.add('			           left join (select GSBH, GXLB, SUM(IsNull(ShoeB,0)+IsNull(ShoeC,0)) as Qty, NDay from (');
      sql.add('SELECT BDepartment.DFL as GSBH, ''AR'' as GXLB, sum(CASE WHEN Grade = ''B'' then Qty else 0 end) as ShoeB,sum(CASE WHEN Grade = ''C'' then Qty else 0 end) as ShoeC,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('                           from KCRK_BC');
      sql.add('                           left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('                           left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');      
      sql.Add('                           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between');
      if Isthismonth=true then
        sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('                           and BDepartment.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                            Get_KCRK_QC_SubSQL());      
      sql.add('				          group by BDepartment.DFL, DATEPART(DAY,KCRK_BC.CFMDate)) AS KCRK_BC');
      sql.Add('                 group by GSBH, GXLB, ShoeB, ShoeC, NDay) as QCRDB on SCBB.GSBH = QCRDB.GSBH and SCBB.GXLB = QCRDB.GXLB and SCBB.NDay = QCRDB.NDay)T1');
      sql.Add('                 left join (select SCBB.GSBH,SCBB.GXLB,''5. B/C Rate%'' as SB,Round(((CAST(QCRDB.Qty AS Float)/NULLIF(SCBB.Qty,0))*100),2) as Total');
      sql.Add('                            from(select BDepartment.DFL as GSBH,');
      sql.Add('                                        '+Get_GXLB_SubSQL()+'as GXLB,SUM(scbbs.Qty) as qty');
      sql.Add('                                 from scbbs');
      sql.Add('                                 left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                                 left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                                 where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                                 and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                                  Get_SCBBS_SubSQL());
      sql.Add('                                 group by BDepartment.DFL,scbbs.GXLB) as SCBB ');
      sql.Add('                                 left join (select GSBH, GXLB, SUM(IsNull(ShoeB,0)+IsNull(ShoeC,0)) as Qty from(');
      sql.Add('select BDepartment.DFL as GSBH, ''AR'' as GXLB, sum(CASE WHEN Grade = ''B'' then Qty else 0 end) as ShoeB, sum(CASE WHEN Grade = ''C'' then Qty else 0 end) as ShoeC');
      sql.Add('                                            from KCRK_BC');
      sql.add('                                            left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('                                            left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');        
      sql.Add('                                            where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                                                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                                                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('                                            and BDepartment.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                                             Get_KCRK_QC_SubSQL());
      sql.Add('                                            group by BDepartment.DFL) AS KCRK_BC');
      sql.Add('                                            group by GSBH, GXLB, ShoeB, ShoeC) as QCRDB');
      sql.Add('                                on SCBB.GSBH = QCRDB.GSBH and SCBB.GXLB = QCRDB.GXLB)T2');
      sql.Add('               on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //每日總產量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.Add('      from(select ''Z'' as GSBH,'' '' as GXLB,'' 6. Total Output'' as SB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay');
      sql.Add('           from scbbs');
      sql.Add('           left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('           left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('           where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                     '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(            Get_SCBBS_SubSQL());
      sql.Add('           group by DATEPART(DAY,SCBB.SCDate))T1');
      sql.Add('           left join (select ''Z'' as GSBH,'' '' as GXLB,'' 6. Total Output'' as SB,SUM(scbbs.Qty) as Total');
      sql.Add('                      from scbbs');
      sql.Add('                      left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                      left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                      and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                       Get_SCBBS_SubSQL());
      sql.Add('                      )T2 on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //每日檢查總數量
      sql.Add('      union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.Add('      from(select ''Z'' as GSBH,'' '' as GXLB,'' 7. Daily Total inspection'' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty');
      sql.Add('                   ,DATEPART(DAY,WOPR.USERDATE) as NDay');
      sql.Add('           from WOPR');
      sql.Add('           left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.Add('           where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('           and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                     Get_WOPR_SubSQL());
      sql.Add('           group by DATEPART(DAY,WOPR.USERDATE))T1');
      sql.Add('           left join (select ''Z'' as GSBH,'' '' as GXLB,'' 7. Daily Total inspection'' as SB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Total');
      sql.Add('                      from WOPR');
      sql.Add('                      left join BDepartment on WOPR.DepNo = BDepartment.ID');
      sql.Add('                      where  convert(smalldatetime,convert(varchar,WOPR.USERDATE,111)) between');
      if Isthismonth=true then
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.Add('                      and WOPR.GSBH ='+''''+main.Edit2.Text+''''+'');
      //根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_WOPR_SubSQL());
      sql.Add('                      )T2 on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //每日 B class 總數量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,isnull(T2.Total,0) as Total');
      sql.add('	     from(select '+''''+'Z'+''''+' as GSBH,'' '' as GXLB,'+''''+' 8.Daily B Class Shoe'+''''+' as SB');
      sql.add('                  ,SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Qty, DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('		        from KCRK_BC');
      sql.add('			      left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('			      left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');      
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.add('			      group by DATEPART(DAY,KCRK_BC.CFMDate))T1');
      sql.Add('           left join (select ''Z'' as GSBH,'' '' as GXLB,'' 8.Daily B Class Shoe'' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) as Total');
      sql.Add('                      from KCRK_BC');
      sql.add('			      left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('			      left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');   
      sql.add('                      where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''B'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.Add('                      )T2 on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');

      //每日 C class 總數量
      sql.add('	     union all');
      sql.Add('      select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,isnull(T2.Total,0) as Total');
      sql.add('	     from(select '+''''+'Z'+''''+' as GSBH,'' '' as GXLB,'+''''+' 9.Daily C Class Shoe'+''''+' as SB');
      sql.add('                  ,SUM(ISNULL(KCRKS_BC.Qty, 0)) AS Qty, DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('		        from KCRK_BC');
      sql.add('			      left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('			      left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');      
      sql.add('           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.add('			      group by DATEPART(DAY,KCRK_BC.CFMDate))T1');
      sql.Add('           left join (select ''Z'' as GSBH,'' '' as GXLB,'' 9.Daily C Class Shoe'' as SB, SUM(ISNULL(KCRKS_BC.Qty, 0)) as Total');
      sql.Add('                      from KCRK_BC');
      sql.add('			      left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');
      sql.add('			      left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');   
      sql.add('                      where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                           '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('           and KCRKS_BC.Grade = ''C'' and KCRK_BC.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                       Get_KCRK_QC_SubSQL());
      sql.Add('                      )T2 on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');


      //每日 B/C 比率
      sql.add('	     union all');
      sql.add('	     select T1.GSBH,T1.GXLB,T1.SB,T1.Qty,T1.NDay,T2.Total');
      sql.add('      from(select ''Z'' as GSBH,SCBB.GXLB,''10.Daily B/C Rate%'' as SB,Round(((CAST(QCRDB.Qty AS Float)/NULLIF(SCBB.Qty,0))*100),2) as Qty,SCBB.NDay');
      sql.add('		        from(select ''Z'' as GSBH,'' '' as GXLB,SUM(scbbs.Qty) as qty,DATEPART(DAY,SCBB.SCDate) as NDay');
      sql.add('			           from scbbs');
      sql.Add('                left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                        '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                 Get_SCBBS_SubSQL());
      sql.add('                group by DATEPART(DAY,SCBB.SCDate)) as SCBB ');
      sql.add('                left join (select ''Z'' as GSBH,'' '' as GXLB, SUM(IsNull(ShoeB,0)+IsNull(ShoeC,0)) as Qty, NDay from (');
      sql.add('SELECT ''Z'' as GSBH,'' '' as GXLB, sum(CASE WHEN Grade = ''B'' then Qty else 0 end) as ShoeB,sum(CASE WHEN Grade = ''C'' then Qty else 0 end) as ShoeC,DATEPART(DAY,KCRK_BC.CFMDate) as NDay');
      sql.add('FROM KCRK_BC');
      sql.add('	                          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('	                          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID');      
      sql.add('                           where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                           and BDepartment.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                            Get_KCRK_QC_SubSQL());
      sql.Add('                           group by DATEPART(DAY,KCRK_BC.CFMDate)) AS KCRK_BC');
      sql.Add('           group by GSBH, GXLB, ShoeB, ShoeC, NDay) as QCRDB on SCBB.GSBH = QCRDB.GSBH and SCBB.GXLB = QCRDB.GXLB and SCBB.NDay = QCRDB.NDay)T1');
      sql.add('			      left join (select ''Z'' as GSBH,SCBB.GXLB,''10.Daily B/C Rate%'' as SB,');
      sql.Add('                             Round(((CAST(QCRDB.Qty AS Float)/NULLIF(SCBB.Qty,0))*100),2) as Total');
      sql.Add('                      from(select ''Z'' as GSBH,'' '' as GXLB,SUM(scbbs.Qty) as qty');
      sql.Add('                           from scbbs');
      sql.Add('                           left join scbb on scbb.ProNo = scbbs.ProNo');
      sql.Add('                           left join BDepartment on scbb.DepNo = BDepartment.ID');
      sql.Add('                           where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between');
      sql.add('                                   '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                           and BDepartment.YN=''1'' and SCBB.GSBH ='+''''+main.Edit2.Text+''''+'');
      sql.Add(                            Get_SCBBS_SubSQL());
      sql.Add('                           ) as SCBB');
      sql.Add('                      left join (select ''Z'' as GSBH,'' '' as GXLB, SUM(IsNull(ShoeB,0)+IsNull(ShoeC,0)) as Qty from(');
      sql.Add('SELECT ''Z'' as GSBH,'' '' as GXLB, sum(CASE WHEN Grade = ''B'' then Qty else 0 end) as ShoeB,sum(CASE WHEN Grade = ''C'' then Qty else 0 end) as ShoeC');
      sql.add('FROM KCRK_BC');
      sql.add('	                          left join KCRKS_BC ON KCRK_BC.RKNO = KCRKS_BC.RKNO');
      sql.add('	                          left join BDepartment ON KCRK_BC.DepID = BDepartment.ID'); 
      sql.add('                                 where  convert(smalldatetime,convert(varchar,KCRK_BC.CFMDate,111)) between ');
      if Isthismonth=true then
        sql.add('                                      '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate-1)+'''')
      else
        sql.add('                                      '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('                                 and BDepartment.GSBH ='+''''+main.Edit2.Text+''''+'');
      // 20230405 根據下拉式選擇工段回傳子SQL過濾條件
      sql.Add(                                  Get_KCRK_QC_SubSQL());
      sql.Add('                                 ) AS KCRK_BC');
      sql.Add('                      group by GSBH, GXLB, ShoeB, ShoeC) as QCRDB');
      sql.Add('                      on SCBB.GSBH = QCRDB.GSBH and SCBB.GXLB = QCRDB.GXLB)T2');
      sql.Add('          on T1.GSBH=T2.GSBH and T1.GXLB=T2.GXLB and T1.SB=T2.SB');
      //
      sql.add('	     )as QCC');
      sql.add('group by QCC.GSBH,QCC.GXLB,QCC.SB,QCC.Total	');
      sql.add('order by QCC.GSBH,QCC.SB');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    with DBGrideh3 do
    begin
      columns[0].Width:=70;
      columns[0].title.caption:='廠別|Company';
      columns[1].Width:=40;
      columns[1].title.caption:='工段|'+columns[1].title.caption;
      columns[2].Width:=125;
      columns[2].title.caption:='項目|'+columns[2].title.caption;
      for j:=3 to QCom2.FieldCount-2 do
      begin
        columns[j].Width:=40;
        columns[j].Title.Caption:='日   期   Weekday|'+columns[j].Title.Caption;
        if j mod 2 <> 0 then
          columns[j].Color:=clInfoBk;
      end;
      columns[QCom2.FieldCount-1].Width:=60;
      columns[QCom2.FieldCount-1].font.style:=[fsbold];
      columns[QCom2.FieldCount-1].title.caption:='合計|Total';
    end;
  end;  
end;

procedure TMQRShoeBC.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(QDep.FieldByName('DepNo').value)='Z' then
  begin
    dbgrideh1.canvas.brush.Color:=clAqua;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;

  if trim(QDep.FieldByName('DepNo').value)='Z1' then
  begin
    dbgrideh1.canvas.brush.Color:=clAqua;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;

  if trim(QDep.FieldByName('SB').value)='11.Daily RFT%' then
  begin
    if (column.field.fieldname='1') or (column.field.fieldname='2')  or (column.field.fieldname='3')  or (column.field.fieldname='4')
        or (column.field.fieldname='5') or (column.field.fieldname='6')  or (column.field.fieldname='7')  or (column.field.fieldname='8')
        or (column.field.fieldname='9') or (column.field.fieldname='10')  or (column.field.fieldname='11')  or (column.field.fieldname='12')
        or (column.field.fieldname='13') or (column.field.fieldname='14')  or (column.field.fieldname='15')  or (column.field.fieldname='16')
        or (column.field.fieldname='17') or (column.field.fieldname='18')  or (column.field.fieldname='19')  or (column.field.fieldname='20')
        or (column.field.fieldname='21') or (column.field.fieldname='22')  or (column.field.fieldname='23')  or (column.field.fieldname='24')
        or (column.field.fieldname='25') or (column.field.fieldname='26')  or (column.field.fieldname='27')  or (column.field.fieldname='28')
        or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')
    then
    begin
      if (Column.Field.value<90)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clred;
        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
      if (Column.Field.value>95)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clBlue;
        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
    end;
  end;

  if trim(QDep.FieldByName('SB').value)='4.Pass%' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    if (column.field.fieldname='1') or (column.field.fieldname='2')  or (column.field.fieldname='3')  or (column.field.fieldname='4')
        or (column.field.fieldname='5') or (column.field.fieldname='6')  or (column.field.fieldname='7')  or (column.field.fieldname='8')
        or (column.field.fieldname='9') or (column.field.fieldname='10')  or (column.field.fieldname='11')  or (column.field.fieldname='12')
        or (column.field.fieldname='13') or (column.field.fieldname='14')  or (column.field.fieldname='15')  or (column.field.fieldname='16')
        or (column.field.fieldname='17') or (column.field.fieldname='18')  or (column.field.fieldname='19')  or (column.field.fieldname='20')
        or (column.field.fieldname='21') or (column.field.fieldname='22')  or (column.field.fieldname='23')  or (column.field.fieldname='24')
        or (column.field.fieldname='25') or (column.field.fieldname='26')  or (column.field.fieldname='27')  or (column.field.fieldname='28')
        or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')
    then
    begin
      if (Column.Field.value<90)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clred;

        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
      if (Column.Field.value>95)   then
      begin
        DBGrideh1.Canvas.Font.Color   :=   clBlue;
        DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
      end;
    end;
  end;
end;

procedure TMQRShoeBC.ExportDefaultExcel1();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  QDep.active  then
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
          for   i:=0   to   QDep.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=QDep.fields[i].FieldName;
            end;

          QDep.First;
          j:=2;
          while   not   QDep.Eof   do
            begin
              for   i:=0   to  QDep.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=QDep.Fields[i].Value;
              end;
            QDep.Next;
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

procedure TMQRShoeBC.ExportDefaultExcel();
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  QCom.active  then
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
          for   i:=0   to   QCom.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=QCom.fields[i].FieldName;
            end;

          QCom.First;
          j:=2;
          while   not   QCom.Eof   do
            begin
              for   i:=0   to  QCom.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=QCom.Fields[i].Value;
              end;
            QCom.Next;
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

procedure TMQRShoeBC.ExportFormatExcel();
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
begin
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Report_SN76.xls'),Pchar(AppDir+'Additional\Report_SN76.xls'),false);
   if FileExists(AppDir+'Additional\Report_SN76.xls') then
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
        eclApp.WorkBooks.Open(AppDir+'Additional\Report_SN76.xls');
        eclApp.WorkSheets[1].Activate;
        eclApp.Cells(2,1):=CBX1.Text+'年度'+CBX2.Text+'月份B&C品狀況表';

        for i:=3 to QCom.fieldCount-2   do
        begin
          eclApp.Cells(3,i):=QCom.fields[i].FieldName;
        end;
        eclApp.Cells(3,Qcom.FieldCount-1):='小計';
        //刪除多餘Column
        for j:=i+1 to 31 do
          eclApp.ActiveSheet.Columns[i+1].Delete;

        for j:=1 to (QCom.RecordCount div 5)-1 do
        begin
          eclApp.Range['A4:AD8'].Copy;
          eclApp.ActiveSheet.Rows[4].Insert(-4121);
        end;
        
        QCom.First;
        j:=4;
        while   not   QCom.Eof   do
        begin
          for i:=3 to QCom.FieldCount-1 do
          begin
            if (QCom.FieldByName('SB').AsString='5. B/C Rate%')or(QCom.FieldByName('SB').AsString='10.Daily B/C Rate%') then
            begin
              eclApp.Cells(j,i):=QCom.Fields[i].AsString+'%';
            end else
            begin
              eclApp.Cells(j,i):=QCom.Fields[i].AsString;
            end;
          end;
          if Qcom.FieldByName('GSBH').AsString='A1' then eclApp.Cells(j,1):='A1廠';
          if Qcom.FieldByName('GSBH').AsString='A2' then eclApp.Cells(j,1):='A2廠';
          if Qcom.FieldByName('GSBH').AsString='Z' then eclApp.Cells(j,1):='A廠合計';
          QCom.Next;
          inc(j) ;
          // 避免查無 B 品鞋將 C 品鞋寫入到 B 品鞋的欄位
          if ((eclApp.cells[j,2].Value = 'B品雙數') and (QCom.FieldByName('SB').AsString = '4.C Class Shoe')) then
          begin
            inc(j) ;
          end;
        end;
        //  add outline
        for k:=1 to 1 do
        begin
          eclApp.range[eclApp.cells[3,i],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
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


procedure TMQRShoeBC.ExportExternalExcel();
var i,j,excelcount: integer;
begin
  if OpenDialog.Execute()=true then
  begin
    try
      //開啟Excel OLE
      OrderListExcel:=CreateOleObject('Excel.Application');
      OrderListExcel.DisplayAlerts := False;
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
  end;
  try
    OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
    ExcelSheetI:=1;
    excelcount:=OrderListExcel.WorkSheets.count;

    ExcelSheetDlg:=TExcelSheetDlg.Create(self);
    ExcelSheetDlg.ExcelSheetI:=@ExcelSheetI;
    for i:=1 to excelcount do
    begin
      ExcelSheetDlg.ListBox1.Items.Add(inttostr(i)+'.'+OrderListExcel.WorkSheets[i].name);
    end;
    ExcelSheetDlg.ShowModal();
    ExcelSheetDlg.Free;
    //
    OrderListExcel.WorkSheets[ExcelSheetI].Activate;
    //
    OrderListExcel.Cells(2,1):=CBX1.Text+'年度'+CBX2.Text+'月份B&C品狀況表';
    OrderListExcel.Range['A2:R2'].merge;
    OrderListExcel.Cells[2,1].HorizontalAlignment := -4108;

    for i:=3 to QCom.fieldCount-2   do
    begin
      OrderListExcel.Cells(3,i):=QCom.fields[i].FieldName;
    end;
    OrderListExcel.Cells(3,Qcom.FieldCount-1):='小計';
    //刪除多餘Column
    for j:=i+1 to 36 do
    begin
      OrderListExcel.ActiveSheet.Columns[i+1].Delete;
    end;
    
    QCom.First;
    j:=4;
    while   not   QCom.Eof   do
    begin
      for i:=2 to QCom.FieldCount-1 do
      begin
        if (QCom.FieldByName('SB').AsString='5. B/C Rate%')or(QCom.FieldByName('SB').AsString='10.Daily B/C Rate%') then
        begin
          OrderListExcel.Cells(j,i):=QCom.Fields[i].AsString+'%';
        end else
        begin
          OrderListExcel.Cells(j,i):=QCom.Fields[i].AsString;
        end;
      end;
      if Qcom.FieldByName('GSBH').AsString='A1' then OrderListExcel.Cells(j,1):='A1廠';
      if Qcom.FieldByName('GSBH').AsString='A2' then OrderListExcel.Cells(j,1):='A2廠';
      if Qcom.FieldByName('GSBH').AsString='Z' then OrderListExcel.Cells(j,1):='A廠合計';

      if Qcom.FieldByName('SB').AsString='1.Output' then OrderListExcel.Cells(j,2):='實際產能';
      if Qcom.FieldByName('SB').AsString='2.Total inspection' then OrderListExcel.Cells(j,2):='檢查數量';
      if Qcom.FieldByName('SB').AsString='3.B Class Shoe' then OrderListExcel.Cells(j,2):='B品雙數';
      if Qcom.FieldByName('SB').AsString='4.C Class Shoe' then OrderListExcel.Cells(j,2):='C品雙數';
      if Qcom.FieldByName('SB').AsString='5. B/C Rate%' then OrderListExcel.Cells(j,2):='B&C品比率';
      
      if Qcom.FieldByName('SB').AsString=' 6. Total Output' then OrderListExcel.Cells(j,2):='實際產能';
      if Qcom.FieldByName('SB').AsString=' 7. Daily Total inspection' then OrderListExcel.Cells(j,2):='檢查數量';
      if Qcom.FieldByName('SB').AsString=' 8.Daily B Class Shoe' then OrderListExcel.Cells(j,2):='B品雙數';
      if Qcom.FieldByName('SB').AsString=' 9.Daily C Class Shoe' then OrderListExcel.Cells(j,2):='C品雙數';
      if Qcom.FieldByName('SB').AsString='10.Daily B/C Rate%' then OrderListExcel.Cells(j,2):='B&C品比率';
      QCom.Next;
      inc(j) ;
    end;
    OrderListExcel.Range[OrderListExcel.Cells[3,1],OrderListExcel.Cells[3,i-1]].interior.color:=clyellow;

    OrderListExcel.columns.autofit;
    showmessage('Succeed');
    OrderListExcel.Visible:=True;
//
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end;

procedure TMQRShoeBC.Button2Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then ExportDefaultExcel1();
  if (PC1.ActivePageIndex=1) or (PC1.ActivePageIndex=2) then
  begin
    if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
    begin
      if Messagedlg(Pchar('Use External Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
      begin
        ExportExternalExcel();
      end else
      begin
        ExportFormatExcel();
      end;
    end else
    begin
      ExportDefaultExcel();
    end;
  end;
end;

procedure TMQRShoeBC.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
  DecodeDate(Date(), myYear, myMonth, myDay);
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select year(getdate())-5 as Oldyear,year(getdate())+5 as Newyear');
    active:=true;
    CBX1.Items.Add('');
    for i:=Qtemp.fieldbyname('Oldyear').value to  Qtemp.fieldbyname('Newyear').value  do
    begin
      CBX1.Items.Add(inttostr(i));
      next;
    end;
   active:=false;
  end;
  CBX1.ItemIndex:=6;
  for j:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[j])=myMonth then
    begin
      CBX2.ItemIndex:=j;
      break;
    end;
  end; 
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TMQRShoeBC.DBGridEh2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(QCom.FieldByName('GSBH').value)='Z' then
  begin
    dbgrideh2.canvas.brush.Color:=clAqua;
    DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
  if trim(QCom.FieldByName('SB').value)='5. B/C Rate%' then
  begin
    dbgrideh2.canvas.brush.Color:=$00FCCBCD;
    DBGridEh2.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TMQRShoeBC.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if trim(QCom2.FieldByName('GSBH').value)='Z' then
  begin
    dbgrideh3.canvas.brush.Color:=clAqua;
    DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
  if trim(QCom2.FieldByName('SB').value)='5. B/C Rate%' then
  begin
    dbgrideh3.canvas.brush.Color:=$00FCCBCD;
    DBGridEh3.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

end.
