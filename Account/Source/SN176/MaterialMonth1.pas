unit MaterialMonth1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,comobj,
  GridsEh, DBGridEh, EhlibBDE, DateUtils, DBGridEhImpExp, ShellApi,
  ComCtrls, iniFiles;

type
  TMaterialMonth = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Edit3: TEdit;
    Button2: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Button3: TButton;
    DS1: TDataSource;
    Matsite: TQuery;
    Label8: TLabel;
    Edit4: TEdit;
    SaveDialog1: TSaveDialog;
    DS2: TDataSource;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGridEh;
    DBGrid2: TDBGridEh;
    Label16: TLabel;
    CBX6: TComboBox;
    Label7: TLabel;
    CBX4: TComboBox;
    Query1: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1CKBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CWBH: TStringField;
    Query1KCBH: TStringField;
    Query1LastQty: TCurrencyField;
    Query1LastACC: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1RKACC: TCurrencyField;
    Query1JGQty: TCurrencyField;
    Query1JGACC: TCurrencyField;
    Query1TotPrice: TCurrencyField;
    Query1TotQty: TCurrencyField;
    Query1TotACC: TCurrencyField;
    Query1JGCKQty: TCurrencyField;
    Query1JGCKACC: TCurrencyField;
    Query1CKQty: TCurrencyField;
    Query1CKACC: TCurrencyField;
    Query1RemQty: TCurrencyField;
    Query1RemPrice: TCurrencyField;
    Query1RemACC: TCurrencyField;
    Query1HGBH: TStringField;
    Query1UnitC: TStringField;
    Query1RateC: TFloatField;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    CurrencyField1: TCurrencyField;
    Query2LastACC: TCurrencyField;
    CurrencyField2: TCurrencyField;
    Query2RKACC: TCurrencyField;
    CurrencyField3: TCurrencyField;
    Query2JGACC: TCurrencyField;
    CurrencyField4: TCurrencyField;
    Query2TotACC: TCurrencyField;
    Query2TotPrice: TCurrencyField;
    CurrencyField5: TCurrencyField;
    Query2JGCKACC: TCurrencyField;
    CurrencyField6: TCurrencyField;
    Query2CKACC: TCurrencyField;
    CurrencyField7: TCurrencyField;
    Query2RemPrice: TCurrencyField;
    Query2RemACC: TCurrencyField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField9: TFloatField;
    Query2HGLB: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure CBX4Change(Sender: TObject);
    procedure Query2CalcFields(DataSet: TDataSet);
  private
    IsHide_Warehouse_XT:String;
    { Private declarations }
    procedure ExportExcel();
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
  MaterialMonth: TMaterialMonth;

implementation

uses MaterialMonth_Print1, main1,FunUnit;

