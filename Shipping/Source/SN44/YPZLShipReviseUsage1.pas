unit YPZLShipReviseUsage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ExtCtrls, ComCtrls, StdCtrls, Buttons, DB,
  DBTables,Math, Menus, Comobj;

type
  TYPZLShipReviseUsage = class(TForm)
    Panel1: TPanel;
    BB2: TBitBtn;
    BB3: TBitBtn;
    BB4: TBitBtn;
    BB5: TBitBtn;
    BB6: TBitBtn;
    BB7: TBitBtn;
    BB1: TBitBtn;
    BBT1: TBitBtn;
    BBT2: TBitBtn;
    BBT3: TBitBtn;
    BBT4: TBitBtn;
    bbt6: TBitBtn;
    ToolPanel: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit6: TEdit;
    CheckBox2: TCheckBox;
    VTCombo: TComboBox;
    MotherEdit: TEdit;
    CheckBox3: TCheckBox;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    Splitter1: TSplitter;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1YPDH: TStringField;
    Query1BWBH: TStringField;
    Query1CSBH: TStringField;
    Query1MJBH: TStringField;
    Query1CLBH: TStringField;
    Query1ZMLB: TStringField;
    Query1SIZE: TStringField;
    Query1CLSL: TFloatField;
    Query1USAGE: TFloatField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1dwbh: TStringField;
    Query1CLMC: TStringField;
    Query1BWMC: TStringField;
    Query1ZSMC: TStringField;
    Query1CLSLQty: TFloatField;
    Query1Qty: TCurrencyField;
    DS2: TDataSource;
    KCLLSQry: TQuery;
    KCLLSQrySCBH: TStringField;
    KCLLSQryCLBH: TStringField;
    KCLLSQryQty: TCurrencyField;
    PopupMenu1: TPopupMenu;
    QtyCLSL1: TMenuItem;
    UpdateSQL1: TUpdateSQL;
    UpdateQry: TQuery;
    Query1USERDATE: TDateTimeField;
    bbt7: TBitBtn;
    Qtemp: TQuery;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure QtyCLSL1Click(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure BB6Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure bbt7Click(Sender: TObject);
  private
    IsYPZL_ZLZLS2:boolean;
    YPDH:String;
    { Private declarations }
    procedure NegativeResult(Diff: double);
    procedure InsertYPZL_ZLZLS2();
    procedure UpdatePart();
  public
    { Public declarations }
  end;

var
  YPZLShipReviseUsage: TYPZLShipReviseUsage;

implementation
  uses main1, YPZLShipReviseUsage_CLZL1, YPZLShipReviseUsage_BWBH1, FunUnit;
{$R *.dfm}
procedure TYPZLShipReviseUsage.NegativeResult(Diff: double);
begin
  Diff:=RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2);
  Query1.FieldByName('CLSL').Value:=0;
  Query1.Next;
  Query1.Edit;

  if RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2)>=0 then
  begin
    Query1.FieldByName('CLSL').Value:=RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2);
  end else
  begin
    NegativeResult(Diff);
  end;
end;

procedure TYPZLShipReviseUsage.FormDestroy(Sender: TObject);
begin
  YPZLShipReviseUsage:=nil;
end;

