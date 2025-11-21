unit LabelCompare1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls;

type
  TLabelCompare = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    EDqty: TEdit;
    CBsku: TComboBox;
    CBsize1: TComboBox;
    CBsize2: TComboBox;
    Query1: TQuery;
    DataSource1: TDataSource;
    QueryOut: TQuery;
    DBGrid1: TDBGrid;
    QueryOutsku: TStringField;
    QueryOutcolor: TStringField;
    QueryOutsize: TStringField;
    QueryOutScanIn_EVA: TIntegerField;
    QueryOutOrder_Qty: TIntegerField;
    QueryOutScanIn_RB: TIntegerField;
    QueryOutScanOut_EVA: TIntegerField;
    QueryOutScanOut_RB: TIntegerField;
    QueryOutQTY_EVA: TIntegerField;
    QueryOutQTY_RB: TIntegerField;
    QueryOutPairs: TIntegerField;
    Label1: TLabel;
    StringGrid1: TStringGrid;
    QueryOutOUTSOLE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EDqtyExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabelCompare: TLabelCompare;

implementation

uses main1;

{$R *.dfm}

procedure TLabelCompare.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  LabelCompare:=nil;
end;

procedure TLabelCompare.EDqtyExit(Sender: TObject);
begin
  if EDqty.Text<>'' then
  begin
    with Query1 do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [size] FROM '+main.LIY_DD+'.[dbo].[rubber01f] ');
  sql.add('where [id_code]=(SELECT TOP (1) [id] FROM '+main.LIY_DD+'.[dbo].[rubber01] where flag=''F'' and ry='''+EDqty.Text+''') order by [size]');
  active:=true;
  end;
  CBsize1.Items.Clear;
  CBsize1.Items.Add('');
  CBsize2.Items.Clear;
  CBsize2.Items.Add('');
  Query1.First;
  while not Query1.Eof do
  begin
  CBsize1.Items.Add(Query1.FieldByName('size').Value);
  CBsize2.Items.Add(Query1.FieldByName('size').Value);
  Query1.Next;
  end;

  with Query1 do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [sku] FROM '+main.LIY_DD+'.[dbo].[rubber01f] ');
  sql.add('where [id_code]=(SELECT TOP (1) [id] FROM '+main.LIY_DD+'.[dbo].[rubber01] where flag=''F'' and ry='''+EDqty.Text+''') order by [sku]');
  active:=true;
  end;

  CBsku.Items.Clear;
  CBsku.Items.Add('');
  Query1.First;
  while not Query1.Eof do
  begin
  CBsku.Items.Add(Query1.FieldByName('sku').Value);
  Query1.Next;
  end;
  Query1.active:=false;
  Query1.SQL.Clear;
  end;
end;

procedure TLabelCompare.Button2Click(Sender: TObject);
var
  w1:string;
  i:Integer;
  j:Integer;
  rows:Integer;
  sum0:Integer;
begin
  with QueryOut do
  begin
    active:=false;
    sql.clear;
    sql.Add('select a.[sku],a.[color],a.[size],a.Order_Qty,isnull(ScanIn_EVA,0) ScanIn_EVA,isnull(Scan_In_P,0) ScanIn_RB,');
    sql.Add('isnull(ScanOut_EVA,0) ScanOut_EVA,isnull(Scan_Out_P,0) ScanOut_RB,isnull(QTY_EVA,0) QTY_EVA,isnull(QTY_P,0) QTY_RB,');
    sql.Add('case when isnull(QTY_EVA,0)>isnull(QTY_P,0) then isnull(QTY_P,0) else isnull(QTY_EVA,0) end Pairs,[OUTSOLE]  from ');
    sql.Add('(SELECT [id],[id_code],[sku],[color],[size],[qty] Order_Qty,[s_ok] ScanIn_EVA,[f_ok] ScanOut_EVA,[s_ok]-[f_ok] QTY_EVA,[OUTSOLE] FROM '+main.LIY_DD+'.[dbo].[rubber01f] ');
    sql.Add('where [id_code]=(SELECT TOP (1) [id] FROM TB_DD.[dbo].[rubber01] where flag=''F''');
    if EDqty.Text<>'' then sql.Add(' and ry='''+EDqty.Text+'''');
    if CBsku.Text<>'' then sql.Add(' and [ARTICLE]='''+CBsku.Text+'''');
    if (CBsize1.Text<>'') and (CBsize2.Text<>'') then sql.Add(' and ([size] between '''+CBsize1.Text+''' and '''+CBsize2.Text+''')');
    sql.Add(')) a left outer join ( ');
    sql.Add('SELECT [id],[id_code],[sku],[color],[size],[s_ok] Scan_In_P,[f_ok] Scan_Out_P,[s_ok]-[f_ok] QTY_P FROM '+main.LIY_DD+'.[dbo].[rubber01p] ');
    sql.Add('where [id_code]=(SELECT TOP (1) [id] FROM TB_DD.[dbo].[rubber01] where flag=''P''');
    if EDqty.Text<>'' then sql.Add(' and ry='''+EDqty.Text+'''');
    if CBsku.Text<>'' then sql.Add(' and [ARTICLE]='''+CBsku.Text+'''');
    if (CBsize1.Text<>'') and (CBsize2.Text<>'') then sql.Add(' and ([size] between '''+CBsize1.Text+''' and '''+CBsize2.Text+''')');
    sql.Add(')) b on a.[sku]=b.[sku] and a.[size]=b.size order by a.[sku],b.[size] ');
    //showmessage(text);
    active:=true;
  end;
  if QueryOut.RecordCount=0 then
  begin
    with QueryOut do
    begin
    active:=false;
    sql.clear;
    sql.Add('select b.[sku],b.[color],b.[size],b.Order_Qty,isnull(ScanIn_EVA,0) ScanIn_EVA,isnull(Scan_In_P,0) ScanIn_RB,');
    sql.Add('isnull(ScanOut_EVA,0) ScanOut_EVA,isnull(Scan_Out_P,0) ScanOut_RB,isnull(QTY_EVA,0) QTY_EVA,isnull(QTY_P,0) QTY_RB,');
    sql.Add('case when isnull(QTY_EVA,0)>isnull(QTY_P,0) then isnull(QTY_P,0) else isnull(QTY_EVA,0) end Pairs,[OUTSOLE]  from ');
    sql.Add('(SELECT [id],[id_code],[sku],[qty] Order_Qty,[color],[size],[s_ok] Scan_In_P,[f_ok] Scan_Out_P,[s_ok]-[f_ok] QTY_P FROM '+main.LIY_DD+'.[dbo].[rubber01p] ');
    sql.Add('where [id_code]=(SELECT TOP (1) [id] FROM TB_DD.[dbo].[rubber01] where flag=''P''');
    if EDqty.Text<>'' then sql.Add(' and ry='''+EDqty.Text+'''');
    if CBsku.Text<>'' then sql.Add(' and [ARTICLE]='''+CBsku.Text+'''');
    if (CBsize1.Text<>'') and (CBsize2.Text<>'') then sql.Add(' and ([size] between '''+CBsize1.Text+''' and '''+CBsize2.Text+''')');
    sql.Add(')) b left outer join ');
    sql.Add('(SELECT [id],[id_code],[sku],[color],[size],[qty] Order_Qty,[s_ok] ScanIn_EVA,[f_ok] ScanOut_EVA,[s_ok]-[f_ok] QTY_EVA,[OUTSOLE] FROM '+main.LIY_DD+'.[dbo].[rubber01f] ');
    sql.Add('where [id_code]=(SELECT TOP (1) [id] FROM TB_DD.[dbo].[rubber01] where flag=''F''');
    if EDqty.Text<>'' then sql.Add(' and ry='''+EDqty.Text+'''');
    if CBsku.Text<>'' then sql.Add(' and [ARTICLE]='''+CBsku.Text+'''');
    if (CBsize1.Text<>'') and (CBsize2.Text<>'') then sql.Add(' and ([size] between '''+CBsize1.Text+''' and '''+CBsize2.Text+''')');
    sql.Add(')) a on a.[sku]=b.[sku] and a.[size]=b.size order by a.[sku],b.[size] ');
    active:=true;
    end;
  end;

  if QueryOut.RecordCount>0 then
  begin
  StringGrid1.RowCount:=9;
  StringGrid1.ColCount:=QueryOut.RecordCount+5;
  //[x,y]
  StringGrid1.ColWidths[0]:=20;
  StringGrid1.ColWidths[1]:=140;
  StringGrid1.ColWidths[2]:=110;
  StringGrid1.ColWidths[3]:=140;

  StringGrid1.Cells[1,0] :='ARTICLE' ;
  StringGrid1.Cells[2,0] :='Color' ;
  StringGrid1.Cells[3,0] :='Type' ;
  StringGrid1.Cells[3,1] :='Order_Qty' ;
  StringGrid1.Cells[3,2] :='ScanIn_EVA' ;
  StringGrid1.Cells[3,3] :='ScanOut_EVA' ;
  StringGrid1.Cells[3,4] :='ScanIn_RB' ;
  StringGrid1.Cells[3,5] :='ScanOut_RB' ;
  StringGrid1.Cells[3,6] :='QTY_EVA' ;
  StringGrid1.Cells[3,7] :='QTY_RB' ;
  StringGrid1.Cells[3,8] :='Pairs' ;
  QueryOut.First();
  for i:=0 to QueryOut.RecordCount do
  begin
     StringGrid1.Cells[1,1+i] :=QueryOut.FieldValues['sku'] ;
     StringGrid1.Cells[2,1+i] :=QueryOut.FieldValues['color'] ;
     //StringGrid1.Cells[4+i,0] :=QueryOut.FieldValues['size'] ;    ,[OUTSOLE]
     StringGrid1.Cells[4+i,0] :=QueryOut.FieldValues['OUTSOLE'] ;
     StringGrid1.Cells[4+i,1] :=QueryOut.FieldValues['Order_Qty'] ;
     StringGrid1.Cells[4+i,2] :=QueryOut.FieldValues['ScanIn_EVA'] ;
     StringGrid1.Cells[4+i,3] :=QueryOut.FieldValues['ScanOut_EVA'] ;
     StringGrid1.Cells[4+i,4] :=QueryOut.FieldValues['ScanIn_RB'] ;
     StringGrid1.Cells[4+i,5] :=QueryOut.FieldValues['ScanOut_RB'] ;
     StringGrid1.Cells[4+i,6] :=QueryOut.FieldValues['QTY_EVA'] ;
     StringGrid1.Cells[4+i,7] :=QueryOut.FieldValues['QTY_RB'] ;
     StringGrid1.Cells[4+i,8] :=QueryOut.FieldValues['Pairs'] ;
     QueryOut.Next();
  end;
  rows:=StringGrid1.ColCount-2 ;
  StringGrid1.Cells[StringGrid1.ColCount-1,0] :='Pairs' ;

  for i:=1 to 8 do
  begin
    sum0:=0;
     for j:=4 to (rows) do
     begin
      sum0:=sum0+StrToInt(StringGrid1.Cells[j,i]);
     end;
     StringGrid1.Cells[rows+1,i]:=IntToStr(sum0) ;
  end;
  end;
end;

procedure TLabelCompare.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
  var vCol, vRow : LongInt;
begin
  vCol := ACol; vRow := ARow;
  WITH Sender AS TStringGrid, Canvas DO
  begin
    IF (vCol > 3) and (vRow>0) THEN
    BEGIN
     SetTextAlign(Handle, TA_RIGHT);
     FillRect(Rect);
     TextRect(Rect, Rect.RIGHT-2, Rect.Top+2, Cells[vCol, vRow]);
    END
    ELSE
    BEGIN
      SetTextAlign(Handle, TA_LEFT);
      FillRect(Rect);
      TextRect(Rect, Rect.Left, Rect.Top+2, Cells[vCol, vRow]);
    END;
    IF (vRow=0) and (vCol>0) THEN
    BEGIN
      canvas.Brush.color := clYellow;
      canvas.font.color := clblue;
      canvas.FillRect(Rect);
      canvas.TextOut(rect.left, rect.top + 2, Cells[vCol, vRow]);
    end;
  end;
end;

end.
