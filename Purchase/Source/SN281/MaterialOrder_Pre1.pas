unit MaterialOrder_Pre1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,FunUnit,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DateUtils,
  ComCtrls, Comobj;

type
  TMaterialOrder_Pre = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    edtCGNO: TEdit;
    edtDDBH: TEdit;
    btnQuery: TButton;
    Label6: TLabel;
    edtBUYNO: TEdit;
    btnCopy: TButton;
    DBGridEh2: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    DS2: TDataSource;
    DBGridEh1: TDBGridEh;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1CQDH: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    Query1CGQty: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query2BUYNO: TStringField;
    Query2ZLBH: TStringField;
    Query2DDZT: TStringField;
    Query2KHPO: TStringField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2ZWPM: TStringField;
    Query2DWBH: TStringField;
    Query2CQDH: TStringField;
    Query2Pairs: TIntegerField;
    Query2CLSL: TFloatField;
    Query2CGQty: TCurrencyField;
    Query2CGDate: TDateTimeField;
    Query2YQDate: TDateTimeField;
    Query2CFMDate: TDateTimeField;
    Query2CGNO: TStringField;
    Query2ShipDate: TDateTimeField;
    Query2RKQty: TCurrencyField;
    Query2RKNO: TStringField;
    Query2RKDate: TDateTimeField;
    Query2DelFlag: TStringField;
    DDZTCK: TCheckBox;
    DDZTCombo: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    editCLBH: TEdit;
    Qtemp: TQuery;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Splitter1: TSplitter;
    Chk_Det: TCheckBox;
    BaseDate: TDateTimePicker;
    Query1Remain: TFloatField;
    Button1: TButton;
    CheckBox4: TCheckBox;
    XLSBtn: TButton;
    CheckBox5: TCheckBox;
    Label4: TLabel;
    CGZLSSQry: TQuery;
    Query1ZSBH: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnQueryClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure btnCopyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtDDBHKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtBUYNOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Chk_DetClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure XLSBtnClick(Sender: TObject);
  private
    ayear,amonth:string;
    { Private declarations }
    function GetMutiDDBHSubSQL(Str:String):String;
    function GetMutiBuyNoSubSQL(Str:String):String;
    procedure EditPaste(EditObj:TEdit);
    procedure CalRemAvailQty();
    function GetKCZKMemo():String;
  public
    { Public declarations }
  end;

var
  MaterialOrder_Pre: TMaterialOrder_Pre;

implementation
uses main1,Reality_Remain_Quantity_Pre1, untClipboard;

{$R *.dfm}

procedure TMaterialOrder_Pre.FormDestroy(Sender: TObject);
begin
   MaterialOrder_Pre:=nil;
end;

procedure TMaterialOrder_Pre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

//多筆訂單編號查詢子SQL
function TMaterialOrder_Pre.GetMutiDDBHSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   tmResult,TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   tmResult:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   //BDE TQuery 不能太長所以改用暫存
   if tmpList.Count>=20 then
   begin
     with Qtemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.add('if object_id(''tempdb..#PurDDBHList'') is not null    ');
       SQL.add('begin drop table #PurDDBHList end                 ');
       SQL.Add('select DDBH into #PurDDBHList from DDZLTW');
       SQL.Add('where  DDBH '+tmResult);
       ExecSQL();
       Result:=' in (select DDBH from #PurDDBHList) ';
     end;
   end else
   begin
      Result:=tmResult;
   end;
   tmpList.Free;
 end else
 begin
   Result:=' like '''+Str+'%'' ';
 end;
end;

function TMaterialOrder_Pre.GetMutiBuyNoSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   Result:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   tmpList.Free;
 end else
 begin
   Result:=' like '''+Str+'%'' ';
 end;
end;

procedure TMaterialOrder_Pre.btnQueryClick(Sender: TObject);
var DDBHEditSubSQL,BuyNOEditSubSQL:string;
    DDZL_SubSQL,DDZLTW_SubSQL,CLZL_SQL:String;
