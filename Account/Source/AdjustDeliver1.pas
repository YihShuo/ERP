unit AdjustDeliver1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids,
  GridsEh, DBGridEh, DateUtils, inifiles;

type
  TCLBH=record
   CLBH:String;
   NK:double;
   TC:double;
   KD:double;
   HD:double;
   GC:double;
   XT:double;
   NK1:double;
   TC1:double;
   KD1:double;
   HD1:double;
   H11:double;
end;

type
  TAdjustDeliver = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid2: TDBGridEh;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    DelDet: TQuery;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetACCUS: TFloatField;
    DelDetACCVN: TIntegerField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetDFL: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DelDetLLNO: TStringField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    BDelRec: TQuery;
    DelDetHGLB: TStringField;
    DelDetCNO: TStringField;
    DelMasYN_Date: TDateTimeField;
    Qtemp: TQuery;
    CKSotcOK: TCheckBox;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetCWBH: TStringField;
    DelDetLLMemo: TStringField;
    DelDetCNO1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DelMasNewRecord(DataSet: TDataSet);
    procedure DelDetNewRecord(DataSet: TDataSet);
  private
    IsHide_Warehouse_XT:String;
    sYear,sMonth:String;
    sSTDT,sEDDT:String;
    CKBHList:TStringlist;
    { Private declarations }
    function CheckStockIsNegative(CKBH:String; LLNO:String; Date1:TDate;Date2:TDate):boolean;
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
  AdjustDeliver: TAdjustDeliver;
  NDate:TDate;
implementation

uses main1, AdjustDeliver_CL1, FunUnit;

{$R *.dfm}


