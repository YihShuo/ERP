unit QCDefectReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,ComObj;

type
  TQCDefectReport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    QReport: TQuery;
    QReportYWSM: TStringField;
    QReportQty: TIntegerField;
    Panel2: TPanel;
    Lab100: TLabel;
    Query1: TQuery;
    LbLines: TListBox;
    CbSku: TComboBox;
    LbSku: TListBox;
    CbArticle: TComboBox;
    LbArticle: TListBox;
    Label4: TLabel;
    LabSKU: TLabel;
    Label3: TLabel;
    LabTotal: TLabel;
    QReportYYBH: TStringField;
    EtArticle: TEdit;
    EtSKU: TEdit;
    DS2: TDataSource;
    Query2: TQuery;
    Query2YYBH: TStringField;
    Query2YWSM: TStringField;
    Query2Qty: TIntegerField;
    DBGridEh2: TDBGridEh;
    QTemp: TQuery;
    Button1: TButton;
    BtExcel: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DTP2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LbLinesClick(Sender: TObject);
    procedure CbArticleDblClick(Sender: TObject);
    procedure SkuItems();
    procedure ArticleItems();
    function ResultSQLParamt():string;
    procedure BtExcelClick(Sender: TObject);
    procedure EtArticleExit(Sender: TObject);
    procedure EtSKUExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCDefectReport: TQCDefectReport;
  tmplist :string;
const GXLB='AR';
implementation

uses main1;

{$R *.dfm}

procedure TQCDefectReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QCDefectReport:=nil;
  Action:=Cafree;
end;

procedure TQCDefectReport.Button1Click(Sender: TObject);
 var param:string;
begin
  param:=ResultSQLParamt(); //¬d¸ß±ø¥ó
  with QReport Do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT YYBH,SUM(Qty) AS Qty ,(SELECT top 1 YWSM FROM QCBLYY where YYBH =  a.YYBH and GSBH=''VA12'' AND DFL=:GXLB) YWSM FROM ');
    SQL.Add('(SELECT b.YYBH,SUM(Qty) AS Qty FROM QCRD b ');
    SQL.Add('inner JOIN QCR a ON b.ProNo = a.ProNo ');
    SQL.Add('inner JOIN BDepartment ON a.DepNo = BDepartment.ID ');
    SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+param );
    SQL.Add(' GROUP BY b.YYBH) a ');
    SQL.Add(' GROUP BY YYBH order by Qty desc ');
    ParamByName('GXLB').Value := GXLB;
    ParamByName('ST').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
    ParamByName('ED').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
    //showmessage(SQL.Text);
    Active:=true;
  end;
  with Query1 Do
  begin
  Active:=false;
  SQL.Clear;
  SQL.Add('SELECT sum([Qty]) [Qty] FROM [WOPR] a ');
  SQL.Add('inner join BDepartment b on a.DepNo=b.ID ');
  SQL.Add('inner join DDZL c on a.SCBH=c.DDBH ');
  SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+param);
  ParamByName('GXLB').Value := GXLB;
  ParamByName('ST').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
  ParamByName('ED').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
  //Showmessage(SQL.Text);
  Active:=true;
  end;
  Query1.First;
  LabTotal.Caption:=Query1.Fields[0].AsString;

  with Query2 Do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('SELECT YYBH,SUM(Qty) AS Qty ,(SELECT top 1 YWSM FROM QCBLYYS where YYBH =  a.YYBH) YWSM FROM ');
    SQL.Add('(SELECT a.YYBH,SUM(Qty) AS Qty FROM QCRDS a ');
    SQL.Add('inner JOIN BDepartment ON a.DepNo = BDepartment.ID ');
    SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+param );
    SQL.Add(' GROUP BY a.YYBH) a ');
    SQL.Add(' GROUP BY YYBH order by Qty desc ');
    ParamByName('GXLB').Value := GXLB;
    ParamByName('ST').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
    ParamByName('ED').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
    //showmessage(SQL.Text);
    Active:=true;
  end;
end;

function TQCDefectReport.ResultSQLParamt():string;
var
  sqltxt,alltxt,tmp:string;
  i:integer;
