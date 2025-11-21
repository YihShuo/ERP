unit MaterialNoQty1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj, Menus,
  dateutils, GridsEh, DBGridEh,EhlibBDE, ComCtrls, iniFiles;

type
  TMaterialNoQty = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button3: TButton;
    Edit4: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1CLBH: TStringField;
    Query1QTY: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1YN: TStringField;
    Query1CostID: TStringField;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    UpSql1: TUpdateSQL;
    N3: TMenuItem;
    Ptemp: TQuery;
    Query1CKBH: TStringField;
    Label2: TLabel;
    CBX1: TComboBox;
    Edit5: TEdit;
    PC1: TPageControl;
    TS1: TTabSheet;
    TS2: TTabSheet;
    Query2: TQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGridEh;
    Query2KCYEAR: TStringField;
    Query2KCMONTH: TStringField;
    Query2CKBH: TStringField;
    Query2HGLB: TStringField;
    Query2CLBH: TStringField;
    Query2QTY: TCurrencyField;
    Query2USERDATE: TDateTimeField;
    Query2USERID: TStringField;
    Query2YN: TStringField;
    Query2CostID: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2CWBH: TStringField;
    Label16: TLabel;
    CBX6: TComboBox;
    UpSql2: TUpdateSQL;
    PopupMenu2: TPopupMenu;
    NH1: TMenuItem;
    NH2: TMenuItem;
    NH3: TMenuItem;
    NH4: TMenuItem;
    Query1VNACC: TCurrencyField;
    Query2VNACC: TCurrencyField;
    Query2CNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NH1Click(Sender: TObject);
    procedure NH2Click(Sender: TObject);
    procedure NH3Click(Sender: TObject);
    procedure NH4Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    GSBH_Check:String;
    { Public declarations }
  end;

var
  MaterialNoQty: TMaterialNoQty;
  sdate,edate,NDate:Tdate;

implementation

uses MaterialNoQty_Print1, main1, FunUnit;

{$R *.dfm}
procedure TMaterialNoQty.readini();
var MyIni :Tinifile;
    AppDir:string;
begin

  IsHide_Warehouse_XT:='N';
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  GSBH_Check:='CDC';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      GSBH_Check:= MyIni.ReadString('ERP','AccountN177_Check_GSBH','CDC');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    CBX6.Items.Clear;
    CBX6.Items.Add('ALL');
    CBX6.Items.Add('NK');
    CBX6.Items.Add('TC');
    CBX6.Items.Add('HD');
    CBX6.Items.Add('KD');
    CBX6.Items.Add('GC');
    CBX6.Items.Add('NK1');
    CBX6.Items.Add('TC1');
    CBX6.Items.Add('HD1');
    CBX6.Items.Add('KD1');
    CBX6.Items.Add('H11');
    CBX6.Items.Add('NQ');
    CBX6.Items.Add('NKNQ');
    CBX6.ItemIndex:=0;
  end;
end;
//


