unit ExtraInCheck1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh,EhlibBDE,dateutils, ComCtrls, iniFiles;

type
  TExtraInCheck = class(TForm)
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
    CBX1: TComboBox;
    CBX2: TComboBox;
    Button3: TButton;
    Query1: TQuery;
    DataSource1: TDataSource;
    Query1JGNO: TStringField;
    Query1JGLX: TStringField;
    Query1CFMDate1: TDateTimeField;
    Query1CLBH: TStringField;
    Query1Qty: TCurrencyField;
    Query1Memo: TStringField;
    Query1CostID: TStringField;
    Query1CLPrice: TCurrencyField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1ZSYWJC: TStringField;
    Label2: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Query1CWBH: TStringField;
    Query1USPrice: TCurrencyField;
    Query1USACC: TCurrencyField;
    Label8: TLabel;
    Edit4: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Query1CKBH: TStringField;
    Label10: TLabel;
    CBX3: TComboBox;
    Matsite: TQuery;
    Query1CNO: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    PC1: TPageControl;
    TabSheet2: TTabSheet;
    DBGridEh1: TDBGridEh;
    Query1CWHL: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1CLPrice_HG: TCurrencyField;
    Query1CLACC_HG: TCurrencyField;
    Query1CLACC: TFloatField;
    TabSheet1: TTabSheet;
    DBGridEh3: TDBGridEh;
    Query2: TQuery;
    DataSource2: TDataSource;
    Query2CKBH: TStringField;
    Query2ZSYWJC: TStringField;
    Query2CFMDate1: TDateTimeField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2Qty: TCurrencyField;
    Query2USPrice: TCurrencyField;
    Query2USACC: TCurrencyField;
    Query2CWHL: TCurrencyField;
    Query2VNPrice: TCurrencyField;
    Query2VNACC: TCurrencyField;
    Query2Memo: TStringField;
    Query2CostID: TStringField;
    Query2HGBH: TStringField;
    Query2UnitC: TStringField;
    Query2RateC: TFloatField;
    Query2LSNO: TStringField;
    Query2JGLX: TIntegerField;
    Query2CLPrice_HG: TIntegerField;
    Query2CLACC_HG: TIntegerField;
    Query2CLPrice: TIntegerField;
    Query2CLACC: TIntegerField;
    Query2CWBH: TIntegerField;
    Query1LLNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
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
  ExtraInCheck: TExtraInCheck;

implementation

uses ExtraInCheck_Print1, main1, ExtraInCheckCBY_Print1,fununit;