{$R *.dfm}
procedure TMaterialMonth.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
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
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('LastACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('RKACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('JGACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('TotPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('TotACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('JGCKACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CKACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('RemACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('RemPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query2.FieldByName('LastACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RKACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('JGACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('TotPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('TotACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('JGCKACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('CKACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RemACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RemPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(Query1.FieldByName('LastQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('JGQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('TotQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('JGCKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query1.FieldByName('CKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('LastQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('JGQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('TotQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('JGCKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('CKQty')).DisplayFormat:=WH_DiplayFormat;
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
    CBX6.Items.Add('NK+TC+HD+KD');
    CBX6.Items.Add('NK1+TC1+HD1+KD1');
    CBX6.Items.Add('NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.ItemIndex:=0;
  end;

end;
//
procedure TMaterialMonth.ExportExcel();
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
procedure TMaterialMonth.Button2Click(Sender: TObject);
var
  ExpClass:TDBGridEhExportClass;
  Ext, target:String;
  tdbgh : TDBGridEh;
begin
  if  Messagedlg(Pchar('Direct Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     ExportExcel();
  end else
  begin
    ExpClass:=TDBGridEhExportAsXLS;
    if SaveDialog1.Execute()=true then
     begin
      case SaveDialog1.FilterIndex of
        1: begin ExpClass := TDBGridEhExportAsXLS; Ext := 'xls'; end;
        2: begin ExpClass := TDBGridEhExportAsCSV; Ext := 'csv'; end;
        3: begin ExpClass := TDBGridEhExportAsHTML; Ext := 'htm'; end;
        4: begin ExpClass := TDBGridEhExportAsRTF; Ext := 'rtf'; end;
        5: begin ExpClass := TDBGridEhExportAsText; Ext := 'txt'; end;
      else
        ExpClass := nil; Ext := '';
      end;
      if ExpClass <> nil then
      begin
        if UpperCase(Copy(SaveDialog1.FileName,Length(SaveDialog1.FileName)-2,3)) <> UpperCase(Ext) then
          SaveDialog1.FileName := SaveDialog1.FileName + '.' + Ext;
        if PC1.ActivePageIndex=0 then
           SaveDBGridEhToExportFile(ExpClass,DBGrid1,SaveDialog1.FileName,true);
        if PC1.ActivePageIndex=1 then
           SaveDBGridEhToExportFile(ExpClass,DBGrid2,SaveDialog1.FileName,true);
        if Application.MessageBox('Do you want to open the exported file?','Open file',MB_YESNO) = IDYES then
          shellexecute(handle,'open',pchar(SaveDialog1.FileName),nil,nil,SW_SHOWNORMAL);
      end;
    end;
  end;

end;

procedure TMaterialMonth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialMonth.Button3Click(Sender: TObject);
var i:integer;
begin
  MaterialMonth_Print:=TMaterialMonth_Print.create(self);
  MaterialMonth_Print.quickrep1.prepare;
  i:=MaterialMonth_Print.quickrep1.qrprinter.pagecount;
  MaterialMonth_Print.page1.caption:=inttostr(i);
  MaterialMonth_Print.quickrep1.preview;
  MaterialMonth_Print.free;
end;

procedure TMaterialMonth.Button1Click(Sender: TObject);
var STD,ETD,HGLBSQL:String;
    tmpList:TStringlist;
    i:integer;
begin
  //
  if PC1.ActivePageIndex=0 then
  begin
    STD:=CBX2.Text+'/'+CBX3.Text+'/01';
    ETD:=FormatDatetime('YYYY/MM/DD', EndOfAMonth(strtoint(CBX2.Text),strtoint(CBX3.Text)));
    with query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.CLBH,CWCLZL.LastQty,');
      sql.add('       CWCLZL.LastACC,CWCLZL.RKQty,CWCLZL.RKACC,CWCLZL.JGQty,CWCLZL.JGACC,');
      sql.add('       CWCLZL.TotQty,CWCLZL.TotACC,CWCLZL.TotPrice,CWCLZL.JGCKQty,CWCLZL.CKQty,RemQty');
      sql.add('       ,JGCKACC');
      //sql.add('       ,case when (CWCLCOUNT.VNACC is not null) and (CWCLZL.CKACC=0) then (CWCLZL.JGCKACC+CWCLCOUNT.VNACC) else CWCLZL.JGCKACC  end [JGCKACC] ');
      sql.add(',case when (CWCLCOUNT.VNACC is not null) then (CWCLZL.CKACC+CWCLCOUNT.VNACC) else CWCLZL.CKACC  end [CKACC] ');
      sql.add(',case when (CWCLCOUNT.VNACC is not null) then CWCLZL.RemACC-CWCLCOUNT.VNACC else CWCLZL.RemACC end [RemACC]');
      sql.add(',CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CWBH ');
      //20170627 add hai quan
      sql.Add(',CLHG.HGBH,CLHG.UnitC,CLHG.RateC');
      sql.add('from  CWCLZL');
      sql.add('left join CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH ');
      sql.add('                     and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.CLBH=CWCLZL.CLBH ');
      sql.add('left join CLZL on  CLZL.CLDH= CWCLZL.CLBH');
      sql.add('left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CKBH');
      sql.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
      //20170627 add hai quan
      sql.Add('left join CLHG on CWCLZL.CLBH=CLHG.CLBH and CWCLZL.KCYear>=''2017''');
      sql.add('where CWCLZL.KCYEAR='''+CBX2.Text+'''');
      sql.add('      and CWCLZL.KCMONTH='''+CBX3.Text+'''');
      sql.Add('      and CWCLZL.CLBH like '''+edit1.Text+'%''');
      sql.add('      and CLZL.YWPM like ''%'+edit2.Text+'%''');
      sql.add('      and CLZL.YWPM like ''%'+edit3.Text+'%''');
      if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '''+edit4.Text+'%''');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '''+CBX1.Text+'''');
      end;
      //GSBH
      if CBX4.itemindex<>0 then
      begin
         sql.add(' and KCCK.GSBH='''+CBX4.Text+'''');
      end else
      begin
        sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
      end;
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end else if PC1.ActivePageIndex=1 then
  begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select KCYEAR,KCMONTH,CKBH,HGLB,CLBH,LastQty,LastACC,RKQty,RKACC,JGQty,JGACC,TotQty,TotACC,TotPrice,JGCKQty,CKQty,RemQty, ');
      sql.add('       JGCKACC,CKACC,RemACC,YWPM,DWBH,KCBH,CWBH--,UnitC,RateC');
      sql.Add('      ,case when (HGLB in (''KD'',''KD1'')  and ISNULL(case when Substring(HGBH,1,len(HGBH)-1)=''ZZZZ'' then null else IsNull(Substring(HGBH,1,len(HGBH)-1),OHGBH) end,'''')='''') then NULL else UnitC end as UnitC');
      sql.Add('      ,case when (HGLB in (''KD'',''KD1'')  and ISNULL(case when Substring(HGBH,1,len(HGBH)-1)=''ZZZZ'' then null else IsNull(Substring(HGBH,1,len(HGBH)-1),OHGBH) end,'''')='''') then NULL else RateC end as RateC');
      sql.Add('      ,case when Substring(HGBH,1,len(HGBH)-1)=''ZZZZ'' then null else IsNull(Substring(HGBH,1,len(HGBH)-1),OHGBH) end as HGBH from ( ');
      sql.add('select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.HGLB,CWCLZL.CLBH,CWCLZL.LastQty,');
      sql.add('       CWCLZL.LastACC,CWCLZL.RKQty,CWCLZL.RKACC,CWCLZL.JGQty,CWCLZL.JGACC,');
      sql.add('       CWCLZL.TotQty,CWCLZL.TotACC,CWCLZL.TotPrice,CWCLZL.JGCKQty,CWCLZL.CKQty,RemQty');
      sql.add('       ,JGCKACC');
      //sql.add('       ,case when (CWCLCOUNT.VNACC is not null) and (CWCLZL.CKACC=0) then (CWCLZL.JGCKACC+CWCLCOUNT.VNACC) else CWCLZL.JGCKACC  end [JGCKACC] ');
      sql.add(',case when (CWCLCOUNT.VNACC is not null) then (CWCLZL.CKACC+CWCLCOUNT.VNACC) else CWCLZL.CKACC  end [CKACC] ');
      sql.add(',case when (CWCLCOUNT.VNACC is not null) then CWCLZL.RemACC-CWCLCOUNT.VNACC else CWCLZL.RemACC end [RemACC]');
      sql.add(',CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CWBH ');
      //20170627 add hai quan
      sql.Add(',case when CWCLZL.HGLB =''NK'' then CLHG.HGBH  when CWCLZL.HGLB =''TC'' then CLTC.HGBH when  CWCLZL.HGLB =''HD'' then CLHD.HGBH when  CWCLZL.HGLB =''KD'' then CLKD.HGBH ');
      sql.Add('      when CWCLZL.HGLB =''NK1'' then CLHG1.HGBH  when CWCLZL.HGLB =''TC1'' then CLTC1.HGBH when  CWCLZL.HGLB =''HD1'' then CLHD1.HGBH when  CWCLZL.HGLB =''KD1'' then CLKD1.HGBH ');
      sql.Add('      when  CWCLZL.HGLB =''NQ'' then CLNQ.HGBH when  CWCLZL.HGLB =''NKNQ'' then CLNKNQ.HGBH  else NULL end as OHGBH');
      sql.Add(',case when CWCLZL.HGLB=''NK'' then CLHG.UnitC when CWCLZL.HGLB=''TC'' then CLTC.UnitC when  CWCLZL.HGLB=''HD'' then CLHD.UnitC when CWCLZL.HGLB=''KD'' then CLKD.UnitC');
      sql.Add('      when CWCLZL.HGLB=''NK1'' then CLHG1.UnitC when CWCLZL.HGLB=''TC1'' then CLTC1.UnitC when  CWCLZL.HGLB=''HD1'' then CLHD1.UnitC when CWCLZL.HGLB=''KD1'' then CLKD1.UnitC ');
      sql.Add('      when CWCLZL.HGLB=''NQ'' then CLNQ.UnitC when CWCLZL.HGLB=''NKNQ'' then CLNKNQ.UnitC else NULL end as UnitC');
      sql.Add(',case when CWCLZL.HGLB=''NK'' then CLHG.RateC when CWCLZL.HGLB=''TC'' then CLTC.RateC when  CWCLZL.HGLB=''HD'' then CLHD.RateC when CWCLZL.HGLB=''KD'' then CLKD.RateC');
      sql.Add('      when CWCLZL.HGLB=''NK1'' then CLHG1.RateC when CWCLZL.HGLB=''TC1'' then CLTC1.RateC when  CWCLZL.HGLB=''HD1'' then CLHD1.RateC when CWCLZL.HGLB=''KD1'' then CLKD1.RateC ');
      sql.Add('      when CWCLZL.HGLB=''NQ'' then CLNQ.RateC when CWCLZL.HGLB=''NKNQ'' then CLNKNQ.RateC else NULL end as RateC');
      sql.Add(',Cast((select CNO + '',''from KCCLMONTH_HGBH KCCL where KCCL.KCYEAR=CWCLZL.KCYEAR and KCCL.KCMONTH=CWCLZL.KCMONTH and KCCL.CKBH=CWCLZL.CKBH and KCCL.HGLB=CWCLZL.HGLB and KCCL.CLBH=CWCLZL.CLBH Group by CNO for XML Path (''''))  as varchar(50)) as HGBH ');
      sql.add('from  CWCLZL_HG CWCLZL');
      sql.add('left join CWCLCOUNT_HG CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH ');
      sql.add('                     and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.HGLB=CWCLZL.HGLB and CWCLCOUNT.CLBH=CWCLZL.CLBH ');
      sql.add('left join CLZL on  CLZL.CLDH= CWCLZL.CLBH');
      sql.add('left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CKBH');
      sql.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
      //20170627 add hai quan
      sql.Add('left join CLHG on CWCLZL.CLBH=CLHG.CLBH and CWCLZL.HGLB =''NK'' and CWCLZL.KCYear>=''2017''');
      sql.Add('left join CLTC on CWCLZL.CLBH=CLTC.CLBH and CWCLZL.HGLB =''TC'' and CWCLZL.KCYear>=''2017''');
      sql.Add('left join CLHD on CWCLZL.CLBH=CLHD.CLBH and CWCLZL.HGLB =''HD'' and CWCLZL.KCYear>=''2017''');
      sql.Add('left join CLKD on CWCLZL.CLBH=CLKD.CLBH and CWCLZL.HGLB =''KD'' and CWCLZL.KCYear>=''2022''');
      sql.Add('left join CLHG1 on CWCLZL.CLBH=CLHG1.CLBH and CWCLZL.HGLB =''NK1'' ');
      sql.Add('left join CLTC1 on CWCLZL.CLBH=CLTC1.CLBH and CWCLZL.HGLB =''TC1'' ');
      sql.Add('left join CLHD1 on CWCLZL.CLBH=CLHD1.CLBH and CWCLZL.HGLB =''HD1'' ');
      sql.Add('left join CLKD1 on CWCLZL.CLBH=CLKD1.CLBH and CWCLZL.HGLB =''KD1'' ');
      sql.Add('left join CLNQ on CWCLZL.CLBH=CLNQ.CLBH and CWCLZL.HGLB =''NQ'' ');
      sql.Add('left join CLNKNQ on CWCLZL.CLBH=CLNKNQ.CLBH and CWCLZL.HGLB =''NKNQ'' ');
      sql.add('where CWCLZL.KCYEAR='''+CBX2.Text+'''');
      sql.add('      and CWCLZL.KCMONTH='''+CBX3.Text+'''');
      sql.Add('      and CWCLZL.CLBH like '''+edit1.Text+'%''');
      sql.add('      and CLZL.YWPM like '''+'%'+edit2.Text+'%''');
      sql.add('      and CLZL.YWPM like '''+'%'+edit3.Text+'%''');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
         sql.add('and CWCLZL.HGLB<>''XT'' ');
      if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '''+edit4.Text+'%''');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '''+CBX1.Text+'''');
      end;
      //HGLB
      if CBX6.ItemIndex>0 then
      begin
        if Pos('+',CBX6.Text)<0 then
        begin
          sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
        end else
        begin
          tmpList:=TStringlist.Create;
          tmpList:=FuncObj.SplitString(CBX6.Text,'+');
          for i:=0 to tmpList.Count-1 do
          begin
            HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
          end;
          HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
          sql.add(' and CWCLZL.HGLB in '+HGLBSQL+' ');
          tmpList.Free;
        end;
      end;
      //GSBH
      if CBX4.itemindex<>0 then
      begin
        sql.add(' and KCCK.GSBH='''+CBX4.Text+'''');
      end else
      begin
        sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
      end;
      sql.add(') CWCLZL ');
      sql.add('order by CKBH,HGLB ');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;
  end;

end;

procedure TMaterialMonth.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j,index:integer;
begin
  //
  with MatSite do
  begin
    active:=false;
    sql.Clear;
    sql.add('Select gsdh from bgszl ');
    sql.add('where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''') ');
    Active:=true;
    index:=0;
    CBX4.Items.Clear;
    CBX4.Items.Add('ALL');
    for i:=1 to recordCount do
    begin
      CBX4.Items.Add(fieldbyname('gsdh').AsString);
      if main.Edit2.Text=fieldbyname('gsdh').AsString then index:=i;
      Next;
    end;
    CBX4.ItemIndex:=index;
    Active:=false;
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
    CBX1.Items.Clear;
    CBX1.Items.Add('ALL');
    while not eof do
    begin
      CBX1.Items.Add(fieldbyname('CKBH').AsString);
      Next;
    end;
    CBX1.ItemIndex:=0;
    Active:=false;
  end;
  //
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

procedure TMaterialMonth.Query1CalcFields(DataSet: TDataSet);
begin
    with query1 do
    begin
      if fieldbyname('RemQty').value<>0 then
      begin
        fieldbyname('RemPrice').value:=trunc(fieldbyname('RemACC').value/fieldbyname('RemQty').value+0.5) ;
      end else
      begin
        fieldbyname('RemPrice').value:=0;
      end;
    end;
end;

procedure TMaterialMonth.FormDestroy(Sender: TObject);
begin
  MaterialMonth:=nil;
end;

procedure TMaterialMonth.CBX4Change(Sender: TObject);
begin

  if CBX4.Text<>'ALL' then
  begin
    with MatSite do
    begin
      active:=false;
      sql.Clear;
      sql.add('select CKBH from KCCK ');
      sql.add('where GSBH='+''''+CBX4.Text+'''');
      sql.add('order by CKBH');
      active:=true;
      CBX1.Items.Clear;
      CBX1.Items.Add('ALL');
      while not eof do
      begin
        CBX1.Items.Add(fieldbyname('CKBH').AsString);
        Next;
      end;
      CBX1.ItemIndex:=0;
      Active:=false;
    end;
  end;
  
end;

procedure TMaterialMonth.Query2CalcFields(DataSet: TDataSet);
begin
    with query2 do
    begin
      if fieldbyname('RemQty').value<>0 then
      begin
        fieldbyname('RemPrice').value:=trunc(fieldbyname('RemACC').value/fieldbyname('RemQty').value+0.5) ;
      end else
      begin
        fieldbyname('RemPrice').value:=0;
      end;
    end;
end;

end.
