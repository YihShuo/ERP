unit ShipReviseUsage1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, Buttons, ExtCtrls,
  Menus,Math, ComCtrls,comobj;

type
  TShipReviseUsage = class(TForm)
    Panel1: TPanel;
    Label18: TLabel;
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
    Query1: TQuery;
    UpdateSQL1: TUpdateSQL;
    DS1: TDataSource;
    UpdateQry: TQuery;
    KCLLSQry: TQuery;
    DS2: TDataSource;
    KCLLSQrySCBH: TStringField;
    KCLLSQryCLBH: TStringField;
    KCLLSQryQty: TCurrencyField;
    PopupMenu1: TPopupMenu;
    QtyCLSL1: TMenuItem;
    Query1ZLBH: TStringField;
    Query1xh: TStringField;
    Query1BWBH: TStringField;
    Query1CSBH: TStringField;
    Query1MJBH: TStringField;
    Query1CLBH: TStringField;
    Query1ZMLB: TStringField;
    Query1SIZE: TStringField;
    Query1CLSL: TFloatField;
    Query1USAGE: TFloatField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1YN: TStringField;
    Query1BWMC: TStringField;
    Query1CLMC: TStringField;
    Query1DWBH: TStringField;
    Query1ZSMC: TStringField;
    Query1ARTICLE: TStringField;
    Query1YWPM: TStringField;
    Query1CLSLQty: TFloatField;
    Query1Qty: TCurrencyField;
    Panel2: TPanel;
    Label9: TLabel;
    BC2: TBitBtn;
    BC3: TBitBtn;
    BC4: TBitBtn;
    BC5: TBitBtn;
    BC6: TBitBtn;
    BC7: TBitBtn;
    BCT1: TBitBtn;
    BCT2: TBitBtn;
    BCT3: TBitBtn;
    BCT4: TBitBtn;
    BCT6: TBitBtn;
    UpdateSQL2: TUpdateSQL;
    Query2: TQuery;
    Query1ddbh: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    Query1BWMCY: TStringField;
    Query1CLMCY: TStringField;
    Query1LOSS: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField15: TStringField;
    Query1CQDH: TStringField;
    Query1JGYWSM: TStringField;
    StringField16: TStringField;
    Query1XieXing: TStringField;
    Query1SheHao: TStringField;
    DS3: TDataSource;
    BCT7: TBitBtn;
    Panel3: TPanel;
    ToolPanel: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
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
    TabSheet2: TTabSheet;
    DBGridEh3: TDBGridEh;
    Query2CCQQ: TStringField;
    Query2CCQZ: TStringField;
    Label8: TLabel;
    Edit7: TEdit;
    Query1LockYN: TStringField;
    procedure BB6Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BB4Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure QtyCLSL1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure NegativeResult(Diff: double);
    procedure PC1Change(Sender: TObject);
    procedure BC4Click(Sender: TObject);
    procedure BC6Click(Sender: TObject);
    procedure BC5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BCT7Click(Sender: TObject);
    procedure BC3Click(Sender: TObject);
    procedure BB2Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
    procedure bbt6Click(Sender: TObject);
    procedure BCT6Click(Sender: TObject);
  private
    tmpQMatList:TStringlist;
    { Private declarations }
    procedure ShowZLZLS2();
    procedure ShowBomExport();
  public
    { Public declarations }
  end;

var
  ShipReviseUsage: TShipReviseUsage;

implementation
 uses main1, D_PSpecPrintss1 ,ShipRevise_CLZL1,FunUnit;
{$R *.dfm}

procedure TShipReviseUsage.BB6Click(Sender: TObject);
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
  DBGridEh1.columns[0].Color:=clWindow;
  DBGridEh1.columns[1].Color:=clWindow;
  DBGridEh1.columns[3].Color:=clWindow;
  DBGridEh1.columns[5].Color:=clWindow;
  KCLLSQry.Active:=true;  
end;

procedure TShipReviseUsage.BB7Click(Sender: TObject);
begin
   close;
end;
procedure TShipReviseUsage.ShowZLZLS2();
var
  i:integer;
  OrderRY:string;
