unit ExtraOutCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls ,comobj,
  GridsEh, DBGridEh,EhlibBDE,dateutils, ComCtrls, inifiles;

type
  TExtraOutCheck = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button3: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    DBGrid1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Label8: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    CBX3: TComboBox;
    Matsite: TQuery;
    PC1: TPageControl;
    TS1: TTabSheet;
    Query1JGNO: TStringField;
    Query1GSBH: TStringField;
    Query1CKBH: TStringField;
    Query1ZSBH: TStringField;
    Query1JGDate: TDateTimeField;
    Query1JGLX: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1USERID: TStringField;
    Query1CFMID1: TStringField;
    Query1CFMDate1: TDateTimeField;
    Query1CFMID2: TStringField;
    Query1CFMDate2: TDateTimeField;
    Query1YN: TStringField;
    Query1SB: TStringField;
    Query1PMARK: TIntegerField;
    Query1YN_Date: TDateTimeField;
    Query1ZMLB: TStringField;
    Query1BL: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1Qty: TFloatField;
    Query1VNACC: TFloatField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1ZSYWJC: TStringField;
    Query1CWBH: TStringField;
    Query1HGBH: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  ExtraOutCheck: TExtraOutCheck;

implementation

uses ExtraOutCheck_Print1, main1, FunUnit;

{$R *.dfm}
procedure TExtraOutCheck.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
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
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//

procedure TExtraOutCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TExtraOutCheck.Button3Click(Sender: TObject);
var i:integer;
begin
  if PC1.ActivePageIndex=0 then
  begin
    ExtraOutCheck_Print:=TExtraOutCheck_Print.create(self);
    ExtraOutCheck_Print.quickrep1.prepare;
    i:=ExtraOutCheck_Print.quickrep1.qrprinter.pagecount;
    ExtraOutCheck_Print.page1.caption:=inttostr(i);
    ExtraOutCheck_Print.quickrep1.preview;
    ExtraOutCheck_Print.free;
  end;
end;

procedure TExtraOutCheck.Button2Click(Sender: TObject);
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
end;

procedure TExtraOutCheck.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
    y,m:integer;
begin
  if (CBX1.text='') or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  y:=strtoint(CBX1.Text);
  m:=strtoint(CBX2.Text);
  if (y>2999) or (y<1900) then
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
  if PC1.ActivePageIndex=0 then
  begin
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.Add('select JGZL.*,JGZLZ.*,CLZL.YWPM,CLZL.DWBH,ZSZL.ZSYWJC,KCZLS.CWBH, CLHG.HGBH,CLHG.UnitC,CLHG.RateC');
      sql.add(' from (select JGZLS.JGNO,JGZLS.ZMLB,JGZLS.Qty as BL,isnull(JGZLS.VNPrice,0) as VNPrice,round(convert(float,JGZLS.Qty)*convert(float,JGZLSM.Qty),2) as Qty,');
      sql.Add('       convert(bigint,(isnull(JGZLS.VNPrice,0))* (round(JGZLS.Qty*JGZLSM.Qty,2)),0) as VNACC,JGZLS.USERDATE ');
      sql.Add('       from JGZLS ');
      sql.add('       left join (select JGZLS.JGNO,JGZLS.CLBH,JGZLS.Qty from JGZLS ');
      sql.add('       left join JGZL on JGZL.JGNO=JGZLS.JGNO where JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.add('       and Convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add(        ''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      sql.add('       )  JGZLSM on JGZLSM.JGNO=JGZLS.JGNO  and JGZLS.CLBH=JGZLSM.CLBH');
      sql.add('               left join JGZL on JGZL.JGNO=JGZLS.JGNO where JGZLS.ZMLB<>'+''''+'ZZZZZZZZZZ'+'''');
      sql.add('            and Convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add(       ''''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      sql.add('     ) JGZLZ');
      sql.add('left join JGZL on JGZL.JGNO=JGZLZ.JGNO');
      sql.add('left join CLZL on CLZL.CLDH=JGZLZ.ZMLB');
      sql.add('left join CLHG on CLHG.CLBH=JGZLZ.ZMLB and Year(JGZLZ.USERDATE)>=2017 ');
      sql.add('left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH');
      sql.add('left join KCZLS on KCZLS.CLBH=JGZLZ.ZMLB and KCZLS.CKBH=JGZl.CKBH');
      sql.add('left join KCCK on KCCK.CKBH=JGZL.CKBH ');
      sql.add(' where JGZLZ.ZMLB like '+''''+edit1.text+'%'+'''');
      sql.add('       and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
      sql.add('       and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
      sql.add('       and isnull(KCZLS.CWBH,'+''''+''+''''+') like '+''''+edit4.text+'%'+'''');
      sql.add('       and JGZLZ.JGNO like '+''''+edit5.text+'%'+'''');
      sql.add('       and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
      sql.add('       and JGZL.YN='+''''+'5'+'''');
      sql.add('       and KCCK.GSBH='+''''+main.edit2.Text+'''');
      if CBX3.Text<>'' then
      begin
        sql.Add('and KCCK.CKBH ='+''''+CBX3.text+'''');
      end;
      sql.add('order by JGZLZ.ZMLB ,JGZL.ZSBH,JGZL.JGNO');
      //memo1.text:=sql.text;
      funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  
end;

procedure TExtraOutCheck.Query1CalcFields(DataSet: TDataSet);
begin
{with query1 do
  begin
    if not(fieldbyname('Qty').isnull or  fieldbyname('VNPrice').isnull) then
      begin
        fieldbyname('VNACC').Value:=trunc(fieldbyname('Qty').Value *fieldbyname('VNPrice').Value+0.5) ;
      end;
  end; }
end;

procedure TExtraOutCheck.FormDestroy(Sender: TObject);
begin
ExtraOutCheck:=nil;
end;

procedure TExtraOutCheck.FormCreate(Sender: TObject);
begin
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.Edit2.Text+'''');
    sql.add('order by CKBH');
    active:=true;
    CBX3.Items.Clear;
    while not eof do
      begin
        CBX3.Items.Add(fieldbyname('CKBH').AsString);
        next;
      end;
    active:=false;
  end;
  readini();
end;

end.
