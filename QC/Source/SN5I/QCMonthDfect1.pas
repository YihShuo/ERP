unit QCMonthDfect1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,DateUtils,
  DBClient, Provider,ComObj;

type
  TQCMonthDefect = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DS1: TDataSource;
    QReport: TQuery;
    Query1: TQuery;
    LbLines: TListBox;
    Label2: TLabel;
    CbArticle: TComboBox;
    Label4: TLabel;
    LbArticle: TListBox;
    CbSku: TComboBox;
    Label5: TLabel;
    LbSku: TListBox;
    QXiming: TQuery;
    QArticle: TQuery;
    EtSKU: TEdit;
    EtArticle: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DTP1Change(Sender: TObject);
    procedure CbArticleDblClick(Sender: TObject);
    procedure SkuItems();
    procedure ArticleItems();
    procedure LbLinesClick(Sender: TObject);
    function ResultSQLParamt():string;
    procedure EtSKUExit(Sender: TObject);
    procedure EtArticleExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCMonthDefect: TQCMonthDefect;
const GXLB ='AR';
implementation

uses main1;

{$R *.dfm}

procedure TQCMonthDefect.Button1Click(Sender: TObject);
var
  tmp: TField;
  fieldcounts,rows,columns,Xlscolumns,XlsRows,rowsSum,columnsSum,tmpTotal,AllRowsSum,i:Integer;
  daysarray:array of array of integer;
  colmuTotal:array of integer;
  i2,parma,xlsfield:string;
  eclApp, WorkBook: olevariant;
begin
  rows:=0;
  //取得當月天數
  fieldcounts:=DaysInAMonth(YearOf(DTP1.Date),MonthOf(DTP1.Date));
  parma:=ResultSQLParamt();
  //當月瑕疵列表
  with Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT YYBH,(SELECT top 1 YWSM FROM QCBLYY where YYBH =  a.YYBH) YWSM,SUM(Qty) AS Qty  FROM ');
    SQL.Add('(SELECT b.YYBH,SUM(Qty) AS Qty FROM QCRD b ');
    SQL.Add('inner JOIN QCR a ON b.ProNo = a.ProNo ');
    SQL.Add('inner JOIN BDepartment ON a.DepNo = BDepartment.ID ');
    SQL.Add('where a.GXLB= :GXLB AND datediff(month,a.SCDate,:ST)=0 '+parma);
    SQL.Add('GROUP BY b.YYBH) a GROUP BY YYBH order by Qty desc');
    ParamByName('ST').Value:=DateToStr(DTP1.Date);
    ParamByName('GXLB').AsString :=GXLB;
    Active:=true;
  end;
  SetLength(daysarray,Query1.RecordCount+1,fieldcounts);
  SetLength(colmuTotal,fieldcounts);

  with QReport do
  begin
