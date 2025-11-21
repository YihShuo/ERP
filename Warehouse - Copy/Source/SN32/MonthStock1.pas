unit MonthStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, comobj,
  GridsEh, DBGridEh, ComCtrls, iniFiles, Dateutils;

type
  TMonthStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Edit3: TEdit;
    Button2: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button3: TButton;
    DB1: TCheckBox;
    Edit4: TEdit;
    CBX6: TComboBox;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGridEh;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGridEh;
    TabSheet3: TTabSheet;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1CKBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1QTY: TCurrencyField;
    Query1KCBH: TStringField;
    Query1LBBH: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    CurrencyField1: TCurrencyField;
    Query2VNPrice: TCurrencyField;
    Query2VNACC: TCurrencyField;
    StringField8: TStringField;
    StringField9: TStringField;
    Query2HGLB: TStringField;
    Query3: TQuery;
    Query3KCYEAR: TStringField;
    Query3KCMONTH: TStringField;
    Query3CKBH: TStringField;
    Query3CLBH: TStringField;
    Query3HGLB: TStringField;
    Query3CNO: TStringField;
    Query3Qty: TFloatField;
    Query3YWPM: TStringField;
    Query3DWBH: TStringField;
    Query3KCBH: TStringField;
    Query3CWBH: TStringField;
    DS3: TDataSource;
    DS2: TDataSource;
    DS1: TDataSource;
    Matsite: TQuery;
    Button4: TButton;
    TabSheet4: TTabSheet;
    Query4: TQuery;
    DS4: TDataSource;
    Query4KCYEAR: TStringField;
    Query4KCMONTH: TStringField;
    Query4CKBH: TStringField;
    Query4CLBH: TStringField;
    Query4HGLB: TStringField;
    Query4SIZE: TStringField;
    Query4QTY: TCurrencyField;
    Query4USPrice: TCurrencyField;
    Query4CWHL: TCurrencyField;
    Query4VNPrice: TCurrencyField;
    Query4VNACC: TCurrencyField;
    Query4LBBH: TStringField;
    Query4USERDATE: TDateTimeField;
    Query4USERID: TStringField;
    Query4YN: TStringField;
    Query4YWPM: TStringField;
    Query4DWBH: TStringField;
    Query4KCBH: TStringField;
    Query4CWBH: TStringField;
    DBGrid4: TDBGridEh;
    SizeCK: TCheckBox;
    PopupMenu2: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    UPDet: TUpdateSQL;
    TabSheet5: TTabSheet;
    Query5: TQuery;
    DS5: TDataSource;
    Query5KCYEAR: TStringField;
    Query5KCMONTH: TStringField;
    Query5CKBH: TStringField;
    Query5CLBH: TStringField;
    Query5DepID: TStringField;
    Query5USERDATE: TDateTimeField;
    Query5USERID: TStringField;
    Query5YN: TStringField;
    Query5YWPM: TStringField;
    Query5DWBH: TStringField;
    Query5KCBH: TStringField;
    Query5DepName: TStringField;
    Query5DepMemo: TStringField;
    DBGrid5: TDBGridEh;
    Query5QTY: TCurrencyField;
    Query5VNPrice: TCurrencyField;
    Query5VNACC: TCurrencyField;
    Button5: TButton;
    PopupMenu1: TPopupMenu;
    mnu1: TMenuItem;
    Query1ZWPM: TStringField;
    Query2ZWPM: TStringField;
    Query3ZWPM: TStringField;
    Query4ZWPM: TStringField;
    Query5ZWPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure mnu1Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    WH_TXSQL:String;
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;  
    { Public declarations }
  end;

var
  MonthStock: TMonthStock;

implementation

uses main1, MonthStock_Dep_DB1, MonthStock_Print1, FunUnit ;

{$R *.dfm}
procedure TMonthStock.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  IsHide_Warehouse_XT:='N';
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //總務倉
      WH_TXSQL:=MyIni.ReadString('Warehouse','WarehouseN32_TXSQL',' (''VTXX'',''VTXY'',''VTXZ'') ');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query4.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query4.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query5.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query5.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query3.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query4.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query5.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    CBX6.Items.Clear;
    CBX6.Items.Add('ALL');
    CBX6.Items.Add('NK');
    CBX6.Items.Add('HD');
    CBX6.Items.Add('KD');
    CBX6.Items.Add('GC');
    CBX6.ItemIndex:=0;
  end;
end;
//

procedure TMonthStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=CaFree;
end;

