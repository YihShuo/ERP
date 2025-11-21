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
    Query1: TQuery;
    DS1: TDataSource;
    Matsite: TQuery;
    Query1KCYEAR: TStringField;
    Query1KCMONTH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1KCBH: TStringField;
    Query1LastQty: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1JGQty: TCurrencyField;
    Query1TotQty: TCurrencyField;
    Query1JGCKQty: TCurrencyField;
    Query1CKQty: TCurrencyField;
    Query1CWBH: TStringField;
    Query1RemQty: TCurrencyField;
    Label8: TLabel;
    Edit4: TEdit;
    Query1CKBH: TStringField;
    SaveDialog1: TSaveDialog;
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
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    CurrencyField7: TCurrencyField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField9: TFloatField;
    DS2: TDataSource;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGridEh;
    DBGrid2: TDBGridEh;
    Label16: TLabel;
    CBX6: TComboBox;
    Query2HGLB: TStringField;
    Label7: TLabel;
    CBX4: TComboBox;
    Query1LastACC: TCurrencyField;
    Query1RKACC: TCurrencyField;
    Query1JGACC: TCurrencyField;
    Query1TotACC: TCurrencyField;
    Query1TotPrice: TCurrencyField;
    Query1JGCKACC: TCurrencyField;
    Query1CKACC: TCurrencyField;
    Query1RemACC: TCurrencyField;
    Query2LastACC: TCurrencyField;
    Query2RKACC: TCurrencyField;
    Query2JGACC: TCurrencyField;
    Query2TotACC: TCurrencyField;
    Query2TotPrice: TCurrencyField;
    Query2JGCKACC: TCurrencyField;
    Query2CKACC: TCurrencyField;
    Query2RemACC: TCurrencyField;
    Query2RemPrice: TCurrencyField;
    Query1RemPrice: TCurrencyField;
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
    { Private declarations }
    procedure ExportExcel();
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
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
        SaveDBGridEhToExportFile(ExpClass,DBGrid1,SaveDialog1.FileName,true);
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
      sql.add('where CWCLZL.KCYEAR='+''''+CBX2.Text+'''');
      sql.add('      and CWCLZL.KCMONTH='+''''+CBX3.Text+'''');
      sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
      end;
      //GSBH
      if CBX4.itemindex<>0 then
      begin
         sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
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
      sql.add('       JGCKACC,CKACC,RemACC,YWPM,DWBH,KCBH,CWBH,UnitC,RateC,case when Substring(HGBH,1,len(HGBH)-1)=''ZZZZ'' then null else IsNull(Substring(HGBH,1,len(HGBH)-1),OHGBH) end as HGBH from ( ');
      sql.add('select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.HGLB,CWCLZL.CLBH,CWCLZL.LastQty,');
      sql.add('       CWCLZL.LastACC,CWCLZL.RKQty,CWCLZL.RKACC,CWCLZL.JGQty,CWCLZL.JGACC,');
      sql.add('       CWCLZL.TotQty,CWCLZL.TotACC,CWCLZL.TotPrice,CWCLZL.JGCKQty,CWCLZL.CKQty,RemQty');
      sql.add('       ,JGCKACC');
      //sql.add('       ,case when (CWCLCOUNT.VNACC is not null) and (CWCLZL.CKACC=0) then (CWCLZL.JGCKACC+CWCLCOUNT.VNACC) else CWCLZL.JGCKACC  end [JGCKACC] ');
      sql.add(',case when (CWCLCOUNT.VNACC is not null) then (CWCLZL.CKACC+CWCLCOUNT.VNACC) else CWCLZL.CKACC  end [CKACC] ');
      sql.add(',case when (CWCLCOUNT.VNACC is not null) then CWCLZL.RemACC-CWCLCOUNT.VNACC else CWCLZL.RemACC end [RemACC]');
      sql.add(',CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CWBH ');
      //20170627 add hai quan
      sql.Add(',CLHG.HGBH as OHGBH,CLHG.UnitC,CLHG.RateC');
      sql.Add(',Cast((select CNO + '',''from KCCLMONTH_HGBH KCCL where KCCL.KCYEAR=CWCLZL.KCYEAR and KCCL.KCMONTH=CWCLZL.KCMONTH and KCCL.CKBH=CWCLZL.CKBH and KCCL.HGLB=CWCLZL.HGLB and KCCL.CLBH=CWCLZL.CLBH Group by CNO for XML Path (''''))  as varchar(50)) as HGBH ');
      sql.add('from  CWCLZL_HG CWCLZL');
      sql.add('left join CWCLCOUNT_HG CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH ');
      sql.add('                     and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.HGLB=CWCLZL.HGLB and CWCLCOUNT.CLBH=CWCLZL.CLBH ');
      sql.add('left join CLZL on  CLZL.CLDH= CWCLZL.CLBH');
      sql.add('left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CKBH');
      sql.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
      //20170627 add hai quan
      sql.Add('left join CLHG on CWCLZL.CLBH=CLHG.CLBH and CWCLZL.KCYear>=''2017''');
      sql.add('where CWCLZL.KCYEAR='+''''+CBX2.Text+'''');
      sql.add('      and CWCLZL.KCMONTH='+''''+CBX3.Text+'''');
      sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
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
          sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
          tmpList.Free;
        end;
      end;
      //GSBH
      if CBX4.itemindex<>0 then
      begin
        sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
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
var i,index:integer;
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
