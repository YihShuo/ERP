unit QCScanReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, GridsEh, DBGridEh, ComCtrls, ExtCtrls,
  DBCtrls,ComObj ;

type
  TQCScanReport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    QReport: TQuery;
    LabSKU: TLabel;
    CkJustSKU: TCheckBox;
    LbLines: TListBox;
    Label3: TLabel;
    LbSku: TListBox;
    Query1: TQuery;
    Label4: TLabel;
    LbArticle: TListBox;
    CbSku: TComboBox;
    CbArticle: TComboBox;
    Query2: TQuery;
    Query3: TQuery;
    UpdateSQL1: TUpdateSQL;
    QXiming: TQuery;
    QArticle: TQuery;
    BtExcel: TButton;
    EtSKU: TEdit;
    EtArticle: TEdit;
    Button2: TButton;
    Label5: TLabel;
    EdRY: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure QueryCreare;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DTP2Change(Sender: TObject);
    procedure LbLinesClick(Sender: TObject);
    procedure SkuItems();
    procedure ArticleItems();
    function ResultSQLParamt():string;
    procedure QueryToTmpTable(param: string);
    procedure TmpTableUpdate(param :string);
    function GetSkuArticle(Fname,param : string):string;
    procedure ViewTmpTable();
    procedure UpdateDataSet(parm: string);
    procedure CbArticleDblClick(Sender: TObject);
    procedure BtExcelClick(Sender: TObject);
    procedure EtArticleExit(Sender: TObject);
    procedure EtSKUExit(Sender: TObject);
    function GetSCBHInLines(DepName,parm:string):string;
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCScanReport: TQCScanReport;

const GXLB='AR';

implementation

uses main1;

{$R *.dfm}
procedure TQCScanReport.QueryCreare;
var tmp: TField;
begin
  with QReport do
  begin
    Active := false;
    SQL.Clear;
     Fields.Clear;
     if CkJustSKU.Checked then
     begin
     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportXieMing';
     tmp.DisplayLabel:='ARTICLE';
     tmp.FieldName:='XieMing';
     tmp.DataSet:= QReport ;
     end
     else
     begin
     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportDepName';
     tmp.DisplayLabel:='Production Team';
     tmp.FieldName:='DepName';
     tmp.DisplayWidth:=16;
     tmp.DataSet:= QReport ;

     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportARTICLE';
     tmp.DisplayLabel:='SKU';
     tmp.FieldName:='ARTICLE';
     tmp.Size:=1000;
     tmp.DisplayWidth:=40;
     tmp.DataSet:= QReport ;

     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportXieMing';
     tmp.DisplayLabel:='ARTICLE';
     tmp.FieldName:='XieMing';
     tmp.Size:=1000;
     tmp.DisplayWidth:=40;
     tmp.DataSet:= QReport ;

     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportSCBH';
     tmp.DisplayLabel:='RY';
     tmp.FieldName:='SCBH';
     tmp.Size:=1000;
     tmp.DisplayWidth:=40;
     tmp.DataSet:= QReport ;

     end;
     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportInterval';
     tmp.DisplayLabel:='Interval';
     tmp.FieldName:='Interval';
     tmp.DisplayWidth:=24;
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportQty';
     tmp.DisplayLabel:='Pass Quantity';
     tmp.FieldName:='Qty';
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportNGQty';
     tmp.DisplayLabel:='NG Times';
     tmp.FieldName:='NGQty';
     tmp.DataSet:= QReport ;

     tmp := TIntegerField.Create(QReport);
     tmp.Name:='QReportSumQty';
     tmp.DisplayLabel:='Total Inspections';
     tmp.FieldName:='SumQty';
     tmp.DataSet:= QReport ;

     tmp := TStringField.Create(QReport);
     tmp.Name:='QReportFIT';
     tmp.DisplayLabel:='FTT';
     tmp.FieldName:='FTT';
     tmp.Alignment:=taRightJustify;
     tmp.DisplayWidth:=10;
     tmp.DataSet:= QReport;
  end;
  //DBGridEh1.AutoFitColWidths:=true;
  DBGridEh1.Columns.AddAllColumns(true);
