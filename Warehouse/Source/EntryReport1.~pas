unit EntryReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,
  PrnDbgeh, Menus, Comobj, IniFiles;

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
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryReport: TEntryReport;

implementation

uses main1,FunUnit;

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
      //¡Ù¬√XT
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

procedure TEntryReport.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.Qty,KCRK.ZSNO,KCRKS.FKZT,KCRK.GSBH,KCRK.CKBH,KCRK.HGLB,KCRK.USERID,KCRK.USERDATE,KCRK.CFMID,KCRK.CFMDATE,KCRK.DOCNO,KCRKS.CNO ');
    sql.add('       ,ZSZL.ZSDH,ZSZL.ZSYWJC,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,KCPK.Declaretion,KCPK.Export,KCRK.MEMO,KCRKS.RKSB,KCRKS.USPrice,KCRKS.VNPrice,KCRKS.VNACC,KCRKS.USACC,KCRKS.RKmemo ');
    sql.add('from KCRKS ');
    sql.add('left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('left join CLZl on CLZL.CLDH=KCRKS.CLBH ');
    sql.Add('left join KCPK on KCRK.RKNO=KCPK.PKNO');
    sql.add('where convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('      and ZSZL.ZSYWJC like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('      and KCRKS.CLBH like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and KCRK.CKBH='+''''+CB1.Text+'''');
    if edit3.Text<>'' then
      sql.add('      and KCRKS.CGBH like '+''''+'%'+edit3.Text+'%'+'''');
    if CNOEdit.Text<>'' then
      sql.add('      and KCRKS.CNO like ''%'+CNOEdit.Text+'%'' ');
    if RKNOEdit.Text<>'' then
      sql.add('      and KCRKS.RKNO like '''+RKNOEdit.Text+'%'' ');
    if INVEdit.Text<>'' then
      SQL.add('      and KCRK.DOCNO like ''%'+INVEdit.Text+'%'' ');
    if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
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
    eclApp.Cells(1,28):='VNPrice';
    eclApp.Cells(1,29):='VNACC';
    eclApp.Cells(1,30):='RKMemo';
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

end.