//當月每日檢查總數
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT a.SCDate,isnull(sum([Qty]),0)+isnull(sum([NGQty]),0) SumQty FROM [WOPR] a ');
    SQL.Add('inner join DDZL c on a.SCBH=c.DDBH ');
    SQL.Add('inner join BDepartment b on a.DepNo=b.ID ');
    SQL.Add('where a.GXLB= :GXLB AND datediff(month,a.SCDate,:ST)=0 '+parma);
    SQL.Add('GROUP BY SCDate order by SCDate ');
    ParamByName('ST').Value:=DateToStr(DTP1.Date);
    ParamByName('GXLB').AsString :=GXLB;
    Active:=true;
  end;

  while not QReport.Eof do
  begin
    columns :=DayOf(QReport.Fields[0].AsDateTime)-1;
    daysarray[0][columns]:= QReport.Fields[1].AsInteger;
    QReport.Next;
  end;

  rows:=1;
  while not Query1.Eof do
  begin
    //取得每日瑕疵數量
    with QReport do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('SELECT a.SCDate,SUM(Qty) AS Qty FROM QCR a ');
      SQL.Add('inner JOIN QCRD ON QCRD.ProNo = a.ProNo ');
      SQL.Add('inner join BDepartment b on a.DepNo=b.ID ');
      SQL.Add('inner join DDZL c on a.SCBH=c.DDBH ');
      SQL.Add('where a.GXLB= :GXLB AND datediff(month,a.SCDate,:ST)=0 AND QCRD.YYBH=:YYBH '+parma);
      SQL.Add('GROUP BY a.SCDate order by a.SCDate');
      ParamByName('YYBH').Value:= Query1.Fields[0].AsString;
      ParamByName('ST').Value:=DateToStr(DTP1.Date);
      ParamByName('GXLB').Value:= GXLB;

      Active:=true;
    end;
    while not QReport.Eof do
    begin
        columns :=DayOf(QReport.Fields[0].AsDateTime)-1;
        daysarray[rows][columns]:= QReport.Fields[1].AsInteger;
        QReport.Next;
    end;
    inc(rows);
    Query1.Next;
  end;

  //--------------------------------------------------------------顯示結果
  i2:='All';
  if LbLines.SelCount>0 then
  begin
    for i:=0 To LbLines.Count-1 Do
    begin
      if LbLines.Selected[i] then
        i2:=i2+ LbLines.Items[i]+',';
    end;
  end;
  Delete(i2,length(i2),1);
  (*ShowMessage('Source Excel file.');
  try
    OpenDialog1.InitialDir:='c:\';
    OpenDialog1.Filter:='Excel |*.xlsx|*.xls';
    if OpenDialog1.Execute() then
    xlsfield:=OpenDialog1.FileName;
  finally
    OpenDialog1.Free;
  end;
   *)
  eclApp := CreateOleObject('Excel.Application');
  WorkBook := CreateOleObject('Excel.Sheet');
  eclApp.WorkBooks.Open('C:\tmp\mywork.xlsx');
  eclApp.WorkSheets[1].Activate;
  eclApp.Cells[4,4].Value :='廠別';
  eclApp.Cells[5,4].Value :=i2;
  eclApp.Cells[5,14].Value :=main.Edit2.Text;
  eclApp.Cells[5,16].Value :=FormatDateTime('yyyyMM', DTP1.Date);
  //寫入總數
  columns:=4;
  for i:=0 to length(daysarray[0])-1 do
  begin
      eclApp.Cells[7,columns]:=daysarray[0][i];
      inc(columns);
  end;

  //---------寫入瑕疵數-------------------------
  //插入瑕疵Row數
  for rows:=1 To length(daysarray)-1 do
    eclApp.Rows[8].Insert;

  Xlscolumns:=4;
  columns:=2;
  XlsRows:=8;
  rows:=1;
  columnsSum:=0;
  Query1.First;
  while not Query1.Eof do
  begin
    rowsSum:=0;
    eclApp.Cells[XlsRows,3].Value:=Query1.Fields[1].AsString; //瑕疵標題
    for i:=0 to length(daysarray[0])-1 do //瑕疵數量
    begin
      eclApp.Cells[XlsRows,Xlscolumns+i].Value:=daysarray[rows][i];
      rowsSum:=rowsSum+daysarray[rows][i];
      colmuTotal[i]:=colmuTotal[i]+daysarray[rows][i];
    end;
    eclApp.Cells[XlsRows,35].Value:= rowsSum;
    AllRowsSum:=AllRowsSum+rowsSum;
    Query1.Next;
    inc(XlsRows);
    inc(rows);
  end;

  //Columus Sum
  inc(XlsRows);
  for i:=0 to length(daysarray[0])-1 do //瑕疵數量
    eclApp.Cells[XlsRows,Xlscolumns+i].Value:=colmuTotal[i];
  eclApp.Cells[XlsRows,35].Value:=AllRowsSum;
  //顯示結果
  ShowMessage('Succeed');
  //eclapp.Columns.Autofit;
  eclApp.Visible := True;
end;

procedure TQCMonthDefect.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QCMonthDefect:=nil;
  Action:=Cafree;
end;

procedure TQCMonthDefect.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date;
  LbLines.Clear;
  with Query1 do
  begin
    Active:=false;
    Sql.Clear;
    Sql.Add('select distinct DepName from WOPR a ');
    Sql.Add('inner join BDepartment b on a.DepNo=b.ID ');
    Sql.Add('where a.GXLB= :GXLB and datediff(month,a.SCDate,:ST)=0');
    ParamByName('ST').AsString :=DateToStr(DTP1.Date);
    ParamByName('GXLB').AsString :=GXLB;
    Active:=true;
    while Not Eof do
    begin
     LbLines.Items.Add(Fields[0].AsString );
     Next;
    end;
  end;
  SkuItems();
  ArticleItems();
end;

procedure TQCMonthDefect.DTP1Change(Sender: TObject);
begin
  SkuItems();
  ArticleItems();
end;

