unit Scanlabel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Buttons, ExtCtrls, ComCtrls, GridsEh,
  DBGridEh, Grids, DBGrids,ShellApi,ComObj;

type
  TScanLabel = class(TForm)
    TmpQuery: TQuery;
    workplan: TQuery;
    WP: TDataSource;
    WorkPlanS: TQuery;
    WPS: TDataSource;
    WPSS: TDataSource;
    colorclassQry: TQuery;
    MJZLQry: TQuery;
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    DBGridEh2: TDBGridEh;
    TabSheet3: TTabSheet;
    DBGridEh3: TDBGridEh;
    Panel3: TPanel;
    Button2: TButton;
    workplanDDBH: TStringField;
    workplanXieXing: TStringField;
    workplanSheHao: TStringField;
    workplanARTICLE: TStringField;
    workplanSCRQ: TStringField;
    workplanPairs: TFloatField;
    StringGrid1: TStringGrid;
    BB3: TBitBtn;
    Panel1: TPanel;
    Label3: TLabel;
    CBsize1: TComboBox;
    Label4: TLabel;
    CBsize2: TComboBox;
    QueryBtn: TButton;
    Button3: TButton;
    Label5: TLabel;
    CBbacode: TComboBox;
    Label6: TLabel;
    CBsku: TComboBox;
    WorkPlanS2: TQuery;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    CBsize12: TComboBox;
    CBsize22: TComboBox;
    Button4: TButton;
    CBbacode2: TComboBox;
    CBsku2: TComboBox;
    DBGridEh1: TDBGridEh;
    DataSource1: TDataSource;
    Query1: TQuery;
    EDry: TEdit;
    Button1: TButton;
    CBcolor: TComboBox;
    Label2: TLabel;
    TabSheet5: TTabSheet;
    Query2: TQuery;
    DataSource2: TDataSource;
    Panel5: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    EDid: TEdit;
    Button5: TButton;
    CBRYcolor: TComboBox;
    DBGridEh4: TDBGridEh;
    Query2Pj_ID: TStringField;
    Query2RY: TStringField;
    Query2XieXing: TStringField;
    Query2SheHao: TStringField;
    Query2ARTICLE: TStringField;
    Query2Color: TStringField;
    Query2Pairs: TIntegerField;
    Query2SCRQ: TStringField;
    Query2Flag: TStringField;
    EDARTICLE: TEdit;
    Label13: TLabel;
    WorkPlanSCC: TStringField;
    WorkPlanSSheHao: TStringField;
    WorkPlanSARTICLE: TStringField;
    MJZLQrybacord: TStringField;
    MJZLQrysku: TStringField;
    MJZLQrycolor: TStringField;
    MJZLQrysize: TStringField;
    MJZLQryQty: TIntegerField;
    MJZLQryp_ok: TBooleanField;
    Query1id_code: TStringField;
    Query1sku: TStringField;
    Query1size: TStringField;
    Query1total: TIntegerField;
    Query1Scan_Ok: TIntegerField;
    Query1color: TStringField;
    Query1out_OK: TIntegerField;
    Table1: TTable;
    Query3: TQuery;
    DataSource3: TDataSource;
    UpdateSQL1: TUpdateSQL;
    DP1: TDateTimePicker;
    DP2: TDateTimePicker;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    CBPrintStatus: TComboBox;
    Label18: TLabel;
    Query2Out_qty: TIntegerField;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    EDBUYNO: TEdit;
    Label21: TLabel;
    WorkPlanSqty: TIntegerField;
    WorkPlanSOUTSOLE: TStringField;
    MJZLQryOUTSOLE: TStringField;
    WorkPlanSXieXing: TStringField;
    procedure BB1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pc1Change(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure QueryBtnClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure GetCombobox();
    procedure CBbacodeExit(Sender: TObject);
    procedure CBbacode2Exit(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ScanLabel: TScanLabel;

implementation

uses ProductionPlan1,LabelPrint1, main1;

{$R *.dfm}

procedure TScanLabel.BB1Click(Sender: TObject);
begin
  panel2.Visible:=true;
end;

procedure TScanLabel.Button1Click(Sender: TObject);
var i: Integer;
qty: Integer;
color:string;
begin
  if not query3.Active then
  begin
    query3.Active:=true;
  end;
  if (CBcolor.Text<>'') and ((EDry.Text<>'') OR (EDARTICLE.Text<>'') OR (EDBUYNO.Text<>'')) then
  begin
    if CBcolor.itemindex<1 then
    begin
       color:='';
       TmpQuery.Active:=false;
       TmpQuery.SQL.Clear;
       TmpQuery.SQL.Add('if (select count(*)  FROM '+main.LIY_DD+'.[dbo].[ColorClass] where [EnglishName]='''+CBcolor.Text+''')=0 select max([ColorNo]) ColorNo FROM '+main.LIY_DD+'.[dbo].[ColorClass];') ;
       TmpQuery.active:=true;
       TmpQuery.First;
       if not TmpQuery.Eof then
       begin
          color:=TmpQuery.FieldByName('ColorNo').Value;
          i:=StrToInt(color)+1;
          if i<10 then
          begin
           color:='00'+IntToStr(i);
          end
          else
          begin
            if i<100 then
            begin
              color:='0'+IntToStr(i);
            end
            else
            begin
              color:=IntToStr(i);
            end;
          end;
          TmpQuery.Active:=false;
          TmpQuery.SQL.Clear;
          TmpQuery.SQL.Add('INSERT INTO '+main.LIY_DD+'.[dbo].[ColorClass] ([ColorNo],[EnglishName]) VALUES('''+color+''','''+CBcolor.Text+''')') ;
          TmpQuery.ExecSQL;
       end;
    end;

    with TmpQuery do
    begin
    active:=false;
    sql.Clear;

    sql.add('SELECT [DDBH],[XieXing],[SheHao],[ARTICLE],[Pairs],[ShipDate] [SCRQ],(SELECT count(*) FROM [dbo].[KCRKS] where CGBH=[DDZL].[DDBH]) CGBH FROM [dbo].[DDZL] ');
    sql.add('where ([ShipDate] between '''+FormatDateTime('yyyy-mm-dd',DP1.Date)+''' and '''+FormatDateTime('yyyy-mm-dd',DP2.Date)+''') and [DDBH] not in(SELECT [ry] FROM '+main.LIY_DD+'.[dbo].[rubber01] where flag=''F'')' );
    if EDry.Text<>'' then
    begin
    sql.Add(' AND [DDBH] = '''+EDry.Text+'''');
    end;
    if EDARTICLE.Text<>'' then
    begin
    sql.Add(' AND [ARTICLE] = '''+EDARTICLE.Text+'''');
    end;
    if EDBUYNO.Text<>'' then
    begin
    sql.Add(' AND [BUYNO] = '''+EDBUYNO.Text+'''');
    end;
    sql.Add(' order by [ShipDate],[CGBH]');

    active:=true;
  end;
  TmpQuery.First;
  while not TmpQuery.Eof do
  begin
    query3.Append;
    query3.FieldByName('DDBH').AsString := TmpQuery.FieldByName('DDBH').Value;
    query3.FieldByName('XieXing').AsString := TmpQuery.FieldByName('XieXing').Value;
    query3.FieldByName('SheHao').AsString := TmpQuery.FieldByName('SheHao').Value;
    query3.FieldByName('ARTICLE').AsString := TmpQuery.FieldByName('ARTICLE').Value;
    query3.FieldByName('Pairs').AsInteger := TmpQuery.FieldByName('Pairs').Value;
    query3.FieldByName('SCRQ').AsString := TmpQuery.FieldByName('SCRQ').Value;
    query3.FieldByName('CGBH').AsString := TmpQuery.FieldByName('CGBH').Value;
    query3.FieldByName('color').AsString := CBcolor.Text;
    query3.Post;
    TmpQuery.Next;
  end;
  query3.First;
    i:=1;
    qty:=0;
    StringGrid1.RowCount:=query3.RecordCount+1;
    while not query3.Eof do
    begin
    StringGrid1.Cells[0,i] := IntToStr(i);
    StringGrid1.Cells[1,i] := query3.FieldByName('DDBH').Value;
    StringGrid1.Cells[2,i] := query3.FieldByName('XieXing').Value;
    StringGrid1.Cells[3,i] := query3.FieldByName('SheHao').Value;
    StringGrid1.Cells[4,i] := query3.FieldByName('ARTICLE').Value;
    StringGrid1.Cells[5,i] := query3.FieldByName('color').Value;
    StringGrid1.Cells[6,i] := query3.FieldByName('Pairs').Value;
    StringGrid1.Cells[7,i] := query3.FieldByName('SCRQ').Value;
    StringGrid1.Cells[8,i] := query3.FieldByName('CGBH').Value;
    qty:=qty+ query3.FieldByName('Pairs').Value;
    query3.Next;
    inc(i);
    end;
  Label21.Caption:=IntTostr(qty);
  TmpQuery.active:=false;
  TmpQuery.SQL.Clear;
  end
  else
  begin
    showmessage('Color AND (RY OR ARTICLE) have must value!!!');
  end;
end;


procedure TScanLabel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  workplan.Active:=false;
  workplans.Active:=false;
  TmpQuery.Active:=false;
  colorclassQry.Active:=false;
  MJZLQry.Active:=false;
  Query1.Active:=false;
  workplans2.Active:=false;
  action:=cafree;
  Scanlabel:=nil;
end;

procedure TScanLabel.pc1Change(Sender: TObject);
 var
  i: Integer;
  j: Integer;
  Value1:string;
begin
    if pc1.ActivePageIndex=1 then
    begin
      if StringGrid1.RowCount>1 then
      begin
        for i:=1 to StringGrid1.RowCount-1 do
        begin
          Value1:=Value1+''''+StringGrid1.Cells[1,i]+''',';
        end;
        i:=Length(Value1)-1;
        Value1:=copy(Value1,0,i);
        with WorkPlanS do
        begin
          active:=false;
          sql.Clear;
          //and GJLB=''101''
          sql.add('SELECT [CC],(SELECT TOP (1) [GJCC] FROM [dbo].[xxgjs] where [XieXing]=b.[XieXing] and XXCC=a.CC and GJLB=''101'') [OUTSOLE],[XieXing]');
          sql.add(',sum([Quantity]) Qty,[SheHao],[ARTICLE] FROM [dbo].[DDZLS] a ');
          sql.add('inner join [dbo].[DDZL] b on a.DDBH=b.DDBH');
          sql.add('where a.DDBH in('+Value1+')');
          sql.add('group by [ARTICLE],[SheHao],[XieXing],[CC] order by [CC] ');
          active:=true;
        end;
        WorkPlanS.First;
        while not WorkPlanS.Eof do
        begin
          j:=j+WorkPlanS.FieldValues['qty'];
          WorkPlanS.Next;
        end;
        WorkPlanS.First;
        Label16.Caption:=IntToStr(j);
      end;
    end;
    if pc1.ActivePageIndex=4 then
    with Query2 do
    begin
    active:=false;
    sql.Clear;

    sql.add('SELECT case [flag] when ''F'' then ''EVA'' else ''RB'' end flag,[id] Pj_ID,[ry],[XieXing],[SheHao],[ARTICLE],[Pairs],[SCRQ],[Color],isnull((SELECT sum([qty]) ');
    sql.add('FROM '+main.LIY_DD+'.[dbo].[rubber01fs] where ry=a.ry and flag=-1),0) Out_qty FROM '+main.LIY_DD+'.[dbo].[rubber01] a');
    sql.add('where flag=''F'' and [id] LIKE '''+FormatDateTime('YYMMDD', Now)+'%''') ;
    active:=true;
    with TmpQuery do
      begin
        active:=false;
        sql.Clear;
        sql.add('SELECT [EnglishName] FROM '+main.LIY_DD+'.[dbo].[ColorClass]');
        active:=true;
      end;
      TmpQuery.First;
      CBRYcolor.Clear;
      CBRYcolor.Items.Add('');
      while not TmpQuery.Eof do
      begin
        CBRYcolor.Items.Add(TmpQuery.FieldValues['EnglishName']);
        TmpQuery.Next;
      end;
      TmpQuery.active:=false;
      TmpQuery.SQL.Clear;
    end;
end;

procedure DeleteRow(StringGrid: TStringGrid; ARow: Integer);
var
  i: Integer;
begin
  if (ARow >= 0) and (ARow < StringGrid.RowCount) then
  begin
    for i := ARow + 1 to StringGrid.RowCount - 1 do
      StringGrid.Cells[0, i - 1] := StringGrid.Cells[0, i]; // Adjust 0 for desired column index
    StringGrid.RowCount := StringGrid.RowCount - 1;
  end;
end;

procedure TScanLabel.BB3Click(Sender: TObject);
var
i:Integer;
qty:Integer;
begin
  qty:=StrToInt(Label21.Caption);
  with StringGrid1 do
  begin
    for i := Selection.Bottom downto Selection.Top do
    begin
      if i>0 then
      begin
        query3.First;
        query3.MoveBy(i-1);
        qty:=qty-query3.FieldByName('Pairs').Value;
        query3.Delete;
      end;
    end;
    Label21.Caption:=IntToStr(qty);
    query3.First;
    i:=1;
    StringGrid1.RowCount:=query3.RecordCount+1;
    while not query3.Eof do
    begin
    StringGrid1.Cells[0,i] := IntToStr(i);
    StringGrid1.Cells[1,i] := query3.FieldByName('DDBH').Value;
    StringGrid1.Cells[2,i] := query3.FieldByName('XieXing').Value;
    StringGrid1.Cells[3,i] := query3.FieldByName('SheHao').Value;
    StringGrid1.Cells[4,i] := query3.FieldByName('ARTICLE').Value;
    StringGrid1.Cells[5,i] := query3.FieldByName('color').Value;
    StringGrid1.Cells[6,i] := query3.FieldByName('Pairs').Value;
    StringGrid1.Cells[7,i] := query3.FieldByName('SCRQ').Value;
    StringGrid1.Cells[8,i] := query3.FieldByName('CGBH').Value;
    query3.Next;
    inc(i);
    end;
  end;
end;

procedure TScanLabel.GetCombobox();
begin
with colorclassQry do
        begin
          active:=false;
          sql.Clear;
          sql.add('SELECT distinct [id_code] FROM '+main.LIY_DD+'.[dbo].[rubber01f] where p_ok=0 order by [id_code]');
          active:=true;
        end;
        CBbacode.Items.Clear;
        CBbacode.Items.Add('');
        CBbacode2.Items.Clear;
        CBbacode2.Items.Add('');

        colorclassQry.First;
        while not colorclassQry.Eof do
        begin
          CBbacode.Items.Add(colorclassQry.FieldByName('id_code').Value);
          CBbacode2.Items.Add(colorclassQry.FieldByName('id_code').Value);
          colorclassQry.Next;
        end;
      with colorclassQry do
      begin
        active:=false;
        sql.Clear;
        sql.add('SELECT [EnglishName] FROM '+main.LIY_DD+'.[dbo].[ColorClass]');
        active:=true;
      end;
      colorclassQry.First;
      CBcolor.Clear;
      CBcolor.Items.Add('');
      CBRYcolor.Clear;
      CBRYcolor.Items.Add('');
      while not colorclassQry.Eof do
      begin
        CBcolor.Items.Add(colorclassQry.FieldValues['EnglishName']);
        CBRYcolor.Items.Add(colorclassQry.FieldValues['EnglishName']);
        colorclassQry.Next;
      end;
      colorclassQry.SQL.Clear;
      colorclassQry.active:=false;
end;

procedure TScanLabel.FormCreate(Sender: TObject);
begin
  query3.SQL.Clear;
  query3.SQL.Add('SELECT [DDBH],[XieXing],[SheHao],[ARTICLE],[Pairs],[DDRQ] [SCRQ],''                              '' [color],0 [CGBH] FROM [dbo].[DDZL] where 1<>1');
  query3.Active:=true;
  DP1.Date:=IncMonth(Now,-1);
  DP2.Date:=Now;
  pc1.ActivePageIndex:=0;
  StringGrid1.RowCount:=1;
  StringGrid1.ColCount:=9;
  StringGrid1.ColWidths[1]:=180;
  StringGrid1.ColWidths[2]:=180;
  StringGrid1.ColWidths[4]:=160;
  StringGrid1.ColWidths[5]:=160;
  StringGrid1.ColWidths[7]:=120;
  StringGrid1.Cells[1,0] :='DDBH' ;
  StringGrid1.Cells[2,0] :='XieXing' ;
  StringGrid1.Cells[3,0] :='SheHao' ;
  StringGrid1.Cells[4,0] :='ARTICLE' ;
  StringGrid1.Cells[5,0] :='Color' ;
  StringGrid1.Cells[6,0] :='Pairs' ;
  StringGrid1.Cells[7,0] :='SCRQ' ;
  StringGrid1.Cells[8,0] :='CGBH' ;
  GetCombobox();
end;

procedure TScanLabel.Button2Click(Sender: TObject);
var
sku:string;
color:string;
size:string;

msg:string;
maxid:string;
maxid1:string;
maxid2:string;
Value1:string;
SheHao:string;
XieXing:string;
OUTSOLE:string;
i:Integer;
qty:Integer;
index:Integer;
begin
    if StringGrid1.RowCount>1 then
    begin
      for i:=1 to StringGrid1.RowCount-1 do
      begin
        Value1:=Value1+''''+StringGrid1.Cells[1,i]+''',';
      end;
      Value1:=Copy(Value1, 0, Length(Value1)-1) ;

      with TmpQuery do
      begin
        active:=false;
        sql.Clear;
        sql.add('SELECT [ry] FROM '+main.LIY_DD+'.[dbo].[rubber01] where flag=''F'' and [ry] in('+Value1+')');
        active:=true;
      end;
    if TmpQuery.RecordCount>0 then
    begin
      while not TmpQuery.Eof do
      begin
          msg:=msg+TmpQuery.FieldByName('ry').Value+',';
          TmpQuery.Next;
      end;
      showmessage('Repeart RY:'+msg);
    end
    else
      begin
      //取得單號
        with TmpQuery do
        begin
        active:=false;
        sql.Clear;
        sql.add('select max([id]) id from '+main.LIY_DD+'.[dbo].[rubber01] where flag=''F''');
        active:=true;
        end;

        maxid:=Format('%s',[VarToStr(TmpQuery.FieldByName('id').Value)]);
        if maxid='' then
          begin
            maxid:=FormatDateTime('YYMMDD', Now)+'01';
          end
        else
          begin
            maxid1:=FormatDateTime('YYMMDD', Now);
            maxid2:=Copy(maxid,1,6);
            if maxid1=maxid2 then
              begin
                index:=StrToInt(Copy(maxid,7,2))+1;
                maxid:=maxid2+Format('%.2d',[index]);
              end
            else
            begin
              maxid:=FormatDateTime('YYMMDD', Now)+'01';
            end;
	        end;

        TmpQuery.active:=false;
        TmpQuery.sql.Clear;

        //建立RY - Barcode 對照表
        for i:=1 to StringGrid1.RowCount-1 do
        begin
          TmpQuery.sql.add('INSERT INTO '+main.LIY_DD+'.[dbo].[rubber01] ([id],[ry],[XieXing],[SheHao],[ARTICLE],[Color],[Pairs],[SCRQ],[flag]) ');
          TmpQuery.sql.add('Values('''+maxid+''','''+StringGrid1.Cells[1,i]+''','''+StringGrid1.Cells[2,i]+''','''+StringGrid1.Cells[3,i]+''','''+StringGrid1.Cells[4,i]+''','''+StringGrid1.Cells[5,i]+''','''+StringGrid1.Cells[6,i]+''','''+StringGrid1.Cells[7,i]+''',''F'')');
        end;
        TmpQuery.ExecSQL;

        //產生 barcode 主檔
        WorkPlanS.First;
        index:=0;
        while not WorkPlanS.Eof do
        begin
          index:=index+1;
          maxid2:=Format('%.4d',[index]);
           sku:=WorkPlanS.FieldByName('ARTICLE').Value;
           size:=WorkPlanS.FieldByName('CC').Value;
           qty:=WorkPlanS.FieldByName('Qty').Value;
           SheHao:=WorkPlanS.FieldByName('SheHao').Value;
           XieXing:=WorkPlanS.FieldByName('XieXing').Value;
           OUTSOLE:=WorkPlanS.FieldByName('OUTSOLE').Value;
           TmpQuery.sql.Clear;
           if qty>0 then
           begin
           //取得COLOR
            color:='';
            colorclassQry.Active:=false;
            colorclassQry.SQL.Clear;
            colorclassQry.SQL.Add('SELECT [Color] FROM '+main.LIY_DD+'.[dbo].[rubber01] where id='''+maxid+''' and [ARTICLE]='''+sku+''' and [SheHao]='''+SheHao+''' and [flag]=''F''');
            colorclassQry.Active:=true;
            colorclassQry.First;
            if not colorclassQry.Eof then
            begin
              color:=colorclassQry.FieldByName('Color').Value;
            end;
           colorclassQry.SQL.Clear;
           colorclassQry.Active:=false;

           TmpQuery.sql.add('INSERT INTO '+main.LIY_DD+'.[dbo].[rubber01f]');
           TmpQuery.sql.add('([OUTSOLE],[XieXing],[id],[id_code],[sku],[color],[size],[qty]) ');
           TmpQuery.sql.add('VALUES('''+OUTSOLE+''','''+XieXing+''','''+maxid2+''','''+maxid+''','''+sku+''','''+color+''','''+size+''','+IntToStr(qty)+');');
           TmpQuery.ExecSQL;
           end;
           TmpQuery.sql.Clear;
           WorkPlanS.Next;
        end;
        CBbacode.Items.Add(maxid);
        CBbacode.Text:=maxid;
        CBbacode2.Items.Add(maxid);
        CBbacode2.Text:=maxid;
        showmessage('Is ok....');
      end;
    end;
end;

procedure TScanLabel.BitBtn1Click(Sender: TObject);
begin
  if LabelPrint<>nil then
  begin
    LabelPrint.show;
    LabelPrint.windowstate:=wsNormal;
  end else
  begin
    LabelPrint:=TLabelPrint.create(self);
    LabelPrint.show;
  end;
end;

procedure TScanLabel.Button3Click(Sender: TObject);
var i:integer;
    TxtFile:textfile;
    sline:string;
begin
  try
    assignfile(TxtFile,ExtractFilePath(Application.ExeName)+'EVASCAN.txt');
    rewrite(TxtFile);
    TmpQuery.Active:=false;
    TmpQuery.sql.Clear;
    MJZLQry.First;
    i:=1;
    while not MJZLQry.Eof do
    begin
      sline:='';
      sline:=sline+inttostr(i)+',';
      sline:=sline+MJZLQry.fieldbyname('bacord').Value+','; //條碼重複
      sline:=sline+MJZLQry.fieldbyname('sku').AsString+',';
      sline:=sline+MJZLQry.fieldbyname('color').AsString+',';
      sline:=sline+MJZLQry.fieldbyname('OUTSOLE').AsString+',';
      sline:=sline+MJZLQry.fieldbyname('qty').AsString;
      append(TxtFile);
      writeln(TxtFile, sline);
      TmpQuery.SQL.Add('update '+main.LIY_DD+'.[dbo].[rubber01f] set p_ok=1 where p_ok=0 AND [id_code]+[id]='''+MJZLQry.fieldbyname('bacord').Value+''';');
      MJZLQry.Next;
      inc(i);
    end;
    closefile(TxtFile);
  except
    begin
      closefile(TxtFile);
    end;
  end;
  if fileexists(extractfilepath(application.ExeName)+'EVASCAN.btw') then
  begin
    TmpQuery.ExecSQL;
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'EVASCAN.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
  end else
  begin
    showmessage('Pls setup the program first. Abort');
  end;
  QueryBtnClick(nil);
end;

procedure TScanLabel.QueryBtnClick(Sender: TObject);
var j:Integer;
begin
  with MJZLQry do
        begin
          active:=false;
          sql.Clear;
          sql.add('SELECT [id_code]+[id] bacord,[sku],[color],[size],[qty],[p_ok],[OUTSOLE] ');
          sql.add('FROM '+main.LIY_DD+'.[dbo].[rubber01f] a where 1=1');
          if CBbacode.Text<>'' then
          begin
            sql.add(' AND [id_code]='''+CBbacode.Text+'''');
          end;
          if CBsku.Text<>'' then
          begin
            sql.add(' AND [sku]='''+CBsku.Text+'''');
          end;
          if (CBsize1.Text<>'') and (CBsize2.Text<>'') then
          begin
            sql.add(' AND size between '''+CBsize1.Text+''' and '''+CBsize2.Text+'''');
          end
          else
          begin
          if CBsize1.Text<>'' then
          begin
            sql.add(' AND size between '''+CBsize1.Text+''' and '''+CBsize1.Text+'''');
          end;
          end;
          if CBPrintStatus.ItemIndex=1 then
          begin
            sql.add(' AND [p_ok]=1 ');
          end;
          if CBPrintStatus.ItemIndex=2 then
          begin
            sql.add(' AND [p_ok]=0 ');
          end;
          sql.add('order by sku,color,size');
          active:=true;
        end;
        MJZLQry.First;
        j:=0;
        while not MJZLQry.Eof do
        begin
          j:=j+MJZLQry.FieldValues['qty'];
          MJZLQry.Next;
        end;
        MJZLQry.First;
        Label17.Caption:=IntToStr(j);
end;

procedure TScanLabel.Button4Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT [id_code]+[id] id_code,[sku],[color],[size],[qty] total,[s_ok] Scan_Ok,[f_ok] out_OK ');
    sql.add('FROM '+main.LIY_DD+'.[dbo].[rubber01f] where 1=1');
    if CBbacode2.text <> '' then
    begin
      sql.add(' and id_code='''+CBbacode2.text+'''');
    end;
    if CBsku2.text <> '' then
    begin
      sql.add(' and sku='''+CBsku2.text+'''');
    end;
    if (CBsize12.ItemIndex>0) and (CBsize22.ItemIndex>0) then
    begin
      sql.add(' AND size between '''+CBsize12.Text+''' and '''+CBsize22.Text+'''');
    end
    else
    begin
    if CBsize12.ItemIndex>0 then
      begin
        sql.add(' AND size between '''+CBsize12.Text+''' and '''+CBsize12.Text+'''');
      end;
    end;
    sql.add(' order by [id_code],[sku],[color],[size]');
    active:=true;
  end;
end;

procedure TScanLabel.CBbacodeExit(Sender: TObject);
begin
  if CBbacode.Text<>'' then
  begin
    with TmpQuery do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [size] FROM '+main.LIY_DD+'.[dbo].[rubber01f] ');
  sql.add('where [id_code]='''+CBbacode.Text+''' order by [size]');
  active:=true;
  end;
  CBsize1.Items.Clear;
  CBsize1.Items.Add('');
  CBsize2.Items.Clear;
  CBsize2.Items.Add('');
  TmpQuery.First;
  while not TmpQuery.Eof do
  begin
  CBsize1.Items.Add(TmpQuery.FieldByName('size').Value);
  CBsize2.Items.Add(TmpQuery.FieldByName('size').Value);
  TmpQuery.Next;
  end;

  with TmpQuery do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [sku] FROM '+main.LIY_DD+'.[dbo].[rubber01f] ');
  sql.add('where [id_code]='''+CBbacode.Text+''' order by [sku]');
  active:=true;
  end;

  CBsku.Items.Clear;
  CBsku.Items.Add('');
  TmpQuery.First;
  while not TmpQuery.Eof do
  begin
  CBsku.Items.Add(TmpQuery.FieldByName('sku').Value);
  TmpQuery.Next;
  end;
  TmpQuery.active:=false;
  TmpQuery.sql.Clear;
  end;
end;

procedure TScanLabel.CBbacode2Exit(Sender: TObject);
begin
if CBbacode2.Text<>'' then
  begin
    with TmpQuery do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [size] FROM '+main.LIY_DD+'.[dbo].[rubber01f] ');
  sql.add('where [id_code]='''+CBbacode2.Text+''' order by [size]');
  active:=true;
  end;
  CBsize12.Items.Clear;
  CBsize12.Items.Add('');
  CBsize22.Items.Clear;
  CBsize22.Items.Add('');

  TmpQuery.First;
  while not TmpQuery.Eof do
  begin
  CBsize12.Items.Add(TmpQuery.FieldByName('size').Value);
  CBsize22.Items.Add(TmpQuery.FieldByName('size').Value);
  TmpQuery.Next;
  end;

  with TmpQuery do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [sku] FROM '+main.LIY_DD+'.[dbo].[rubber01f] ');
  sql.add('where [id_code]='''+CBbacode2.Text+''' order by [sku]');
  active:=true;
  end;

  CBsku2.Items.Clear;
  CBsku2.Items.Add('');
  TmpQuery.First;
  while not TmpQuery.Eof do
  begin
  CBsku2.Items.Add(TmpQuery.FieldByName('sku').Value);
  TmpQuery.Next;
  end;
  TmpQuery.active:=false;
  TmpQuery.sql.Clear;
  end;
end;

procedure TScanLabel.Button5Click(Sender: TObject);
begin
  with Query2 do
    begin
    active:=false;
    sql.Clear;

    sql.add('SELECT case [flag] when ''F'' then ''EVA'' else ''RB'' end flag,id Pj_ID,[ry],[XieXing],[SheHao],[ARTICLE],[Pairs],[SCRQ],[Color],isnull((SELECT sum([qty]) ');
    sql.add('FROM '+main.LIY_DD+'.[dbo].[rubber01fs] where ry=a.ry and flag=-1),0) Out_qty FROM '+main.LIY_DD+'.[dbo].[rubber01] a where flag=''F'' ');
    if EDid.Text<>'' then
    begin
      sql.Add('and [ry] LIKE '''+EDid.Text+'%'' ') ;
    end;
    if CBRYcolor.Text<>'' then
    begin
      sql.Add('and [Color]= '''+CBRYcolor.Text+'''') ;
    end;
    sql.add('order by [id]');
    active:=true;

  end;
end;

procedure TScanLabel.Button6Click(Sender: TObject);
begin
query3.Active:=true;
 query3.Append;
    query3.FieldByName('DDBH').AsString := 'qqqqq';
    query3.FieldByName('XieXing').AsString := 'ACCOUNTING';
    query3.FieldByName('SheHao').AsString := 'NEW YORK';

    query3.FieldByName('ARTICLE').AsString := 'qqqqq';
    query3.FieldByName('Pairs').AsInteger := 10;
    query3.FieldByName('SCRQ').AsString := 'NEW YORK';
    query3.Post;
    query3.Append;
    query3.FieldByName('DDBH').AsString := 'qqqqq';
    query3.FieldByName('XieXing').AsString := 'ACCOUNTING';
    query3.FieldByName('SheHao').AsString := 'NEW YORK';

    query3.FieldByName('ARTICLE').AsString := 'qqqqq';
    query3.FieldByName('Pairs').AsInteger := 10;
    query3.FieldByName('SCRQ').AsString := 'NEW YORK';
    query3.Post;
    query3.MoveBy(1);
    query3.Delete;
end;

end.