begin
  //
  if (Length(Edit4.Text)<=9)  then
  begin
    showmessage('Please input RY ');
    exit;
  end;
  //
  if Edit7.Text<>'' then
  begin
    with UpdateQry do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select RYNO from INVOICE_D where INV_NO = '''+Edit7.Text+'''');
      active:=true;
    end;
    for i:=0 to UpdateQry.RecordCount-2 do
    begin
      OrderRY:=OrderRY+''''+UpdateQry.FieldByName('RYNO').AsString+''''+',';
      UpdateQry.Next;
    end;
    UpdateQry.Active:=false;
    if length(OrderRY)>0 then OrderRY:=Copy(OrderRY,1,length(OrderRY)-1);
    //end;
  end else
  begin
    OrderRY:=''''+Edit4.Text+'''';
  end;
  with UpdateQry do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select ZLBH from DDZL_ZLZLS2 ZLZLS2 where ZLZLS2.ZLBH in ('+OrderRY+') Group by ZLBH ');
    active:=true;
    if RecordCount=0 then
    begin
      showmessage('Chua San Xuat hay Ma dong hang la sai, khong the thay hien ');
      Exit;
    end;
    active:=false;
  end;
  //
  with Query1 do
  begin
     active:=false;
     sql.Clear;
     sql.Add('select ZLZLS2.*,BWZL.ywsm BWMC,CLZL.YWPM as CLMC,CLZL.DWBH,ZSZL.ZSYWJC AS ZSMC,DDZL.ARTICLE,DDZL.YN,CLZL1.YWPM,ZLZLS2All.CLSLQty ,IsNull(Round(KCLLS.Qty,2),0) as Qty,DDZL.YN as LockYN');
     SQL.Add('FROM DDZL_ZLZLS2 ZLZLS2');
     sql.Add('            LEFT JOIN BWZL ON BWZL.BWDH=ZLZLS2.BWBH');
     SQL.Add('            LEFT JOIN CLZL ON ZLZLS2.CLBH=CLZL.CLDH');
     SQL.Add('            LEFT JOIN ZSZL ON ZSZL.ZSDH=ZLZLS2.CSBH');
     SQL.Add('            LEFT JOIN DDZL ON DDZL.DDBH=ZLZLS2.ZLBH');
     SQL.Add('            LEFT JOIN CLZL CLZL1 ON ZLZLS2.MJBH=CLZL1.CLDH ');
     sql.Add('            LEFT JOIN SHIP_XXZLS on SHIP_XXZLS.XieXing=DDZL.XieXing and SHIP_XXZLS.SheHao=DDZL.SheHao and SHIP_XXZLS.BWBH=ZLZLS2.BWBH ');
     SQL.Add('left join (Select ZLBH,CLBH,MJBH,IsNull(Sum(CLSL),0) as CLSLQty');
     SQL.Add('           FROM DDZL_ZLZLS2 ZLZLS2');
     SQL.Add('           where ZLZLS2.ZLBH in ('+OrderRY+') and ZLZLS2.CLBH like '''+Edit1.Text+'%'' ');
     if VTCombo.ItemIndex=1 then
       sql.Add('            and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' ');
     if VTCombo.ItemIndex=2 then
       sql.Add('            and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
     if MotherEdit.Text<>'' then
       sql.Add('            and ZLZLS2.MJBH like '''+MotherEdit.Text+'%'' ');
     SQL.Add('           Group by ZLBH,CLBH,MJBH) ZLZLS2All on ZLZLS2.ZLBH=ZLZLS2All.ZLBH and ZLZLS2.CLBH=ZLZLS2All.CLBH and ZLZLS2.MJBH=ZLZLS2All.MJBH ');
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
       SQL.Add('           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=ZLZLS2.CLBH and KCLLS.SCBH=ZLZLS2.ZLBH  and KCLLS.MJBH=ZLZLS2.MJBH ');
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
       SQL.Add('           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=ZLZLS2.CLBH and KCLLS.SCBH=ZLZLS2.ZLBH  and KCLLS.MJBH=ZLZLS2.MJBH ');
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
       SQL.Add('           ) KCLLS group by SCBH,CLBH,MJBH) KCLLS on KCLLS.CLBH=ZLZLS2.CLBH and KCLLS.SCBH=ZLZLS2.ZLBH  and KCLLS.MJBH=ZLZLS2.MJBH ');
     end;
     sql.add('WHERE ZLZLS2.CLBH like '''+edit1.Text+'%'' ');
     if edit2.Text <> '' then
        sql.add('            and CLZL.YWPM like '''+'%'+edit2.Text+'%'' ');
     if edit3.Text <> '' then
        sql.add('            and CLZL.YWPM like '''+'%'+edit3.Text+'%'' ');
     sql.add('            and ZLZLS2.ZLBH in ('+OrderRY+') ');
     sql.add('            and DDZL.ARTICLE like '''+edit5.Text+'%'' ');
     sql.Add('            and ZLZLS2.BWBH like '''+edit6.Text+'%'' ') ;
     //sql.Add('            and DDZL.GSBH = '''+main.edit2.Text+''' ');
     if MotherEdit.Text<>'' then
       sql.Add('          and ZLZLS2.MJBH like '''+MotherEdit.Text+'%'' ');
     if VTCombo.ItemIndex=1 then
       sql.Add('          and ZLZLS2.MJBH<>''ZZZZZZZZZZ'' ');
     if VTCombo.ItemIndex=2 then
       sql.Add('          and ZLZLS2.MJBH=''ZZZZZZZZZZ'' ');
     if checkbox2.Checked then
       sql.Add('          and Round(ZLZLS2All.CLSLQty,2)<>Round(KCLLS.Qty,2) and  IsNull(KCLLS.Qty,0)>0 ');
     if checkbox3.Checked then
       sql.Add('          and ZLZLS2.CLBH not like ''W%'' ');
     sql.Add('            and ((Ship_XXZLS.TYJH<>''Y'')or (Ship_XXZLS.TYJH is null))')  ;
     SQL.Add('order by ZLZLS2.ZLBH,ZLZLS2.CLBH asc,ZLZLS2.MJBH,ZLZLS2.BWBH desc,ZLZLS2.CLSL desc');
     //funcobj.WriteErrorLog(sql.Text);
     active:=true;
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
    SQL.Add('where SCBH=:ZLBH and CLBH=:CLBH and MJBH=:MJBH ');
  end;
  KCLLSQry.Active:=true;

end;
procedure TShipReviseUsage.ShowBomExport();
begin

  DS3.DataSet:=nil;
  with Query2 do  //查詢Spec是否已被修改過
  begin
    Active:=false;
    sql.clear;
    sql.add('select BomExport.ZLBH ,BomExport.xh,BomExport.BWBH,BomExport.CLBH,');
    sql.add('       BomExport.MJBH,sum(BomExport.CLSL) as CLSL,BomExport.USAGE,BomExport.YWSM as BWMCY,Max(BomExport.CLMCY) as CLMCY,');
    sql.add('       max(CLZL.dwbh) AS dwbh,BomExport.LOSS,clzl.cqdh,BomExport.JGYWSM,BomExport.XieXing,');
    sql.add('       BomExport.SheHao,'''' as CCQQ,'''' as CCQZ');
    sql.add('from BomExport');
    sql.add('left join clzl on BomExport.CLBH=clzl.cldh');
    sql.add('where BomExport.ZLBH=:ZLBH');
    sql.add('group by BomExport.ZLBH,BomExport.xh,BomExport.BWBH,BomExport.CLBH,');
    sql.add('         BomExport.MJBH,BomExport.USAGE,BomExport.YWSM,BomExport.LOSS,BomExport.JGYWSM,');
    sql.add('         BomExport.XieXing,BomExport.SheHao,clzl.cqdh');
    sql.add('order by BomExport.BWBH asc,BWMCY desc');
    Params[0].Value:=Edit4.Text;
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  if Query2.RecordCount <1 then //如果沒被修改過,則使用原始spec資料
  begin
    with Query2 do
    begin
      Active:=false;
      sql.Clear;
      sql.Text:=tmpQMatList.Text;
      Params[0].Value:=Edit4.Text;
      active:=true;
    end;
  end;
  DS3.DataSet:=Query2;
  BC3.Enabled:=true;
  BC4.Enabled:=true;
  BC5.Enabled:=true;

  //
end;
procedure TShipReviseUsage.Button1Click(Sender: TObject);
begin
  //
  if PC1.ActivePageIndex=0 then
    ShowZLZLS2()
  else if PC1.ActivePageIndex=1 then
    ShowBomExport();
  //
end;

procedure TShipReviseUsage.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TShipReviseUsage.FormDestroy(Sender: TObject);
begin
  tmpQMatList.Free;
  ShipReviseUsage:=nil;
end;

procedure TShipReviseUsage.BB4Click(Sender: TObject);
begin
  with Query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  KCLLSQry.Active:=false;
end;

procedure TShipReviseUsage.BB5Click(Sender: TObject);
var i:integer;
    CLSL:string;
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
          Edit;
          CLSL:=formatfloat('#0.00',fieldbyname('CLSL').AsFloat+0.0001);
          UpdateQry.Active:=false;
          UpdateQry.SQL.Clear;
          UpdateQry.SQL.Add('Insert into DDZL_ZLZLS2 (ZLBH, XH, BWBH, CSBH, MJBH, CLBH, ZMLB, SIZE, CLSL, USAGE, USERID, USERDATE, YN)');
          UpdateQry.SQL.Add('values ('''+Edit4.Text+''',''VN'',''ZZZZ'',NULL,''ZZZZZZZZZZ'','''+Query1.FieldByName('CLBH').Value+''',''N'',''ZZZZZZ'','+CLSL+',NULL,'''+main.Edit1.Text+''',getdate(),2)');
          UpdateQry.ExecSQL;
        end;
        usmodified:
        begin
          if Query1.fieldbyname('YN').Value=0 then
          begin
            with UpdateQry do
            begin
                active:=false;
                sql.Clear;
                sql.add('insert into BDelRec ');
                sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
                sql.add('values (''DDZL_ZLZLS2'','''+Query1.fieldbyname('ZLBH').Value+'''');
                sql.add(','''+Query1.fieldbyname('CLBH').Value+''','''+Query1.fieldbyname('USERID').Value+''',');
                sql.add(''''+main.Edit1.Text+''''+',getdate())');
                execsql;
                active:=false;
            end;
            UpdateSQL1.apply(ukdelete);
          end else
          begin
            if Query1.fieldbyname('CLSL').Value>=0 then
            begin
              UpdateQry.Active:=false;
              UpdateQry.SQL.Clear;
              UpdateQry.SQL.Add('Update DDZL_ZLZLS2 Set CLSL='+Formatfloat('#0.00#',fieldbyname('CLSL').AsFloat+0.0001)+',MJBH='''+FieldByName('MJBH').Value+''',UserID='''+main.Edit1.Text+''',UserDate=GetDate()  ');
              UpdateQry.SQL.Add('where ZLBH='''+FieldByName('ZLBH').Value+''' and  BWBH='''+FieldByName('BWBH').Value+'''');
              UpdateQry.SQL.Add('and  CLBH='''+FieldByName('CLBH').Value+''' and SIZE='''+FieldByName('SIZE').Value+''' and YN='''+FieldByName('YN').Value+''' ');
              UpdateQry.ExecSQL;
            end;
          end;
        end;
      end;
      Query1.Next;
    end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
  end;
  BB5.enabled:=false;
  BB6.Enabled:=false;
  KCLLSQry.Active:=true;
  //
  DBGridEh1.columns[0].Color:=clWindow;
  DBGridEh1.columns[1].Color:=clWindow;
  DBGridEh1.columns[3].Color:=clWindow;
  DBGridEh1.columns[5].Color:=clWindow;
  //
end;
procedure TShipReviseUsage.DBGridEh1DrawColumnCell(Sender: TObject;
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
  //
end;

procedure TShipReviseUsage.QtyCLSL1Click(Sender: TObject);
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

            if RoundTo(Query1.FieldByName('CLSL').Value+Diff,-2)>=0 then
            begin
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

procedure TShipReviseUsage.NegativeResult(Diff: double);
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

procedure TShipReviseUsage.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked=true then
    DBGridEh1.PopupMenu:=PopupMenu1
  else
    DBGridEh1.PopupMenu:=nil;
end;

procedure TShipReviseUsage.Query1AfterOpen(DataSet: TDataSet);
begin
  if Query1.RecordCount>0 then
  begin
    with UpdateQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select INVOICE_D.RYNO from INVOICE_M,INVOICE_D ');
      SQL.Add(' where INVOICE_M.INV_NO=INVOICE_D.INV_NO and INVOICE_D.RYNO='''+query1.FieldByName('ZLBH').AsString+''' and IsNull(INVOICE_M.PRINT_LOCK,''N'')=''Y'' ');
      Active:=true;
      if RecordCount>0 then
      begin
        BB2.Enabled:=false;
        BB3.Enabled:=false;
        BB4.Enabled:=false;
      end else
      begin
        BB2.Enabled:=true;
        BB3.Enabled:=true;
        BB4.Enabled:=true;
      end;
      Active:=false;
    end;
  end;
end;

procedure TShipReviseUsage.PC1Change(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    Panel1.Visible:=true;
    Panel2.Visible:=false;
    ToolPanel.Visible:=true;
  end else
  begin
    Panel1.Visible:=false;
    Panel2.Visible:=true;
    ToolPanel.Visible:=true;
  end;

end;

procedure TShipReviseUsage.BC4Click(Sender: TObject);
begin
  with Query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    edit;
  end;
  BC5.Enabled:=true;
  BC6.Enabled:=true;
end;

procedure TShipReviseUsage.BC6Click(Sender: TObject);
begin
  //
  with Query2 do
  begin
    active:=false;
    cachedupdates:= false;
    requestlive:=false;
    active:=true;
  end;
  BC5.Enabled:=false;
  BC6.Enabled:=false;
  BC7.Enabled:=false;
  //
end;

procedure TShipReviseUsage.BC5Click(Sender: TObject);
begin
  //
  with UpdateQry do //先清空存在於BomExport資料
  begin
    Active:=false;
    SQL.Clear;
    sql.Add('Delete BomExport');
    sql.add('where ZLBH='''+Query2.FieldByName('ZLBH').AsString+'''');
    execsql;
  end;
  //
  Query2.First;
  while not Query2.Eof do  //將修改的單位用量寫入BomExport
  begin
    with UpdateQry do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Insert into BomExport ');
      SQL.Add(' (GSBH, ZLBH, XH, BWBH, CLBH, MJBH, CLSL, USAGE, YWSM, CLMCY, LOSS, JGYWSM, XieXing, Shehao, USERID, USERDATE ) ');
      SQL.Add('values ');
      SQl.Add(' (:GSBH, :ZLBH, :XH, :BWBH, :CLBH, :MJBH, :CLSL, :USAGE, :YWSM, :CLMCY, :LOSS, :JGYWSM, :XieXing, :Shehao, :USERID, :USERDATE ) ');
      ParamByName('GSBH').Value:=main.Edit2.Text;
      ParamByName('ZLBH').Value:=Query2.FieldByName('ZLBH').AsString;
      ParamByName('XH').Value:=Query2.FieldByName('XH').AsString;
      ParamByName('BWBH').Value:=Query2.FieldByName('BWBH').AsString;
      ParamByName('CLBH').Value:=Query2.FieldByName('CLBH').AsString;
      ParamByName('MJBH').Value:=Query2.FieldByName('MJBH').AsString;
      ParamByName('CLSL').Value:=Query2.FieldByName('CLSL').AsString;
      ParamByName('USAGE').Value:=Query2.FieldByName('USAGE').Value;
      ParamByName('YWSM').Value:=Query2.FieldByName('BWMCY').AsString;
      ParamByName('CLMCY').Value:=Query2.FieldByName('CLMCY').AsString;
      ParamByName('LOSS').Value:=Query2.FieldByName('LOSS').AsString;
      ParamByName('JGYWSM').Value:=Query2.FieldByName('JGYWSM').AsString;
      ParamByName('XieXing').Value:=Query2.FieldByName('XieXing').AsString;
      ParamByName('Shehao').Value:=Query2.FieldByName('Shehao').AsString;
      ParamByName('USERID').Value:=main.Edit1.Text;
      ParamByName('USERDATE').AsString:=DateTimetostr(Date());
      UpdateQry.ExecSQL;
    end;
    Query2.Next;
  end;
  //
  Showmessage('OK');
  BC6.Enabled:=false;
  BC7.Enabled:=false;
end;

procedure TShipReviseUsage.FormCreate(Sender: TObject);
begin
  tmpQMatList:=TStringlist.Create;
  tmpQMatList.Text:=Query2.SQL.Text;
end;

procedure TShipReviseUsage.BCT7Click(Sender: TObject);
var shoePic:string;
    i:integer;
begin
  if Query2.Active=true then
  begin
    if Query2.RecordCount>0 then
    begin
      D_PSpecPrintss:=TD_PSpecPrintss.create(nil);
      //20150610 weston 增加修改
      D_PSpecPrintss.MemoTemp.DataSource:=DS3;
      D_PSpecPrintss.Titlememo.DataSource:=DS3;
      D_PSpecPrintss.QMatList.DataSource:=DS3;
      D_PSpecPrintss.MemoOth.DataSource:=DS3;
      D_PSpecPrintss.TitleMemo.Active:=true;
      //
      D_PSpecPrintss.QRCompositeReport1.prepare;
      i:=D_PSpecPrintss.QuickRep2.QRPrinter.pagecount ;
      D_PSpecPrintss.PageN1.Caption:='/  '+inttostr(i);
      D_PSpecPrintss.PageN2.Caption:='/  '+inttostr(i);
      D_PSpecPrintss.PageN3.Caption:='/  '+inttostr(i);
      D_PSpecPrintss.Fac1.Caption:=D_PSpecPrintss.Fac1.Caption+main.Edit2.Text;
      D_PSpecPrintss.Fac2.Caption:=D_PSpecPrintss.Fac2.Caption+main.Edit2.Text;
      D_PSpecPrintss.Fac3.Caption:=D_PSpecPrintss.Fac3.Caption+main.Edit2.Text;
      try
        // 圖片加載不論是否成功都要打印
        shoePic:=D_PSpecPrintss.TitleMemo.fieldbyname('IMGName').AsString  ;
        if FileExists(shoePic)=true then
        begin
          D_PSpecPrintss.QRImage1.Picture.LoadFromFile(shoePic);
          D_PSpecPrintss.QRImage2.Picture.LoadFromFile(shoePic);
          D_PSpecPrintss.QRImage3.Picture.LoadFromFile(shoePic);
        end else
        begin
          shoePic:=StringReplace(shoePic,'H:','\\192.168.23.11\A_DataCenter\CDC\Sales\BOM', [rfReplaceAll, rfIgnoreCase]);
          if FileExists(shoePic)=true then
          begin
            D_PSpecPrintss.QRImage1.Picture.LoadFromFile(shoePic);
            D_PSpecPrintss.QRImage2.Picture.LoadFromFile(shoePic);
            D_PSpecPrintss.QRImage3.Picture.LoadFromFile(shoePic);
          end;
        end;
        //
        D_PSpecPrintss.QRCompositeReport1.Preview;
        //
        if D_PSpecPrintss<>nil then
        begin
          D_PSpecPrintss.Free;
          D_PSpecPrintss:=nil;
        end;
      except
        showmessage('No picture of article.');
        D_PSpecPrintss.QRCompositeReport1.Preview;
      end ;
    end;
  end;
end;

procedure TShipReviseUsage.BC3Click(Sender: TObject);
begin
  if messagedlg('Delete Modify History?',mtCustom,[mbYes,mbNo], 0)=mrYes then
  begin
    with UpdateQry do //先清空存在於BomExport資料
    begin
      Active:=false;
      SQL.Clear;
      sql.Add('Delete BomExport');
      sql.add('where ZLBH='''+Query2.FieldByName('ZLBH').AsString+'''');
      execsql;
    end;
    Showmessage('OK');
  end;
end;

procedure TShipReviseUsage.BB2Click(Sender: TObject);
begin
  with Query1 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    insert;
    FieldByName('ZLBH').Value:=Edit4.Text;
    FieldByName('BWBH').Value:='ZZZZ';
    FieldByName('SIZE').Value:='ZZZZZZ';
  end;
  BB5.Enabled:=true;
  BB6.Enabled:=true;
  DBGridEh1.columns[3].ButtonStyle:=cbsEllipsis;
  DBGridEh1.columns[3].Color:=clyellow;
  KCLLSQry.Active:=false;
end;

procedure TShipReviseUsage.BB3Click(Sender: TObject);
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

procedure TShipReviseUsage.DBGridEh1EditButtonClick(Sender: TObject);
begin
  if DBGridEh1.selectedfield.fieldname='CLBH' then
  begin
    ShipRevise_CLZL:=TShipRevise_CLZL.create(self);
    ShipRevise_CLZL.ShowModal();
  end;
end;

procedure TShipReviseUsage.bbt6Click(Sender: TObject);
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
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TShipReviseUsage.BCT6Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin
  if Query2.Active then
  begin
    if Query2.recordcount=0 then
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
    for   i:=1   to   Query2.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query2.fields[i-1].FieldName;
    end;
    Query2.First;
    j:=2;
    while   not  Query2.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query2.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=Query2.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        Query2.Next;
        inc(j);
    end;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
