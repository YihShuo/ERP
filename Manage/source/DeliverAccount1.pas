unit DeliverAccount1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,dateutils,
  math,Menus, GridsEh, DBGridEh,ehlibBDE, PrnDbgeh;

type
  TDeliverAccount = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit4: TEdit;
    Button2: TButton;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1CLBH: TStringField;
    Query1CLSL: TFloatField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1Qty: TCurrencyField;
    Query1Person: TFloatField;
    Label6: TLabel;
    Edit5: TEdit;
    PopupMenu1: TPopupMenu;
    Detail1: TMenuItem;
    Query1Pairs: TIntegerField;
    Query1USPrice: TCurrencyField;
    Qtemp: TQuery;
    Query1USACC: TFloatField;
    Print1: TMenuItem;
    Query1ZWPM: TStringField;
    PrintDBGridEh1: TPrintDBGridEh;
    Label7: TLabel;
    CB1: TComboBox;
    Edit3: TEdit;
    Query1RepQty: TFloatField;
    Query1ACCRep: TFloatField;
    Panel2: TPanel;
    DBGrid2: TDBGridEh;
    Splitter1: TSplitter;
    DBGrid1: TDBGridEh;
    Query2: TQuery;
    DS2: TDataSource;
    Query2Article: TStringField;
    Query2XieMing: TStringField;
    Query2Pairs: TIntegerField;
    Query2USACC: TCurrencyField;
    Label8: TLabel;
    Edit6: TEdit;
    Query2PairUSACC: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Detail1Click(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DeliverAccount: TDeliverAccount;  
  sdate,edate:Tdate;

implementation

uses Deliveraccount_Detail1, main1, FunUnit;

{$R *.dfm}

procedure TDeliverAccount.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action:=cafree  ;
end;

procedure TDeliverAccount.Button1Click(Sender: TObject);
var y,m:word;
begin
  if (CBX2.text='')or (CBX3.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  y:=strtoint(CBX2.Text);
  m:=strtoint(CBX3.Text);
  if (y>2999) or (y<1900) then
  begin
  if y>2020 then
    begin
      showmessage('Pls contect with designer.');
      abort;
    end;
    showmessage('Pls key in right year');
    abort;
  end;
  if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  sdate:=encodedate(y,m,1);
  edate:=endofthemonth(sdate);

  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('if object_id(''tempdb..#OrdCLCWDJ'') is not null');
    sql.Add('begin   drop table #OrdCLCWDJ end');
    sql.add('select OrdCL.ZLBH,OrdCL.CLBH,OrdCL.CLSL,OrdCL.Article,OrdCL.XieMing,OrdCL.Pairs,KCLLS.Qty');
    sql.add('       ,KCLLS.USPrice,KCLLS.USACC,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH  into #OrdCLCWDJ ');
    sql.add('from(Select ZLZLS2.ZLBH,ZLZLS2.CLBH,sum(ZLZLS2.CLSL) as CLSL,XXZL.Article,XXZL.XieMing,DDZL.Pairs ');
    sql.add('     from ZLZLS2');
    sql.add('     left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    sql.add('     left join ZLZL on ZLZL.ZLBH=ZLZLS2.ZLBH');
    sql.add('     left join  DDZL on DDZL.DDBH=ZLZL.DDBH');
    sql.add('     left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH ');
    sql.add('     left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    sql.add('     where DDZL.GSBH='''+CB1.text+''' ');
    sql.add('           and ZLZLS2.CLBH like '''+edit1.Text+'%''');
    sql.add('           and CLZL.YWPM like ''%'+edit2.Text+'%''');
    sql.add('           and CLZL.YWPM like ''%'+edit3.Text+'%''');
    sql.add('           and ZLZLS2.ZLBH like '''+edit4.Text+'%''');
    sql.add('           and MJBH=''ZZZZZZZZZZ'' ');
    sql.add('           and ZLZLS2.CLSL<>0');
    sql.add('           and XXZL.XieMing like ''%'+edit5.Text+'%'' ');
    sql.add('           and DDZL.Article like '''+Edit6.Text+'%'' ');
    sql.add('        and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('     group by ZLZLS2.ZLBH,ZLZLS2.CLBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs ');
    //不在製令表裡面
    sql.add('     union all ');
    sql.add('     select KCLLS.SCBH,KCLLS.CLBH,0.0 as CLSL,XXZL.Article,XXZL.XieMing,DDZL.Pairs  ');
    sql.add('           from  KCLLS');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('           left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    sql.add('           left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao ');
    sql.add('           left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
    sql.add('           left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('           left join CWDJ on CWDJ.CLBH=KCLLS.CLBH and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLL.CFMDate)) and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLL.CFMDate)) ');
    sql.add('           left join (');
    sql.add('             select ZLZLS2.ZLBH,ZLZLS2.CLBH ');
    sql.add('             from ZLZLS2');
    sql.add('             left join CLZL on ZLZLS2.CLBH=CLZL.CLDH');
    sql.add('             left join  DDZL on DDZL.DDBH=ZLZLS2.ZLBH');
    sql.add('             left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH ');
    sql.add('             left join XXZl on XXZL.XieXing=DDZl.XieXing and XXZl.Shehao=DDZL.SheHao');
    sql.add('             where DDZL.GSBH='''+CB1.text+''' ');
    sql.add('               and ZLZLS2.CLBH like '''+edit1.Text+'%''');
    sql.add('               and CLZL.YWPM like ''%'+edit2.Text+'%''');
    sql.add('               and CLZL.YWPM like ''%'+edit3.Text+'%''');
    sql.add('               and ZLZLS2.ZLBH like '''+edit4.Text+'%''');
    sql.add('               and MJBH='''+'ZZZZZZZZZZ'' ');
    sql.add('               and ZLZLS2.CLSL<>0');
    sql.add('               and XXZL.XieMing like ''%'+edit5.Text+'%'' ');
    sql.add('           and DDZL.Article like '''+Edit6.Text+'%'' ');
    sql.add('            and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('              group by ZLZLS2.ZLBH,ZLZLS2.CLBH ) ZLZLS2 ON  ZLZLS2.ZLBH=KCLLS.SCBH  AND ZLZLS2.CLBH=KCLLS.CLBH   ');
    sql.Add('           where  KCLLS.CLBH like '''+edit1.Text+'%''');
    sql.add('                  and KCLLS.SCBH like '''+edit4.Text+'%''');
    sql.add('                  and CLZL.YWPM like ''%'+edit2.Text+'%''');
    sql.add('                  and CLZL.YWPM like ''%'+edit3.Text+'%''');
    sql.add('                  and DDZL.Article like '''+Edit6.Text+'%'' ');
    sql.add('                  and DDZL.GSBH='''+CB1.text+''' ');
    sql.add('            and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('                  and KCLL.CFMID<>''NO'' ');
    sql.add('                  and KCLL.SCBH<>''JJJJJJJJJJ'' ');
    sql.add('                  and substring(KCLL.DepId,1,1)<>''R''  ');
    sql.add('                  and KCLLS.Qty<>0');
    sql.add('                  and ZLZLS2.ZLBH is null  ');
    sql.add('           group by KCLLS.SCBH, KCLLS.CLBH,XXZL.Article,XXZL.XieMing,DDZL.Pairs ');
    //===================================================================
    sql.add(' ) OrdCL');
    sql.add('left join (select KCLLS.SCBH,KCLLS.CLBH, sum(KCLLS.Qty) as Qty, Avg(CWDJ.USPrice) as USPrice,Sum(KCLLS.Qty*CWDJ.USPrice) as USACC ');
    sql.add('           from  KCLLS');
    sql.add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('           left join DDZL on DDZL.DDBH=KCLLS.SCBH');
    sql.add('           left join SCZLDate on SCZLDate.ZLBH=DDZL.ZLBH ');
    sql.add('           left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('           left join CWDJ on CWDJ.CLBH=KCLLS.CLBH and CWDJ.DJYear=convert(varchar,datepart(yyyy,KCLL.CFMDate)) and CWDJ.DJMonth=convert(varchar,datepart(MM,KCLL.CFMDate)) ');
    sql.Add('           where  KCLLS.CLBH like '''+edit1.Text+'%''');
    sql.add('                  and KCLLS.SCBH like '''+edit4.Text+'%''');
    sql.add('                  and CLZL.YWPM like ''%'+edit2.Text+'%''');
    sql.add('                  and CLZL.YWPM like ''%'+edit3.Text+'%''');
    sql.add('                  and DDZL.Article like '''+Edit6.Text+'%'' ');
    sql.add('                  and DDZL.GSBH='''+CB1.text+''' ');
    sql.add('            and Convert(smalldatetime,convert(varchar,DDZL.Shipdate,111)) between ');
    sql.add('            '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('                  and KCLL.CFMID<>''NO'' ');
    sql.add('                  and KCLL.SCBH<>''JJJJJJJJJJ'' ');
    sql.add('                  and substring(KCLL.DepId,1,1)<>''R''  ');
    sql.add('                  and KCLLS.Qty<>0');
    sql.add('           group by KCLLS.SCBH, KCLLS.CLBH ) KCLLS  ');
    sql.add('                 on KCLLS.SCBH=OrdCL.ZLBH and KCLLS.CLBH=OrdCL.CLBH ');
    sql.add('left join CLZL on CLZL.CLDH=OrdCL.CLBH  ');
    //
    sql.add('select * from #OrdCLCWDJ  OrdCL ');
    sql.add('order by OrdCL.ZLBH,OrdCL.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  with query2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select OrdCL.Article,OrdCL.XieMing,Sum(DDZL.Pairs) as Pairs,Sum(OrdCL.USACC) as USACC ,Sum(OrdCL.USACC)/Sum(DDZL.Pairs) as PairUSACC ');
    SQL.Add('from (');
    SQL.Add('  select ZLBH,Article,XieMing,Sum(USACC) as USACC from #OrdCLCWDJ  ');
    SQL.Add('  Group by ZLBH,Article,XieMing ');
    SQL.Add(') OrdCL');
    SQL.Add('Left join DDZL on DDZL.DDBH=OrdCL.ZLBH ');
    SQL.Add('Group by OrdCL.Article,OrdCL.XieMing ');
    SQL.Add('order by OrdCL.Article,OrdCL.XieMing');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

procedure TDeliverAccount.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit2.SetFocus;
end;

procedure TDeliverAccount.Edit2KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit3.SetFocus;
end;

procedure TDeliverAccount.Edit3KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit5.SetFocus;
end;

procedure TDeliverAccount.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
    QryObj:TQuery;
begin
  if  Messagedlg(Pchar('Only export Article summary or order material detial list?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    QryObj:=Query2;
  end else
  begin
    QryObj:=Query1;
  end;
  //
  if QryObj.Active then
  begin
    if QryObj.recordcount=0 then
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
    for   i:=1   to   QryObj.fieldcount   do
    begin
        eclApp.Cells(1,i+1):=QryObj.fields[i-1].FieldName;
    end;
    QryObj.First;
    j:=2;
    while   not  QryObj.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   QryObj.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=QryObj.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        QryObj.Next;
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

procedure TDeliverAccount.Edit4KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  button1click(nil);
end;

procedure TDeliverAccount.Edit5KeyPress(Sender: TObject; var Key: Char);
begin

if key=#13 then
  edit4.SetFocus;
end;

procedure TDeliverAccount.Detail1Click(Sender: TObject);
begin
  Deliveraccount_Detail:=TDeliveraccount_Detail.create(self);
  Deliveraccount_Detail.show;
end;

procedure TDeliverAccount.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if  Query1.FieldByName('Qty').value>(Query1.FieldByName('CLSL').value)   then
  begin
    dbgrid1.canvas.font.color:=clred;
    //dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TDeliverAccount.FormDestroy(Sender: TObject);
begin
  deliveraccount:=nil;
end;

procedure TDeliverAccount.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL where YN=1 order by GSDH ');
    active:=true;
    for i:=1 to recordcount do
    begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
    end;
    CB1.Text:=main.edit2.Text;
    active:=false;
  end;

end;

procedure TDeliverAccount.Print1Click(Sender: TObject);
begin
  printdbgrideh1.preview;
end;

procedure TDeliverAccount.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
  PrintDBGridEh1.SetSubstitutes(['%[NDate]',formatdatetime('yyyy/MM/dd',date)]);
end;

procedure TDeliverAccount.Query1CalcFields(DataSet: TDataSet);
begin
  with query1 do
  begin
    if FieldByName('CLSL').value<>0 then
      begin
        FieldByName('Person').value:=FieldByName('Qty').value/FieldByName('CLSL').value*100;
      end;
    if FieldByName('CLSL').value<FieldByName('Qty').value then
      begin
        FieldByName('RepQty').value:=FieldByName('Qty').value-FieldByName('CLSL').value;
        FieldByName('ACCRep').value:=FieldByName('RepQty').value*FieldByName('USPrice').value
      end;
  end;
end;

end.
