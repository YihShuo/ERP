unit EntryCheck_CCDC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,iniFiles,comobj;

type
  TEntryCheck_CCDC = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Edit5: TEdit;
    Edit6: TEdit;
    CBX4: TComboBox;
    CBX5: TComboBox;
    cbYN: TComboBox;
    DBGrid1: TDBGridEh;
    DataSource1: TDataSource;
    Matsite: TQuery;
    Query1: TQuery;
    Query1GSBH: TStringField;
    Query1RKNO: TStringField;
    Query1SupplierID: TStringField;
    Query1SuplierName: TStringField;
    Query1ZSNO: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1CFMDATE: TDateTimeField;
    Query1TSBH: TStringField;
    Query1CLBH: TStringField;
    Query1MatName: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1USPrice: TFloatField;
    Query1USACC: TFloatField;
    Query1CWHL: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1ExchACC: TFloatField;
    Query1MEMO: TStringField;
    Label8: TLabel;
    Edit3: TEdit;
    Query1Qty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  EntryCheck_CCDC: TEntryCheck_CCDC;

implementation

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
procedure TEntryCheck_CCDC.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //

  VNPrice_Decimal:=0;
  //­Ü®w¤p¦ì¼Æ
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  //
end;

procedure TEntryCheck_CCDC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TEntryCheck_CCDC.FormDestroy(Sender: TObject);
begin
  EntryCheck_CCDC:=nil;
end;

procedure TEntryCheck_CCDC.Button1Click(Sender: TObject);
var sDate,eDate:Tdate;
    i,iYear,iMonth:integer;
begin
  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  iYear:=strtoint(CBX1.Text);
  iMonth:=strtoint(CBX2.Text);
  if (iYear>2999) or (iYear<1900) then
  begin
    Showmessage('Pls key in right year');
    abort;
  end;
  if (iMonth=0) or (iMonth>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add(' select KCRK.GSBH,KCRK.RKNO,KCRK.ZSBH as SupplierID,ZSZL.zsjc_yw as SuplierName,KCRK.ZSNO,KCRK.USERDATE,KCRK.CFMDATE ');
    sql.Add('	       ,KCRKS.TSBH,KCRKS.SBBH as CLBH,TSCD_SB.VWPM as MatName,TSCD_SB.DWBH,''153'' as CWBH,KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC ');
    sql.Add('	       ,KCRKS.CWHL, KCRKS.VNPrice,KCRKS.VNACC,KCRKS.ExchACC,KCRKS.MEMO ');
    sql.Add(' from CCDC_KCRK KCRK  ');
    sql.Add(' left join CCDC_KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO ');
    sql.Add(' left join TSCD_ZSZL ZSZL on ZSZL.ZSDH=KCRK.ZSBH  ');
    sql.Add(' left join TSCD_SB on KCRKS.SBBH=TSCD_SB.SBBH  ');
    sql.Add(' where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if cbYN.Text<> 'ALL' then
    begin
      sql.Add('   and KCRK.YN='''+cbYN.Text+'''');
    end;
    if edit1.text<>'' then
      sql.add('      and KCRKS.SBBH like '''+edit1.text+'%''');
    if edit2.text<>'' then
      sql.add('      and TSCD_SB.VWPM  like ''%'+edit2.text+'%''');
    if edit3.text<>'' then
      sql.add('      and KCRKS.TSBH like ''%'+edit3.text+'%''');
    if edit5.text<>'' then
      sql.add('      and KCRKS.RKNO like '''+edit5.text+'%''');
    if edit6.text<>'' then
      sql.add('      and ZSZL.zsjc_yw like ''%'+edit6.Text+'%''');
    sql.Add(' order by KCRK.RKNO ');
    active:=true;
  end;

end;

procedure TEntryCheck_CCDC.CBX1Change(Sender: TObject);
begin
  CBX4.Text:=CBX1.Text;
end;

procedure TEntryCheck_CCDC.CBX2Change(Sender: TObject);
begin
  CBX5.Text:=CBX2.Text;
end;

procedure TEntryCheck_CCDC.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TEntryCheck_CCDC.Button2Click(Sender: TObject);
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
        //eclApp.Cells[j,i+8].NumberFormatLocal:='@';
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

end.