{$R *.dfm}
procedure TExtraInCheck.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
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
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CLPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CLACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CLPrice_HG')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CLACC_HG')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query2.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('CLPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('CLACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('CLPrice_HG')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('CLACC_HG')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query1.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;
//

procedure TExtraInCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    action:=cafree;
end;

procedure TExtraInCheck.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
y,m:integer;
begin
  if (CBX1.text='')or (CBX2.text='')  then
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
  if PC1.ActivePageIndex =0 then
  begin
    with query1 do
    begin
      active:=false;
      sql.clear;
      sql.Add('select JGZL.CKBH,JGZL.JGNO,ZSZL.ZSYWJC,JGZL.JGLX,JGZL.CFMDate1,JGZLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBH,JGZLS.Qty, ');
      sql.Add('       JGZLS.USPrice,JGZLS.USACC,JGZLS.CWHL,JGZLS.VNPrice,JGZLS.VNACC,JGZLS.CLPrice,JGZLS.CLACC, JGZLS.Memo, JGZLS.CostID, ');
      sql.Add('       JGZLS.CLPrice_HG,JGZLS.CLACC_HG, CLHG.HGBH, CLHG.UnitC, CLHG.RateC,KCLL.LLNO');
      sql.add('from JGZLS');
      sql.add('left join JGZL on JGZL.JGNO=JGZLS.JGNO');
      sql.add('left join CLZL on CLZL.CLDH=JGZLS.CLBH');
      sql.add('left join CLHG on CLHG.CLBH=JGZLS.CLBH and 1=2');
      sql.add('left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH');
      sql.add('left join KCZLS on KCZLS.CLBH=JGZLS.CLBH and KCZLS.CKBH=JGZL.CKBH');
      sql.add('left join KCCK on KCCK.CKBH=JGZL.CKBH ');
      sql.Add('left join KCLL on KCLL.JGNO=JGZL.JGNO and KCLL.CKBH=JGZL.CKBH and KCLL.CFMID<>''NO'' ');
      sql.add('where JGZLS.ZMLB='+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('      and Convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if CBX3.Text<>'' then
      begin
        sql.Add('and KCCK.CKBH ='+''''+CBX3.text+'''');
      end;
      sql.add('      and JGZLS.CLBH like '+''''+edit1.text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
      sql.add('      and isnull(KCZLS.CWBH,'+''''+''+''''+') like '+''''+edit4.text+'%'+'''');
      sql.add('      and JGZLS.CostID like '+''''+edit7.text+'%'+'''');
      sql.add('      and JGZLS.JGNO like '+''''+edit5.text+'%'+'''');
      sql.add('      and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
      sql.add('      and JGZL.YN='+''''+'5'+'''');
      sql.add('      and KCCK.GSBH='+''''+main.edit2.Text+'''');
      //funcobj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;
  if PC1.ActivePageIndex =1 then
  begin
    with query2 do
    begin
      active:=false;
      sql.clear;
      sql.add('select CBY_LineSideStockS.CKBH,CBY_LineSideStockS.LSNO,ZSZL.ZSYWJC,Null as JGLX,CBY_LineSideStockS.CFMDate1,CBY_LineSideStockS.CLBH,');
      sql.add('       CLZL.YWPM,CLZL.DWBH,null as CWBH, abs(CBY_LineSideStockS.Qty) as Qty, CBY_LineSideStockS.USPrice,CBY_LineSideStockS.USACC,CBY_LineSideStockS.CWHL,');
      sql.add('		    CBY_LineSideStockS.VNPrice,CBY_LineSideStockS.VNACC,null as CLPrice,null as CLACC, CBY_LineSideStockS.Memo2 as Memo, CBY_LineSideStockS.CostID, ');
      sql.add('       null as CLPrice_HG,null as CLACC_HG, CLHG.HGBH, CLHG.UnitC, CLHG.RateC');
      sql.add('from CBY_LineSideStockS');
      sql.add('left join CLZL on CLZL.CLDH=CBY_LineSideStockS.CLBH');
      sql.add('left join CLHG on CLHG.CLBH=CBY_LineSideStockS.CLBH and 1=2');
      sql.add('left join ZSZL on ZSZL.ZSDH=CBY_LineSideStockS.ZSBH');
      sql.add('where CBY_LineSideStockS.ToCLBH='+''''+'ZZZZZZZZZZ'+'''');
      sql.Add('      and Convert(smalldatetime,convert(varchar,CBY_LineSideStockS.CFMDate1,111)) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
      if CBX3.Text<>'' then
      begin
        sql.Add('and CBY_LineSideStockS.CKBH ='+''''+CBX3.text+'''');
      end;
      sql.add('      and CBY_LineSideStockS.CLBH  like '+''''+edit1.text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.text+'%'+'''');
      sql.add('      and CBY_LineSideStockS.CostID like '+''''+edit7.text+'%'+'''');
      sql.add('      and CBY_LineSideStockS.LSNO like '+''''+edit5.text+'%'+'''');
      sql.add('      and ZSZL.ZSYWJC like '+''''+'%'+edit6.Text+'%'+'''');
      sql.add('      and CBY_LineSideStockS.YN='+''''+'5'+'''');
      active:= true;
    end;
  end;
end;

procedure TExtraInCheck.Query1CalcFields(DataSet: TDataSet);
begin
  with query1 do
  begin
    fieldbyname('VNACC').Value:=fieldbyname('Qty').Value *fieldbyname('VNPrice').Value ;
    fieldbyname('CLACC').Value:=trunc(fieldbyname('Qty').Value *fieldbyname('CLPrice').Value+0.5) ;
  end;
end;

procedure TExtraInCheck.Button3Click(Sender: TObject);
var i:integer;
begin
  if PC1.ActivePageIndex =0 then
  begin
    ExtraInCheck_Print:=TExtraInCheck_Print.create(self);
    ExtraInCheck_Print.quickrep1.prepare;
    i:=ExtraInCheck_Print.quickrep1.qrprinter.pagecount;
    ExtraInCheck_Print.page1.caption:=inttostr(i);
    ExtraInCheck_Print.quickrep1.preview;
    ExtraInCheck_Print.free;
  end;
  if PC1.ActivePageIndex =1 then
  begin
    ExtraInCheckCBY_Print:=TExtraInCheckCBY_Print.create(self);
    ExtraInCheckCBY_Print.quickrep1.prepare;
    i:=ExtraInCheckCBY_Print.quickrep1.qrprinter.pagecount;
    ExtraInCheckCBY_Print.page1.caption:=inttostr(i);
    ExtraInCheckCBY_Print.quickrep1.preview;
    ExtraInCheckCBY_Print.free;
  end;
end;

procedure TExtraInCheck.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if PC1.ActivePageIndex =0 then
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
      //eclApp.Visible:=True;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh1.Columns[i].Title.Caption;
      end;
      query1.First;
      j:=2;
      while   not  query1.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells[j,i+2].NumberFormatLocal:='@';
          eclApp.Cells(j,i+2):=DBGridEh1.Fields[i].Value;
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
  if PC1.ActivePageIndex =1 then
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
      //eclApp.Visible:=True;
      for i:=0 to DBGridEh3.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+2):=DBGridEh3.Columns[i].Title.Caption;
      end;
      query2.First;
      j:=2;
      while   not  query2.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh3.Columns.Count-1 do
        begin
          eclApp.Cells[j,i+2].NumberFormatLocal:='@';
          eclApp.Cells(j,i+2):=DBGridEh3.Fields[i].Value;
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

procedure TExtraInCheck.FormDestroy(Sender: TObject);
begin
  ExtraInCheck:=nil;
end;

procedure TExtraInCheck.FormCreate(Sender: TObject);
begin
  //
  if main.Edit2.Text='CDC' then
  begin
    TabSheet1.TabVisible := True;
  end else
  begin
    TabSheet1.TabVisible := false;
  end;
  //
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
