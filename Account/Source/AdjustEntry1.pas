unit AdjustEntry1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids,
  GridsEh, DBGridEh, dateUtils, inifiles;

type
  TAdjustEntry = class(TForm)
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
    UPDet: TUpdateSQL;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetPaQty: TCurrencyField;
    EnDetQty: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    DS4: TDataSource;
    EnMas: TQuery;
    EnMasRKNO: TStringField;
    EnMasZSBH: TStringField;
    EnMasZSYWJC: TStringField;
    EnMasZSNO: TStringField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TDateTimeField;
    EnMasCFMID: TStringField;
    EnMasCFMDATE: TDateTimeField;
    EnMasYN: TStringField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnMasGSBH: TStringField;
    EnMasCKBH: TStringField;
    BDelRec: TQuery;
    Qtemp: TQuery;
    EnMasDOCNO: TStringField;
    EnMasHGLB: TStringField;
    EnDetCNO: TStringField;
    EnMasYN_Date: TDateTimeField;
    CKSotcOK: TCheckBox;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetCWHL: TCurrencyField;
    EnDetRKSB: TStringField;
    EnDetRKMEMO: TStringField;
    EnDetCNO1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EnMasNewRecord(DataSet: TDataSet);
    procedure EnDetNewRecord(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    { Private declarations }
    function CheckStockIsNegative(CKBH:String; RKNO:String; Date1:TDate;Date2:TDate;HGLB1:string;HGLB2:String):boolean;
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
  AdjustEntry: TAdjustEntry;
  NDate:TDate;

implementation

uses main1, FunUnit;

{$R *.dfm}
procedure TAdjustEntry.readini();
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
  TCurrencyField(EnDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;
//
procedure TAdjustEntry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TAdjustEntry.Button1Click(Sender: TObject);
begin
  with EnMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('where  ISNULL(flowflag,'''')<>''X'' and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.date )+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('        and KCRK.RKNO like '+''''+edit1.Text+'%'+'''');
    sql.add('        and KCCK.GSBH='+''''+main.edit2.text+'''');
    if IsHide_Warehouse_XT='Y' then  //隱藏XT
      sql.add('and KCRK.HGLB<>''XT'' ');
    sql.add('order by KCRK.RKNO  ');
    active:=true;
  end;
  EnDet.Active:=true;
end;

procedure TAdjustEntry.FormCreate(Sender: TObject);
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
  readini();
end;
//
function TAdjustEntry.CheckStockIsNegative(CKBH:String; RKNO:String; Date1:TDate;Date2:TDate;HGLB1:string;HGLB2:String):boolean;
var aYear,aMonth:string;
    iYear,iMonth,iDay:word;
    sdate,edate:TDate;
    iRes:boolean;
begin
   iRes:=false;
   if (FormatDateTime('YYYY/MM',Date1)=FormatDateTime('YYYY/MM',Date2)) and (HGLB1=HGLB2)  then
   begin
      iRes:=false
   end else
   begin
      sdate:=startofthemonth(Date1);
      edate:=endofthemonth(Date1);
      aYear:=FormatDateTime('YYYY',incmonth(Date1,-1));
      aMonth:=FormatDateTime('MM',incmonth(Date1,-1));
      //20171017更新KCZLS.NK/HD/XT.GC/KD
      with Qtemp do
      begin
        Active:=false;
        Sql.Clear;
        SQL.Add('select KCZLS.CLBH as CLDH,LastKC.LastRem,RK.RKQty,LL.LLQty,JGRK.JGRK,JGCK.JGCK,KCZLS.CKBH,KCZLS.HGLB,');
        SQL.Add('       (isnull(round(LastKC.LastRem,2),0)+isnull(round(RK.RKQty,2),0)-isnull(round(LL.LLQty,2),0)+isnull(round(JGRK.JGRK,2),0)-isnull(round(JGCK.JGCK,2),0) ) as Qty');
        SQL.Add('  from (select * from KCZLS  CROSS JOIN');
        SQL.Add('  (select ''NK'' as HGLB union all select ''HD'' union all select ''KD'' union all select ''XT'' union all select ''GC'' union all select ''ZZZZ'' ) LOAI where CKBH='''+CKBH+''' and CLBH in (select CLBH from KCRKS where RKNO='''+RKNO+''' Group by CLBH) ) KCZLS');
        SQL.Add('left join (select KCCLMONTH.CKBH,KCCLMONTH.CLBH,KCCLMONTH.HGLB,KCCLMONTH.Qty as LastRem ');
        SQL.Add('           from KCCLMONTH_HG KCCLMONTH  where KCCLMONTH.KCYEAR='''+ayear+'''');
        SQL.Add('                                 and KCMONTH='''+amonth+''' and CLBH like ''%'' and CKBH='''+CKBH+''' ');
        SQL.Add('           ) LastKC on LastKC.CLBH=KCZLS.CLBH and LastKC.CKBH=KCZLS.CKBH and LastKC.HGLB=KCZLS.HGLB');
        if  (FormatDateTime('YYYY/MM',Date1)<>FormatDateTime('YYYY/MM',Date2)) then   //改月份,檢查原本月份是否不影響
        begin
        SQL.Add('left join (select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,sum(KCRKS.Qty) as RKQty from KCRKS');
        SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
        SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
        SQL.Add('           and CKBH='''+CKBH+''' and KCRK.RKNO<>'''+RKNO+''' ');
        SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH and RK.HGLB=KCZLS.HGLB');
        end else  //改KCRK.HGLB 海關代碼
        begin
        SQL.Add('left join (');
        SQL.Add('         select CKBH,CLBH,HGLB,SUM(RKQty) as RKQty from ( ');
        SQL.Add('           select KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB,sum(KCRKS.Qty) as RKQty from KCRKS');
        SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
        SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
        SQL.Add('           and CKBH='''+CKBH+''' and KCRK.RKNO<>'''+RKNO+''' ');
        SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB ');
        SQL.Add('           Union all ');
        SQL.Add('           select KCRK.CKBH,KCRKS.CLBH,'''+HGLB2+''' as HGLB,sum(KCRKS.Qty) as RKQty from KCRKS');
        SQL.Add('           left join KCRK on KCRK.RKNO=KCRKS.RKNO ');
        SQL.Add('           where convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
        SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
        SQL.Add('           and CKBH='''+CKBH+''' and KCRK.RKNO='''+RKNO+''' ');
        SQL.Add('           group by KCRK.CKBH,KCRKS.CLBH,KCRK.HGLB ');
        SQL.Add('         ) KCRKS group by KCRKS.CKBH,KCRKS.CLBH,KCRKS.HGLB ');
        SQL.Add(' ) RK on RK.CLBH=KCZLS.CLBH and RK.CKBH=KCZLS.CKBH and RK.HGLB=KCZLS.HGLB');
        end;
        SQL.Add('left join (select KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB,sum(KCLLS.Qty) as LLQty from KCLLS ');
        SQL.Add('           left join KCLL on KCLL.LLNO=KCLLS.LLNO ');
        SQL.Add('           where convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between ');
        SQL.Add('                 '''+formatdatetime('yyyy/MM/dd',sdate)+'''' +' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
        SQL.Add('           and KCLL.SCBH<>''JJJJJJJJJJ'' and KCLL.CFMID<>''NO'' and KCLLS.Qty>0 and KCLLS.CLBH like ''%''  and CKBH='''+CKBH+'''  ');
        SQL.Add('           group by KCLL.CKBH,KCLLS.CLBH,KCLLS.HGLB) LL on LL.CLBH=KCZLS.CLBH and LL.CKBH=KCZLS.CKBH and LL.HGLB=KCZLS.HGLB');
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
      //
   end;
   result:=iRes;
end;
//
procedure TAdjustEntry.Button2Click(Sender: TObject);
var IsUpdate:boolean;
begin
  //檢查
  with EnMas do
  begin
    if ((fieldbyname('HGLB').AsString='') or (fieldbyname('USERDATE').AsString='') or (fieldbyname('YN').AsString='')) then
    begin
      showmessage('HGLB / USERDATE / YN can not be empty.');
      abort;
    end;
  end;
  with EnDet do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('CostID').AsString='' then
        begin
            showmessage('CostID can not be empty.');
            abort;
        end;
        if  (fieldbyname('USPrice').isnull and fieldbyname('VNPrice').isnull) then
        begin
            showmessage('Price can not be empty.');
            abort;
        end;
        if  (not fieldbyname('USPrice').isnull and  fieldbyname('USACC').isnull) then
        begin
            showmessage('USACC can not be empty.');
            abort;
        end;
        if  (not fieldbyname('VNPrice').isnull and  fieldbyname('VNACC').isnull) then
        begin
            showmessage('VNACC can not be empty.');
            abort;
        end;
        next;
      end;
  end;
  //檢查庫存是否異常<0
  if (CKSotcOK.Checked=true)  then
  begin
    if CheckStockIsNegative(EnMas.FieldByName('CKBH').AsString,EnMas.FieldByName('RKNO').AsString,EnMas.FieldByName('USERDATE').OldValue,
                            EnMas.FieldByName('USERDATE').Value,EnMas.FieldByName('HGLB').OldValue,EnMas.FieldByName('HGLB').Value)=true then
    begin
      showmessage('Adjust will let Stock < 0. it can not adjust ');
      abort;
    end;
  end;
  IsUpdate:=false;
  try  //更新真正庫存
    with EnDet do
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
    with EnMas do
    begin
      if ((state in [dsedit]) or (IsUpdate=true)) then
      begin
        IsUpdate:=true;
        Edit;
        fieldbyname('YN_Date').Value:=Ndate;
        UPMas.Apply(ukmodify);
        with  BDelRec do
        begin
          active:=false;
          sql.Clear;
          if ((EnMas.fieldbyname('UserDate').OldValue <> EnMas.fieldbyname('UserDate').Value) and (EnMas.FieldByName('CFMID').AsString<>'NO')) then
          begin
            sql.Add('update KCRKS ');
            sql.Add('set CWHL=(select CWHL from ');
            sql.Add('         (select KCRKS.RKNO,KCRKS.CLBH,KCRKS.CGBH,KCRKS.RKSB,');
            sql.Add('           convert(varchar,KCRK.USERDate,111) as RKDate, CWHLS.CWHL ');
            sql.Add('           from KCRKS left join KCRK on KCRK.RKNO=KCRKS.RKNO');
            sql.Add('           left join CWHLS on  CWHLS.HLYEAR+''/''+CWHLS.HLMONTH+''/''+CWHLS.HLDAY=convert(varchar,KCRK.USERDate,111)');
            sql.Add('           where KCRKS.RKNO='''+EnDet.fieldbyname('RKNO').Value+''')  CWHLS');
            sql.Add('           where CWHLS.RKNO=KCRKS.RKNO and CWHLS.CLBH=KCRKS.CLBH');
            sql.Add('           and CWHLS.CGBH=KCRKS.CGBH and CWHLS.RKSB=KCRKS.RKSB )');
            sql.Add(' where  USPrice is not null  and USPrice<>0 and Qty<>0');
            sql.Add('	and KCRKS.RKNO='''+EnDet.fieldbyname('RKNO').Value+'''');

            sql.Add('update KCRKS');
            sql.Add('set VNACC=round(USACC*CWHL,0), ');
            sql.Add('    VNPrice=round(USPrice*CWHL,0)');
            sql.Add(' where  USPrice is not null  and USPrice<>0 and Qty<>0');
            sql.Add('	and KCRKS.RKNO='''+EnDet.fieldbyname('RKNO').Value+'''');
          end;  

          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('+''''+'KCRKC'+''''+','+''''+EnMas.fieldbyname('RKNO').Value+'''');
          sql.add(','+''''+' '+''''+','+''''+EnMas.fieldbyname('USERID').Value+''''+',');
          sql.add(''''+main.Edit1.Text+''''+',getdate())');

          execsql;
        end;
      end;
      active:=false;
      active:=true;
    end;
    //
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TAdjustEntry.FormDestroy(Sender: TObject);
begin
  AdjustEntry:=nil;
end;

procedure TAdjustEntry.EnMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TAdjustEntry.EnDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TAdjustEntry.Button4Click(Sender: TObject);
begin
  with bdelrec do
  begin
    active:=false;
    sql.Clear;
  end;
end;

end.