procedure TQCMonthDefect.SkuItems();
var param :string ;
begin
  if length(EtSKU.Text)>1 then
    param :=' AND XieMing LIKE ''%'+EtSKU.Text+'%''';
  CbSku.Clear;
  with Query1 do
    begin
    Active:=false;
    Sql.Clear;
    Sql.Add('SELECT distinct d.XieMing FROM [WOPR] a ');
    Sql.Add('inner join DDZL c on a.SCBH=c.DDBH ');
    Sql.Add('inner join [xxzl] d on c.XieXing=d.XieXing ');
    Sql.Add('where GXLB= :GXLB AND datediff(month,a.SCDate,:ST)=0' +param);
    ParamByName('ST').AsString :=DateToStr(DTP1.Date);
    ParamByName('GXLB').AsString :=GXLB;
    Active:=true;
    end;
    while Not Query1.Eof do
    begin
     CbSku.Items.Add(Query1.Fields[0].AsString );
     Query1.Next;
    end;
end;

procedure TQCMonthDefect.ArticleItems();
var param :string ;
begin
  if EtArticle.Text<>'' then
    param :=' AND ARTICLE LIKE ''%'+EtArticle.Text+'%''';
  CbArticle.Clear;
  with Query1 do
    begin
    Active:=false;
    Sql.Clear;
    Sql.Add('SELECT distinct ARTICLE FROM [WOPR] a inner join DDZL c on a.SCBH=c.DDBH ');
    Sql.Add('where GXLB= :GXLB AND datediff(month,a.SCDate,:ST)=0 '+param);
    ParamByName('ST').AsString :=DateToStr(DTP1.Date);
    ParamByName('GXLB').AsString :=GXLB;
    Active:=true;
    end;
    while Not Query1.Eof do
    begin
     CbArticle.Items.Add(Query1.Fields[0].AsString );
     Query1.Next;
    end;
end;

procedure TQCMonthDefect.CbArticleDblClick(Sender: TObject);
var
combbox :TComboBox;
tmpStr :string;
begin
  combbox:=TComboBox(Sender);
  if combbox.Name= 'CbSku' then
  begin
    if LbSku.Items.IndexOf(combbox.Text)<0 then
      LbSku.Items.Add(combbox.Text);
  end
  else if combbox.Name= 'CbArticle' then
  begin
    if LbArticle.Items.IndexOf(combbox.Text)<0 then
      LbArticle.Items.Add(combbox.Text);
  end;
end;

procedure TQCMonthDefect.LbLinesClick(Sender: TObject);
var
combbox:TListBox;
begin
  combbox:=TListBox(Sender);
  combbox.Items.Delete(combbox.ItemIndex);
end;

function TQCMonthDefect.ResultSQLParamt():string;
var
  sqltxt,alltxt,tmp:string;
  i:integer;
begin
  alltxt:='';
  sqltxt:='';
  for i:=0 To LbLines.Count-1 Do
  begin
    if LbLines.Selected[i] then
        sqltxt:=sqltxt+''''+ LbLines.Items[i]+''',';
  end;
  if length(sqltxt)>2 then
  begin
  Delete(sqltxt,length(sqltxt),1);
  alltxt:=alltxt+' and DepName IN ('+sqltxt+')';
  end;
  if LbSku.Items.Count>0 then
  begin
    sqltxt:='';
    for i:=0 To LbSku.Items.Count-1 Do
    begin
      tmp:=StringReplace(LbSku.Items[i],'''','''''',[rfReplaceAll]);
      sqltxt:=sqltxt+''''+ tmp+''',';
    end;
    Delete(sqltxt,length(sqltxt),1);
    alltxt:=alltxt+' and d.XieMing IN ('+sqltxt+')';
  end;
  if LbArticle.Items.Count>0 then
  begin
    sqltxt:='';
    for i:=0 To LbArticle.Items.Count-1 Do
      sqltxt:=sqltxt+''''+ LbArticle.Items[i]+''',';
    Delete(sqltxt,length(sqltxt),1);
    alltxt:=alltxt+' and c.ARTICLE IN ('+sqltxt+')';
  end;
  if alltxt<>'' then
    alltxt:=' and a.SCBH in (SELECT distinct DDBH FROM DDZL c inner join xxzl d on c.XieXing=d.XieXing where GSBH=''VA12''' +  alltxt+')' ;
  Result:=alltxt;
end;

procedure TQCMonthDefect.EtSKUExit(Sender: TObject);
begin
  SkuItems();
end;

procedure TQCMonthDefect.EtArticleExit(Sender: TObject);
begin
 ArticleItems();
end;

end.