procedure TMonthStock.Button3Click(Sender: TObject);
var i:integer;
begin
  MonthStock_Print:=TMonthStock_Print.create(self);
  MonthStock_Print.quickrep1.prepare;
  i:=MonthStock_Print.quickrep1.qrprinter.pagecount;
  MonthStock_Print.page1.caption:=inttostr(i);
  MonthStock_Print.quickrep1.preview;
  MonthStock_Print.free;
end;

procedure TMonthStock.FormDestroy(Sender: TObject);
begin
  MonthStock:=nil;
end;

procedure TMonthStock.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
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
  if PC1.ActivePageIndex=1 then
  begin
    if query2.Active then
    begin
      if query2.recordcount=0 then
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
      for   i:=1   to   query2.fieldcount   do
        begin
          eclApp.Cells(1,i+1):=query2.fields[i-1].FieldName;
        end;
      query2.First;
      j:=2;
      while   not  query2.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   query2.fieldcount   do
            begin
              eclApp.Cells(j,i+1):=query2.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
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
  if PC1.ActivePageIndex=2 then
  begin
    if query3.Active then
    begin
      if query3.recordcount=0 then
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
      for   i:=1   to   query3.fieldcount   do
        begin
          eclApp.Cells(1,i+1):=query3.fields[i-1].FieldName;
        end;
      query3.First;
      j:=2;
      while   not  query3.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   query3.fieldcount   do
            begin
              eclApp.Cells(j,i+1):=query3.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          query3.Next;
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
  if PC1.ActivePageIndex=3 then
  begin
    if query4.Active then
    begin
      if query4.recordcount=0 then
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
      for   i:=1   to   query4.fieldcount   do
        begin
          eclApp.Cells(1,i+1):=query4.fields[i-1].FieldName;
        end;
      query4.First;
      j:=2;
      while   not  query4.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   query4.fieldcount   do
            begin
              eclApp.Cells(j,i+1):=query4.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          query4.Next;
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
  if PC1.ActivePageIndex=4 then
  begin
    if query5.Active then
    begin
      if query5.recordcount=0 then
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
      for   i:=1   to   query5.fieldcount   do
        begin
          eclApp.Cells(1,i+1):=query5.fields[i-1].FieldName;
        end;
      query5.First;
      j:=2;
      while   not  query5.Eof   do
        begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   query5.fieldcount   do
            begin
              eclApp.Cells(j,i+1):=query5.Fields[i-1].Value;
              eclApp.Cells.Cells.item[j,i+1].font.size:='8';
            end;
          query5.Next;
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