procedure TYPZLShipReviseUsage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TYPZLShipReviseUsage.Button1Click(Sender: TObject);
begin
  //
  if (Length(Edit4.Text)<=9)  then
  begin
    showmessage('Please input Sample Order ');
    exit;
  end;
  
  with UpdateQry do
  begin
     Active:=false;
     SQL.Clear;
     SQL.Add('Select top 1 YPDH from YPZL_ZLZLS2 where YPDH='''+Edit4.Text+''' ');
     Active:=true;
     if RecordCount>0 then
     begin
       YPDH:=FieldByName('YPDH').AsString;
       IsYPZL_ZLZLS2:=true;
       BBT7.Enabled:=true;
     end else
     begin
       YPDH:=Edit4.Text;
       IsYPZL_ZLZLS2:=false;
       BBT7.Enabled:=false;
     end;
     Active:=false;
  end;
  //
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('if object_id('+''''+'tempdb..#YPZL_ZLZLS2'+''''+') is not null  ');
    sql.add('begin   drop table #YPZL_ZLZLS2 end   ');
    if IsYPZL_ZLZLS2=false then
    begin
      sql.add('Select * into #YPZL_ZLZLS2 from (');
      sql.add('select  ypzls.YPDH,ypzls.BWBH,IsNull(ypzls.CSBH,'''') as CSBH,');
      sql.add(' ''ZZZZZZZZZZ'' as MJBH,ypzls.CLBH,CLZL.CLZMLB as ZMLB,');
      sql.add(' ''ZZZZZZ'' as SIZE, CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100  as CLSL,ypzls.CLSL as  USAGE ,');
      sql.add(' '''+main.edit1.text+''''+'  as USERID,');
      sql.add(' GetDate() as USERDATE,');
      sql.add(' ''2'' as YN ');
      sql.add(' from YPZL ');
      sql.add(' left join ypzls on ypzls.YPDH=YPZL.YPDH ');
      sql.add(' left join CLZL on CLZL.CLDH=ypzls.CLBH ');
      sql.add(' where YPZL.YPDH='''+Edit4.Text+''' ');
      //20160310 average usage with extra multi size
      sql.Add('Union all ');
      sql.Add('select YPDH,BWBH,ZSDH,MJBH,CLBH,ZMLB,SIZE,Sum(CLSL)  as CLSL,avg(usage) as Usage,Max(USERID) as USERID,Max(UserDate) as UserDate,Max(YN) as YN');
      sql.Add(' from(');
      sql.add(' select  ypzls.YPDH,ypzls.BWBH,');
      sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh ');
      sql.add(' ,ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
      sql.add(' ''ZZZZZZ'+''''+' as SIZE, Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,');
      sql.add(' '''+main.edit1.text+'''  as USERID,');
      sql.add(' GetDate() as USERDATE,');
      sql.add(' ''2'' as YN ');
      sql.add(' from YPZL ');
      sql.add(' INNER join ypzls on ypzls.YPDH=YPZL.YPDH ');
      sql.add(' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh ');
      sql.add(' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CLZHZL_Dev.cldh1 = CLZHZL.cldh1 ');//2015/1/3新增開發子材料廠商對照
      sql.add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      sql.add(' where CLZHZL.SYL>0 and YPZL.YPDH='''+Edit4.Text+''' ) A  ');
      sql.Add(' Group by YPDH,BWBH,CLBH,ZSDH,MJBH,ZMLB,SIZE');
      //二階加工
      sql.Add('Union all ');
      SQL.Add(' select CLZHZL2.YPDH,CLZHZL2.BWBH,');
      SQL.Add('        case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh,');
      SQL.Add('        CLZHZL2.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
      SQL.Add('        ''ZZZZZZ'' as SIZE, round(CLZHZL2.CLSL*CLZHZL.SYL,2) as CLSL,CLZHZL2.USAGE* CLZHZL.SYL as  USAGE ,');
      SQL.Add('        '''+main.edit1.text+'''  as USERID,GetDate() as USERDATE,''2'' as YN ');
      SQL.Add('  from (');
      SQL.Add('select  ypzls.YPDH,ypzls.BWBH,');
      SQL.Add('case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh,');
      SQL.Add('ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
      SQL.Add('''ZZZZZZ'' as SIZE,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,');
      SQL.Add(''''+main.edit1.text+'''  as USERID,GetDate() as USERDATE,''2'' as YN ');
      SQL.Add('  from YPZL ');
      SQL.Add(' INNER join ypzls on ypzls.YPDH=YPZL.YPDH ');
      SQL.Add(' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add(' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CLZHZL_Dev.cldh1 = CLZHZL.cldh1 ');
      SQL.Add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      SQL.Add(' where CLZHZL.SYL>0 and YPZL.YPDH='''+Edit4.Text+'''and CLZL.CLZMLB=''Y'' ');
      SQL.Add(' ) CLZHZL2');
      SQL.Add(' INNER  JOIN CLZHZL   ON CLZHZL2.CLBH = CLZHZL.cldh ');
      SQL.Add(' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CLZHZL_Dev.cldh1 = CLZHZL.cldh1 ');
      SQL.Add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      SQL.Add(' where CLZHZL.SYL>0 ) YPZL ');
    end else
    begin
      sql.add('Select * into #YPZL_ZLZLS2 from (select * from YPZL_ZLZLS2  where YPDH='''+Edit4.Text+''') YPZL');
    end;
    //顯示
    SQL.Add('select YPZL.*,CLZL.dwbh,CLZL.ywpm as CLMC,bwzl.ywsm as BWMC,ZSZL.ZSYWJC AS ZSMC,YPZLAll.CLSLQty,KCLLS.Qty ');
    SQL.Add('from #YPZL_ZLZLS2 as YPZL');
    SQL.Add('LEFT JOIN BWZL ON BWZL.BWDH=YPZL.BWBH ');
    SQL.Add('LEFT JOIN CLZL ON YPZL.CLBH=CLZL.CLDH ');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH=YPZL.CSBH ');
    SQL.Add('Left join ( Select  YPDH,CLBH,MJBH,Sum(IsNull(CLSL,0)) as CLSLQty from ( ');
    SQL.Add('            Select * from #YPZL_ZLZLS2 ');
    SQL.Add('            where CLBH like '''+Edit1.Text+'%'' ');
    if VTCombo.ItemIndex=1 then
      sql.Add('            and MJBH<>''ZZZZZZZZZZ'' ');
    if VTCombo.ItemIndex=2 then
      sql.Add('            and MJBH=''ZZZZZZZZZZ'' ');
    if MotherEdit.Text<>'' then
      sql.Add('            and MJBH like '''+MotherEdit.Text+'%'' ');
    SQL.Add(' ) YPZL  Group by YPDH,CLBH,MJBH ');
    SQL.Add(')  YPZLAll on YPZL.YPDH=YPZLAll.YPDH and YPZL.CLBH=YPZLAll.CLBH and YPZL.MJBH=YPZLAll.MJBH ');
    //領料
    if VTCombo.ItemIndex=0 then
    begin
     SQL.Add('left join (select SCBH,CLBH,MJBH,IsNull(Sum(Qty),0) as Qty from (');
     SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,''ZZZZZZZZZZ'' as MJBH, sum(KCLLS.Qty) as Qty');
     SQL.Add('            from KCLLS');
     SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
     SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
     SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
     SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' ');
     SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH');
     SQL.Add('            Union all');
     SQL.Add('            select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS');
     SQL.Add('            Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
     SQL.Add('            Left Join JGZL  on JGZL.JGNO=JGZLS.JGNO ');
     SQL.Add('            where JGZLSS.ZLBH like '''+edit4.Text+'%'' and JGZLS.ZMLB like '''+edit1.Text+'%'' and JGZLS.CLBH like '''+MotherEdit.Text+'%''  ');
     SQL.Add('                  and JGZL.GSBH='''+main.Edit2.Text+''' ');
     SQL.Add('                  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''  ');
     SQL.Add('            Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH');
     SQL.Add('            Union all');
     SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH, sum(KCLLS.Qty) as Qty');
     SQL.Add('            from KCLLS');
     SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
     SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
     SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
     SQL.Add('                 and KCLL.SCBH=''JJJJJJJJJJ'' ');
     SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL');
     SQL.Add('           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=YPZL.CLBH and KCLLS.SCBH=YPZL.YPDH  and KCLLS.MJBH=YPZL.MJBH ');
    end else if VTCombo.ItemIndex=1 then
    begin
     SQL.Add('left join (select SCBH,CLBH,MJBH,IsNull(Sum(Qty),0) as Qty from (');
     SQL.Add('            select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH ,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS');
     SQL.Add('            Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
     SQL.Add('            Left Join JGZL  on JGZL.JGNO=JGZLS.JGNO ');
     SQL.Add('            where JGZLSS.ZLBH like '''+edit4.Text+'%'' and JGZLS.ZMLB like '''+edit1.Text+'%'' and JGZLS.CLBH like '''+MotherEdit.Text+'%'' ');
     SQL.Add('                  and JGZL.GSBH='''+main.Edit2.Text+''' ');
     SQL.Add('            and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''  ');
     SQL.Add('            Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH');
     SQL.Add('            Union all ');
     SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH, sum(KCLLS.Qty) as Qty');
     SQL.Add('            from KCLLS');
     SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
     SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
     SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
     SQL.Add('                 and KCLL.SCBH=''JJJJJJJJJJ'' ');
     SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL');
     SQL.Add('           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=YPZL.CLBH and KCLLS.SCBH=YPZL.YPDH  and KCLLS.MJBH=YPZL.MJBH ');
    end else if VTCombo.ItemIndex=2 then
    begin
     SQL.Add('left join (select SCBH,CLBH,MJBH,IsNull(Sum(Qty),0) as Qty from (');
     SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,''ZZZZZZZZZZ'' as MJBH, sum(KCLLS.Qty) as Qty');
     SQL.Add('            from KCLLS');
     SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
     SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
     SQL.Add('                   and KCLL.GSBH='''+main.Edit2.Text+''' ');
     SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' ');
     SQL.Add('            group by KCLLS.SCBH, KCLLS.CLBH');
     SQL.Add('           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=YPZL.CLBH and KCLLS.SCBH=YPZL.YPDH  and KCLLS.MJBH=YPZL.MJBH ');
    end;
    SQL.Add('LEFT JOIN YPZL_NoNeedPart on YPZL_NoNeedPart.BWBH=YPZL.BWBH'); //過濾包材
    sql.add('WHERE YPZL.CLBH like '''+edit1.Text+'%'' ');
    sql.add('            and CLZL.YWPM like '''+'%'+edit2.Text+'%'' ');
    sql.add('            and CLZL.YWPM like '''+'%'+edit3.Text+'%'' ');
    sql.Add('            and YPZL.BWBH like '''+edit6.Text+'%'' ') ;
    sql.Add('            and YPZL_NoNeedPart.bwbh is null') ;
    if VTCombo.ItemIndex=1 then
      sql.Add('            and YPZL.MJBH<>''ZZZZZZZZZZ'' ');
    if VTCombo.ItemIndex=2 then
      sql.Add('            and YPZL.MJBH=''ZZZZZZZZZZ'' ');
    if MotherEdit.Text<>'' then
      sql.Add('            and YPZL.MJBH like '''+MotherEdit.Text+'%'' ');
     if checkbox2.Checked then
      sql.Add('            and Round(convert(float,YPZLAll.CLSLQty),2)<>Round(convert(float,KCLLS.Qty),2) and  IsNull(KCLLS.Qty,0)>0 ');      
    if checkbox3.Checked then
      sql.Add('          and YPZL.CLBH not like ''W%'' ');
    SQL.Add('order by YPZL.YPDH,YPZL.CLBH asc,YPZL.MJBH,YPZL.BWBH desc,YPZL.CLSL desc');  
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;

  with  KCLLSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select * from (select SCBH,CLBH,MJBH,IsNull(Sum(Qty),0) as Qty from  (');
    if VTCombo.ItemIndex=0 then
    begin
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,''ZZZZZZZZZZ'' as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' ');
       SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH');
       SQL.Add('            Union all');
       SQL.Add('            select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS');
       SQL.Add('            Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
       SQL.Add('            Left Join JGZL  on JGZL.JGNO=JGZLS.JGNO ');
       SQL.Add('            where JGZLSS.ZLBH like '''+edit4.Text+'%'' and JGZLS.ZMLB like '''+edit1.Text+'%'' and JGZLS.CLBH like '''+MotherEdit.Text+'%''  ');
       SQL.Add('                  and JGZL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                  and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''  ');
       SQL.Add('            Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH');
       SQL.Add('            Union all');
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH=''JJJJJJJJJJ'' ');
       SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL');
    end else if VTCombo.ItemIndex=1 then
    begin
       SQL.Add('            select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH ,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty from JGZLS');
       SQL.Add('            Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
       SQL.Add('            Left Join JGZL  on JGZL.JGNO=JGZLS.JGNO ');
       SQL.Add('            where JGZLSS.ZLBH like '''+edit4.Text+'%'' and JGZLS.ZMLB like '''+edit1.Text+'%'' and JGZLS.CLBH like '''+MotherEdit.Text+'%'' ');
       SQL.Add('                  and JGZL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('            and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''  ');
       SQL.Add('            Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH');
       SQL.Add('            Union all ');
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH=''JJJJJJJJJJ'' ');
       SQL.Add('            Group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL');
    end else if VTCombo.ItemIndex=2 then
    begin
       SQL.Add('            select   KCLLS.SCBH, KCLLS.CLBH,''ZZZZZZZZZZ'' as MJBH, sum(KCLLS.Qty) as Qty');
       SQL.Add('            from KCLLS');
       SQL.Add('            Left Join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('            where  KCLLS.SCBH like '''+edit4.Text+'%''  and KCLLS.CLBH like '''+edit1.Text+'%''  ');
       SQL.Add('                   and KCLL.GSBH='''+main.Edit2.Text+''' ');
       SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' ');
       SQL.Add('            group by KCLLS.SCBH, KCLLS.CLBH');
    end;
    SQL.Add(') KCLLS group by SCBH,CLBH,MJBH ) KCLLS  ');
    SQL.Add('where SCBH=:YPDH and CLBH=:CLBH and MJBH=:MJBH ');
  end;
  KCLLSQry.Active:=true;
end;


procedure TYPZLShipReviseUsage.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //有人修改
  if  ((Query1.FieldByName('CLSLQty').AsString<>'') and (Query1.FieldByName('Qty').AsString<>'')) then
  begin
    if (RoundTo(Query1.FieldByName('CLSLQty').Value,-2)<>RoundTo(Query1.FieldByName('Qty').Value,-2)) and (RoundTo(Query1.FieldByName('Qty').Value,-2)>0)  then          //
    begin
      DBGridEh1.canvas.font.Color:=clBlue;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
    end;
  end;
  //
  if Query1.FieldByName('YN').value='0' then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
  if Query1.FieldByName('BWBH').value='ZZZZ' then
  begin
    DBGridEh1.canvas.Brush.Color:=clBtnFace;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end;
end;

procedure TYPZLShipReviseUsage.QtyCLSL1Click(Sender: TObject);
var i:integer;
    flag:boolean;
    MJBH,CLBH,DWBH:string;
    Diff:double;
begin
  if Query1.Active=true then
  begin
    if Query1.RequestLive=true then
    begin
      Diff:=0;
      CLBH:='';
      if messagedlg('ALSO RESET CLSL OF UNIT RPS?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
        flag:=true;
      end else
      begin
        flag:=false;
      end;
      Query1.First;
      while not Query1.Eof do
      begin
        CLBH:=Query1.FieldByName('CLBH').AsString;
        MJBH:=Query1.FieldByName('MJBH').AsString;
        DWBH:=Query1.FieldByName('DWBH').AsString;
        Diff:=RoundTo(Query1.FieldByName('Qty').Value,-2)-RoundTo(Query1.FieldByName('CLSLQty').Value,-2);
        if (Diff<>0) then
        begin
          if (DWBH='PRS') and (flag=false) then
          begin
            Query1.Next;
          end else
          begin
            Query1.Edit;
            //if ( (ceil(Query1.FieldByName('CLSL').Value*100)/100)+Diff)>=0 then
            if RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2)>=0 then
            begin
              //Query1.FieldByName('CLSL').Value:=(ceil(Query1.FieldByName('CLSL').Value*100)/100)+Diff;
              Query1.FieldByName('CLSL').Value:=RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2);
            end else
            begin
              NegativeResult(Diff);
            end;

            Query1.Post;
            Diff:=0;
            while (not Query1.Eof) and (Query1.FieldByName('CLBH').AsString=CLBH) and (Query1.FieldByName('MJBH').AsString=MJBH) do
            begin
              Query1.Next;
            end;
          end;
        end else
        begin
          Query1.Next;
        end;
      end;
    end;
  end;
end;

procedure TYPZLShipReviseUsage.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[1].Color:=clyellow;
  DBGridEh1.columns[3].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[3].Color:=clyellow;
  DBGridEh1.columns[7].Color:=clyellow;
  DBGridEh1.columns[8].Color:=clyellow;
  DBGridEh1.columns[10].Color:=clyellow;   
  KCLLSQry.Active:=false;
end;

procedure TYPZLShipReviseUsage.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    FieldByName('YPDH').Value:=Edit4.Text;
    FieldByName('BWBH').Value:='ZZZZ';
    FieldByName('SIZE').Value:='ZZZZZZ';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[1].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[1].Color:=clyellow;
  DBGridEh1.columns[3].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[3].Color:=clyellow;
  DBGridEh1.columns[7].Color:=clyellow;
  DBGridEh1.columns[8].Color:=clyellow;
  DBGridEh1.columns[10].Color:=clyellow;
  KCLLSQry.Active:=false;
end;

procedure TYPZLShipReviseUsage.BB3Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
    fieldbyname('YN').Value:='0';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;  
end;

procedure TYPZLShipReviseUsage.Query1AfterOpen(DataSet: TDataSet);
begin

  if Query1.RecordCount>0 then
  begin
    BB2.Enabled:=true;
    BB3.Enabled:=true;
    BB4.Enabled:=true;
    bbt6.Enabled:=true;
  end;

  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('Select YN From YPZL Where YPDH='''+Edit4.Text+''' ');
    active:=true;
    if fieldbyname('YN').AsString='5' then
    begin
      BB2.Enabled:=false;
      BB3.Enabled:=false;
      BB4.Enabled:=false;
      bbt7.Enabled:=false;
    end;
  end;
end;

procedure TYPZLShipReviseUsage.BB6Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    cachedupdates:= false;
    requestlive:=false;
    active:=true;
  end;
  BB5.Enabled:=false;
  BB6.Enabled:=false;
  DBGridEh1.columns[1].ButtonStyle:=cbsNone;
  DBGridEh1.columns[3].ButtonStyle:=cbsNone;
  DBGridEh1.columns[1].Color:=clWindow;
  DBGridEh1.columns[3].Color:=clWindow;
  DBGridEh1.columns[7].Color:=clWindow;
  DBGridEh1.columns[8].Color:=clWindow;
  DBGridEh1.columns[10].Color:=clWindow;
  KCLLSQry.Active:=true;
end;
//新增到
procedure TYPZLShipReviseUsage.InsertYPZL_ZLZLS2();
begin
  if IsYPZL_ZLZLS2=false then
  begin
    with UpdateQry do
    begin
      active:=false;
      sql.clear;
      sql.add('Insert into YPZL_ZLZLS2 ');
      sql.add('Select *  from (');
      sql.add('select  ypzls.YPDH,ypzls.XH,ypzls.BWBH,IsNull(ypzls.CSBH,'''') as CSBH,');
      sql.add(' ''ZZZZZZZZZZ'' as MJBH,ypzls.CLBH,CLZL.CLZMLB as ZMLB,');
      sql.add(' ''ZZZZZZ'' as SIZE, CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100 as CLSL,ypzls.CLSL as  USAGE ,');
      sql.add(' '''+main.edit1.text+''''+'  as USERID,');
      sql.add(' GetDate() as USERDATE,');
      sql.add(' ''2'' as YN ');
      sql.add(' from YPZL ');
      sql.add(' left join ypzls on ypzls.YPDH=YPZL.YPDH ');
      sql.add(' left join CLZL on CLZL.CLDH=ypzls.CLBH ');
      sql.add(' where YPZL.YPDH='''+YPDH+''' ');
      //20160310 average usage with extra multi size
      sql.Add('Union all ');
      sql.Add('select YPDH,XH,BWBH,ZSDH,MJBH,CLBH,ZMLB,SIZE,Sum(CLSL)  as CLSL,avg(usage) as Usage,Max(USERID) as USERID,Max(UserDate) as UserDate,Max(YN) as YN');
      sql.Add(' from(');
      sql.add(' select  ypzls.YPDH,ypzls.XH,ypzls.BWBH,');
      sql.add(' case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh ');
      sql.add(' ,ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
      sql.add(' ''ZZZZZZ'+''''+' as SIZE, Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,');
      sql.add(' '''+main.edit1.text+'''  as USERID,');
      sql.add(' GetDate() as USERDATE,');
      sql.add(' ''2'' as YN ');
      sql.add(' from YPZL ');
      sql.add(' INNER join ypzls on ypzls.YPDH=YPZL.YPDH ');
      sql.add(' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh ');
      sql.add(' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CLZHZL_Dev.cldh1 = CLZHZL.cldh1 ');//2015/1/3新增開發子材料廠商對照
      sql.add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      sql.add(' where CLZHZL.SYL>0 and YPZL.YPDH='''+YPDH+''' ) A  ');
      sql.Add(' Group by YPDH,XH,BWBH,CLBH,ZSDH,MJBH,ZMLB,SIZE');
      //二階加工
      sql.Add('Union all ');
      SQL.Add(' select CLZHZL2.YPDH,CLZHZL2.XH,CLZHZL2.BWBH,');
      SQL.Add('        case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh,');
      SQL.Add('        CLZHZL2.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
      SQL.Add('        ''ZZZZZZ'' as SIZE, round(CLZHZL2.CLSL*CLZHZL.SYL,2) as CLSL,CLZHZL2.USAGE* CLZHZL.SYL as  USAGE ,');
      SQL.Add('        '''+main.edit1.text+'''  as USERID,GetDate() as USERDATE,''2'' as YN ');
      SQL.Add('  from (');
      SQL.Add('select  ypzls.YPDH,ypzls.XH,ypzls.BWBH,');
      SQL.Add('case when  ((clzhzl_dev.zsdh is not null) and (clzhzl_dev.zsdh<>'''')) then clzhzl_dev.zsdh else clzhzl.zsdh end as zsdh,');
      SQL.Add('ypzls.CLBH  as MJBH,CLZHZL.CLDH1 AS CLBH,CLZL.CLZMLB as ZMLB,');
      SQL.Add('''ZZZZZZ'' as SIZE,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,ypzls.CLSL* CLZHZL.SYL as  USAGE ,');
      SQL.Add(''''+main.edit1.text+'''  as USERID,GetDate() as USERDATE,''2'' as YN ');
      SQL.Add('  from YPZL ');
      SQL.Add(' INNER join ypzls on ypzls.YPDH=YPZL.YPDH ');
      SQL.Add(' INNER  JOIN CLZHZL   ON ypzls.CLBH = CLZHZL.cldh ');
      SQL.Add(' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CLZHZL_Dev.cldh1 = CLZHZL.cldh1 ');
      SQL.Add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      SQL.Add(' where CLZHZL.SYL>0 and YPZL.YPDH='''+YPDH+'''and CLZL.CLZMLB=''Y'' ');
      SQL.Add(' ) CLZHZL2');
      SQL.Add(' INNER  JOIN CLZHZL   ON CLZHZL2.CLBH = CLZHZL.cldh ');
      SQL.Add(' Left  JOIN CLZHZL_Dev   ON CLZHZL_Dev.cldh = CLZHZL.cldh and CLZHZL_Dev.cldh1 = CLZHZL.cldh1 ');
      SQL.Add(' left join CLZL on CLZL.CLDH=CLZHZL.CLDH1 ');
      SQL.Add(' where CLZHZL.SYL>0 ) YPZL ');
      //funcObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    IsYPZL_ZLZLS2:=true;
  end;
end;

procedure TYPZLShipReviseUsage.UpdatePart();
begin
  With Qtemp do
  begin
    //20241016 update bo vi an thanh bo vi khong an YPZL_ChangePart
    active:=false;
    sql.clear;
    SQL.Add(' Update YPZL_ZLZLS2 ');
    SQL.Add(' Set BWBH=YPZL_ChangePart.BWBH ');
    SQL.Add(' From YPZL_ZLZLS2  ');
    SQL.Add(' Inner join YPZL_ChangePart on YPZL_ZLZLS2.BWBH=YPZL_ChangePart.BWBH_Hide ');
    SQL.Add(' Where YPDH='''+YPDH+''' ');
    ExecSQL();
  end;
end;

procedure TYPZLShipReviseUsage.BB5Click(Sender: TObject);
var i:integer;
begin
  KCLLSQry.Active:=false;
  with Query1 do
  begin
    Query1.first;
    while not Query1.eof do
    begin
      case query1.updatestatus of
        usinserted:
        begin
          InsertYPZL_ZLZLS2();
          Edit;
          FieldByName('YPDH').Value:=Edit4.Text;
          if  FieldByName('BWBH').IsNull then
            FieldByName('BWBH').Value:='ZZZZ';
          if  FieldByName('SIZE').IsNull then
            FieldByName('SIZE').Value:='ZZZZZZ';
          if  FieldByName('MJBH').IsNull then
            FieldByName('MJBH').Value:='ZZZZZZZZZZ';
          if FieldByName('MJBH').Value='ZZZZZZZZZZ' then
          begin
            FieldByName('ZMLB').Value:='N';
          end else
          begin
            FieldByName('ZMLB').Value:='Y';
          end;
          FieldByName('userID').Value:=main.edit1.text;
          FieldByName('userdate').Value:=Date();
          FieldByName('YN').Value:='2';
          UpdateSQL1.Apply(ukinsert);
          UpdatePart();
        end;
        usmodified:
        begin
          if Query1.fieldbyname('YN').Value=0 then
          begin
            InsertYPZL_ZLZLS2();
            with UpdateQry do
            begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values (''YPZL_ZLZLS2'','''+Query1.fieldbyname('YPDH').Value+'''');
                sql.add(','''+Query1.fieldbyname('CLBH').Value+''','''+Query1.fieldbyname('USERID').Value+''',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
            end;
            UpdateSQL1.apply(ukdelete);
            UpdatePart();
          end else
          begin
            InsertYPZL_ZLZLS2();
            Edit;
            FieldByName('CLSL').Value:=Formatfloat('#0.00#',fieldbyname('CLSL').AsFloat);
            FieldByName('userID').Value:=main.edit1.text;
            FieldByName('userdate').Value:=Date();
            UpdateSQL1.apply(ukModify);
            UpdatePart();
          end;
        end;
      end;
      Query1.Next;
    end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
  end;
  BB5.enabled:=false;
  BB6.Enabled:=false;
  Button1.Click;
  KCLLSQry.Active:=true;
  //
  DBGridEh1.columns[1].ButtonStyle:=cbsNone;
  DBGridEh1.columns[3].ButtonStyle:=cbsNone;
  DBGridEh1.columns[1].Color:=clWindow;
  DBGridEh1.columns[3].Color:=clWindow;
  DBGridEh1.columns[7].Color:=clWindow;
  DBGridEh1.columns[8].Color:=clWindow;
  DBGridEh1.columns[10].Color:=clWindow;
  //

end;

procedure TYPZLShipReviseUsage.DBGridEh1EditButtonClick(Sender: TObject);
begin

  if DBGridEh1.selectedfield.fieldname='BWBH' then
  begin
    YPZLShipReviseUsage_BWBH:=TYPZLShipReviseUsage_BWBH.Create(self);
    YPZLShipReviseUsage_BWBH.ShowModal();
  end;
  if DBGridEh1.selectedfield.fieldname='CLBH' then
  begin
    YPZLShipReviseUsage_CLZL:=TYPZLShipReviseUsage_CLZL.create(self);
    YPZLShipReviseUsage_CLZL.ShowModal();
  end;

end;

procedure TYPZLShipReviseUsage.bbt6Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin

  if Query1.Active then
  begin
    if Query1.recordcount=0 then
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
    for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
    KCLLSQry.Active:=false;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        Query1.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
    KCLLSQry.Active:=true;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TYPZLShipReviseUsage.bbt7Click(Sender: TObject);
begin
  if messagedlg('Delete Modify History?',mtCustom,[mbYes,mbNo], 0)=mrYes then
  begin
    with UpdateQry do //先清空存在於BomExport資料
    begin
      Active:=false;
      SQL.Clear;
      sql.Add('Delete YPZL_ZLZLS2');
      sql.add('where YPDH='''+YPDH+'''');
      execsql;
    end;
    Showmessage('Success');
    Button1.Click;
  end;
end;

end.
