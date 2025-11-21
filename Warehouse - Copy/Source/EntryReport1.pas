unit EntryReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  PrnDbgeh, Menus, Comobj, IniFiles, ShellApi ,DateUtils;


type
  TEntryReport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DTP1: TDateTimePicker;
    Label2: TLabel;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    CB1: TComboBox;
    Label4: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    Print1: TMenuItem;
    Qtemp: TQuery;
    Label5: TLabel;
    CNOEdit: TEdit;
    Button2: TButton;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Edit3: TEdit;
    Label8: TLabel;
    RKNOEdit: TEdit;
    Query1RKNO: TStringField;
    Query1CLBH: TStringField;
    Query1CGBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1ZSNO: TStringField;
    Query1FKZT: TStringField;
    Query1GSBH: TStringField;
    Query1CKBH: TStringField;
    Query1HGLB: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CFMID: TStringField;
    Query1CFMDATE: TDateTimeField;
    Query1DOCNO: TStringField;
    Query1CNO: TStringField;
    Query1ZSYWJC: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Export: TStringField;
    Label9: TLabel;
    INVEdit: TEdit;
    Query1MEMO: TStringField;
    Query1RKSB: TStringField;
    HGLBEdit: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    ExportEdit: TEdit;
    Label12: TLabel;
    CGNOEdit: TEdit;
    Query1USPrice: TFloatField;
    Query1USACC: TFloatField;
    Query1Declaretion: TStringField;
    Query1RKmemo: TStringField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1ZSDH: TStringField;
    Query1DOCDATE: TDateTimeField;
    Query1CWHL: TCurrencyField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    Query1HQName: TStringField;
    chk1: TCheckBox;
    Query1InputDate: TDateTimeField;
    Query1SOTT: TIntegerField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    IsHide_Warehouse_XT:String;
    RYEditSubSQL:String;
    { Private declarations }
    procedure ReadIni();
    procedure RYEditPaste();
    function GetMutiRYSubSQL(Str:String):String;
    procedure InitTitleClick(IsOpen:boolean);
  public
    { Public declarations }
  end;

var
  EntryReport: TEntryReport;

implementation

uses main1,FunUnit,untClipboard;

{$R *.dfm}
procedure TEntryReport.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TEntryReport.FormDestroy(Sender: TObject);
begin
  EntryReport:=nil;
end;

procedure TEntryReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntryReport.InitTitleClick(IsOpen:boolean);
var i:integer;
begin

  if IsOpen=false then
  begin
    for i:=0 to DBGridEh1.Columns.Count-1 do
      DBGridEh1.Columns[i].Title.TitleButton:=false;
  end else
  begin
    if ((Query1.Active=true) and (DBGridEh1.Columns[0].Title.TitleButton=false))then
      for i:=0 to DBGridEh1.Columns.Count-1 do
        DBGridEh1.Columns[i].Title.TitleButton:=true;
  end;
end;

procedure TEntryReport.RYEditPaste();
var
  CbBuf: PChar;
  BufSize: Integer;
  Handle: THandle;
  Text:WideString;
  i:integer;
  rowList:TStringlist;
  TotalDDBH:String;
begin
 try
   Text:='';
   if Clipboard.HasFormat(CF_TEXT) then
   begin
    Handle := ClipBoard.GetAsHandle(CF_TEXT);
    BufSize := GlobalSize(Handle);
    GetMem(CbBuf, BufSize);
    Text:=Clipboard.AsUnicodeText;
    //
    rowList:=TStringlist.Create;
    rowList.Text:=Text;
    TotalDDBH:='';
    for i:=0 to rowList.Count-1 do
    begin
      TotalDDBH:=TotalDDBH+rowList.Strings[i]+',';
    end;
    rowList.Free;
    if length(TotalDDBH)>0 then
    begin
      Edit3.Text:=Copy(TotalDDBH,1,length(TotalDDBH)-1);
    end;
   end;
 except
   on E:Exception do
    Showmessage(E.Message);
 end;
end;


function TEntryReport.GetMutiRYSubSQL(Str:String):String;
var tmpList:TStringlist;
   i:integer;
   tmResult,TotalStr:String;
