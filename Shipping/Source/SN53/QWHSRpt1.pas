unit QWHSRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, GridsEh, DBGridEh, DBTables, ExtCtrls, ComCtrls, Comobj;

type
  TQWHSRpt = class(TForm)
    Panel1: TPanel;
    QWHSQry: TQuery;
    DS1: TDataSource;
    DBGridEh1: TDBGridEh;
    Button1: TButton;
    QWHSQryDDZT: TStringField;
    QWHSQryzsywjc: TStringField;
    QWHSQryCGNO: TStringField;
    QWHSQryZLBH: TStringField;
    QWHSQryArticle: TStringField;
    QWHSQryBUYNO: TStringField;
    QWHSQryCLBH: TStringField;
    QWHSQryYWPM: TStringField;
    QWHSQryZWPM: TStringField;
    QWHSQryDWBH: TStringField;
    QWHSQryCLSL: TFloatField;
    QWHSQryusprice: TFloatField;
    QWHSQryvnprice: TCurrencyField;
    QWHSQryCGQty: TCurrencyField;
    QWHSQryUseStock: TCurrencyField;
    QWHSQryUseYG: TCurrencyField;
    QWHSQryDiff: TFloatField;
    QWHSQryCLSL105: TFloatField;
    QWHSQryRKQty: TCurrencyField;
    QWHSQryShipDest: TStringField;
    QWHSQryXieMing: TStringField;
    QWHSQryCountry: TStringField;
    QWHSQryShipDate: TDateTimeField;
    QWHSQrySize: TStringField;
    QWHSQryGENDER: TStringField;
    QWHSQrySTNO: TStringField;
    QWHSQryHQNO: TStringField;
    QWHSQryPairs: TIntegerField;
    QWHSQryCQDH: TStringField;
    Button2: TButton;
    Label8: TLabel;
    zsywjcEdit: TEdit;
    CheckBox1: TCheckBox;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label4: TLabel;
    Label1: TLabel;
    ZLBHEdit: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ArticleEdit: TEdit;
    BuyNoEdit: TEdit;
    Label5: TLabel;
    CLBHEdit: TEdit;
    Label6: TLabel;
    CGNOEdit: TEdit;
    Label7: TLabel;
    STNOEdit: TEdit;
    Label9: TLabel;
    HQNOEdit: TEdit;
    Label10: TLabel;
    CGUserIDEdit: TEdit;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QWHSRpt: TQWHSRpt;

implementation
  uses main1, FunUnit;
{$R *.dfm}

procedure TQWHSRpt.FormDestroy(Sender: TObject);
begin
  QWHSRpt:=nil;
end;

