unit CustomsShoes1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids , StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh,EhlibBDE,dateutils, Buttons, ComCtrls;

type
  TCustomsShoes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Label4: TLabel;
    CBX1: TComboBox;
    Label6: TLabel;
    CBX2: TComboBox;
    Button2: TButton;
    Query1SR: TStringField;
    Query1KFJD: TStringField;
    Query1CLBH: TStringField;
    Query1CLSL: TFloatField;
    Query1Qty: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1YPDH: TStringField;
    Query1LLNO: TStringField;
    Query1HGLB: TStringField;
    Query1HGBH: TStringField;
    Query1CNO: TStringField;
    CheckBox1: TCheckBox;
    Panel4: TPanel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Query1CFMDate: TDateTimeField;
    Query1ZWSM: TStringField;
    Query1YWSM: TStringField;
    Query1tbqty: TFloatField;
    Query1TBCQTY: TFloatField;
    Query1TBCQTY1: TFloatField;
    Query1TBOverQty: TFloatField;
    Query1qtyin: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CustomsShoes: TCustomsShoes;

implementation
  uses FunUnit;
{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TCustomsShoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCustomsShoes.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
begin
  SDate:=EncodeDate(strtoint(CBX1.Text)-1, strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), DaysOfItsMonth(EDate));
  if checkbox2.checked then
  begin
  with query1 do //出貨數量為基底直接關聯BOM帶出全部材料後再關聯出材料單。(可看出材料有沒有沒領到的)
  begin
    active:=false;
    sql.Clear;
    sql.add('select devcode as SR, KFJD,clbh,clsl ,QTY,clsl*tbqty as TBCQTY,round(clsl*tbqty,2) as TBCQTY1,clsl*qty as CQTY,round(clsl*qty,2) as CQTY1,RKQTY,');
    sql.add('rkqty-round(clsl*qty,2) as OverQty,rkqty-round(clsl*tbqty,2) as TBOverQty,YPDH,LLNO ,HGLB,HGBH ,CNO,CFMDate,ZWSM,YWSM,tbqty,(qtyin-qtyout) as qtyin      from (');
    sql.add('	select shipping.testno,shipping.ypdh,shipping.qty,shipping.clsl,shipping.clbh,kcll.llno,kcll1.rkqty,hglb,hgbh,cno,kfxxzl.devcode,ypzl.kfjd,kcll.CFMDate,kcll.zWSM,kcll.YWSM,shoetest2.tbqty,shoein.qtyin,shoeout.qtyout from(');
    sql.add('		select shoetest.testno,shoetest.ypdh,sum(shoetestshipping.qty) qty,usage.clsl,usage.clbh from shoetestshipping');
    sql.add('		left join shoetest on shoetest.testno=shoetestshipping.testno');
    sql.add('		left join (');
    sql.add('		select kfxxzl.devcode,ypzl.kfjd,ypzls.ypdh,ypzls.clbh,sum(ypzls.clsl) as clsl from (');
    sql.add('			SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    sql.add('			,ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc');
    sql.add('			FROM ypzls ypzls');
    sql.add('			LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    sql.add('			LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
    sql.add('			LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh');
    sql.add('			WHERE YPDH in (	select shoetest.ypdh from shoetestshipping');
    sql.add('			left join shoetest on shoetest.testno=shoetestshipping.testno');
    sql.add('			where Year(shipdate_final)='''+cbx1.text+''' and month(shipdate_final)='''+cbx2.text+''' )');
    sql.add('			union all');
    sql.add('			SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
    sql.add('			,ypzls.BWLB ,');
    sql.add('			case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    sql.add('			,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    sql.add('			,ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    sql.add('			case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    sql.add('			,clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    sql.add('			case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    sql.add('			FROM ypzls ypzls');
    sql.add('			Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    sql.add('			left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    sql.add('			LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    sql.add('			LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    sql.add('			LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    sql.add('			LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    sql.add('			WHERE YPDH in (select shoetest.ypdh from shoetestshipping');
    sql.add('			left join shoetest on shoetest.testno=shoetestshipping.testno');
    sql.add('			where Year(shipdate_final)='''+cbx1.text+''' and month(shipdate_final)='''+cbx2.text+''' ) and CLZHZL.SYL>0');
    sql.add('			union all');
    sql.add('			Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
    sql.add('			case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    sql.add('			,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH');
    sql.add('			,clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    sql.add('			case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    sql.add('			,clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
    sql.add('			case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    sql.add('			from (');
    sql.add('			SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH,ypzls.BWLB ,');
    sql.add('			case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    sql.add('			,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    sql.add('			,ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    sql.add('			case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    sql.add('			,clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    sql.add('			case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    sql.add('			FROM ypzls ypzls');
    sql.add('			inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    sql.add('			left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    sql.add('			LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    sql.add('			left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    sql.add('			LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    sql.add('			LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    sql.add('			WHERE YPDH in(select shoetest.ypdh from shoetestshipping');
    sql.add('			left join shoetest on shoetest.testno=shoetestshipping.testno');
    sql.add('			where Year(shipdate_final)='''+cbx1.text+''' and month(shipdate_final)='''+cbx2.text+''' )');
    sql.add('			and CLZHZL.SYL>0   and clzl.clzmlb=''Y''');
    sql.add('			) clzhzl2');
    sql.add('			inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    sql.add('			left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    sql.add('			left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    sql.add('			LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    sql.add('			LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    sql.add('		)  YPZLS');
    sql.add('		left join ypzl on ypzls.ypdh=ypzl.ypdh');
    sql.add('		left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    if checkbox4.checked then
       sql.add('   where left(ypzls.clbh,3) not in(''A31'',''C03'',''E01'',''H10'',''H13'',''H14'',''I01'',''J01'',''J03'',''J04'',''L09'',''N03'',''P06'',''P71'') and ypzls.clbh<>''V90A003598'' and left(ypzls.clbh,1)<>''W''');
    sql.add('		group by  kfxxzl.devcode,ypzl.kfjd,ypzls.ypdh,ypzls.clbh');
    sql.add('	)usage on usage.ypdh=shoetest.ypdh');
    sql.add('	where Year(shipdate_final)='''+cbx1.text+''' and month(shipdate_final)='''+cbx2.text+''' and shoetest.TestNo is not null');
    sql.add('	group by shoetest.testno,shoetest.ypdh,usage.clsl,usage.clbh');
    sql.add(')shipping');
    sql.add('left join (select testno,sum(QTY) TBQty from shoetest2 group by testno)shoetest2 on shoetest2.testno=shipping.testno');
    sql.add('left join (select testno,isnull(sum(qty),0) qtyin  from shoetestin group by testno)shoein on shoein.testno=shipping.testno');
    sql.add('left join (select testno,isnull(sum(qty),0) qtyout  from shoetestout group by testno)shoeout on shoeout.testno=shipping.testno');
    sql.add('left join (');
    sql.add('select KCLLS.CLBH,KCLLS.SCBH,sum(isnull(KCLLS.Qty,0)) as RKQty');
    sql.add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS');
    sql.add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH');
    sql.add('left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>=2017');
    sql.add('where');
    if checkbox1.checked then
    begin
      sql.add('Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+''' and');
    end;
    sql.add('       KCLL.YN=''5''');
    sql.add('      and KCCK.GSBH=''CDC''');
    sql.add('     group by  KCLLS.CLBH,KCLLS.SCBH)kcll1 on kcll1.scbh=shipping.ypdh and kcll1.clbh=shipping.clbh');

    sql.add('left join (');
    sql.add('select KCLLS.cno,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,isnull(KCLLS.Qty,0) as RKQty,isnull(KCLLS.VNPrice_HG,0) as VNPrice');
    sql.add(' ,KCLLS.VNACC_HG as VNACC');
    sql.add(',isnull(KCLLS.HGLB,''ZZZZ'')as HGLB,KCLLS.CostID,KCLLS.MEMO,KCLLS.BLSB');
    sql.add(',CLZL.YWPM,CLZL.DWBH,BDepartment.DepName,SCBLYY.YWSM,SCBLYY.zWSM,KCZLS.CWBH,CLHG.HGBH,CLHG.UnitC,CLHG.RateC,KCLL.CFMDate');
    sql.add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS');
    sql.add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH');
    sql.add('left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>=2017');
    sql.add('where');
    if checkbox1.checked then
    begin
      sql.add('Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+''' and');
    end;
    sql.add('       KCLL.YN=''5''');
    sql.add('      and KCCK.GSBH=''CDC''');
    sql.add(')kcll on kcll.scbh=shipping.ypdh and kcll.clbh=shipping.clbh');

    sql.add('left join ypzl on shipping.ypdh=ypzl.ypdh');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    sql.add(')fianl');
   // memo1.text:=sql.text;
    active:=true;
  end;
  end;

  if checkbox3.checked then
  begin
  with query1 do   //出貨雙數為基底，帶出出材料單後，再關聯BOM帶出應領數量。
  begin
    active:=false;
    sql.Clear;
    sql.add('select kfxxzl.devcode as SR,ypzl.kfjd as  KFJD,main.clbh as CLBH,');
    sql.add('usage.clsl as CLSL,main.qty as QTY,usage.clsl*main.qty as CQTY,round(usage.clsl*main.qty,2) as CQTY1, QTY,usage.clsl*tbqty as TBCQTY,round(usage.clsl*tbqty,2) as TBCQTY1,');
    sql.add('main.rkqty as RKQTY,main.rkqty-round(usage.clsl*main.qty,2) as OverQty,rkqty-round(usage.clsl*tbqty,2) as TBOverQty,main.ypdh as YPDH,');
    sql.add('main.llno as LLNO ,hglb as HGLB,hgbh as HGBH ,cno as CNO,main.cfmdate,main.ywsm,main.zwsm,tbqty,(qtyin-qtyout) as qtyin  from (');
    sql.add('select kcll.llno,kcll.clbh,kcll1.rkqty,shoetestshipping.ypdh,shoetestshipping.qty,hglb,hgbh,cno,kcll.CFMDate,kcll.ywsm,kcll.zwsm,shoetest2.tbqty,shoein.qtyin,shoeout.qtyout  from');
    sql.add('(');
    sql.add('select shoetest.testno,shoetest.ypdh,sum(shoetestshipping.qty) qty from shoetestshipping');
    sql.add('left join shoetest on shoetest.testno=shoetestshipping.testno');
    sql.add('where Year(shipdate_final)='''+cbx1.text+''' and month(shipdate_final)='''+cbx2.text+''' and shoetest.TestNo is not null');
    sql.add('group by shoetest.testno,shoetest.ypdh');
    sql.add(')shoetestshipping');
    sql.add('left join (select testno,sum(QTY) TBQty from shoetest2 group by testno)shoetest2 on shoetest2.testno=shoetestshipping.testno');
    sql.add('left join (select testno,isnull(sum(qty),0) qtyin  from shoetestin group by testno)shoein on shoein.testno=shoetestshipping.testno');
    sql.add('left join (select testno,isnull(sum(qty),0) qtyout  from shoetestout group by testno)shoeout on shoeout.testno=shoetestshipping.testno');
    sql.add('left join (');
    sql.add('select KCLLS.cno,KCLLS.LLNO,KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH,isnull(KCLLS.Qty,0) as RKQty,isnull(KCLLS.VNPrice_HG,0) as VNPrice');
    sql.add(' ,KCLLS.VNACC_HG as VNACC');
    sql.add(',isnull(KCLLS.HGLB,''ZZZZ'')as HGLB,KCLLS.CostID,KCLLS.MEMO,KCLLS.BLSB');
    sql.add(',CLZL.YWPM,CLZL.DWBH,BDepartment.DepName,SCBLYY.YWSM,SCBLYY.ZWSM,KCZLS.CWBH,CLHG.HGBH,CLHG.UnitC,CLHG.RateC,kcll.CFMDate');
    sql.add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS');
    sql.add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH');
    sql.add('left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>=2017');
    sql.add('where');
    if checkbox1.checked then
    begin
      sql.add('Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+''' and');
    end;
    sql.add('       KCLL.YN=''5''');
    sql.add('      and KCCK.GSBH=''CDC''');
    sql.add(')kcll on kcll.scbh=shoetestshipping.ypdh');

    sql.add('left join (');
    sql.add('select KCLLS.CLBH,KCLLS.SCBH,sum(isnull(KCLLS.Qty,0)) as RKQty');
    sql.add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS');
    sql.add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH');
    sql.add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH');
    sql.add('left join CLHG on KCLLs.CLBH=CLHG.CLBH and Year(KCLLS.USERDATE)>=2017');
    sql.add('where');
    if checkbox1.checked then
    begin
      sql.add('Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+''' and');
    end;
    sql.add('       KCLL.YN=''5''');
    sql.add('      and KCCK.GSBH=''CDC''');
    sql.add('      group by  KCLLS.CLBH,KCLLS.SCBH )kcll1 on kcll1.scbh=shoetestshipping.ypdh ');


    sql.add(')main ');

    sql.add('left join (');
    sql.add('select kfxxzl.devcode,ypzl.kfjd,ypzls.ypdh,ypzls.clbh,sum(ypzls.clsl) as clsl from (');
    sql.add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,ypzls.BWBH ,ypzls.CLBH ,ypzls.BWLB ,ypzls.CSBH ,ypzls.loss ,ypzls.CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    sql.add(',ypzls.Remark ,bwzl.ywsm+''-''+bwzl.zwsm AS BWMCNM,bwzl.zwsm ,bwzl.ywsm  ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,zszl.zsjc ,clzl.clzmlb ,ypzls.JGZWSM ,ypzls.JGYWSM ,zszl.zsywjc');
    sql.add('FROM ypzls ypzls');
    sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    sql.add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh');
    sql.add('LEFT JOIN zszl zszl ON ypzls.CSBH = zszl.zsdh');
    sql.add('WHERE YPDH in (');
    sql.add('select shoetest.ypdh from shoetestshipping');
    sql.add('left join shoetest on shoetest.testno=shoetestshipping.testno');
    sql.add('where Year(shipdate_final)='''+cbx1.text+''' and month(shipdate_final)='''+cbx2.text+''')');
    sql.add('union all');
    sql.add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
    sql.add(' ,ypzls.BWLB ,');
    sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    sql.add(' ,ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    sql.add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    sql.add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    sql.add('FROM ypzls ypzls');
    sql.add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    sql.add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    sql.add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    sql.add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    sql.add('WHERE YPDH in (');
    sql.add('select shoetest.ypdh from shoetestshipping');
    sql.add('left join shoetest on shoetest.testno=shoetestshipping.testno');
    sql.add('where Year(shipdate_final)='''+cbx1.text+''' and month(shipdate_final)='''+cbx2.text+''') and CLZHZL.SYL>0');
    sql.add('union all');
    sql.add('Select clzhzl2.YPDH,clzhzl2.XH,clzhzl2.XH1,clzhzl2.Relation+''1'' as Relation ,clzhzl.CLDH1 as CLBH,clzhzl2.BWLB,');
    sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    sql.add(' ,clzhzl2.loss ,clzhzl2.CLSL*clzhzl.syl as CLSL ,clzhzl2.CLDJ ,clzhzl2.Currency ,clzhzl2.Rate,clzl.CQDH');
    sql.add(',clzhzl2.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    sql.add(',clzl.clzmlb  ,clzhzl2.JGZWSM ,clzhzl2.JGYWSM ,');
    sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    sql.add(' from (');
    sql.add('SELECT ypzls.YPDH ,ypzls.xh ,ypzls.xh1 ,YPZLS.BWBH+''-Child'' as Relation,clzhzl.CLDH1 as CLBH');
    sql.add(' ,ypzls.BWLB ,');
    sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as CSBH');
    sql.add(',ypzls.loss ,ypzls.CLSL*clzhzl.syl as CLSL ,ypzls.CLDJ ,ypzls.Currency ,ypzls.Rate,clzl.CQDH');
    sql.add(',ypzls.Remark ,'''' AS BWMCNM,'''' AS zwsm,'''' as ywsm ,clzl.zwpm AS CLMC,clzl.Ywpm AS CLYWMC ,clzl.dwbh ,');
    sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsjc else  zszl.zsjc  end as zsjc');
    sql.add(',clzl.clzmlb  ,ypzls.JGZWSM ,ypzls.JGYWSM ,');
    sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then zszl_dev.zsywjc else  zszl.zsywjc  end as zsywjc');
    sql.add('FROM ypzls ypzls');
    sql.add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh');
    sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    sql.add('LEFT JOIN bwzl bwzl ON ypzls.BWBH = bwzl.bwdh');
    sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    sql.add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    sql.add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    sql.add('WHERE YPDH in');
    sql.add('(select shoetest.ypdh from shoetestshipping');
    sql.add('left join shoetest on shoetest.testno=shoetestshipping.testno');
    sql.add('where Year(shipdate_final)='''+cbx1.text+''' and month(shipdate_final)='''+cbx2.text+''')');
    sql.add(' and CLZHZL.SYL>0   and clzl.clzmlb=''Y''');
    sql.add(') clzhzl2');
    sql.add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh');
    sql.add('left join clzhzl_dev ON clzhzl.cldh=clzhzl_dev.cldh and clzhzl.cldh1=clzhzl_dev.cldh1');
    sql.add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
    sql.add('LEFT JOIN zszl zszl ON clzhzl.zsdh = zszl.zsdh');
    sql.add('LEFT JOIN zszl zszl_dev on clzhzl_dev.zsdh = zszl_dev.zsdh');
    sql.add(')  YPZLS');
    sql.add('left join ypzl on ypzls.ypdh=ypzl.ypdh');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    if checkbox4.checked then
       sql.add('   where left(ypzls.clbh,3) not in(''A31'',''C03'',''E01'',''H10'',''H13'',''H14'',''I01'',''J01'',''J03'',''J04'',''L09'',''N03'',''P06'',''P71'') and ypzls.clbh<>''V90A003598'' and left(ypzls.clbh,1)<>''W''');
    sql.add('group by  kfxxzl.devcode,ypzl.kfjd,ypzls.ypdh,ypzls.clbh');
    sql.add(')usage on usage.ypdh=main.ypdh and usage.clbh=main.clbh');
    sql.add('left join ypzl on main.ypdh=ypzl.ypdh');
    sql.add('left join kfxxzl on kfxxzl.xiexing=ypzl.xiexing and kfxxzl.shehao=ypzl.shehao');
    funcObj.WriteErrorLog(sql.Text);
    //memo1.text:=sql.text;
    active:=true;

  end;
  end;
end;

procedure TCustomsShoes.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin

  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;

  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;



end;
procedure TCustomsShoes.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
 begin
  if  query1.active  then
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
     {   for   i:=0   to   query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;   }
        eclApp.Cells(1,1):='SR';
        eclApp.Cells(2,1):='SR';
        eclApp.Cells(1,2):='Stage';
        eclApp.Cells(2,2):='階段';
        eclApp.Cells(1,3):='MatNO';
        eclApp.Cells(2,3):='材料編號';
        eclApp.Cells(1,4):='Usage';
        eclApp.Cells(2,4):='單位用量';
        eclApp.Cells(1,5):='TB Qty';
        eclApp.Cells(2,5):='通報數量';
        eclApp.Cells(1,6):='MonthQty';
        eclApp.Cells(2,6):='月出貨數量';
        eclApp.Cells(1,7):='WarehouseQty';
        eclApp.Cells(2,7):='倉庫數量';
        eclApp.Cells(1,8):='Usage*Qty';
        eclApp.Cells(2,8):='通報應領數量計算前';
        eclApp.Cells(1,9):='Usage*Qty';
        eclApp.Cells(2,9):='通報應領數量計算後';
        eclApp.Cells(1,10):='RK Qty';
        eclApp.Cells(2,10):='實領數量';
        eclApp.Cells(1,11):='TB Over Qty';
        eclApp.Cells(2,11):='通報超領數量';
        eclApp.Cells(1,12):='SampleOrder';
        eclApp.Cells(2,12):='樣品單號';
        eclApp.Cells(1,13):='WarehouseOrder';
        eclApp.Cells(2,13):='領料單號';
        eclApp.Cells(1,14):='HGLB';
        eclApp.Cells(2,14):='五大倉';
        eclApp.Cells(1,15):='NewHaiQuan';
        eclApp.Cells(2,15):='最新海關代碼';
        eclApp.Cells(1,16):='LLNOHaiQuan';
        eclApp.Cells(2,16):='領料當下海關代碼';
        eclApp.Cells(1,17):='CFM Date';
        eclApp.Cells(2,17):='領料確認日';
        eclApp.Cells(1,18):='Reason English';
        eclApp.Cells(2,18):='領料原因英文';
        eclApp.Cells(1,19):='Reason Chinese';
        eclApp.Cells(2,19):='領料原因中文';
        query1.First;
        j:=3;
        while   not   query1.Eof   do
          begin
            for   i:=0   to  query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=query1.Fields[i].Value;
            end;
          query1.Next;
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

procedure TCustomsShoes.CheckBox2Click(Sender: TObject);
begin
   if checkbox2.Checked then
      checkbox3.checked:=false;
   if not checkbox2.Checked then
      checkbox3.checked:=true;
end;

procedure TCustomsShoes.CheckBox3Click(Sender: TObject);
begin
   if checkbox3.Checked then
      checkbox2.checked:=false;
   if not checkbox3.Checked then
      checkbox2.checked:=true;
end;

end.