begin
  if (edtCGNO.Text = '') and (edtDDBH.text = '') and (edtBuyNo.text = '') then
  begin
    showmessage('Pls add condition CGNO or DDBH or BUYNO.');
    abort;
  end;
  //MultiDDBHSQL
  DDBHEditSubSQL:=GetMutiDDBHSubSQL(edtDDBH.Text);
  //BuyNOEditSubSQL
  BuyNOEditSubSQL:=GetMutiBuyNoSubSQL(edtBUYNO.Text);
  if edtBUYNO.Text<>'' then
  begin
    DDZL_SubSQL:=DDZL_SubSQL+' and DDZL.BUYNO '+BuyNOEditSubSQL;
    DDZLTW_SubSQL:=DDZLTW_SubSQL+' and DDZL.BUYNO '+BuyNOEditSubSQL;
  end;
  if edtDDBH.Text<>'' then
  begin
    DDZL_SubSQL:=DDZL_SubSQL+' and DDZL.DDBH '+DDBHEditSubSQL;
    DDZLTW_SubSQL:=DDZLTW_SubSQL+' and DDZL.DDBH '+DDBHEditSubSQL;
  end;
  if DDZTCombo.ItemIndex>0 then
  begin
    DDZLTW_SubSQL:=DDZLTW_SubSQL+' and DDZL.DDZT='''+DDZTCombo.Text+''' ';
    DDZL_SubSQL:=DDZL_SubSQL+' and DDZL.DDZT='''+DDZTCombo.Text+''' ';
  end;
  if editCLBH.Text<>'' then
    CLZL_SQL:='inner join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH and CLZL.CLDH like '''+editCLBH.Text+'%'' '
  else
    CLZL_SQL:='left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH ';
  //
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select MatList.*,IsNull(KCCLMONTH_Remain.Qty,0) as Remain from (');
    SQL.Add('select CLBH,YWPM,ZWPM,CQDH,DWBH,Sum(CLSL) as CLSL,Sum(CGQty) as CGQty,Sum(RKQty) as RKQty,ZSBH from (');
    SQL.Add('Select * from ( ');
    SQL.Add('select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,DDZL.Pairs,');
    if DDZTCK.Checked=true then
      SQL.Add('        case when DDZLTW.DDZT<>''C'' then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
    else
      SQL.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
    SQL.Add('        isnull(CGZL.CGQty,0) as CGQty,');
    SQL.Add('        CGZl.CGDate,CGZL.YQDate,CGZL.CFMDate,CGZL.CGNO,');
    SQL.Add('        DDZL.ShipDate,Max(ZLZLS2.CSBH) as ZSBH ,RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,''Y'' as DelFlag     ');
    SQL.Add('from ZLZLS2 with (nolock)  ');
    SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH '+DDZL_SubSQL );
    SQL.Add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH');
    SQL.Add(CLZL_SQL);
    SQL.Add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
    SQL.Add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
    SQL.Add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPrice ');
    SQL.Add('           from CGZLSS with (nolock) ');
    SQL.Add('           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH '+DDZL_SubSQL);
    SQL.Add('           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
    SQL.Add('           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CGNO');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    if editCLBH.Text <> '' then
      SQL.add('                 and CGZLSS.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.Text <> '' then
      SQL.add('                 and CGZLSS.ZLBH '+DDBHEditSubSQL);
    SQL.Add('           group by CGZLSS.ZLBH,CGZLSS.CLBH  ) CGZL');
    SQL.Add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
    SQL.Add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    SQL.Add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    SQL.Add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
    SQL.Add('           from  KCRKS with (nolock)  ');
    SQL.Add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZL_SubSQL);
    SQL.Add('           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    if editCLBH.Text <> '' then
      SQL.add('                 and KCRKS.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.text <> '' then
      SQL.add('                 and KCRKS.CGBH '+DDBHEditSubSQL);
    SQL.Add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    SQL.Add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
    SQL.Add('       where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('       and ZLZLS2.CLBH not like ''W%''');
    SQL.Add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
    if editCLBH.Text <> '' then
      SQL.add('     and ZLZLS2.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.text <> '' then
      SQL.add('       and ZLZLS2.ZLBH '+DDBHEditSubSQL);
    if edtBUYNO.Text <> '' then
      SQL.add('       and DDZL.BuyNO '+BuyNOEditSubSQL); //20140102 增加BuyNO 欄位查詢
    if DDZTCombo.ItemIndex>0 then
      SQL.add('       and DDZL.DDZT='''+DDZTCombo.Text+''' ');
    if edtCGNO.Text<>'' then
      SQL.Add('       and CGZL.CGNO like '''+edtCGNO.Text+'%''');
    if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
       SQL.add('       and CLZL.CQDH=''TW''');
    if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
       SQL.add('       and CLZL.CQDH=''VN''');
    if CheckBox3.Checked=true then
       SQL.Add(' and RKZL.RKQty>0 ');
    SQL.Add('       and ZLZLS2.ZMLB=''N''');
    SQL.Add('       and ZLZLS2.CLSL<>0');
    SQL.Add('group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,');
    SQL.Add('         DDZL.Pairs,CGZl.CGQty,CGZL.YQDate,');
    SQL.Add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate, ');
    SQL.Add('         RKZL.USPrice,RKZL.VNPrice,CGZL.USPrice,CGZL.VNPrice');
    SQL.Add(') ZLZLS2 where 1=1  ');
    //訂單已經移除在ERP
    SQL.Add('union all');
    SQL.Add('select CGZLSS.*,RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,''N'' as DelFlag  from (');
    SQL.Add('select DDZLTW.BUYNO,CGZLSS.ZLBH,DDZLTW.DDZT,DDZLTW.KHPO,CGZLS.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,DDZLTW.Pairs,');
    if DDZTCK.Checked=true then
       SQL.Add('       case when DDZLTW.DDZT<>''C'' then isnull(Sum(CGZLSS.CLSL),0) else 0 end as CLSL,')
    else
       SQL.Add('       isnull(Sum(CGZLSS.CLSL),0) as CLSL,');
    SQL.Add('       Sum(CGZLSS.Qty) as CGQty,Max(CGZL.CGDate) as CGDate,Max(CGZLS.YQDate) as YQDate,Max(CGZLSS.CFMDate) as CFMDate,Max(CGZL.CGNO) as CGNO,DDZLTW.ShipDate,Max(CGZL.ZSBH) as ZSBH ');
    SQl.Add('from CGZLSS with (nolock) ');
    SQL.Add('Left join  CGZL with (nolock)  on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('Left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('Left join DDZLTW on DDZLTW.DDBH=CGZLSS.ZLBH');
    SQL.Add('Left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    SQL.Add('where CGZLSS.Qty>0 and CGZL.GSBH ='''+main.Edit2.Text+'''');
    if editCLBH.Text <> '' then
      SQL.Add('      and CGZLSS.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.Text <> '' then
      SQL.add('      and CGZLSS.ZLBH '+DDBHEditSubSQL);
    if edtBUYNO.Text <> '' then
      sql.Add('      and DDZLTW.BUYNO '+BuyNOEditSubSQL);
    if DDZTCombo.ItemIndex>0 then
      SQL.add('       and DDZLTW.DDZT='''+DDZTCombo.Text+''' ');
    if edtCGNO.Text<>'' then
      SQL.Add('      and CGZL.CGNO like '''+edtCGNO.Text+'%''');
    if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
       sql.add('       and CLZL.CQDH=''TW''');
    if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
       sql.add('       and CLZL.CQDH=''VN''');
    SQL.Add('      and ((not exists (select ZLBH from ZLZLS2 where  ZLZLS2.ZMLB=''N'' and ZLZLS2.CLSL<>0 and ZLZLS2.ZLBH=CGZLSS.ZLBH and ZLZLS2.CLBH=CGZLSS.CLBH)) ');
    SQL.Add('      or (not exists (select DDBH from DDZL where DDZL.DDBH=CGZLSS.ZLBH)) )');
    SQL.Add('group by DDZLTW.BUYNO,DDZLTW.KHPO,CGZLSS.ZLBH,DDZLTW.Pairs,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,DDZLTW.ShipDate,DDZLTW.DDZT ');
    SQL.Add(') CGZLSS');
    SQL.Add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    SQL.Add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    SQL.Add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
    SQL.Add('           from  KCRKS with (nolock)  ');
    SQL.Add('           inner join DDZLTW DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZLTW_SubSQL);
    SQL.Add('           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where 1=1 ');
    if editCLBH.Text <> '' then
      SQL.add('                 and KCRKS.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.text <> '' then
      SQL.add('                 and KCRKS.CGBH '+DDBHEditSubSQL);
    SQL.Add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    SQL.Add('                 on RKZL.ZLBH=CGZLSS.ZLBH and RKZL.CLBH=CGZLSS.CLBH ');
    SQL.Add('where 1=1');
    if CheckBox3.Checked=true then
    SQL.Add(' and RKZL.RKQty>0 ');
    SQL.Add(' ) MatList Group by CLBH,YWPM,ZWPM,CQDH,DWBH,ZSBH ) MatList ');
    SQL.Add('Left join KCCLMONTH_Remain on KCCLMONTH_Remain.CLBH=MatList.CLBH and KCCLMONTH_Remain.CKBH='''+main.Edit2.Text+''' ');
    if CheckBox4.Checked=true then
    SQL.Add('where KCCLMONTH_Remain.Qty>0');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //明細
  with Query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from ( ');
    SQL.Add('select  isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,DDZL.Pairs,');
    if DDZTCK.Checked=true then
      SQL.Add('        case when DDZLTW.DDZT<>''C'' then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
    else
      SQL.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
    SQL.Add('        isnull(CGZL.CGQty,0) as CGQty,');
    SQL.Add('        CGZl.CGDate,CGZL.YQDate,CGZL.CFMDate,CGZL.CGNO,');
    SQL.Add('        DDZL.ShipDate,RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,''Y'' as DelFlag     ');
    SQL.Add('from ZLZLS2 with (nolock)  ');
    SQL.Add('inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH '+DDZL_SubSQL );
    SQL.Add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH');
    SQL.Add(CLZL_SQL);
    SQL.Add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
    SQL.Add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
    SQL.Add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.QUSPrice) as USPrice,max(CGZLS.QVNPrice) as VNPrice ');
    SQL.Add('           from CGZLSS with (nolock) ');
    SQL.Add('           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH '+DDZL_SubSQL);
    SQL.Add('           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
    SQL.Add('           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CGNO');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    if editCLBH.Text <> '' then
      SQL.add('                 and CGZLSS.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.Text <> '' then
      SQL.add('                 and CGZLSS.ZLBH '+DDBHEditSubSQL);
    SQL.Add('           group by CGZLSS.ZLBH,CGZLSS.CLBH  ) CGZL');
    SQL.Add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
    SQL.Add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    SQL.Add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    SQL.Add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
    SQL.Add('           from  KCRKS with (nolock)  ');
    SQL.Add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZL_SubSQL);
    SQL.Add('           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    if editCLBH.Text <> '' then
      SQL.add('                 and KCRKS.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.text <> '' then
      SQL.add('                 and KCRKS.CGBH '+DDBHEditSubSQL);
    SQL.Add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    SQL.Add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
    SQL.Add('       where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('       and ZLZLS2.CLBH not like ''W%''');
    SQL.Add('       and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH )');
    if editCLBH.Text <> '' then
      SQL.add('     and ZLZLS2.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.text <> '' then
      SQL.add('       and ZLZLS2.ZLBH '+DDBHEditSubSQL);
    if edtBUYNO.Text <> '' then
      SQL.add('       and DDZL.BuyNO '+BuyNOEditSubSQL); //20140102 增加BuyNO 欄位查詢
    if DDZTCombo.ItemIndex>0 then
      SQL.add('       and DDZL.DDZT='''+DDZTCombo.Text+''' ');
    if edtCGNO.Text<>'' then
      SQL.Add('       and CGZL.CGNO like '''+edtCGNO.Text+'%''');
    if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
       SQL.add('       and CLZL.CQDH=''TW''');
    if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
       SQL.add('       and CLZL.CQDH=''VN''');
    if CheckBox3.Checked=true then
       SQL.Add(' and RKZL.RKQty>0 ');
    SQL.Add('       and ZLZLS2.ZMLB=''N''');
    SQL.Add('       and ZLZLS2.CLSL<>0');
    SQL.Add('       and ZLZLS2.CLBH=:CLBH');
    SQL.Add('group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,DDZL.KHPO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,');
    SQL.Add('         DDZL.Pairs,CGZl.CGQty,CGZL.YQDate,');
    SQL.Add('         CGZL.CFMDate,CGZl.CGDate,CGZL.CGNO,RKZL.RKNO,RKZL.RKDate,RKZL.RKQty,DDZL.ShipDate, ');
    SQL.Add('         RKZL.USPrice,RKZL.VNPrice,CGZL.USPrice,CGZL.VNPrice');
    SQL.Add(') ZLZLS2 where 1=1  ');
    //訂單已經移除在ERP
    SQL.Add('union all');
    SQL.Add('select CGZLSS.*,RKZL.RKQty,RKZL.RKNO,RKZL.RKDate,''N'' as DelFlag  from (');
    SQL.Add('select DDZLTW.BUYNO,CGZLSS.ZLBH,DDZLTW.DDZT,DDZLTW.KHPO,CGZLS.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,CLZL.CQDH,DDZLTW.Pairs,');
    if DDZTCK.Checked=true then
       SQL.Add('       case when DDZLTW.DDZT<>''C'' then isnull(Sum(CGZLSS.CLSL),0) else 0 end as CLSL,')
    else
       SQL.Add('       isnull(Sum(CGZLSS.CLSL),0) as CLSL,');
    SQL.Add('       Sum(CGZLSS.Qty) as CGQty,Max(CGZL.CGDate) as CGDate,Max(CGZLS.YQDate) as YQDate,Max(CGZLSS.CFMDate) as CFMDate,Max(CGZL.CGNO) as CGNO,DDZLTW.ShipDate from CGZLSS with (nolock)');
    SQL.Add('Left join  CGZL with (nolock)  on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('Left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('Left join DDZLTW on DDZLTW.DDBH=CGZLSS.ZLBH');
    SQL.Add('Left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    SQL.Add('where CGZLSS.Qty>0 and CGZL.GSBH ='''+main.Edit2.Text+'''');
    if editCLBH.Text <> '' then
      SQL.Add('      and CGZLSS.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.Text <> '' then
      SQL.add('      and CGZLSS.ZLBH '+DDBHEditSubSQL);
    if edtBUYNO.Text <> '' then
      sql.Add('      and DDZLTW.BUYNO '+BuyNOEditSubSQL);
    if DDZTCombo.ItemIndex>0 then
      SQL.add('       and DDZLTW.DDZT='''+DDZTCombo.Text+''' ');
    if edtCGNO.Text<>'' then
      SQL.Add('      and CGZL.CGNO like '''+edtCGNO.Text+'%''');
    if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
       sql.add('       and CLZL.CQDH=''TW''');
    if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
       sql.add('       and CLZL.CQDH=''VN''');
    SQL.Add('      and ((not exists (select ZLBH from ZLZLS2 where  ZLZLS2.ZMLB=''N'' and ZLZLS2.CLSL<>0 and ZLZLS2.ZLBH=CGZLSS.ZLBH and ZLZLS2.CLBH=CGZLSS.CLBH)) ');
    SQL.Add('      or (not exists (select DDBH from DDZL where DDZL.DDBH=CGZLSS.ZLBH)) )');
    SQL.Add('group by DDZLTW.BUYNO,DDZLTW.KHPO,CGZLSS.ZLBH,DDZLTW.Pairs,CGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,CLZL.ZWPM,DDZLTW.ShipDate,DDZLTW.DDZT ');
    SQL.Add(') CGZLSS');
    SQL.Add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    SQL.Add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    SQL.Add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
    SQL.Add('           from  KCRKS with (nolock)  ');
    SQL.Add('           inner join DDZLTW DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZLTW_SubSQL);
    SQL.Add('           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where 1=1 ');
    if editCLBH.Text <> '' then
      SQL.add('                 and KCRKS.CLBH like '''+editCLBH.Text+'%''');
    if edtDDBH.text <> '' then
      SQL.add('                 and KCRKS.CGBH '+DDBHEditSubSQL);
    SQL.Add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    SQL.Add('                 on RKZL.ZLBH=CGZLSS.ZLBH and RKZL.CLBH=CGZLSS.CLBH ');
    SQL.Add('where CGZLSS.CLBH=:CLBH ');
    if CheckBox3.Checked=true then
    SQL.Add(' and RKZL.RKQty>0 ');
    //funcObj.WriteErrorLog(sql.Text);
    //active:=true;
  end;
  //尺碼SIZE採購數量
  with  CGZLSSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CLBH,XXCC,Sum(CGQty) as CGQty from (');
    SQL.Add('select CGZLSS.CLBH,CGZLSS.XXCC,sum(CGZLSS.Qty) as CGQty             ');
    SQL.Add('           from CGZLSS with (nolock) ');
    SQL.Add('           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH '+DDZL_SubSQL);
    SQL.Add('           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
    SQL.Add('           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CGNO');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and CGZLSS.CLBH=:CLBH');
    if edtDDBH.Text <> '' then
      SQL.add('                 and CGZLSS.ZLBH '+DDBHEditSubSQL);
    SQL.Add('           group by CGZLSS.CLBH,CGZLSS.XXCC');
    SQL.Add('union all');
    SQL.Add('select CGZLSS.CLBH,CGZLSS.XXCC,sum(CGZLSS.Qty) as CGQty    ');
    SQL.Add('from CGZLSS with (nolock)');
    SQL.Add('Left join  CGZL with (nolock)  on CGZL.CGNO=CGZLSS.CGNO');
    SQL.Add('Left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH');
    SQL.Add('Left join DDZLTW on DDZLTW.DDBH=CGZLSS.ZLBH');
    SQL.Add('Left join CLZL on CLZL.CLDH=CGZLS.CLBH');
    SQL.Add('where CGZLSS.Qty>0 and CGZL.GSBH ='''+main.Edit2.Text+'''');
    SQL.Add('      and CGZLSS.CLBH=:CLBH ');
    if edtDDBH.Text <> '' then
      SQL.add('      and CGZLSS.ZLBH '+DDBHEditSubSQL);
    if edtBUYNO.Text <> '' then
      sql.Add('      and DDZLTW.BUYNO '+BuyNOEditSubSQL);
    if DDZTCombo.ItemIndex>0 then
      SQL.add('       and DDZLTW.DDZT='''+DDZTCombo.Text+''' ');
    if edtCGNO.Text<>'' then
      SQL.Add('      and CGZL.CGNO like '''+edtCGNO.Text+'%''');
    if ((checkbox1.Checked=true) and (checkbox2.Checked=false)) then
       sql.add('       and CLZL.CQDH=''TW''');
    if ((checkbox1.Checked=false) and (checkbox2.Checked=true)) then
       sql.add('       and CLZL.CQDH=''VN''');
    SQL.Add('      and ((not exists (select ZLBH from ZLZLS2 where  ZLZLS2.ZMLB=''N'' and ZLZLS2.CLSL<>0 and ZLZLS2.ZLBH=CGZLSS.ZLBH and ZLZLS2.CLBH=CGZLSS.CLBH)) ');
    SQL.Add('      or (not exists (select DDBH from DDZL where DDZL.DDBH=CGZLSS.ZLBH)) )');
    SQL.Add('group by CGZLSS.CLBH,CGZLSS.XXCC ) CGZLSS');
    SQL.Add('Group by CLBH,XXCC ');
    //funcObj.WriteErrorLog(sql.Text);
  end;
  //
  if Chk_Det.Checked=true then Query2.Active:=true;
end;
//
function TMaterialOrder_Pre.GetKCZKMemo():String;
var i:integer;
    Str:string;
begin
   Str:='';
   CGZLSSQry.Active:=true;
   for i:=0 to CGZLSSQry.RecordCount-1 do
   begin
     Str:=Str+CGZLSSQry.FieldByName('XXCC').AsString+':'+CGZLSSQry.FieldByName('CGQty').AsString+',';
     CGZLSSQry.Next;
   end;
   CGZLSSQry.Active:=false;
   Result:='KCZK@'+Copy(Str,1,length(Str)-1);
end;
//
procedure TMaterialOrder_Pre.DBGridEh1DblClick(Sender: TObject);
var Qty:double;
begin
  if query1.recordcount>0 then
  begin
    with Reality_Remain_Quantity_Pre.qryKCZK do
    begin
        edit;
        FieldByName('CLBH').Value:=query1.fieldbyname('CLBH').Value;
        FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
        FieldByName('DWBH').Value:=query1.fieldbyname('DWBH').Value;
        if CheckBox4.Checked=true then
        begin
           if CheckBox5.Checked=false then
           begin
             if query1.fieldbyname('RKQty').Value>query1.fieldbyname('Remain').Value then
               FieldByName('Qty').Value:=query1.fieldbyname('Remain').Value
             else
               FieldByName('Qty').Value:=query1.fieldbyname('RKQty').Value;
           end else
           begin
             if (query1.fieldbyname('RKQty').Value-query1.fieldbyname('CLSL').Value)>query1.fieldbyname('Remain').Value then
               FieldByName('Qty').Value:=query1.fieldbyname('Remain').Value
             else
               FieldByName('Qty').Value:=query1.fieldbyname('RKQty').Value-query1.fieldbyname('CLSL').Value;
           end;
        end else if CheckBox3.Checked=true then
        begin
           if CheckBox5.Checked=false then
              FieldByName('Qty').Value:=query1.fieldbyname('RKQty').Value
           else
              FieldByName('Qty').Value:=query1.fieldbyname('RKQty').Value-query1.fieldbyname('CLSL').Value;
        end else
        begin
           FieldByName('Qty').Value:=query1.fieldbyname('CGQty').Value;
        end;
        //Memo
        FieldByName('Memo').Value:=GetKCZKMemo();
        FieldByName('ZSBH').Value:=query1.fieldbyname('ZSBH').Value;
    end;
  end;
end;


procedure TMaterialOrder_Pre.btnCopyClick(Sender: TObject);
var bm:Tbookmark;
    bookmarklist:tbookmarklistEh;
    i:integer;
begin
  if messagedlg('Do you really want to copy these record?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
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
          with Reality_Remain_Quantity_Pre.qryKCZK do
          begin
            insert;
            FieldByName('CLBH').Value:=query1.fieldbyname('CLBH').Value;
            FieldByName('YWPM').Value:=query1.fieldbyname('YWPM').Value;
            FieldByName('DWBH').Value:=query1.fieldbyname('DWBH').Value;
            if CheckBox4.Checked=true then
            begin
               if CheckBox5.Checked=false then
               begin
                 if query1.fieldbyname('RKQty').Value>query1.fieldbyname('Remain').Value then
                   FieldByName('Qty').Value:=query1.fieldbyname('Remain').Value
                 else
                   FieldByName('Qty').Value:=query1.fieldbyname('RKQty').Value;
               end else
               begin
                 if (query1.fieldbyname('RKQty').Value-query1.fieldbyname('CLSL').Value)>query1.fieldbyname('Remain').Value then
                   FieldByName('Qty').Value:=query1.fieldbyname('Remain').Value
                 else
                   FieldByName('Qty').Value:=query1.fieldbyname('RKQty').Value-query1.fieldbyname('CLSL').Value;
               end;
            end else if CheckBox3.Checked=true then
            begin
               if CheckBox5.Checked=false then
                  FieldByName('Qty').Value:=query1.fieldbyname('RKQty').Value
               else
                  FieldByName('Qty').Value:=query1.fieldbyname('RKQty').Value-query1.fieldbyname('CLSL').Value;
            end else
            begin
               FieldByName('Qty').Value:=query1.fieldbyname('CGQty').Value;
            end;
            //Memo
            FieldByName('Memo').Value:=GetKCZKMemo();
            FieldByName('ZSBH').Value:=query1.fieldbyname('ZSBH').Value;
            Post;
          end;
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

procedure TMaterialOrder_Pre.FormCreate(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
  BaseDate.Date:=Date;
end;

procedure TMaterialOrder_Pre.EditPaste(EditObj:TEdit);
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalDDBH:String;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    TotalDDBH:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalDDBH:=TotalDDBH+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalDDBH)>0 then
    begin
      EditObj.Text:=Copy(TotalDDBH,1,length(TotalDDBH)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;

end;
procedure TMaterialOrder_Pre.edtDDBHKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    EditPaste(edtDDBH);
  end;
end;

procedure TMaterialOrder_Pre.edtBUYNOKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    EditPaste(edtBUYNO);
  end;
end;

procedure TMaterialOrder_Pre.Chk_DetClick(Sender: TObject);
begin
  if Chk_Det.Checked then
  begin
    if Query1.Active=true then Query2.Active:=true;
    DBGridEh2.Visible:=true;
    Splitter1.Align:=alRight;
  end
  else
  begin
    Query2.Active:=false;
    DBGridEh2.Visible:=false;
    Splitter1.Align:=alNone;
  end;
end;

//計算可利庫
procedure TMaterialOrder_Pre.CalRemAvailQty();
var 
   year,month,day:word;
begin
  //找庫存相關的數據
  decodedate(BaseDate.Date,Year,Month,Day);  //今天日期:例2011.10.28
  incAMonth(Year,Month,Day,-1);          //指定日期倒推一個月:2011.9.28
  ayear:=floattostr(year);               //2011年
  amonth:=floattostr(month);             //9月
  if length(amonth)=1 then
    amonth:='0'+amonth;

  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if object_id(''tempdb..#RemainKC_N26'') is not null  ');
    SQL.Add('begin   drop table #RemainKC_N26 end   ');

    SQL.Add('select CLZL.CLDH,');
    SQL.Add('       CLZL.CLLB,');
    SQL.Add('       CLZL.YWPM,');
    SQL.Add('       CLZL.ZWPM,');
    SQL.Add('       CLZL.DWBH,');
    SQL.Add('       CLZL.CQDH,');
    SQL.Add('       LastKC.LastRem,');
    SQL.Add('       RK.RKQty,');
    SQL.Add('       QC.QCQty,');
    SQL.Add('       LL.LLQty,');
    SQL.Add('       JGRK.JGRK,');
    SQL.Add('       JGCK.JGCK,');
    SQL.Add('       JGCKTemp.JGCK as JGCKTemp,');
    SQL.Add('       JGCKTemp1.JGCK as JGCKTempM');
    SQL.Add('into #RemainKC_N26 from CLZL  ');
    SQL.Add('left join (select KCCLMONTH.CLBH,KCCLMONTH.Qty as LastRem ');
    SQL.Add('           from KCCLMONTH  where KCCLMONTH.KCYEAR='''+ayear+'''');
    SQL.Add('           and KCMONTH='''+amonth+'''');
    SQL.Add('           and KCCLMONTH.CLBH like ''%''');
    SQL.Add('           and KCCLMONTH.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('           ) LastKC on LastKC.CLBH=CLZL.CLDH ');
    SQL.Add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as RKQty ');
    SQL.Add('           from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+'''');
    SQL.Add('                 and ');
    SQL.Add('                 convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    SQL.Add('                 and KCRKS.CLBH like ''%''');
    SQL.Add('                 and KCRK.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('           group by KCRKS.CLBH) RK on RK.CLBH=CLZL.CLDH ');
    SQL.Add('left join (select KCRKS.CLBH,sum(KCRKS.Qty) as QCQty ');
    SQL.Add('           from KCRKS');
    SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO and KCRK.QCID=''NO'' ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))>=');
    SQL.Add('                '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+'''');
    SQL.Add('                and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111))<=');
    SQL.Add('                '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    SQL.Add('                and KCRKS.CLBH like ''%''');
    SQL.Add('                and KCRK.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('           group by KCRKS.CLBH) QC on QC.CLBH=CLZL.CLDH ');
    SQL.Add('left join (select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty ');
    SQL.Add('           from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+'''');
    SQL.Add('                 and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    SQL.Add('                 and KCLLS.CLBH like ''%''');
    SQL.Add('                 and KCLL.CFMID<>''NO''');
    SQL.Add('                 and KCLL.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ''');
    SQL.Add('           group by KCLLS.CLBH) LL on LL.CLBH=CLZL.CLDH');
    SQL.Add('left join (select JGZLS.CLBH,sum(JGZLS.Qty) as JGRK ');
    SQL.Add('           from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+'''');
    SQL.Add('                 and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    SQL.Add('                 and JGZLS.CLBH like ''%''');
    SQL.Add('                 and JGZL.CFMID1 <>''NO''');
    SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('                 and JGZL.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('                 group by JGZLS.CLBH ) JGRK on JGRK.CLBH=CLZL.CLDH');
    SQL.Add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK ');
    SQL.Add('           from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    SQL.Add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty ');
    SQL.Add('                      from JGZLS ');
    SQL.Add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('                      where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    SQL.Add('                      '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+'''');
    SQL.Add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    SQL.Add('                      '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    SQL.Add('                      and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    SQL.Add('                      and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('                      and JGZL.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    SQL.Add('           where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))>=');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+'''');
    SQL.Add('                 and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<=');
    SQL.Add('                 ''2020/08/14''');
    SQL.Add('                 and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01''');
    SQL.Add('                 and JGZLS.ZMLB like ''%''');
    SQL.Add('                 and JGZL.CFMID1 <>''NO''');
    SQL.Add('                 and JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('                 and JGZL.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('                 group by JGZLS.ZMLB ');
    SQL.Add('           union all');
    SQL.Add('           select KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
    SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',startofthemonth(BaseDate.date))+'''');
    SQL.Add('                 and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))<=');
    SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    SQL.Add('                 and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('                 and KCLLS.CLBH like ''%''');
    SQL.Add('                 and KCLL.CFMID<>''NO''');
    SQL.Add('                 and KCLL.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and KCLL.SCBH =''JJJJJJJJJJ''');
    SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH');
    SQL.Add('           ) JGCK on JGCK.ZMLB=CLZL.CLDH');
    SQL.Add('left join (select JGZLS.ZMLB,sum(round(JGZLS.Qty*JGZLM.Qty,2)) as JGCK ');
    SQL.Add('           from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    SQL.Add('           left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    SQL.Add('                      left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('                      where  JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('                      and JGZL.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('                      ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    SQL.Add('           where 1=2 and JGZLS.ZMLB like ''%''');
    SQL.Add('           and JGZL.CFMID1 =''NO''');
    SQL.Add('           and convert(smalldatetime,convert(varchar,JGZL.JGDATE,111))<=');
    SQL.Add('           '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    SQL.Add('           and JGZLS.ZMLB<>''ZZZZZZZZZZ''');
    SQL.Add('           and JGZL.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('           group by JGZLS.ZMLB ) JGCKTemp on JGCKTemp.ZMLB=CLZL.CLDH');
    SQL.Add(' left join (select JGZLS.CLBH,sum(round(JGZLS.Qty,2)) as JGCK ');
    SQL.Add('           from JGZLS');
    SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    SQL.Add('           where  JGZLS.CLBH like ''%''');
    SQL.Add('           and JGZL.CFMID1 =''NO''');
    SQL.Add('           and convert(smalldatetime,convert(varchar,JGZL.JGDATE,111))<=');
    SQL.Add('           '''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    SQL.Add('           and JGZLS.ZMLB=''ZZZZZZZZZZ''');
    SQL.Add('           and JGZL.CKBH='''+main.Edit2.Text+'''');
    SQL.Add('           group by JGZLS.CLBH ) JGCKTemp1 on JGCKTemp1.CLBH=CLZL.CLDH');
    SQL.Add('  where not (LastKC.LastRem is null  and RK.RKQty is null and LL.LLQty is null ');
    SQL.Add('               and JGRK.JGRK is null and JGCK.JGCK is null and JGCKTemp.JGCK is null and JGCKTemp1.JGCK is null)');
    SQL.Add('and LEFT(CLZL.CLDH,1)<>''X''  ');
    SQL.Add('and LEFT(CLZL.CLDH,1)<>''Z''   ');
    SQL.Add('and LEFT(CLZL.CLDH,1)<>''V''  ');
    SQL.Add('and LEFT(CLZL.CLDH,1)<>''J''  ');
    //
    SQL.Add('DECLARE @Ldate as datetime');
    SQL.Add('set @Ldate = DATEADD(month, -6, GETDATE())');
    SQL.Add('Delete from KCCLMONTH_Remain where CKBH='''+main.Edit2.Text+''' ');
    SQL.Add('Insert into KCCLMONTH_Remain ');
    SQL.Add('select KCZLS.CKBH,#RemainKC_N26.CLDH,');
    SQL.Add('    case when isnull(zlzls.UnLL,0)>=0 then ');
    SQL.Add('      isnull(#RemainKC_N26.LastRem,0)+isnull(#RemainKC_N26.RKQty,0)-isnull(#RemainKC_N26.LLQty,0)+isnull(#RemainKC_N26.JGRK,0)-isnull(#RemainKC_N26.JGCK,0)');
    SQL.Add('      +isnull(#RemainKC_N26.JGCKTempM,0)+isnull(UnRk.UnRkQty,0) -isnull(ZLZLS.UnLL,0) - isnull(JGZLZLS2.CLSL,0) ');
    SQL.Add('    else ');
    SQL.Add('      isnull(#RemainKC_N26.LastRem,0)+isnull(#RemainKC_N26.RKQty,0)-isnull(#RemainKC_N26.LLQty,0)+isnull(#RemainKC_N26.JGRK,0)-isnull(#RemainKC_N26.JGCK,0)');
    SQL.Add('      +isnull(#RemainKC_N26.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(JGZLZLS2.CLSL,0) end as Remain,');
    SQL.Add('    '''+main.Edit1.Text+''',GetDate(),''1'' ');
    SQL.Add('from #RemainKC_N26 ');
    SQL.Add('left join (select * ');
    SQL.Add('           from KCZLS ');
    SQL.Add('           where CKBH='''+main.Edit2.Text+'''');
    SQL.Add('           ) KCZLS on KCZLS.CLBH=#RemainKC_N26.CLDH');
    SQL.Add('left join     ');
    SQL.Add('  (select ZLZLS2.CLBH, sum(case when isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0)<0 then 0 else isnull(ZLZLS2.CLSL,0)-ISNULL(ZLZLS2LL.QTY,0) end) UnLL ');
    SQL.Add('   from (     ');
    SQL.Add('            (select ZLZLS2.ZLBH,ZLZLS2.CLBH ');
    SQL.Add('                   ,sum(ZLZLS2.CLSL) AS CLSL ');
    SQL.Add('             from  ZLZLS2  ');
    SQL.Add('             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh');
    SQL.Add('             where ZLZLS2.MJBH=''ZZZZZZZZZZ'' and ddzl.GSBH='''+main.Edit2.Text+''' and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
    SQL.Add('                   and ZLZLS2.CLBH like ''%''');
    SQL.Add('                   and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate');
    SQL.Add('             group by ZLZLS2.ZLBH,ZLZLS2.CLBH ) ZLZLS2 ');
    SQL.Add('    left join (select  KCLLS.SCBH,KCLLS.CLBH, sum(CASE  WHEN (KCLLS.CLSL > KCLLS.Qty) THEN KCLLS.Qty ELSE KCLLS.CLSL END) as Qty ');
    SQL.Add('               from  KCLLS,KCLL ');
    SQL.Add('               left join ddzl on ddzl.ddbh=KCLL.SCBH');
    SQL.Add('               where KCLL.CFMID<>''NO'' AND KCLLS.LLNO=KCLL.LLNO AND KCLL.SCBH<>''ZZZZZZZZZZ''  and ddzl.GSBH='''+main.Edit2.Text+'''  and convert(varchar,KCLL.CFMDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''' ');
    SQL.Add('               and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'')  and ddzl.shipdate >@Ldate and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
    SQL.Add('               and KCLLS.CLBH like ''%'' ');
    SQL.Add('               group by KCLLS.SCBH,KCLLS.CLBH ');
    SQL.Add('               ) ZLZLS2LL on ZLZLS2LL.CLBH=ZLZLS2.CLBH and ZLZLS2LL.SCBH=ZLZLS2.ZLBH ');
    SQL.Add('         ) group by ZLZLS2.clbh ');
    SQL.Add('   )ZLZLS on  ZLZLS.clbh=#RemainKC_N26.CLDH ');
    SQL.Add('left join( select za.clbh,sum(CLSLS) as clsl from (select ZLZLS2.ZLBH,ZLZLS2.CLBH ,sum(ZLZLS2.CLSL) - isnull(JGZLBK.okQty,0) AS CLSLS, ZLZLS2.MJBH');
    SQL.Add('             from  ZLZLS2  ');
    SQL.Add('             left join ddzl on ddzl.ddbh=ZLZLS2.zlbh');
    SQL.Add('             left join (select JGZLSS.ZLBH,JGZLS.CLBH as MJBH,JGZLS.ZMLB as CLBH,sum(JGZLSS.Qty*JGZLS.QTY) as okQty from JGZLSS');
    SQL.Add('						   left join JGZL on JGZL.JGNO=JGZLSS.JGNO ');
    SQL.Add('						   left join JGZLS on JGZLS.JGNO=JGZLSS.JGNO AND JGZLS.CLBH=JGZLSS.CLBH');
    SQL.Add('              left join ddzl on ddzl.ddbh=JGZLSS.ZLBH  ');
    SQL.Add('						   where JGZL.CFMID1 <>''NO'' and JGZLS.ZMLB like ''%'' ');
    SQL.Add('								 and JGZLS.ZMLB<>''ZZZZZZZZZZ''  and ddzl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111))< ''2017/09/01''');
    SQL.Add('                and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
    SQL.Add('							group by  JGZLSS.ZLBH,JGZLS.CLBH,JGZLS.ZMLB ');
    SQL.Add('           union all');
    SQL.Add('           select KCLLS.SCBH,KCLLS.DFL as MJBH,KCLLS.CLBH,sum(KCLLS.Qty) as okQty from KCLL ');
    SQL.Add('           left join KCLLS on KCLLS.LLNO=KCLL.LLNO ');
    SQL.Add('           left join ddzl on ddzl.ddbh=KCLLS.SCBH  ');
    SQL.Add('                where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    SQL.Add('                 and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID <>''NO''');
    SQL.Add('                 and KCLLS.CLBH like ''%''');
    SQL.Add('                 and KCLL.GSBH='''+main.Edit2.Text+''' and convert(varchar,KCLL.CFMDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''' ');
    SQL.Add('                 and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate  and DDZL.DDRQ<=Convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
    SQL.Add('           group by KCLLS.SCBH,KCLLS.DFL,KCLLS.CLBH');
    SQL.Add('						  ) JGZLBK on JGZLBK.MJBH=ZLZLS2.MJBH and JGZLBK.CLBH=ZLZLS2.CLBH and JGZLBK.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('             where ZLZLS2.MJBH<>''ZZZZZZZZZZ''  and ddzl.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                   and ZLZLS2.CLBH like ''%'' ');
    SQL.Add('                   and ((ddzl.YN=''1'') or (ddzl.YN<>''1'' and Convert(varchar,ddzl.OKDate,111)>'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''')) and ddzl.DDZT<>''C'' and ddzl.DDLB in (''F'',''N'') and ddzl.shipdate > @Ldate and DDZL.DDRQ<=convert(smalldatetime,'''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''') ');
    SQL.Add('             group by ZLZLS2.ZLBH,ZLZLS2.CLBH,JGZLBK.okQty, ZLZLS2.MJBH');
    SQL.Add('                   having sum(ZLZLS2.CLSL) > isnull(JGZLBK.okQty,0)');
    SQL.Add('            ) za group by za.CLBH) JGZLZLS2 ON JGZLZLS2.CLBH=#RemainKC_N26.CLDH ');
    SQL.Add('left join (select CGZLS.CLBH, sum(isnull(CGZLS.qty,0)-isnull(CGRK.okQty,0)) as UnRkQty  ');
    SQL.Add('           from CGZLS');
    SQL.Add('           left join CGZL on CGZL.CGNO=CGZLS.CGNO');
    SQL.Add('           left join (select KCRK.ZSNO,KCRKS.CLBH,sum(IsNull(KCRKS.Qty,0)) as okQty from KCRKS');
    SQL.Add('                      left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('                      where IsNull(KCRKS.Flag,0)<>1  and ISNULL(KCRKS.RKSB,'''')<>''NG'' and ISNULL(KCRKS.RKSB,'''')<>''DL'' and KCRK.GSBH='''+main.Edit2.Text+''' ');
    SQL.Add('                            and convert(varchar,KCRK.USERDATE,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''');
    SQL.Add('                            and ZSNO in (select CGNO from CGZL where CGZL.GSBH='''+main.Edit2.Text+'''  ');
    SQL.Add('                                                                      and (CGZL.CGLX=''2'' ');
    SQL.Add('                                                                      or CGZL.CGLX=''5'' ');
    SQL.Add('                                                                      or CGZL.CGLX=''3'' ');
    SQL.Add('                                                                      or CGZL.CGLX=''1'')');
    SQL.Add('                                                                    and CGZL.CGDate > @Ldate ) ');
    SQL.Add('                      group by KCRK.ZSNO,KCRKS.CLBH ) CGRK on CGRK.ZSNO=CGZLS.CGNO AND CGRK.CLBH=CGZLS.CLBH ');
    SQL.Add('           where  CGZLS.YN<>''5'' and CGZLS.YN<>''0'' and IsNull(CGZL.DevType,'''')<>''Z07'' ');
    SQL.Add('                  and CGZLS.CLBH like ''%''');
    SQL.Add('                  and CGZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('                  and CGZL.CGDate > @Ldate and convert(varchar,CGZL.CGDate,111)<='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+'''  ');
    SQL.Add('                  and isnull(CGZLS.qty,0)>isnull(CGRK.okQty,0) ');
    SQL.Add('                  and (CGZL.CGLX=''2''');
    SQL.Add('                  or CGZL.CGLX=''5''');
    SQL.Add('                  or CGZL.CGLX=''3''');
    SQL.Add('                  or CGZL.CGLX=''1'')');
    SQL.Add('           group by CGZLS.CLBH ) UnRk on UnRk.CLBH=#RemainKC_N26.CLDH ');
    SQL.Add('where 1=1 ');
    SQL.Add('and  (');
    SQL.Add('     case when isnull(zlzls.UnLL,0)>=0 then ');
    SQL.Add('       (isnull(#RemainKC_N26.LastRem,0)+isnull(#RemainKC_N26.RKQty,0)-isnull(#RemainKC_N26.LLQty,0)+isnull(#RemainKC_N26.JGRK,0)-isnull(#RemainKC_N26.JGCK,0)');
    SQL.Add('        +isnull(#RemainKC_N26.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)- isnull(zlzls.UnLL,0) -isnull(JGZLZLS2.CLSL,0) )');
    SQL.Add('     else ');
    SQL.Add('       (isnull(#RemainKC_N26.LastRem,0)+isnull(#RemainKC_N26.RKQty,0)-isnull(#RemainKC_N26.LLQty,0)+isnull(#RemainKC_N26.JGRK,0)-isnull(#RemainKC_N26.JGCK,0)');
    SQL.Add('        +isnull(#RemainKC_N26.JGCKTempM,0)+isnull(UnRk.UnRkQty,0)-isnull(JGZLZLS2.CLSL,0) )');
    SQL.Add('     end ) >0.05 ');
    SQL.Add('order by #RemainKC_N26.CLDH');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  Showmessage('Success');
end;

procedure TMaterialOrder_Pre.Button1Click(Sender: TObject);
var NoRemainDate:boolean;
begin
  with Qtemp do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select top 1 CLBH from KCCLMONTH_Remain where CKBH='''+main.Edit2.Text+''' and convert(varchar,UserDate,111)>='''+formatdatetime('yyyy/MM/dd',BaseDate.date)+''' ');
    Active:=true;
    if RecordCount>0 then
      NoRemainDate:=true
    else
      NoRemainDate:=false;
  end;
  if NoRemainDate=false then
  begin
    CalRemAvailQty();
  end else
  begin
    if messagedlg('Do you want to calcuate Remain Qty again?',mtCustom, [mbYes,mbCancel], 0)=mrYes then
       CalRemAvailQty();
  end;
end;

procedure TMaterialOrder_Pre.XLSBtnClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
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
          for   i:=0   to   query1.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
            end;

          query1.First;
          j:=2;
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

end.