begin
 if Pos(',',Str)>0 then
 begin
   tmpList:=TStringlist.Create;
   tmpList:=FuncObj.SplitString(Str,',');
   TotalStr:='';
   for i:=0 to tmpList.Count-1 do
   begin
     TotalStr:=TotalStr+''''+tmpList.Strings[i]+''',';
   end;
   tmResult:=' in ('+Copy(TotalStr,1,length(TotalStr)-1)+')';
   //BDE TQuery 不能太長所以改用暫存
   if ((tmpList.Count>=20) and (tmpList.Count<=30)) then
   begin
     with Qtemp do
     begin
       Active:=false;
       SQL.Clear;
       SQL.add('if object_id(''tempdb..#RYList'') is not null    ');
       SQL.add('begin drop table #RYList end                 ');
       SQL.Add('select DDBH into #RYList from DDZL');
       SQL.Add('where  DDBH '+tmResult);
       //funcobj.WriteErrorLog(sql.Text);
       ExecSQL();
       Result:=' in (select DDBH from #RYList) ';
     end;
   end else if (tmpList.Count>30) then
   begin
      showmessage('Vui long khong nhap nhieu hon 30 RY#');
      abort;
   end else
   begin
      Result:=tmResult;
   end;
   tmpList.Free;
 end else
 begin
   Result:=' ='''+Str+''' ';
 end;
end;

procedure TEntryReport.Button1Click(Sender: TObject);
var KCRKS,KCRK:string;
begin
  if chk1.Checked then
  begin
    KCRKS:= '(Select * From KCRKS union all Select * from KCRKS_2014)';
    KCRK:= '(Select * From KCRK union all Select * from KCRK_2014)';
  end else
  begin
    KCRKS:='KCRKS';
    KCRK:='KCRK';
  end;
  RYEditSubSQL:=GetMutiRYSubSQL(Edit3.Text);
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.Qty,KCRK.ZSNO,KCRKS.FKZT,KCRK.GSBH,KCRK.CKBH,KCRK.HGLB,KCRK.USERID,KCRK.USERDATE,KCRK.CFMID,KCRK.CFMDATE,KCRK.DOCNO,KCRKS.CNO ');
    sql.add('       ,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCPK.Declaretion,KCPK.Export,KCRK.MEMO,KCRKS.RKSB,KCRKS.USPrice,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.USACC,KCRKS.RKmemo,KCRK.DOCDATE,KCRKS.CWHL ');
    sql.Add('       ,Case when KCRK.HGLB =''NK'' then CLHG.UnitC when KCRK.HGLB =''TC'' then CLTC.UnitC when KCRK.HGLB=''HD'' then  CLHD.UnitC');
    sql.Add('            when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.UnitC  ');
    sql.Add('            when KCRK.HGLB =''NK1'' then CLHG1.UnitC when KCRK.HGLB =''TC1'' then CLTC1.UnitC when KCRK.HGLB=''HD1'' then  CLHD1.UnitC  when KCRK.HGLB=''NQ'' then  CLNQ.UnitC');
    sql.Add('            when (KCRK.HGLB=''KD1'' and isnull(kcrks.CNO,'''') <>'''') then CLKD1.UnitC when KCRK.HGLB=''NKNQ'' then  CLNKNQ.UnitC else  NULL end as UnitC');
    sql.Add('       ,Case when KCRK.HGLB =''NK'' then CLHG.RateC when KCRK.HGLB =''TC'' then CLTC.RateC when KCRK.HGLB=''HD'' then  CLHD.RateC');
    sql.Add('            when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.RateC ');
    sql.Add('            when KCRK.HGLB =''NK1'' then CLHG1.RateC when KCRK.HGLB =''TC1'' then CLTC1.RateC when KCRK.HGLB=''HD1'' then  CLHD1.RateC when KCRK.HGLB=''NQ'' then  CLNQ.RateC');
    sql.Add('            when (KCRK.HGLB=''KD1'' and isnull(kcrks.CNO,'''') <>'''') then CLKD1.RateC when KCRK.HGLB=''NKNQ'' then  CLNKNQ.RateC else  NULL end as RateC');
    sql.Add('       ,Case when KCRK.HGLB =''NK'' then CLHG.HGPM when KCRK.HGLB =''TC'' then CLTC.HGPM when KCRK.HGLB=''HD'' then  CLHD.HGPM');
    sql.Add('            when (KCRK.HGLB=''KD'' and isnull(kcrks.CNO,'''') <>'''') then CLKD.HGPM  ');
    sql.Add('            when KCRK.HGLB =''NK1'' then CLHG1.HGPM when KCRK.HGLB =''TC1'' then CLTC1.HGPM when KCRK.HGLB=''HD1'' then  CLHD1.HGPM when KCRK.HGLB=''NQ'' then  CLNQ.HGPM');
    sql.Add('            when (KCRK.HGLB=''KD1'' and isnull(kcrks.CNO,'''') <>'''') then CLKD1.HGPM when KCRK.HGLB=''NKNQ'' then  CLNKNQ.HGPM else  NULL end as HQName ');
    sql.Add('       ,KCRK.InputDate,KCRKS.SOTT');
    sql.add('from '+KCRKS+' KCRKS ');
    sql.add('left join '+KCRK+' KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('left join CLZl on CLZL.CLDH=KCRKS.CLBH ');
    sql.Add('left join KCPK on KCRK.RKNO=KCPK.PKNO');
    sql.Add('left join CLHG on CLHG.CLBH=KCRKS.CLBH and KCRK.HGLB=''NK''');
    sql.Add('left join CLTC on CLTC.CLBH=KCRKS.CLBH and KCRK.HGLB=''TC''');
    sql.Add('left join CLHD on CLHD.CLBH=KCRKS.CLBH and KCRK.HGLB=''HD''');
    sql.Add('left join CLKD on CLKD.CLBH=KCRKS.CLBH and KCRK.HGLB=''KD''');
    sql.Add('left join CLHG1 on CLHG1.CLBH=KCRKS.CLBH and KCRK.HGLB=''NK1''');
    sql.Add('left join CLTC1 on CLTC1.CLBH=KCRKS.CLBH and KCRK.HGLB=''TC1''');
    sql.Add('left join CLHD1 on CLHD1.CLBH=KCRKS.CLBH and KCRK.HGLB=''HD1''');
    sql.Add('left join CLKD1 on CLKD1.CLBH=KCRKS.CLBH and KCRK.HGLB=''KD1''');
    sql.Add('left join CLNQ on CLNQ.CLBH=KCRKS.CLBH and KCRK.HGLB=''NQ''');
    sql.Add('left join CLNKNQ on CLNKNQ.CLBH=KCRKS.CLBH and KCRK.HGLB=''NKNQ''');
    //=====2024/12/06 bo cot InvoiceToWarehouseDate
    //sql.Add('left join ( select CGZLInvoiceS.CINO,CGNO,CLBH,Invoice from CGZLInvoiceS');
    //sql.Add('            left join CGZLInvoice on CGZLInvoiceS.CINO = CGZLInvoice.CINO');
    //sql.Add('           )CGZLInvoiceS on CGZLInvoiceS.CGNO = KCRK.ZSNO and CGZLInvoiceS.CLBH = KCRKS.CLBH and CGZLInvoiceS.Invoice = KCRK.DOCNO');
    //sql.Add('left join CGZLInvoice on CGZLInvoice.CINO = CGZLInvoiceS.CINO');
    sql.add('where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and ZSZL.ZSYWJC like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and KCRKS.CLBH like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and KCRK.CKBH='+''''+CB1.Text+'''');
    if edit3.Text<>'' then
      //sql.add('      and KCRKS.CGBH like '+''''+'%'+edit3.Text+'%'+'''');
      sql.add('      and KCRKS.CGBH '+RYEditSubSQL+' ');
    if CNOEdit.Text<>'' then
      sql.add('      and KCRKS.CNO like ''%'+CNOEdit.Text+'%'' ');
    if RKNOEdit.Text<>'' then
      sql.add('      and KCRKS.RKNO like '''+RKNOEdit.Text+'%'' ');
    if INVEdit.Text<>'' then
      SQL.add('      and KCRK.DOCNO like ''%'+INVEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('      and KCRK.HGLB<>''XT'' ');
    if HGLBEdit.Text<>'' then
      sql.add('      and KCRK.HGLB='''+HGLBEdit.Text+''' ');
    if ExportEdit.Text<>'' then
      sql.add('      and KCPK.Export='''+ExportEdit.Text+''' ');
    if CGNOEdit.Text<>'' then
      sql.add('      and KCRK.ZSNO like '''+CGNOEdit.Text+'%'' ');
    sql.add('order by KCRKS.RKNO,KCRKS.CLBH,KCRKS.RKSB');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  InitTitleClick(true);
end;

procedure TEntryReport.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    DTP1.Date:=fieldbyname('NDate').Value-7;
    DTP2.Date:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK');
    sql.add('where GSBH='+''''+main.edit2.Text+'''');
    sql.add('order by CKBH ');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.add(fieldbyname('CKBH').asstring);
        next;
      end;
    active:=false;
    CB1.ItemIndex:=0;
  end;
  ReadIni();
  InitTitleClick(false);
end;

procedure TEntryReport.Excel1Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
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
          eclApp.Cells[j,15].NumberFormatLocal:='@';
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

procedure TEntryReport.Print1Click(Sender: TObject);
begin
  PrintDBGrideh1.Preview;
end;

procedure TEntryReport.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
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
    eclApp.Cells(1,2):='Entry No';
    eclApp.Cells(1,3):='Material No';
    eclApp.Cells(1,4):='DESCRIPTION';
    eclApp.Cells(1,5):='UNIT';
    eclApp.Cells(1,6):='RY No';
    eclApp.Cells(1,7):='Entry Type';
    eclApp.Cells(1,8):='QTY';
    eclApp.Cells(1,9):='PO';
    eclApp.Cells(1,10):='SUPPID';
    eclApp.Cells(1,11):='SHIPPER';
    eclApp.Cells(1,12):='Payment';
    eclApp.Cells(1,13):='COMPANY';
    eclApp.Cells(1,14):='DEPT';
    eclApp.Cells(1,15):='WAREHOUSE CODE';
    eclApp.Cells(1,16):='UserID';
    eclApp.Cells(1,17):='USERDate';
    eclApp.Cells(1,18):='ConfirmID';
    eclApp.Cells(1,19):='ConfirmDate';
    eclApp.Cells(1,21):='DESCRIPTION';
    eclApp.Cells(1,21):='InvoiceNO';
    eclApp.Cells(1,22):='CUSTOMS NO';
    eclApp.Cells(1,23):='TOKHAI';
    eclApp.Cells(1,24):='Export';
    eclApp.Cells(1,25):='Note';
    eclApp.Cells(1,26):='USPrice';
    eclApp.Cells(1,27):='USACC';
    eclApp.Cells(1,28):='CWHL';
    eclApp.Cells(1,29):='VNPrice';
    eclApp.Cells(1,30):='VNACC';
    eclApp.Cells(1,31):='RKMemo';
    eclApp.Cells(1,32):='DocDate';
    eclApp.Cells(1,33):='UnitC';
    eclApp.Cells(1,34):='RateC';
    eclApp.Cells(1,35):='HQName';
    eclApp.Cells(1,36):='Actual Date In WH';
    eclApp.Cells(1,37):='STT Hang';
//    for   i:=1   to   query1.fieldcount   do
//    begin
//      eclApp.Cells(1,i+1):=query1.fields[i-1].FieldName;
//    end;
  query1.First;
  j:=2;
  while   not  query1.Eof   do
  begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   query1.fieldcount   do
      begin
        eclApp.Cells[j,15].NumberFormatLocal:='@';
        eclApp.Cells[j,22].NumberFormatLocal:='@';
        eclApp.Cells[j,23].NumberFormatLocal:='@';
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

procedure TEntryReport.Edit3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) and (key = 86) then
  begin
    RYEditPaste();
  end;
end;

end.
