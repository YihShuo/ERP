unit MaterialTracking;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, StdCtrls, GridsEh, DBGridEh;

type
  TMaterialTracking1 = class(TForm)
    MaterialTracking1: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    season: TComboBox;
    startcfm: TQuery;
    Button1: TButton;
    Query1: TQuery;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    Query2: TQuery;
    DataSource1: TDataSource;
    Query2COLUMN1: TStringField;
    Query2jijie: TStringField;
    Query2Stage: TStringField;
    Query2admindate: TStringField;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MaterialTracking1: TMaterialTracking1;

implementation

uses main1;

{$R *.dfm}

procedure TMaterialTracking1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMaterialTracking1.FormDestroy(Sender: TObject);
begin
   MaterialTracking1 := nil;
end;

procedure TMaterialTracking1.FormCreate(Sender: TObject);
begin
     with startcfm do  //抓取CFM的season 15-19季
      begin
         active:=false;
         sql.Clear;
         sql.add('select jijie from kfxxzl');
         SQL.add('left join kfzl_GS on kfzl_GS.KHBH=kfxxzl.KHDH');
         sql.add('where FD is not null and kfzl_GS.GSBH='''+main.Edit2.Text+''' ');
         SQL.add('and right(left(jijie,2),2) between ''16'' and ''50'' ');
         SQL.Add('AND LEN(jijie) < 4 ');
         sql.add('group by jijie');
         sql.add('order by jijie desc');
         active:=true;
         season.items.clear;
         while not eof do
         begin
           season.items.add(fieldbyname('jijie').asstring );
           next;
         end;
      end;

      season.ItemIndex:=0;

end;

procedure TMaterialTracking1.Button1Click(Sender: TObject);
begin
 with Query1 do
   begin
    Active:=false;
    SQL.Clear;                                //CONVERT(char(10),CG.ETA,111) as ETA,
    SQL.Add('delete SRDet_ML  where Season='''+season.text+''' and Stage='''+query2.fieldbyname('stage').asstring+'''');
    SQL.Add('delete Temp_SRDet_ML  where Season='''+season.text+''' and Stage='''+query2.fieldbyname('stage').asstring+''' ');
    SQL.Add('delete SRDet_FML where Season='''+season.text+''' and Stage='''+query2.fieldbyname('stage').asstring+'''');
    SQL.Add('delete Temp_SRDet_FML where Season='''+season.text+''' and Stage='''+query2.fieldbyname('stage').asstring+'''');
//    showmessage(SQL.Text);
    execsql;
    active:=false;
  end;



  with Query1 do
  begin
  Active:=false;
  SQL.Clear;                                //CONVERT(char(10),CG.ETA,111) as ETA,
  SQL.Add('insert into Temp_SRDet_ML ');
  SQL.Add('select '''+season.text+''' as Season,'''+query2.fieldbyname('stage').asstring+''' as stage,YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from (');
  SQL.Add('select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from ( ');
  SQL.Add('SELECT ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
  SQL.Add('FROM ypzls ypzls ');
  SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
  SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH and GSDH = '''+main.Edit2.Text+''' ');
  SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
  SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
  SQL.Add('WHERE  clzl.clzmlb = ''N'' and ypzl.kfjd =  '''+query2.fieldbyname('stage').asstring+'''  and KFXXZL.JiJie='''+season.Text+''' and YPZL.GSDH='''+main.Edit2.Text+''' ');
  SQL.Add('union all ');
  SQL.Add('SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
  SQL.Add('FROM ypzls ypzls ');
  SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH and GSDH = '''+main.Edit2.Text+''' ');
  SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
  SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
  SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
  SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
  SQL.Add('WHERE  clzl.clzmlb = ''N'' and ypzl.kfjd = '''+query2.fieldbyname('stage').asstring+'''  and KFXXZL.JiJie='''+season.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0 ');
  SQL.Add('union all ');
  SQL.Add('Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   ');
  SQL.Add(' from (');
  SQL.Add('SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  ');
  SQL.Add('FROM ypzls ypzls ');
  SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
  SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
  SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH and GSDH = '''+main.Edit2.Text+''' ');
  SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
  SQL.Add('WHERE  ypzl.kfjd =  '''+query2.fieldbyname('stage').asstring+'''  and KFXXZL.JiJie='''+season.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  ');
  SQL.Add(') clzhzl2');
  SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
  SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
  SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
  SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0   ');
  SQL.Add(')  YPZLS ');
  SQL.Add('Group by YPDH ,FD,CLBH,YWPM ');
  SQL.Add(') Temp_YPZL');
  SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH ');
  SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
  SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''  ');
  SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''  ');
  SQL.Add('where ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd=''VT Mat'')) or ');
  SQL.Add('(LEFT(Temp_YPZL.CLBH,1) in (''A'',''C'',''F'',''K'') and  LEFT(Temp_YPZL.CLBH,3) not in (''A13'',''A48'')  and (clzlfilter_DFL.DFL is null) ) or ');
  SQL.Add('(clzlfilter_DFL.DFL=''1'') or');
  SQL.Add('(LEFT(Temp_YPZL.CLBH,1)=''P'' and Temp_YPZL.CSBH in (''M027'',''V192'')) )');
  SQL.Add(' and zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(Temp_YPZL.csbh,3) <>''JNG''');// and  left(ypdh,4)='''+lai.text+'''');
  execsql;
  memo1.text:=sql.text;
  active:=false;
  end;


 with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('insert into Temp_SRDet_FML ');
    SQL.Add('select '''+season.text+''' as Season,'''+query2.fieldbyname('stage').asstring+''' as stage,YPDH ,FD,CLBH,CLZL.YWPM,CSBH, CLSL from(');
    SQL.Add('select YPDH ,FD,CLBH,YWPM ,Max(csbh) as CSBH,Sum(CLSL) as CLSL  from ( ');
    SQL.Add('SELECT ypzls.YPDH ,KFXXZL.FD,ypzls.CLBH,CLZL.YWPM,ypzls.csbh,ypzls.CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join CLZL on CLZL.CLDH=ypzls.CLBH ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH and GSDH = '''+main.Edit2.Text+''' ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and ypzl.kfjd  = '''+query2.fieldbyname('stage').asstring+'''  and KFXXZL.JiJie='''+season.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''  ');
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH,KFXXZL.FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(ypzls.CLSL*CLZHZL.SYL) as CLSL');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH and GSDH = '''+main.Edit2.Text+''' ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner join CLZL on CLZL.CLDH=clzhzl.CLDH1');
    SQL.Add('left join clzlfilter_DFL on CLZL.CLDH=clzlfilter_DFL.CLDH');
    SQL.Add('WHERE  clzl.clzmlb = ''N'' and ypzl.kfjd = '''+query2.fieldbyname('stage').asstring+'''  and KFXXZL.JiJie='''+season.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0   ');
    SQL.Add('union all ');
    SQL.Add('Select YPDH,FD,clzhzl.CLDH1 as CLBH,CLZL.YWPM,clzhzl.zsdh as CSBH,(CLSL*CLZHZL.SYL) as CLSL   ');
    SQL.Add(' from (');
    SQL.Add('SELECT ypzls.YPDH ,KFXXZL.FD,clzhzl.CLDH1 as CLBH,ypzls.CLSL  ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('INNER join ypzl on ypzl.YPDH=ypzls.YPDH and GSDH = '''+main.Edit2.Text+''' ');
    SQL.Add('inner join KFXXZL on  KFXXZL.XieXing=YPZL.XieXing and KFXXZL.SheHao=YPZL.SheHao ');
    SQL.Add('WHERE  ypzl.kfjd = '''+query2.fieldbyname('stage').asstring+'''  and KFXXZL.JiJie='''+season.Text+''' and YPZL.GSDH='''+main.Edit2.Text+'''   and CLZHZL.SYL>0  and clzl.clzmlb = ''Y''  ');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('inner JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('left join clzlfilter_DFL on clzhzl.CLDH1=clzlfilter_DFL.CLDH ');
    SQL.Add('where clzl.clzmlb = ''N'' and CLZHZL.SYL>0 ');
    SQL.Add(')  YPZLS ');
    SQL.Add('Group by YPDH ,FD,CLBH,YWPM ');
    SQL.Add(') Temp_YPZL');
    SQL.Add('inner join CLZL on Temp_YPZL.CLBH=CLZL.CLDH ');
    SQL.Add('left join clzlfilter_DFL on Temp_YPZL.CLBH=clzlfilter_DFL.CLDH');
    SQL.Add('left join zszlfilter on zszlfilter.zsdh=Temp_YPZL.csbh and zszlfilter.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('left join clzlfilter on clzlfilter.cldh=Temp_YPZL.clbh and clzlfilter.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('where ( ((LEFT( Temp_YPZL.CLBH,3)=''V90'') and (CLZL.cltd in(''VT Phu May'',''VT De'',''VT Phu Go'')))  or  ');
    SQL.Add('(LEFT(Temp_YPZL.CLBH,1) in (''B'',''D'',''L'',''M'',''N'',''E'')  and (clzlfilter_DFL.DFL is null) ) or');
    SQL.Add('(clzlfilter_DFL.DFL=''2'') or');
    SQL.Add('(LEFT(Temp_YPZL.CLBH,3)  in (''O02'',''J05'',''J04'',''A13'',''A48'',''G03'',''I01''))  or');
    SQL.Add('(LEFT(Temp_YPZL.CLBH,1) in (''P'',''G'')  and csbh in (''V097'',''V194'',''A104'',''A088'',''K110'',''V162'',''A159''))) and ');
    SQL.Add('  zszlfilter.zsdh is null  and clzlfilter.cldh is null and left(csbh,3) <>''JNG''');// and  left(ypdh,4)='''+lai.text+'''');
    execsql;
//    showmessage(sql.text);
    memo2.text:=sql.text;
    active:=false;
  end;


   with Query1 do
   begin
    Active:=false;
    SQL.Clear;                                //CONVERT(char(10),CG.ETA,111) as ETA,
    SQL.Add('insert into SRDet_ML Select '''+season.text+''' as Season,'''+query2.fieldbyname('stage').asstring+''' as stage,isnull(CONVERT(char(10),MaterialNG.ng_ETD,111),''N/A'') as NG_ETD,cg.cgno,isnull(CONVERT(char(10),cg.cgdate,111),''N/A'') as cgdate,isnull(CONVERT(char(10),KCRKS.USERDATE,111),''N/A'') as USERDATE,');
    SQL.Add('isnull(CONVERT(char(10),CGZLInvoice.cidate,111),''N/A'') as cidate,YPZL.*,CG.Qty,isnull(CONVERT(char(10),CG.ETD,111),''N/A'') as ETD,');
    SQL.Add('CG.Location,isnull(CONVERT(char(10),CG.ETA,111),''N/A'') as ETA,CG.useType,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName,isnull(MaterialNG.ng_reason,''N/A'') as ng_reason,getdate() as admindate from (');
    SQL.Add('select YPDH ,FD,CLBH,YWPM,CSBH, CLSL from Temp_SRDet_ML where SEASON='''+season.Text+''' and Stage = '''+query2.fieldbyname('stage').asstring+''' ');
    SQL.Add(')  YPZL ');
    //======================================
    SQL.Add('Left Join (');
    SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
    SQL.Add('Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo');
    SQL.Add('from CGZLSS');
    SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO and GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('left join (select season,CLBH,Location from MaterialMOQ where season='''+season.Text+''' Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH');
   // SQL.Add('where  CGZL.SEASON='''+season.Text+'''  and CGZL.PURPOSE = '''+query2.fieldbyname('stage').asstring+'''   ');
   //樣品單合併
    SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate');
    SQL.Add(') CG');
    SQL.Add('on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH');
    //20150901增加廠商
    SQL.Add('left join zszl on zszl.zsdh=ypzl.csbh ');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('left join Busers on zszl_dev.SamplePurchaser=Busers.UserID ');
    SQL.Add('left join CGKCUSE on CGKCUSE.zlbh=YPZL.YPDH and CGKCUSE.CLBH=YPZL.CLBH and CGKCUSE.GSBH ='''+main.Edit2.Text+''' ');
    SQL.Add('left join (select CINO,CGNO,CLBH from CGZLInvoiceS)CGZLInvoiceS on CG.CGNO=CGZLInvoiceS.CGNO and CGZLInvoiceS.CLBH=cg.clbh ');
    SQL.Add('left join (select CINO,CIDATE from CGZLInvoice where GSBH = '''+main.Edit2.Text+''')CGZLInvoice on CGZLInvoice.CINO=CGZLInvoiceS.CINO');
    SQL.Add('LEFT join (select KCRKS.DOCNO,CLBH,KCRK.USERDATE,RKSB from KCRKS ,KCRK where KCRK.RKNO=KCRKS.RKNO and KCRK.GSBH='''+main.Edit2.Text+''')KCRKS on  CG.CGNO=KCRKS.DOCNO and CG.CLBH=KCRKS.CLBH  and ISNULL(KCRKS.RKSB,'''')<>''NG''');
    SQL.Add('LEFT join (select CGNO,CLBH,NG_REAsON,NG_ETD from MaterialNG)MaterialNG  on CG.CLBH=MaterialNG.CLBH and CG.CGNO=MaterialNG.CGNO ');
    SQL.Add('WHERE ((MaterialNG.ng_reason<>''OK'' AND MaterialNG.ng_reason<>''OK with improve'' AND KCRKS.USERDATE IS not null) OR KCRKS.USERDATE IS null ');
    SQL.Add('and CG.useType <>''stock''  )OR (CG.CGNO IS NULL AND CG.useType IS NULL  AND CGKCUSE.clbh IS  NULL ) ');
    SQL.Add('group by MaterialNG.ng_ETD,cg.cgno,cg.cgdate,CGZLInvoice.cidate,ypzl.ypdh,ypzl.fd,ypzl.clbh,ypzl.ywpm,');
    SQL.Add('ypzl.csbh,ypzl.clsl,CG.Qty,CG.ETD,CG.Location,CONVERT(char(10),CG.ETA,111),KCRKS.USERDATE,CG.CGNO,CG.useType,CG.Stock_memo,zszl.zsywjc,Busers.UserName,MaterialNG.ng_reason');
    SQL.Add('order by ypzl.ypdh');
    execsql;
    memo3.text:=sql.text;
    active:=false;
  end;

with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('insert into SRDet_FML Select '''+season.text+''' as Season,'''+query2.fieldbyname('stage').asstring+''' as stage,isnull(CONVERT(char(10),MaterialNG.ng_ETD,111),''N/A'') as NG_ETD,cg.cgno,isnull(CONVERT(char(10),cg.cgdate,111),''N/A'') as cgdate,isnull(CONVERT(char(10),KCRKS.USERDATE,111),''N/A'') as USERDATE,');
    SQL.Add('isnull(CONVERT(char(10),CGZLInvoice.cidate,111),''N/A'') as cidate,YPZL.*,CG.Qty,isnull(CONVERT(char(10),CG.ETD,111),''N/A'') as ETD, ');
    SQL.Add('CG.Location,isnull(CONVERT(char(10),CG.ETA,111),''N/A'') as ETA,CG.useType,CG.Stock_memo,zszl.zsywjc as Supplier,Busers.UserName,isnull(MaterialNG.ng_reason,''N/A'') as ng_reason,getdate() as admindate from (');
    SQL.Add('select YPDH ,FD,CLBH,YWPM,CSBH, CLSL from Temp_SRDet_FML  where SEASON='''+season.Text+''' and Stage = '''+query2.fieldbyname('stage').asstring+'''');
    SQL.Add(')  YPZL ');
    //======================================
    SQL.Add('Left Join (');
    SQL.Add('Select CGZLSS.ZLBH as YPDH, CGZLSS.CLBH,CLZL.cltd,Sum(CGZLSS.Qty) as Qty,Min(CGZLS.CFMDate) as ETD,MaterialMOQ.Location,cgzl.cgdate,');
    SQL.Add('Case when MaterialMOQ.Location=''VN'' then Min(CGZLS.CFMDate)+1 else Min(CGZLS.CFMDate)+5 end as ETA,Min(CGZLS.CGNO) as CGNO, ''Buy'' as useType,'''' as stock_memo');
    SQL.Add('from CGZLSS');
    SQL.Add('inner join CGZL on CGZL.CGNO=CGZLSS.CGNO and GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('inner join CGZLS on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('inner join CLZL on CLZL.CLDH=CGZLSS.CLBH');
    SQL.Add('left join (select season,CLBH,Location from MaterialMOQ where season='''+season.Text+''' Group by season,CLBH,Location ) MaterialMOQ on MaterialMOQ.CLBH=CGZLS.CLBH');
  //  SQL.Add('where  CGZL.SEASON='''+season.Text+'''  and CGZL.PURPOSE = '''+query2.fieldbyname('stage').asstring+'''  ');
   //樣品單合併
    SQL.Add('Group by CGZLSS.ZLBH, CGZLSS.CLBH,CLZL.cltd,MaterialMOQ.Location,cgzl.cgdate');
    SQL.Add(') CG');
    SQL.Add('on CG.YPDH=YPZL.YPDH and CG.CLBH=YPZL.CLBH');
    //20150901增加廠商
    SQL.Add('left join zszl on zszl.zsdh=ypzl.csbh ');
    SQL.Add('left join zszl_dev on zszl_dev.zsdh=zszl.zsdh and GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('left join Busers on zszl_dev.SamplePurchaser=Busers.UserID ');
    SQL.Add('left join CGKCUSE on CGKCUSE.zlbh=YPZL.YPDH and CGKCUSE.CLBH=YPZL.CLBH and CGKCUSE.GSBH ='''+main.Edit2.Text+''' ');
    SQL.Add('left join (select CINO,CGNO,CLBH from CGZLInvoiceS)CGZLInvoiceS on CG.CGNO=CGZLInvoiceS.CGNO and CGZLInvoiceS.CLBH=cg.clbh');
    SQL.Add('left join (select CINO,CIDATE from CGZLInvoice where GSBH = '''+main.Edit2.Text+''')CGZLInvoice on CGZLInvoice.CINO=CGZLInvoiceS.CINO');
    SQL.Add('LEFT join (select KCRKS.DOCNO,CLBH,KCRK.USERDATE,RKSB from KCRKS ,KCRK where KCRK.RKNO=KCRKS.RKNO and KCRK.GSBH='''+main.Edit2.Text+''')KCRKS on  CG.CGNO=KCRKS.DOCNO and CG.CLBH=KCRKS.CLBH  and ISNULL(KCRKS.RKSB,'''')<>''NG''');
    SQL.Add('LEFT join (select CGNO,CLBH,NG_REAsON,NG_ETD from MaterialNG)MaterialNG  on CG.CLBH=MaterialNG.CLBH and CG.CGNO=MaterialNG.CGNO ');
    SQL.Add('WHERE ((MaterialNG.ng_reason<>''OK'' AND MaterialNG.ng_reason<>''OK with improve'' AND KCRKS.USERDATE IS not null) OR KCRKS.USERDATE IS null ');
    SQL.Add('and CG.useType <>''stock'' )OR (CG.CGNO IS NULL AND CG.useType IS NULL  AND CGKCUSE.clbh IS  NULL )');
    SQL.Add('group by MaterialNG.ng_ETD,cg.cgno,cg.cgdate,CGZLInvoice.cidate,ypzl.ypdh,ypzl.fd,ypzl.clbh,ypzl.ywpm,ypzl.csbh,');
    SQL.Add('ypzl.clsl,CG.Qty,CG.ETD,CG.Location,CONVERT(char(10),CG.ETA,111),CG.CGNO,CG.useType,KCRKS.USERDATE,CG.Stock_memo,zszl.zsywjc,Busers.UserName,MaterialNG.ng_reason');
    SQL.Add('order by ypzl.ypdh');
    memo4.text:=sql.text;
    execsql;
  end;

with Query2 do
   begin
    Active:=false;
    SQL.Clear;
    sql.add('select ''Uppers'',jijie,main.Stage,SRDet_ML.admindate from (select kfxxzl.jijie,ypzl.kfjd as Stage from kfxxzl');
    sql.add('left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao = kfxxzl.shehao ');
    sql.add('where jijie='''+season.text+''' and kfjd is not null and kfjd<>''''');
    sql.add('group by kfxxzl.jijie,ypzl.kfjd)main ');
    SQL.Add('left join (select season,stage,admindate from SRDet_ML group by season,stage,admindate )SRDet_ML on SRDet_ML.season=main.jijie and SRDet_ML.stage=main.Stage ');
    sql.add('union  ');
    sql.add('select ''Stitching'',jijie,main.Stage,SRDet_FML.admindate from (select kfxxzl.jijie,ypzl.kfjd as Stage from kfxxzl');
    sql.add('left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao = kfxxzl.shehao ');
    sql.add('where jijie='''+season.text+''' and kfjd is not null and kfjd<>''''');
    sql.add('group by kfxxzl.jijie,ypzl.kfjd)main ');
    SQL.Add('left join (select season,stage,admindate from SRDet_FML group by season,stage,admindate )SRDet_FML on SRDet_FML.season=main.jijie and SRDet_FML.stage=main.Stage ');
    //memo5.Text:=sql.text;
    active:=true;
  end;
end;






procedure TMaterialTracking1.Button2Click(Sender: TObject);
begin
with Query2 do
   begin
    Active:=false;
    SQL.Clear;
    sql.add('select ''Uppers'',jijie,main.Stage,SRDet_ML.admindate from (select kfxxzl.jijie,ypzl.kfjd as Stage from kfxxzl');
    sql.add('left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao = kfxxzl.shehao ');
    sql.add('where jijie='''+season.text+''' and kfjd is not null and kfjd<>''''');

    SQL.Add('        and ypzl.GSDH= '''+main.Edit2.Text+''' ');

    sql.add('group by kfxxzl.jijie,ypzl.kfjd)main ');
    SQL.Add('left join (select season,stage,admindate from SRDet_ML group by season,stage,admindate )SRDet_ML on SRDet_ML.season=main.jijie and SRDet_ML.stage=main.Stage ');
    sql.add('union  ');
    sql.add('select ''Stitching'',jijie,main.Stage,SRDet_FML.admindate from (select kfxxzl.jijie,ypzl.kfjd as Stage from kfxxzl');
    sql.add('left join ypzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao = kfxxzl.shehao ');
    sql.add('where jijie='''+season.text+''' and kfjd is not null and kfjd<>''''');

    SQL.Add('        and ypzl.GSDH= '''+main.Edit2.Text+''' ');

    sql.add('group by kfxxzl.jijie,ypzl.kfjd)main ');
    SQL.Add('left join (select season,stage,admindate from SRDet_FML group by season,stage,admindate )SRDet_FML on SRDet_FML.season=main.jijie and SRDet_FML.stage=main.Stage ');
   // memo5.Text:=sql.text;
//    showmessage(SQL.Text);
    active:=true;
  end;
end;

end.
