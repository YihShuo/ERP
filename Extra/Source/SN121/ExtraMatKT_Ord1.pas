unit ExtraMatKT_Ord1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, Grids, DBGrids, StdCtrls, DBCtrls, Mask, ExtCtrls,
  GridsEh, DBGridEh, Menus;

type
  TExtraMatKT_Ord = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    YPDHEdit: TEdit;
    DevCodeEdit: TEdit;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    CB1: TCheckBox;
    Button2: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    Label3: TLabel;
    JiJieEdit: TEdit;
    KFJDEdit: TEdit;
    Label4: TLabel;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1DEVCODE: TStringField;
    Query1CLSL: TFloatField;
    Query1okQty: TCurrencyField;
    Query1oldCLSL: TCurrencyField;
    Query1XieXing: TStringField;
    Query1Shehao: TStringField;
    Query1XieMing: TStringField;
    Label2: TLabel;
    TestNoEdit: TEdit;
    PairsEdit: TEdit;
    Label8: TLabel;
    Query1Quantity: TFloatField;
    Query1JiJie: TStringField;
    Query1KFJD: TStringField;
    DBGridEh1: TDBGridEh;
    PopupMenu1: TPopupMenu;
    BOMDetail1: TMenuItem;
    Query2: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure YPDHEditKeyPress(Sender: TObject; var Key: Char);
    procedure DevCodeEditKeyPress(Sender: TObject; var Key: Char);
    procedure JiJieEditKeyPress(Sender: TObject; var Key: Char);
    procedure KFJDEditKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1KeyPress(Sender: TObject; var Key: Char);
    procedure BOMDetail1Click(Sender: TObject);
  private
    { Private declarations }
  public
    PairsSQL:String;
    { Public declarations }
  end;

var
  ExtraMatKT_Ord: TExtraMatKT_Ord;

implementation
  uses FunUnit, ExtraMaterial1, ExtraMatKT_Ord_Detail1, main1;
{$R *.dfm}

procedure TExtraMatKT_Ord.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TExtraMatKT_Ord.FormDestroy(Sender: TObject);
begin
  ExtraMatKT_Ord:=nil;
end;

procedure TExtraMatKT_Ord.Button1Click(Sender: TObject);
  function checkNumber(checkStr:String):Boolean;
  var IsNumeric:boolean;
      Num:Double;
  begin
    try
      Num:=strtofloat(checkStr);
      IsNumeric:=true;
    except
      IsNumeric:=false;
    end;
    result:=IsNumeric;
  end;
