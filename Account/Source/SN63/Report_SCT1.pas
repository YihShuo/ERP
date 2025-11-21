unit Report_SCT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, comobj,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,iniFiles,dateutils,
  Buttons;

type
  TReport_SCT = class(TForm)
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
    DBGrid2: TDBGridEh;
    Matsite: TQuery;
    SaveDialog1: TSaveDialog;
    Query2: TQuery;
    DS2: TDataSource;
    Query2GSBH: TStringField;
    Query2CKBH: TStringField;
    Query2HGLB: TStringField;
    Query2CNO: TStringField;
    Query2CLBH: TStringField;
    Query2YWPM: TStringField;
    Query2DWBH: TStringField;
    Query2CFMDATE: TDateTimeField;
    Query2ZSYWJC: TStringField;
    Query2Declaretion: TStringField;
    Query2SCBH: TStringField;
    Query2CWBH: TStringField;
    Query2CostID: TStringField;
    Query2Qty: TCurrencyField;
    Query2USPrice: TFloatField;
    Query2USACC: TFloatField;
    Query2VNPrice: TCurrencyField;
    Query2VNACC: TCurrencyField;
    Query2Qty_X: TCurrencyField;
    Query2VNPrice_X: TCurrencyField;
    Query2VNACC_X: TCurrencyField;
    Query2SOCHUNGTU: TStringField;
    Query1: TQuery;
    Query1QTY: TCurrencyField;
    Query1USACC: TFloatField;
    Query1VNACC: TCurrencyField;
    Query1Qty_X: TCurrencyField;
    Query1VNACC_X: TCurrencyField;
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
    //≠‹Æwµ≤∫‚¶Ïº∆
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  Report_SCT: TReport_SCT;

implementation

uses main1,FunUnit, Report_SCT_Print1;

