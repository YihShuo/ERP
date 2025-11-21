unit Traceability_Extra1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,IniFiles;

type
  TTraceability_Extra = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MatNoEdit: TEdit;
    Button1: TButton;
    MatNameEdit: TEdit;
    Button3: TButton;
    BuyNoEdit: TEdit;
    RYEdit: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1ZLBH: TStringField;
    Query1Pairs: TIntegerField;
    Query1article: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CLSL: TFloatField;
    Query1VN_Supplier: TStringField;
    Query1JGNO: TStringField;
    Query1JGdate: TDateTimeField;
    Query1CFMdate1: TDateTimeField;
    Query1KCBH: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1depname: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Traceability_Extra: TTraceability_Extra;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TTraceability_Extra.Button1Click(Sender: TObject);
var InputIsOk:boolean;
    DDZL_SubSQL:String;
begin
  InputIsOk:=false;
  if length(RYEdit.Text)>=5 then InputIsOk:=true;
  if length(BuyNoEdit.Text)>=4 then InputIsOk:=true;
  if InputIsOk=false then
  begin
    Showmessage('Input OrderNo(5) '+#13#10+'Input BuyNo(4)');
    abort;
  end;
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('  select ZLZLS2.ZLBH,DDZL.Pairs,ddzl.article,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,case when (DDZLTW.DDZT<>''C'' and isnull(SCZL.IsKCLLS,'''')<>''N'') then isnull(sum(ZLZLS2.CLSL),0) else 0 end as CLSL  ');
    SQL.Add('  ,ZSZL_DEV.ZSYWJC as VN_Supplier,JGZL.JGNO,JGZL.JGdate,JGZL.CFMdate1,KCZLS.KCBH,KCLL.CFMDate,bdepartment.depname  ');
    SQL.Add('  from ZLZLS2   ');
    SQL.Add('  left join (select JGZLSS.JGNO,JGZLSS.ZLBH,JGZLSS.CLBH,sum(JGZLSS.Qty) as okQty,JGZL.JGdate,JGZL.CFMdate1,JGZL.CKBH from JGZLSS  ');
    SQL.Add('  		  left join JGZL on JGZL.JGNO = JGZLSS.JGNO  ');
    SQL.Add('  		  left join CLZL on CLZL.CLDH=JGZLSS.CLBH  ');
    SQL.Add('            left join DDZl on DDZl.DDBH=JGZLSS.ZLBH  ');
    SQL.Add('            left join ZLZL on ZLZL.ZLBH=JGZLSS.ZLBH  ');
    SQL.Add('            where 1=1                                   ');
    if MatNoEdit.Text <> '' then
      sql.Add('           and JGZLSS.CLBH like '''+MatNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add('           and JGZLSS.ZLBH  like '''+RYEdit.Text+'%'' ');
    if MatNameEdit.Text <> '' then
      sql.Add(' and CLZL.YWPM like ''%'+ MatNameEdit.Text+'%'' ');
    if BuyNoEdit.Text <>'' then
      sql.Add('  		      and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    SQL.Add('            and DDZL.GSBH='''+main.edit2.Text+'''  ');
    SQL.Add('            group by  JGZLSS.JGNO,JGZLSS.ZLBH,JGZLSS.CLBH,JGZL.JGdate,JGZL.CFMdate1,JGZL.CKBH ) JGZL on JGZL.CLBH=ZLZLS2.CLBH and JGZL.ZLBH=ZLZLS2.ZLBH  ');
    SQL.Add('  left join (select KCLLS.SCBH,KCLLS.CLBH,max(KCLL.CFMDate) CFMDate  ');
    SQL.Add('  	          from KCLLS with (nolock) left join KCLL with (nolock)  on KCLL.LLNO=KCLLS.LLNO   ');
    SQL.Add('  		        inner join DDZL on DDZL.DDBH=KCLLS.SCBH');
    SQL.Add('  		        where KCLL.GSBH='''+main.edit2.Text+''' and KCLL.CFMID<>''NO'' ');
    if BuyNoEdit.Text <>'' then
      sql.Add('  		      and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add('           and KCLLS.SCBH  like '''+RYEdit.Text+'%'' ');

    SQL.Add('              group by  KCLLS.SCBH,KCLLS.CLBH) KCLL  on KCLL.SCBH=ZLZLS2.ZLBH and KCLL.CLBH=ZLZLS2.CLBH   ');
    SQL.Add('  left join CLZL on CLZL.CLDH=ZLZLs2.CLBH  ');
    SQL.Add('  left join DDZl on DDZl.DDBH=ZLZLS2.ZLBH  ');
    SQL.Add('  left join DDZlTW on DDZlTW.DDBH=ZLZLS2.ZLBH  ');
    SQL.Add('  left join SCZL on SCZL.SCBH=ZLZLS2.ZLBH  ');
    SQL.Add('  left join SCZLDate on SCZLDate.ZLBH=ZLZLS2.ZLBH  ');
    SQL.Add('  left join bdepartment on bdepartment.id=SCZLDate.Assemble  ');
    SQL.Add('  left join KCZLS on KCZLS.CLBH=ZLZLS2.CLBH and KCZLS.CKBH=JGZL.CKBH  ');
    SQL.Add('  Left JOIN ( SELECT ZSZL_DEV.ZSDH,ZSZL_DEV.ZSDH_TW,ZSZL.ZSYWJC as ZSYWJC  ');
    SQL.Add('  		        FROM ZSZL LEFT JOIN ZSZL_DEV ON ZSZL.ZSDH=ZSZL_DEV.ZSDH_TW and ZSZL_DEV.GSBH='''+main.edit2.Text+''') ZSZL_DEV  ');
    SQL.Add('  on ZLZLS2.CSBH=ZSZL_DEV.ZSDH  ');
    SQL.Add('  where  1=1  ');
    if MatNoEdit.Text <> '' then
      sql.Add('           and ZLZLS2.CLBH like '''+MatNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add('           and ZLZLS2.ZLBH  like '''+RYEdit.Text+'%'' ');
    if MatNameEdit.Text <> '' then
      sql.Add(' and CLZL.YWPM like ''%'+ MatNameEdit.Text+'%'' ');
    if BuyNoEdit.Text <>'' then
      sql.Add('  		      and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    SQL.Add('  and DDZL.GSBH='''+main.edit2.Text+'''');
    SQL.Add('  and ZLZLS2.ZMLB=''Y''  ');
    SQL.Add('  and JGZL.okQty<>0  ');
    SQL.Add('  group by ZLZLS2.ZLBH,DDZL.Pairs,ddzl.article,ZLZLS2.CLBH,CLZL.YWPM,CLZL.DWBH,DDZLTW.DDZT,SCZL.IsKCLLS  ');
    SQL.Add('  ,ZSZL_DEV.ZSYWJC,JGZL.JGNO,JGZL.JGdate,JGZL.CFMdate1,KCZLS.KCBH,KCLL.CFMDate,bdepartment.depname  ');
    SQL.Add('  order by ZLZLS2.ZLBH  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;
procedure TTraceability_Extra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTraceability_Extra.FormDestroy(Sender: TObject);
begin
  Traceability_Extra:=nil;
end;

procedure TTraceability_Extra.Button3Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,l:integer;
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
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        if DBGridEh1.Fields[i].FieldName = 'CFMdate1' then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
        if DBGridEh1.Fields[i].FieldName = 'JGdate' then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
        if DBGridEh1.Fields[i].FieldName = 'CFMDate' then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
      inc(j);
      // outline
      for l:=1 to 4 do
      begin
       eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
      end;
    end;
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