begin
  if ((length(JiJieEdit.text)<3) and (length(KFJDEdit.text)<3) and (TestNoEdit.Text='')  and (YPDHEdit.Text='') )  then
  begin
    showmessage('Please input season and stage first.');
    abort;
  end;
  if PairsEdit.Text<>'' then
  begin
    If checkNumber(PairsEdit.Text)=false then
    begin
      showmessage('Please input number of Pairs');
      abort;
    end;
  end;
  if PairsEdit.Text<>'' then
  begin
    PairsSQL:='Convert(float,'+PairsEdit.Text+')';
  end else
  begin
    PairsSQL:='YPZL.Quantity';
  end;
  with Query1 do
  begin
    Active:=false;
    SQl.Clear;
    SQL.Add('Select YPZL.ZLBH,YPZL.Quantity,YPZL.XieXing,YPZL.Shehao,YPZL.XieMing,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,YPZL.DEVCODE,sum(YPZL.CLSL) as CLSL,isnull(JGZL.okQty,0) as okQty,isnull(JGZL.oldCLSL,0) as oldCLSL,YPZL.JiJie,YPZL.KFJD from (');                                                                                                                        //因開發的不確定性，改為自行決定製作雙數 不在鎖死
    SQL.Add('select YPZLS.YPDH as ZLBH,YPZL.XieXing,YPZL.Shehao,YPZLS.MJBH,YPZLS.Parent,YPZLS.DType,YPZLS.CLBH,YPZLS.CLSL, ');
    SQL.Add('       CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,KFXXZL.Article,KFXXZL.XieMing,KFXXZL.DEVCODE,'+PairsSQL+' as Quantity ,YPZL.USERDATE as CalDate,YPZL.GSDH as GSBH,YPZLS.CLZMLB,KFXXZL.JiJie,YPZL.KFJD  from ( ');
    SQL.Add('Select YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB,Sum(YPZLS.CLSL) as CLSL from ( ');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.xh,ypzls.CLBH as MJBH,ypzls.CLBH as Parent ,''Assembly'' as DType,ypzls.CLBH,CEILING(ypzls.CLSL*'+PairsSQL+'*100)/100 as CLSL,clzl.CLZMLB ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
    SQL.Add('LEFT JOIN clzl clzl ON ypzls.CLBH = clzl.cldh ');
    SQL.Add('WHERE  YPZL.GSDH='''+main.Edit2.Text+''' and    ypzls.YPDH like '''+YPDHEdit.Text+'%''');
    SQL.Add('    and CLZL.CLDH=:CLBH ');
    SQL.Add('union all ');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.xh ,clzhzl.cldh as MJBH,ypzls.clbh as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH ,Round((CEILING(YPZLS.CLSL*'+PairsSQL+'*100)/100)*CLZHZL.SYL,2) as CLSL,clzl.CLZMLB ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
    SQL.Add('Left join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('LEFT JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('WHERE  YPZL.GSDH='''+main.Edit2.Text+''' and    ypzls.YPDH like '''+YPDHEdit.Text+'%''  and CLZHZL.SYL>0  ');
    SQL.Add('    and CLZL.CLDH=:CLBH ');
    SQL.Add('union all');
    SQL.Add('Select clzhzl2.YPDH,clzhzl2.XH,clzhzl.CLDH as MJBH,clzhzl2.Parent,clzhzl2.DType ,clzhzl.CLDH1 as CLBH,Round(clzhzl2.CLSL*clzhzl.syl,2) as CLSL,clzl.clzmlb ');
    SQL.Add('from (');
    SQL.Add('SELECT ypzls.YPDH ,ypzls.xh  ,YPZLS.CLBH as Parent,''Gia cong'' as DType,clzhzl.CLDH1 as CLBH,Round((CEILING(YPZLS.CLSL*'+PairsSQL+'*100)/100)*CLZHZL.SYL,2) as CLSL ');
    SQL.Add('FROM ypzls ypzls ');
    SQL.Add('LEFT JOIN YPZL on YPZL.YPDH=YPZLS.YPDH  ');
    SQL.Add('inner join clzhzl ON  ypzls.CLBH = CLZHZL.cldh ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('WHERE  YPZL.GSDH='''+main.Edit2.Text+''' and    ypzls.YPDH like '''+YPDHEdit.Text+'%''  and CLZHZL.SYL>0   and clzl.clzmlb=''Y''  ');
    SQL.Add(') clzhzl2');
    SQL.Add('inner join clzhzl ON  clzhzl2.CLBH = CLZHZL.cldh ');
    SQL.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh ');
    SQL.Add('where  CLZL.CLDH=:CLBH ');
    SQL.Add(')  YPZLS Group by YPZLS.YPDH, YPZLS.MJBH, YPZLS.Parent, YPZLS.DType, YPZLS.CLBH,YPZLS.CLZMLB   ) YPZLS');
    SQL.Add('left join YPZL on YPZL.YPDH=YPZLS.YPDH');
    SQL.Add('Left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.SheHao ');
    SQL.Add('Left join CLZL on CLZL.CLDH=YPZLS.CLBH ');
    SQL.Add('where  YPZL.GSDH='''+main.Edit2.Text+''' and     YPZL.YPDH like '''+YPDHEdit.Text+'%'' ');
    if JiJieEdit.Text<>'' then
    SQL.Add(' and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
    if KFJDEdit.Text<>'' then
    SQL.Add(' and YPZL.KFJD='''+KFJDEdit.Text+''' ');
    if DevCodeEdit.Text<>'' then
    SQL.Add(' and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
    if TestNoEdit.Text<>'' then
    SQL.add(' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
    SQL.Add(') YPZL  ');
    SQL.Add('left join (');
    SQL.Add('  select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty,sum(JGZLSS.CLSL) as oldCLSL from JGZLSS');
    SQL.Add('  left join CLZL on CLZL.CLDH=JGZLSS.CLBH');
    SQL.Add('  left join YPZL on YPZL.YPDH=JGZLSS.ZLBH');
    SQL.Add('  left join KFXXZL on YPZL.XieXing=KFXXZL.XieXing and YPZL.SheHao=KFXXZL.Shehao');
    SQL.Add('  where  YPZL.GSDH='''+main.Edit2.Text+''' and    JGZLSS.CLBH=:CLBH ');
    SQL.Add('  and YPZL.YN=''1'' ');   //20250228
    SQL.Add('  and JGZLSS.ZLBH like '''+YPDHEdit.Text+'%''');
    SQL.Add('  and CLZL.YWPM like ''%%''');
    if JiJieEdit.Text<>'' then
      SQL.Add(' and KFXXZL.JiJie like '''+JiJieEdit.Text+'%'' ');
    if KFJDEdit.Text<>'' then
      SQL.Add(' and YPZL.KFJD='''+KFJDEdit.Text+''' ');
    if DevCodeEdit.Text<>'' then
      SQL.Add(' and KFXXZL.DEVCODE like '''+DevCodeEdit.Text+'%'' ');
    if TestNoEdit.Text<>'' then
      SQL.add(' and YPZL.YPDH in (select YPDH from ShoeTest where TestNO='''+TestNoEdit.Text+''') ');
    SQL.Add('  group by  JGZLSS.ZLBH,JGZLSS.CLBH ) JGZL on JGZL.CLBH=YPZL.CLBH and JGZL.ZLBH=YPZL.ZLBH');
    if CB1.Checked then
    begin
      SQL.add('where IsNull(YPZL.CLSL,0)>IsNull(JGZL.okQty,0) ');
    end;
    SQL.Add('group by YPZL.ZLBH,YPZL.Quantity,YPZL.XieXing,YPZL.Shehao,YPZL.XieMing,YPZL.CLBH,YPZL.YWPM,YPZL.DWBH,YPZL.CQDH,YPZL.DEVCODE,JGZL.okQty,JGZL.oldCLSL,YPZL.JiJie,YPZL.KFJD ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TExtraMatKT_Ord.Button2Click(Sender: TObject);
var bm:Tbookmark;
    i:integer;
    Qty:real;
    bookmarklist:tbookmarklistEh;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
    Qty:=0;
    if (not query1.Active) then
    begin
      abort;
    end;
    if (Query1.recordcount<1) then
    begin
      abort;
    end;
    query1.disablecontrols;
    bm:=query1.getbookmark;
    bookmarklist:=DBGridEh1.selectedrows;
    if bookmarklist.count>0 then
    begin
      try
        for i:=0 to bookmarklist.count-1 do
        begin
          query1.gotobookmark(pointer(bookmarklist[i]));
          with ExtraMaterial.JGS do
          begin
              edit;
              fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
              if  query1.fieldbyname('CLSL').value>=query1.fieldbyname('okQty').value then
              begin
                fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value;
              end else
              begin
                fieldbyname('Qty').value:=0;
              end;
              fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
              insert;
          end;
          query1.edit;
          Query1.FieldByName('okQty').Value:=query1.fieldbyname('CLSL').value;
        end;
      finally
        begin
          query1.gotobookmark(bm);
          query1.freebookmark(bm);
          query1.enablecontrols;
          showmessage('You have finish copy!');
        end;
      end;
    end;
  end;

end;

procedure TExtraMatKT_Ord.YPDHEditKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   Button1.Click;
end;

procedure TExtraMatKT_Ord.DevCodeEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
   Button1.Click
end;

procedure TExtraMatKT_Ord.JiJieEditKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
   Button1.Click
end;

procedure TExtraMatKT_Ord.KFJDEditKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
   Button1.Click
end;

procedure TExtraMatKT_Ord.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TExtraMatKT_Ord.DBGridEh1DblClick(Sender: TObject);
begin
  if (not query1.Active) then
  begin
    abort;
  end;
  if (Query1.recordcount<1) then
  begin
    abort;
  end;

  with query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select YPDH,TestNO from ShoeTest where YPDH='''+query1.fieldbyname('ZLBH').value+''' and TestNO ='''+TestNoEdit.Text+'''    ');
    active:=true;
  end;

  with ExtraMaterial.JGS do
  begin
    edit;
    fieldbyname('ZLBH').value:=query1.fieldbyname('ZLBH').value;
    if (query2.RecordCount> 0) and (TestNoEdit.Text<>'') then
      fieldbyname('Memo').value:=query2.fieldbyname('TestNO').value;
    if  query1.fieldbyname('CLSL').value>=query1.fieldbyname('okQty').value then
    begin
      fieldbyname('Qty').value:=query1.fieldbyname('CLSL').value-query1.fieldbyname('okQty').value;
    end else
    begin
      fieldbyname('Qty').value:=0;
    end;
    fieldbyname('CLSL').value:=query1.fieldbyname('CLSL').value;
    insert;
  end;
  query1.edit;
  Query1.FieldByName('okQty').Value:=query1.fieldbyname('CLSL').value;
  showmessage('Succeed.');
end;

procedure TExtraMatKT_Ord.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if query1.FieldByName('CLSL').value<=query1.FieldByName('okQty').value then
  begin
    DBGridEh1.canvas.font.color:=clred;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
  if Query1.FieldByName('CLSL').value=Query1.FieldByName('okQty').value then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
    DBGridEh1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TExtraMatKT_Ord.DBGridEh1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13 then
    DBGridEh1DblClick(nil);
end;

procedure TExtraMatKT_Ord.BOMDetail1Click(Sender: TObject);
begin
  ExtraMatKT_Ord_Detail:=TExtraMatKT_Ord_Detail.Create(self);
  ExtraMatKT_Ord_Detail.Show();
end;

end.