procedure TQWHSRpt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TQWHSRpt.Button1Click(Sender: TObject);
begin
  //
  with QWHSQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select ZLZLS2.* from ( ');
    SQL.Add('select  DDZLTW.DDZT,Max(zszl.zsywjc) as zsywjc,CGZL.CGNO,ZLZLS2.ZLBH,XXZL.Article,isnull(DDZLTW.BUYNO,0) as BUYNO,ZLZLS2.CLBH,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,');
    SQL.Add('        isnull(sum(ZLZLS2.CLSL),0) as CLSL,isnull(rkzl.usprice,CGZL.USPrice) as usprice,isnull(rkzl.vnprice,CGZL.VNPrice) as vnprice,isnull(CGZL.CGQty,0) as CGQty,   ');
    SQL.Add('		isnull(CGKCUSE.Qty,0) as UseStock,isnull(CGYGUSE.Qty,0) as UseYG,isnull(sum(ZLZLS2.CLSL),0)- isnull(CGZL.CGQty,0) -isnull(CGKCUSE.Qty,0) -isnull(CGYGUSE.Qty,0)  as Diff, ');
    SQL.Add('        case when CLZL.DWBH<>''PRS'' then isnull(sum(ZLZLS2.CLSL),0)*1.05 else isnull(sum(ZLZLS2.CLSL),0) end as CLSL105,');
    SQL.Add('		RKZL.RKQty,lbzls.ywsm as ShipDest,XXZL.XieMing,lbzls.ywsm as Country,DDZL.ShipDate,DDZLS.Size,XXZL.GENDER,BY_QWHS2.STNO,BY_QWHS2.HQNO,DDZL.Pairs,CLZL.CQDH');
    SQL.Add('      ');
    SQL.Add('from  (');
    SQL.Add('  Select BY_QWHS2.ZLBH,BY_QWHS2.CLBH,Max(BY_QWHS2.STNO) as STNO,Max(BY_QWHS2.HQNO) as HQNO ');
    SQL.Add('  from BY_QWHS,BY_QWHS2 where BY_QWHS.STNO=BY_QWHS2.STNO  ');
    SQL.Add('        and BY_QWHS2.ZLBH like '''+ZLBHEdit.Text+'%'' ');
    if CGNOEdit.Text<>'' then
    SQL.Add('        and BY_QWHS2.CGNO like '''+CGNOEdit.Text+'%'' ');
    if CGUserIDEdit.Text<>'' then
    SQL.Add('        and BY_QWHS.CGNO in (Select CGNO from CGZL where UserID= '''+CGUserIDEdit.Text+''' Group by CGNO) ');
    if CLBHEdit.Text<>'' then
    SQL.Add('        and BY_QWHS2.CLBH like '''+CLBHEdit.Text+'%'' ');
    if BuyNoEdit.Text<>'' then
    SQL.Add('        and BY_QWHS2.ZLBH in (Select DDBH from DDZL where DDZL.GSBH='''+main.Edit2.Text+''' and BUYNO like '''+BuyNoEdit.Text+'%'') ');
    if CheckBox1.Checked=true then
    begin
    SQL.Add('        and BY_QWHS2.CGNO in (Select  CGNO from CGZL where CGZL.GSBH='''+main.Edit2.Text+''' ');
    SQL.add('                              and convert(smalldatetime,convert(varchar,CGZL.USERDATE,111))  between ');
    SQL.add('                              '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +''')');
    end;
    if STNOEdit.Text<>'' then
    SQL.Add('        and BY_QWHS2.STNO like '''+STNOEdit.Text+'%'' ');
    if HQNOEdit.Text<>'' then
    SQL.Add('        and BY_QWHS2.HQNO like '''+HQNOEdit.Text+'%'' ');
    SQL.Add('        Group by BY_QWHS2.ZLBH,BY_QWHS2.CLBH)  BY_QWHS2 ');
    SQL.Add('inner join ZLZLS2 with (nolock)   on BY_QWHS2.ZLBH=ZLZLS2.ZLBH and BY_QWHS2.CLBH=ZLZLS2.CLBH');
    SQL.Add('left join DDZl  with (nolock) on DDZl.DDBH=BY_QWHS2.ZLBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDBH  like '''+ZLBHEdit.Text+'%'' ');
    SQL.Add('left join (select DDBH,Min(CC)+''-''+Max(CC) as Size from DDZLS where DDBH like '''+ZLBHEdit.Text+'%'' Group by DDBH ) DDZLS on DDZLS.DDBH=BY_QWHS2.ZLBH');
    SQL.Add('left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH');
    SQL.Add('left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH ');
    SQL.Add('left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH ');
    SQL.Add('left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH');
    SQL.Add('left join ( ');
    SQL.Add('           Select CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH,Sum(CGKCUSES.Qty) as Qty  from CGKCUSES with (nolock)');
    SQL.Add('           where CGKCUSES.GSBH='''+main.Edit2.Text+'''');
    if CLBHEdit.Text<>'' then
    SQL.Add('                 and CGKCUSES.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('           Group by CGKCUSES.GSBH,CGKCUSES.ZLBH,CGKCUSES.CLBH) CGKCUSE  on CGKCUSE.ZLBH=ZLZLS2.ZLBH and CGKCUSE.CLBH=ZLZLS2.CLBH and CGKCUSE.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join ( ');
    SQL.Add('           Select CGYGUSES.GSBH,CGYGUSES.ZLBH,CGYGUSES.CLBH,Sum(CGYGUSES.Qty) as Qty  from CGYGUSES with (nolock)');
    if CLBHEdit.Text<>'' then
    SQL.Add('                 and CGYGUSES.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('           where CGYGUSES.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('           Group by CGYGUSES.GSBH,CGYGUSES.ZLBH,CGYGUSES.CLBH) CGYGUSE  on CGYGUSE.ZLBH=ZLZLS2.ZLBH and CGYGUSE.CLBH=ZLZLS2.CLBH and CGYGUSE.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao');
    SQL.Add('left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
    SQL.Add('left join (select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,');
    SQL.Add('                  max(CGZLSS.CFMDate) as CFMDate,max(CGZL.CGDate) as CGDate,');
    SQL.Add('                  max(CGZL.CGNO) as CGNO,max(CGZLSS.YQDate) as YQDate,max(CGZLS.USPrice) as USPrice,max(CGZLS.VNPrice) as VNPrice ');
    SQL.Add('           from CGZLSS with (nolock) ');
    SQL.Add('           inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH and DDZL.GSBH='''+main.Edit2.Text+''' and DDZL.DDBH  like '''+ZLBHEdit.Text+'%'' ');
    SQL.Add('           left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH ');
    SQL.Add('           left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CGNO');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and CGZLSS.ZLBH  like '''+ZLBHEdit.Text+'%'' ');
    if CLBHEdit.Text<>'' then
    SQL.Add('                 and CGZLSS.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('           group by CGZLSS.ZLBH,CGZLSS.CLBH  ) CGZL');
    SQL.Add('                 on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH');
    SQL.Add('left join (select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, ');
    SQL.Add('                  max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    SQL.Add('                  max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ');
    SQL.Add('           from  KCRKS with (nolock)  ');
    SQL.Add('           inner join DDZL on DDZL.DDBH=KCRKS.CGBH and DDZL.GSBH=''VA12'' and DDZL.DDBH  like '''+ZLBHEdit.Text+'%'' ');
    SQL.Add('           left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO ');
    SQL.Add('           where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('                 and KCRKS.CGBH  like '''+ZLBHEdit.Text+'%'' ');
    if CLBHEdit.Text<>'' then
    SQL.Add('                 and KCRKS.CLBH like '''+CLBHEdit.Text+'%'' ');
    SQL.Add('           group by KCRKS.CGBH,KCRKS.CLBH ) RKZL');
    SQL.Add('                 on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
    SQL.Add('left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh  ');
    SQL.Add('       where DDZL.GSBH='''+main.Edit2.Text+'''');
    SQL.Add('       and ZLZLS2.ZLBH like '''+ZLBHEdit.Text+'%'' ');
    SQL.Add('       and ZLZLS2.CLBH not like ''W%''');
    SQL.Add('       and ZLZLS2.ZMLB=''N''');
    if ArticleEdit.Text<>'' then
    SQL.Add('       and XXZL.Article ''%'+ArticleEdit.Text+'%'' ');
    if zsywjcEdit.Text<>'' then
    SQL.Add('       and ZSZL.ZSYWJC like ''%'+zsywjcEdit.Text+'%'' ');
    SQL.Add('group by DDZlTW.BUYNO,ZLZLS2.ZLBH,DDZLTW.DDZT,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,CLZL.ZWPM,');
    SQL.Add('         XXZL.Article,XXZL.XieMing,DDZL.Pairs,CGKCUSE.Qty,CGYGUSE.Qty,CGZl.CGQty,CGZL.CGNO,RKZL.RKQty,DDZL.ShipDate,DDZLS.Size, ');
    SQL.Add('         rkzl.USPrice,rkzl.VNPrice,CGZL.USPrice,CGZL.VNPrice,lbzls.ywsm,XXZL.GENDER,BY_QWHS2.STNO,BY_QWHS2.HQNO,CLZL.CQDH');
    SQL.Add(') ZLZLS2   ');
    SQL.Add('where 1=1 ');
    SQL.Add('order by ZLZLS2.ZLBH,ZLZLS2.CQDH,ZLZLS2.CLBH ');
    //FuncObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;

procedure TQWHSRpt.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-3;
  DTP2.date:=date;
end;

procedure TQWHSRpt.Button2Click(Sender: TObject);
var i,j:integer;
    eclApp,WorkBook,Sheet:olevariant;
begin

  if QWHSQry.Active then
  begin
    if QWHSQry.recordcount=0 then
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
    //eclApp.Cells(1,1):='';
    for   i:=1   to   QWHSQry.fieldcount   do
    begin
      eclApp.Cells(1,i):=DBGridEh1.Columns[i-1].Title.Caption;
    end;
    QWHSQry.First;
    j:=2;
    while   not  QWHSQry.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   QWHSQry.fieldcount   do
      begin
        eclApp.Cells(j,i):=QWHSQry.Fields[i-1].Value;
      end;
      QWHSQry.Next;
      inc(j);
    end;
    sheet := WorkBook.sheets[1];
    eclApp.Range[sheet.Cells[1,1],sheet.Cells[j,QWHSQry.fieldcount]].Borders[4].LineStyle := 1;
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
  //
end;

end.