end;

//讀取查詢數量寫入Temp Table
procedure TQCScanReport.QueryToTmpTable(param :string);
var d1,d2:string;
begin
  d1:=FormatDateTime('yyyy/MM/dd', DTP1.Date);
  d2:=FormatDateTime('yyyy/MM/dd', DTP2.Date);
  with Query1 do
  begin
  Active:=false;
  Sql.Clear;
  sql.add('if object_id('+''''+'tempdb..#aa'+''''+') is not null ');
  sql.add(' begin drop table #aa end ');
    if CkJustSKU.Checked then
    begin
    Sql.Add('SELECT XieMing,sum([Qty]) [Qty],sum([NGQty]) [NGQty],sum(SumQty) SumQty, ');
    Sql.Add('LEFT(cast((case when sum([Qty])>0 then sum([Qty])*100.0/(sum([Qty])+sum([NGQty])) else 0.0 end) as varchar),4)+''%'' FTT ');
    Sql.Add('into #aa from(SELECT (select XieMing from xxzl where XieXing=aa.XieXing and shehao = aa.shehao) XieMing,sum([Qty]) [Qty],sum([NGQty]) [NGQty],sum(SumQty) SumQty ');
    Sql.Add('FROM(SELECT c.XieXing,c.shehao,sum([Qty]) [Qty],sum([NGQty]) [NGQty],sum([Qty])+sum([NGQty]) SumQty ');
	  Sql.Add('FROM [WOPR] a ');
	  Sql.Add('inner join BDepartment b on a.DepNo=b.ID ');
	  Sql.Add('inner join DDZL c on a.SCBH=c.DDBH ');
	  Sql.Add('where a.GXLB= :GXLB AND SCDate between :ST and :ED '+param);
	  Sql.Add('Group by c.XieXing,c.shehao) aa ');
    Sql.Add('Group by XieXing,shehao) aaa ');
    Sql.Add('group by XieMing ');
    end
    else
    begin
    Sql.Add('SELECT b.DepName,'''' as XieMing,'''' as ARTICLE,'''' as SCBH,sum([Qty]) [Qty],sum([NGQty]) [NGQty],sum([Qty])+sum([NGQty]) SumQty,');
    Sql.Add('LEFT(cast((case when sum([Qty])>0 then sum([Qty])*100.0/(sum([Qty])+sum([NGQty])) else 0.0 end) as varchar),4)+''%'' FTT ');
    Sql.Add(' into #aa FROM [WOPR] a ');
    Sql.Add(' inner join BDepartment b on a.DepNo=b.ID ');
    Sql.Add(' inner join DDZL c on a.SCBH=c.DDBH ');
    Sql.Add(' where a.GXLB= :GXLB AND SCDate between :ST and :ED '+param);
    Sql.Add(' group by b.DepName order by b.DepName ');
    Sql.Add(' ALTER TABLE #aa ALTER COLUMN XieMing VARCHAR(1000) ');
    Sql.Add(' ALTER TABLE #aa ALTER COLUMN ARTICLE VARCHAR(1000) ');
    Sql.Add(' ALTER TABLE #aa ALTER COLUMN SCBH VARCHAR(1000) ');
    end;
  //showmessage(sql.Text);
  ParamByName('ST').Value := d1;
  ParamByName('ED').Value := d2;
  ParamByName('GXLB').Value := GXLB;
  ExecSQL;
  end;
end;

//取得Article，SKU 資料寫入 Temp Table
procedure TQCScanReport.TmpTableUpdate(param :string);
begin
  with Query1 do
  begin
    Active:=false;
    Sql.Clear;
    Sql.Add('SELECT DepName FROM #aa ');
    Active:=true;
  end;
  while not Query1.Eof do
  begin
    with Query3 do
    begin
      Active:=false;
      Sql.Clear;
      Sql.Add('UPDATE #aa SET XieMing= :XieMing,ARTICLE= :ARTICLE' );
      Sql.Add('where DepName= :DepName');
      ParamByName('DepName').Value := Query1.Fields[0].AsString;
      ParamByName('XieMing').Value := GetSkuArticle('d.XieMing',param );
      ParamByName('ARTICLE').Value := GetSkuArticle('c.ARTICLE',param );
    //ParamByName('Fname').Value := Fname; //c.ARTICLE ,d.XieMing *)
    ExecSQL;
    end;
    Query1.Next;
  end;
end;
//讀取Temp Table 顯示前台
procedure TQCScanReport.ViewTmpTable();
begin
  with QReport do
  begin
    Active := false;
    SQL.Clear;
    if CkJustSKU.Checked then
    begin
      SQL.Add('SELECT XieMing, :ST +''-''+ :ED as Interval,[Qty],[NGQty],SumQty,FTT from #aa ');
    end
    else
    begin
      SQL.Add('SELECT DepName, XieMing,ARTICLE,SCBH, :ST +''-''+ :ED as Interval,[Qty],[NGQty],SumQty,FTT from #aa ');
    end;
    ParamByName('ST').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
    ParamByName('ED').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
    Active:=true;
  end;
end;

procedure TQCScanReport.Button1Click(Sender: TObject);
var param :string;
begin
  QueryCreare;
  param:=ResultSQLParamt(); //查詢條件
  QueryToTmpTable(param);//查詢
  ViewTmpTable();
  if not CkJustSKU.Checked then
    UpdateDataSet(param);
end;

//取得Article，SKU
function TQCScanReport.GetSkuArticle(Fname,param : string):string;
var
  sqltxt:string ;
begin
  with Query2 do
  begin
    Active:=false;
    Sql.Clear;
    Sql.Add('SELECT '+Fname+' FROM [WOPR] a ');
    Sql.Add('inner join BDepartment b on a.DepNo=b.ID ');
    Sql.Add('inner join DDZL c on a.SCBH=c.DDBH ');
    Sql.Add('left join [xxzl] d on c.XieXing=d.XieXing and c.Shehao = d.Shehao');
    Sql.Add('where a.GXLB= :GXLB AND SCDate between :ST and :ED ');
    Sql.Add(param+' group by  '+Fname+'  order by  '+Fname );
    ParamByName('ST').AsString := FormatDateTime('yyyy/MM/dd', DTP1.Date);
    ParamByName('ED').AsString := FormatDateTime('yyyy/MM/dd', DTP2.Date);
    ParamByName('GXLB').AsString := GXLB;
    //ParamByName('Fname').Value := Fname; //c.ARTICLE ,d.XieMing *)
    Active:=true;
  end;
  while Not Query2.Eof do
  begin
     sqltxt:=sqltxt+Trim(Query2.Fields[0].AsString)+',';
     Query2.Next;
  end;
  if sqltxt<>'' then
    Delete(sqltxt,length(sqltxt),1);
  Result:= sqltxt;
end;

function TQCScanReport.ResultSQLParamt():string;
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
    alltxt:=' and a.SCBH in (SELECT distinct DDBH FROM DDZL c inner join xxzl d on c.XieXing=d.XieXing and c.Shehao = d.Shehao where GSBH='''+main.Edit2.Text+''' and c.DDBH like '''+EdRY.Text+'%''' +  alltxt+')' ;
  Result:=alltxt;
end;

procedure TQCScanReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with Query1 do
  begin
    Active:=false;
    Sql.Clear;
    sql.add(' if object_id('+''''+'tempdb..#aa'+''''+') is not null ');
    sql.add(' begin drop table #aa end ');
    execsql;
  end;
  QCScanReport:=nil;
  action:=Cafree;
end;

procedure TQCScanReport.FormCreate(Sender: TObject);
begin
  //DTP1.Date:=StrToDateTime('2023/07/13');
  DTP2.Date:=Date;
  DTP1.Date:=IncMonth(Date,-1);
  DTP2Change(nil);
  LbLines.Clear;
  with Query1 do
  begin
    Active:=false;
    Sql.Clear;
    Sql.Add('select distinct DepName from WOPR a ');
    Sql.Add('inner join BDepartment b on a.DepNo=b.ID ');
    Sql.Add('where a.GXLB= :GXLB and (SCDate between :ST and :ED)');
    ParamByName('ST').AsString :=DateToStr(DTP1.Date);
    ParamByName('ED').AsString :=DateToStr(DTP2.Date);
    ParamByName('GXLB').AsString :=GXLB;
    Active:=true;
    while Not Eof do
    begin
     LbLines.Items.Add(Fields[0].AsString);
     Next;
    end;
  end;
end;

procedure TQCScanReport.SkuItems();
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
    Sql.Add('inner join [xxzl] d on c.XieXing=d.XieXing and c.shehao = d.shehao');
    Sql.Add('where a.GXLB= :GXLB and (a.SCDate between :ST and :ED ) '+param);
    ParamByName('ST').AsString :=DateToStr(DTP1.Date);
    ParamByName('ED').AsString :=DateToStr(DTP2.Date);
    ParamByName('GXLB').AsString :=GXLB;
    Active:=true;
    end;
    while Not Query1.Eof do
    begin
     CbSku.Items.Add(Query1.Fields[0].AsString );
     Query1.Next;
    end;
end;

procedure TQCScanReport.ArticleItems();
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
    Sql.Add('where GXLB= :GXLB and (SCDate between :ST and :ED ) '+param);
    ParamByName('ST').AsString :=DateToStr(DTP1.Date);
    ParamByName('ED').AsString :=DateToStr(DTP2.Date);
    ParamByName('GXLB').AsString :=GXLB;
    Active:=true;
    end;
    while Not Query1.Eof do
    begin
     CbArticle.Items.Add(Query1.Fields[0].AsString );
     Query1.Next;
    end;
end;

procedure TQCScanReport.DTP2Change(Sender: TObject);
begin
//  SkuItems();
//  ArticleItems();
end;

procedure TQCScanReport.LbLinesClick(Sender: TObject);
var
combbox:TListBox;
begin
  combbox:=TListBox(Sender);
  combbox.Items.Delete(combbox.ItemIndex);
end;

function TQCScanReport.GetSCBHInLines(DepName,parm:string):string ;
var SCBH:string;
begin
  with Query2 do
  begin
      Active:=false;
      Sql.Clear;
      Sql.Add('SELECT distinct SCBH FROM WOPR a inner join BDepartment b on a.DepNo=b.ID ');
      Sql.Add('inner join DDZL c on a.SCBH=c.DDBH ');
      Sql.Add('where a.GXLB= :GXLB and (SCDate between :ST and :ED )  and DepName= :DepName '+parm);
      ParamByName('ST').AsString :=DateToStr(DTP1.Date);
      ParamByName('ED').AsString :=DateToStr(DTP2.Date);
      ParamByName('GXLB').AsString :=GXLB;
      ParamByName('DepName').AsString :=DepName;
      //showmessage(sql.text);
      Active:=true;
  end;
  while Not Query2.Eof do
  begin
      SCBH:=SCBH+Query2.Fields[0].AsString+',';
      Query2.Next;
  end;

  if length(SCBH)>2 then
  begin
    Delete(SCBH,length(SCBH),1);
  end;
  result:=SCBH;
end;

procedure TQCScanReport.UpdateDataSet(parm: string);
var  XieMing,ARTICLE,SCBH :string;
begin
  XieMing:='All';
  ARTICLE:='All';
  if LbSku.Count<>0 then
    XieMing:=GetSkuArticle('d.XieMing',parm );
  if LbArticle.Count<>0 then
    ARTICLE:= GetSkuArticle('c.ARTICLE',parm );

  UpdateSQL1.ModifySQL.Text:='update #aa set XieMing= :XieMing ,ARTICLE= :ARTICLE ,SCBH= :SCBH where DepName=:DepName';
  QReport.CachedUpdates:=true;
  QReport.Open;
  QReport.First;
  while not QReport.Eof do
  begin
    QReport.Edit;
    QReport.FieldByName('DepName').AsString:=QReport.FieldByName('DepName').AsString;
    QReport.FieldByName('XieMing').AsString := XieMing;
    QReport.FieldByName('ARTICLE').AsString := ARTICLE;
    QReport.FieldByName('SCBH').AsString := GetSCBHInLines(QReport.FieldByName('DepName').AsString,parm);
    QReport.Post;
    QReport.Next;
  end;
  QReport.Database.StartTransaction ;
  QReport.ApplyUpdates;
  QReport.Database.Commit;
  QReport.Close;
  QReport.CachedUpdates:=false;
  QReport.Open;
end;


procedure TQCScanReport.CbArticleDblClick(Sender: TObject);
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

procedure TQCScanReport.BtExcelClick(Sender: TObject);
var i,j :integer;
eclApp :olevariant;
begin
  if QReport.Active then
  begin
  if QReport.RecordCount>0 then
  begin
  eclApp := CreateOleObject('Excel.Application');
  eclApp.WorkBooks.Add;
  eclApp.WorkSheets[1].Activate;

  for i:=1 to QReport.FieldCount do
  begin
    eclApp.Cells[1,i].Value :=QReport.Fields[i-1].DisplayLabel;
  end;
  i:=2;
  while not QReport.Eof do
  begin
   for j:=1 to QReport.FieldCount do
   begin
    eclApp.Cells[i,j].Value :=QReport.Fields[j-1].AsString;
   end;
   QReport.Next;
   inc(i);
  end;
  eclApp.Cells.EntireColumn.AutoFit;
  ShowMessage('Succeed');
  eclApp.Visible := True;
  end;
  end;
end;

procedure TQCScanReport.EtArticleExit(Sender: TObject);
begin
  ArticleItems();
end;

procedure TQCScanReport.EtSKUExit(Sender: TObject);
begin
  SkuItems();
end;

procedure TQCScanReport.Button2Click(Sender: TObject);
var param :string ;
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

  CbArticle.Clear;
  with Query1 do
    begin
    Active:=false;
    Sql.Clear;
    Sql.Add('SELECT distinct ARTICLE FROM [WOPR] a ');
    Sql.Add('left join BDepartment b on a.DepNo=b.ID ');
    Sql.Add('inner join DDZL c on a.SCBH=c.DDBH ');
    Sql.Add('where a.GXLB= :GXLB and (SCDate between :ST and :ED )' + alltxt);
    ParamByName('ST').AsString :=DateToStr(DTP1.Date);
    ParamByName('ED').AsString :=DateToStr(DTP2.Date);
    ParamByName('GXLB').AsString :=GXLB;
    //showmessage(SQL.Text);
    Active:=true;
    while Not Eof do
    begin
      CbArticle.Items.Add(Fields[0].AsString );
      Next;
    end;
  end;

  CbSku.Clear;
  with Query1 do
    begin
    Active:=false;
    Sql.Clear;
    Sql.Add('SELECT distinct d.XieMing FROM [WOPR] a ');
    Sql.Add('left join BDepartment b on a.DepNo=b.ID ');
    Sql.Add('inner join DDZL c on a.SCBH=c.DDBH ');
    Sql.Add('inner join [xxzl] d on c.XieXing=d.XieXing and c.shehao = d.shehao');
    Sql.Add('where a.GXLB= :GXLB and (a.SCDate between :ST and :ED ) '+ alltxt);
    ParamByName('ST').AsString :=DateToStr(DTP1.Date);
    ParamByName('ED').AsString :=DateToStr(DTP2.Date);
    ParamByName('GXLB').AsString :=GXLB;
    Active:=true;
    while Not Eof do
    begin
     CbSku.Items.Add(Fields[0].AsString );
     Next;
    end;
  end;
end;

end.

