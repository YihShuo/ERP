unit MaterialTraceScan1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls,DateUtils,
  DBCtrls, Menus, GridsEh, DBGridEh, Comobj, IniFiles, Printers;

type
  TMaterialTraceScan = class(TForm)
    Splitter1: TSplitter;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label5: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CGNOEdit: TEdit;
    InvEdit: TEdit;
    Button10: TButton;
    DBGrid2: TDBGridEh;
    DBGrid1: TDBGridEh;
    KCRK: TQuery;
    KCRKUSERDATE: TDateTimeField;
    KCRKQty: TCurrencyField;
    KCRKZSBH: TStringField;
    KCRKCFMID: TStringField;
    KCRKMemo: TStringField;
    KCRKInvoice: TStringField;
    KCRKZLBH: TStringField;
    KCRKHGLB: TStringField;
    KCRKCNO: TStringField;
    DS1: TDataSource;
    KCLL: TQuery;
    KCLLLLNO: TStringField;
    KCLLSCBH: TStringField;
    KCLLCFMDATE: TDateTimeField;
    KCLLQty: TCurrencyField;
    KCLLCFMID: TStringField;
    KCLLMemo: TStringField;
    KCLLHGLB: TStringField;
    KCLLCNO: TStringField;
    DS2: TDataSource;
    Material: TQuery;
    UpSQL1: TUpdateSQL;
    DS3: TDataSource;
    Query1: TQuery;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    PopupMenu2: TPopupMenu;
    EXCEL2: TMenuItem;
    KCLLLLNO_OWE: TStringField;
    KCRKSCNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure EXCEL2Click(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
  private
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Private declarations }
    procedure ReadIni();
  public
    CKBH: string;
    { Public declarations }
  end;

var
  MaterialTraceScan: TMaterialTraceScan;

implementation

uses AnyStockScan1, main1, FunUnit;

{$R *.dfm}