procedure TMaterialNoQty.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialNoQty.Button1Click(Sender: TObject);
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
    showmessage('Pls key in right year');
    abort;
  end;
  if y<2009 then
  begin
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
  if (  (edit1.text='') and (edit2.text='') and (edit3.text='') and (edit4.text='')  ) then
  begin
    edit5.Text:=CBX1.Text;
  end
  else
    begin
      edit5.Text:='';
    end;
  if PC1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CWCLCOUNT.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH');
      sql.add('from  CWCLCOUNT');
      sql.add('left join CLZL on  CLZL.CLDH= CWCLCOUNT.CLBH');
      sql.add('left join KCZLS on KCZLS.CLBH=CWCLCOUNT.CLBH and KCZLS.CKBH=CWCLCOUNT.CKBH');
      //sql.add('left join KCCK on KCCK.CKBH=CWCLCOUNT.CKBH ');
      sql.add('where CWCLCOUNT.KCYEAR='+''''+CBX2.Text+'''');
      sql.add('      and CWCLCOUNT.KCMONTH='+''''+CBX3.Text+'''');
      sql.Add('      and CWCLCOUNT.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
      //sql.add('order by  CWCLCOUNT.CLBH');
      sql.add('      and CWCLCOUNT.CKBH='+''''+CBX1.Text+'''');
      active:=true;
    end;
  end;
  //20170809
  if PC1.ActivePageIndex=1 then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CWCLCOUNT_HG.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH');
      if  (GSBH_Check=main.edit2.Text ) then
      begin
        sql.Add('       ,case when HGLB =''NK'' then CLHG.HGBH when HGLB =''TC'' then CLTC.HGBH when HGLB =''HD'' then CLHD.HGBH when HGLB =''KD'' then CLKD.HGBH ');
        sql.Add('             when HGLB =''NK1'' then CLHG1.HGBH when HGLB =''TC1'' then CLTC1.HGBH when HGLB =''HD1'' then CLHD1.HGBH when HGLB =''KD1'' then CLKD1.HGBH ');
        sql.Add('             when HGLB =''NQ'' then CLNQ.HGBH when HGLB =''NKNQ'' then CLNKNQ.HGBH else '''' end as CNO ')
      end else
      begin
        sql.Add('       ,case when HGLB =''NK'' then CLHG.HGBH when HGLB =''TC'' then CLTC.HGBH when HGLB =''HD'' then CLHD.HGBH  ');
        sql.Add('             when HGLB =''NK1'' then CLHG1.HGBH when HGLB =''TC1'' then CLTC1.HGBH when HGLB =''HD1'' then CLHD1.HGBH when HGLB =''NQ'' then CLNQ.HGBH ');
        sql.Add('             when HGLB =''NKNQ'' then CLNKNQ.HGBH else '''' end as CNO ');
      end;
      sql.add('from  CWCLCOUNT_HG');
      sql.add('left join CLZL on  CLZL.CLDH= CWCLCOUNT_HG.CLBH');
      sql.add('left join KCZLS on KCZLS.CLBH=CWCLCOUNT_HG.CLBH and KCZLS.CKBH=CWCLCOUNT_HG.CKBH');
      //20230927 show CNO
      sql.Add('left join CLHG on CWCLCOUNT_HG.CLBH=CLHG.CLBH and CWCLCOUNT_HG.HGLB =''NK''');
      sql.Add('left join CLTC on CWCLCOUNT_HG.CLBH=CLTC.CLBH and CWCLCOUNT_HG.HGLB =''TC'' ');
      sql.Add('left join CLHD on CWCLCOUNT_HG.CLBH=CLHD.CLBH and CWCLCOUNT_HG.HGLB =''HD'' ');
      sql.Add('left join CLHG1 on CWCLCOUNT_HG.CLBH=CLHG1.CLBH and CWCLCOUNT_HG.HGLB =''NK1''');
      sql.Add('left join CLTC1 on CWCLCOUNT_HG.CLBH=CLTC1.CLBH and CWCLCOUNT_HG.HGLB =''TC1'' ');
      sql.Add('left join CLHD1 on CWCLCOUNT_HG.CLBH=CLHD1.CLBH and CWCLCOUNT_HG.HGLB =''HD1'' ');
      sql.Add('left join CLNQ on CWCLCOUNT_HG.CLBH=CLNQ.CLBH and CWCLCOUNT_HG.HGLB =''NQ'' ');
      sql.Add('left join CLNKNQ on CWCLCOUNT_HG.CLBH=CLNKNQ.CLBH and CWCLCOUNT_HG.HGLB =''NKNQ'' ');
      if  (GSBH_Check=main.edit2.Text ) then
      begin
        sql.Add('left join CLKD on CWCLCOUNT_HG.CLBH=CLKD.CLBH and CWCLCOUNT_HG.HGLB=''KD'' ');
        sql.Add('left join CLKD1 on CWCLCOUNT_HG.CLBH=CLKD1.CLBH and CWCLCOUNT_HG.HGLB=''KD1'' ');
      end;
      //sql.add('left join KCCK on KCCK.CKBH=CWCLCOUNT.CKBH ');
      sql.add('where CWCLCOUNT_HG.KCYEAR='+''''+CBX2.Text+'''');
      sql.add('      and CWCLCOUNT_HG.KCMONTH='+''''+CBX3.Text+'''');
      sql.Add('      and CWCLCOUNT_HG.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit4.Text+'%'+'''');
      //sql.add('order by  CWCLCOUNT.CLBH');
      sql.add('      and CWCLCOUNT_HG.CKBH='+''''+CBX1.Text+'''');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
         sql.add('and CWCLCOUNT_HG.HGLB<>''XT'' ');
      if CBX6.ItemIndex>0 then
      begin
        sql.Add('and CWCLCOUNT_HG.HGLB ='+''''+CBX6.text+'''');
      end;
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;

end;

procedure TMaterialNoQty.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
 if PC1.ActivePageIndex=0 then
 begin
    if query1.Active then
    begin
      if query1.recordcount=0 then
        begin
          showmessage('No record.');
          abort;
        end;
    end
    else
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
    for i:=0 to DBGrid1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGrid1.Columns[i].Title.Caption;
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGrid1.Columns.Count-1 do
        begin
          eclApp.Cells[j,i+2].NumberFormatLocal:='@';
          eclApp.Cells(j,i+2):=DBGrid1.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
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
 //20170809
 if PC1.ActivePageIndex=1 then
 begin
    if query2.Active then
    begin
      if query2.recordcount=0 then
        begin
          showmessage('No record.');
          abort;
        end;
    end
    else
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
    for i:=0 to DBGrid2.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+2):=DBGrid2.Columns[i].Title.Caption;
    end;
    query2.First;
    j:=2;
    while   not  query2.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGrid2.Columns.Count-1 do
        begin
          eclApp.Cells[j,i+2].NumberFormatLocal:='@';
          eclApp.Cells(j,i+2):=DBGrid2.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+2].font.size:='8';
        end;
        query2.Next;
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

end;

procedure TMaterialNoQty.Button3Click(Sender: TObject);
var i:integer;
begin
  if PC1.ActivePageIndex=0 then
  begin
    MaterialNoQty_Print:=TMaterialNoQty_Print.create(self);
    MaterialNoQty_Print.quickrep1.prepare;
    i:=MaterialNoQty_Print.quickrep1.qrprinter.pagecount;
    MaterialNoQty_Print.page1.caption:=inttostr(i);
    MaterialNoQty_Print.quickrep1.preview;
    MaterialNoQty_Print.free;
  end;  
end;

procedure TMaterialNoQty.N1Click(Sender: TObject);
begin
  with query1 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    DBGrid1.Columns[7].ReadOnly:=false;
    N1.Enabled:=false;
    N2.Enabled:=true;
    N3.Enabled:=true;
    N4.Enabled:=false;
  end;
end;

procedure TMaterialNoQty.Query1AfterOpen(DataSet: TDataSet);
begin
with query1 do
  begin
    if recordcount>0 then
      begin
        N1.Enabled:=true;
        N2.Enabled:=false;
        N3.Enabled:=false;
        N4.Enabled:=true;
        requestlive:=false;
        cachedupdates:=false;
        DBGrid1.Columns[6].ReadOnly:=true;
      end;
  end;
end;

procedure TMaterialNoQty.N2Click(Sender: TObject);
begin
  with query1 do
  begin
    first;
    while not eof do
      begin
        if updatestatus=usmodified then
          begin
            UpSQL1.Apply(ukmodify);
          end;
        next;
      end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    N1.Enabled:=true;
    N2.Enabled:=false;
    N3.Enabled:=false;
    N4.Enabled:=true;
  end;
end;

procedure TMaterialNoQty.N3Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    N1.Enabled:=true;
    N2.Enabled:=false;
    N3.Enabled:=false;
    N4.Enabled:=true;
  end;

end;

procedure TMaterialNoQty.N4Click(Sender: TObject);
var LLNO,DepID:string;
begin
  if edit5.Text='' then
  begin
    showmessage('You can not export only some list.');
    abort;
  end;
  with query1 do
  begin
    first;
    while not eof do
    begin
        if (fieldbyname('CostID').IsNull or (fieldbyname('CostID').value='')) then
        begin
             showmessage('Pls key in CostID first.');
             abort;
        end;
        next;
    end;
  end;
  if messagedlg('Are you sure want to update the deliver list for VNACC ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      with ptemp do
      begin
        active:=false;
        sql.Clear;  //判斷是否已經有這個無數量有金額的本月的出材料單
        sql.add('select KCLL.LLNO from KCLL ');
        sql.add('where LLNO>'+''''+query1.fieldbyname('KCYEAR').value+query1.fieldbyname('KCMONTH').value+'9998'+'''');
        sql.add('      and CKBH='+''''+ query1.fieldbyname('CKBH').value+'''');
        sql.add('      and LLNO like '+''''+query1.fieldbyname('KCYEAR').value+query1.fieldbyname('KCMONTH').value+'%'+'''');
        active:=true;
        if recordcount<>1 then
        begin
            active:=false;
            sql.Clear;  //計算出材料單號
            sql.add('select KCLL.LLNO from KCLL ');
            sql.add('where LLNO>'+''''+query1.fieldbyname('KCYEAR').value+query1.fieldbyname('KCMONTH').value+'999'+'''');
            sql.add('      and LLNO like '+''''+query1.fieldbyname('KCYEAR').value+query1.fieldbyname('KCMONTH').value+'999%'+'''');
            sql.add('order by LLNO ');
            active:=true;
            if recordcount>0 then
            begin
                LLNO:=copy(fieldbyname('LLNO').AsString,7,5) ;
                LLNO:=inttostr(strtoint(LLNO)-1);
            end else
            begin
                LLNO:='99999';
            end;
            LLNO:=query1.fieldbyname('KCYEAR').value+query1.fieldbyname('KCMONTH').value+LLNO;
            //找出本廠區的最高單位編號
            active:=false;
            sql.Clear;
            sql.add('select top 1 ID from BDepartment ');
            sql.add('where GSBH='+''''+main.Edit2.Text+'''');
            sql.add('order by ID ');
            active:=true;
            DepID:=fieldbyname('ID').Value;
            //寫入一個新的領料單號
            active:=false;
            sql.Clear;
            sql.add('insert into KCLL ');
            sql.add('(LLNO, GSBH, CKBH, SCBH, DepID, USERDATE, USERID, CFMDate, CFMID, YN) ');
            sql.add('values ('''+LLNO+''','''+main.Edit2.text+''','''+query1.fieldbyname('CKBH').value+''',');
            sql.add(''''+'ZZZZZZZZZZ'+''','''+DepID+''', ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',edate)+''','''+main.Edit1.Text+''', ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',edate)+''','+''''+main.Edit1.Text+''',''5'')') ;
            execsql;
          end else
          begin
            LLNO:=fieldbyname('LLNO').AsString;
          end;
          showmessage(LLNO);
        query1.first;
        while not query1.eof do
        begin
            active:=false;
            sql.clear;
            sql.add('delete KCLLS ');
            sql.add('where LLNO='''+LLNO+'''');
            sql.add('      and CLBH='''+ query1.fieldbyname('CLBH').Value+'''');
            sql.add('insert into KCLLS ');
            sql.add('  (LLNO, CLBH, DFL, SCBH, TempQty, Qty, USPrice, VNPrice, CWHL, CostID,USERDATE, USERID, YN, CLSL, YYBH,VNACC,MEMO,BLSB)');
            sql.add('values('''+LLNO+''','''+query1.fieldbyname('CLBH').Value+''',');
            sql.add('''N'',''ZZZZZZZZZZ'',0,0,0,0,0,'''+query1.fieldbyname('CostID').Value+''' ');
            sql.add(','''+ formatdatetime('yyyy/MM/dd',Ndate)+''','''+main.Edit1.Text+''',''5'' ');
            sql.add(',0,null,'''+query1.fieldbyname('VNACC').asstring+''',null ,nULL  )');
           // sql.add('select * from KCLLS where LLNO='+''''+a+'''');
            execsql;
            query1.next;
        end;
      end;
  end;
end;

procedure TMaterialNoQty.FormDestroy(Sender: TObject);
begin
  MaterialNoQty:=nil;
end;

procedure TMaterialNoQty.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,index:integer;
begin
  with Ptemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    active:=true; 
    CBX1.items.clear;
    while not eof do
      begin
        CBX1.items.add(fieldbyname('CKBH').AsString);
        next;
      end;
    CBX1.itemindex:=0;
    active:=false;
  end;
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for j:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[j])=myYear then
    begin
      CBX2.ItemIndex:=j;
      break;
    end;
  end;
  for j:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[j])=myMonth then
    begin
      CBX3.ItemIndex:=j-1;
      break;
    end;
  end;
  readini();
end;

procedure TMaterialNoQty.NH1Click(Sender: TObject);
begin
  with query2 do
  begin
    cachedupdates:=true;
    requestlive:=true;
    DBGrid2.Columns[7].ReadOnly:=false;
    NH1.Enabled:=false;
    NH2.Enabled:=true;
    NH3.Enabled:=true;
    NH4.Enabled:=false;
  end;
end;

procedure TMaterialNoQty.NH2Click(Sender: TObject);
begin
  with query2 do
  begin
    first;
    while not eof do
    begin
        if updatestatus=usmodified then
          begin
            UpSQL2.Apply(ukmodify);
          end;
        next;
    end;
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    NH1.Enabled:=true;
    NH2.Enabled:=false;
    NH3.Enabled:=false;
    NH4.Enabled:=true;
  end;
end;

procedure TMaterialNoQty.NH3Click(Sender: TObject);
begin
  with query2 do
  begin
    active:=false;
    cachedupdates:=false;
    requestlive:=false;
    active:=true;
    NH1.Enabled:=true;
    NH2.Enabled:=false;
    NH3.Enabled:=false;
    NH4.Enabled:=true;
  end;
end;

procedure TMaterialNoQty.NH4Click(Sender: TObject);
var LLNO,DepID:string;
begin
  if edit5.Text='' then
  begin
    showmessage('You can not export only some list.');
    abort;
  end;
  with query2 do
  begin
    first;
    while not eof do
    begin
        if (fieldbyname('CostID').IsNull or (fieldbyname('CostID').value='')) then
        begin
             showmessage('Pls key in CostID first.');
             abort;
        end;
        next;
    end;
  end;
  if messagedlg('Are you sure want to update the deliver list for VNACC ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  begin
      with ptemp do
      begin
        active:=false;
        sql.Clear;  //判斷是否已經有這個無數量有金額的本月的出材料單
        sql.add('select KCLL.LLNO from KCLL ');
        sql.add('where LLNO>'+''''+query2.fieldbyname('KCYEAR').value+query2.fieldbyname('KCMONTH').value+'9998'+'''');
        sql.add('      and CKBH='+''''+ query2.fieldbyname('CKBH').value+'''');
        sql.add('      and LLNO like '+''''+query2.fieldbyname('KCYEAR').value+query2.fieldbyname('KCMONTH').value+'%'+'''');
        active:=true;
        if recordcount<>1 then
        begin
            active:=false;
            sql.Clear;  //計算出材料單號
            sql.add('select KCLL.LLNO from KCLL ');
            sql.add('where LLNO>'+''''+query2.fieldbyname('KCYEAR').value+query2.fieldbyname('KCMONTH').value+'999'+'''');
            sql.add('      and LLNO like '+''''+query2.fieldbyname('KCYEAR').value+query2.fieldbyname('KCMONTH').value+'999%'+'''');
            sql.add('order by LLNO ');
            active:=true;
            if recordcount>0 then
            begin
                LLNO:=copy(fieldbyname('LLNO').AsString,7,5) ;
                LLNO:=inttostr(strtoint(LLNO)-1);
            end else
            begin
                LLNO:='99999';
            end;
            LLNO:=query2.fieldbyname('KCYEAR').value+query2.fieldbyname('KCMONTH').value+LLNO;
            //找出本廠區的最高單位編號
            active:=false;
            sql.Clear;
            sql.add('select top 1 ID from BDepartment ');
            sql.add('where GSBH='+''''+main.Edit2.Text+'''');
            sql.add('order by ID ');
            active:=true;
            DepID:=fieldbyname('ID').Value;
            //寫入一個新的領料單號
            active:=false;
            sql.Clear;
            sql.add('insert into KCLL ');
            sql.add('(LLNO, GSBH, CKBH, SCBH, DepID, USERDATE, USERID, CFMDate, CFMID, YN, YN_Date) ');
            sql.add('values ('''+LLNO+''','''+main.Edit2.text+''','''+query2.fieldbyname('CKBH').value+''',');
            sql.add(''''+'ZZZZZZZZZZ'+''','''+DepID+''', ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',edate)+''','''+main.Edit1.Text+''', ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',edate)+''','+''''+main.Edit1.Text+''',''5'', GetDate())') ;
            execsql;
          end else
          begin
            LLNO:=fieldbyname('LLNO').AsString;
          end;
          showmessage(LLNO);
        query2.first;
        while not query2.eof do
        begin
            active:=false;
            sql.clear;
            sql.add('delete KCLLS ');
            sql.add('where LLNO='''+LLNO+'''');
            sql.add('      and CLBH='''+ query2.fieldbyname('CLBH').Value+'''');
            if ((query2.fieldbyname('HGLB').AsString='NK1') or  (query2.fieldbyname('HGLB').AsString='TC1') or  (query2.fieldbyname('HGLB').AsString='HD1') or (query2.fieldbyname('HGLB').AsString='KD1') or (query2.fieldbyname('HGLB').AsString='NQ') or (query2.fieldbyname('HGLB').AsString='NKNQ')) then
            begin
              sql.Add('      and DFL='''+query2.fieldbyname('HGLB').AsString+''' ');
            end else
            begin
              sql.Add('      and DFL='''+Copy(query2.fieldbyname('HGLB').AsString,1,1)+'''');
            end;
            sql.add('insert into KCLLS ');
            sql.add('  (LLNO, CLBH, DFL, SCBH, TempQty, Qty, USPrice, VNPrice, CWHL, CostID,USERDATE, USERID, YN, CLSL, YYBH,VNACC,MEMO,BLSB,VNACC_HG,HGLB,CNO)');
            sql.add('values('''+LLNO+''','''+query2.fieldbyname('CLBH').Value+''',');
            if ((query2.fieldbyname('HGLB').AsString='NK1') or  (query2.fieldbyname('HGLB').AsString='TC1') or  (query2.fieldbyname('HGLB').AsString='HD1') or (query2.fieldbyname('HGLB').AsString='KD1') or (query2.fieldbyname('HGLB').AsString='NQ') or (query2.fieldbyname('HGLB').AsString='NKNQ')) then
            begin
               sql.add(' '''+query2.fieldbyname('HGLB').AsString+''', ');
            end else
            begin
               sql.add(' '''+Copy(query2.fieldbyname('HGLB').AsString,1,1)+''', ');
            end;
            sql.Add(' ''ZZZZZZZZZZ'',0,0,0,0,0,'''+query2.fieldbyname('CostID').Value+''' ');
            sql.add(','''+ formatdatetime('yyyy/MM/dd',Ndate)+''','''+main.Edit1.Text+''',''5'' ');
            sql.add(',0,null,'''+query2.fieldbyname('VNACC').asstring+''',null ,nULL,'+query2.fieldbyname('VNACC').asstring+','''+query2.fieldbyname('HGLB').AsString+''','''+query2.fieldbyname('CNO').AsString+'''  )');
            //funcobj.WriteErrorLog(sql.Text);
            execsql;
            query2.next;
        end;
      end;
  end;

end;

end.
