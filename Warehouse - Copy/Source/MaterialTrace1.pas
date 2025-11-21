unit MaterialTrace1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls,DateUtils,
  DBCtrls, Menus, GridsEh, DBGridEh, Comobj, IniFiles, Printers;

type
  TMaterialTrace = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBGrid2: TDBGridEh;
    DBGrid1: TDBGridEh;
    KCRK: TQuery;
    DS1: TDataSource;
    KCLL: TQuery;
    DS2: TDataSource;
    KCRKRKNO: TStringField;
    KCRKUSERDATE: TDateTimeField;
    KCRKQty: TCurrencyField;
    KCLLLLNO: TStringField;
    KCLLQty: TCurrencyField;
    KCLLSCBH: TStringField;
    DTP1: TDateTimePicker;
    Label3: TLabel;
    Material: TQuery;
    UpSQL1: TUpdateSQL;
    DS3: TDataSource;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    KCLLCFMID: TStringField;
    KCRKCFMID: TStringField;
    KCRKZSBH: TStringField;
    KCLLCFMDATE: TDateTimeField;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    KCLLMemo: TStringField;
    KCRKMemo: TStringField;
    Label7: TLabel;
    CBX1: TComboBox;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    PopupMenu2: TPopupMenu;
    EXCEL2: TMenuItem;
    JGDet1: TMenuItem;
    JGDet2: TMenuItem;
    KCRKInvoice: TStringField;
    CB_2014: TCheckBox;
    CGNOEdit: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    InvEdit: TEdit;
    KCRKPaperNo: TStringField;
    CB3: TCheckBox;
    KCRKZLBH: TStringField;
    Splitter1: TSplitter;
    Button10: TButton;
    KCLLHGLB: TStringField;
    KCLLCNO: TStringField;
    KCRKHGLB: TStringField;
    KCRKCNO: TStringField;
    Label10: TLabel;
    HGLBEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EXCEL2Click(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure JGDet1Click(Sender: TObject);
    procedure JGDet2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    GSBH_SFL:String;
    AppDir:String;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  MaterialTrace: TMaterialTrace;

implementation

uses MaterialTrace_Print1, main1, MaterialTrace_JG1, MaterialTrace_JGA1, FunUnit;

{$R *.dfm}

procedure TMaterialTrace.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(KCRK.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KCLL.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;

end;

procedure TMaterialTrace.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  free;
end;

procedure TMaterialTrace.Button1Click(Sender: TObject);
var year,month,day:word;
    ayear,amonth:string;
begin
  decodedate(DTP1.Date,Year,Month,Day);   //找庫存相關的數據
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
  amonth:='0'+amonth;
  with KCLL do          //出庫數量清單
  begin
    active:=false;
    sql.Clear;
    if CB_2014.Checked then
    begin
    sql.add('select * from (');
    end;
    sql.add('select * from ( select * from ( ');
    //20160521 round 2 numeric for Qty
    sql.add('select JGZL.JGNO as LLNO,JGZL.CFMDate1 as CFMDate,JGZL.CFMID1 as CFMID,round(convert(float,JGZLS.Qty)*convert(float,JGZLM.Qty),'+WH_Decimal+') as Qty');
    sql.add('      ,cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as SCBH ');
    sql.add('      , ''JG'' as Memo,''GC'' as HGLB,'''' as CNO  ' );
    sql.add('from JGZLS  ');
    sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO  ');
    sql.add('left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
    sql.add('          left join JGZL on JGZL.JGNO=JGZLS.JGNO where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'' '); //2017/09/01 sua gia cong vat tu
    sql.add('          and JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
    SQL.Add('and JGZL.CKBH='''+CBX1.Text+''' ');
    sql.add('          ) JGZLM on JGZLM.JGNO=JGZLS.JGNO and JGZLM.CLBH=JGZLS.CLBH');
    sql.add('where JGZL.CFMDate1>='''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('          and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111))<''2017/09/01'''); //2017/09/01 sua gia cong vat tu
    sql.add('    and JGZLS.ZMLB='''+edit1.Text+'''');
    SQL.Add('    and JGZL.CKBH='''+CBX1.Text+''' ');
    sql.add('    and JGZLS.ZMLB <>''ZZZZZZZZZZ'' ');  //2017/09/01 sua gia cong vat tu
    //2017/09/01 sua gia cong vat tu

    sql.Add('and ISNULL(flowflag,'''')<>''X'' ');
    
    sql.add('union all');
    sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo,KCLLS.HGLB,KCLLS.CNO ');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ');
    sql.add('where  KCLLS.CLBH='''+edit1.Text+'''');
    SQL.Add('    and KCLL.CKBH='''+CBX1.Text+''' ');

    sql.Add('and ISNULL(flowflag,'''')<>''X'' ');
    if HGLBEdit.Text<>'' then
      sql.Add(' and KCLLS.HGLB='''+HGLBEdit.Text+''' ');

    sql.add('    and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('    and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    //隱藏XT
    if IsHide_Warehouse_XT='Y' then
      sql.add('  and KCLLS.HGLB<>''XT'' ');
    //2017/09/01 sua gia cong vat tu
    sql.Add('   and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
    sql.add('   and KCLL.SCBH = ''JJJJJJJJJJ'')');
    sql.add(') JGCK ');
    sql.add('union all');
    sql.add('select KCLL.LLNO,KCLL.CFMDATE,KCLL.CFMID,KCLLS.Qty,KCLLS.SCBH, BDepartment.DepName as Memo,KCLLS.HGLB,KCLLS.CNO ');
    sql.add('from KCLLS');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('where  KCLLS.CLBH='''+edit1.Text+'''');
    SQL.Add('   and KCLL.CKBH='''+CBX1.Text+''' ');
    sql.add('   and KCLL.SCBH <> ''JJJJJJJJJJ''');

    sql.Add('and ISNULL(flowflag,'''')<>''X'' ');
    if HGLBEdit.Text<>'' then
      sql.Add(' and KCLLS.HGLB='''+HGLBEdit.Text+''' ');

    sql.add('   and (convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' '  );
    sql.add('   and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' '  );
    //隱藏XT
    if IsHide_Warehouse_XT='Y' then
      sql.add(' and KCLLS.HGLB<>''XT'' ');
    if  CB3.Checked then
    begin
      sql.Add(')');
    end else
    begin
      sql.add('or KCLL.CFMDATE is null)');
    end;
    sql.add(') JGCK ');
    if not CB_2014.Checked then
    begin
      sql.Add('order by JGCK.CFMDate');
    end;
    if CB_2014.Checked then
    begin
      sql.add('union all');
      sql.add('select KCLL_2014.LLNO,KCLL_2014.CFMDATE,KCLL_2014.CFMID,KCLLS_2014.Qty,KCLLS_2014.SCBH, BDepartment.DepName as Memo,KCLLS_2014.HGLB,KCLLS_2014.CNO');
      sql.add('from KCLLS_2014');
      sql.add('left join KCLL_2014 on KCLL_2014.LLNO=KCLLS_2014.LLNO ');
      sql.add('left join BDepartment on BDepartment.ID=KCLL_2014.DepID ') ;
      sql.add('where  KCLLS_2014.CLBH='''+edit1.Text+''' ');

      sql.Add('and ISNULL(flowflag,'''')<>''X'' ');
      if HGLBEdit.Text<>'' then
      sql.Add(' and KCLL_2014.HGLB='''+HGLBEdit.Text+''' ');

      SQL.Add('and KCLL_2014.CKBH='''+CBX1.Text+''' ');
      sql.add('and (convert(smalldatetime,convert(varchar,KCLL_2014.CFMDate,111)) between ');
      sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
      sql.add('     and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
      //隱藏XT
      if IsHide_Warehouse_XT='Y' then
        sql.add('   and KCLLS_2014.HGLB<>''XT'' ');
      if  CB3.Checked then
      begin
        sql.Add(')');
      end else
      begin
        sql.add('or KCLL_2014.CFMDATE is null )');
      end;
      sql.add(') JGCK ');
      sql.add('order by JGCK.CFMDate');
    end;

    //funcobj.WriteErrorLog(sql.Text);
    
    active:=true;
  end;
  with KCRK do     //入庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('Select JGZL.JGNO as RKNO,JGZL.CFMDate1 as USERDATE,JGZL.ZSBH,JGZL.CFMID1 as CFMID,JGZLS.Qty,');
    sql.add('       ''JG'' as Memo,'''' as Invoice,'''' as PaperNo ');
    sql.add('       ,cast((select JGZLSS.ZLBH+''( ''+Convert(varchar,JGZLSS.Qty)+'' )'' + '','' from JGZLSS  where JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH for XML Path ('''')) as varchar(500))  as ZLBH,''GC'' as HGLB,'''' as CNO ');
    sql.add('from JGZL,JGZLS ');
    sql.add('where JGZL.JGNO=JGZLS.JGNO and JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
    sql.add('     and JGZLS.CLBH='''+edit1.Text+'''');
    sql.add('     and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('     and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    SQL.Add('     and JGZL.CKBH='''+CBX1.Text+''' ');
    
    sql.Add('     and ISNULL(flowflag,'''')<>''X'' ');

    sql.add('union all');
    sql.add('select KCRK.RKNO,KCRK.USERDATE,KCRK.ZSBH,KCRK.CFMID ,KCRKS.Qty,KCRK.ZSNO as Memo,kcrk.docno as Invoice,KCRK.Memo as PaperNo,KCRKS.CGBH as ZLBH,KCRK.HGLB,KCRKS.CNO  ');
    sql.add('from KCRKS');
    sql.Add('inner join KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.add('where KCRKS.CLBH='''+edit1.Text+'''');
    sql.add('     and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
    sql.add('     and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    SQL.Add('     and KCRK.CKBH='''+CBX1.Text+''' ');

    sql.Add('     and ISNULL(flowflag,'''')<>''X'' ');

    if CGNOEdit.Text<>'' then
      SQL.add('   and KCRK.ZSNO='''+CGNOEdit.Text+''' ');
    if INVEdit.Text<>'' then
      SQL.add('   and KCRK.DOCNO='''+INVEdit.Text+''' ');
    if HGLBEdit.Text<>'' then
      SQL.add('   and KCRK.HGLB='''+HGLBEdit.Text+''' ');
    //隱藏XT
    if IsHide_Warehouse_XT='Y' then
      sql.add('   and KCRK.HGLB<>''XT'' ');
    if not CB_2014.Checked then
    begin
      SQL.Add('order by USERDATE');
    end;
    if CB_2014.Checked then
    begin
      sql.add('union all');
      sql.add('select * from ( ');
      sql.add('select KCRK_2014.RKNO,KCRK_2014.USERDATE,KCRK_2014.ZSBH,KCRK_2014.CFMID ,KCRKS_2014.Qty,KCRK_2014.ZSNO as Memo,KCRK_2014.docno as Invoice,KCRK_2014.memo as PaperNo,KCRKS_2014.CGBH as ZLBH,KCRK_2014.HGLB,KCRKS_2014.CNO   ');
      sql.add('from KCRKS_2014');
      sql.Add('inner join KCRK_2014 on KCRK_2014.RKNO=KCRKS_2014.RKNO');
      sql.add('where KCRKS_2014.CLBH='''+Edit1.Text+'''');

      sql.Add('     and ISNULL(flowflag,'''')<>''X'' ');
      
      sql.add('      and convert(smalldatetime,convert(varchar,KCRK_2014.USERDATE,111)) between ');
      sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''  );
      sql.add('     and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
      sql.Add('     and KCRK_2014.CKBH='''+CBX1.Text+''' ');
      if CGNOEdit.Text<>'' then
         sql.add('   and KCRK_2014.ZSNO='''+CGNOEdit.Text+''' ');
      if INVEdit.Text<>'' then
         sql.add('   and KCRK_2014.DOCNO='''+INVEdit.Text+''' ');
      if HGLBEdit.Text<>'' then
         SQL.add('   and KCRK_2014.HGLB='''+HGLBEdit.Text+''' ');
      //隱藏XT
      if IsHide_Warehouse_XT='Y' then
        sql.add('    and KCRK_2014.HGLB<>''XT'' ');
      sql.add(')  KCRK ');
      sql.add('order by USERDATE');
    end;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //材料名稱及庫存數量的更新
  with material do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CLZL.CLDH,CLZL.YWPM,CLZL.DWBH,1000.00 as Remainder, ');
    sql.add(' 1000.00 as RKQty,1000.00 as LLQty,1000.00 as NeedQty,1000.00 as OnQty ');
    sql.add('from CLZL  where CLDH='''+edit1.Text+'''');
    active:=true;
  end;
end;

procedure TMaterialTrace.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  DTP1.date:=startofthemonth(Date);
  DTP2.date:=date;
  with query1 do
  begin
    active:=false;
    sql.clear;
    sql.add('select CKBH from KCCK where GSBH='+''''+main.Edit2.Text+'''');
    active:=true;
    while not eof do
    begin
      CBX1.Items.Add(fields[0].value);
      next;
    end;
    if CBX1.text='' then CBX1.ItemIndex:=0;
    active:=false;
  end;
  with query1 do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select SFL from Bgszl where GSDH='''+main.Edit2.Text+''' ');
    active:=true;
    GSBH_SFL:=FieldByName('SFL').AsString;
    Active:=false;
  end;
  material.Active:=false;
  KCLL.Active:=false;
  KCRK.Active:=false;
  ReadIni();
end;

procedure TMaterialTrace.Button2Click(Sender: TObject);
begin
  MaterialTrace_Print:=TMaterialTrace_Print.create(self);
  if GSBH_SFL='TM' then
    MaterialTrace_Print.QRLabel8.Enabled:=True;

  MaterialTrace_Print.quickrep1.preview;
  MaterialTrace_Print.free;
end;

procedure TMaterialTrace.EXCEL2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if KCRK.Active then
  begin
    if KCRK.recordcount=0 then
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
    for   i:=1   to   KCRK.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=KCRK.fields[i-1].FieldName;
      end;
    KCRK.First;
    j:=2;
    while   not  KCRK.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   KCRK.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=KCRK.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        KCRK.Next;
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

procedure TMaterialTrace.EXCEL1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin

  if KCLL.Active then
  begin
    if KCLL.recordcount=0 then
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
    for   i:=1   to   KCLL.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=KCLL.fields[i-1].FieldName;
      end;
    KCLL.First;
    j:=2;
    while   not  KCLL.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   KCLL.fieldcount   do
        begin
            eclApp.Cells(j,i+1):=KCLL.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        KCLL.Next;
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

procedure TMaterialTrace.FormDestroy(Sender: TObject);
begin
  MaterialTrace:=nil;
end;

procedure TMaterialTrace.JGDet1Click(Sender: TObject);
begin
  if KCLL.FieldByName('Memo').value='JG' then
  begin
    MaterialTrace_JG:=TMaterialTrace_JG.create(self);
    with MaterialTrace_JG.query1 do
      begin
        active:=false;
        sql.clear;
        sql.add('select JGZLS.CLBH,JGZLS.Qty as TotalQty,JGZLSS.ZLBH,JGZLSS.Qty ');
        sql.add('from JGZLS ');
        sql.add('left join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO ');
        sql.add('where JGZLS.JGNO='+''''+ KCLL.FieldByName('LLNO').value+'''');
        sql.add('      and JGZLS.ZMLB='+''''+ edit1.Text+'''');
        sql.add('order by   JGZLS.CLBH,JGZLSS.ZLBH ');
        active:=true;
      end;
    MaterialTrace_JG.show;
  end;
end;

procedure TMaterialTrace.JGDet2Click(Sender: TObject);
begin 
  if KCRK.FieldByName('Memo').value='JG' then
  begin
    MaterialTrace_JGA:=TMaterialTrace_JGA.create(self);
    with MaterialTrace_JGA.query1 do
      begin
        active:=false;
        sql.clear;
        sql.add('select JGZLS.CLBH,JGZLS.Qty as TotalQty,JGZLSS.ZLBH,JGZLSS.Qty ');
        sql.add('from JGZLS ');
        sql.add('left join JGZLSS on JGZLS.JGNO=JGZLSS.JGNO ');
        sql.add('where JGZLS.JGNO='+''''+ KCRK.FieldByName('RKNO').value+'''');
        sql.add('      and JGZLS.CLBH='+''''+ edit1.Text+'''');
        sql.add('order by   JGZLS.CLBH,JGZLSS.ZLBH ');
        active:=true;
      end;
    MaterialTrace_JGA.show;
  end;
end;

procedure TMaterialTrace.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end;

procedure TMaterialTrace.Button10Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,L,R:integer;
begin

  //檢查左表是否存在及有無資料，不存在離開
  if KCRK.Active then
  begin
    if KCRK.recordcount=0 then
    begin
      showmessage('KCRK No record.');
      L:=1;
    end
  end
  else
    begin
    showmessage('KCRK No record.');
    abort;
  end;

  //檢查右表是否存在及有無資料，不存在離開
  if KCLL.Active then
  begin
    if KCLL.recordcount=0 then
    begin
       showmessage('KCLL No record.');
       R:=1;
    end
  end
  else
    begin
      showmessage('KCLL No record.');
      abort;
  end;
  //啟動excel
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('NO Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;

  try
    WorkBook:=eclApp.workbooks.Add;
    //輸出左表
    if L<>1 then
    begin
      eclApp.Cells(1,1):='NO';
      for   i:=1   to   KCRK.fieldcount   do
        begin
          eclApp.Cells(1,i+1):=KCRK.fields[i-1].FieldName;
        end;
      KCRK.First;
      j:=2;
      while   not  KCRK.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   KCRK.fieldcount   do
            begin
              eclApp.Cells(j,i+1):=KCRK.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          KCRK.Next;
          inc(j);
        end;
        eclApp.Cells(j,2):='Total';
        eclApp.Cells(j,4):='=sum(D2..D'+inttostr(j-1)+')';
    end;
    //輸出右表
    if R<>1 then
    begin
      eclApp.Cells(1,9):='NO';
      for   i:=1   to   KCLL.fieldcount   do
      begin
          eclApp.Cells(1,i+9):=KCLL.fields[i-1].FieldName;
      end;
      KCLL.First;
      j:=2;
      while   not  KCLL.Eof   do
      begin
          eclApp.Cells(j,9):=j-1;
          for   i:=1   to   KCLL.fieldcount   do
          begin
              eclApp.Cells(j,i+9):=KCLL.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+9].font.size:='8';
          end;
          KCLL.Next;
          inc(j);
      end;
      eclApp.Cells(j,10):='Total';
      eclApp.Cells(j,13):='=sum(M2..M'+inttostr(j-1)+')';
    end;

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