procedure TMaterialTraceScan.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
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
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(KCRK.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KCLL.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TMaterialTraceScan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialTraceScan.FormDestroy(Sender: TObject);
begin
  MaterialTraceScan:=nil;
end;

procedure TMaterialTraceScan.FormCreate(Sender: TObject);
begin
  DTP1.date:=startofthemonth(Date);
  DTP2.date:=date;
  //CKBH:=main.Edit2.Text;
  material.Active:=false;
  KCLL.Active:=false;
  KCRK.Active:=false;
  ReadIni();
end;

procedure TMaterialTraceScan.Button1Click(Sender: TObject);
begin
  with KCRK do     //入庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRKScan_RFSS.SCNO,KCRKScan_RFSS.CFMDate USERDATE, KCRKScan_RFSS.CFMID ,CGZL.ZSBH ,KCRKScan_RFSS.Qty, ');
    sql.add('       KCRKScan_RF.docno Invoice, KCRKScan_RF.Memo, KCRKScan_RFSS.Memo_RY as ZLBH, KCRK.HGLB, KCRK.CNO ');
    sql.add('from KCRKScan_RFSS ');
    sql.Add('left join KCRKScan_RF on KCRKScan_RFSS.SCNO = KCRKScan_RF.SCNO ');
    sql.Add('left join KCRKScan_RFS on KCRKScan_RFSS.SCNO = KCRKScan_RFS.SCNO and KCRKScan_RFSS.CLBH = KCRKScan_RFS.CLBH ');
    sql.Add('left join CGZL on KCRKScan_RFS.CGNO = CGZL.CGNO ');
    sql.Add('left join ZSZL on CGZL.ZSBH = ZSZL.ZSDH ');
    sql.Add('left join (SELECT distinct KCRK.HGLB, KCRKS.CNO, KCRKS.CLBH, KCRK.ZSNO, KCRK.CKBH, KCRK.ZSBH FROM KCRKS ');
    sql.Add('           inner join KCRK on KCRK.RKNO=KCRKS.RKNO) KCRK on KCRK.ZSNO=KCRKScan_RFS.CGNO and KCRK.CKBH=KCRKScan_RF.CKBH ');
    sql.Add('                                                            and  KCRK.ZSBH=CGZL.ZSBH and KCRK.CLBH=KCRKScan_RFSS.CLBH ');
    sql.add('where KCRKScan_RFSS.CLBH='''+edit1.Text+''' ');
    sql.add('     and convert(smalldatetime,convert(varchar,KCRKScan_RFSS.CFMDate,111)) between ');
    sql.add('     '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    sql.add('     and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    sql.Add('     and KCRKScan_RF.CKBH='''+CKBH+''' ');
    if CGNOEdit.Text<>'' then
     SQL.Add('    and KCRKScan_RFS.CGNO like '''+CGNOEdit.Text+'%'' ');
    if InvEdit.Text<>'' then
     SQL.Add('   and KCRKScan_RF.docno like ''%'+InvEdit.Text+'%'' ');
    sql.add('order by KCRKScan_RFSS.CFMDate ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  with KCLL do
  begin
    active:=false;
    sql.Clear;
    sql.add('select * from ( ');
    //Phieu xuat
    sql.add('select KCLLScan_RFSS.LLNO,KCLLScan_RFSS.SCANUSERDATE CFMDATE,KCLLScan_RFSS.SCANUSERID CFMID,round(convert(float,KCLLScan_RFSS.SCANQty),'+WH_Decimal+') as Qty ');
    sql.add('      ,KCLLS.SCBH, BDepartment.DepName as Memo,KCLLS.HGLB,KCLLS.CNO, KCLLScan_RFSS.LLNO_OWE ');
    sql.add('from KCLLScan_RFSS ' );
    sql.add('left join KCLLS on KCLLScan_RFSS.LLNO=KCLLS.LLNO and KCLLScan_RFSS.CLBH=KCLLS.CLBH ');
    sql.add('                   and KCLLScan_RFSS.DFL=KCLLS.DFL and KCLLScan_RFSS.SCBH=KCLLS.SCBH ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('where KCLLScan_RFSS.SCANQty<>0 and KCLLScan_RFSS.CLBH='''+edit1.Text+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,KCLLScan_RFSS.SCANUSERDATE,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    sql.add('      and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    //Phieu xuat no
    sql.add('union all ');
    sql.add('select KCLLScan_RFSSS.LLNO,KCLLScan_RFSSS.SCANUSERDATE CFMDATE,KCLLScan_RFSSS.SCANUSERID CFMID,round(convert(float,KCLLScan_RFSSS.SCANQty),'+WH_Decimal+') as Qty ');
    sql.add('      ,KCLLS.SCBH, BDepartment.DepName as Memo,KCLLS.HGLB,KCLLS.CNO, KCLLScan_RFSSS.LLNO_OWE ');
    sql.add('from KCLLScan_RFSSS ' );
    sql.add('left join KCLLS on KCLLScan_RFSSS.LLNO=KCLLS.LLNO and KCLLScan_RFSSS.CLBH=KCLLS.CLBH ');
    sql.add('                   and KCLLScan_RFSSS.DFL=KCLLS.DFL and KCLLScan_RFSSS.SCBH=KCLLS.SCBH ');
    sql.add('left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('where KCLLScan_RFSSS.SCANQty<>0 and KCLLScan_RFSSS.CLBH='''+edit1.Text+'''');
    sql.add('      and convert(smalldatetime,convert(varchar,KCLLScan_RFSSS.SCANUSERDATE,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' ');
    sql.add('      and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    sql.add(') KCLL ');
    sql.Add('order by KCLL.CFMDATE ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

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

procedure TMaterialTraceScan.Button10Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,L,R:integer;
begin
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

procedure TMaterialTraceScan.EXCEL2Click(Sender: TObject);
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

procedure TMaterialTraceScan.EXCEL1Click(Sender: TObject);
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

end.