procedure TAdjustDeliver.readini();
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
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;
//
procedure TAdjustDeliver.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAdjustDeliver.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName ');
    sql.add('from KCLL ');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID  ');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.add('where ISNULL(KCLL.flowflag,'''')<>''X'' and KCLL.USERDATE>='+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and KCLL.USERDATE<='+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and KCLL.LLNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and KCCK.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by KCLL.LLNO  ');
    //funcObj.WriteErrorLog(sql.text);
    active:=true;
  end;
  with DelDet do
  begin
    Active:=false;
    sql.Clear;
    SQL.Add('select KCLLS.*,CLZL.YWPM,CLZL.DWBH,KCZLS.CWBh');
    SQL.Add('from KCLLS inner join KCLL on KCLLS.LLNO=KCLL.LLNO');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.Add('left join KCZLS on KCZLS.CKBH=KCLL.CKBH and KCZLS.CLBH=KCLLS.CLBH');
    SQL.Add('where KCLLS.LLNO=:LLNO');
    {if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and KCLLS.HGLB<>''XT'' '); }
    SQL.Add('order by KCLLS.DFL,KCLLS.SCBH,KCLLS.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
  end;
  DelDet.Active:=true;
end;

procedure TAdjustDeliver.Button3Click(Sender: TObject);
begin
  DelDet.Active:=false;
  DelMas.Active:=false;
  DelMas.Active:=true;
  DelDet.Active:=true;
end;
//檢查庫存是否異常<0   未完成
function TAdjustDeliver.CheckStockIsNegative(CKBH:String; LLNO:String; Date1:TDate;Date2:TDate):boolean;
var aYear,aMonth:string;
    iYear,iMonth,iDay:word;
    sdate,edate:TDate;
    iRes,IsCheck:boolean;
    NKQty,TCQty,KDQty,HDQty,XTQty,GCQty,NK1Qty,TC1Qty,KD1Qty,HD1Qty,H11Qty:Double;
    CLBHList:array of TCLBH;
    i:integer;
    SubSQLstr:String;
begin
   IsCheck:=false;
   iRes:=false;
   with Qtemp do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select CLBH from KCLLS where LLNO='''+LLNO+''' Group by CLBH ');
     Active:=true;
     setlength(CLBHList,Qtemp.RecordCount);
     for i:=0 to Qtemp.RecordCount-1 do
     begin
       CLBHList[i].CLBH:=Qtemp.FieldByName('CLBH').AsString;
       CLBHList[i].NK:=0;
       CLBHList[i].TC:=0;
       CLBHList[i].KD:=0;
       CLBHList[i].HD:=0;
       CLBHList[i].GC:=0;
       CLBHList[i].XT:=0;
       CLBHList[i].NK1:=0;
       CLBHList[i].TC1:=0;
       CLBHList[i].KD1:=0;
       CLBHList[i].HD1:=0;
       CLBHList[i].H11:=0;
       Next;
     end;
     Active:=false;
   end;
   //加總計算
   with DelDet do
   begin
    First;
    while not eof do
    begin
      for i:=0 to High(CLBHList) do
      begin
        if CLBHList[i].CLBH=FieldByName('CLBH').AsString then
        begin
          if FieldByName('HGLB').AsString='NK' then  CLBHList[i].NK:=CLBHList[i].NK+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='TC' then  CLBHList[i].TC:=CLBHList[i].TC+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='KD' then  CLBHList[i].KD:=CLBHList[i].KD+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='HD' then  CLBHList[i].HD:=CLBHList[i].HD+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='XT' then  CLBHList[i].XT:=CLBHList[i].XT+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='GC' then  CLBHList[i].GC:=CLBHList[i].GC+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='NK1' then  CLBHList[i].NK1:=CLBHList[i].NK1+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='TC1' then  CLBHList[i].TC1:=CLBHList[i].TC1+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='KD1' then  CLBHList[i].KD1:=CLBHList[i].KD1+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='HD1' then  CLBHList[i].HD1:=CLBHList[i].HD1+FieldByName('Qty').Value;
          if FieldByName('HGLB').AsString='H11' then  CLBHList[i].H11:=CLBHList[i].H11+FieldByName('Qty').Value;
          Break;
        end;
      end;
      //是否檢查
      if FieldByName('HGLB').Value<>FieldByName('HGLB').OldValue then IsCheck:=true;
      if FieldByName('Qty').Value<>FieldByName('Qty').OldValue then IsCheck:=true;
      Next;
     end;
   end;
   //產生SubSQL
   for i:=0 to High(CLBHList) do
   begin
     if CLBHList[i].NK>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''NK'' as HGLB,'+floattostr(CLBHList[i].NK)+' as Qty';
     if CLBHList[i].TC>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''TC'' as HGLB,'+floattostr(CLBHList[i].TC)+' as Qty';
     if CLBHList[i].KD>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''KD'' as HGLB,'+floattostr(CLBHList[i].KD)+' as Qty';
     if CLBHList[i].HD>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''HD'' as HGLB,'+floattostr(CLBHList[i].HD)+' as Qty';
     if CLBHList[i].GC>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''GC'' as HGLB,'+floattostr(CLBHList[i].GC)+' as Qty';
     if CLBHList[i].XT>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''XT'' as HGLB,'+floattostr(CLBHList[i].XT)+' as Qty';
     if CLBHList[i].NK1>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''NK1'' as HGLB,'+floattostr(CLBHList[i].NK1)+' as Qty';
     if CLBHList[i].TC1>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''TC1'' as HGLB,'+floattostr(CLBHList[i].TC1)+' as Qty';
     if CLBHList[i].KD1>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''KD1'' as HGLB,'+floattostr(CLBHList[i].KD1)+' as Qty';
     if CLBHList[i].HD1>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''HD1'' as HGLB,'+floattostr(CLBHList[i].HD1)+' as Qty';
     if CLBHList[i].H11>0 then SubSQLstr:=SubSQLstr+' Union all Select '''+CKBH+''' as CKBH,'''+CLBHList[i].CLBH+''',''H11'' as HGLB,'+floattostr(CLBHList[i].H11)+' as Qty';
   end;
   //if length(SubSQLstr)>0 then SubSQLstr:=Copy(SubSQLstr,1,length(SubSQLStr)-10);
   //
   if (FormatDateTime('YYYY/MM',Date1)=FormatDateTime('YYYY/MM',Date2))   then
   begin
      sdate:=startofthemonth(Date1);
      edate:=endofthemonth(Date1);
      aYear:=FormatDateTime('YYYY',incmonth(Date1,-1));
      aMonth:=FormatDateTime('MM',incmonth(Date1,-1));
   end else
   begin
      sdate:=startofthemonth(Date2);
      edate:=endofthemonth(Date2);
      aYear:=FormatDateTime('YYYY',incmonth(Date1,-1));
      aMonth:=FormatDateTime('MM',incmonth(Date1,-1));
      //
      IsCheck:=true;
   end;
   //
   iRes:=false;
   //20171017更新KCZLS.NK/HD/XT.GC/KD
   if IsCheck=true then
   begin
     with Qtemp do
     begin
       Active:=false;
       Sql.Clear;
       SQL.Add('select KCZLS.CLBH as CLDH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,KCZLS.CKBH,KCZLS.HGLB,');
       SQL.Add('       (isnull(round(LastKC.LastRem,2),0)+isnull(round(RK.RKQty,2),0)-isnull(round(LL.LLQty,2),0)+isnull(round(JGRK.JGRK,2),0)-isnull(round(JGCK.JGCK,2),0) ) as Qty');
       SQL.Add('  from (select * from KCZLS  CROSS JOIN');
       SQL.Add('  (select ''NK'' as HGLB union all select ''TC''  union all select ''HD'' union all select ''KD'' union all select ''XT'' union all select ''GC'' union all select ''ZZZZ'' ');
       SQL.Add('    union all select ''NK1'' union all select ''TC1'' union all select ''HD1'' union all select ''KD1''   union all select ''H11'' ) LOAI where CKBH='''+CKBH+''' and CLBH in (select CLBH from KCLLS where LLNO='''+LLNO+''' Group by CLBH) ) KCZLS');
       SQL.Add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.Qty as LastRem ');
       SQL.Add('           from KCCLMONTH_HG KCCLMONTH  where KCCLMONTH.KCYEAR='''+ayear+'''');
       SQL.Add('                                 and KCMONTH='''+amonth+''' and CLBH like ''%'' and CKBH='''+CKBH+''' ');
       SQL.Add('           ) LastKC on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH and LastKC.HGLB=KCZLS.HGLB');
       SQL.Add('left join (select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,sum(KCRKS.Qty) as RKQty from KCRKS');
       SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
       SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
       SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
       SQL.Add('           and CKBH='''+CKBH+''' ');
       SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH and RK.HGLB=KCZLS.HGLB');
       //
       SQL.Add('left join ( ');
       SQL.Add('         select CKBH,CLBH,HGLB,SUM(LLQty) as LLQty from ( ');
       SQL.Add('           select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,sum(KCLLS.Qty) as LLQty from KCLLS ');
       SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
       SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
       SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like ''%''  and CKBH='''+CKBH+'''  ');
       SQL.Add('           and KCLL.LLNO<>'''+LLNO+''' ');
       SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB  ');
       SQL.Add(SubSQLstr);
       SQL.Add('         ) KCLLS group by KCLLS.CKBH,KCLLS.CLBH,KCLLS.HGLB ');
       SQL.Add('        ) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.CKBH and LL.HGLB=KCZLS.HGLB');
       //
       SQL.Add('left join (select JGZL.CKBH,JGZLS.CLBH,''GC'' as HGLB,sum(JGZLS.Qty) as JGRK from JGZLS');
       SQL.Add('           left join JGZL on JGZL.JGNO=JGZLS.JGNO ');
       SQL.Add('          where convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between ');
       SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
       SQL.Add('                 and JGZL.CFMID1<>''NO''');
       SQL.Add('                 and JGZLS.ZMLB=''ZZZZZZZZZZ''  and CKBH='''+CKBH+'''  ');
       SQL.Add('           group by JGZL.CKBH,JGZLS.CLBH ) JGRK on JGRK.CLBH=KCZLS.CLBH and JGRK.CKBH=KCZLS.CKBH and JGRK.HGLB=KCZLS.HGLB');
       SQL.Add('left join (select KCLL.CKBH,KCLLS.CLBH as ZMLB,KCLLS.HGLB,sum(KCLLS.Qty) as JGCK from KCLLS ');
       SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
       SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
       SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
       SQL.Add('           and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111))>=''2017/09/01''');
       SQL.Add('           and KCLL.SCBH=''JJJJJJJJJJ'' and KCLL.CFMID<>''NO''  and CKBH='''+CKBH+'''  ');
       SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB) JGCK on JGCK.ZMLB=KCZLS.CLBH and JGCK.CKBH=KCZLS.CKBH and JGCK.HGLB=KCZLS.HGLB');
       SQL.Add('where 1=1 and (isnull(round(LastKC.LastRem,2),0)+isnull(round(RK.RKQty,2),0)-isnull(round(LL.LLQty,2),0)+isnull(round(JGRK.JGRK,2),0)-isnull(round(JGCK.JGCK,2),0) )<0 ');
       //funcObj.WriteErrorLog(sql.Text);
       Active:=true;
      if RecordCount>0 then
      begin
        Showmessage(FieldByName('CLDH').AsString+'('+FieldByName('HGLB').AsString+') Qty='+FieldByName('Qty').AsString);
        iRes:=true;
      end;
      Active:=false;
     end;
   end;
   //
   result:=iRes;
end;
//

procedure TAdjustDeliver.Button2Click(Sender: TObject);
 function CheckCKBH(CKBH:String):boolean;
  var i:integer;
      iRes:boolean;
  begin
     iRes:=false;
     for i:=0 to  CKBHList.Count-1 do
     begin
       if CKBHList.Strings[i]=CKBH then
       begin
         iRes:=true;
         break;
       end;
     end;
     Result:=iRes;
  end;

var IsUpdate:boolean;
begin

  //檢查
  with DelMas do
  begin
    if ((fieldbyname('SCBH').AsString='') or (fieldbyname('USERDATE').AsString='') or (fieldbyname('USERID').AsString='')
        or (fieldbyname('YN').AsString='') ) then
    begin
      showmessage('SCBH / USERDATE / USERID / YN can not be empty.');
      abort;
    end;
    if fieldbyname('CFMID').AsString='NO' then
    begin
      if fieldbyname('CFMDate').AsString<>'' then
      begin
        showmessage('CFMDate must be null');
        abort;
      end;
    end else
    begin
      if fieldbyname('CFMDate').AsString='' then
      begin
        showmessage('CFMDate can not be empty ');
        abort;
      end;
    end;
  end;
  with DelDet do
  begin
    first;
    while not eof do
    begin
        if fieldbyname('Qty').AsString='' then
        begin
            showmessage('Qty can not be empty.');
            abort;
        end;
        if fieldbyname('CostID').AsString='' then
        begin
            showmessage('CostID can not be empty.');
            abort;
        end;
        if DelMas.fieldbyname('CFMID').AsString<>'NO' then
        begin
          if fieldbyname('HGLB').AsString='' then
          begin
              showmessage('HGLB can not be empty.');
              abort;
          end;
        end;
        if (((copy(fieldbyname('HGLB').AsString,1,2)='NK') or (copy(fieldbyname('HGLB').AsString,1,2)='HD') or  (copy(fieldbyname('HGLB').AsString,1,2)='TC') or  (copy(fieldbyname('HGLB').AsString,1,2)='NQ') ) and (CheckCKBH(DelMas.FieldByName('CKBH').AsString)=false)) then
        begin
          if ((fieldbyname('CNO').AsString='') and (fieldbyname('CWBH').AsString<>'153')) then
          begin
            showmessage('CNO can not be empty.');
            abort;
          end;
        end else
        begin
          Edit;
          if (copy(fieldbyname('HGLB').AsString,1,2)<>'KD') then
            fieldbyname('CNO').AsString:='';
          Post;
        end;
        next;
    end;
  end;
 //檢查庫存是否異常<0
  if (DelMas.FieldByName('CFMDate').AsString<>'') and (DelMas.FieldByName('CFMID').AsString<>'NO')  and (CKSotcOK.Checked=true) then
  begin
    if CheckStockIsNegative(DelMas.FieldByName('CKBH').AsString,DelMas.FieldByName('LLNO').AsString,DelMas.FieldByName('CFMDate').OldValue,
                            DelMas.FieldByName('CFMDate').Value)=true then
    begin
      showmessage('Adjust will let Stock < 0. it can not adjust ');
      abort;
    end;
  end;
 //
 IsUpdate:=false;
 try  //更新真正庫存
   with DelDet do
   begin
      first;
      while not eof do
      begin
          if updatestatus=usmodified then
          begin
            IsUpdate:=true;
            UPdet.apply(ukmodify);
          end;
          next;
      end;
   end;

   with DelMas do
   begin
      if ((state in [dsedit]) or (IsUpdate=true)) then
      begin
        IsUpdate:=true;
        Edit;
        fieldbyname('YN_Date').Value:=Ndate;
        with BDelRec do
        begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('+''''+'KCLLC'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
          sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
          sql.add(''''+main.Edit1.Text+''''+',getdate())');
          execsql;
          active:=false;
        end;
        UPMas.Apply(ukmodify);
      end;
      active:=false;
      active:=true;
   end;
  showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TAdjustDeliver.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    DTP1.Date:=NDate-3;
    DTP2.Date:=NDate;
    active:=false;
  end;
  CKBHList:=TStringlist.Create;
  with BDelRec do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select CKBH from (');
    SQL.Add('Select Bgszl.GSDH as GSBH,Bgszl.DFL,Bgszl.SFL,Bgszl.TGSBH,Bgszl.GXLB');
    SQL.Add('       ,KCCK.CKBH,KCCK.DFL as KDFL ');
    SQL.Add('from Bgszl');
    SQL.Add('left join  KCCK on Bgszl.GSDH=KCCK.GSBH');
    SQL.Add('where IsNull(tybh,'''')<>''Y'' ');
    SQL.Add(' ) BGSZL');
    SQL.Add('where 1=1 and KDFL is null and CKBH is not null and SFL=''TM'' ');
    SQL.Add('   and DFL in (select DFL from Bgszl where GSDH='''+main.Edit2.Text+''')');
    SQL.Add('Group by CKBH');
    Active:=true;
    for i:=0 to RecordCount-1 do
    begin
      CKBHList.Add(FieldByName('CKBH').AsString);
      Next;
    end;
    Active:=false;
  end;
  readini();
end;

procedure TAdjustDeliver.FormDestroy(Sender: TObject);
begin
  AdjustDeliver:=nil;
end;

procedure TAdjustDeliver.DelMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TAdjustDeliver.DelDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

end.
