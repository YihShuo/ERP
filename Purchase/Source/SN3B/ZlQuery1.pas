unit ZlQuery1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, ExtCtrls,dateutils,
  Menus,comobj, GridsEh, DBGridEh;

type
  TZlQuery = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit2: TEdit;
    EDIT1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Label7: TLabel;
    BuyNoEdit: TEdit;
    Label8: TLabel;
    DDBHEdit: TEdit;
    SKU: TEdit;
    Label5: TLabel;
    chuhuo: TComboBox;
    Label6: TLabel;
    CheckBox2: TCheckBox;
    Label9: TLabel;
    DTP3: TDateTimePicker;
    Label10: TLabel;
    DTP4: TDateTimePicker;
    Label12: TLabel;
    dinggou: TComboBox;
    Label13: TLabel;
    quxiao: TComboBox;
    NotInCK: TCheckBox;
    Label14: TLabel;
    Label15: TLabel;
    Edit7: TEdit;
    Edit5: TEdit;
    CheckBox3: TCheckBox;
    Label3: TLabel;
    Query1GSBH: TStringField;
    Query1ZLBH: TStringField;
    Query1BUYNO: TStringField;
    Query1Pairs: TIntegerField;
    Query1GENDER: TStringField;
    Query1DDRQ: TDateTimeField;
    Query1ShipDate: TDateTimeField;
    Query1xh: TStringField;
    Query1BWBH: TStringField;
    Query1CSBH: TStringField;
    Query1zsjc: TStringField;
    Query1Qty: TFloatField;
    Query1CLBH: TStringField;
    Query1zwpm: TStringField;
    Query1ywpm: TStringField;
    Query1dwbh: TStringField;
    Query1dwzwsm: TStringField;
    Query1ZMLB: TStringField;
    Query1CLSL: TFloatField;
    Query1PurQty: TCurrencyField;
    Query1RKQty: TFloatField;
    Query1WriteoffQty: TCurrencyField;
    Query1RikuQty: TCurrencyField;
    Query1LLQty: TFloatField;
    Query1FeedingQty: TCurrencyField;
    Query1PO: TStringField;
    Query1SKU: TStringField;
    Query1Dest: TStringField;
    Query1BWSM: TStringField;
    Query1FLEX_CODE: TStringField;
    Query1size: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ZlQuery: TZlQuery;

implementation

uses  main1, FunUnit;

{$R *.dfm}

