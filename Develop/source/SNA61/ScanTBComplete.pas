unit ScanTBComplete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ehlibBDE;

type
  TScanTBComplete1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DataSource1: TDataSource;
    Query1: TQuery;
    Query1Testno: TStringField;
    Query1Article: TStringField;
    Query1Finish: TBooleanField;
    Query1Complete: TDateTimeField;
    Query1TBReceive: TBooleanField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    Label2: TLabel;
    Edit2: TEdit;
    DBGridEh2: TDBGridEh;
    DataSource2: TDataSource;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    BooleanField1: TBooleanField;
    BooleanField2: TBooleanField;
    Query1insole_get: TDateTimeField;
    Panel5: TPanel;
    Label3: TLabel;
    Edit3: TEdit;
    DBGridEh3: TDBGridEh;
    DataSource3: TDataSource;
    Query3: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    Query1lace_get: TDateTimeField;
    BooleanField4: TBooleanField;
    Query3TBReceive: TBooleanField;
    Qtemp: TQuery;
    Query1YPDH: TStringField;
    Query3YPDH: TStringField;
    Query2YPDH: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
     IsHide_Warehouse_XT:String;
     YPDH:String;
     //
     GSBH_VGC:String;
     GSBH_XuongR_2Ma:String;
     RubberGSBH:array of String;
     procedure SacnTBComplete();
    { Private declarations }
    Function CheckKCLLS_Finish():boolean;
  public
    { Public declarations }
  end;

var
  ScanTBComplete1: TScanTBComplete1;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TScanTBComplete1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TScanTBComplete1.FormDestroy(Sender: TObject);
begin
  ScanTBcomplete1:=nil;
end;

procedure TScanTBComplete1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Finish,Complete,YPDH from shoetest where Testno='''+edit1.text+'''  ');
      Active:=true;
      YPDH:=FieldByName('YPDH').AsString;
    end;

    if query1.FieldByName('TBReceive').value<>'1' then
    begin
       showmessage('TB khong co Receive');
       Edit1.Clear;
       abort;
    end;
    if query1.FieldByName('TBReceive').value='1' then
    begin
        if query1.FieldByName('Finish').value='1' then
        begin
          showmessage('TB already complete');
          Edit1.Clear;
          abort;
        end;
        if query1.FieldByName('Finish').value<>'1' then
        begin
          SacnTBComplete();
        end;
    end;
 end;
end;
//檢查是否領料完畢
Function TScanTBComplete1.CheckKCLLS_Finish():boolean;
var IsYPZL_ZLZLS2:boolean;
    i:integer;