{$R *.dfm}
function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;
procedure TReport_SCT.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  Account_N62_CheckFactory:='N';
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  //≠‹Æw§p¶Ïº∆
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //≠‹Æw§p¶Ïº∆
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //¡Ù¬√XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
      Account_N62_CheckFactory:=MyIni.ReadString('ERP','Account_N62_CheckFactory','N');
    finally
      MyIni.Free;
    end;
  end;

  //
  TCurrencyField(Query2.FieldByName('USPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query2.FieldByName('USACC')).DisplayFormat:=VNPrice_DiplayFormat;
  //TCurrencyField(Query2.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  //TCurrencyField(Query2.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  //TCurrencyField(Query2.FieldByName('VNPrice_X')).DisplayFormat:=VNPrice_DiplayFormat;
  //TCurrencyField(Query2.FieldByName('VNACC_X')).DisplayFormat:=VNPrice_DiplayFormat;
  //

  TCurrencyField(Query2.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(Query2.FieldByName('Qty_X')).DisplayFormat:=WH_DiplayFormat;
  //¡Ù¬√XT
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

procedure TReport_SCT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TReport_SCT.FormDestroy(Sender: TObject);
begin
  Report_SCT:=nil;
end;

procedure TReport_SCT.FormCreate(Sender: TObject);
var i,index:integer;
begin
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

procedure TReport_SCT.CBX4Change(Sender: TObject);
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

procedure TReport_SCT.Button1Click(Sender: TObject);
var STD,ETD,HGLBSQL,HGLBSQL_X:String;
    tmpList:TStringlist;
    i:integer;
    sdate,edate:Tdate;
begin
  SDate:=EncodeDate(strtoint(CBX2.Text), strtoint(CBX3.Text), 1);
  EDate:=EncodeDate(strtoint(CBX2.Text), strtoint(CBX3.Text), 1);
  EDate:=EncodeDate(strtoint(CBX2.Text), strtoint(CBX3.Text), DaysOfItsMonth(EDate));
  with Query2 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select kcrk.GSBH,kcrk.CKBH,KCRK.HGLB,KCRKs.CNO,KCRKS.CLBH,CLZL.YWPM,CLZL.DWBH,KCRK.RKNO as SOCHUNGTU,KCRK.CFMDATE,ZSZL.ZSYWJC,');
    sql.Add('case when left(KCRK.HGLB,2) in (''NK'',''TC'',''KD'',''NQ'') then KCPK.Declaretion  when left(KCRK.HGLB,2)=''HD'' then KCRK.DOCNO end as Declaretion,'' '' as SCBH,KCZLS.CWBH,KCRKS.CostID,');
    sql.Add('		    KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC+isnull(KCRKS.ExchACC,0) as VNACC,'' '' as Qty_X,'' '' as VNPrice_X, '' '' as VNACC_X');
    sql.Add('from (select * from KCRKS union all select * from KCRKS_2014) KCRKS ');
    sql.Add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.Add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    sql.Add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.Add('left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH');
    sql.Add('left join KCCK on KCCK.CKBH=KCRK.CKBH');
    sql.Add('left join KCPK on KCPK.PKNO=KCRK.RKNO');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
         sql.add('and KCRK.HGLB <>''XT'' ');
    if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and KCRK.CKBH= '+''''+CBX1.Text+'''');
    end;
    if NotInCKBHEdit.Text<>'' then
    begin
      sql.add(' and KCRK.CKBH<>'''+NotInCKBHEdit.Text+'''');
    end;
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    sql.add('AND KCRK.YN=''5''');
    sql.Add('      and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and KCRK.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    sql.Add('union all');
    sql.Add('select KCLL.GSBH,KCLL.CKBH,KCLLS.HGLB,KCLLS.CNO,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCLLS.LLNO as SOCHUNGTU,KCLL.CFMDate,'' '' as ZSYWJC,'' '' as Declaretion,KCLLS.SCBH,KCZLS.CWBH,KCLLS.CostID,');
    sql.Add('	      '' '' as Qty,'' '' as USPRice, '' '' as USACC,'' '' as VNPrice, '' '' as VNACC, isnull(KCLLS.Qty,0)  as Qty_X, isnull(KCLLS.VNPrice_HG,0)  as VNPrice_X, KCLLS.VNACC_HG as VNACC_X');
    sql.Add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS');
    sql.Add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.Add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
    sql.Add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.Add('      and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.Add('      and KCLL.YN=''5''');
    if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
         sql.add('and KCLLS.HGLB <>''XT'' ');
    if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and KCLL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if NotInCKBHEdit.Text<>'' then
    begin
      sql.add(' and KCLL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    end;
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and KCLLS.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL_X:=HGLBSQL_X+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL_X:='('+Copy(HGLBSQL_X,1,length(HGLBSQL_X)-1)+')';
        sql.add('and KCLLS.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    sql.Add('order by 1,2,5,3,12');
    //memo1.Lines:=sql;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure TReport_SCT.Button4Click(Sender: TObject);
begin
  if  Messagedlg(Pchar('Format Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
    ExportFormatExcel(Query2);
  end else
  begin
    ExportDefaultExcel(Query2);
  end;
end;

procedure TReport_SCT.ExportDefaultExcel(Query:TQuery);
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
              eclApp.activesheet.Columns[11].NumberFormatLocal := '@';
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

procedure TReport_SCT.ExportFormatExcel(Query:TQuery);
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
  //button1.Click;
  if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
     CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Account_SN63.xlsx'),Pchar(AppDir+'Additional\Account_SN63.xlsx'),false);
     if FileExists(AppDir+'Additional\Account_SN63.xlsx') then
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
          eclApp.WorkBooks.Open(AppDir+'Additional\Account_SN63.xlsx');
          eclApp.WorkSheets[1].Activate;
          eclApp.Cells(4,5):=CBX4.Text;
          eclApp.Cells(5,5):=edit4.Text;
          eclApp.Cells(6,5):=CBX3.Text+'-'+CBX2.Text;
          with Matsite do
          begin
            active:=false;
            sql.Clear;
            sql.Add('select Factory from bgszl where gsdh='''+cbx4.Text+'''');
            active:=true;
          end;
          if ((Account_N62_CheckFactory<>'') and (Account_N62_CheckFactory='Y')) then
          begin
            eclApp.Range[eclApp.Cells[4,6],eclApp.Cells[4,6]].font.size:= 9;
            eclApp.Cells(4,6):='KHU: '+Matsite.FieldByName('Factory').AsString;
          end;

          Query2.First;
          j:=9;
          for i:=1 to Query2.RecordCount do
          begin
            eclApp.ActiveSheet.Rows[j].Insert(-4121);
            eclApp.ActiveSheet.Rows[j].Font.Name:='Times New Roman';
            eclApp.ActiveSheet.Rows[j].Font.Size := 7;
            eclApp.ActiveSheet.Rows[j].RowHeight:=26;
            //eclApp.Cells(j,1):=inttostr(i);
            eclApp.Cells(j,1):=Query2.FieldByName('CKBH').Value;
            eclApp.Cells(j,2):=Query2.FieldByName('HGLB').Value;
            eclApp.Cells(j,3):=Query2.FieldByName('CNO').Value;
            eclApp.Cells(j,4):=Query2.FieldByName('CLBH').Value;
            eclApp.Cells(j,5):=Query2.FieldByName('YWPM').Value;
            eclApp.Cells(j,6):=Query2.FieldByName('DWBH').Value;
            eclApp.Cells(j,7):=Query2.FieldByName('SOCHUNGTU').Value;
            eclApp.Cells(j,8):=Query2.FieldByName('CFMDate').Value;
            eclApp.Cells(j,9):=Query2.FieldByName('ZSYWJC').Value;
            eclApp.Cells(j,10):=Query2.FieldByName('Declaretion').Value;
            eclApp.Cells(j,11):=Query2.FieldByName('SCBH').Value;
            eclApp.Cells(j,12):=Query2.FieldByName('CWBH').Value;
            eclApp.Cells(j,13):=Query2.FieldByName('CostID').Value;
            eclApp.Cells(j,14):=Query2.FieldByName('Qty').Value;
            eclApp.Cells(j,15):=Query2.FieldByName('USPrice').Value;
            eclApp.Cells(j,16):=Query2.FieldByName('USACC').Value;
            eclApp.Cells(j,17):=Query2.FieldByName('VNPrice').Value;
            eclApp.Cells(j,18):=Query2.FieldByName('VNACC').Value;
            eclApp.Cells(j,19):=Query2.FieldByName('Qty_X').Value;
            eclApp.Cells(j,20):=Query2.FieldByName('VNPrice_X').Value;
            eclApp.Cells(j,21):=Query2.FieldByName('VNACC_X').Value;
            Query2.Next;
            inc(j);
          end;
          eclApp.Cells[i+8,14].Formula:='=SUM(N9:N'+inttostr(i+7)+')';
          eclApp.Cells[i+8,16].Formula:='=SUM(P9:P'+inttostr(i+7)+')';
          eclApp.Cells[i+8,18].Formula:='=SUM(R9:R'+inttostr(i+7)+')';
          eclApp.Cells[i+8,19].Formula:='=SUM(S9:S'+inttostr(i+7)+')';
          eclApp.Cells[i+8,21].Formula:='=SUM(U9:U'+inttostr(i+7)+')';
          eclApp.Range[eclApp.Cells[i+8,14],eclApp.Cells[i+8,21]].font.Bold:=true;
          eclApp.Range[eclApp.Cells[i+8,14],eclApp.Cells[i+8,21]].font.Name:='Times New Roman';
          eclApp.Range[eclApp.Cells[i+8,14],eclApp.Cells[i+8,21]].font.size:= 10;


          // add outline
          for k:=1 to 4 do
          begin
             eclApp.range[eclApp.cells[9,1],eclApp.cells[i+8,21]].borders[k].linestyle:=1;
          end;
            //
          //eclapp.columns.autofit;
          showmessage('Succeed.');
          eclApp.Visible:=True;
        except
          on   F:Exception   do
          showmessage(F.Message);
        end;
     end;
end;

procedure TReport_SCT.BDT6Click(Sender: TObject);
var STD,ETD,HGLBSQL,HGLBSQL_X:String;
    tmpList:TStringlist;
    i:integer;
    sdate,edate:Tdate;
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
  if cbx6.Text<>'NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ' then
  begin
    showmessage('Pls select KHO NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ');
    abort;
  end;

  SDate:=EncodeDate(strtoint(CBX2.Text), strtoint(CBX3.Text), 1);
  EDate:=EncodeDate(strtoint(CBX2.Text), strtoint(CBX3.Text), 1);
  EDate:=EncodeDate(strtoint(CBX2.Text), strtoint(CBX3.Text), DaysOfItsMonth(EDate));
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT SUM (QTY) AS QTY,SUM (USACC) AS USACC,SUM (VNACC) AS VNACC,SUM (Qty_X) AS Qty_X,SUM (VNACC_X) AS VNACC_X');
    sql.Add('from (');
    sql.Add('select kcrk.GSBH,kcrk.CKBH,KCRK.HGLB,KCRKs.CNO,KCRKS.CLBH,CLZL.YWPM,CLZL.DWBH,KCRK.RKNO as SOCHUNGTU,KCRK.CFMDATE,ZSZL.ZSYWJC,');
    sql.Add('case when left(KCRK.HGLB,2) in (''NK'',''TC'',''KD'',''NQ'') then KCPK.Declaretion  when left(KCRK.HGLB,2)=''HD'' then KCRK.DOCNO end as Declaretion,'' '' as SCBH,KCZLS.CWBH,KCRKS.CostID,');
    sql.Add('		    KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC+isnull(KCRKS.ExchACC,0) as VNACC,'' '' as Qty_X,'' '' as VNPrice_X, '' '' as VNACC_X');
    sql.Add('from (select * from KCRKS union all select * from KCRKS_2014) KCRKS ');
    sql.Add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.Add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    sql.Add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.Add('left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH');
    sql.Add('left join KCCK on KCCK.CKBH=KCRK.CKBH');
    sql.Add('left join KCPK on KCPK.PKNO=KCRK.RKNO');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
         sql.add('and KCRK.HGLB <>''XT'' ');
    if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if CBX1.itemindex<>0 then
      begin
         sql.add(' and KCRK.CKBH= '+''''+CBX1.Text+'''');
      end;
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    sql.add('AND KCRK.YN=''5''');
    sql.Add('      and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and KCRK.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    sql.Add('union all');
    sql.Add('select KCLL.GSBH,KCLL.CKBH,KCLLS.HGLB,KCLLS.CNO,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCLLS.LLNO as SOCHUNGTU,KCLL.CFMDate,'' '' as ZSYWJC,'' '' as Declaretion,KCLLS.SCBH,KCZLS.CWBH,KCLLS.CostID,');
    sql.Add('	      '' '' as Qty,'' '' as USPRice, '' '' as USACC,'' '' as VNPrice, '' '' as VNACC, isnull(KCLLS.Qty,0)  as Qty_X, isnull(KCLLS.VNPrice_HG,0)  as VNPrice_X, KCLLS.VNACC_HG as VNACC_X');
    sql.Add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS');
    sql.Add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.Add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
    sql.Add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.Add('      and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.Add('      and KCLL.YN=''5''');
    if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
         sql.add('and KCLLS.HGLB <>''XT'' ');
    if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and KCLL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and KCLLS.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL_X:=HGLBSQL_X+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL_X:='('+Copy(HGLBSQL_X,1,length(HGLBSQL_X)-1)+')';
        sql.add('and KCLLS.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    sql.Add(' ) KCLL');
    //memo1.Lines:=sql;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  Report_SCT_Print:=TReport_SCT_Print.Create(nil);
  Report_SCT_Print.QRLabel28.Caption:=CBX3.Text+'-'+CBX2.Text;
  Report_SCT_Print.quickrep1.prepare;
  Report_SCT_Print.quickrep1.preview;
  Report_SCT_Print.Free;
end;

procedure TReport_SCT.Button2Click(Sender: TObject);
var STD,ETD,HGLBSQL,HGLBSQL_X:String;
    tmpList:TStringlist;
    i:integer;
    sdate,edate:Tdate;
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

  SDate:=EncodeDate(strtoint(CBX2.Text), strtoint(CBX3.Text), 1);
  EDate:=EncodeDate(strtoint(CBX2.Text), strtoint(CBX3.Text), 1);
  EDate:=EncodeDate(strtoint(CBX2.Text), strtoint(CBX3.Text), DaysOfItsMonth(EDate));
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SELECT SUM (QTY) AS QTY,SUM (USACC) AS USACC,SUM (VNACC) AS VNACC,SUM (Qty_X) AS Qty_X,SUM (VNACC_X) AS VNACC_X');
    sql.Add('from (');
    sql.Add('select kcrk.GSBH,kcrk.CKBH,KCRK.HGLB,KCRKs.CNO,KCRKS.CLBH,CLZL.YWPM,CLZL.DWBH,KCRK.RKNO as SOCHUNGTU,KCRK.CFMDATE,ZSZL.ZSYWJC,');
    sql.Add('case when left(KCRK.HGLB,2) in (''NK'',''TC'',''KD'',''NQ'') then KCPK.Declaretion  when left(KCRK.HGLB,2)=''HD'' then KCRK.DOCNO end as Declaretion,'' '' as SCBH,KCZLS.CWBH,KCRKS.CostID,');
    sql.Add('		    KCRKS.Qty,KCRKS.USPrice,KCRKS.USACC,KCRKS.VNPrice,KCRKS.VNACC+isnull(KCRKS.ExchACC,0) as VNACC,'' '' as Qty_X,'' '' as VNPrice_X, '' '' as VNACC_X');
    sql.Add('from (select * from KCRKS union all select * from KCRKS_2014) KCRKS ');
    sql.Add('left join (select * from KCRK union all select * from KCRK_2014) KCRK on KCRK.RKNO=KCRKS.RKNO');
    sql.Add('left join CLZL on CLZL.CLDH=KCRKS.CLBH');
    sql.Add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH');
    sql.Add('left join KCZLS on KCZLS.CLBH=KCRKS.CLBH and KCZLS.CKBH=KCRK.CKBH');
    sql.Add('left join KCCK on KCCK.CKBH=KCRK.CKBH');
    sql.Add('left join KCPK on KCPK.PKNO=KCRK.RKNO');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCRK.USERDate,111)) between');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
         sql.add('and KCRK.HGLB <>''XT'' ');
    if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and KCRK.CKBH= '+''''+CBX1.Text+'''');
    end;
    if NotInCKBHEdit.Text<>'' then
    begin
      sql.add(' and KCRK.CKBH<>'''+NotInCKBHEdit.Text+'''');
    end;
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    sql.add('AND KCRK.YN=''5''');
    sql.Add('      and KCRKS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and KCRK.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and KCRK.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    sql.Add('union all');
    sql.Add('select KCLL.GSBH,KCLL.CKBH,KCLLS.HGLB,KCLLS.CNO,KCLLS.CLBH,CLZL.YWPM,CLZL.DWBH,KCLLS.LLNO as SOCHUNGTU,KCLL.CFMDate,'' '' as ZSYWJC,'' '' as Declaretion,KCLLS.SCBH,KCZLS.CWBH,KCLLS.CostID,');
    sql.Add('	      '' '' as Qty,'' '' as USPRice, '' '' as USACC,'' '' as VNPrice, '' '' as VNACC, isnull(KCLLS.Qty,0)  as Qty_X, isnull(KCLLS.VNPrice_HG,0)  as VNPrice_X, KCLLS.VNACC_HG as VNACC_X');
    sql.Add('from (select * from KCLLS union all select * from KCLLS_2014) KCLLS');
    sql.Add('left join (select * from KCLL union all select * from KCLL_2014) KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.Add('left join KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH');
    sql.Add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.Add('where Convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
    sql.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.Add('      and KCLLS.CLBH like '+''''+edit1.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('      and CLZL.YWPM like '+''''+'%'+edit3.Text+'%'+'''');
    sql.Add('      and KCLL.YN=''5''');
    if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
         sql.add('and KCLLS.HGLB <>''XT'' ');
    if edit4.Text<> '' then
        sql.add('      and KCZLS.CWBH like '+''''+edit4.Text+'%'+'''');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and KCLL.CKBH= '+''''+CBX1.Text+'''');
    end;
    if NotInCKBHEdit.Text<>'' then
    begin
      sql.add(' and KCLL.CKBH<>'''+NotInCKBHEdit.Text+'''');
    end;
    if CBX4.itemindex<>0 then
    begin
      sql.add(' and KCCK.GSBH='+''''+CBX4.Text+'''');
    end else
    begin
      sql.add(' and KCCK.GSBH in ( Select GSDH from bgszl where YN=1 and DFL in (select DFL from bgszl where GSDH='''+main.Edit2.Text+''')) ');
    end;
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and KCLLS.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL_X:=HGLBSQL_X+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL_X:='('+Copy(HGLBSQL_X,1,length(HGLBSQL_X)-1)+')';
        sql.add('and KCLLS.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    sql.Add(' ) KCLL');
    //memo1.Lines:=sql;
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  Report_SCT_Print:=TReport_SCT_Print.Create(nil);
  Report_SCT_Print.QRLabel28.Caption:=CBX3.Text+'-'+CBX2.Text;
  Report_SCT_Print.quickrep1.prepare;
  Report_SCT_Print.quickrep1.preview;
  Report_SCT_Print.Free;

end;



end.
