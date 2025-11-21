unit RBLabel1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBTables, DB, StdCtrls, Buttons, ExtCtrls, ComCtrls, GridsEh,
  DBGridEh, Grids, DBGrids,ShellApi,ComObj,DBCtrls;

type
  TRBLabel = class(TForm)
    pc1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    BB3: TBitBtn;
    EDry: TEdit;
    Button1: TButton;
    CBcolor: TComboBox;
    StringGrid1: TStringGrid;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Button2: TButton;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CBsize1: TComboBox;
    CBsize2: TComboBox;
    QueryBtn: TButton;
    Button3: TButton;
    CBbacode: TComboBox;
    CBsku: TComboBox;
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
    QueryRBTmp: TQuery;
    QueryRBWork: TQuery;
    QueryRBCreate: TQuery;
    DataSource1: TDataSource;
    QueryColor: TQuery;
    DataSource2: TDataSource;
    QueryPrint: TQuery;
    Label2: TLabel;
    DataSource3: TDataSource;
    Query1: TQuery;
    TabSheet5: TTabSheet;
    Panel5: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    EDid: TEdit;
    Button5: TButton;
    CBRYcolor: TComboBox;
    DataSource4: TDataSource;
    Query2: TQuery;
    Query2Flag: TStringField;
    Query2Pj_ID: TStringField;
    Query2RY: TStringField;
    Query2XieXing: TStringField;
    Query2SheHao: TStringField;
    Query2ARTICLE: TStringField;
    Query2Color: TStringField;
    Query2Pairs: TIntegerField;
    Query2SCRQ: TStringField;
    Label13: TLabel;
    EDARTICLE: TEdit;
    QueryRBCreateCC: TStringField;
    QueryRBCreateSheHao: TStringField;
    QueryRBCreateARTICLE: TStringField;
    QueryPrintbacord: TStringField;
    QueryPrintsku: TStringField;
    QueryPrintcolor: TStringField;
    QueryPrintsize: TStringField;
    QueryPrintqty: TIntegerField;
    QueryPrintp_ok: TBooleanField;
    Query1id_code: TStringField;
    Query1sku: TStringField;
    Query1color: TStringField;
    Query1size: TStringField;
    Query1total: TIntegerField;
    Query3: TQuery;
    DataSource5: TDataSource;
    UpdateSQL1: TUpdateSQL;
    Label16: TLabel;
    Label18: TLabel;
    CBPrintStatus: TComboBox;
    Label17: TLabel;
    Query2Out_qty: TIntegerField;
    GroupBox1: TGroupBox;
    Label19: TLabel;
    Label14: TLabel;
    DP1: TDateTimePicker;
    Label15: TLabel;
    DP2: TDateTimePicker;
    Label20: TLabel;
    EDBUYNO: TEdit;
    Query1Scan_Ok: TIntegerField;
    Query1out_OK: TIntegerField;
    Label21: TLabel;
    QueryRBCreateqty: TIntegerField;
    QueryRBCreateOUTSOLE: TStringField;
    QueryRBCreateXieXing: TStringField;
    QueryPrintOUTSOLE: TStringField;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Query4: TQuery;
    Query5: TQuery;
    Button6: TButton;
    QueryPrintDDMH: TStringField;
    QueryPrintXieming: TStringField;
    Label22: TLabel;
    ComboBox1: TComboBox;
    QueryPrintBUYNO: TStringField;
    QueryPrintid: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pc1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GetCombobox();
    procedure BB3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure QueryBtnClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CBbacodeExit(Sender: TObject);
    procedure CBbacode2Exit(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    valueSelected: string;
  public
    { Public declarations }
  end;

var
  RBLabel: TRBLabel;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TRBLabel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  RBLabel:=nil;
end;

procedure TRBLabel.FormCreate(Sender: TObject);
begin
  DP1.Date:=IncMonth(Now,-1);
  DP2.Date:=Now;
  query3.SQL.Clear;
  //query3.SQL.Add('SELECT [DDBH],[XieXing],[SheHao],[ARTICLE],[Pairs],[DDRQ] [SCRQ],'' '' color,0 [CGBH] FROM [dbo].[DDZL] where 1<>1');
  query3.SQL.Add('SELECT [DDBH],b.[XieXing],b.[SheHao],b.[ARTICLE],[Pairs],[DDRQ] [SCRQ],RB AS [color],0 [CGBH],''RB_'' + REPLACE([MDMH],''HOKA-'','''') as [DDMH] FROM [dbo].[DDZL] b ');
  query3.SQL.Add(' inner join '+main.LIY_DD+'.dbo.ColorClass d on b.ARTICLE=d.sku ');
  query3.SQL.Add(' INNER JOIN [dbo].[xxzl] c on c.XieXing=b.XieXing and c.SheHao=b.SheHao where 1<>1 ');
  query3.Active:=true;
  pc1.ActivePageIndex:=0;
  StringGrid1.RowCount:=1;
  StringGrid1.ColCount:=10;
  StringGrid1.ColWidths[1]:=100;
  StringGrid1.ColWidths[2]:=100;
  StringGrid1.ColWidths[4]:=120;
  StringGrid1.ColWidths[5]:=100;
  StringGrid1.ColWidths[9]:=100;
  StringGrid1.ColWidths[7]:=100;
  StringGrid1.Cells[1,0] :='DDBH' ;
  StringGrid1.Cells[2,0] :='XieXing' ;
  StringGrid1.Cells[3,0] :='SheHao' ;
  StringGrid1.Cells[4,0] :='ARTICLE' ;
  StringGrid1.Cells[5,0] :='Color' ;
  StringGrid1.Cells[6,0] :='Pairs' ;
  StringGrid1.Cells[7,0] :='SCRQ' ;
  StringGrid1.Cells[8,0] :='CGBH' ;
  StringGrid1.Cells[9,0] :='DDMH' ;
  GetCombobox();
end;

procedure TRBLabel.GetCombobox();
begin
with QueryRBTmp do
        begin
          active:=false;
          sql.Clear;
          sql.add('SELECT distinct [id_code] FROM '+main.LIY_DD+'.[dbo].[rubber01p] where f_ok=0 order by [id_code]');
          active:=true;
        end;
        CBbacode.Items.Clear;
        CBbacode.Items.Add('');
        CBbacode2.Items.Clear;
        CBbacode2.Items.Add('');

        QueryRBTmp.First;
        while not QueryRBTmp.Eof do
        begin
          CBbacode.Items.Add(QueryRBTmp.FieldByName('id_code').Value);
          CBbacode2.Items.Add(QueryRBTmp.FieldByName('id_code').Value);
          QueryRBTmp.Next;
        end;
      with QueryRBTmp do
      begin
        active:=false;
        sql.Clear;
        sql.add('SELECT [EnglishName] FROM '+main.LIY_DD+'.[dbo].[ColorClass] where EnglishName is not null');
        active:=true;
      end;
      QueryRBTmp.First;
      CBcolor.Clear;
      CBcolor.Items.Add('');
      CBRYcolor.Clear;
      CBRYcolor.Items.Add('');
      while not QueryRBTmp.Eof do
      begin
        CBcolor.Items.Add(QueryRBTmp.FieldValues['EnglishName']);
        CBRYcolor.Items.Add(QueryRBTmp.FieldValues['EnglishName']);
        QueryRBTmp.Next;
      end;
      QueryRBTmp.active:=false;
      QueryRBTmp.SQL.Clear;
end;

procedure TRBLabel.pc1Change(Sender: TObject);
var
  i: Integer;
  j:Integer;
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
        with QueryRBCreate do
        begin
          active:=false;
          sql.Clear;
          sql.add('SELECT [CC],(SELECT TOP (1) [GJCC] FROM [dbo].[xxgjs] where [XieXing]=b.[XieXing] and XXCC=a.CC and GJLB=''101'') [OUTSOLE],b.[XieXing]');
          sql.add(',sum([Quantity]) Qty,b.[SheHao],b.[ARTICLE] ,''RB_'' + REPLACE([MDMH],''HOKA-'','''') as [DDMH]  FROM [dbo].[DDZLS] a ');
          sql.add('inner join [dbo].[DDZL] b on a.DDBH=b.DDBH');
          sql.add('inner join [dbo].[xxzl] c on c.XieXing=b.XieXing and c.SheHao=b.SheHao');
          sql.add('where a.DDBH in ('+valueSelected+')');
          sql.add('group by b.[ARTICLE],b.[SheHao],b.[XieXing],[CC],[MDMH] order by [CC] ');
          active:=true;
        end;
        QueryRBCreate.First;
        j:=0;
        while not QueryRBCreate.Eof do
        begin
          j:=j+QueryRBCreate.FieldValues['qty'];
          QueryRBCreate.Next;
        end;
        QueryRBCreate.First;
        Label16.Caption:=IntToStr(j);
      end;
    end;
    if pc1.ActivePageIndex=4 then
    with Query2 do
    begin
    active:=false;
    sql.Clear;

    sql.add('SELECT case [flag] when ''F'' then ''EVA'' else ''RB'' end flag,[id] Pj_ID,[ry],[XieXing],[SheHao],[ARTICLE],[Pairs],[SCRQ],[Color],isnull((SELECT sum([qty]) ');
    sql.add('FROM '+main.LIY_DD+'.[dbo].[rubber01ps] where ry=a.ry and flag=-1),0) Out_qty FROM '+main.LIY_DD+'.[dbo].[rubber01] a where flag=''P'' and [id] LIKE '''+FormatDateTime('YYMMDD', Now)+'%''') ;
    active:=true;
    with QueryRBTmp do
      begin
        active:=false;
        sql.Clear;
        sql.add('SELECT [EnglishName] FROM '+main.LIY_DD+'.[dbo].[ColorClass]');
        active:=true;
      end;
      QueryRBTmp.First;
      CBRYcolor.Clear;
      CBRYcolor.Items.Add('');
      while not QueryRBTmp.Eof do
      begin
        CBRYcolor.Items.Add(QueryRBTmp.FieldValues['EnglishName']);
        QueryRBTmp.Next;
      end;
      QueryRBTmp.active:=false;
      QueryRBTmp.SQL.Clear;
    end;
 end;

procedure TRBLabel.Button1Click(Sender: TObject);
var i: Integer;
qty: Integer;
begin
  if not query3.Active then
  begin
    query3.Active:=true;
  end;
  StringGrid1.RowCount := 1;
  if  (EDARTICLE.Text<>'') AND (EDBUYNO.Text<>'')  then
  begin
   StringGrid1.RowCount := 1;
  if query3.Active then
    query3.DisableControls;
  try
    query3.First;
    while not query3.Eof do
      query3.Delete;
  finally
    if query3.Active then
      query3.EnableControls;
  end;
  with QueryRBWork do
  begin
    active:=false;
    sql.Clear;
    //sql.add('SELECT [DDBH],[XieXing],[SheHao],[ARTICLE],[Pairs],[ShipDate] [SCRQ],(SELECT count(*) FROM [dbo].[KCRKS] where CGBH=[DDZL].[DDBH]) CGBH FROM [dbo].[DDZL] ');
   //sql.add('where ([ShipDate] between '''+FormatDateTime('yyyy-mm-dd',DP1.Date)+''' and '''+FormatDateTime('yyyy-mm-dd',DP2.Date)+''') and [DDBH] not in(SELECT [ry] FROM '+main.LIY_DD+'.[dbo].[rubber01] where flag=''P'')');
    sql.add('SELECT [DDBH],b.[XieXing],b.[SheHao],b.[ARTICLE],[Pairs],[ShipDate] [SCRQ],(SELECT count(*) FROM [dbo].[KCRKS] where CGBH=b.[DDBH]) as CGBH,''RB_'' +REPLACE([MDMH],''HOKA-'','''') as [DDMH], RB FROM TB_ERP.[dbo].[DDZL] b ');
    sql.add('INNER JOIN [dbo].[xxzl] c on c.XieXing=b.XieXing and c.SheHao=b.SheHao ');
    sql.add('  inner join '+main.LIY_DD+'.dbo.ColorClass d on b.ARTICLE=d.sku ');
    sql.add('where ([ShipDate] between '''+FormatDateTime('yyyy-MM-dd',DP1.Date)+''' and '''+FormatDateTime('yyyy-MM-dd',DP2.Date)+''') and [DDBH] not in(SELECT [ry] FROM '+main.LIY_DD+'.[dbo].[rubber01] where flag=''P'')');
    if EDry.Text<>'' then
    begin
    sql.Add(' AND [DDBH] = '''+EDry.Text+'''');
    end;
    if EDARTICLE.Text<>'' then
    begin
    sql.Add(' AND b.[ARTICLE] = '''+EDARTICLE.Text+'''');
    end;
    if EDBUYNO.Text<>'' then
    begin
    sql.Add(' AND [BUYNO] LIKE ''' + EDBUYNO.Text + '%''');
    end;
    sql.Add(' order by ShipDate,[CGBH]');
   // funcObj.WriteErrorLog(SQL.Text);
    active:=true;
  end;
  QueryRBWork.First;
  while not QueryRBWork.Eof do
  begin
    query3.Append;
    query3.FieldByName('DDBH').AsString := QueryRBWork.FieldByName('DDBH').Value;
    query3.FieldByName('XieXing').AsString := QueryRBWork.FieldByName('XieXing').Value;
    query3.FieldByName('SheHao').AsString := QueryRBWork.FieldByName('SheHao').Value;
    query3.FieldByName('ARTICLE').AsString := QueryRBWork.FieldByName('ARTICLE').Value;
    query3.FieldByName('Pairs').AsInteger := QueryRBWork.FieldByName('Pairs').Value;
   // query3.FieldByName('SCRQ').AsString := QueryRBWork.FieldByName('SCRQ').Value;
    query3.FieldByName('SCRQ').AsString := FormatDateTime('yyyy/MM/dd', QueryRBWork.FieldByName('SCRQ').AsDateTime);
    query3.FieldByName('CGBH').AsString := QueryRBWork.FieldByName('CGBH').Value;
     query3.FieldByName('DDMH').AsString := QueryRBWork.FieldByName('DDMH').Value;
    query3.FieldByName('color').AsString :=  QueryRBWork.FieldByName('RB').Value;
    query3.Post;
    QueryRBWork.Next;
  end;

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
   // StringGrid1.Cells[5,i] := query3.FieldByName('color').Value;
    StringGrid1.Cells[5,i] := query3.FieldByName('color').Value;
    StringGrid1.Cells[6,i] := query3.FieldByName('Pairs').Value;
    StringGrid1.Cells[7,i] := query3.FieldByName('SCRQ').Value;
    StringGrid1.Cells[8,i] := query3.FieldByName('CGBH').Value;
    StringGrid1.Cells[9,i] := query3.FieldByName('DDMH').Value;
    qty:=qty+ query3.FieldByName('Pairs').Value;
    query3.Next;
    inc(i);
    end;
    Label21.Caption:=IntTostr(qty);
  QueryRBWork.active:=false;
  end
  else
  begin
    showmessage(' BUYNO and ARTICLE) have must value!!!');
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

procedure TRBLabel.BB3Click(Sender: TObject);
{var
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
end;  }
begin
  try
    with Query5 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+main.LIY_DD+'.[dbo].[rubber01]  WHERE Article=''' + EDARTICLE.Text + ''' and color=''' + CBcolor.Text + ''' and CAST(userdate AS DATE) = CAST(GETDATE() AS DATE)');
      ExecSQL;
    end;
    StringGrid1.RowCount := 1;
    ShowMessage('Xoa du lieu thanh cong!');

  except
    on E: Exception do
      ShowMessage('Xoa that bai: ' + E.Message);
  end;
end;

procedure TRBLabel.Button2Click(Sender: TObject);
var
sku:string;
color:string;
size:string;
SheHao:string;
OUTSOLE:string;
DDMH:string;
msg:string;
maxid:string;
maxid1:string;
maxid2:string;
Value1:string;
XieXing:string;
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

      with QueryRBTmp do
      begin
        active:=false;
        sql.Clear;
        sql.add('SELECT [ry] FROM '+main.LIY_DD+'.[dbo].[rubber01] where flag=''P'' and [ry] in('+Value1+')');
        active:=true;
      end;
    if QueryRBTmp.RecordCount>0 then
    begin
      while not QueryRBTmp.Eof do
      begin
          msg:=msg+QueryRBTmp.FieldByName('ry').Value+',';
          QueryRBTmp.Next;
      end;
      showmessage('Repeat RY:'+msg);
    end
    else
      begin
      //¡Lu¡Óo3a¡M1
        with QueryRBTmp do
        begin
        active:=false;
        sql.Clear;
        sql.add('select max([id]) id from '+main.LIY_DD+'.[dbo].[rubber01] where flag=''P''');
        active:=true;
        end;

        maxid:=Format('%s',[VarToStr(QueryRBTmp.FieldByName('id').Value)]);
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

         QueryRBTmp.active:=false;
        //?O¢DsRY - Barcode 1i¡POai
       if StringGrid1.RowCount > 1 then
        begin
          with StringGrid1.Selection do
            begin
             for i := Top to Bottom do
            begin
          QueryRBTmp.sql.Clear;
          QueryRBTmp.sql.add('INSERT INTO '+main.LIY_DD+'.[dbo].[rubber01] ([id],[ry],[XieXing],[SheHao],[ARTICLE],[Color],[Pairs],[SCRQ],[flag],[DDMH]) ');
          QueryRBTmp.sql.add('Values('''+maxid+''','''+StringGrid1.Cells[1,i]+''','''+StringGrid1.Cells[2,i]+''','''+StringGrid1.Cells[3,i]+''','''+StringGrid1.Cells[4,i]+''','''+StringGrid1.Cells[5,i]+''','''+StringGrid1.Cells[6,i]+''','''+StringGrid1.Cells[7,i]+''',''P'','''+StringGrid1.Cells[9,i]+''');');
          QueryRBTmp.ExecSQL;
        end;
        QueryRBTmp.sql.Clear;
        end;
        end;
        //2¢G¢DI barcode ¢DDAE
        QueryRBCreate.First;
        index:=0;
        while not QueryRBCreate.Eof do
        begin
           sku:=QueryRBCreate.FieldByName('ARTICLE').Value;
           SheHao:=QueryRBCreate.FieldByName('SheHao').Value;
           size:=QueryRBCreate.FieldByName('CC').Value;
           qty:=QueryRBCreate.FieldByName('Qty').Value;
           XieXing:=QueryRBCreate.FieldByName('XieXing').Value;
           OUTSOLE:=QueryRBCreate.FieldByName('OUTSOLE').Value;

           if qty>0 then
           begin
            //¡Lu¡ÓoCOLOR
            color:='';
            QueryColor.Active:=false;
            QueryColor.SQL.Clear;
            QueryColor.SQL.Add('SELECT [Color] FROM '+main.LIY_DD+'.[dbo].[rubber01] where id='''+maxid+''' and [ARTICLE]='''+sku+''' and [SheHao]='''+SheHao+''' and [flag]=''P''');
            QueryColor.Active:=true;
            QueryColor.First;
            if not QueryColor.Eof then
            begin
              color:=QueryColor.FieldByName('Color').Value;
            end;

            //¡Lu¡Óoid
            index:=index+1;
            maxid2:=Format('%.4d',[index]);
            QueryRBTmp.active:=false;
            QueryRBTmp.sql.Clear;
            QueryRBTmp.sql.add('INSERT INTO '+main.LIY_DD+'.[dbo].[rubber01p]');
            QueryRBTmp.sql.add('([OUTSOLE],[XieXing],[id],[id_code],[sku],[color],[size],[qty]) ');
            QueryRBTmp.sql.add('VALUES('''+OUTSOLE+''','''+XieXing+''','''+maxid2+''','''+maxid+''','''+sku+''','''+color+''','''+size+''','+IntToStr(qty)+');');
            QueryRBTmp.ExecSQL;
            QueryRBTmp.sql.Clear;
           end;
           QueryRBCreate.Next;
        end;
        CBbacode.Items.Add(maxid);
        CBbacode.Text:=maxid;
        CBbacode2.Items.Add(maxid);
        CBbacode2.Text:=maxid;
        showmessage('Is ok....');
      end;
    end;
end;

procedure TRBLabel.QueryBtnClick(Sender: TObject);
var j:Integer;
begin
  with QueryPrint do
        begin
          active:=false;
          sql.Clear;
         { sql.add('SELECT ''P''+[id_code]+[id] bacord,[sku],[color],[size],[qty],[p_ok],[OUTSOLE] ');
          sql.add('FROM '+main.LIY_DD+'.[dbo].[rubber01p] where 1=1');}
          sql.add('   WITH base_data AS (   ');
          sql.add('   SELECT ''P''+[id_code]+a.[id] bacord,[sku],a.[color],[size],[qty],[p_ok],[OUTSOLE] , Xieming,''RB_'' +  REPLACE([MDMH],''HOKA-'','''') as [DDMH], BUYNO, b.id ');
          sql.add('   FROM '+main.LIY_DD+'.[dbo].[rubber01p] a');
          sql.add('   inner join '+main.LIY_DD+'.[dbo].[rubber01]  b on a.id_code=b.id and a.sku=b.ARTICLE and b.XieXing=a.XieXing');
          sql.add('   inner join TB_ERP.dbo.xxzl c on c.XieXing=a.XieXing');
          sql.add('   inner join TB_ERP.dbo.DDZL d on d.DDBH=b.ry and d.XieXing=b.XieXing and d.SheHao=b.SheHao and d.ARTICLE=b.ARTICLE');
          if CBbacode.text<>'' then
          begin
            sql.add(' AND [id_code]='''+CBbacode.Text+'''');
          end;
          if CBsku.text<>'' then
          begin
            sql.add(' AND [sku]='''+CBsku.Text+'''');
          end;
          if (CBsize1.text<>'') and (CBsize2.text<>'') then
          begin
            sql.add(' AND size between '''+CBsize1.Text+''' and '''+CBsize2.Text+'''');
          end
          else
          begin
          if CBsize1.text<>'' then
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
          sql.add('   group by sku,a.color,size,qty,p_ok, id_code, a.id, OUTSOLE, XieMing, MDMH, BUYNO, b.id), ');
          //sql.add(' order by sku,a.color,size');
          sql.add(' split_records AS (');
          sql.add(' SELECT bacord, sku, color, size, p_ok, OUTSOLE, Xieming, DDMH, BUYNO, id,');
          sql.add(' CASE WHEN qty > 5 THEN 5 ELSE qty END as qty,');
          sql.add(' qty as original_qty,');
          sql.add(' 1 as split_seq,');
          sql.add(' CASE WHEN qty > 5 THEN qty - 5 ELSE 0 END as remaining_qty');
          sql.add(' FROM base_data ');
          sql.add(' UNION ALL');
          sql.add(' SELECT bacord, sku, color, size, p_ok, OUTSOLE, Xieming, DDMH, BUYNO, id,');
          sql.add(' CASE WHEN remaining_qty > 5 THEN 5 ELSE remaining_qty END as qty,');
          sql.add(' original_qty,');
          sql.add(' split_seq + 1,');
          sql.add(' CASE WHEN remaining_qty > 5 THEN remaining_qty - 5 ELSE 0 END as remaining_qty');
          sql.add(' FROM split_records');
          sql.add(' WHERE remaining_qty > 0 )');
          sql.add(' SELECT bacord, sku, color, size, qty, p_ok, OUTSOLE, Xieming, DDMH, BUYNO, id  ');
          sql.add(' FROM split_records');
          sql.add(' ORDER BY sku, color, size, split_seq');
          sql.add(' OPTION (MAXRECURSION 0) ');
         // funcObj.WriteErrorLog(SQL.Text);
          active:=true;
        end;

        QueryPrint.First;
        j:=0;
        while not QueryPrint.Eof do
        begin
          j:=j+QueryPrint.FieldValues['qty'];
          QueryPrint.Next;
        end;
        QueryPrint.First;
        Label17.Caption:=IntToStr(j);
end;

procedure TRBLabel.Button3Click(Sender: TObject);
var i:integer;
    TxtFile:textfile;
    sline:string;
begin
if (QueryPrint.Active) and (QueryPrint.RecordCount>0) then
begin
  try
    assignfile(TxtFile,ExtractFilePath(Application.ExeName)+'RBSCAN.txt');
    rewrite(TxtFile);
    QueryRBTmp.Active:=false;
    QueryRBTmp.sql.Clear;
    QueryPrint.First;
    i:=1;
    while not QueryPrint.Eof do
    begin
      sline:='';
      sline:=sline+inttostr(i)+',';
      sline:=sline+QueryPrint.fieldbyname('bacord').Value+','; //¡Óo?X-??A
      sline:=sline+QueryPrint.fieldbyname('sku').AsString+',';
      sline:=sline+QueryPrint.fieldbyname('color').AsString+',';
      sline:=sline+QueryPrint.fieldbyname('size').AsString+',';
      sline:=sline+QueryPrint.fieldbyname('qty').AsString+',';
      sline:=sline+QueryPrint.fieldbyname('DDMH').AsString+',';
       sline:=sline+QueryPrint.fieldbyname('XieMing').AsString+',';
       sline:=sline+QueryPrint.fieldbyname('BUYNO').AsString+',';
        sline:=sline+QueryPrint.fieldbyname('id').AsString;
      append(TxtFile);
      writeln(TxtFile, sline);
      QueryRBTmp.SQL.Add('update '+main.LIY_DD+'.[dbo].[rubber01p] set p_ok=1 where p_ok=0 AND ''P''+[id_code]+[id]='''+QueryPrint.fieldbyname('bacord').Value+''';');
      QueryPrint.Next;
      i:=i+1;
    end;
    closefile(TxtFile);
  except
    begin
      closefile(TxtFile);
    end;
  end;

  if fileexists(extractfilepath(application.ExeName)+'RBSCAN.btw') then
  begin
    QueryRBTmp.ExecSQL;
    ShellExecute(Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'RBSCAN.btw'),nil,pchar(ExtractFilePath(Application.ExeName)),SW_SHOW);
  end else
  begin
    showmessage('Pls setup the program first. Abort');
  end;
  end;
end;

procedure TRBLabel.CBbacodeExit(Sender: TObject);
begin
  if CBbacode.Text<>'' then
  begin
    with QueryRBTmp do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [size] FROM '+main.LIY_DD+'.[dbo].[rubber01p] ');
  sql.add('where [id_code]='''+CBbacode.Text+''' order by [size]');
  active:=true;
  end;
  CBsize1.Items.Clear;
  CBsize1.Items.Add('');
  CBsize2.Items.Clear;
  CBsize2.Items.Add('');
  QueryRBTmp.First;
  while not QueryRBTmp.Eof do
  begin
  CBsize1.Items.Add(QueryRBTmp.FieldByName('size').Value);
  CBsize2.Items.Add(QueryRBTmp.FieldByName('size').Value);
  QueryRBTmp.Next;
  end;

  with QueryRBTmp do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [sku] FROM '+main.LIY_DD+'.[dbo].[rubber01p] ');
  sql.add('where [id_code]='''+CBbacode.Text+''' order by [sku]');
  active:=true;
  end;

  CBsku.Items.Clear;
  CBsku.Items.Add('');
  QueryRBTmp.First;
  while not QueryRBTmp.Eof do
  begin
  CBsku.Items.Add(QueryRBTmp.FieldByName('sku').Value);
  QueryRBTmp.Next;
  end;
  QueryRBTmp.active:=false;
  QueryRBTmp.sql.Clear;
  end;
end;

procedure TRBLabel.CBbacode2Exit(Sender: TObject);
begin
if CBbacode2.Text<>'' then
  begin
    with QueryRBTmp do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [size] FROM '+main.LIY_DD+'.[dbo].[rubber01p] ');
  sql.add('where [id_code]='''+CBbacode2.Text+''' order by [size]');
  active:=true;
  end;
  CBsize12.Items.Clear;
  CBsize12.Items.Add('');
  CBsize22.Items.Clear;
  CBsize22.Items.Add('');
  QueryRBTmp.First;
  while not QueryRBTmp.Eof do
  begin
  CBsize12.Items.Add(QueryRBTmp.FieldByName('size').Value);
  CBsize22.Items.Add(QueryRBTmp.FieldByName('size').Value);
  QueryRBTmp.Next;
  end;

  with QueryRBTmp do
  begin
  active:=false;
  sql.Clear;
  sql.add('SELECT distinct [sku] FROM '+main.LIY_DD+'.[dbo].[rubber01p] ');
  sql.add('where [id_code]='''+CBbacode2.Text+''' order by [sku]');
  active:=true;
  end;

  CBsku2.Items.Clear;
  CBsku2.Items.Add('');
  QueryRBTmp.First;
  while not QueryRBTmp.Eof do
  begin
  CBsku2.Items.Add(QueryRBTmp.FieldByName('sku').Value);
  QueryRBTmp.Next;
  end;
  QueryRBTmp.active:=false;
  QueryRBTmp.sql.Clear;
  end;
end;

procedure TRBLabel.Button4Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('SELECT ''P''+[id_code]+[id] id_code,[sku],[color],[size],[qty] total,[s_ok] Scan_Ok,[f_ok] out_OK ');
    sql.add('FROM '+main.LIY_DD+'.[dbo].[rubber01p] where 1=1');

    if CBbacode2.text <> '' then
    begin
      sql.add(' and id_code='''+CBbacode2.text+'''');
    end;
    if CBsku2.text <> '' then
    begin
      sql.add(' and sku='''+CBsku2.text+'''');
    end;
    if (CBsize12.text<>'') and (CBsize22.text<>'') then
    begin
      sql.add(' AND size between '''+CBsize12.Text+''' and '''+CBsize22.Text+'''');
    end
    else
    begin
    if CBsize12.text<>'' then
      begin
        sql.add(' AND size between '''+CBsize12.Text+''' and '''+CBsize12.Text+'''');
      end;
    end;
    sql.add(' order by [id_code],[sku],[color],[size]');
    active:=true;
  end;
end;

procedure TRBLabel.Button5Click(Sender: TObject);
begin
  with Query2 do
    begin
    active:=false;
    sql.Clear;
    sql.add('SELECT case [flag] when ''F'' then ''EVA'' else ''RB'' end flag,id Pj_ID,[ry],[XieXing],[SheHao],[ARTICLE],[Pairs],[SCRQ],[Color],isnull((SELECT sum([qty]) ');
    sql.add('FROM '+main.LIY_DD+'.[dbo].[rubber01ps] where ry=a.ry and flag=-1),0) Out_qty FROM '+main.LIY_DD+'.[dbo].[rubber01] a where flag=''P'' ');
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

procedure TRBLabel.Button6Click(Sender: TObject);
begin
  try
    with Query4 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('DELETE FROM '+main.LIY_DD+'.[dbo].[rubber01p] where id_code in ( select id from '+main.LIY_DD+'.[dbo].[rubber01] where ry='''+EDry.Text+''' and flag=''P'')and s_ok=0 ');
      ExecSQL;
    end;
     ShowMessage('Xoa du lieu thanh cong!');
  except
    on E: Exception do
      ShowMessage('Xoa that bai: ' + E.Message);
  end;
end;



procedure TRBLabel.StringGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
   var
  i, tongPairs: Integer;
  cellValue, dsDDBH: string;
begin
  tongPairs := 0;
  dsDDBH := '';

  with StringGrid1.Selection do
  begin
    for i := Top to Bottom do
    begin
      cellValue := Trim(StringGrid1.Cells[6, i]);
      if cellValue <> '' then
        tongPairs := tongPairs + StrToIntDef(cellValue, 0);
      dsDDBH := dsDDBH + '''' + Trim(StringGrid1.Cells[1, i]) + ''', ';
    end;
  end;

  if dsDDBH <> '' then
    Delete(dsDDBH, Length(dsDDBH) - 1, 2);
  Label21.Caption := IntToStr(tongPairs);
  valueSelected:=    dsDDBH;
end;

end.
