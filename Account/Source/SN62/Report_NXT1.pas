unit Report_NXT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,iniFiles,comobj,
  Buttons;

type
  TReport_NXT = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    CBX1: TComboBox;
    Edit3: TEdit;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit4: TEdit;
    CBX6: TComboBox;
    CBX4: TComboBox;
    Button4: TButton;
    PC1: TPageControl;
    Matsite: TQuery;
    SaveDialog1: TSaveDialog;
    Query2: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    CurrencyField1: TCurrencyField;
    Query2LastACC: TCurrencyField;
    CurrencyField2: TCurrencyField;
    Query2RKACC: TCurrencyField;
    Query2TotPrice: TCurrencyField;
    CurrencyField6: TCurrencyField;
    Query2CKACC: TCurrencyField;
    CurrencyField7: TCurrencyField;
    Query2RemACC: TCurrencyField;
    StringField9: TStringField;
    Query2HGLB: TStringField;
    DS2: TDataSource;
    DBGrid2: TDBGridEh;
    Query2MaGop: TStringField;
    Button2: TButton;
    Label10: TLabel;
    NotInCKBHEdit: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBX4Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BDT6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    Account_N62_CheckFactory:String;
    AppDir:string;
    { Private declarations }
    procedure readini();
    procedure ExportDefaultExcel(Query:TQuery);
    procedure ExportFormatExcel(Query:TQuery);
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }

  end;

var
  Report_NXT: TReport_NXT;

implementation

uses main1,FunUnit, Report_NXT_Print1;

