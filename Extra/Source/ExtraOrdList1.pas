unit ExtraOrdList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,dateutils,comobj,
  ComCtrls, GridsEh, DBGridEh;

type
  TExtraOrdList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    CB1: TCheckBox;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1okQty: TCurrencyField;
    Query1CLSL: TFloatField;
    Button2: TButton;
    Query1article: TStringField;
    Query1CSBH: TStringField;
    Query1BOM_Supplier: TStringField;
    Query1ZSDH_TW: TStringField;
    Query1VN_Supplier: TStringField;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    Label6: TLabel;
    Edit6: TEdit;
    tmpQ: TQuery;
    ExtraCK: TCheckBox;
    Query1DType: TStringField;
    Query1BUYNO: TStringField;
    RadioButton1: TRadioButton;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    Query1XieMing: TStringField;
    Query1Pairs: TIntegerField;
    DBGridEh1: TDBGridEh;
    ChildMatEdit: TEdit;
    Label3: TLabel;
    CB2: TCheckBox;
    DDZTCK: TCheckBox;
    Query1DDZT: TStringField;
    Query1JGdate: TDateTimeField;
    Query1CFMdate1: TDateTimeField;
    Query1APlanDate: TDateTimeField;
    Query1Shipdate: TDateTimeField;
    Query1depname: TStringField;
    Query1bz: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExtraOrdList: TExtraOrdList;
  sdate,edate,NDate:TDate;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TExtraOrdList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExtraOrdList.Button1Click(Sender: TObject);
var y,m:word;
    ff:textfile;
