unit ExtraSampleOrdList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,comobj;

type
  TExtraSampleOrdList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    YWPMEdit: TEdit;
    MatNOEdit: TEdit;
    JiJieEdit: TEdit;
    YPDHEdit: TEdit;
    CB1: TCheckBox;
    DevCodeEdit: TEdit;
    KFJDEdit: TEdit;
    TestNoEdit: TEdit;
    SupIDEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    ExtraCK: TCheckBox;
    CB2: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Label9: TLabel;
    ChildMatEdit: TEdit;
    Query1YPDH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1parent: TStringField;
    Query1DType: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CLSl: TFloatField;
    Query1okqty: TCurrencyField;
    Query1CSBH: TStringField;
    Query1BOM_Supplier: TStringField;
    Query1ZSDH_JG: TStringField;
    Query1JG_Supplier: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraSampleOrdList: TExtraSampleOrdList;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TExtraSampleOrdList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExtraSampleOrdList.FormDestroy(Sender: TObject);
begin
  ExtraSampleOrdList:=nil;
end;

procedure TExtraSampleOrdList.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('系统没有安装Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.FieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;

        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.FieldCount-1   do
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

procedure TExtraSampleOrdList.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('okQty').value>=Query1.FieldByName('CLSL').value then
  begin
    DBGridEh1.canvas.font.color:=clLime;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if (Query1.FieldByName('okQty').value<Query1.FieldByName('CLSL').value) and (Query1.FieldByName('okQty').value<>0) then
  begin
    DBGridEh1.canvas.font.color:=clRed;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraSampleOrdList.Button1Click(Sender: TObject);
begin
  if (TestNoEdit.Text='') and (YPDHEdit.Text='') then
  begin
    showmessage('Pls enter Testno or Sample Order. ');
    abort;
  end;

  with query1 do
  begin
    active:=false;
    sql.Clear;
    if ExtraCK.Checked = false then
    begin
      SQL.Add('  select YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DType,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,sum(ypzl.clsl) as CLSl,okqty,CSBH  ');
      SQL.Add('  ,ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as JG_Supplier from (  ');
      SQL.Add('  select ypzl.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DType,ypzl.CLBH,ypzl.ywpm,ypzl.dwbh,ypzl.cqdh,ypzl.CLSL,ypzl.CLZMLB,ypzl.CSBH,isnull(JGZL.okQty,0) as okQty from (  ');
      SQL.Add('  SELECT ypzls.YPDH,KFXXZL.Article,KFXXZL.XieMing,ypzls.clbh as Parent,''Assembly'' as DType,ypzls.CLBH,clzl.ywpm,clzl.dwbh,clzl.cqdh,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL,clzl.CLZMLB,YPZLS.CSBH  ');
      SQL.Add('  from ypzls  ');
      SQL.Add('  left join YPZL on YPZL.YPDH=YPZLS.YPDH  ');
      SQL.Add('  left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao  ');
      SQL.Add('  left join CLZL on CLZL.CLDH=YPZLS.CLBH   ');
      SQL.Add('  where YPZL.GSDH='''+main.Edit2.Text+''' and   YPZL.YPDH like '''+YPDHEdit.Text+'%'' and   ypzls.CLBH like '''+MatNoEdit.Text+'%'' ');
      if JiJieEdit.Text<>'' then
        SQL.Add('   and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
      if KFJDEdit.Text<>'' then
        SQL.Add(' and YPZL.KFJD='''+KFJDEdit.Text+''' ');
      if DevCodeEdit.Text<>'' then
        SQL.Add('   and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
      if not CB1.Checked then
        SQL.Add('   and CLZL.CLZMLB=''Y''  ');
      if YWPMEdit.Text<>'' then
        SQL.Add('    and CLZL.YWPM like ''%'+YWPMEdit.Text+'%''');
      if SupIDEdit.Text<>'' then
        SQL.Add('   and YPZLS.CSBH like '''+SupIDEdit.Text+'%'' ');
      if TestNoEdit.Text<>'' then
        SQL.add(' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
      if ChildMatEdit.Text<>'' then
        SQL.add('   and ypzls.CLBH in (select CLDH from clzhzl where CLDH1 like '''+ChildMatEdit.Text+'%'' Group by CLDH ) ');
      SQL.Add('  )YPZL  ');
      SQL.Add('  left join (  ');
      SQL.Add('    select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty from JGZLSS  ');
      SQL.Add('    left join YPZL on YPZL.YPDH=JGZLSS.ZLBH  ');
      SQL.Add('    left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.Shehao  ');
      SQL.Add('    where YPZL.GSDH='''+main.Edit2.Text+'''  and  JGZLSS.CLBH like '''+MatNoEdit.Text+'%''    ');
      SQL.Add('    and JGZLSS.ZLBH like '''+YPDHEdit.Text+'%'' ');
      if JiJieEdit.Text<>'' then
        SQL.Add('   and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
      if KFJDEdit.Text<>'' then
        SQL.Add('   and YPZL.KFJD='''+KFJDEdit.Text+''' ');
      if DevCodeEdit.Text<>'' then
        SQL.Add('   and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
      if TestNoEdit.Text<>'' then
        SQL.add(' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
      SQL.Add('  group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=YPZL.CLBH and JGZL.ZLBH=YPZL.YPDH )ypzl  ');
      SQL.Add('  left join zszl ON zszl.zsdh = YPZL.CSBH  ');
      SQL.Add('  left join( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as ZSYWJC  ');
      SQL.Add('  FROM ZSZL left join ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_JG and ZSZL_DEV.GSBH='''+main.Edit2.Text+''') ZSZL_DEV on ZSZL.ZSDH=ZSZL_DEV.ZSDH  ');
      SQL.Add('  group by  YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DType,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,okqty,CSBH,ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC ');
    end else
    // show giacong
    begin
      sql.add('select EXTRA.*');
      sql.add('from (');
      if CB2.Checked=false then
      begin
        SQL.Add('  select YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DType,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,sum(ypzl.clsl) as CLSl,okqty,CSBH  ');
        SQL.Add('  ,ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as JG_Supplier from (  ');
        SQL.Add('  select ypzl.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DType,ypzl.CLBH,ypzl.ywpm,ypzl.dwbh,ypzl.cqdh,ypzl.CLSL,ypzl.CLZMLB,ypzl.CSBH,isnull(JGZL.okQty,0) as okQty from (  ');
        SQL.Add('  SELECT ypzls.YPDH,KFXXZL.Article,KFXXZL.XieMing,ypzls.clbh as Parent,''Assembly'' as DType,ypzls.CLBH,clzl.ywpm,clzl.dwbh,clzl.cqdh,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL,clzl.CLZMLB,YPZLS.CSBH  ');
        SQL.Add('  from ypzls  ');
        SQL.Add('  left join YPZL on YPZL.YPDH=YPZLS.YPDH  ');
        SQL.Add('  left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao  ');
        SQL.Add('  left join CLZL on CLZL.CLDH=YPZLS.CLBH   ');
        SQL.Add('  where YPZL.GSDH='''+main.Edit2.Text+''' and   YPZL.YPDH like '''+YPDHEdit.Text+'%'' and   ypzls.CLBH like '''+MatNoEdit.Text+'%'' ');
        if JiJieEdit.Text<>'' then
          SQL.Add('   and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
        if KFJDEdit.Text<>'' then
          SQL.Add('   and YPZL.KFJD='''+KFJDEdit.Text+''' ');
        if DevCodeEdit.Text<>'' then
          SQL.Add('   and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
        if not CB1.Checked then
          SQL.Add('   and CLZL.CLZMLB=''Y''  ');
        if YWPMEdit.Text<>'' then
          SQL.Add('    and CLZL.YWPM like ''%'+YWPMEdit.Text+'%''');
        if SupIDEdit.Text<>'' then
          SQL.Add('   and YPZLS.CSBH like '''+SupIDEdit.Text+'%'' ');
        if TestNoEdit.Text<>'' then
          SQL.add(' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
        if ChildMatEdit.Text<>'' then
          SQL.add('   and ypzls.CLBH in (select CLDH from clzhzl where CLDH1 like '''+ChildMatEdit.Text+'%'' Group by CLDH ) ');
        SQL.Add('  )YPZL  ');
        SQL.Add('  left join (  ');
        SQL.Add('    select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty from JGZLSS  ');
        SQL.Add('    left join YPZL on YPZL.YPDH=JGZLSS.ZLBH  ');
        SQL.Add('    left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.Shehao  ');
        SQL.Add('    where YPZL.GSDH='''+main.Edit2.Text+''' and  JGZLSS.CLBH like '''+MatNoEdit.Text+'%'' ');
        SQL.Add('    and JGZLSS.ZLBH like '''+YPDHEdit.Text+'%'' ');
        if JiJieEdit.Text<>'' then
          SQL.Add('   and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
        if KFJDEdit.Text<>'' then
          SQL.Add('   and YPZL.KFJD='''+KFJDEdit.Text+''' ');
        if DevCodeEdit.Text<>'' then
          SQL.Add('   and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
        if TestNoEdit.Text<>'' then
          SQL.add(' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
        SQL.Add('  group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=YPZL.CLBH and JGZL.ZLBH=YPZL.YPDH )ypzl  ');
        SQL.Add('  left join zszl ON zszl.zsdh = YPZL.CSBH  ');
        SQL.Add('  left join( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as ZSYWJC  ');
        SQL.Add('  FROM ZSZL left join ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_JG and ZSZL_DEV.GSBH='''+main.Edit2.Text+''') ZSZL_DEV on ZSZL.ZSDH=ZSZL_DEV.ZSDH  ');
        SQL.Add('  group by  YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DType,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,okqty,CSBH,ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC  ');
        SQL.Add('    ');
        SQL.Add('  union all  ');
      end;
      SQL.Add('  select YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DType,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,Sum(YPZL.CLSL) as CLSL,okQty,CSBH  ');
      SQL.Add('  ,ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as JG_Supplier from (  ');
      SQL.Add('  select YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DType,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,YPZL.DEVCODE,YPZL.CLSL,isnull(JGZL.okQty,0) as okQty,CSBH from (  ');
      SQL.Add('  select YPZLS.YPDH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH,YPZLS.CLSL ,   ');
      SQL.Add('  CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,KFXXZL.Article,KFXXZL.XieMing,KFXXZL.DEVCODE,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as GSBH,YPZLS.CLZMLB,CSBH from (   ');
      SQL.Add('  Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL,CSBH  from (   ');
      SQL.Add('  	SELECT ypzls.YPDH ,ypzls.xh,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZMLB,  ');
      SQL.Add('  	YPZLS.CSBH   ');
      SQL.Add('  	FROM ypzls ypzls   ');
      SQL.Add('  	left join YPZL on YPZL.YPDH=YPZLS.YPDH    ');
      SQL.Add('  	Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh   ');
      SQL.Add('  	left join clzl clzl ON CLZHZL.cldh1 = clzl.cldh   ');
      SQL.Add('  	WHERE YPZL.GSDH='''+main.Edit2.Text+''' and  ypzls.YPDH like '''+YPDHEdit.Text+'%''  and CLZHZL.SYL>0    ');
      SQL.Add('      and ypzls.CLBH like '''+MatNoEdit.Text+'%'' ');
      if SupIDEdit.Text<>'' then
        SQL.Add('      and YPZLS.CSBH like '''+SupIDEdit.Text+'%'' ');
      SQL.Add('  	union all  ');
      SQL.Add('  	Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL,clzl.clzmlb,clzhzl2.CSBH   ');
      SQL.Add('  	from (  ');
      SQL.Add('  		SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,YPZLS.CSBH   ');
      SQL.Add('  		FROM ypzls ypzls   ');
      SQL.Add('  		left join YPZL on YPZL.YPDH=YPZLS.YPDH    ');
      SQL.Add('  		inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh   ');
      SQL.Add('  		left join clzl clzl ON CLZHZL.cldh1 = clzl.cldh   ');
      SQL.Add('  		WHERE YPZL.GSDH='''+main.Edit2.Text+''' and   ypzls.YPDH like '''+YPDHEdit.Text+'%''  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''    ');
      if SupIDEdit.Text<>'' then
        SQL.Add('  		and CLZHZL.ZSDH like '''+SupIDEdit.Text+'%'' ');
      SQL.Add('  		) clzhzl2  ');
      SQL.Add('  	inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh   ');
      SQL.Add('  	left join clzl clzl ON CLZHZL.cldh1 = clzl.cldh   ');
      SQL.Add('  	where  clzhzl2.CLBH like '''+MatNoEdit.Text+'%'' ');
      SQL.Add('  	)  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,CSBH ) YPZLS  ');
      SQL.Add('  left join YPZL on YPZL.YPDH=YPZLS.YPDH  ');
      SQL.Add('  Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao   ');
      SQL.Add('  Left join CLZL on CLZL.CLDH=YPZLS.CLBH   ');
      SQL.Add('  where YPZL.GSDH='''+main.Edit2.Text+''' and   YPZL.YPDH like '''+YPDHEdit.Text+'%'' ');
      if JiJieEdit.Text<>'' then
        SQL.Add('   and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
      if KFJDEdit.Text<>'' then
        SQL.Add(' and YPZL.KFJD='''+KFJDEdit.Text+''' ');
      if DevCodeEdit.Text<>'' then
        SQL.Add('   and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
      if YWPMEdit.Text<>'' then
        SQL.Add('    and CLZL.YWPM like ''%'+YWPMEdit.Text+'%''');
      if TestNoEdit.Text<>'' then
        SQL.add(' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
      if ChildMatEdit.Text<>'' then
        SQL.add('   and ypzls.CLBH like '''+ChildMatEdit.Text+'%''  ');
      SQL.Add('  ) YPZL    ');
      SQL.Add('left join (select JGCK.SCBH,JGCK.CLBH,JGCK.MJBH,JGCK.DType,sum(JGCK.Qty) as okQty from(   ');
      SQL.Add('           select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH,''Gia cong'' as DType,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS   ');
      SQL.Add('           left join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH  ');
      SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
      SQL.Add('           left join YPZL on YPZL.YPDH=JGZLSS.ZLBH    ');
      SQL.Add('           left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.Shehao    ');
      SQL.Add('           where  JGZLSS.ZLBH like '''+YPDHEdit.Text+'%'' and JGZLS.CLBH like '''+MatNoEdit.Text+'%'' ');
      SQL.Add('           and JGZL.GSBH='''+main.Edit2.Text+''' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) <''2017/09/01''  ');
      SQL.Add('           and YPZL.GSDH='''+main.Edit2.Text+''' and JGZLS.ZMLB<>''ZZZZZZZZZZ''  ');
      if JiJieEdit.Text<>'' then
        SQL.Add('         and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
      if KFJDEdit.Text<>'' then
        SQL.Add('         and YPZL.KFJD='''+KFJDEdit.Text+''' ');
      if DevCodeEdit.Text<>'' then
        SQL.Add('         and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
      if TestNoEdit.Text<>'' then
        SQL.Add('         and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
      SQL.Add('           Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH  ');
      SQL.Add('           Union all       ');
      SQL.Add('           select KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH,''Gia cong'' as DType, sum(KCLLS.Qty) as okQty from KCLLS   ');
      SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO  ');
      SQL.Add('           left join YPZL on YPZL.YPDH=KCLLS.SCBH    ');
      SQL.Add('           left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.Shehao   ');
      SQL.Add('           where  KCLLS.DFL like '''+MatNoEdit.Text+'%'' ');
      SQL.Add('           and KCLLS.SCBH like '''+YPDHEdit.Text+'%'' ');
      SQL.Add('           and KCLL.GSBH='''+main.Edit2.Text+''' and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''  ');
      SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ''  ');
      SQL.Add('           and YPZL.GSDH='''+main.Edit2.Text+'''  ');
      if JiJieEdit.Text<>'' then
        SQL.Add('         and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
      if KFJDEdit.Text<>'' then
        SQL.Add('         and YPZL.KFJD='''+KFJDEdit.Text+''' ');
      if DevCodeEdit.Text<>'' then
        SQL.Add('         and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
      if TestNoEdit.Text<>'' then
        SQL.Add('         and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
      SQL.Add('           group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL  ');
      SQL.Add('           )JGCK group by JGCK.SCBH,JGCK.CLBH,JGCK.MJBH,JGCK.DType) JGZL on JGZL.MJBH=YPZL.MJBH  and JGZL.CLBH=YPZL.CLBH and JGZL.SCBH=YPZL.YPDH ) YPZL    ');
      SQL.Add('  left join zszl ON zszl.zsdh = YPZL.CSBH  ');
      SQL.Add('  left join ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as ZSYWJC  ');
      SQL.Add('  FROM ZSZL left join ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_JG and ZSZL_DEV.GSBH='''+main.Edit2.Text+''') ZSZL_DEV  ');
      SQL.Add('  on ZSZL.ZSDH=ZSZL_DEV.ZSDH  ');
      SQL.Add('  group by  YPZL.YPDH,ypzl.Article,ypzl.XieMing,ypzl.parent,ypzl.DType,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,okqty,CSBH,ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC  ');
      SQL.Add('  ) EXTRA  ');
      SQL.Add('  where 1=1  ');
      SQL.Add('  order by EXTRA.YPDH,EXTRA.Parent,EXTRA.DType,EXTRA.CLBH  ');
    end;
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

end.
