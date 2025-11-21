unit LYV_RAPborrowCFM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids, DB, DBTables, dateutils,
  Menus,Comobj, GridsEh, DBGridEh;

type
  TLYV_RAPborrowCFM = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    dtpDTP1: TDateTimePicker;
    dtpDTP2: TDateTimePicker;
    edt1: TEdit;
    btn4: TButton;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    dsDS3: TDataSource;
    qryDelMas: TQuery;
    TDelMasLLNO: TStringField;
    TDelMasGSBH: TStringField;
    TDelMasCKBH: TStringField;
    TDelMasDepID: TStringField;
    qryDelMasCKBH_Memo: TStringField;
    intgrfldDelMasPMARK: TIntegerField;
    TDelMasDepName: TStringField;
    qryDelMasPlanDate: TDateTimeField;
    qryDelMasMEMO: TStringField;
    qryDelMasSFL: TStringField;
    qryDelMasSFL_DESC: TStringField;
    TDelMasYN: TStringField;
    TDelMasSB: TStringField;
    TDelMasCFMID: TStringField;
    dtmfldDelMasCFMDate: TDateTimeField;
    dtmfldDelMasUSERDATE: TDateTimeField;
    TDelMasUSERID: TStringField;
    updtsqlUpMas: TUpdateSQL;
    qryDelDet: TQuery;
    updtsql1: TUpdateSQL;
    ds1: TDataSource;
    qry2: TQuery;
    Query1: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    CurrencyField1: TCurrencyField;
    DateTimeField1: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField1: TFloatField;
    PopupMenu1: TPopupMenu;
    Qtyrevise1: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure Qtyrevise1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    ayear,amonth:string;
    DepIDList:TStringlist;
    { Private declarations }
    procedure CalculateLastStock();
  public
    { Public declarations }
  end;

var
  LYV_RAPborrowCFM: TLYV_RAPborrowCFM;

implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TLYV_RAPborrowCFM.CalculateLastStock();
var year,month,day:word;
    i:integer;
    ayear,amonth:string;