begin
  sdate:=DTP1.Date;
  edate:=DTP2.Date;
  with query1 do
  begin
    active:=false;
    sql.Clear;
    if ExtraCK.Checked = false then
    begin
      sql.add('select ZLZLS2.ZLBH,ddzl.article,xxzl.xieming,''Assembly'' as DType,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,isnull(JGZL.okQty,0) as okQty,');
      if DDZTCK.Checked=true then
        sql.add('case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsKCLLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
      else
        sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');

      sql.add('DDZL.Pairs,DDZLTW.DDZT,ZLZLS2.CSBH,ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_TW,ZSZL_DEV.ZSYWJC as VN_Supplier,DDZL.BUYNO,JGZL.JGdate,JGZL.CFMdate1,min(SCZLDate.ADate) as APlanDate,DDZL.Shipdate,bdepartment.depname,clbzzl.bz'); // 20171026 add BUYNO
      sql.add('from ZLZLS2');
      sql.add('left join (select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty,JGZL.JGdate,JGZL.CFMdate1 from JGZLSS');
      sql.add('left join JGZL on JGZL.JGNO = JGZLSS.JGNO');
      sql.add('left join CLZL on CLZL.CLDH=JGZLSS.CLBH');
      sql.add('left join DDZl on DDZl.DDBH=JGZLSS.ZLBH');
      sql.add('left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH');
      sql.add('where JGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('and JGZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
      sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
      if RB1.Checked=true then
        sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else
        SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
      sql.add('group by  JGZLSS.ZLBH,JGZLSS.CLBH,JGZL.JGdate,JGZL.CFMdate1 ) JGZL on JGZL.CLBH=ZLZLS2.CLBH and JGZL.ZLBH=ZLZLS2.ZLBH');

      sql.add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
      sql.add('left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH');
      sql.add('left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH');
      sql.add('left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH');
      sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH');
      sql.Add('left join bdepartment on bdepartment.id=SCZLDate.Assemble');
      sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
      sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
      sql.Add('LEFT JOIN ZSZL ON ZLZLS2.CSBH=ZSZL.ZSDH');
      sql.Add('Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_TW,ZSZL.ZSYWJC as ZSYWJC');
      sql.Add('		        FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_TW and ZSZL_DEV.GSBH='''+main.Edit2.Text+''') ZSZL_DEV');
      sql.Add('on ZLZLS2.CSBH=ZSZL_DEV.ZSDH');
      sql.Add('left join clbzzl on clbzzl.CLDH = CLZL.CLDH and clbzzl.zybb =''E'' and clbzzl.xh=''001'' ');
      sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
      sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
      if RB1.Checked=true then
        sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else
        SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
      if not CB1.Checked then
      begin
        sql.add('and ZLZLS2.ZMLB='+''''+'Y'+'''');
      end;
      //20161206 add filter BOM supplier
      if  edit6.Text<>'' then
      begin
        sql.Add('and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
      end;
      if ChildMatEdit.Text<>'' then
        sql.add('and ZLZLS2.CLBH in (select CLDH from clzhzl where CLDH1 like '''+ChildMatEdit.Text+'%'' Group by CLDH ) ');
      sql.add('group by ZLZLS2.ZLBH,ddzl.article,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,JGZL.okQty,ZLZLS2.CSBH,ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_TW');
      sql.add(',ZSZL_DEV.ZSYWJC,DDZL.BUYNO,xxzl.xieming,DDZL.Pairs,DDZLTW.DDZT,SCZL.IsKCLLS,DDZLTW.DDZT,JGZL.JGdate,JGZL.CFMdate1,DDZL.Shipdate,bdepartment.depname,clbzzl.bz');
      sql.add('order by ZLZLS2.CLBH,ZLZLS2.ZLBH');
      //memo1.Text:=sql.Text;
    end else
    // show giacong
    begin
      sql.add('select EXTRA.*,clbzzl.bz ');
      sql.add('from (');
      if CB2.Checked=false then
      begin
        sql.add('select ZLZLS2.ZLBH,ddzl.article,xxzl.xieming,ZLZLS2.CLBH as Parent,''Assembly'' as DType,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,isnull(JGZL.okQty,0) as okQty,');
        if DDZTCK.Checked=true then
          sql.add('case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsKCLLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
        else
          sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');

        sql.add('DDZL.Pairs,DDZLTW.DDZT,ZLZLS2.CSBH,ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_TW,ZSZL_DEV.ZSYWJC as VN_Supplier,DDZL.BUYNO,JGZL.JGdate,JGZL.CFMdate1,min(SCZLDate.ADate) as APlanDate,DDZL.Shipdate,bdepartment.depname');
        sql.add('from ZLZLS2');
        sql.add('left join (select JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty,JGZL.JGdate,JGZL.CFMdate1 from JGZLSS');
        sql.add('left join JGZL on JGZL.JGNO = JGZLSS.JGNO');
        sql.add('left join CLZL on CLZL.CLDH=JGZLSS.CLBH');
        sql.add('left join DDZl on DDZl.DDBH=JGZLSS.ZLBH');
        sql.add('left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH');
        sql.add('where JGZLSS.CLBH like '+''''+edit1.Text+'%'+'''');
        sql.add('and JGZLSS.ZLBH like '+''''+edit5.Text+'%'+'''');
        sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
        sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
        sql.add('and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
        if RB1.Checked=true then
          sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
        else
          SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
        sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
        sql.add('group by  JGZLSS.ZLBH,JGZLSS.CLBH,JGZL.JGdate,JGZL.CFMdate1 ) JGZL on JGZL.CLBH=ZLZLS2.CLBH and JGZL.ZLBH=ZLZLS2.ZLBH');
        sql.add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
        sql.add('left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH');
        sql.add('left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH');
        sql.add('left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH');
        sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH');
        sql.Add('left join bdepartment on bdepartment.id=SCZLDate.Assemble');
        sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
        sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
        sql.Add('LEFT JOIN ZSZL ON ZLZLS2.CSBH=ZSZL.ZSDH');
        sql.Add('Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_TW,ZSZL.ZSYWJC as ZSYWJC');
        sql.Add('		        FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_TW and ZSZL_DEV.GSBH='''+main.Edit2.Text+''') ZSZL_DEV');
        sql.Add('on ZLZLS2.CSBH=ZSZL_DEV.ZSDH');
        sql.add('where ZLZLS2.CLBH like '+''''+edit1.Text+'%'+'''');
        sql.add('and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
        sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
        sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
        sql.add('and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
        sql.add('and MJBH='+''''+'ZZZZZZZZZZ'+'''');
        if RB1.Checked=true then
          sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
        else
          SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
        sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
        if not CB1.Checked then
        begin
          sql.add('and ZLZLS2.ZMLB='+''''+'Y'+'''');
        end;
        if  edit6.Text<>'' then
        begin
          sql.Add('and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
        end;
        if ChildMatEdit.Text<>'' then
          sql.add('and ZLZLS2.CLBH in (select CLDH from clzhzl where CLDH1 like '''+ChildMatEdit.Text+'%'' Group by CLDH ) ');
        sql.add('group by ZLZLS2.ZLBH,ddzl.article,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,JGZL.okQty,ZLZLS2.CSBH,ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_TW,ZSZL_DEV.ZSYWJC,DDZL.BUYNO,xxzl.xieming,DDZL.Pairs');
        sql.Add(',DDZLTW.DDZT,SCZL.IsKCLLS,DDZLTW.DDZT,JGZL.JGdate,JGZL.CFMdate1,DDZL.Shipdate,bdepartment.depname');
        sql.add('union all');
      end;
      sql.add('select ZLZLS2.ZLBH,ddzl.article,xxzl.xieming,(select top 1 Case when  A.MJBH<>''ZZZZZZZZZZ'' then A.MJBH else ZLZLS2.MJBH end as MJBH from ZLZLS2 A where A.CLBH=ZLZLS2.MJBH and A.ZLBH=ZLZLS2.ZLBH  ) as Parent,''GiaCong'' as DType,');
      sql.add('ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,isnull(JGZL.okQty,0) as okQty,');
      if DDZTCK.Checked=true then
        sql.add('case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsKCLLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL,')
      else
        sql.add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,');
      sql.add('DDZL.Pairs,DDZLTW.DDZT,ZLZLS2.CSBH,ZSZL.ZSYWJC as BOM_Supplier,ZSZL_DEV.ZSDH_TW,ZSZL_DEV.ZSYWJC as VN_Supplier,DDZL.BUYNO');
      sql.add(',case when DType=''Gia cong'' then null else JGdate end as JGdate,case when DType=''Gia cong'' then null else CFMdate1 end as CFMdate1,min(SCZLDate.ADate) as APlanDate,DDZL.Shipdate,bdepartment.depname');
      sql.add('from ZLZLS2');
      //20210205
      sql.Add('left join (select JGCK.SCBH,JGCK.CLBH,JGCK.MJBH,JGCK.DType,sum(JGCK.Qty) as okQty,JGCK.JGdate,JGCK.CFMdate1 from( ');
      sql.Add('           select JGZLSS.ZLBH as SCBH,JGZLS.ZMLB as CLBH,JGZLS.CLBH as MJBH,''Gia cong'' as DType,Sum(JGZLS.Qty*JGZLSS.Qty) as Qty,JGZL.JGdate,JGZL.CFMdate1 from JGZLS ');
      sql.Add('           Left Join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH');
      sql.Add('           Left join DDZL on DDZL.DDBH=JGZLSS.ZLBH');
      sql.Add('           Left join JGZL on JGZL.JGNO=JGZLS.JGNO');
      sql.Add('           where  JGZLSS.ZLBH like '+''''+edit5.Text+'%'+''' and JGZLS.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.Add('           and JGZL.GSBH='+''''+main.edit2.Text+''' and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) <''2017/09/01''');
      if RB1.Checked=true then
        sql.add('         and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else
        SQL.Add('         and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      sql.Add('           and DDZl.GSBH='+''''+main.edit2.Text+''' and JGZLS.ZMLB<>''ZZZZZZZZZZ''');
      sql.Add('           Group by JGZLSS.ZLBH,JGZLS.ZMLB,JGZLS.CLBH,JGZL.JGdate,JGZL.CFMdate1');
      sql.Add('           Union all              ');
      sql.Add('           select KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL as MJBH,''Gia cong'' as DType, sum(KCLLS.Qty) as okQty,'''' as JGdate, '''' as CFMdate1');
      sql.Add('           from KCLLS ');
      sql.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO');
      sql.Add('           left join DDZL on DDZL.DDBH=KCLLS.SCBH');
      sql.Add('           left join CLZL on CLZL.CLDH=KCLLS.CLBH');
      sql.Add('           where  KCLLS.DFL like '+''''+edit1.Text+'%'+'''');
      sql.Add('           and KCLLS.SCBH like '+''''+edit5.Text+'%'+'''');
      sql.Add('           and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.Add('           and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.Add('           and KCLL.GSBH='+''''+main.edit2.Text+''' and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
      sql.Add('           and KCLL.SCBH=''JJJJJJJJJJ''');
      if RB1.Checked=true then
        sql.add('         and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else
        SQL.Add('         and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      sql.Add('           and DDZl.GSBH='+''''+main.edit2.Text+'''');
      sql.Add('           group by KCLLS.SCBH, KCLLS.CLBH,KCLLS.DFL');
      sql.Add('            )JGCK group by JGCK.SCBH,JGCK.CLBH,JGCK.MJBH,JGCK.DType,JGCK.JGdate,JGCK.CFMdate1) JGZL on JGZL.MJBH=ZLZLS2.MJBH  and JGZL.CLBH=ZLZLS2.CLBH and JGZL.SCBH=ZLZLS2.ZLBH');
      //
      sql.add('left join CLZL on CLZL.CLDH=ZLZLs2.CLBH');
      sql.add('left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH');
      sql.add('left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH');
      sql.add('left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH');
      sql.add('left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH');
      sql.Add('left join bdepartment on bdepartment.id=SCZLDate.Assemble');
      sql.add('left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao');
      sql.add('left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
      sql.Add('LEFT JOIN ZSZL ON ZLZLS2.CSBH=ZSZL.ZSDH');
      sql.Add('Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_TW,ZSZL.ZSYWJC as ZSYWJC');
      sql.Add('		        FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_TW and ZSZL_DEV.GSBH='''+main.Edit2.Text+''') ZSZL_DEV');
      sql.Add('on ZLZLS2.CSBH=ZSZL_DEV.ZSDH');
      sql.add('where ZLZLS2.MJBH like '+''''+edit1.Text+'%'+'''');
      sql.add('and ZLZLS2.ZLBH like '+''''+edit5.Text+'%'+'''');
      sql.add('and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
      sql.add('and ZLZLS2.MJBH <>'+''''+'ZZZZZZZZZZ'+'''');
      if RB1.Checked=true then
        sql.add('      and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''')
      else
        SQL.Add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      sql.add('and DDZL.GSBH='+''''+main.edit2.Text+'''');
      if  edit6.Text<>'' then
      begin
        sql.Add('and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
      end;
      if ChildMatEdit.Text<>'' then
        sql.add('and ZLZLS2.CLBH  like '''+ChildMatEdit.Text+'%''  ');
      sql.add('group by ZLZLS2.ZLBH,ddzl.article,ZLZLS2.CLBH,ZLZLS2.MJBH,CLZL.YWPM,CLZL.DWBH,CLZL.CQDH,JGZL.okQty,ZLZLS2.CSBH,ZSZL.ZSYWJC,ZSZL_DEV.ZSDH_TW,ZSZL_DEV.ZSYWJC');
      sql.Add(',DDZL.BUYNO,xxzl.xieming,DDZL.Pairs,DDZLTW.DDZT,SCZL.IsKCLLS,DDZLTW.DDZT,JGdate,CFMdate1,DType,DDZL.Shipdate,bdepartment.depname');
      sql.add(') EXTRA');
      sql.Add('left join clbzzl on clbzzl.CLDH = EXTRA.CLBH and clbzzl.zybb =''E'' and clbzzl.xh=''001'' ');
      sql.add('where 1=1');
      sql.add('order by EXTRA.ZLBH,EXTRA.Parent,EXTRA.DType,EXTRA.CLBH');
    end;
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TExtraOrdList.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
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

procedure TExtraOrdList.FormDestroy(Sender: TObject);
begin
ExtraOrdList:=nil;
end;

procedure TExtraOrdList.FormCreate(Sender: TObject);
var  myYear, myMonth, myDay : Word;
begin
  with tmpQ do
    begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
    end;
  DTP1.date:=startofthemonth(NDate)+5;
  DTP2.date:=startofthemonth(incmonth(NDate,1))+4;
  DecodeDate(Date(), myYear, myMonth, myDay);
  BuyNoEdit.Text:=FormatDateTime('YYYYMM',Date());
end;

procedure TExtraOrdList.DBGridEh1DrawColumnCell(Sender: TObject;
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

end.