procedure TZlQuery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TZlQuery.Button1Click(Sender: TObject);
begin


    If ( (CheckBox1.Checked=false) and (CheckBox2.Checked=false) and (BuyNoEdit.Text='') and (DDBHEdit.Text='') ) then
    begin
      Showmessage('請輸入Buy別或訂單編號或接單日期');
      Exit;
    end;
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('SELECT ddzl.GSBH ,ZLZLS2.ZLBH ,DDZL.KHPO AS PO#, DDZL.BUYNO , DDZL.Pairs , xxzl.ARTICLE AS SKU#, xxzl.GENDER ,LBZLS.zwsm as Dest, DDZL.DDRQ  ,  ');
      sql.add(' DDZL.ShipDate ,ZLZLS2.xh , ZLZLS2.BWBH , bwzl.ywsm as BWSM,ZLZLS2.CLBH ,clzl.zwpm ,clzl.ywpm ,clzl.dwbh ,clzl.dwzwsm ,ZLZLS2.ZMLB ,ZLZLS2.SIZE as size,  ');
      sql.add(' CLZL_FLEX.cldhflex as FLEX_CODE,ZLZLS2.CSBH ,zszl.zsjc ,(ZLZLS2.CLSL - case ZLZLS2.ZMLB when ''Y'' then ISNULL(JGZLSS.Qty,0)  else ISNULL(CGZLSS.Qty,0) 	 end - ISNULL(CGYGUSES.QTY,0)  - ISNULL(CGKCUSES.QTY,0) ) as Qty,  ');
      sql.add(' ZLZLS2.CLSL , case ZLZLS2.ZMLB when ''Y'' then ISNULL(JGZLSS.Qty,0)  else ISNULL(CGZLSS.Qty,0) 	 end  as PurQty, case ZLZLS2.ZMLB when ''Y'' then ISNULL(JGZLSS.Qty2,0) else ISNULL(KCRKSs.qty,0)	 end as RKQty, ');
      sql.add(' ISNULL(CGYGUSES.QTY,0) as WriteoffQty,  ISNULL(CGKCUSES.QTY,0) as RikuQty, ISNULL(KCLLSS.qty,0) AS LLQty ,  ISNULL(SCBLSS.qty,0) AS FeedingQty  ');
      sql.add(' FROM ZLZLS2 ');
      sql.add(' LEFT JOIN (select ZLBH,BWBH,CLBH,XXCC,ISNULL(sum(ISNULL(CGZLSS.Qty,0)),0) as qty from CGZLSS group by  ZLBH,BWBH,CLBH,XXCC) CGZLSS on CGZLSS.CLBH=zlzls2.CLBH and CGZLSS.ZLBH=zlzls2.ZLBH and CGZLSS.XXCC=zlzls2.SIZE and CGZLSS.BWBH=zlzls2.BWBH  ');
      sql.add(' LEFT JOIN (select CGBH,CLBH,BWBH,SIZE,ISNULL(sum(ISNULL(KCRKSs.Qty,0)),0) as qty from KCRKSs group by  CGBH,BWBH,CLBH,SIZE) KCRKSs on KCRKSs.CLBH=zlzls2.CLBH and KCRKSs.CGBH=zlzls2.ZLBH and KCRKSs.SIZE=zlzls2.SIZE and KCRKSs.BWBH=zlzls2.BWBH  ');
      sql.add(' LEFT JOIN (select KCLLSS.SCBH,KCLLSS.BWBH,KCLLSS.CLBH, Case when CLZL.lycc=''Y'' then IsNull(XXGJS.XXCC,KCLLSS.SIZE) else KCLLSS.SIZE end as SIZE,  ISNULL(sum(ISNULL(KCLLSS.Qty,0)),0) as qty from KCLLSS ');
      sql.add(' left join KCLL on kcllss.llno=kcll.llno  left join KCLLs on kcllss.llno=kclls.llno and KCLLSS.CLBH=KCLLS.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLS.DFL=KCLLSS.DFL  ');
	    sql.add('left join DDZL on DDZL.DDBH=KCLLSS.SCBH ');
	    sql.add('left join CLZL on CLZL.cldh=KCLLSS.CLBH ');
	    sql.add('left join XXGJS on XXGJS.XieXing=DDZL.XieXing and xxgjs.GJLB=CLZL.gjlb and xxgjs.gjcc=KCLLSS.SIZE ');
      sql.add(' where kcll.cfmdate is not null AND kcll.SCBH <>''ZZZZZZZZZZ'' AND ISNULL(KCLLS.BLSB,''N'') <> ''Y''  group by  KCLLSS.SCBH,KCLLSS.BWBH,KCLLSS.CLBH,KCLLSS.SIZE,XXGJS.XXCC,CLZL.lycc) KCLLSS on KCLLSS.CLBH=zlzls2.CLBH  ');
      sql.add(' and KCLLSS.SCBH=zlzls2.ZLBH and KCLLSS.SIZE=zlzls2.SIZE and KCLLSS.BWBH=zlzls2.BWBH ');
      sql.add(' LEFT JOIN (select JGZLSS.ZLBH,JGZLSS.BWBH,JGZLSS.CLBH,isnull(JGZLSS.SIZE,''ZZZZZZ'') AS SIZE, ISNULL(sum(ISNULL(JGZLSS.Qty,0)),0) as qty,0 as qty2 from JGZLSS LEFT JOIN JGZL on JGZL.JGNO=JGZLSS.JGNO where JGZL.CFMID2 =''NO'' ');
			sql.add(' group by JGZLSS.ZLBH,JGZLSS.BWBH,JGZLSS.CLBH,JGZLSS.SIZE ');
			sql.add(' union all   ');
			sql.add(' select JGZLSS.ZLBH,JGZLSS.BWBH,JGZLSS.CLBH,isnull(JGZLSS.SIZE,''ZZZZZZ'') AS SIZE, ISNULL(sum(ISNULL(JGZLSS.Qty,0)),0) as qty,ISNULL(sum(ISNULL(JGZLSS.Qty,0)),0) as qty2	from JGZLSS LEFT JOIN JGZL on JGZL.JGNO=JGZLSS.JGNO	where JGZL.CFMID2 <> ''NO'' ');
			sql.add(' group by JGZLSS.ZLBH,JGZLSS.BWBH,JGZLSS.CLBH,JGZLSS.SIZE ) JGZLSS on JGZLSS.CLBH=zlzls2.CLBH and JGZLSS.ZLBH=zlzls2.ZLBH and JGZLSS.SIZE=zlzls2.SIZE and JGZLSS.BWBH=zlzls2.BWBH');
      sql.add(' LEFT JOIN (select SCBL.ZLBH,SCBLS.BWBH,SCBLS.CLBH,isnull(SCBLSS.SIZE,''ZZZZZZ'') AS SIZE,   ');
      sql.add('  case when SCBLSS.SIZE IS null then ISNULL(sum(ISNULL(SCBLS.Qty,0)),0) else ISNULL(sum(ISNULL(SCBLsS.Qty,0)),0)  end as qty    ');   
      sql.add(' FROM  SCBLS LEFT JOIN SCBL ON SCBL.BLNO=SCBLS.BLNO 	LEFT JOIN SCBLSS  ');
			sql.add(' ON SCBLS.BLNO=SCBLSS.BLNO AND SCBLS.BWBH=SCBLSS.BWBH AND SCBLS.CLBH=SCBLSS.CLBH   where scbl.CFMDate is not null ');
      sql.add(' group by  SCBL.ZLBH,SCBLS.BWBH,SCBLS.CLBH,SCBLSS.SIZE) SCBLSS on SCBLSS.CLBH=zlzls2.CLBH and SCBLSS.ZLBH=zlzls2.ZLBH and SCBLSS.SIZE=zlzls2.SIZE and SCBLSS.BWBH=zlzls2.BWBH ');
      sql.add(' LEFT JOIN (select ZLBH,BWBH,CLBH,SIZE,ISNULL(sum(ISNULL(Qty,0)),0) as qty from CGKCUSES group by ZLBH,BWBH,CLBH,SIZE ) CGKCUSES on CGKCUSES.CLBH=zlzls2.CLBH and CGKCUSES.ZLBH=zlzls2.ZLBH and CGKCUSES.SIZE=zlzls2.SIZE and CGKCUSES.BWBH=zlzls2.BWBH ');
      sql.add(' LEFT JOIN (select ZLBH,BWBH,CLBH,SIZE,ISNULL(sum(ISNULL(Qty,0)),0) as qty from CGYGUSES group by ZLBH,BWBH,CLBH,SIZE ) CGYGUSES on CGYGUSES.CLBH=zlzls2.CLBH and CGYGUSES.ZLBH=zlzls2.ZLBH ');
      sql.add(' and CGYGUSES.SIZE=zlzls2.SIZE and CGYGUSES.BWBH=zlzls2.BWBH ');

      sql.add(' LEFT JOIN DDZL  on zlzls2.ZLBH=DDZL.ZLBH ');
      sql.add(' LEFT JOIN LBZLS on DDZL.DDGB=LBZLS.lbdh ');
      sql.add(' LEFT JOIN bwzl  on ZLZLS2.BWBH=bwzl.bwdh ');
      sql.add(' LEFT JOIN clzl  on ZLZLS2.CLBH=clzl.cldh  ');
      sql.add(' LEFT JOIN CLZL_FLEX  on ZLZLS2.CLBH=CLZL_FLEX.cldh ');
      sql.add(' LEFT JOIN zszl  on ZLZLS2.CSBH=zszl.zsdh ');
      sql.add(' LEFT JOIN xxzl  on DDZL.XieXing = xxzl.XieXing and DDZL.SheHao=xxzl.SheHao and DDZL.ARTICLE=xxzl.ARTICLE ');
      sql.Add(' where DDZL.GSBH='+''''+main.edit2.Text+'''');
      sql.Add(' and  LBZLS.lb = ''06''  ');

      if checkbox1.Checked then
      begin
        sql.add(' and CONVERT(smalldatetime,CONVERT(varchar,DDZL.ShipDate,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
        sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
      end;

      if checkbox2.Checked then
      begin
        sql.add(' and CONVERT(smalldatetime,CONVERT(varchar,DDZL.DDRQ,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP3.date )+'''');
        sql.add(' and '+''''+formatdatetime('yyyy/MM/dd',DTP4.date )+'''');
      end;

//      if quxiao.Text = '取消訂單' then
      if quxiao.ItemIndex = 1 then
        sql.add(' and DDZL.DDZT = ''C'' ');
//      if quxiao.Text = '未取消訂單' then
      if quxiao.ItemIndex = 2 then
        sql.add(' and DDZL.DDZT <> ''C'' ');

//      if dinggou.Text = '未訂購' then
      if dinggou.ItemIndex = 1 then
         sql.add(' and (ZLZLS2.CLSL - case ZLZLS2.ZMLB when ''Y'' then ISNULL(JGZLSS.Qty,0)  else ISNULL(CGZLSS.Qty,0) 	 end - ISNULL(CGYGUSES.QTY,0)  - ISNULL(CGKCUSES.QTY,0)) > 0 ');

      if BuyNoEdit.Text<>'' then
        sql.add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
      if DDBHEdit.Text<>'' then
        sql.add('and ZLZLS2.ZLBH like '''+DDBHEdit.Text+'%'' ');
      if SKU.Text<>'' then
        sql.add('and XXZL.ARTICLE like '''+SKU.Text+'%'' ');

      sql.add('and ZLZLS2.CLBH like '''+edit1.Text+'%'' ');
      if edit2.Text<>'' then
      sql.add('and CLZL.ZWPM like ''%'+edit2.Text+'%'' ');
      if edit3.Text<>'' then
      sql.add('and CLZL.ZWPM like ''%'+edit3.Text+'%'' ');
      if edit4.Text<>'' then
      sql.add('and CLZL.ZWPM like ''%'+edit4.Text+'%'' ');


//      if chuhuo.Text = '已出貨' then
      if chuhuo.ItemIndex = 1 then
        sql.add('and DDZL.YN = ''5'' ');
//      if chuhuo.Text = '未出貨' then
      if chuhuo.ItemIndex = 2 then
        sql.add('and DDZL.YN <> ''5'' ');

      if NotInCK.Checked=true then
      sql.Add(' and (zlzls2.ZLBH not like ''BB%'' and DDZL.DDBH not like ''BX%'' and DDZL.DDBH not like ''BZ%'') ');

      if CheckBox3.Checked=true then
      sql.Add(' and (ZLZLS2.CLBH not like ''J%'' and ZLZLS2.CLBH not like ''W%''  ) ');

      if edit5.Text<>'' then
      sql.add('and ZSZL.ZSDH like '''+edit5.Text+'%'' ');
      if edit7.Text<>'' then
      sql.add('and ZSZL.zsjc like ''%'+edit7.Text+'%'' ');


      sql.add('order by ZLZLS2.ZLBH,ZLZLS2.BWBH,ZLZLS2.xh,ZLZLS2.ZMLB desc ');
      funcobj.WriteErrorLog(sql.Text);
//      showmessage(SQL.Text);
      active:=true;
    end;

end;

procedure TZlQuery.FormCreate(Sender: TObject);
begin
  DTP1.Date:=startofthemonth(date);
  DTP2.Date:=date;
  DTP3.Date:=startofthemonth(date);
  DTP4.Date:=date;
end;

procedure TZlQuery.Button2Click(Sender: TObject);
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
       eclApp.Visible:=True;
       showmessage('Succeed');
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;

end;

procedure TZlQuery.FormDestroy(Sender: TObject);
begin
ZlQuery:=nil;
end;

procedure TZlQuery.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if ((Query1.FieldByName('CLSL').value= 0) or (Query1.FieldByName('CLSL').IsNull))  then
  begin
    DBGridEh1.canvas.font.color:=clred;
  end;
end;

procedure TZlQuery.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
if (Rect.Top = DBGridEh1.cellRect(DBGridEh1.col,DBGridEh1.row).top) then
    begin
       DBGridEh1.Canvas.Brush.Color :=  clskyblue;
    end
  else
   begin
       DBGridEh1.Canvas.Brush.Color :=clwindow;
   end;
  DBGridEh1.Canvas.pen.Mode:=pmMask;
  DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

end.
