unit ExtraMatKT_CL1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, DB, DBTables, StdCtrls, ExtCtrls,math;

type
  TExtraMatKT_CL = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    YWPMEdit: TEdit;
    MatNOEdit: TEdit;
    JiJieEdit: TEdit;
    YPDHEdit: TEdit;
    CB1: TCheckBox;
    DevCodeEdit: TEdit;
    DS1: TDataSource;
    Query1: TQuery;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TCurrencyField;
    DBGrid1: TDBGridEh;
    KFJDEdit: TEdit;
    Label4: TLabel;
    TestNoEdit: TEdit;
    Query1YPDH: TStringField;
    Label8: TLabel;
    SupIDEdit: TEdit;
    Query1CSBH: TStringField;
    Query1BOM_Supplier: TStringField;
    Query1ZSDH_JG: TStringField;
    Query1JG_Supplier: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure JiJieEditKeyPress(Sender: TObject; var Key: Char);
    procedure KFJDEditKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DevCodeEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraMatKT_CL: TExtraMatKT_CL;

implementation
  uses ExtraMaterial1,FunUnit, main1;
{$R *.dfm}

procedure TExtraMatKT_CL.Button1Click(Sender: TObject);
begin
  if ((length(JiJieEdit.text)<3) and (length(KFJDEdit.text)<3) and (TestNoEdit.Text='') and (YPDHEdit.Text='') )  then
  begin
    showmessage('Please input season and stage or TestNo first.');
    abort;
  end;

  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select YPZL.YPDH,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,CQDH,Sum(CLSL) as CLSL,okQty,CSBH');
    SQL.Add(',ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC as JG_Supplier from (');
    SQL.Add('select YPZL.YPDH,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,YPZL.DEVCODE,YPZL.CLSL,isnull(JGZL.okQty,0) as okQty,isnull(JGZL.oldCLSL,0) as oldCLSL,CSBH from (');
    SQL.Add('select YPZLS.YPDH,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH,YPZLS.CLSL , ');
    SQL.Add('CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,KFXXZL.Article,KFXXZL.XieMing,KFXXZL.DEVCODE,YPZL.Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as GSBH,YPZLS.CLZMLB,CSBH  from ( ');
    SQL.Add('Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL,CSBH  from ( ');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.xh,ypzls.CLBH as MJBH,ypzls.CLBH as Parent ,''Assembly'' as DType,ypzls.CLBH,CEILING(ypzls.CLSL*YPZL.Quantity*100)/100 as CLSL,clzl.CLZMLB,YPZLS.CSBH ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
    SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('WHERE YPZL.GSDH='''+main.Edit2.Text+''' and ypzls.YPDH like '''+YPDHEdit.Text+'%''');
    SQL.Add('    and CLZL.CLDH like '''+MatNoEdit.Text+'%'' ');
    if SupIDEdit.Text<>'' then
    SQL.Add('    and YPZLS.CSBH like '''+SupIDEdit.Text+'%'' ');
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.xh  ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZMLB,');
    SQL.Add('YPZLS.CSBH ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('WHERE YPZL.GSDH='''+main.Edit2.Text+''' and  ypzls.YPDH like '''+YPDHEdit.Text+'%''  and CLZHZL.SYL>0  ');
    SQL.Add('    and CLZL.CLDH like '''+MatNoEdit.Text+'%'' ');
    if SupIDEdit.Text<>'' then
    SQL.Add('    and YPZLS.CSBH like '''+SupIDEdit.Text+'%'' ');
    SQL.Add('union all');
    SQL.Add('Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL,clzl.clzmlb,clzhzl2.CSBH ');
    SQL.Add('from (');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*YPZL.Quantity*100)/100)*CLZHZL.SYL,2) as CLSL,YPZLS.CSBH ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('WHERE YPZL.GSDH='''+main.Edit2.Text+''' and   ypzls.YPDH like '''+YPDHEdit.Text+'%''  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
    if SupIDEdit.Text<>'' then
    SQL.Add('    and CLZHZL.ZSDH like '''+SupIDEdit.Text+'%'' ');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('where  CLZL.CLDH like '''+MatNoEdit.Text+'%'' ');
    SQL.Add(')  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,CSBH ) YPZLS');
    SQL.Add('left join YPZL on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
    SQL.Add('Left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
    SQL.Add('where YPZL.GSDH='''+main.Edit2.Text+''' and   YPZL.YPDH like '''+YPDHEdit.Text+'%'' ');
    if JiJieEdit.Text<>'' then
    SQL.Add(' and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
    if KFJDEdit.Text<>'' then
    SQL.Add(' and YPZL.KFJD='''+KFJDEdit.Text+''' ');
    if DevCodeEdit.Text<>'' then
    SQL.Add(' and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
    if not CB1.Checked then
      sql.add(' and YPZLS.CLZMLB=''Y'' ');
    if TestNoEdit.Text<>'' then
      sql.add(' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
    SQL.Add(') YPZL  ');
    SQL.Add('left join (');
    SQL.Add('  select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty,sum(JGZLSS.CLSL) as oldCLSL from JGZLSS');
    SQL.Add('  left join CLZL on CLZL.CLDH=JGZLSS.CLBH');
    SQL.Add('  left join YPZL on YPZL.YPDH=JGZLSS.ZLBH');
    SQL.Add('  left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.Shehao');
    SQL.Add('  where YPZL.GSDH='''+main.Edit2.Text+''' and   JGZLSS.CLBH like '''+MatNoEdit.Text+'%'' ');
    SQL.Add('  and JGZLSS.ZLBH like '''+YPDHEdit.Text+'%'' ');
    SQL.Add('  and CLZL.YWPM like ''%'+YWPMEdit.Text+'%''');
    if JiJieEdit.Text<>'' then
      SQL.Add(' and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
    if KFJDEdit.Text<>'' then
      SQL.Add(' and YPZL.KFJD='''+KFJDEdit.Text+''' ');
    if DevCodeEdit.Text<>'' then
      SQL.Add(' and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
    if TestNoEdit.Text<>'' then
      SQL.add(' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
    SQL.Add('group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=YPZL.CLBH and JGZL.ZLBH=YPZL.YPDH ) YPZL');
    SQL.Add('LEFT JOIN zszl ON zszl.zsdh = YPZL.CSBH');
    SQL.Add('Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_JG,ZSZL.ZSYWJC as ZSYWJC');
    SQL.Add('FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_JG and ZSZL_DEV.GSBH='''+main.Edit2.Text+''') ZSZL_DEV');
    SQL.Add('on ZSZL.ZSDH=ZSZL_DEV.ZSDH');
    SQL.Add('group by  YPZL.YPDH,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,okqty,CSBH,ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_JG,ZSZL_DEV.ZSYWJC');
    //funcObj.WriteErrorLog(sql.Text);
    //showmessage(SQL.Text);
    Active:=true;
  end;
end;

procedure TExtraMatKT_CL.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TExtraMatKT_CL.FormDestroy(Sender: TObject);
begin
  ExtraMatKT_CL:=nil;
end;

procedure TExtraMatKT_CL.DBGrid1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;
  with ExtraMaterial.JGDet do
  begin
    insert;
    fieldbyname('CLBH').value:=query1.fieldbyname('CLBH').value;
    fieldbyname('YWPM').value:=query1.fieldbyname('YWPM').value;
    fieldbyname('DWBH').value:=query1.fieldbyname('DWBH').value;
    post;
  end;
  showmessage('Succeed.');
end;

procedure TExtraMatKT_CL.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if Query1.FieldByName('CLSL').value=Query1.FieldByName('okQty').value then
  begin
    dbgrid1.canvas.font.color:=clBlue;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if Query1.FieldByName('CLSL').value<Query1.FieldByName('okQty').value then
  begin
    dbgrid1.canvas.font.color:=clRed;
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMatKT_CL.JiJieEditKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   Button1.Click
end;

procedure TExtraMatKT_CL.KFJDEditKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   Button1.Click
end;

procedure TExtraMatKT_CL.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    DBGrid1dblclick(nil);
end;

procedure TExtraMatKT_CL.DevCodeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
   Button1.Click
end;

procedure TExtraMatKT_CL.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

end.
