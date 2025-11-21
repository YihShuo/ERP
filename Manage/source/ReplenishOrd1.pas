unit ReplenishOrd1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, PrnDbgeh, GridsEh, DBGridEh, StdCtrls,
  ComCtrls, ExtCtrls,comobj,dateutils,math;

type
  TReplenishOrd = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Button1: TButton;
    CBX4: TComboBox;
    DBGridEh1: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    Label4: TLabel;
    Edit2: TEdit;
    Query1DDBH: TStringField;
    Query1Article: TStringField;
    Query1XieMing: TStringField;
    Query1DaoMH: TStringField;
    Query1KFJC: TStringField;
    Query1pairs: TIntegerField;
    Query1OrderACC: TFloatField;
    Query1LLACC: TFloatField;
    Query1BLACC: TFloatField;
    Query1InQty: TIntegerField;
    Query1LLPerson: TFloatField;
    Label6: TLabel;
    Edit3: TEdit;
    CheckBox1: TCheckBox;
    Query1AvgPrice: TFloatField;
    Query1BLPerson: TFloatField;
    RB2: TRadioButton;
    BuyNoEdit: TEdit;
    RB1: TRadioButton;
    Query1BUYNO: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure DBGridEh1EditButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ReplenishOrd: TReplenishOrd;
  NDate:TDate;

implementation

uses main1, ReplenishOrd_det1, FunUnit ;

{$R *.dfm}

procedure TReplenishOrd.FormDestroy(Sender: TObject);
begin
  ReplenishOrd:=nil;
end;

procedure TReplenishOrd.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('  if object_id('+''''+'tempdb..#KCLLS'+''''+') is not null  ');
    sql.add('begin   drop table #KCLLS end   ');
    execsql;
  end;
  action:=cafree;
end;

procedure TReplenishOrd.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
    begin
        CBX4.Items.Add(fieldbyname('GSDH').asstring);
        next;
    end;
    CBX4.Text:=main.edit2.Text;
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.date:=startofthemonth(Ndate);
  DTP2.date:=Ndate;

end;