{$R *.dfm}
procedure TReport_NXT.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  Account_N62_CheckFactory:='N';
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
      Account_N62_CheckFactory:=MyIni.ReadString('ERP','Account_N62_CheckFactory','N');
    finally
      MyIni.Free;
    end;
  end;

  //
  {TCurrencyField(Query2.FieldByName('LastACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RKACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('TotPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('CKACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RemACC')).DisplayFormat:=VNPrice_DiplayFormat;  }
  //

  TCurrencyField(Query2.FieldByName('LastQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('CKQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('RemQty')).DisplayFormat:=WH_DiplayFormat;
  //隱藏XT
  if IsHide_Warehouse_XT='Y' then
  begin
    CBX6.Items.Clear;
    CBX6.Items.Add('');
    CBX6.Items.Add('NK');
    CBX6.Items.Add('TC');
    CBX6.Items.Add('HD');
    CBX6.Items.Add('KD');
    CBX6.Items.Add('NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.Items.Add('NK1');
    CBX6.Items.Add('TC1');
    CBX6.Items.Add('HD1');
    CBX6.Items.Add('KD1');
    CBX6.Items.Add('NQ');
    CBX6.Items.Add('NKNQ');
    CBX6.ItemIndex:=5;
  end;
end;
procedure TReport_NXT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReport_NXT.FormDestroy(Sender: TObject);
begin
  Report_NXT:=nil;
end;

procedure TReport_NXT.FormCreate(Sender: TObject);
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
  CBX2.ItemIndex:=CBX2.Items.IndexOf(formatdatetime('yyyy',now));
  CBX3.ItemIndex:=CBX3.Items.IndexOf(formatdatetime('mm',now));
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  readini();
end;

procedure TReport_NXT.CBX4Change(Sender: TObject);
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

procedure TReport_NXT.Button1Click(Sender: TObject);
var STD,ETD,HGLBSQL:String;
    tmpList:TStringlist;
    i:integer;
begin
    with query2 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select KCYEAR,KCMONTH,CKBH,CLBH+HGLB as MaGop,HGLB,CLBH,LastQty,LastACC,RKQty,RKACC,JGQty,JGACC,TotQty,TotACC,TotPrice,JGCKQty,CKQty,RemQty, ');
      sql.add('       JGCKACC,CKACC,RemACC,YWPM,DWBH,KCBH,CWBH ');
      sql.Add('      ,case when (HGLB in (''KD'',''KD1'')  and ISNULL(case when Substring(HGBH,1,len(HGBH)-1)=''ZZZZ'' then null else IsNull(Substring(HGBH,1,len(HGBH)-1),OHGBH) end,'''')='''') then NULL else UnitC end as UnitC');
      sql.Add('      ,case when (HGLB in (''KD'',''KD1'')  and ISNULL(case when Substring(HGBH,1,len(HGBH)-1)=''ZZZZ'' then null else IsNull(Substring(HGBH,1,len(HGBH)-1),OHGBH) end,'''')='''') then NULL else RateC end as RateC');
      sql.Add('      ,case when Substring(HGBH,1,len(HGBH)-1)=''ZZZZ'' then null else IsNull(Substring(HGBH,1,len(HGBH)-1),OHGBH) end as HGBH from ( ');
      //sql.Add('       UnitC,RateC,case when Substring(HGBH,1,len(HGBH)-1)=''ZZZZ'' then null else IsNull(Substring(HGBH,1,len(HGBH)-1),OHGBH) end as HGBH from ( ');
      sql.add('select CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CKBH,CWCLZL.HGLB,CWCLZL.CLBH,CWCLZL.LastQty,');
      sql.add('       CWCLZL.LastACC,CWCLZL.RKQty,CWCLZL.RKACC,CWCLZL.JGQty,CWCLZL.JGACC,');
      sql.add('       CWCLZL.TotQty,CWCLZL.TotACC,CWCLZL.TotPrice,CWCLZL.JGCKQty,CWCLZL.CKQty,RemQty');
      sql.add('       ,JGCKACC');
      //sql.add('       ,case when (CWCLCOUNT.VNACC is not null) and (CWCLZL.CKACC=0) then (CWCLZL.JGCKACC+CWCLCOUNT.VNACC) else CWCLZL.JGCKACC  end [JGCKACC] ');
      sql.add(',case when (CWCLCOUNT.VNACC is not null) then (CWCLZL.CKACC+CWCLCOUNT.VNACC) else CWCLZL.CKACC  end [CKACC] ');
      sql.add(',case when (CWCLCOUNT.VNACC is not null) then CWCLZL.RemACC-CWCLCOUNT.VNACC else CWCLZL.RemACC end [RemACC]');
      sql.add(',CLZL.YWPM,CLZL.DWBH,KCZLS.KCBH,KCZLS.CWBH ');
      //20170627 add hai quan
      sql.Add(',case when CWCLZL.HGLB=''NK'' then CLHG.HGBH  when CWCLZL.HGLB=''TC'' then CLTC.HGBH when  CWCLZL.HGLB=''HD'' then CLHD.HGBH when CWCLZL.HGLB=''KD'' then CLKD.HGBH ');
      sql.Add('      when CWCLZL.HGLB=''NK1'' then CLHG1.HGBH  when CWCLZL.HGLB=''TC1'' then CLTC1.HGBH when  CWCLZL.HGLB=''HD1'' then CLHD1.HGBH when CWCLZL.HGLB=''KD1'' then CLKD1.HGBH ');
      sql.Add('      when CWCLZL.HGLB=''NQ'' then CLNQ.HGBH  when CWCLZL.HGLB=''NKNQ'' then CLNKNQ.HGBH else NULL end as OHGBH');
      sql.Add(',case when CWCLZL.HGLB=''NK'' then CLHG.UnitC when CWCLZL.HGLB=''TC'' then CLTC.UnitC when  CWCLZL.HGLB=''HD'' then CLHD.UnitC when  CWCLZL.HGLB=''KD'' then CLKD.UnitC ');
      sql.Add('      when CWCLZL.HGLB=''NK1'' then CLHG1.UnitC when CWCLZL.HGLB=''TC1'' then CLTC1.UnitC when  CWCLZL.HGLB=''HD1'' then CLHD1.UnitC when  CWCLZL.HGLB=''KD1'' then CLKD1.UnitC ');
      sql.Add('      when CWCLZL.HGLB=''NQ'' then CLNQ.UnitC when CWCLZL.HGLB=''NKNQ'' then CLNKNQ.UnitC else NULL end as UnitC');
      sql.Add(',case when CWCLZL.HGLB=''NK'' then CLHG.RateC when CWCLZL.HGLB=''TC'' then CLTC.RateC when  CWCLZL.HGLB=''HD'' then CLHD.RateC when  CWCLZL.HGLB=''KD'' then CLKD.RateC ');
      sql.Add('      when CWCLZL.HGLB=''NK1'' then CLHG1.RateC when CWCLZL.HGLB=''TC1'' then CLTC1.RateC when  CWCLZL.HGLB=''HD1'' then CLHD1.RateC when  CWCLZL.HGLB=''KD1'' then CLKD1.RateC ');
      sql.Add('      when CWCLZL.HGLB=''NQ'' then CLNQ.RateC when CWCLZL.HGLB=''NKNQ'' then CLNKNQ.RateC else NULL end as RateC');
      sql.Add(',Cast((select CNO + '',''from KCCLMONTH_HGBH KCCL where KCCL.KCYEAR=CWCLZL.KCYEAR and KCCL.KCMONTH=CWCLZL.KCMONTH and KCCL.CKBH=CWCLZL.CKBH and KCCL.HGLB=CWCLZL.HGLB and KCCL.CLBH=CWCLZL.CLBH Group by CNO for XML Path (''''))  as varchar(50)) as HGBH ');
      sql.add('from  CWCLZL_HG CWCLZL');
      sql.add('left join CWCLCOUNT_HG CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH ');
      sql.add('                     and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.HGLB=CWCLZL.HGLB and CWCLCOUNT.CLBH=CWCLZL.CLBH ');
      sql.add('left join CLZL on  CLZL.CLDH= CWCLZL.CLBH');
      sql.add('left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CKBH');
      sql.add('left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
      //20170627 add hai quan
      sql.Add('left join CLHG on CWCLZL.CLBH=CLHG.CLBH and CWCLZL.HGLB=''NK'' and CWCLZL.KCYear>=''2017''');
      sql.Add('left join CLTC on CWCLZL.CLBH=CLTC.CLBH and CWCLZL.HGLB=''TC'' and CWCLZL.KCYear>=''2017''');
      sql.Add('left join CLHD on CWCLZL.CLBH=CLHD.CLBH and CWCLZL.HGLB=''HD'' and CWCLZL.KCYear>=''2017''');
      sql.Add('left join CLKD on CWCLZL.CLBH=CLKD.CLBH and CWCLZL.HGLB =''KD'' and CWCLZL.KCYear>=''2022''');
      sql.Add('left join CLHG1 on CWCLZL.CLBH=CLHG1.CLBH and CWCLZL.HGLB =''NK1'' ');
      sql.Add('left join CLTC1 on CWCLZL.CLBH=CLTC1.CLBH and CWCLZL.HGLB =''TC1'' ');
      sql.Add('left join CLHD1 on CWCLZL.CLBH=CLHD1.CLBH and CWCLZL.HGLB =''HD1'' ');
      sql.Add('left join CLKD1 on CWCLZL.CLBH=CLKD1.CLBH and CWCLZL.HGLB =''KD1'' ');
      sql.Add('left join CLNQ on CWCLZL.CLBH=CLNQ.CLBH and CWCLZL.HGLB =''NQ'' ');
      sql.Add('left join CLNKNQ on CWCLZL.CLBH=CLNKNQ.CLBH and CWCLZL.HGLB =''NKNQ'' ');
      sql.add('where CWCLZL.KCYEAR='+''''+CBX2.Text+'''');
      sql.add('      and CWCLZL.KCMONTH='+''''+CBX3.Text+'''');
      sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
      sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
      if IsHide_Warehouse_XT='Y' then  //隱藏XT
         sql.add('and CWCLZL.HGLB <>''XT'' ');
      if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
      if CBX1.itemindex<>0 then
      begin
         sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
      end;
      if NotInCKBHEdit.Text<>'' then
      begin
        sql.add('          and CWCLZL.CKBH<>'''+NotInCKBHEdit.Text+'''');
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

procedure TReport_NXT.Button4Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query2);
  end else
  begin
    ExportDefaultExcel(Query2);
  end;
end;

procedure TReport_NXT.ExportDefaultExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query2.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query2.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query2.fields[i].FieldName;
          end;

        Query2.First;
        j:=2;
        while   not   Query2.Eof   do
          begin
            for   i:=0   to  Query2.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query2.Fields[i].Value;
            end;
          Query2.Next;
          inc(j);
          end;
       eclapp.columns.autofit;
       showmessage('Succeed');
       eclApp.Visible:=True;
    except
        on   F:Exception   do
          showmessage(F.Message);
    end;
  end;
end;

procedure TReport_NXT.ExportFormatExcel(Query:TQuery);
var eclApp,WorkBook:olevariant;
    i,j,k: integer;
begin
    if edit4.Text='' then
    begin
      showmessage('Pls key in CWBH');
      abort;
    end;
    if cbx6.Text<>'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ' then
    begin
      showmessage('Pls select KHO NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
      abort;
    end;
    button1.Click;
    if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN62_20240117.xlsx'),Pchar(AppDir+'Additional\Account_SN62_20240117.xlsx'),false);
     if FileExists(AppDir+'Additional\Account_SN62_20240117.xlsx') then
     begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          eclApp.DisplayAlerts := False;
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN62_20240117.xlsx');
          eclApp.WorkSheets[1].Activate;
          eclApp.Cells(4,2):=CBX3.Text;
          eclApp.Cells(4,4):=CBX2.Text;
          //eclApp.Range[eclApp.Cells[4,1],eclApp.Cells[4,4]].merge;
          eclApp.Cells(5,3):=edit4.Text;
          with Matsite do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select Factory from bgszl where gsdh='''+cbx4.Text+'''');
            active:=true;
          end;
          if ((Account_N62_CheckFactory<>'') and (Account_N62_CheckFactory='Y')) then
          begin
            eclApp.Range[eclApp.Cells[5,5],eclApp.Cells[5,5]].font.size:= 12;
            eclApp.Cells(5,5):='KHU: '+Matsite.FieldByName('Factory').AsString;
          end;
          Query2.First;
          j:=9;
          for i:=1 to Query2.RecordCount do
          begin
            eclApp.ActiveSheet.Rows[j].Insert(-4121);
            eclApp.ActiveSheet.Rows[j].Font.Name:='Times New Roman';
            eclApp.ActiveSheet.Rows[j].Font.Size := 7;
            eclApp.ActiveSheet.Rows[j].RowHeight:=26;
            eclApp.Cells(j,1):=inttostr(i);
            eclApp.Cells(j,2):=Query2.FieldByName('CKBH').Value;
            eclApp.Cells(j,3):=Query2.FieldByName('CLBH').Value + Query2.FieldByName('HGLB').Value;
            eclApp.Cells(j,4):=Query2.FieldByName('HGLB').Value;
            eclApp.Cells(j,5):=Query2.FieldByName('HGBH').Value;
            eclApp.Cells(j,6):=Query2.FieldByName('CLBH').Value;
            eclApp.Cells(j,7):=Query2.FieldByName('YWPM').Value;
            eclApp.Cells(j,8):=Query2.FieldByName('DWBH').Value;
            eclApp.Cells(j,9):=Query2.FieldByName('CWBH').Value;
            eclApp.Cells(j,10):=Query2.FieldByName('TotPrice').Value;
            eclApp.Cells(j,11):=Query2.FieldByName('LastQty').Value;
            eclApp.Cells(j,12):=Query2.FieldByName('LastACC').Value;
            eclApp.Cells(j,13):=Query2.FieldByName('RKQty').Value;
            eclApp.Cells(j,14):=Query2.FieldByName('RKACC').Value;
            eclApp.Cells(j,15):=Query2.FieldByName('CKQty').Value;
            eclApp.Cells(j,16):=Query2.FieldByName('CKACC').Value;
            eclApp.Cells(j,17):=Query2.FieldByName('RemQty').Value;
            eclApp.Cells(j,18):=Query2.FieldByName('RemACC').Value;
            Query2.Next;
            inc(j);
          end;
          eclApp.Cells[i+8,11].Formula:='=SUM(K9:K'+inttostr(i+7)+')';
          eclApp.Cells[i+8,12].Formula:='=SUM(L9:L'+inttostr(i+7)+')';
          eclApp.Cells[i+8,13].Formula:='=SUM(M9:M'+inttostr(i+7)+')';
          eclApp.Cells[i+8,14].Formula:='=SUM(N9:N'+inttostr(i+7)+')';
          eclApp.Cells[i+8,15].Formula:='=SUM(O9:O'+inttostr(i+7)+')';
          eclApp.Cells[i+8,16].Formula:='=SUM(P9:P'+inttostr(i+7)+')';
          eclApp.Cells[i+8,17].Formula:='=SUM(Q9:Q'+inttostr(i+7)+')';
          eclApp.Cells[i+8,18].Formula:='=SUM(R9:R'+inttostr(i+7)+')';
          eclApp.Range[eclApp.Cells[i+8,11],eclApp.Cells[i+8,18]].font.Bold:=true;
          eclApp.Range[eclApp.Cells[i+8,11],eclApp.Cells[i+8,18]].font.Name:='Times New Roman';
          eclApp.Range[eclApp.Cells[i+8,11],eclApp.Cells[i+8,18]].font.size:= 10;

          // SUM NK,TC,HD,KD
          with Matsite do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select CWCLZL.KCYEAR,CWCLZL.KCMONTH, CWCLZL.CWBH, ');
            sql.Add('       sum(isnull(LastQty_TC,0)) as LastQty_TC, sum(isnull(LastQty_NK,0)) as LastQty_NK, sum(isnull(LastQty_HD,0)) as LastQty_HD, sum(isnull(LastQty_KD,0)) as LastQty_KD,');
            sql.Add('		    sum(isnull(LastACC_TC,0)) as LastACC_TC, sum(isnull(LastACC_NK,0)) as LastACC_NK, sum(isnull(LastACC_HD,0)) as LastACC_HD, sum(isnull(LastACC_KD,0)) as LastACC_KD,');
            sql.Add('   		sum(isnull(RKQty_TC,0)) as RKQty_TC, sum(isnull(RKQty_NK,0)) as RKQty_NK, sum(isnull(RKQty_HD,0)) as RKQty_HD, sum(isnull(RKQty_KD,0)) as RKQty_KD,');
            sql.Add('   		sum(isnull(RKACC_TC,0)) as RKACC_TC, sum(isnull(RKACC_NK,0)) as RKACC_NK, sum(isnull(RKACC_HD,0)) as RKACC_HD, sum(isnull(RKACC_KD,0)) as RKACC_KD,');
            sql.Add('   		sum(isnull(CKQty_TC,0)) as CKQty_TC, sum(isnull(CKQty_NK,0)) as CKQty_NK, sum(isnull(CKQty_HD,0)) as CKQty_HD, sum(isnull(CKQty_KD,0)) as CKQty_KD,');
            sql.Add('   		sum(isnull(CKACC_TC,0)) + sum(isnull(VNACC_TC,0)) as CKACC_TC, sum(isnull(CKACC_NK,0)) + sum(isnull(VNACC_NK,0)) as CKACC_NK,');
            sql.Add('       sum(isnull(CKACC_HD,0)) + sum(isnull(VNACC_HD,0))as CKACC_HD, sum(isnull(CKACC_KD,0)) + sum(isnull(VNACC_KD,0)) as CKACC_KD,');
            sql.Add('   		sum(isnull(RemQty_TC,0)) as RemQty_TC, sum(isnull(RemQty_NK,0)) as RemQty_NK, sum(isnull(RemQty_HD,0)) as RemQty_HD, sum(isnull(RemQty_KD,0)) as RemQty_KD, ');
            sql.Add('   		sum(isnull(RemACC_TC,0)) - sum(isnull(VNACC_TC,0)) as RemACC_TC, sum(isnull(RemACC_NK,0)) - sum(isnull(VNACC_NK,0)) as RemACC_NK,');
            sql.Add('       sum(isnull(RemACC_HD,0)) - sum(isnull(VNACC_HD,0)) as RemACC_HD, sum(isnull(RemACC_KD,0))- sum(isnull(VNACC_KD,0))  as RemACC_KD,');
            //
            sql.Add('       sum(isnull(LastQty_TC1,0)) as LastQty_TC1, sum(isnull(LastQty_NK1,0)) as LastQty_NK1, sum(isnull(LastQty_HD1,0)) as LastQty_HD1, sum(isnull(LastQty_KD1,0)) as LastQty_KD1,');
            sql.Add('		    sum(isnull(LastACC_TC1,0)) as LastACC_TC1, sum(isnull(LastACC_NK1,0)) as LastACC_NK1, sum(isnull(LastACC_HD1,0)) as LastACC_HD1, sum(isnull(LastACC_KD1,0)) as LastACC_KD1,');
            sql.Add('   		sum(isnull(RKQty_TC1,0)) as RKQty_TC1, sum(isnull(RKQty_NK1,0)) as RKQty_NK1, sum(isnull(RKQty_HD1,0)) as RKQty_HD1, sum(isnull(RKQty_KD1,0)) as RKQty_KD1,');
            sql.Add('   		sum(isnull(RKACC_TC1,0)) as RKACC_TC1, sum(isnull(RKACC_NK1,0)) as RKACC_NK1, sum(isnull(RKACC_HD1,0)) as RKACC_HD1, sum(isnull(RKACC_KD1,0)) as RKACC_KD1,');
            sql.Add('   		sum(isnull(CKQty_TC1,0)) as CKQty_TC1, sum(isnull(CKQty_NK1,0)) as CKQty_NK1, sum(isnull(CKQty_HD1,0)) as CKQty_HD1, sum(isnull(CKQty_KD1,0)) as CKQty_KD1,');
            sql.Add('   		sum(isnull(CKACC_TC1,0)) + sum(isnull(VNACC_TC1,0)) as CKACC_TC1, sum(isnull(CKACC_NK1,0)) + sum(isnull(VNACC_NK1,0)) as CKACC_NK1,');
            sql.Add('       sum(isnull(CKACC_HD1,0)) + sum(isnull(VNACC_HD1,0))as CKACC_HD1, sum(isnull(CKACC_KD1,0)) + sum(isnull(VNACC_KD1,0)) as CKACC_KD1,');
            sql.Add('   		sum(isnull(RemQty_TC1,0)) as RemQty_TC1, sum(isnull(RemQty_NK1,0)) as RemQty_NK1, sum(isnull(RemQty_HD1,0)) as RemQty_HD1, sum(isnull(RemQty_KD1,0)) as RemQty_KD1, ');
            sql.Add('   		sum(isnull(RemACC_TC1,0)) - sum(isnull(VNACC_TC1,0)) as RemACC_TC1, sum(isnull(RemACC_NK1,0)) - sum(isnull(VNACC_NK1,0)) as RemACC_NK1,');
            sql.Add('       sum(isnull(RemACC_HD1,0)) - sum(isnull(VNACC_HD1,0)) as RemACC_HD1, sum(isnull(RemACC_KD1,0))- sum(isnull(VNACC_KD1,0))  as RemACC_KD1,');
            //
            sql.Add('       sum(isnull(LastQty_NQ,0)) as LastQty_NQ,sum(isnull(LastACC_NQ,0)) as LastACC_NQ,sum(isnull(RKQty_NQ,0)) as RKQty_NQ,sum(isnull(RKACC_NQ,0)) as RKACC_NQ,');
            sql.Add('       sum(isnull(CKQty_NQ,0)) as CKQty_NQ, sum(isnull(CKACC_NQ,0)) + sum(isnull(VNACC_NQ,0)) as CKACC_NQ, sum(isnull(RemQty_NQ,0)) as RemQty_NQ, ');
            sql.Add('       sum(isnull(RemACC_NQ,0)) - sum(isnull(VNACC_NQ,0)) as RemACC_NQ,');
            //
            sql.Add('       sum(isnull(LastQty_NKNQ,0)) as LastQty_NKNQ,sum(isnull(LastACC_NKNQ,0)) as LastACC_NKNQ,sum(isnull(RKQty_NKNQ,0)) as RKQty_NKNQ,sum(isnull(RKACC_NKNQ,0)) as RKACC_NKNQ,');
            sql.Add('       sum(isnull(CKQty_NKNQ,0)) as CKQty_NKNQ, sum(isnull(CKACC_NKNQ,0)) + sum(isnull(VNACC_NKNQ,0)) as CKACC_NKNQ, sum(isnull(RemQty_NKNQ,0)) as RemQty_NKNQ, ');
            sql.Add('       sum(isnull(RemACC_NKNQ,0)) - sum(isnull(VNACC_NKNQ,0)) as RemACC_NKNQ');
            //
            sql.Add('from ( select CWCLZL.KCYEAR,CWCLZL.KCMONTH,KCZLS.CWBH,');
            sql.Add(' 		         case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_TC, ');
            sql.Add('     		     case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_NK, ');
            sql.Add('           	 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_HD, ');
            sql.Add('           	 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_KD, ');
            sql.Add('          		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_TC, ');
            sql.Add('		           case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_NK, ');
            sql.Add('            	 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_HD, ');
            sql.Add('              case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_KD, ');
            sql.Add('              case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_TC,     ');
            sql.Add('           	 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_NK,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_HD,     ');
            sql.Add('           	 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_KD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_TC,     ');
            sql.Add('           	 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_NK,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_HD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_KD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_TC,     ');
            sql.Add('          		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_NK,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_HD,     ');
            sql.Add('              case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_KD,     ');
            sql.Add('		           case when CWCLZL.HGLB=''TC'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_TC,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_NK,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_HD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_KD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_TC,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_NK,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_HD,   ');
            sql.Add('            	 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_KD,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_TC,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_NK,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_HD,   ');
            sql.Add('		           case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_KD,   ');
            sql.Add('           	 case when CWCLCOUNT.HGLB=''TC'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_TC,');
            sql.Add('         		 case when CWCLCOUNT.HGLB=''NK'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_NK,');
            sql.Add('		           case when CWCLCOUNT.HGLB=''HD'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_HD,');
            sql.Add('           	 case when CWCLCOUNT.HGLB=''KD'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_KD, ');
            //
            sql.Add(' 		         case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_TC1, ');
            sql.Add('     		     case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_NK1, ');
            sql.Add('           	 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_HD1, ');
            sql.Add('           	 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_KD1, ');
            sql.Add('          		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_TC1, ');
            sql.Add('		           case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_NK1, ');
            sql.Add('            	 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_HD1, ');
            sql.Add('              case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_KD1, ');
            sql.Add('              case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_TC1,     ');
            sql.Add('           	 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_NK1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_HD1,     ');
            sql.Add('           	 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_KD1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_TC1,     ');
            sql.Add('           	 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_NK1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_HD1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_KD1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_TC1,     ');
            sql.Add('          		 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_NK1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_HD1,     ');
            sql.Add('              case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_KD1,     ');
            sql.Add('		           case when CWCLZL.HGLB=''TC1'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_TC1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_NK1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_HD1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_KD1,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_TC1,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_NK1,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_HD1,   ');
            sql.Add('            	 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_KD1,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_TC1,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_NK1,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_HD1,   ');
            sql.Add('		           case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_KD1,   ');
            sql.Add('           	 case when CWCLCOUNT.HGLB=''TC1'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_TC1,');
            sql.Add('         		 case when CWCLCOUNT.HGLB=''NK1'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_NK1,');
            sql.Add('		           case when CWCLCOUNT.HGLB=''HD1'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_HD1,');
            sql.Add('           	 case when CWCLCOUNT.HGLB=''KD1'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_KD1, ');
            //
            sql.Add(' 		         case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_NQ, ');
            sql.Add('          		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_NQ, ');
            sql.Add('              case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_NQ,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_NQ,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_NQ,     ');
            sql.Add('		           case when CWCLZL.HGLB=''NQ'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_NQ,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_NQ,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_NQ,   ');
            sql.Add('           	 case when CWCLCOUNT.HGLB=''NQ'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_NQ,');
            //
            sql.Add(' 		         case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_NKNQ, ');
            sql.Add('          		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_NKNQ, ');
            sql.Add('              case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_NKNQ,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_NKNQ,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_NKNQ,     ');
            sql.Add('		           case when CWCLZL.HGLB=''NKNQ'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_NKNQ,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_NKNQ,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_NKNQ,   ');
            sql.Add('           	 case when CWCLCOUNT.HGLB=''NKNQ'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_NKNQ');
            //
            sql.Add('       from  CWCLZL_HG CWCLZL');
            sql.Add('       left join CWCLCOUNT_HG CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH ');
            sql.Add('       and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.HGLB=CWCLZL.HGLB and CWCLCOUNT.CLBH=CWCLZL.CLBH');
            sql.Add('       left join CLZL on  CLZL.CLDH= CWCLZL.CLBH');
            sql.Add('       left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CKBH ');
            sql.Add('       left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
            sql.add('where CWCLZL.KCYEAR='+''''+CBX2.Text+'''');
            sql.add('      and CWCLZL.KCMONTH='+''''+CBX3.Text+'''');
            sql.Add('   	 and KCZLS.CWBH ='''+edit4.Text+'''');
            sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
            sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
            sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
            sql.Add('      and left(CWCLZL.HGLB,2) in (''NK'',''TC'',''HD'',''KD'',''NQ'')');
            if CBX4.itemindex<>0 then
            begin
              sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
            end else
            begin
              sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
            end;
            if CBX1.itemindex<>0 then
            begin
               sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
            end;
            sql.Add('      group by CWCLZL.KCYEAR,CWCLZL.KCMONTH,KCZLS.CWBH,CWCLZL.HGLB,KCZLS.CWBH,CWCLCOUNT.HGLB) CWCLZL ');
            sql.Add('group by CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CWBH');
            //funcobj.WriteErrorLog(sql.Text);
            active:=true;
          end;
          eclApp.Cells(i+11,11):=  Matsite.FieldByName('LastQty_TC').Value;
          eclApp.Cells(i+12,11):=  Matsite.FieldByName('LastQty_NK').Value;
          eclApp.Cells(i+13,11):=  Matsite.FieldByName('LastQty_HD').Value;
          eclApp.Cells(i+14,11):=  Matsite.FieldByName('LastQty_KD').Value;
          eclApp.Cells(i+11,12):=  Matsite.FieldByName('LastACC_TC').Value;
          eclApp.Cells(i+12,12):=  Matsite.FieldByName('LastACC_NK').Value;
          eclApp.Cells(i+13,12):=  Matsite.FieldByName('LastACC_HD').Value;
          eclApp.Cells(i+14,12):=  Matsite.FieldByName('LastACC_KD').Value;
          eclApp.Cells(i+11,13):=  Matsite.FieldByName('RKQty_TC').Value;
          eclApp.Cells(i+12,13):=  Matsite.FieldByName('RKQty_NK').Value;
          eclApp.Cells(i+13,13):=  Matsite.FieldByName('RKQty_HD').Value;
          eclApp.Cells(i+14,13):=  Matsite.FieldByName('RKQty_KD').Value;
          eclApp.Cells(i+11,14):=  Matsite.FieldByName('RKACC_TC').Value;
          eclApp.Cells(i+12,14):=  Matsite.FieldByName('RKACC_NK').Value;
          eclApp.Cells(i+13,14):=  Matsite.FieldByName('RKACC_HD').Value;
          eclApp.Cells(i+14,14):=  Matsite.FieldByName('RKACC_KD').Value;
          eclApp.Cells(i+11,15):=  Matsite.FieldByName('CKQty_TC').Value;
          eclApp.Cells(i+12,15):=  Matsite.FieldByName('CKQty_NK').Value;
          eclApp.Cells(i+13,15):=  Matsite.FieldByName('CKQty_HD').Value;
          eclApp.Cells(i+14,15):=  Matsite.FieldByName('CKQty_KD').Value;
          eclApp.Cells(i+11,16):=  Matsite.FieldByName('CKACC_TC').Value;
          eclApp.Cells(i+12,16):=  Matsite.FieldByName('CKACC_NK').Value;
          eclApp.Cells(i+13,16):=  Matsite.FieldByName('CKACC_HD').Value;
          eclApp.Cells(i+14,16):=  Matsite.FieldByName('CKACC_KD').Value;
          eclApp.Cells(i+11,17):=  Matsite.FieldByName('RemQty_TC').Value;
          eclApp.Cells(i+12,17):=  Matsite.FieldByName('RemQty_NK').Value;
          eclApp.Cells(i+13,17):=  Matsite.FieldByName('RemQty_HD').Value;
          eclApp.Cells(i+14,17):=  Matsite.FieldByName('RemQty_KD').Value;
          eclApp.Cells(i+11,18):=  Matsite.FieldByName('RemACC_TC').Value;
          eclApp.Cells(i+12,18):=  Matsite.FieldByName('RemACC_NK').Value;
          eclApp.Cells(i+13,18):=  Matsite.FieldByName('RemACC_HD').Value;
          eclApp.Cells(i+14,18):=  Matsite.FieldByName('RemACC_KD').Value;
          //
          eclApp.Cells(i+15,11):=  Matsite.FieldByName('LastQty_TC1').Value;
          eclApp.Cells(i+16,11):=  Matsite.FieldByName('LastQty_NK1').Value;
          eclApp.Cells(i+17,11):=  Matsite.FieldByName('LastQty_HD1').Value;
          eclApp.Cells(i+18,11):=  Matsite.FieldByName('LastQty_KD1').Value;
          eclApp.Cells(i+15,12):=  Matsite.FieldByName('LastACC_TC1').Value;
          eclApp.Cells(i+16,12):=  Matsite.FieldByName('LastACC_NK1').Value;
          eclApp.Cells(i+17,12):=  Matsite.FieldByName('LastACC_HD1').Value;
          eclApp.Cells(i+18,12):=  Matsite.FieldByName('LastACC_KD1').Value;
          eclApp.Cells(i+15,13):=  Matsite.FieldByName('RKQty_TC1').Value;
          eclApp.Cells(i+16,13):=  Matsite.FieldByName('RKQty_NK1').Value;
          eclApp.Cells(i+17,13):=  Matsite.FieldByName('RKQty_HD1').Value;
          eclApp.Cells(i+18,13):=  Matsite.FieldByName('RKQty_KD1').Value;
          eclApp.Cells(i+15,14):=  Matsite.FieldByName('RKACC_TC1').Value;
          eclApp.Cells(i+16,14):=  Matsite.FieldByName('RKACC_NK1').Value;
          eclApp.Cells(i+17,14):=  Matsite.FieldByName('RKACC_HD1').Value;
          eclApp.Cells(i+18,14):=  Matsite.FieldByName('RKACC_KD1').Value;
          eclApp.Cells(i+15,15):=  Matsite.FieldByName('CKQty_TC1').Value;
          eclApp.Cells(i+16,15):=  Matsite.FieldByName('CKQty_NK1').Value;
          eclApp.Cells(i+17,15):=  Matsite.FieldByName('CKQty_HD1').Value;
          eclApp.Cells(i+18,15):=  Matsite.FieldByName('CKQty_KD1').Value;
          eclApp.Cells(i+15,16):=  Matsite.FieldByName('CKACC_TC1').Value;
          eclApp.Cells(i+16,16):=  Matsite.FieldByName('CKACC_NK1').Value;
          eclApp.Cells(i+17,16):=  Matsite.FieldByName('CKACC_HD1').Value;
          eclApp.Cells(i+18,16):=  Matsite.FieldByName('CKACC_KD1').Value;
          eclApp.Cells(i+15,17):=  Matsite.FieldByName('RemQty_TC1').Value;
          eclApp.Cells(i+16,17):=  Matsite.FieldByName('RemQty_NK1').Value;
          eclApp.Cells(i+17,17):=  Matsite.FieldByName('RemQty_HD1').Value;
          eclApp.Cells(i+18,17):=  Matsite.FieldByName('RemQty_KD1').Value;
          eclApp.Cells(i+15,18):=  Matsite.FieldByName('RemACC_TC1').Value;
          eclApp.Cells(i+16,18):=  Matsite.FieldByName('RemACC_NK1').Value;
          eclApp.Cells(i+17,18):=  Matsite.FieldByName('RemACC_HD1').Value;
          eclApp.Cells(i+18,18):=  Matsite.FieldByName('RemACC_KD1').Value;
          eclApp.Cells(i+19,11):=  Matsite.FieldByName('LastQty_NQ').Value;
          eclApp.Cells(i+19,12):=  Matsite.FieldByName('LastACC_NQ').Value;
          eclApp.Cells(i+19,13):=  Matsite.FieldByName('RKQty_NQ').Value;
          eclApp.Cells(i+19,14):=  Matsite.FieldByName('RKACC_NQ').Value;
          eclApp.Cells(i+19,15):=  Matsite.FieldByName('CKQty_NQ').Value;
          eclApp.Cells(i+19,16):=  Matsite.FieldByName('CKACC_NQ').Value;
          eclApp.Cells(i+19,17):=  Matsite.FieldByName('RemQty_NQ').Value;
          eclApp.Cells(i+19,18):=  Matsite.FieldByName('RemACC_NQ').Value;
          eclApp.Cells(i+20,13):=  Matsite.FieldByName('RKQty_NKNQ').Value;
          eclApp.Cells(i+20,14):=  Matsite.FieldByName('RKACC_NKNQ').Value;
          eclApp.Cells(i+20,15):=  Matsite.FieldByName('CKQty_NKNQ').Value;
          eclApp.Cells(i+20,16):=  Matsite.FieldByName('CKACC_NKNQ').Value;
          eclApp.Cells(i+20,17):=  Matsite.FieldByName('RemQty_NKNQ').Value;
          eclApp.Cells(i+20,18):=  Matsite.FieldByName('RemACC_NKNQ').Value;
          //
          eclApp.Range[eclApp.Cells[i+11,11],eclApp.Cells[i+20,18]].font.Bold:=true;
          eclApp.Range[eclApp.Cells[i+11,11],eclApp.Cells[i+20,18]].font.Name:='Times New Roman';
          eclApp.Range[eclApp.Cells[i+11,11],eclApp.Cells[i+20,18]].font.size:= 10;
          //eclapp.columns.autofit;
          showmessage('Succeed.');
          eclApp.Visible:=True;
        except
          on   F:Exception   do
          showmessage(F.Message);
        end;
     end;

end;

procedure TReport_NXT.BDT6Click(Sender: TObject);
begin
  //if Query2.RecordCount = 0 then exit;
  if Query2.Active=false then
  begin
    showmessage('Pls data search');
    abort;
  end;
  if edit4.Text='' then
  begin
    showmessage('Pls key in CWBH');
    abort;
  end;
  if cbx6.Text<>'NK+TC+HD+KD' then
  begin
    showmessage('Pls select KHO NK+TC+HD+KD');
    abort;
  end;

  NXT_Print_S:=TNXT_Print_S.Create(nil);
          with NXT_Print_S.Query1 do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select CWCLZL.KCYEAR,CWCLZL.KCMONTH, CWCLZL.CWBH, ');
            sql.Add('       sum(isnull(LastQty_TC,0)) as LastQty_TC, sum(isnull(LastQty_NK,0)) as LastQty_NK, sum(isnull(LastQty_HD,0)) as LastQty_HD, sum(isnull(LastQty_KD,0)) as LastQty_KD,');
            sql.Add('		    sum(isnull(LastACC_TC,0)) as LastACC_TC, sum(isnull(LastACC_NK,0)) as LastACC_NK, sum(isnull(LastACC_HD,0)) as LastACC_HD, sum(isnull(LastACC_KD,0)) as LastACC_KD,');
            sql.Add('   		sum(isnull(RKQty_TC,0)) as RKQty_TC, sum(isnull(RKQty_NK,0)) as RKQty_NK, sum(isnull(RKQty_HD,0)) as RKQty_HD, sum(isnull(RKQty_KD,0)) as RKQty_KD,');
            sql.Add('   		sum(isnull(RKACC_TC,0)) as RKACC_TC, sum(isnull(RKACC_NK,0)) as RKACC_NK, sum(isnull(RKACC_HD,0)) as RKACC_HD, sum(isnull(RKACC_KD,0)) as RKACC_KD,');
            sql.Add('   		sum(isnull(CKQty_TC,0)) as CKQty_TC, sum(isnull(CKQty_NK,0)) as CKQty_NK, sum(isnull(CKQty_HD,0)) as CKQty_HD, sum(isnull(CKQty_KD,0)) as CKQty_KD,');
            sql.Add('   		sum(isnull(CKACC_TC,0)) + sum(isnull(VNACC_TC,0)) as CKACC_TC, sum(isnull(CKACC_NK,0)) + sum(isnull(VNACC_NK,0)) as CKACC_NK,');
            sql.Add('       sum(isnull(CKACC_HD,0)) + sum(isnull(VNACC_HD,0))as CKACC_HD, sum(isnull(CKACC_KD,0)) + sum(isnull(VNACC_KD,0)) as CKACC_KD,');
            sql.Add('   		sum(isnull(RemQty_TC,0)) as RemQty_TC, sum(isnull(RemQty_NK,0)) as RemQty_NK, sum(isnull(RemQty_HD,0)) as RemQty_HD, sum(isnull(RemQty_KD,0)) as RemQty_KD, ');
            sql.Add('   		sum(isnull(RemACC_TC,0)) - sum(isnull(VNACC_TC,0)) as RemACC_TC, sum(isnull(RemACC_NK,0)) - sum(isnull(VNACC_NK,0)) as RemACC_NK,');
            sql.Add('       sum(isnull(RemACC_HD,0)) - sum(isnull(VNACC_HD,0)) as RemACC_HD, sum(isnull(RemACC_KD,0))- sum(isnull(VNACC_KD,0))  as RemACC_KD');
            sql.Add('from ( select CWCLZL.KCYEAR,CWCLZL.KCMONTH,KCZLS.CWBH,');
            sql.Add(' 		         case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_TC, ');
            sql.Add('     		     case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_NK, ');
            sql.Add('           	 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_HD, ');
            sql.Add('           	 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_KD, ');
            sql.Add('          		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_TC, ');
            sql.Add('		           case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_NK, ');
            sql.Add('            	 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_HD, ');
            sql.Add('              case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_KD, ');
            sql.Add('              case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_TC,     ');
            sql.Add('           	 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_NK,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_HD,     ');
            sql.Add('           	 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_KD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_TC,     ');
            sql.Add('           	 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_NK,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_HD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_KD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_TC,     ');
            sql.Add('          		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_NK,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_HD,     ');
            sql.Add('              case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_KD,     ');
            sql.Add('		           case when CWCLZL.HGLB=''TC'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_TC,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_NK,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_HD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_KD,     ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_TC,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_NK,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_HD,   ');
            sql.Add('            	 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_KD,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_TC,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_NK,   ');
            sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_HD,   ');
            sql.Add('		           case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_KD,   ');
            sql.Add('           	 case when CWCLCOUNT.HGLB=''TC'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_TC,');
            sql.Add('         		 case when CWCLCOUNT.HGLB=''NK'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_NK,');
            sql.Add('		           case when CWCLCOUNT.HGLB=''HD'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_HD,');
            sql.Add('           	 case when CWCLCOUNT.HGLB=''KD'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_KD ');
            sql.Add('       from  CWCLZL_HG CWCLZL');
            sql.Add('       left join CWCLCOUNT_HG CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH ');
            sql.Add('       and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.HGLB=CWCLZL.HGLB and CWCLCOUNT.CLBH=CWCLZL.CLBH');
            sql.Add('       left join CLZL on  CLZL.CLDH= CWCLZL.CLBH');
            sql.Add('       left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CKBH ');
            sql.Add('       left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
            sql.add('where CWCLZL.KCYEAR='+''''+CBX2.Text+'''');
            sql.add('      and CWCLZL.KCMONTH='+''''+CBX3.Text+'''');
            sql.Add('   	 and KCZLS.CWBH ='''+edit4.Text+'''');
            sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
            sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
            sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
            sql.Add('      and CWCLZL.HGLB in (''NK'',''TC'',''HD'',''KD'')');
            if CBX4.itemindex<>0 then
            begin
              sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
            end else
            begin
              sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
            end;
            if CBX1.itemindex<>0 then
            begin
               sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
            end;
            sql.Add('      group by CWCLZL.KCYEAR,CWCLZL.KCMONTH,KCZLS.CWBH,CWCLZL.HGLB,KCZLS.CWBH,CWCLCOUNT.HGLB) CWCLZL ');
            sql.Add('group by CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CWBH');
            //memo1.Lines:=sql;
            active:=true;
          end;
  NXT_Print_S.quickrep1.prepare;
  NXT_Print_S.quickrep1.preview;
  NXT_Print_S.Free;            
  //
end;

procedure TReport_NXT.Button2Click(Sender: TObject);
begin
  if Query2.Active=false then
  begin
    showmessage('Pls data search');
    abort;
  end;
  if edit4.Text='' then
  begin
    showmessage('Pls key in CWBH');
    abort;
  end;
  if cbx6.Text<>'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ' then
  begin
    showmessage('Pls select KHO NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
    abort;
  end;
  NXT_Print_S:=TNXT_Print_S.Create(nil);
  with NXT_Print_S.Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CWCLZL.KCYEAR,CWCLZL.KCMONTH, CWCLZL.CWBH, ');
    sql.Add('       sum(isnull(LastQty_TC,0)) as LastQty_TC, sum(isnull(LastQty_NK,0)) as LastQty_NK, sum(isnull(LastQty_HD,0)) as LastQty_HD, sum(isnull(LastQty_KD,0)) as LastQty_KD,');
    sql.Add('		    sum(isnull(LastACC_TC,0)) as LastACC_TC, sum(isnull(LastACC_NK,0)) as LastACC_NK, sum(isnull(LastACC_HD,0)) as LastACC_HD, sum(isnull(LastACC_KD,0)) as LastACC_KD,');
    sql.Add('   		sum(isnull(RKQty_TC,0)) as RKQty_TC, sum(isnull(RKQty_NK,0)) as RKQty_NK, sum(isnull(RKQty_HD,0)) as RKQty_HD, sum(isnull(RKQty_KD,0)) as RKQty_KD,');
    sql.Add('   		sum(isnull(RKACC_TC,0)) as RKACC_TC, sum(isnull(RKACC_NK,0)) as RKACC_NK, sum(isnull(RKACC_HD,0)) as RKACC_HD, sum(isnull(RKACC_KD,0)) as RKACC_KD,');
    sql.Add('   		sum(isnull(CKQty_TC,0)) as CKQty_TC, sum(isnull(CKQty_NK,0)) as CKQty_NK, sum(isnull(CKQty_HD,0)) as CKQty_HD, sum(isnull(CKQty_KD,0)) as CKQty_KD,');
    sql.Add('   		sum(isnull(CKACC_TC,0)) + sum(isnull(VNACC_TC,0)) as CKACC_TC, sum(isnull(CKACC_NK,0)) + sum(isnull(VNACC_NK,0)) as CKACC_NK,');
    sql.Add('       sum(isnull(CKACC_HD,0)) + sum(isnull(VNACC_HD,0))as CKACC_HD, sum(isnull(CKACC_KD,0)) + sum(isnull(VNACC_KD,0)) as CKACC_KD,');
    sql.Add('   		sum(isnull(RemQty_TC,0)) as RemQty_TC, sum(isnull(RemQty_NK,0)) as RemQty_NK, sum(isnull(RemQty_HD,0)) as RemQty_HD, sum(isnull(RemQty_KD,0)) as RemQty_KD, ');
    sql.Add('   		sum(isnull(RemACC_TC,0)) - sum(isnull(VNACC_TC,0)) as RemACC_TC, sum(isnull(RemACC_NK,0)) - sum(isnull(VNACC_NK,0)) as RemACC_NK,');
    sql.Add('       sum(isnull(RemACC_HD,0)) - sum(isnull(VNACC_HD,0)) as RemACC_HD, sum(isnull(RemACC_KD,0))- sum(isnull(VNACC_KD,0))  as RemACC_KD,');
    //
    sql.Add('       sum(isnull(LastQty_TC1,0)) as LastQty_TC1, sum(isnull(LastQty_NK1,0)) as LastQty_NK1, sum(isnull(LastQty_HD1,0)) as LastQty_HD1, sum(isnull(LastQty_KD1,0)) as LastQty_KD1,');
    sql.Add('		    sum(isnull(LastACC_TC1,0)) as LastACC_TC1, sum(isnull(LastACC_NK1,0)) as LastACC_NK1, sum(isnull(LastACC_HD1,0)) as LastACC_HD1, sum(isnull(LastACC_KD1,0)) as LastACC_KD1,');
    sql.Add('   		sum(isnull(RKQty_TC1,0)) as RKQty_TC1, sum(isnull(RKQty_NK1,0)) as RKQty_NK1, sum(isnull(RKQty_HD1,0)) as RKQty_HD1, sum(isnull(RKQty_KD1,0)) as RKQty_KD1,');
    sql.Add('   		sum(isnull(RKACC_TC1,0)) as RKACC_TC1, sum(isnull(RKACC_NK1,0)) as RKACC_NK1, sum(isnull(RKACC_HD1,0)) as RKACC_HD1, sum(isnull(RKACC_KD1,0)) as RKACC_KD1,');
    sql.Add('   		sum(isnull(CKQty_TC1,0)) as CKQty_TC1, sum(isnull(CKQty_NK1,0)) as CKQty_NK1, sum(isnull(CKQty_HD1,0)) as CKQty_HD1, sum(isnull(CKQty_KD1,0)) as CKQty_KD1,');
    sql.Add('   		sum(isnull(CKACC_TC1,0)) + sum(isnull(VNACC_TC1,0)) as CKACC_TC1, sum(isnull(CKACC_NK1,0)) + sum(isnull(VNACC_NK1,0)) as CKACC_NK1,');
    sql.Add('       sum(isnull(CKACC_HD1,0)) + sum(isnull(VNACC_HD1,0))as CKACC_HD1, sum(isnull(CKACC_KD1,0)) + sum(isnull(VNACC_KD1,0)) as CKACC_KD1,');
    sql.Add('   		sum(isnull(RemQty_TC1,0)) as RemQty_TC1, sum(isnull(RemQty_NK1,0)) as RemQty_NK1, sum(isnull(RemQty_HD1,0)) as RemQty_HD1, sum(isnull(RemQty_KD1,0)) as RemQty_KD1, ');
    sql.Add('   		sum(isnull(RemACC_TC1,0)) - sum(isnull(VNACC_TC1,0)) as RemACC_TC1, sum(isnull(RemACC_NK1,0)) - sum(isnull(VNACC_NK1,0)) as RemACC_NK1,');
    sql.Add('       sum(isnull(RemACC_HD1,0)) - sum(isnull(VNACC_HD1,0)) as RemACC_HD1, sum(isnull(RemACC_KD1,0))- sum(isnull(VNACC_KD1,0))  as RemACC_KD1,');
    //
    sql.Add('       sum(isnull(LastQty_NQ,0)) as LastQty_NQ,sum(isnull(LastACC_NQ,0)) as LastACC_NQ,sum(isnull(RKQty_NQ,0)) as RKQty_NQ,sum(isnull(RKACC_NQ,0)) as RKACC_NQ,');
    sql.Add('       sum(isnull(CKQty_NQ,0)) as CKQty_NQ, sum(isnull(CKACC_NQ,0)) + sum(isnull(VNACC_NQ,0)) as CKACC_NQ, sum(isnull(RemQty_NQ,0)) as RemQty_NQ, ');
    sql.Add('       sum(isnull(RemACC_NQ,0)) - sum(isnull(VNACC_NQ,0)) as RemACC_NQ,');
    //
    sql.Add('       sum(isnull(LastQty_NKNQ,0)) as LastQty_NKNQ,sum(isnull(LastACC_NKNQ,0)) as LastACC_NKNQ,sum(isnull(RKQty_NKNQ,0)) as RKQty_NKNQ,sum(isnull(RKACC_NKNQ,0)) as RKACC_NKNQ,');
    sql.Add('       sum(isnull(CKQty_NKNQ,0)) as CKQty_NKNQ, sum(isnull(CKACC_NKNQ,0)) + sum(isnull(VNACC_NKNQ,0)) as CKACC_NKNQ, sum(isnull(RemQty_NKNQ,0)) as RemQty_NKNQ, ');
    sql.Add('       sum(isnull(RemACC_NKNQ,0)) - sum(isnull(VNACC_NKNQ,0)) as RemACC_NKNQ');
    //
    sql.Add('from ( select CWCLZL.KCYEAR,CWCLZL.KCMONTH,KCZLS.CWBH,');
    sql.Add(' 		         case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_TC, ');
    sql.Add('     		     case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_NK, ');
    sql.Add('           	 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_HD, ');
    sql.Add('           	 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_KD, ');
    sql.Add('          		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_TC, ');
    sql.Add('		           case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_NK, ');
    sql.Add('            	 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_HD, ');
    sql.Add('              case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_KD, ');
    sql.Add('              case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_TC,     ');
    sql.Add('           	 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_NK,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_HD,     ');
    sql.Add('           	 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_KD,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_TC,     ');
    sql.Add('           	 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_NK,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_HD,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_KD,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_TC,     ');
    sql.Add('          		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_NK,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_HD,     ');
    sql.Add('              case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_KD,     ');
    sql.Add('		           case when CWCLZL.HGLB=''TC'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_TC,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_NK,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_HD,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_KD,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_TC,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_NK,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_HD,   ');
    sql.Add('            	 case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_KD,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''TC'' then	sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_TC,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''NK'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_NK,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_HD,   ');
    sql.Add('		           case when CWCLZL.HGLB=''KD'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_KD,   ');
    sql.Add('           	 case when CWCLCOUNT.HGLB=''TC'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_TC,');
    sql.Add('         		 case when CWCLCOUNT.HGLB=''NK'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_NK,');
    sql.Add('		           case when CWCLCOUNT.HGLB=''HD'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_HD,');
    sql.Add('           	 case when CWCLCOUNT.HGLB=''KD'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_KD, ');
    //
    sql.Add(' 		         case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_TC1, ');
    sql.Add('     		     case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_NK1, ');
    sql.Add('           	 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_HD1, ');
    sql.Add('           	 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_KD1, ');
    sql.Add('          		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_TC1, ');
    sql.Add('		           case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_NK1, ');
    sql.Add('            	 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_HD1, ');
    sql.Add('              case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_KD1, ');
    sql.Add('              case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_TC1,     ');
    sql.Add('           	 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_NK1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_HD1,     ');
    sql.Add('           	 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_KD1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_TC1,     ');
    sql.Add('           	 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_NK1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_HD1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_KD1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_TC1,     ');
    sql.Add('          		 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_NK1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_HD1,     ');
    sql.Add('              case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_KD1,     ');
    sql.Add('		           case when CWCLZL.HGLB=''TC1'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_TC1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_NK1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_HD1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_KD1,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_TC1,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_NK1,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_HD1,   ');
    sql.Add('            	 case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_KD1,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''TC1'' then	sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_TC1,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''NK1'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_NK1,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''HD1'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_HD1,   ');
    sql.Add('		           case when CWCLZL.HGLB=''KD1'' then  sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_KD1,   ');
    sql.Add('           	 case when CWCLCOUNT.HGLB=''TC1'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_TC1,');
    sql.Add('         		 case when CWCLCOUNT.HGLB=''NK1'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_NK1,');
    sql.Add('		           case when CWCLCOUNT.HGLB=''HD1'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_HD1,');
    sql.Add('           	 case when CWCLCOUNT.HGLB=''KD1'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_KD1, ');
    //
    sql.Add(' 		         case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_NQ, ');
    sql.Add('          		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_NQ, ');
    sql.Add('              case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_NQ,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_NQ,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_NQ,     ');
    sql.Add('		           case when CWCLZL.HGLB=''NQ'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_NQ,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_NQ,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''NQ'' then	sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_NQ,   ');
    sql.Add('           	 case when CWCLCOUNT.HGLB=''NQ'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_NQ,');
    //
    sql.Add(' 		         case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.LastQty,0)) end  as LastQty_NKNQ, ');
    sql.Add('          		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.LastACC,0)) end  as LastACC_NKNQ, ');
    sql.Add('              case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.RKQty,0)) end  as RKQty_NKNQ,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.RKACC,0)) end  as RKACC_NKNQ,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.CKQty,0)) end  as CKQty_NKNQ,     ');
    sql.Add('		           case when CWCLZL.HGLB=''NKNQ'' then  sum(isnull(CWCLZL.CKACC,0)) end  as CKACC_NKNQ,     ');
    sql.Add('         		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.RemQty,0)) end  as RemQty_NKNQ,   ');
    sql.Add('         		 case when CWCLZL.HGLB=''NKNQ'' then	sum(isnull(CWCLZL.RemACC,0)) end  as RemACC_NKNQ,   ');
    sql.Add('           	 case when CWCLCOUNT.HGLB=''NKNQ'' then  sum(isnull(CWCLCOUNT.VNACC,0)) end  as VNACC_NKNQ');
    //
    sql.Add('       from  CWCLZL_HG CWCLZL');
    sql.Add('       left join CWCLCOUNT_HG CWCLCOUNT on CWCLCOUNT.KCYEAR=CWCLZL.KCYEAR and CWCLCOUNT.KCMONTH=CWCLZL.KCMONTH ');
    sql.Add('       and CWCLCOUNT.CKBH=CWCLZL.CKBH and CWCLCOUNT.HGLB=CWCLZL.HGLB and CWCLCOUNT.CLBH=CWCLZL.CLBH');
    sql.Add('       left join CLZL on  CLZL.CLDH= CWCLZL.CLBH');
    sql.Add('       left join KCZLS on KCZLS.CLBH=CLZL.CLDH and KCZLS.CKBH=CWCLZL.CKBH ');
    sql.Add('       left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    sql.add('where CWCLZL.KCYEAR='+''''+CBX2.Text+'''');
    sql.add('      and CWCLZL.KCMONTH='+''''+CBX3.Text+'''');
    sql.Add('   	 and KCZLS.CWBH ='''+edit4.Text+'''');
    sql.Add('      and CWCLZL.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.Add('      and left(CWCLZL.HGLB,2) in (''NK'',''TC'',''HD'',''KD'',''NQ'')');
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if NotInCKBHEdit.Text<>'' then
    begin
      sql.add('          and CWCLZL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    end;

    sql.Add('      group by CWCLZL.KCYEAR,CWCLZL.KCMONTH,KCZLS.CWBH,CWCLZL.HGLB,KCZLS.CWBH,CWCLCOUNT.HGLB) CWCLZL ');
    sql.Add('group by CWCLZL.KCYEAR,CWCLZL.KCMONTH,CWCLZL.CWBH');
    //memo1.Lines:=sql;
    active:=true;
  end;
  NXT_Print_S.quickrep1.prepare;
  NXT_Print_S.quickrep1.preview;
  NXT_Print_S.Free;
end;

end.