begin
  decodedate(Date,Year,Month,Day);
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //
  qry2.Close;
  qry2.SQL.Text := 'Select top 1 KCYEAR,KCMonth from Lastmonth order by Userdate desc';
  qry2.Open;
  ayear := qry2.Fields[0].AsString;
  amonth := qry2.Fields[1].AsString;
  with qry2 do
  begin
     Active:=false;
    sql.Clear;
    sql.add('if object_id(''tempdb..#CLZLKC_Last'') is not null  ');
    sql.add('begin drop table #CLZLKC_Last end   ');
    SQL.Add('select NowKC.CKBH,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowRKQty,0)-IsNull(LL.LLQty,0) as Qty,LastKC.LastRem,RK.RKQty,LL.LLQty into #CLZLKC_Last from (');
    SQL.Add('  select CKBH,CLBH,SIZ,Sum(RKQty) as NowRKQty from (');
    SQL.Add('  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
    SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH in (Select CKBH from LastKCCK where LB =''02'' and GSBH='''+main.Edit2.Text+''' )  and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+formatdatetime('yyyy/MM/dd',Date)+''' ');
    SQL.Add('  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ ');
    SQL.Add('  Union All ');
    SQL.Add('  select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH in (Select CKBH from LastKCCK where LB =''02''  and GSBH='''+main.Edit2.Text+''' )  and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' ) as tmpRKTLFL ');
    SQL.Add('  group by CKBH,CLBH,SIZ ) as NowKC');
    SQL.Add('left join ( ');
    SQL.Add('   select CKBH,CLBH,SIZ,QTY as LastRem from Lastmonth where CKBH in (Select CKBH from LastKCCK where LB =''02''  and GSBH='''+main.Edit2.Text+''' ) and KCYEAR='''+ayear+''' and KCMonth='''+amonth+''' ) as LastKC on NowKC.CKBH=LastKC.CKBH and NowKC.CLBH=LastKC.CLBH and NowKC.SIZ=LastKC.SIZ');
    SQL.Add('left join ( ');
    SQL.Add('  select LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK ');
    SQL.Add('  where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH in (Select CKBH from LastKCCK where LB =''02''  and GSBH='''+main.Edit2.Text+''' ) and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+formatdatetime('yyyy/MM/dd',Date)+''' ');
    SQL.Add('  Group by LTRK.CKBH,LTRKSS.CLBH,LTRKSS.SIZ  ) RK on NowKC.CKBH=RK.CKBH and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ');
    SQL.Add('left join ( ');
    SQL.Add('   select LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LLQty from LTLLSS,LTLL ');
    SQL.Add('   where LTLLSS.LLNO=LTLL.LLNO  and LTLL.CFMID<>''NO'' and LTLL.CKBH in (Select CKBH from LastKCCK where LB =''02''  and GSBH='''+main.Edit2.Text+''' ) and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+formatdatetime('yyyy/MM/dd',Date)+''' ');
    SQL.Add('   Group by LTLL.CKBH,LTLLSS.CLBH,LTLLSS.SIZ ) LL on NowKC.CKBH=LL.CKBH and NowKC.CLBH=LL.CLBH and NowKC.SIZ=LL.SIZ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
end;

procedure TLYV_RAPborrowCFM.btn1Click(Sender: TObject);
var i:integer;
begin

  CalculateLastStock();
  //
  with qryDelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select LTLL.*,BDepartment.DepName,LastKCCK.Memo as CKBH_Memo,Case when LTLL.SFL=''1'' then ''Muon­É¥X'' when LTLL.SFL=''2'' then ''BO PHE³ø¼o'' end as SFL_DESC  ');
    sql.add('from LTLL ');
    sql.add('left join BDepartment on LTLL.DepID=BDepartment.ID  ');
    sql.add('left join LastKCCK on LastKCCK.CKBH=LTLL.CKBH ');
    sql.add('where LTLL.SB =''R'' and LTLL.CFMID=''NO'' and isnull(LTLL.flowflag,'''')<>''X'' ');
    sql.add('and convert(smalldatetime,convert(varchar,LTLL.USERDATE,111)) between '''+formatdatetime('yyyy/MM/dd',dtpDTP1.date )+'''');
    sql.add('and '''+formatdatetime('yyyy/MM/dd',dtpDTP2.date )+'''');
    sql.add('and LTLL.LLNO like '''+edt1.Text+'%'' ');
    sql.add('and LTLL.GSBH='''+main.Edit2.Text+'''');
    sql.add('order by LTLL.LLNO  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
  with  qryDelDet do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('select LTLLSS.LLNO,LTLLSS.CLBH,CLZL.YWPM,CLZL.DWBH,LTLLSS.ZLBH,LTLLSS.SIZ,LTLLSS.Qty,#CLZLKC_Last.Qty as KCQty ');
    if DepIDList.Count>0 then
    begin
      for i:=0 to DepIDList.Count-1 do
      begin
        sql.add(','+DepIDList.Strings[i]+' ');
      end;
    end;
    sql.Add('from LTLLSS');
    sql.add('left join LTLL on LTLL.LLNO=LTLLSS.LLNO ');
    sql.Add('left join CLZL on LTLLSS.CLBH=CLZL.CLDH ');
    sql.Add('left join #CLZLKC_Last on #CLZLKC_Last.CLBH=LTLLSS.CLBH and  #CLZLKC_Last.SIZ=LTLLSS.SIZ and #CLZLKC_Last.CKBH=LTLL.CKBH ');
    if DepIDList.Count>0 then
    begin
    sql.add('left join (');
    sql.add('select CLBH,SIZ ');
      for i:=0 to DepIDList.Count-1 do
      begin
        sql.add(',Max(case when DepID='''+DepIDList.Strings[i]+''' then Qty end) as '+DepIDList.Strings[i]+' ');
      end;
    sql.add('from #CLZLKC_LastOut ');
    sql.Add('Group by CLBH,SIZ ) Last_out on Last_out.CLBH=LTLLSS.CLBH and Last_out.SIZ=LTLLSS.SIZ  ');
    end;
    sql.Add('where LTLLSS.LLNO=:LLNO ');
    sql.Add('order by LTLLSS.CLBH,LTLLSS.siz ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;

end;

procedure TLYV_RAPborrowCFM.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DepIDList.Free;
  free;
end;

procedure TLYV_RAPborrowCFM.FormDestroy(Sender: TObject);
begin
  LYV_RAPborrowCFM:=nil;
end;

procedure TLYV_RAPborrowCFM.FormCreate(Sender: TObject);
var year,month,day:word;
    i:integer;
begin
  decodedate(Date,Year,Month,Day);
  incAMonth(Year,Month,Day,-1);
  ayear:=floattostr(year);
  amonth:=floattostr(month);
  if length(amonth)=1 then
    amonth:='0'+amonth;
  //
  qry2.Close;
  qry2.SQL.Text := 'Select top 1 KCYEAR,KCMonth from Lastmonth_Out order by Userdate desc';
  qry2.Open;
  ayear := qry2.Fields[0].AsString;
  amonth := qry2.Fields[1].AsString;
  with qry2 do
  begin
    Active:=false;
    sql.Clear;
    sql.add('if object_id(''tempdb..#CLZLKC_LastOut'') is not null  ');
    sql.add('begin drop table #CLZLKC_LastOut end   ');
    sql.add('select NowKC.DepID,NowKC.CLBH,NowKC.SIZ,IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) as Qty into #CLZLKC_LastOut  from ( ');
    sql.add('select DepID,CLBH,SIZ,Sum(LLQty) as NowLLQty from (');
    sql.add('select LTLL.DepID,LTLLSS.CLBH,LTLLSS.SIZ,SUM(LTLLSS.Qty) as LLQty from LTLLSS,LTLL ');
    sql.add('where LTLLSS.LLNO=LTLL.LLNO  and LTLL.CFMID<>''NO'' and LTLL.CKBH in (Select CKBH from LastKCCK where LB =''02'' and GSBH='''+main.Edit2.Text+''' ) and LTLL.SFL=''1'' and convert(smalldatetime,convert(varchar,LTLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+formatdatetime('yyyy/MM/dd',Date)+'''  ');
    sql.add('Group by LTLL.DepID,LTLLSS.CLBH,LTLLSS.SIZ ');
    sql.add('Union All ');
    sql.add('select DepID,CLBH,SIZ,QTY as LastRem from Lastmonth_Out where CKBH in (Select CKBH from LastKCCK where LB =''02'' and GSBH='''+main.Edit2.Text+''' ) and  KCYEAR='''+ayear+''' and KCMonth='''+amonth+''') as tmpRKTLFL ');
    sql.add('group by DepID,CLBH,SIZ ) as NowKC ');
    sql.add('left join ( select LTRK.DepID,LTRKSS.CLBH,LTRKSS.SIZ,SUM(LTRKSS.Qty) as RKQty from LTRKSS,LTRK  ');
    sql.add('where LTRKSS.RKNO=LTRK.RKNO  and LTRK.CKBH in (Select CKBH from LastKCCK where LB =''02''  and GSBH='''+main.Edit2.Text+''' ) and LTRK.SFL=''1'' and convert(smalldatetime,convert(varchar,LTRK.UserDate,111)) between '''+formatdatetime('yyyy/MM/dd',startofthemonth(Date))+''' and '''+formatdatetime('yyyy/MM/dd',Date)+''' ');
    sql.add('Group by LTRK.DepID,LTRKSS.CLBH,LTRKSS.SIZ )  RK on NowKC.DepID=RK.DepID and NowKC.CLBH=RK.CLBH and NowKC.SIZ=RK.SIZ ');
    sql.add('where  IsNull(NowKC.NowLLQty,0)-IsNull(RK.RKQty,0) >0 ');
    //funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
  //
  DepIDList:=TStringlist.Create;
  with qry2 do
  begin
    Active:=false;
    sql.clear;
    sql.add('select * from ( select distinct DepID  from #CLZLKC_LastOut ) A order by substring(DepID,1,1),len(DepID) ');
    Active:=true;
    if RecordCount>0 then
    begin
      for i:=0 to RecordCount-1 do
      begin
        DepIDList.Add(FieldByName('DepID').AsString);
        DBGridEh2.Columns[6+i].FieldName:=DepIDList.Strings[i];
        DBGridEh2.Columns[6+i].Visible:=true;
        DBGridEh2.Columns[6+i].Width:=30;
        qry2.Next;
      end;
    end;
    Active:=false;
  end;
  dtpDTP1.Date:=date-7;
  dtpDTP2.Date:=date;
  DBGridEh2.Columns[4].ReadOnly:=false;
end;

procedure TLYV_RAPborrowCFM.btn2Click(Sender: TObject);
begin

  CalculateLastStock();
  //
  if qryDelDet.RecordCount>0 then
  begin
    qryDelDet.first;
    while not qryDelDet.eof do
    begin
      //---------------------------------------------
      with qry2 do
      begin
        active:=false;
        SQL.Clear;
        SQL.add('select CLBH,SIZ,Qty ');
        SQL.add(' from #CLZLKC_Last   ');
        SQL.add(' where #CLZLKC_Last.CLBH='''+qryDelDet.fieldbyname('CLBH').AsString+''' and #CLZLKC_Last.SIZ='''+qryDelDet.fieldbyname('SIZ').AsString+''' ');
        Active:=true;
      end;
      //-----------------------------------------------------
      //
      IF qry2.Eof THEN
      begin
        showmessage('Pls Check no any stock in warehouse.');
        abort;
      end;
      //
      IF qryDelDet.fieldbyname('QTY').value > qry2.fieldbyname('Qty').value THEN
      begin
        showmessage(qryDelDet.fieldbyname('QTY').AsString+'>'+qry2.fieldbyname('qty').AsString+' stock not enought'  );
        abort;
      end;
      qryDelDet.next;
    end;
    //-------------------------------------------------------------
  end;
    //--------------------------------------------------------------

  Edt1.Text:='';
  try
    if qryDelDet.RecordCount>0 then  //ÈýŒÓ•r
    begin
      qryDelDet.First;
      while not qryDelDet.eof do
      begin
        if qryDelDet.updatestatus=usmodified then
          begin
            if not qryDelDet.fieldbyname('Qty').isnull then
            begin
              updtsql1.apply(ukmodify);
            end else
            begin
              showmessage('Qty can not be empty.');
              abort;
            end;
          end;
        qryDelDet.next;
      end;
      //
      with qry2 do
      begin
         active:=false;
         sql.Clear;
         sql.add('UPDATE LTLLS ');
         sql.add('set LLQTY=ISNULL((select isnull(SUM(QTY),0) AS SQTY ');
         sql.add('                   from LTLLSS');
         sql.add('                   WHERE LTLLSS.LLNO=LTLLS.LLNO AND LTLLSS.CLBH=LTLLS.CLBH  ');
         sql.add('                         and LTLLSS.LLNO='+''''+qryDelMas.FieldByName('LLNO').Value+''''+'');
         sql.add('                   GROUP BY LLNO,CLBH),0) ');
         sql.add('where LTLLS.LLNO='''+qryDelMas.FieldByName('LLNO').Value+'''' );
         execsql;
         close;
      end;
    end;
    //
    with qryDelMas do
    begin
     edit;
     fieldbyname('CFMID').Value:=main.edit1.text;
     fieldbyname('CFMDATE').Value:=date();
     fieldbyname('YN').Value:='5';
     updtsqlUpMas.Apply(ukmodify);
     active:=false;
     active:=true;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;

end;

procedure TLYV_RAPborrowCFM.btn3Click(Sender: TObject);
begin
  qryDelDet.Active:=false;
  qryDelMas.Active:=false;

  qryDelMas.Active:=true;
  qryDelDet.Active:=true;
end;

procedure TLYV_RAPborrowCFM.Qtyrevise1Click(Sender: TObject);
begin
  if qryDelDet.Active=true then
  begin
    qryDelDet.First;
    while not qryDelDet.Eof do
    begin
      if qryDelDet.FieldByName(qryDelMas.FieldByName('DepID').AsString).AsString<>'' then
      begin
        if qryDelDet.FieldByName(qryDelMas.FieldByName('DepID').AsString).Value>=qryDelDet.FieldByName('Qty').Value then
        begin
          qryDelDet.Edit;
          qryDelDet.FieldByName('Qty').Value:=0;
          qryDelDet.Post;
        end else
        begin
          qryDelDet.Edit;
          qryDelDet.FieldByName('Qty').Value:=qryDelDet.FieldByName('Qty').Value-qryDelDet.FieldByName(qryDelMas.FieldByName('DepID').AsString).Value;
          qryDelDet.Post;
          {
          if qryDelDet.FieldByName('Qty').Value>qryDelDet.FieldByName('KCQty').Value  then
            qryDelDet.FieldByName('Qty').Value:=qryDelDet.FieldByName('KCQty').Value;
          }
        end;
      end else
      begin
          {
          qryDelDet.Edit;
          if qryDelDet.FieldByName('Qty').Value>qryDelDet.FieldByName('KCQty').Value  then
            qryDelDet.FieldByName('Qty').Value:=qryDelDet.FieldByName('KCQty').Value;
          qryDelDet.Post;
          }
      end;
      qryDelDet.Next;
    end;
  end;
end;

procedure TLYV_RAPborrowCFM.btn4Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  qryDelDet.active  then
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
      for   i:=0   to   qryDelDet.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=qryDelDet.fields[i].FieldName;
      end;
      eclApp.Cells(1,i+1):=qryDelMas.fieldByName('DepID').FieldName;
      eclApp.Cells(1,i+2):=qryDelMas.fieldByName('PlanDate').FieldName;
      qryDelDet.First;
      j:=2;
      while   not   qryDelDet.Eof   do
      begin
        for   i:=0   to  qryDelDet.fieldcount-1  do
        begin
            eclApp.Cells(j,i+1):=qryDelDet.Fields[i].Value;
        end;
        eclApp.Cells(j,i+1):=qryDelMas.fieldByName('DepID').Value;
        eclApp.Cells(j,i+2):=qryDelMas.fieldByName('PlanDate').Value;
        qryDelDet.Next;
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

end.