procedure TReplenishOrd.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear; 
    sql.add('if object_id(''tempdb..#KCLLS'') is not null  ');
    sql.add('begin   drop table #KCLLS end   ');
    sql.add('select KCLLS.LLNO,KCLL.DepID,KCLLS.Qty,KCLLS.BLSB,KCLLS.CLBH,KCLLS.SCBH,KCLL.CFMDate,DDZL.YN ');
    sql.add('into #KCLLS from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO');
    sql.add('left join DDZL on DDZL.ZLBH=KCLLS.SCBH ');
    sql.add('where 1=1 ');
    if RB1.Checked=true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between ');
      sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    end;
    if RB2.Checked=true then
      sql.add('and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    sql.add('      and KCLL.CFMID<>''NO'' ');
    sql.add('      and KCLLS.SCBH like '''+edit1.text+'%''');
    sql.add('      and DDZL.Article like '''+edit2.Text+'%''');
    sql.add('      and KCLLS.Qty<>0 ');
    sql.add('      and DDZL.GSBH='''+CBX4.Text+'''');
    sql.add('      and KCLL.SCBH<>''JJJJJJJJJJ'' ');
    //funcObj.WriteErrorLog(sql.Text);
    execsql;

    active:=false;
    sql.Clear;
    sql.add('select DDZL.DDBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,DDZL.pairs,');
    sql.add('       sum(DDZLS.Quantity*DDZLS.IPrice) as OrderACC,isnull(KCLLS.LLACC,0) as LLACC,');
    sql.add('       isnull(KCBLS.BLACC,0) as BLACC,isnull(YWCP.InQty,0) as InQty,DDZL.BUYNO ');
    //edit end
    sql.add('from DDZL ');
    sql.add('left join DDZLS on DDZL.DDBH=DDZLS.DDBH ');
    sql.add('left join XXZL on XXZl.XieXing=DDZl.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.add('left join KFZL on KFZL.KFDH=DDZL.KHBH ');
    sql.add('left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*CWDJ.USPrice) as LLACC');
    sql.add('           from #KCLLS ');
    sql.add('           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('           where (#KCLLS.BLSB is null or #KCLLS.BLSB<>''Y'' )');
    sql.add('           group by #KCLLS.SCBH ) KCLLS  on KCLLS.DDBH=DDZL.DDBH ');
    sql.add('left join (select #KCLLS.SCBH as DDBH,sum(#KCLLS.Qty*CWDJ.USPrice) as BLACC');
    sql.add('           from #KCLLS ');
    sql.add('           left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
    sql.add('                             and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
    sql.add('                             and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
    sql.add('           where #KCLLS.BLSB=''Y'' ');
    sql.add('           group by #KCLLS.SCBH ) KCBLS  on KCBLS.DDBH=DDZL.DDBH ');
    sql.add('left join (select YWDD.YSBH as DDBH,sum(YWCP.Qty) as InQty ');
    sql.add('           from YWCP ');
    sql.add('           left join YWDD on YWDD.DDBH=YWCP.DDBH ')  ;
    sql.add('           left join DDZL on DDZL.DDBH=YWDD.YSBH ');
    sql.add('           where YWDD.YSBH like  '''+Edit1.text+'%'' ');
    if RB1.Checked=true then
    begin
      sql.add('         and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between');
      sql.add('         '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    end;
    if RB2.Checked=true then
      sql.add('         and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    sql.add('           group by YWDD.YSBH )YWCP on YWCP.DDBH=DDZL.DDBH');
    sql.add('where 1=1 ');
    if RB1.Checked=true then
    begin
      sql.add('and convert(smalldatetime,convert(varchar,DDZL.ShipDate,111)) between');
      sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    end;
    if RB2.Checked=true then
      sql.add('         and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    sql.add('      and DDZL.DDBH like '''+edit1.text+'%'' ');
    sql.add('      and XXZL.Article like '''+edit2.Text+'%'' ');
    sql.add('      and DDZL.GSBH='''+CBX4.Text+''' ');
    sql.add('      and KFZL.KFJC like '''+edit3.text+'%'' ');
    sql.add('group by  DDZL.DDBH,XXZl.Article,XXZL.XieMing,XXZL.DaoMH,KFZL.KFJC,DDZL.pairs,KCLLS.LLACC,KCBLS.BLACC,YWCP.InQty,DDZL.BUYNO ');
    if  checkbox1.Checked then
    begin
      sql.add('        having  isnull(YWCP.InQty,0)=DDZL.Pairs ');
    end;
    sql.add('order by DDZl.DDBH ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TReplenishOrd.Query1CalcFields(DataSet: TDataSet);
begin

  if query1.FieldByName('OrderACC').value<>0 then
  begin
    query1.FieldByName('LLPerson').value:=(query1.FieldByName('LLACC').value+query1.FieldByName('BLACC').value)/query1.FieldByName('OrderACC').value*100;
  end else
    query1.FieldByName('LLPerson').value:=0;
  if (query1.FieldByName('LLACC').value+query1.FieldByName('BLACC').value)<>0 then
  begin
    query1.FieldByName('BLPerson').value:=query1.FieldByName('BLACC').value/(query1.FieldByName('LLACC').value+query1.FieldByName('BLACC').value)*100;
  end else
    query1.FieldByName('BLPerson').value:=0;
  query1.FieldByName('AvgPrice').value:=query1.FieldByName('OrderACC').value/query1.FieldByName('Pairs').value;

end;

procedure TReplenishOrd.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if query1.Active then
  begin
    if query1.recordcount=0 then
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
    for   i:=1   to   query1.fieldcount   do
    begin
     eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   query1.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        query1.Next;
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

procedure TReplenishOrd.Print1Click(Sender: TObject);
begin
  printdbgrideh1.Preview;
end;

procedure TReplenishOrd.DBGridEh1EditButtonClick(Sender: TObject);
begin
  ReplenishOrd_det:=TReplenishOrd_det.create(self);
  if ((dbgrideh1.selectedfield.fieldname='pairs') or (dbgrideh1.selectedfield.fieldname='AvgPrice') or (dbgrideh1.selectedfield.fieldname='OrderACC')) then
  begin
    with ReplenishOrd_det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select DDZLS.DDBH,ZLZLS.ZLCC as OrdSize,ZLZLS.XXCC as ModCC,round(DDZLS.Quantity,0) as Qty,');
        sql.add('       round(DDZLS.IPrice,4) as IPrice,round(DDZLS.Quantity*DDZLS.IPrice,2) as ACC');
        sql.add('from DDZLS ');
        sql.add('left join ZLZLS on ZLZLS.ZLBH=DDZLS.DDBH and ZLZLS.ZLCC=DDZLS.CC');
        sql.add('where DDZLS.DDBH=:DDBH ');
        sql.add('order by ZLZLS.ZLCC ');
        active:=true;
      end;
  end;
  if dbgrideh1.selectedfield.fieldname='InQty' then
  begin
    with ReplenishOrd_det.Query1 do
    begin
        active:=false;
        sql.Clear;
        sql.add('select CartonBar,Qty,SB');
        sql.add('from YWCP ');
        sql.add('where DDBH=:DDBH');
        sql.add('      and InDate is not null ');
        sql.add('order by CartonBar ');
        active:=true;
    end;
  end;
  if dbgrideh1.selectedfield.fieldname='LLACC' then
  begin
    with ReplenishOrd_det.Query1 do
      begin
        active:=false;
        sql.Clear;
        sql.add('select #KCLLS.LLNO,#KCLLS.CLBH,#KCLLS.CFMDate,#KCLLS.Qty,');
        sql.add('       round(CWDJ.USPrice,4) as USPrice,round(#KCLLS.Qty*CWDJ.USPrice,2) as LLACC');
        sql.add('from #KCLLS '); 
        sql.add('left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
        sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
        sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
        sql.add('where (#KCLLS.BLSB is null or #KCLLS.BLSB<>'+''''+'Y'+''''+')');  
        sql.add('      and #KCLLS.SCBH=:DDBH ');
        sql.add('order by #KCLLS.LLNO ');
        active:=true;  
        ReplenishOrd_det.DBGrideh1.columns[2].displayformat:='yyyy/MM/dd';
        ReplenishOrd_det.DBGrideh1.columns[3].displayformat:='##,#0.00';
        ReplenishOrd_det.DBGrideh1.columns[4].displayformat:='##,#0.0000';
        ReplenishOrd_det.DBGrideh1.columns[5].displayformat:='##,#0.00';
      end;
  end;  
  if dbgrideh1.selectedfield.fieldname='BLACC' then
  begin
    with ReplenishOrd_det.Query1 do
    begin
        active:=false;
        sql.Clear;
        sql.add('select #KCLLS.LLNO,#KCLLS.CLBH,#KCLLS.CFMDate,#KCLLS.Qty,');
        sql.add('       round(CWDJ.USPrice,3) USPrice,round(#KCLLS.Qty*CWDJ.USPrice,2) as LLACC,YWSM, KCLLS.SCBH');
        sql.add('from #KCLLS ');
        sql.add('left join CWDJ on CWDJ.CLBH=#KCLLS.CLBH ');
        sql.add('                  and CWDJ.DJYear=convert(varchar,datepart(yyyy,#KCLLS.CFMDate)) ');
        sql.add('                  and CWDJ.DJMonth=convert(varchar,datepart(MM,#KCLLS.CFMDate)) ');
        sql.Add('left join kclls on #KCLLS.LLNO=kclls.LLNO and #KCLLS.CLBH=kclls.CLBH and #KCLLS.SCBH=KCLLS.SCBH');
        sql.Add('left join SCBLYY on kclls.YYBH=SCBLYY.YYBH');
        sql.add('where #KCLLS.BLSB=''Y'' ');
        sql.add('      and #KCLLS.SCBH=:DDBH ');
        sql.add('order by #KCLLS.LLNO ');
        //funcobj.WriteErrorLog(sql.Text);
        active:=true;
        ReplenishOrd_det.DBGrideh1.columns[2].displayformat:='yyyy/MM/dd';
        ReplenishOrd_det.DBGrideh1.columns[3].displayformat:='##,#0.00';
        ReplenishOrd_det.DBGrideh1.columns[4].displayformat:='##,#0.0000';
        ReplenishOrd_det.DBGrideh1.columns[5].displayformat:='##,#0.00';
        ReplenishOrd_det.DBGrideh1.columns[6].Width:=120;
    end;
  end;
  ReplenishOrd_det.show;
end;

end.