procedure TMonthStock.Button1Click(Sender: TObject);
begin
  if PC1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KCCLMONTH.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,KCZLS.CWBH');
      sql.add('from KCCLMONTH');
      sql.add('left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH');
      sql.add('left join KCZLS on KCZLS.CKBH=KCCLMONTH.CKBH and KCZLS.CLBH=KCCLMONTH.CLBH ');
      sql.add('left join KCCK on KCCLMONTH.CKBH=KCCK.CKBH ');
      sql.add('where KCCLMONTH.KCYEAR='''+CBX2.Text+'''');
      sql.add('and KCCLMONTH.KCMONTH='''+CBX3.Text+'''');
      sql.add('and KCCLMONTH.CLBH like '''+edit1.Text+'%''');
      sql.Add('and CLZL.YWPM like '''+'%'+edit2.Text+'%''');
      sql.add('and CLZL.YWPM like '''+'%'+edit3.Text+'%''');
      sql.add('and KCZLS.CWBH like '''+edit4.Text+'%''');
      if not DB1.Checked then
      begin
          sql.add('and KCCLMONTH.Qty<>0');
      end;
      sql.add('and KCCK.GSBH='+''''+main.edit2.Text+'''');
      sql.add('and KCCLMONTH.CKBH like '+''''+CBX1.Text+'%'+'''');
      // sql.add('order by KCCLMONTH.CLBH') ;
      active:=true;
    end;
  end else if PC1.ActivePageIndex=1 then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KCCLMONTH.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,KCZLS.CWBH');
      sql.add('from KCCLMONTH_HG KCCLMONTH');
      sql.add('left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH');
      sql.add('left join KCZLS on KCZLS.CKBH=KCCLMONTH.CKBH and KCZLS.CLBH=KCCLMONTH.CLBH ');
      sql.add('left join KCCK on KCCLMONTH.CKBH=KCCK.CKBH ');
      sql.add('where KCCLMONTH.KCYEAR='''+CBX2.Text+'''');
      sql.add('and KCCLMONTH.KCMONTH='''+CBX3.Text+'''');
      sql.add('and KCCLMONTH.CLBH like '+''''+edit1.Text+'%''');
      sql.Add('and CLZL.YWPM like '''+'%'+edit2.Text+'%''');
      sql.add('and CLZL.YWPM like '''+'%'+edit3.Text+'%''');
      sql.add('and KCZLS.CWBH like '''+edit4.Text+'%''');
      if CBX6.ItemIndex>0 then
      sql.add('and KCCLMONTH.HGLB='''+CBX6.Text+''' ');
      if not DB1.Checked then
      begin
          sql.add('and KCCLMONTH.Qty<>0');
      end;
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
         sql.add('and KCCLMONTH.HGLB<>''XT'' ');
      sql.add('and KCCK.GSBH='''+main.edit2.Text+'''');
      sql.add('and KCCLMONTH.CKBH like '''+CBX1.Text+'%'+'''');
      //sql.add('order by KCCLMONTH.CLBH') ;
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end else if PC1.ActivePageIndex=2 then
  begin
    with query3 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KCCLMONTH.KCYEAR,KCCLMONTH.KCMONTH,KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,case when CNO=''ZZZZ'' then null else CNO end as CNO,KCCLMONTH.Qty,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,KCZLS.CWBH');
      sql.add('from KCCLMONTH_HGBH KCCLMONTH');
      sql.add('left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH');
      sql.add('left join KCZLS on KCZLS.CKBH=KCCLMONTH.CKBH and KCZLS.CLBH=KCCLMONTH.CLBH ');
      sql.add('left join KCCK on KCCLMONTH.CKBH=KCCK.CKBH ');
      sql.add('where KCCLMONTH.KCYEAR='''+CBX2.Text+'''');
      sql.add('and KCCLMONTH.KCMONTH='''+CBX3.Text+'''');
      sql.add('and KCCLMONTH.CLBH like '''+edit1.Text+'%''');
      sql.Add('and CLZL.YWPM like ''%'+edit2.Text+'%''');
      sql.add('and CLZL.YWPM like ''%'+edit3.Text+'%''');
      sql.add('and KCZLS.CWBH like '''+edit4.Text+'%''');
      if CBX6.ItemIndex>0 then
      sql.add('and KCCLMONTH.HGLB='''+CBX6.Text+''' ');
      if not DB1.Checked then
      begin
          sql.add('and KCCLMONTH.Qty<>0');
      end;
      if IsHide_Warehouse_XT='Y' then
      sql.add('and KCCLMONTH.HGLB<>''XT'' ');
      sql.add('and KCCK.GSBH='''+main.edit2.Text+'''');
      sql.add('and KCCLMONTH.CKBH like '''+CBX1.Text+'%''');
      //sql.add('order by KCCLMONTH.CLBH') ;
      active:=true;
    end;
  end else if PC1.ActivePageIndex=3 then
  begin
    with query4 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select KCCLMONTH.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,KCZLS.CWBH');
      sql.add('from KCCLMONTH_HG_SIZE KCCLMONTH');
      sql.add('left join CLZL on  CLZL.CLDH=KCCLMONTH.CLBH');
      sql.add('left join KCZLS on KCZLS.CKBH=KCCLMONTH.CKBH and KCZLS.CLBH=KCCLMONTH.CLBH ');
      sql.add('left join KCCK on KCCLMONTH.CKBH=KCCK.CKBH ');
      sql.add('where KCCLMONTH.KCYEAR='''+CBX2.Text+'''');
      sql.add('and KCCLMONTH.KCMONTH='''+CBX3.Text+'''');
      sql.add('and KCCLMONTH.CLBH like '''+edit1.Text+'%''');
      sql.Add('and CLZL.YWPM like ''%'+edit2.Text+'%''');
      sql.add('and CLZL.YWPM like ''%'+edit3.Text+'%''');
      sql.add('and KCZLS.CWBH like '''+edit4.Text+'%''');
      if CBX6.ItemIndex>0 then
      sql.add('and KCCLMONTH.HGLB='''+CBX6.Text+''' ');
      if not DB1.Checked then
      begin
          sql.add('and KCCLMONTH.Qty<>0');
      end;
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
         sql.add('and KCCLMONTH.HGLB<>''XT'' ');
      if SizeCK.Checked=true then
      SQL.Add('and  KCCLMONTH.SIZE<>''ZZZZZZ'' ');
      sql.add('and KCCK.GSBH='+''''+main.edit2.Text+'''');
      sql.add('and KCCLMONTH.CKBH like '''+CBX1.Text+'%''');
      //sql.add('order by KCCLMONTH.CLBH') ;
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end else if PC1.ActivePageIndex=4 then
  begin
    with query5 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('select KCCLMONTH_Dep.*,CLZL.ZWPM,CLZL.YWPM,CLZL.DWBH ,KCZLS.KCBH ,IsNull(Bdepartment.DepName,''Stock'') as DepName,IsNull(Bdepartment.DepMemo,''庫存'') as DepMemo,KCCLMONTH.VNPrice,KCCLMONTH_Dep.Qty* KCCLMONTH.VNPrice as VNACC ');
      SQL.Add('from KCCLMONTH_BDepartment KCCLMONTH_Dep');
      SQL.Add('left join CLZL on  CLZL.CLDH=KCCLMONTH_Dep.CLBH and CLZL.YN=2 ');
      SQL.Add('left join KCZLS on KCZLS.CKBH=KCCLMONTH_Dep.CKBH and KCZLS.CLBH=KCCLMONTH_Dep.CLBH ');
      SQL.Add('left join KCCK on KCCLMONTH_Dep.CKBH=KCCK.CKBH ');
      SQL.Add('left join Bdepartment on Bdepartment.ID=KCCLMONTH_Dep.DepID');
      SQL.add('left join (select * from KCCLMONTH where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and CKBH in '+WH_TXSQL+') KCCLMONTH on KCCLMONTH.KCYEAR=KCCLMONTH_Dep.KCYEAR and KCCLMONTH.KCMONTH=KCCLMONTH_Dep.KCMONTH  and KCCLMONTH.CKBH=KCCLMONTH_Dep.CKBH  and KCCLMONTH.CLBH=KCCLMONTH_Dep.CLBH');
      SQL.add('where KCCLMONTH_Dep.KCYEAR='''+CBX2.Text+'''');
      SQL.add('and KCCLMONTH_Dep.KCMONTH='''+CBX3.Text+'''');
      SQL.add('and KCCLMONTH_Dep.CLBH like '''+edit1.Text+'%''');
      SQL.Add('and CLZL.YWPM like ''%'+edit2.Text+'%''');
      SQL.add('and CLZL.YWPM like ''%'+edit3.Text+'%''');
      SQL.add('and KCZLS.CWBH like '''+edit4.Text+'%''');
      if not DB1.Checked then
      begin
          sql.add('and KCCLMONTH_Dep.Qty<>0');
      end;
      SQL.add('and KCCK.GSBH='''+main.edit2.Text+'''');
      SQL.add('and KCCLMONTH_Dep.CKBH like '''+CBX1.Text+'%''');
      //funcObj.WriteErrorLog(sql.Text);
      Active:=true;
    end;
  end;
end;

procedure TMonthStock.FormCreate(Sender: TObject);
begin
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX1.Items.Clear;
    while not eof do
    begin
      CBX1.Items.Add(fieldbyname('CKBH').AsString);
      Next;
    end;
    active:=false;
  end;
  readini();
end;

procedure TMonthStock.Button4Click(Sender: TObject);
var sDate,eDate:TDate;
    iYear,iMonth,iDay:word;
    sYear,sMonth:String;
begin
  if Messagedlg('are you sure Month Cal:'+CBX2.Text+'/'+CBX3.Text+'?',mtCustom, [mbYes,mbNo], 0)=mrYes then
  begin
    //
    iYear:=strtoint(CBX2.Text);
    iMonth:=strtoint(CBX3.Text);
    sDate:=encodedate(iYear,iMonth,1);
    eDate:=endofthemonth(sDate);
    //
    decodedate(incmonth(sDate,-1),iYear, iMonth, iDay);
    sYear:=inttostr(iYear);
    sMonth:=inttostr(iMonth);
    if  length(sMonth)<2  then
    begin
      sMonth:='0'+sMonth;
    end;
    //檢查是否會計月結
    with Matsite do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select top 1 KCYEAR,YN from KCCLMONTH_HG_SIZE where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      Active:=true;
      if FieldByName('YN').AsString='1' then
      begin
        Showmessage('Account already Month Cal.:'+CBX2.Text+'/'+CBX3.Text+'，Warehosue can''t calculate & override');
        Active:=false;
        Exit;
      end;
      Active:=false;
    end;
    //
    {
    with Matsite do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from  KCCLMONTH where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') and YN=''2'' ');
      SQL.Add('Insert into  KCCLMONTH (KCYEAR, KCMONTH, CKBH, CLBH, Qty, UserID, UserDate, YN) ');
      SQL.Add('Select '''+CBX2.Text+''' as KCYEAR,'''+CBX3.Text+''' as KCMONTH,KCZLS.CKBH, KCZLS.CLBH');
      SQL.Add('       ,isnull(round(LastKC.LastRem,2),0)+isnull(round(RK.RKQty,2),0)-isnull(round(LL.LLQty,2),0)+isnull(round(JGRK.JGRK,2),0)-isnull(round(JGCK.JGCK,2),0) as KCQty');
      SQL.Add('       ,'''+main.Edit1.Text+''' as UserID,GETDATE() as UserDate, ''2'' as YN');
      SQL.Add('From KCZLS ');
      SQL.Add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,Sum(KCCLMONTH.Qty) as LastRem ');
      SQL.Add('           from KCCLMONTH_HG as KCCLMONTH  ');
      SQL.Add('           where KCCLMONTH.KCYEAR='''+sYear+'''  and KCMONTH='''+sMonth+''' ');
      SQL.Add('                and KCCLMONTH.CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           Group by  KCCLMONTH.CKBH,KCCLMONTH.CLBH  ');
      SQL.Add('           ) LastKC on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH');
      SQL.Add('left join (select KCRK.CKBH,KCRKS.CLBH,sum(KCRKS.Qty) as RKQty from KCRKS');
      SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('                and KCRK.CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           Group by KCRK.CKBH,KCRKS.CLBH) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH ');
      SQL.Add('left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as LLQty from KCLLS ');
      SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('                 and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' ');
      SQL.Add('                 and KCLL.CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.CKBH');
      SQL.Add('left join (select JGZL.CKBH,JGZLS.CLBH,sum(JGZLS.Qty) as JGRK from JGZLS');
      SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('                 and JGZL.CFMID1<>''NO''');
      SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ'' ');
      SQL.Add('                 and JGZL.CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCZLS.CLBH and JGRK.CKBH=KCZLS.CKBH');
      SQL.Add('left join (select KCLL.CKBH,KCLLS.CLBH,sum(KCLLS.Qty) as JGCK from KCLLS ');
      SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      SQL.add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' ');
      SQL.Add('                 and KCLL.CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           Group by KCLL.CKBH,KCLLS.CLBH) JGCK on JGCK.CLBH=KCZLS.CLBH and JGCK.CKBH=KCZLS.CKBH');
      SQL.Add('where  (isnull(round(LastKC.LastRem,2),0)+isnull(round(RK.RKQty,2),0)-isnull(round(LL.LLQty,2),0)+isnull(round(JGRK.JGRK,2),0)-isnull(round(JGCK.JGCK,2),0))>=0.01');
      //FuncObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    //
    with Matsite do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from  KCCLMONTH_HG where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') and YN=''2'' ');
      SQL.Add('Insert into  KCCLMONTH_HG (KCYEAR, KCMONTH, CKBH, CLBH, HGLB, Qty, UserID, UserDate, YN) ');
      SQL.Add('Select '''+CBX2.Text+''' as KCYEAR,'''+CBX3.Text+''' as KCMONTH,KCZLS.CKBH,KCZLS.CLBH,KCZLS.HGLB,');
      SQL.Add('       (isnull(round(LastKC.LastRem,2),0)+isnull(round(RK.RKQty,2),0)-isnull(round(LL.LLQty,2),0)+isnull(round(JGRK.JGRK,2),0)-isnull(round(JGCK.JGCK,2),0) ) as Qty');
      SQL.Add('       ,'''+main.Edit1.Text+''' as UserID,GETDATE() as UserDate, ''2'' as YN');
      SQL.Add('from (select * from KCZLS  CROSS JOIN');
      SQL.Add('  (select ''NK'' as HGLB union all select ''TC'' union all select ''HD'' union all select ''KD'' union all select ''XT'' union all select ''GC'' union all select ''ZZZZ'' ) LOAI ) KCZLS');
      SQL.Add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.Qty as LastRem ');
      SQL.Add('           from KCCLMONTH_HG KCCLMONTH  where KCCLMONTH.KCYEAR='''+sYear+''' ');
      SQL.Add('                                 and KCCLMONTH.KCMONTH='''+sMonth+''' and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           ) LastKC on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH and LastKC.HGLB=KCZLS.HGLB');
      SQL.Add('left join (select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,sum(KCRKS.Qty) as RKQty from KCRKS');
      SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('           and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH and RK.HGLB=KCZLS.HGLB');
      SQL.Add('left join (select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,sum(KCLLS.Qty) as LLQty from KCLLS ');
      SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.CKBH and LL.HGLB=KCZLS.HGLB');
      SQL.Add('left join (select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,sum(JGZLS.Qty) as JGRK from JGZLS');
      SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('                 and JGZL.CFMID1<>''NO''');
      SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCZLS.CLBH and JGRK.CKBH=KCZLS.CKBH and JGRK.HGLB=KCZLS.HGLB');
      SQL.Add('left join (select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,sum(KCLLS.Qty) as JGCK from KCLLS ');
      SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB) JGCK on JGCK.ZMLB=KCZLS.CLBH and JGCK.CKBH=KCZLS.CKBH and JGCK.HGLB=KCZLS.HGLB');
      SQL.Add('where 1=1 and (isnull(round(LastKC.LastRem,2),0)+isnull(round(RK.RKQty,2),0)-isnull(round(LL.LLQty,2),0)+isnull(round(JGRK.JGRK,2),0)-isnull(round(JGCK.JGCK,2),0) )>=0.01 ');
      //FuncObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    with Matsite do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from  KCCLMONTH_HGBH where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') and YN=''2'' ');
      SQL.Add('Insert into  KCCLMONTH_HGBH (KCYEAR, KCMONTH, CKBH, CLBH, HGLB, CNO, Qty, UserID, UserDate, YN) ');
      SQL.Add('Select  KCYEAR, KCMONTH, CKBH, CLBH, HGLB, ''ZZZZ'' as CNO, Qty, UserID, UserDate, YN from KCCLMONTH_HG  where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      //FuncObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    }
    with Matsite do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from  KCCLMONTH_HG_SIZE where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+''' and CKBH in (Select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') and YN=''2'' ');
      SQL.Add('Insert into  KCCLMONTH_HG_SIZE (KCYEAR, KCMONTH, CKBH, CLBH, HGLB, SIZE, Qty, UserID, UserDate, YN) ');
      SQL.Add('Select '''+CBX2.Text+''' as KCYEAR,'''+CBX3.Text+''' as KCMONTH,CKBH,CLBH,HGLB,SIZE,Round(SUM(Qty),4) as Qty,'''+main.Edit1.Text+''' as UserID,GETDATE() as UserDate, ''2'' as YN from (');
      SQL.Add('Select CKBH,CLBH,HGLB,SIZE,SUM(LastRem) as Qty ');
      SQL.Add('from (');
      SQL.Add('Select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.SIZE,KCCLMONTH.Qty as LastRem,''1'' as SB ');
      SQL.Add('From KCCLMONTH_HG_SIZE KCCLMONTH  ');
      SQL.Add('where KCCLMONTH.KCYEAR='''+sYear+'''  ');
      SQL.Add('	 and KCCLMONTH.KCMONTH='''+sMonth+''' and KCCLMONTH.CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      SQL.Add('union all ');
      SQL.Add('Select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,''ZZZZZZ'') as SIZE,sum(IsNull(KCRKSS.Qty,KCRKS.Qty)) as RKQty,''2'' as SB  ');
      SQL.Add('from KCRKS');
      SQL.Add('left join KCRKSS on KCRKS.RKNO=KCRKSS.RKNO and KCRKS.CLBH=KCRKSS.CLBH and KCRKS.CGBH=KCRKSS.CGBH and KCRKS.RKSB=KCRKSS.RKSB ');
      SQL.Add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
      SQL.Add('where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('	    and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('Group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,IsNull(KCRKSS.SIZE,''ZZZZZZ'') 		   ');
      SQL.Add('union all   ');
      SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLSS.SIZE,''ZZZZZZ'') as SIZE	 ,-1*sum(IsNull(KCLLSS.Qty,KCLLS.Qty))  as LLQty,''3'' as SB  ');
      SQL.Add('from KCLLS ');
      SQL.Add('Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL ');
      SQL.Add('Left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
      SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('	 and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH,CLZL.lycc,KCLLS.HGLB,IsNull(KCLLSS.SIZE,''ZZZZZZ'')');
      SQL.Add('union all ');
      SQL.Add('Select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,''ZZZZZZ'' as SIZE,sum(IsNull(JGZLSS.Qty,JGZLS.Qty))as JGRK,''4'' as SB  ');
      SQL.Add('from JGZLS');
      SQL.Add('left join JGZLSS on JGZLSS.JGNO=JGZLS.JGNO and JGZLSS.CLBH=JGZLS.CLBH');
      SQL.Add('left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
      SQL.Add('where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('	  and JGZL.CFMID1<>''NO''');
      SQL.Add('	  and JGZLS.ZMLB=''ZZZZZZZZZZ''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''') ');
      SQL.Add('Group by JGZL.CKBH,JGZLS.CLBH ');
      SQL.Add('union all ');
      SQL.Add('Select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,IsNull(KCLLSS.SIZE,''ZZZZZZ'')  as SIZE,-1*sum(IsNull(KCLLSS.Qty,KCLLS.Qty))  as LLQty,''5'' as SB ');
      SQL.Add('from KCLLS ');
      SQL.Add('Left join KCLLSS on KCLLSS.LLNO=KCLLS.LLNO and KCLLSS.CLBH=KCLLS.CLBH and KCLLSS.SCBH=KCLLS.SCBH and KCLLSS.DFL=KCLLS.DFL ');
      SQL.Add('Left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
      SQL.Add('left join CLZL on CLZL.cldh=KCLLS.CLBH');
      SQL.Add('where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('	 and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and CKBH in (select CKBH from KCCK where GSBH='''+main.Edit2.Text+''')');
      SQL.Add('Group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,CLZL.lycc,IsNull(KCLLSS.SIZE,''ZZZZZZ'')');
      SQL.Add(') KCLLMonth ');
      SQL.Add('Group by CKBH,CLBH,HGLB,SIZE ) KCCLMONTH_HG_SIZE where Qty<>0  Group by CKBH,CLBH,HGLB,SIZE');
      //FuncObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    Showmessage('Success');
  end;
end;

procedure TMonthStock.Modify1Click(Sender: TObject);
begin
  with Query4 do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Save1.Enabled:=true;
  Cancel1.Enabled:=true;
end;

procedure TMonthStock.Cancel1Click(Sender: TObject);
begin
  with Query4 do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TMonthStock.Save1Click(Sender: TObject);
var i:integer;
begin
  Query4.First;
  for i:=0 to Query4.RecordCount-1 do
  begin
    case Query4.updatestatus of
      usmodified:
      begin
        Query4.Edit;
        Query4.FieldByName('userID').Value:=main.edit1.text;
        Query4.FieldByName('userdate').Value:=Date;
        UPDet.apply(ukmodify);
      end;
    end;
    Query4.Next;
  end;
  Query4.active:=false;
  Query4.cachedupdates:=false;
  Query4.requestlive:=false;
  Query4.active:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TMonthStock.Button5Click(Sender: TObject);
var sDate,eDate:TDate;
    iYear,iMonth,iDay:word;
    sYear,sMonth:String;
begin
  if Messagedlg('are you sure Month Cal:'+CBX2.Text+'/'+CBX3.Text+'?',mtCustom, [mbYes,mbNo], 0)=mrYes then
  begin
    //
    iYear:=strtoint(CBX2.Text);
    iMonth:=strtoint(CBX3.Text);
    sDate:=encodedate(iYear,iMonth,1);
    eDate:=endofthemonth(sDate);
    //
    decodedate(incmonth(sDate,-1),iYear, iMonth, iDay);
    sYear:=inttostr(iYear);
    sMonth:=inttostr(iMonth);
    if length(sMonth)=1 then
      sMonth:='0'+sMonth;
    //檢查是否會計月結
    with Matsite do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select top 1 KCYEAR,YN from KCCLMONTH_BDepartment where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+'''  ');
      Active:=true;
      if FieldByName('YN').AsString='1' then
      begin
        Showmessage('Month Cal Lock already :'+CBX2.Text+'/'+CBX3.Text+'，Warehosue can''t calculate & override');
        Active:=false;
        Exit;
      end;
      Active:=false;
    end;
    //轉移庫存調整單
    with Matsite do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Delete from KCCLMONTH_BDepartment  where KCYEAR='''+CBX2.Text+''' and KCMONTH='''+CBX3.Text+'''  ');
      SQL.Add('Insert into KCCLMONTH_BDepartment');
      SQL.Add('Select '''+CBX2.Text+''' as KCYEAR,'''+CBX3.Text+''' as KCMONTH, CKBH, CLBH, DepID, Sum(Convert(float,Qty)) as Qty , GetDate() as USERDATE,'''+main.Edit2.Text+''' as USERID, ''2'' as YN from (');
      SQL.Add(' Select CKBH, CLBH, Case when Qty<0 then ''ZZZZZZZZZZ'' else DepID end as DepID, Qty from (	 ');
      SQL.Add('   Select CKBH, CLBH, DepID ,Sum(Convert(float,Qty)) as Qty from ( ');
      SQL.Add('   Select CKBH,CLBH,DepID,Qty,''1'' as SB');
      SQL.Add('   from KCCLMONTH_BDepartment');
      SQL.Add('   where KCYEAR='''+sYear+''' and KCMONTH='''+sMonth+'''');
      SQL.Add('   Union all');
      SQL.Add('   Select KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) as DepID,Sum(IsNull(KCRKSS.Qty, KCRKS.Qty)) as Qty,''2'' as SB');
      SQL.Add('   from KCRK');
      SQL.Add('   left join KCRKS on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('   left join KCRKSS on KCRKSS.RKNO=KCRKS.RKNO and KCRKSS.CLBH=KCRKS.CLBH and KCRKSS.CGBH=KCRKS.CGBH and KCRKSS.RKSB=KCRKS.RKSB ');
      SQL.Add('   left join SGDH on SGDH.SGNO=KCRKSS.CGBH');
      SQL.Add('   left join CGZLSS on CGZLSS.CGNO=KCRK.ZSNO and CGZLSS.ZLBH=KCRKSS.CGBH  and CGZLSS.CLBH=KCRKSS.CLBH and CGZLSS.XXCC=KCRKSS.SIZE and CGZLSS.Stage=''TVu'' ');
      SQL.Add('   where  Convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
      SQL.Add('        '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('        and KCRK.CKBH in '+WH_TXSQL+' and KCRKS.CLBH is not null');
      SQL.Add('   Group by KCRK.CKBH,KCRKS.CLBH,IsNull(SGDH.DepID,IsNull(CGZLSS.Memo,''ZZZZZZZZZZ'')) ');
      SQL.Add('   Union all');
      SQL.Add('   Select KCLL.CKBH,KCLLS.CLBH,KCLL.DepID,Sum(-1* KCLLS.Qty) as Qty ,''3'' as SB');
      SQL.Add('   from KCLL');
      SQL.Add('   left join KCLLS on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('   where  KCLL.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
      SQL.Add('        '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('        and KCLL.CKBH in '+WH_TXSQL+' and KCLLS.CLBH is not null');
      SQL.Add('   Group by  KCLL.CKBH,KCLLS.CLBH,KCLL.DepID  ');
      //調動單
      SQL.Add('   Union all ');
      SQL.Add('   Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID,-1*Sum(KCLL_Dep_DBS.Qty) as Qty,''4'' as SB'); //轉出
      SQL.Add('   from KCLL_Dep_DB');
      SQL.Add('   left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
      SQL.Add('   where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
      SQL.Add('        '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('  	Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID  ');
      SQL.Add('   Union all ');
      SQL.Add('   Select KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  as DepID,Sum(KCLL_Dep_DBS.Qty) as Qty,''5'' as SB');  //轉入
      SQL.Add('   from KCLL_Dep_DB');
      SQL.Add('   left join KCLL_Dep_DBS on KCLL_Dep_DB.DBNO=KCLL_Dep_DBS.DBNO');
      SQL.Add('   where  KCLL_Dep_DB.CFMID<>''NO'' and Convert(smalldatetime,convert(varchar,KCLL_Dep_DB.CFMDATE,111)) between ');
      SQL.Add('        '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('  	Group by KCLL_Dep_DB.CKBH,KCLL_Dep_DBS.CLBH,KCLL_Dep_DBS.DepID1  )  KCCLMONTH');
      //
      SQL.Add('  	Group by CKBH, CLBH, DepID  ) KCCLMONTH ');
      SQL.Add(') KCCLMONTH ');
      SQL.Add('Group by CKBH, CLBH, DepID');
      SQL.Add('having Sum(Qty)<>0');
      //FuncObj.WriteErrorLog(sql.Text);
      ExecSQL();
    end;
    Showmessage('Success');
  end;
end;

procedure TMonthStock.mnu1Click(Sender: TObject);
begin
  if MonthStock_Dep_DB=nil then
  begin
    MonthStock_Dep_DB:=TMonthStock_Dep_DB.Create(self);
    MonthStock_Dep_DB.Show;
  end else
  begin
    MonthStock_Dep_DB.Show;
    MonthStock_Dep_DB.windowstate := wsmaximized;
  end;
end;

end.