begin
  if Copy(YPDH,4,1)='V' then   //只有V出貨才檢查
  begin
    with Qtemp do
    begin
       Active:=false;
       SQL.Clear;
       SQL.Add('Select top 1 YPDH from YPZL_ZLZLS2 where YPDH='''+YPDH+''' ');
       Active:=true;
       if RecordCount>0 then
       begin
         IsYPZL_ZLZLS2:=true;
       end else
       begin
         IsYPZL_ZLZLS2:=false;
       end;
       Active:=false;
    end;
    //
    with  Qtemp do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select * from (');
      SQL.Add('select OrdCL.*,Round(KCLLS.TempQty,2) as TempQty ,case when KCLLS.CNO_NK='''' then null else CNO_NK end CNO_NK,case when KCLLS.CNO_TC='''' then null else CNO_TC end CNO_TC');
      SQL.Add(',case when KCLLS.CNO_HD='''' then null else CNO_HD end CNO_HD,case when KCLLS.CNO_KD='''' then null else CNO_KD end CNO_KD,KCLLS.RKQty,');
      SQL.Add('       IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
      SQL.Add('       IsNull(Round(KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0),2),0)  as ZZ,KCLLS.Qty ');
      //20200910 開發調整樣品單總用量 後來改成無條件進位
      if IsYPZL_ZLZLS2=false then
      begin
        SQL.Add('from (select * from (select YPZLS.YPDH as ZLBH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH, YPZLS.CLSL, ');
        SQL.Add('      CLZL.YWPM,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as GSBH  from ( ');
        SQL.Add('      Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( ');
        SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh,ypzls.CLBH as MJBH,ypzls.CLBH as Parent ,''Assembly'' as DType,ypzls.CLBH,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL,clzl.CLZMLB ');
        SQL.Add('      FROM ypzls ypzls ');
        SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
        SQL.Add('      LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
        SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH'); //過濾包材
        SQL.Add('      WHERE YPZLS.YPDH = '''+YPDH+''' ');
        SQL.Add('            and CLZL.CLDH like ''%'' ');
        SQL.Add('            and YPZL_NoNeedPart.bwbh is null');//過濾包材
        SQL.Add('      union all ');
        SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZMLB ');
        SQL.Add('      FROM ypzls ypzls ');
        SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
        SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('      LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
        SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH');  //過濾包材
        SQL.Add('      WHERE YPZLS.YPDH = '''+YPDH+'''  and CLZHZL.SYL>0  ');
        SQL.Add('            and CLZL.CLDH like ''%'' ');
        SQL.Add('            and YPZL_NoNeedPart.bwbh is null');//過濾包材
        SQL.Add('      union all');
        SQL.Add('      Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL,clzl.clzmlb ');
        SQL.Add('       from (');
        SQL.Add('      SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL ');
        SQL.Add('      FROM ypzls ypzls ');
        SQL.Add('      LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH ');
        SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
        SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
        SQL.Add('      left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ypzls.BWBH'); //過濾包材
        SQL.Add('      WHERE YPZLS.YPDH = '''+YPDH+'''  and CLZHZL.SYL>0   and clzl.clzmlb=''Y'' and YPZL_NoNeedPart.bwbh is null');
        SQL.Add('      ) clzhzl2');
        SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
        SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
        SQL.Add('      where  CLZL.CLDH like ''%'' ');
        SQL.Add('      )  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS');
        SQL.Add('      left join YPZL on YPZL.YPDH=YPZLS.YPDH');
        SQL.Add('      Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
        SQL.Add('      Left join CLZL on CLZL.CLDH=YPZLS.CLBH ) YPZL where CLSL>0  ');
      end else
      begin
      //YPZL_ZLZLS2樣品單展算
        SQL.Add('from (select * from (select ZLZLS2.YPDH as ZLBH,ZLZLS2.CLBH as MJBH,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,');
        SQL.Add('       sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,');
        SQL.Add('       Convert(varchar,Max(ZLZLS2.USERDATE),112) as CalDate,YPZL.GSDH as GSBH ');
        SQL.Add('from YPZL_ZLZLS2 ZLZLS2');
        SQL.Add('left join YPZL on YPZL.YPDH=ZLZLS2.YPDH');
        SQL.Add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
        SQL.Add('left join KFXXZl on KFXXZl.XieXing=YPZL.XieXing and KFXXZl.Shehao=YPZL.SheHao');
        SQL.Add('left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ZLZLS2.BWBH'); //過濾包材用
        SQL.Add('where ZLZLS2.YPDH='''+YPDH+'''');
        SQL.Add('     and ZLZLS2.MJBH=''ZZZZZZZZZZ'' --and ZLZLS2.CLSL>0');
        SQL.Add('     and ZLZLS2.CLBH like ''%''');
        SQL.Add('     and YPZL_NoNeedPart.bwbh is null');
        SQL.Add('group by ZLZLS2.YPDH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,YPZL.GSDH     ');
        SQL.Add('Union all');
        SQL.Add('select ZLZLS2.YPDH as ZLBH,ZLZLS2.MJBH,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from YPZL_ZLZLS2 as  A where A.CLBH=ZLZLS2.MJBH and A.YPDH=ZLZLS2.YPDH  ) as Parent,''Gia cong'' as DType,ZLZLS2.CLBH,');
        SQL.Add('       sum(ZLZLS2.CLSL) as CLSL,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,');
        SQL.Add('       Convert(varchar,Max(ZLZLS2.USERDATE),112) as CalDate,YPZL.GSDH as GSBH ');
        SQL.Add('from YPZL_ZLZLS2 ZLZLS2');
        SQL.Add('left join YPZL on YPZL.YPDH=ZLZLS2.YPDH');
        SQL.Add('left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
        SQL.Add('left join KFXXZl on KFXXZl.XieXing=YPZL.XieXing and KFXXZl.Shehao=YPZL.SheHao');
        SQL.Add('left join YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=ZLZLS2.BWBH'); //過濾包材用
        SQL.Add('where ZLZLS2.YPDH='''+YPDH+'''');
        SQL.Add('     and ZLZLS2.MJBH<>''ZZZZZZZZZZ''-- and ZLZLS2.CLSL>0');
        SQL.Add('     and ZLZLS2.CLBH like ''%''');
        SQL.Add('     and YPZL_NoNeedPart.bwbh is null');
        SQL.Add('group by ZLZLS2.YPDH,ZLZLS2.MJBH,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,KFXXZl.Article,KFXXZl.XieMing,YPZL.Quantity,YPZL.GSDH  ) YPZL where CLSL>0  ');
      end;
      //
      SQL.Add(') OrdCL');
      SQL.Add('left join (');
      SQL.Add('          select SCBH,CLBH,MJBH,DType,Sum(Qty) as Qty,Sum(TempQty) as TempQty,Max(CNO_NK) as CNO_NK,Max(CNO_TC) as CNO_TC,Max(CNO_HD) as CNO_HD,Max(CNO_KD) as CNO_KD,Sum(RKQty) as RKQty,');
      SQL.Add('                  Sum(NK) as NK,Sum(TC) as TC,Sum(HD) as HD,Sum(KD) as KD,Sum(XT) as XT,Sum(GC) as GC,Sum(ZZ) as ZZ from (');
      SQL.Add('                  ');
      //
      SQL.Add('          select  KCLLS.LLNO,KCLLS.SCBH, KCLLS.CLBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType, sum(KCLLS.Qty) as Qty, sum(KCLLS.TempQty) as TempQty,');
      SQL.Add('					    Sum(KCLLS.Qty) as RKQty,');
      SQL.Add('					    Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
      SQL.Add('					    Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC,');
      SQL.Add('					    Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
      SQL.Add('					    Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
      SQL.Add('					    Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
      SQL.Add('					    Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
      SQL.Add('					    Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,');
      SQL.Add('             Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
      SQL.Add('             Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
      SQL.Add('             Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
      SQL.Add('             Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD');
      SQL.Add('		       from KCLLS');
      SQL.Add('          left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('		       left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('		       left join CLZL on CLZL.CLDH=KCLLS.CLBH		   ');
      SQL.Add('		       where  KCLLS.CLBH like ''%''');
      SQL.Add('				    and KCLLS.SCBH = '''+YPDH+''' ');
      SQL.Add('           and KCLL.GSBH='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
      SQL.add('           and KCLLS.HGLB<>''XT'' ');
      SQL.Add('		       group by KCLLS.LLNO,KCLLS.SCBH,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end , KCLLS.CLBH');
      SQL.Add('           ) KCLLS Group by SCBH,CLBH,MJBH,DType');
      SQL.Add('          ) KCLLS on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH and KCLLS.DType=OrdCL.DType and KCLLS.MJBH=OrdCL.MJBH ');
      SQL.Add('where 1=1 ');
      //if CK2.Checked=true then
      //begin
        //橡膠系統廠VR2
        For i:=0 to High(RubberGSBH) do
        begin
          SQL.Add('union all ');
          SQL.Add('select ZLZLS3.*,KCLLS.TempQty,KCLLS.CNO_NK,KCLLS.CNO_TC,KCLLS.CNO_HD,KCLLS.CNO_KD,KCLLS.RKQty,IsNull(KCLLS.NK,0) as NK,IsNull(KCLLS.TC,0) as TC,IsNull(KCLLS.HD,0) as HD,IsNull(KCLLS.KD,0) as KD,IsNull(KCLLS.XT,0) as XT,IsNull(KCLLS.GC,0) as GC,');
          SQL.Add('       KCLLS.Qty-IsNull(KCLLS.NK,0)-IsNull(KCLLS.TC,0)-IsNull(KCLLS.HD,0)-IsNull(KCLLS.KD,0)-IsNull(KCLLS.XT,0)-IsNull(KCLLS.GC,0) as ZZ,KCLLS.Qty');
          SQL.Add(' from (');
          SQL.Add('select ZLZLS3.ZLBH1 as ZLBH1,right(ZLZLS3.cldhz,10) as MJBH,right(ZLZLS3.cldhz,10) as Parent,''Assembly'' as DType,right(ZLZLS3.cldhz,10) as cldhz,convert(float,round(sum(ZLZLS3.TCLYL),2)) as TCLYL,');
          SQL.Add('      CLZL.ywpm,CLZL.DWBH,KFXXZL.Article,KFXXZL.XieMing,IsNull(ERP_DDZL.Quantity,Max(DDZL.Pairs)) as Quantity,max(convert(varchar,cast(ZLZLS3.USERDATE as smalldatetime),111)) as CalDate,DDZL.CQDH');
          SQL.Add('FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3');
          SQL.Add('LEFT JOIN '+main.LIY_DD+'.dbo.DDZL DDZL ON ZLZLS3.DDBH = DDZL.DDBH AND DDZL.CQDH = ZLZLS3.CQDH LEFT JOIN '+main.LIY_DD+'.dbo.CLZL CLZL ON ZLZLS3.cldhz = CLZL.cldh ');
          SQL.Add('left join CLZL ERP_CLZL on ERP_CLZL.CLDH=Substring(ZLZLS3.cldhz,2,10)');
          SQL.Add('Left join YPZL ERP_DDZL on ERP_DDZL.YPDH=DDZL.ZLBH1 ');
          SQL.Add('left join KFXXZL on ERP_DDZL.XieXing=KFXXZL.XieXing and ERP_DDZL.Shehao=KFXXZL.shehao ');
          SQL.Add('where ZLZLS3.TCLYL>0 and ZLZLS3.ZLBH1='''+YPDH+''' and ZLZLS3.CQDH='''+RubberGSBH[i]+'''');
          SQL.Add('      and ZLZLS3.CLDHZ like ''A%'' ');
          SQL.Add('GROUP BY  ZLZLS3.cldhz,ZLZLS3.ZLBH1,CLZL.zwpm,CLZL.ywpm,DDZL.CQDH,CLZL.DWBH,KFXXZL.Article, KFXXZL.XieMing,ERP_DDZL.Quantity ) ZLZLS3');
          SQL.Add('left join (');
          SQL.Add('           select KCLLS.SCBH,KCLLS.CLBH,round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as Qty,round(sum(KCLLS.TempQty),2) as TempQty,');
          SQL.Add('                  round(sum(case when KCLL.CFMID<>''NO'' then KCLLS.Qty else 0 end),2) as RKQty,');
          SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK,');
          SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT,');
          SQL.Add('					         Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,');
          SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK,');
          SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC,');
          SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD,');
          SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD');
          SQL.Add('           from KCLLS left join KCLL on KCLL.LLNO=KCLLS.LLNO       ');
          SQL.Add('           where 1=1 '); //KCLL.USERDate>getdate()-360
          SQL.Add('                 and KCLL.GSBH='''+RubberGSBH[i]+''' ');
          SQL.Add('                 and KCLLS.SCBH ='''+YPDH+''' ');
          if IsHide_Warehouse_XT='Y' then  //隱藏XT
          SQL.add('                 and KCLLS.HGLB<>''XT'' ');
          SQL.Add('           group by KCLLS.SCBH,KCLLS.CLBH ) KCLLS on KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLLS.CLBH=ZLZLS3.CLDHZ ');
        //end;
        //CDC不在制令表中
        SQL.Add('union all');
        SQL.Add('select KCLLS.SCBH as ZLBH1,case when len(KCLLS.DFL)<10 then KCLLS.CLBH else KCLLS.DFL end as MJBH,KCLLS.CLBH as Parent,Case when len(KCLLS.DFL)<10 then ''Assembly'' else ''Gia cong''  end as DType,');
        SQL.Add('       KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
        SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.TC,0) as TC,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
        SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.TC,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ');
        SQL.Add('       ,KCLLS.Qty');
        SQL.Add('from  KCLLS');
        SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
        SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
        SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
        SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
        SQL.Add('left join ( ');
        SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ, ');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD ');
        SQL.Add('           from KCLLS ');
        SQL.Add('           where KCLLS.SCBH = '''+YPDH+''' ');
        SQL.Add('                 and KCLLS.CLBH like ''%'' ');
        if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('                 and KCLLS.HGLB<>''XT'' ');
        SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
        SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH ');
        SQL.Add('WHERE KCLL.GSBH ='''+main.Edit2.Text+''' and KCLL.CFMID<>''NO'' ');
        //20200910 開發調整樣品單總用量
        if IsYPZL_ZLZLS2=false then
        begin
          SQL.Add('      and NOT EXISTS ( select * from (select CLBH from (');
          SQL.Add('      SELECT ypzls.CLBH ');
          SQL.Add('      FROM ypzls ypzls ');
          SQL.Add('      WHERE YPDH = '''+YPDH+''' ');
          SQL.Add('      union all ');
          SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
          SQL.Add('      FROM ypzls ypzls ');
          SQL.Add('      Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
          SQL.Add('      WHERE YPDH = '''+YPDH+'''  and CLZHZL.SYL>0  ');
          SQL.Add('      union all');
          SQL.Add('      Select clzhzl.CLDH1 as CLBH ');
          SQL.Add('       from (');
          SQL.Add('      SELECT clzhzl.CLDH1 as CLBH');
          SQL.Add('      FROM ypzls ypzls ');
          SQL.Add('      inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
          SQL.Add('      left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
          SQL.Add('      WHERE YPDH = '''+YPDH+'''  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
          SQL.Add('      ) clzhzl2');
          SQL.Add('      inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh  ) YPZLS Group by CLBH ) YPZLS where KCLLS.CLBH=YPZLS.CLBH) ');
        end else
        begin
          SQL.Add('      and NOT EXISTS (select CLBH from (SELECT CLBH from YPZL_ZLZLS2 as ZLZLS2 where ZLZLS2.CLSL>0 and YPDH='''+YPDH+''' Group by CLBH) ZLZLS2 where ZLZLS2.CLBH=KCLLS.CLBH)');
        end;
        SQL.Add('   and KCLLS.SCBH like '''+YPDH+''' and KCLLS.CLBH like ''%'' and KCLLS.Qty>0');
        //VR廠不在制令表材料中
        SQL.Add('union all');
        SQL.Add('select KCLLS.SCBH as ZLBH1,KCLLS.CLBH as MJBH,KCLLS.CLBH as Parent,''Assembly'' as DType,KCLLS.CLBH as cldhz,0 as TCLYL,CLZL.YWPM,CLZL.DWBH,DDZL.Article,XXZL.XieMing,DDZL.Pairs,null as CalDate,KCLL.GSBH as CQDH,KCLLS.TempQty');
        SQL.Add('       ,KCRKCX.CNO_NK,KCRKCX.CNO_TC,KCRKCX.CNO_HD,KCRKCX.CNO_KD,KCRKCX.RKQty,IsNull(KCRKCX.NK,0) as NK,IsNull(KCRKCX.TC,0) as TC,IsNull(KCRKCX.HD,0) as HD,IsNull(KCRKCX.KD,0) as KD,IsNull(KCRKCX.XT,0) as XT,IsNull(KCRKCX.GC,0) as GC');
        SQL.Add('       ,KCLLS.Qty-IsNull(KCRKCX.NK,0)-IsNull(KCRKCX.TC,0)-IsNull(KCRKCX.HD,0)-IsNull(KCRKCX.KD,0)-IsNull(KCRKCX.XT,0)-IsNull(KCRKCX.GC,0) as ZZ');
        SQL.Add('       ,KCLLS.Qty');
        SQL.Add('from  KCLLS');
        SQL.Add('left join DDZL on DDZL.DDBH=KCLLS.SCBH');
        SQL.Add('left join XXZL on DDZL.XieXing=xxzl.XieXing and DDZL.Shehao=xxzl.shehao');
        SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
        SQL.Add('left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
        SQL.Add('left join ( ');
        SQL.Add('          select KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL,Sum(KCLLS.Qty) as RKQty,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''NK'' then Qty else 0 end ) as NK, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''TC'' then Qty else 0 end ) as TC, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''HD'' then Qty else 0 end ) as HD, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''KD'' then Qty else 0 end ) as KD, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''XT'' then Qty else 0 end ) as XT, ');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''GC'' then Qty else 0 end ) as GC,');
        SQL.Add('                  Sum(Case when KCLLS.HGLB=''ZZZZ'' then Qty else 0 end ) as ZZ,  ');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''NK'' then KCLLS.CNO end) as CNO_NK, ');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''TC'' then KCLLS.CNO end) as CNO_TC, ');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''HD'' then KCLLS.CNO end) as CNO_HD, ');
        SQL.Add('                  Max(Case when KCLLS.HGLB=''KD'' then KCLLS.CNO end) as CNO_KD ');
        SQL.Add('           from KCLLS left join KCLL on KCLLS.LLNO=KCLL.LLNO ');
        SQL.Add('           where KCLLS.SCBH = '''+YPDH+''' ');
        SQL.Add('                 and KCLLS.CLBH like ''%'' ');
        if IsHide_Warehouse_XT='Y' then  //隱藏XT
        SQL.add('                 and KCLLS.HGLB<>''XT'' ');
        SQL.Add('           Group by KCLLS.LLNO,KCLLS.CLBH,KCLLS.SCBH,KCLLS.DFL ');
        SQL.Add('           ) KCRKCX on KCRKCX.LLNO=KCLLS.LLNO and KCRKCX.CLBH=KCLLS.CLBH and KCRKCX.DFL=KCLLS.DFL and KCRKCX.SCBH=KCLLS.SCBH           ');
        SQL.Add('WHERE KCLL.GSBH like '''+GSBH_XuongR_2Ma+''' and KCLL.CFMID<>''NO'' and NOT EXISTS(SELECT *  FROM '+main.LIY_DD+'.dbo.ZLZLS3  ZLZLS3  WHERE ''A''+KCLLS.CLBH=ZLZLS3.CLDHZ AND KCLLS.SCBH=ZLZLS3.ZLBH1 and KCLL.GSBH=ZLZLS3.CQDH)');
        SQL.Add('   and KCLLS.SCBH like '''+YPDH+''' and KCLLS.CLBH like ''%'' and KCLLS.Qty>0');
      end;
      SQL.Add('  ) ZLZLS2    ');
      SQL.Add('where Round(Convert(float,IsNull(Qty,0.0)),2)<Round(Convert(float,IsNull(CLSL,0.0)),2) ');
      //funcObj.WriteErrorLog(sql.GetText);
      Active:=true;
      if RecordCount>0 then
      begin
        result:=false;
      end else
      begin
        result:=true;
      end;
      Active:=false;
    end;
  end else
  begin
    result:=true;
  end;

end;
procedure TScanTBComplete1.SacnTBComplete();
begin
  if PageControl1.ActivePageIndex = 2 then
  begin
    if CheckKCLLS_Finish()=true then
    begin
      with query1 do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('update shoetest set finish =''1'',complete=getdate()  where Testno='''+edit1.text+'''');
        SQL.Add('select testno,Article,TBReceive,finish,complete,YPDH from shoetest where Testno='''+edit1.text+'''');
        Active:=true;
      end;
    end else
    begin
       Showmessage(YPDH+':chua mot het phieu vat tu thi khong scan nhap kho thanh pham, xin bao ton kho kiem tra lai');
    end;
    Edit1.Clear;
  end
  else if PageControl1.ActivePageIndex = 0 then
  begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set insole_get=getdate()  where Testno='''+edit2.text+'''');
      SQL.Add('select testno,Article,TBReceive,finish,insole_get,YPDH  from shoetest where Testno='''+edit2.text+'''');
      Active:=true;
    end;
    Edit2.Clear;
  end
  else if PageControl1.ActivePageIndex = 1 then
  begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('update shoetest set lace_get=getdate()  where Testno='''+edit3.text+'''');
      SQL.Add('select testno,Article,TBReceive,Finish,lace_get,YPDH  from shoetest where Testno='''+edit3.text+'''');
      Active:=true;
    end;
    Edit3.Clear;
  end;
end;
procedure TScanTBComplete1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Finish,insole_get,YPDH  from shoetest where Testno='''+edit2.text+'''  ');
      Active:=true;
    end;
  if query2.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     edit2.Clear;
     abort;
  end;
  if query2.FieldByName('TBReceive').value='1' then
  begin
      if query2.FieldByName('insole_get').value <> null then
      begin
        showmessage('TB already insole_get ready OK');
        edit2.Clear;
        abort;
      end;
      if query2.FieldByName('insole_get').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TScanTBComplete1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13)  then
  begin
   with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Finish,lace_get,YPDH  from shoetest where Testno='''+edit3.text+'''  ');
      Active:=true;
    end;
  if query3.FieldByName('TBReceive').value<>'1' then
  begin
     showmessage('TB khong co Receive');
     edit3.Clear;
     abort;
  end;
  if query3.FieldByName('TBReceive').value='1' then
  begin
      if query3.FieldByName('lace_get').value <> null then
      begin
        showmessage('TB already insole_get ready OK');
        edit3.Clear;
        abort;
      end;
      if query3.FieldByName('lace_get').value = null then
      begin
        SacnTBComplete();
      end;
  end;
 end;
end;

procedure TScanTBComplete1.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
end;

procedure TScanTBComplete1.FormCreate(Sender: TObject);
var i:integer;
begin
  PageControl1.ActivePageIndex := 0;
  with query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select testno,Article,TBReceive,Finish,insole_get,YPDH from shoetest where CONVERT(varchar(100), insole_get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
    Active:=true;
  end;
  //底廠
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y''');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and SFL=''RB'' and GSBH is not null ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by GSBH');
    Active:=true;
    setlength(RubberGSBH,RecordCount);
    for i:=0 to RecordCount-1 do
    begin
      RubberGSBH[i]:=FieldByName('GSBH').AsString;
      if GSBH_XuongR_2Ma='' then GSBH_XuongR_2Ma:=Copy(FieldByName('GSBH').AsString,1,2)+'%';
      Next;
    end;
    Active:=false;
  end;
  //印刷加工廠
  GSBH_VGC:='NULL';
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select GSBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y''');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and SFL=''GC'' and GSBH is not null ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by GSBH');
    Active:=true;
    if RecordCount>0 then GSBH_VGC:=FieldByName('GSBH').AsString;
    Active:=false;
  end;
end;

procedure TScanTBComplete1.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then begin
    with query2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Finish,insole_get,YPDH from shoetest where CONVERT(varchar(100), insole_get, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 1 then begin
    with query3 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Finish,lace_get,YPDH from shoetest where CONVERT(varchar(100), lace_get, 112) = CONVERT(varchar(100), GETDATE(), 112) ');
      Active:=true;
    end;
  end
  else if PageControl1.ActivePageIndex = 2 then begin
    with query1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select testno,Article,TBReceive,Finish,Complete,YPDH from shoetest where CONVERT(varchar(100), Complete, 112) = CONVERT(varchar(100), GETDATE(), 112)');
      Active:=true;
    end;
  end

end;

end.