begin
  alltxt:='';
  sqltxt:='';
  tmplist:=DateToStr(DTP1.Date)+'-'+DateToStr(DTP2.Date) ;
  for i:=0 To LbLines.Count-1 Do
  begin
    if LbLines.Selected[i] then
        sqltxt:=sqltxt+''''+ LbLines.Items[i]+''',';
  end;
  if (length(sqltxt))>2  then
  begin
    Delete(sqltxt,length(sqltxt),1);
    alltxt:=alltxt+' and DepName IN ('+sqltxt+')';
    tmplist:=tmplist+','+sqltxt;
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
    tmplist:=tmplist+','+sqltxt;
  end;
  if LbArticle.Items.Count>0 then
  begin
    sqltxt:='';
    for i:=0 To LbArticle.Items.Count-1 Do
      sqltxt:=sqltxt+''''+ LbArticle.Items[i]+''',';
    Delete(sqltxt,length(sqltxt),1);
    alltxt:=alltxt+' and c.ARTICLE IN ('+sqltxt+')';
    tmplist:=tmplist+','+sqltxt;
  end;
  if alltxt<>'' then
  begin
    alltxt:=' and a.SCBH in (SELECT distinct DDBH FROM DDZL c inner join xxzl d on c.XieXing=d.XieXing and c.Shehao=d.Shehao where GSBH=''VA12''' +  alltxt+')' ;
    tmplist:= StringReplace(tmplist, '''', '',[rfReplaceAll, rfIgnoreCase]);
  end;
  Result:=alltxt;
end;

procedure TQCDefectReport.FormCreate(Sender: TObject);
begin
  //DTP1.Date:=StrToDateTime('2023/07/13');
  DTP2.Date:=Date;
  DTP1.Date:=IncMonth(Date,-1);
//  DTP2Change(nil);
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
    Sql.Add('order by DepName ');
    Active:=true;
    while Not Eof do
    begin
     LbLines.Items.Add(Fields[0].AsString);
     Next;
    end;
  end;
end;

procedure TQCDefectReport.DTP2Change(Sender: TObject);
begin
  SkuItems();
  ArticleItems();
end;

procedure TQCDefectReport.SkuItems();
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
    Sql.Add('inner join [xxzl] d on c.XieXing=d.XieXing and c.Shehao = d.Shehao ');
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

procedure TQCDefectReport.ArticleItems();
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

procedure TQCDefectReport.CbArticleDblClick(Sender: TObject);
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

procedure TQCDefectReport.LbLinesClick(Sender: TObject);
var
combbox:string;
begin
  combbox:=TListBox(Sender).Name;
  if combbox= 'LbSku' then
    begin
    LbSku.Items.Delete(LbSku.ItemIndex);
    end
   else if combbox= 'LbArticle' then
    begin
    LbArticle.Items.Delete(LbArticle.ItemIndex);
  end;
end;

procedure TQCDefectReport.BtExcelClick(Sender: TObject);
var
i,j,q :integer;
line:string;
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
      eclApp.Cells[1,i].Value :=tmplist;
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
      eclApp.Cells[i+2,2].Value :=Lab100.Caption;
      eclApp.Cells[i+2,3].Value :=LabTotal.Caption;
      //------------------------------------
      i:=i+4;
      for j:=0 to Query2.FieldCount-1 do
      begin
        line:='';
        for q:=1 to Query2.Fields[j].Size do
        begin
          line:=line+'-';
        end;
        eclApp.Cells[i,j+1].Value := line;
      end;

      i:=i+4;
      while not Query2.Eof do
      begin
        for j:=1 to Query2.FieldCount do
        begin
          eclApp.Cells[i,j].Value :=Query2.Fields[j-1].AsString;
        end;
        Query2.Next;
        inc(i);
      end;



      eclApp.Cells.EntireColumn.AutoFit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    end;
  end;
end;

procedure TQCDefectReport.EtArticleExit(Sender: TObject);
begin
  ArticleItems();
end;


procedure TQCDefectReport.EtSKUExit(Sender: TObject);
begin
  SkuItems();
end;

procedure TQCDefectReport.Button2Click(Sender: TObject);
var n,i,x,y: Integer;
    eclApp :olevariant;
    sqltxt,alltxt,tmp: String;
begin
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
  begin
    alltxt:=' and a.SCBH in (SELECT distinct DDBH FROM DDZL c inner join xxzl d on c.XieXing=d.XieXing and c.Shehao = d.Shehao where GSBH=''VA12''' +  alltxt+')' ;
  end;

  eclApp := CreateOleObject('Excel.Application');
  eclApp.WorkBooks.Add;
  eclApp.WorkSheets[1].Activate;
  eclApp.Cells[1,1].Value :='YYBH';
  eclApp.Cells[1,2].Value :='YWSM';
  n := 0;
  for i:=0 To LbLines.Count-1 Do
  begin
    if LbLines.Selected[i] then
      n := n + 1;
  end;
  if n > 0 then begin
    n := 2;
    for i:=0 To LbLines.Count-1 Do
    begin
      if LbLines.Selected[i] then begin
        n := n + 1;
        with QTemp Do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add(' select YYBH,YWSM ');
          SQL.Add(' , isnull((SELECT SUM(Qty) FROM QCRD b ');
          SQL.Add('inner JOIN QCR a ON b.ProNo = a.ProNo ');
          SQL.Add('inner JOIN BDepartment ON a.DepNo = BDepartment.ID and DEPNAME = '''+LbLines.Items[i]+''' ');
          SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+alltxt);
          SQL.Add('and YYBH = QCBLYY.YYBH ');
          SQL.Add(' GROUP BY b.YYBH),0) as QTY ');
          SQL.Add('  from QCBLYY ');
          SQL.Add(' where GSBH = '''+main.edit2.Text+''' and DFL = :GXLB and YN = ''2''');

          SQL.Add(' union all ');
          SQL.Add(' select YYBH,YWSM ');
          SQL.Add(' , isnull((SELECT SUM(Qty) FROM QCRDS a ');
          SQL.Add('inner JOIN BDepartment ON a.DepNo = BDepartment.ID and DEPNAME = '''+LbLines.Items[i]+''' ');
          SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+alltxt);
          SQL.Add('and YYBH = QCBLYYS.YYBH ');
          SQL.Add(' GROUP BY a.YYBH),0) as QTY ');
          SQL.Add('  from QCBLYYS ');
          SQL.Add(' where GSBH = '''+main.edit2.Text+''' and DFL = :GXLB and YN = ''2'' ');

          SQL.Add(' union all ');
          SQL.Add('select '''' as YYBH,'''' as YWSM,sum(QTY) as QTY from ( ');
          SQL.Add('SELECT sum([Qty]) [Qty] FROM [WOPR] a ');
          SQL.Add('inner join BDepartment b on a.DepNo=b.ID and DEPNAME = '''+LbLines.Items[i]+'''');
//          SQL.Add('inner join DDZL c on a.SCBH=c.DDBH ');
          SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+alltxt);
          SQL.Add('union all');
          SQL.Add('SELECT SUM(Qty) FROM QCRD b');
          SQL.Add('inner JOIN QCR a ON b.ProNo = a.ProNo');
          SQL.Add('inner JOIN BDepartment ON a.DepNo = BDepartment.ID and DEPNAME = '''+LbLines.Items[i]+'''');
          SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+alltxt);
          SQL.Add('and YYBH in (select YYBH from QCBLYY where GSBH = ''VA12'' and DFL = :GXLB and YN = ''2'')');
          SQL.Add(') total');

          ParamByName('GXLB').Value := GXLB;
          ParamByName('ST').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
          ParamByName('ED').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
          //showmessage(SQL.Text);
          Active:=true;
        end;
        QTemp.First;
        x := 2;
        while not QTemp.Eof do begin
          eclApp.Cells[1,n].Value := LbLines.Items[i];
          if n = 3 then begin
            for y:=1 to QTemp.FieldCount do
            begin
              eclApp.Cells[x,y].Value :=QTemp.Fields[y-1].AsString;
            end;
          end
          else
            eclApp.Cells[x,n].Value :=QTemp.Fields[2].AsString;

          QTemp.Next;
          inc(x);
        end;
      end;
    end;
  end
  else begin
    n := 3;
    for i:=0 To LbLines.Count-1 Do
    begin
      with QTemp Do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add(' select YYBH,YWSM ');
        SQL.Add(' , isnull((SELECT SUM(Qty) FROM QCRD b ');
        SQL.Add('inner JOIN QCR a ON b.ProNo = a.ProNo ');
        SQL.Add('inner JOIN BDepartment ON a.DepNo = BDepartment.ID and DEPNAME = '''+LbLines.Items[i]+''' ');
        SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+alltxt);
        SQL.Add('and YYBH = QCBLYY.YYBH ');
        SQL.Add(' GROUP BY b.YYBH),0) as QTY ');
        SQL.Add('  from QCBLYY ');
        SQL.Add(' where GSBH = '''+main.edit2.Text+''' and DFL = :GXLB and YN = ''2'' ');

        SQL.Add(' union all ');
        SQL.Add(' select YYBH,YWSM ');
        SQL.Add(' , isnull((SELECT SUM(Qty) FROM QCRDS a ');
        SQL.Add('inner JOIN BDepartment ON a.DepNo = BDepartment.ID and DEPNAME = '''+LbLines.Items[i]+''' ');
        SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+alltxt);
        SQL.Add('and YYBH = QCBLYYS.YYBH ');
        SQL.Add(' GROUP BY a.YYBH),0) as QTY ');
        SQL.Add('  from QCBLYYS ');
        SQL.Add(' where GSBH = '''+main.edit2.Text+''' and DFL = :GXLB and YN = ''2'' ');

        SQL.Add(' union all ');
        SQL.Add('select '''' as YYBH,'''' as YWSM,sum(QTY) as QTY from ( ');
        SQL.Add('SELECT sum([Qty]) [Qty] FROM [WOPR] a ');
        SQL.Add('inner join BDepartment b on a.DepNo=b.ID and DEPNAME = '''+LbLines.Items[i]+'''');
//        SQL.Add('inner join DDZL c on a.SCBH=c.DDBH ');
        SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+alltxt);
        SQL.Add('union all');
        SQL.Add('SELECT SUM(Qty) FROM QCRD b');
        SQL.Add('inner JOIN QCR a ON b.ProNo = a.ProNo');
        SQL.Add('inner JOIN BDepartment ON a.DepNo = BDepartment.ID and DEPNAME = '''+LbLines.Items[i]+'''');
        SQL.Add('where a.GXLB= :GXLB AND ( a.SCDate between :ST and :ED ) '+alltxt);
        SQL.Add('and YYBH in (select YYBH from QCBLYY where GSBH = ''VA12'' and DFL = :GXLB and YN = ''2'')');
        SQL.Add(') total');

        ParamByName('GXLB').Value := GXLB;
        ParamByName('ST').Value := FormatDateTime('yyyy/MM/dd', DTP1.Date);
        ParamByName('ED').Value := FormatDateTime('yyyy/MM/dd', DTP2.Date);
        Active:=true;
      end;
      QTemp.First;
      x := 2;
      while not QTemp.Eof do begin
        eclApp.Cells[1,n].Value := LbLines.Items[i];
        if n = 3 then begin
          for y:=1 to QTemp.FieldCount do
          begin
            eclApp.Cells[x,y].Value :=QTemp.Fields[y-1].AsString;
          end;
        end
        else
          eclApp.Cells[x,n].Value :=QTemp.Fields[2].AsString;

        QTemp.Next;
        inc(x);
      end;
      inc(n);
    end;
  end;
//  eclApp.Cells.EntireColumn.AutoFit;
  ShowMessage('Succeed');
  eclApp.Visible := True;
end;

procedure TQCDefectReport.Button3Click(Sender: TObject);
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
    Sql.Add('inner join [xxzl] d on c.XieXing=d.XieXing and c.Shehao = d.Shehao');
    Sql.Add('where a.GXLB= :GXLB and (a.SCDate between :ST and :ED ) '+alltxt);
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
