unit MonthReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBTables, DB, ExtCtrls, DBGrids, Grids,dateutils,comobj,
  GridsEh, DBGridEh, Menus, PrnDbgeh;

type
  TMonthReport = class(TForm)
    StringGrid1: TStringGrid;
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Button3: TButton;
    Query1: TQuery;
    Query1SCDate: TDateTimeField;
    Query1DepNo: TStringField;
    Query1DepName: TStringField;
    Query1Qty: TFloatField;
    Query1bzQty: TIntegerField;
    Query1Lack_Qty: TIntegerField;
    Query1Person: TIntegerField;
    DataSource1: TDataSource;
    QDep: TQuery;
    SaveDialog1: TSaveDialog;
    UpdateSQL1: TUpdateSQL;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Label7: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    CB1: TComboBox;
    QTemp: TQuery;
    Query1SCGS: TFloatField;
    Query1DepName2: TStringField;
    DBGridEh1: TDBGridEh;
    Edit2: TEdit;
    Query2: TQuery;
    DS2: TDataSource;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Query1CQQty: TIntegerField;
    Query1QJQty: TIntegerField;
    Query1SJGS: TFloatField;
    Query1Act_Hours: TFloatField;
    Query1SDGS: TCurrencyField;
    Query1Worker_Qty: TIntegerField;
    Query1BZGS: TFloatField;
    Query1BZRate: TFloatField;
    Query1SJRate: TFloatField;
    Query1PRSH: TFloatField;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    PopupMenu2: TPopupMenu;
    Button4: TButton;
    PrintDBGridEh1: TPrintDBGridEh;
    Print1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthReport: TMonthReport;
  sdate,edate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TMonthReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TMonthReport.Button1Click(Sender: TObject);
var a,b,c :word;
i,j,d:integer;
Qty:real;
e:string;
begin
a:=strtoint(CBX1.text);
b:=strtoint(CBX2.text);
c:=1;
sdate:=EncodeDate(a,b,c);
 edate:=endofthemonth(sdate);

 
for i:=0 to stringGrid1.RowCount do      //清空
  begin
    for j:=0 to stringGrid1.ColCount do
      begin
        stringGrid1.Cells[j,i]:='';
      end;
  end;

with QDep do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct SCBB.DepNo,BDepartment.DepName,0 as RecNum from SCBB ');
    sql.add('left join BDepartment on SCBB.DepNo=Bdepartment.ID ');
    sql.add('left join SCBBS on SCBBS.PRONO=SCBB.PRONO ');
    sql.add('where convert(smalldatetime,convert(varchar,SCDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    sql.add('       and SCBB.GSBH='+''''+CB1.Text+'''');
    sql.add('       and BDepartment.DepName like'+''''+'%'+edit1.Text+'%'+'''');
     if CB1.text<>'VR1' then
       begin
         sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;

    sql.add('order by SCBB.DepNo');
    active:=true;
  end;
d:=DaysBetween(sdate,edate);
with StringGrid1 do
  begin
    colcount:=d+3;
    rowcount:=QDep.RecordCount+2;
    for i:=1 to colcount-1 do
      begin
        cells[i,0]:=inttostr(i);
        colwidths[i]:=45;
      end;
    colwidths[0]:=65;
    colwidths[d+2]:=65;
    cells[d+2,0]:='Total';
    QDep.First;
    QDep.cachedupdates:=true;
    QDep.RequestLive:=true;
    for j:=1 to QDep.RecordCount do
      begin
        QDep.Edit;
        QDep.FieldByName('RecNum').Value:=inttostr(j);
        cells[0,j]:=QDep.fieldbyname('DepName').asstring;
        QDep.next;
      end;
  end;


 with Query1 do
   begin
     active:=false;
     sql.clear;

           //將基准產能加上
        sql.add('update SCBBS ');
        sql.add('set BZLB=(select  SCXXCL.BZLB ');
        sql.add('          from (select max(SCXXCL.BZLB) as BZLB,ZLZL.ZLBH,SCXXCL.GXLB ');
        sql.add('                from  ZLZL  ');
        sql.add('                left join DDZL on DDZL.ZLBH=ZLZL.ZLBH ');
        sql.add('                left join SCXXCL on SCXXCL.XieXing=DDZL.XieXIng  ');
        sql.add('                group by ZLZL.ZLBH ,SCXXCL.GXLB) SCXXCL where SCXXCL.ZLBH=SCBBS.SCBH and SCXXCL.GXLB=SCBBS.GXLB )');
        sql.add(' where BZLB is null');
        sql.add('       and exists(select SCBB.ProNo from SCBB where SCBB.ProNo=SCBBS.ProNo');
        sql.add('       and convert(varchar,SCBB.SCDate,111) between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',SDate) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',EDate)+''''+')');


     sql.add('select convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) as SCDate ,SCBB.DepNo,BDepartment.DepName,BDepartment.DepName as DepName2,');
     sql.add('       isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCL.Qty,0) as bzQty,SCRL.SCGS,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,');
     sql.add('        sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS) as Act_Hours,BDepartment.Worker_Qty ');
     sql.add('from SCBB ');
     sql.add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
     sql.add('left join BDepartment on BDepartment.ID=SCBB.DepNo  ');  
     sql.add('left join DDZL on DDZl.ZLBH=SCBBS.SCBH ');
     sql.add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
     sql.add('left join SCBZCL on convert(varchar,SCBZCL.BZDate,111)=convert(varchar,SCBB.SCDate,111) and SCBZCL.DepNo=SCBB.DepNo');
     sql.add('left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCYEAR+'+''''+'/'+''''+'+SCRL.SCMONTH+'+''''+'/'+''''+'+SCRL.SCDay))');
     sql.add('                         =convert(varchar,SCBB.SCDate)  ');
     sql.add('                  and SCRL.DepNO=SCBB.DepNO ');
     sql.add('left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varchar,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo');
     sql.add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('       '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     //sql.add('       and SCBB.DepNo like '+''''+edit3.Text+'%'+'''');
     sql.add('       and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('       and SCBB.GSBH like'+''''+CB1.text+'%'+''''); 
     if CB1.text<>'VR1' then
       begin
         sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
     sql.add('Group by convert(smalldatetime,convert(varchar,SCBB.SCDate,111)),SCBB.DepNo,BDepartment.DepName ,');
     sql.add('         RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS ,SCBZCL.Qty,SCRL.SCGS,BDepartment.Worker_Qty  ');

     sql.add('union  ');

    sql.add('select '+''''+formatdatetime('yyyy/MM/dd',eDate)+''''+' as SCDate ,SCBB.DepNo,'+''''+'Total'+''''+' as DepName,BDepartment.DepName as DepName2,');
    sql.add('        isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCLA.Qty,0) as bzQty,SCRL.SCGS,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,');
    sql.Add('        sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS) as Act_Hours,BDepartment.Worker_Qty ');
    sql.add('from SCBB ');
    sql.add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
    sql.add('left join BDepartment on BDepartment.ID=SCBB.DepNo  ');  
    sql.add('left join DDZL on DDZl.ZLBH=SCBBS.SCBH ');
    sql.add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
    sql.add('left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZCL ');
    sql.add('           where SCBZCL.BZDate between');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    if Checkbox1.checked then
      begin
        sql.add('              and  exists(select convert(varchar,SCBB.SCDate,111) as NowDay from  SCBB ');
        sql.add('                          left join BDepartment on BDepartment.ID=SCBB.DepNO ');
        sql.add('                          where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('                                and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('                                and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
        sql.add('                                and convert(varchar,SCBB.SCDate,111)=convert(varchar,SCBZCL.BZDate,111) )');
      end;
    sql.add('           group by SCBZCL.DepNo ) SCBZCLA  on SCBZCLA.DepNo=SCBB.DepNo');
    sql.add('left join (select DepNo,sum(SCGS) as SCGS from SCRL ');
    sql.add('           where convert(smalldatetime,SCRL.SCYEAR+'+''''+'/'+''''+'+SCRL.SCMONTH+'+''''+'/'+''''+'+SCRL.SCDay) between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',edate)+'''' ); 
     if Checkbox1.checked then
       begin
         sql.add('                and  exists(select convert(varchar,SCBB.SCDate,111) as NowDay from  SCBB ');
         sql.add('                            left join BDepartment on BDepartment.ID=SCBB.DepNO ');
         sql.add('                            where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
         sql.add('                                  '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
         sql.add('                                  and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
         sql.add('                                  and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
         sql.add('                                  and convert(varchar,SCBB.SCDate,111)=convert(smalldatetime,SCRL.SCYEAR+'+''''+'/'+''''+'+SCRL.SCMONTH+'+''''+'/'+''''+'+SCRL.SCDay) )');
       end;
    sql.add('           group by DepNo ) SCRL on SCRL.DepNo=SCBB.DepNO ');
    sql.add('left join (select RSCQ.DepNo,sum(RSCQ.CQQty) as CQQty,sum(RSCQ.QJQty) as QJQty,sum(RSCQ.SDGS) as SDGS,sum(RSCQ.SJGS) as SJGS ');
    sql.add('           from RSCQ where convert(smalldatetime,convert(varchar,RSDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('           group by RSCQ.DepNo) RSCQ on RSCQ.DepNo=SCBB.DepNO    ');
    sql.add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',sDate) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('       and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('       and SCBB.GSBH like'+''''+CB1.text+'%'+'''') ;
     if CB1.text<>'VR1' then
       begin
         sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
    sql.add('Group by SCBB.DepNo,BDepartment.DepName ,SCBZCLA.Qty,SCRL.SCGS,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,BDepartment.Worker_Qty  ');
    sql.add('Order by  SCBB.DepNo,BDepartment.DepName,SCDate,SCBZCLA.Qty ');
    active:=true;
   end;


for i:=1 to Query1.RecordCount do
  begin
    decodedate(Query1.fieldbyname('SCDate').value,a,b,c);
    if QDep.locate('DepNo',Query1.fieldbyname('DepNo').asstring,[]) then
      begin
        j:=strtoint(QDep.fieldbyname('RecNum').Value);
      end;
    with StringGrid1 do
      begin
        if  Query1.fieldbyname('DepName').value<>'Total' then
          begin
            cells[c,j]:=Query1.fieldbyname('Qty').AsString;
          end
          else
            begin
              cells[d+2,j]:=Query1.fieldbyname('Qty').AsString;
            end;
      end;
    Query1.next;
  end;  
with StringGrid1 do
  begin
    Cells[0,rowcount-1]:='Total'  ;
    for  i:=1 to colcount-1 do
      begin
        Qty:=0;
        for j:=1 to rowcount-2 do
          begin
            if Cells[i,j]='' then
              begin
                Qty:=Qty+0;
              end
              else
                begin
                  Qty:=Qty+strtofloat(Cells[i,j]);
                end;
          end;
        cells[i,j]:=floattostr(Qty);
      end;
  end;
query1.First;
Button3.Enabled:=true;

//整理交叉表的內容

with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct NDay ');
    sql.add('from (select  datepart(day, SCBB.SCDate) as NDay from SCBB');
    sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNo ');
    sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
    sql.add('             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('             and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
    if not checkbox1.Checked then
      begin
        sql.add('     union ');
        sql.add('     select datepart(day,SCBZCL.BZDate) as NDay from SCBZCL ');
        sql.add('         left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
        sql.add('         where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
        sql.add('                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('                and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('                and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
      end;
    sql.add(' ) DayList order by NDay');
    active:=true;
  end;

 with Query2 do
   begin
     active:=false;
     sql.clear;
     sql.add('select SCBBS.DepNo,SCBBS.DepName,SB  ');
     while not QTemp.eof do
       begin
         e:=Qtemp.fieldbyname('NDay').asstring;
         sql.add(',sum(case  when NDay='+''''+e+'''');
         sql.add(' then Qty  end) as '+''''+e+'''');
         QTemp.Next;
       end;
     sql.add(',sum(case  when NDay='+''''+'32'+'''');
     sql.add(' then Qty  end) as '+''''+'32'+'''');

     //原表內容      //每日實際產量
     sql.add('from  (select  SCBB.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay  ');
     sql.add('       from SCBBS ');
     sql.add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('              and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
     if CB1.text<>'VR1' then
       begin
         sql.add('             and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
     sql.add('       group by SCBB.DepNo,BDepartment.DepName,datepart(day, SCBB.SCDate)  ');
     sql.add('      union  ');
     sql.add('      select  SCBB.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB,isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay  ');
     sql.add('      from SCBBS ');
     sql.add('      left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('             and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
     if CB1.text<>'VR1' then
       begin
         sql.add('             and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
     sql.add('      group by SCBB.DepNo,BDepartment.DepName  ');

        //每日各部門計劃產量
     sql.add('       union ');
     sql.add('       select SCBZCL.DepNo,BDepartment.DepName,'+''''+' Plan'+''''+' as SB,isnull(SCBZCL.Qty,0) as Qty ,datepart(day, SCBZCL.BZDate) as NDay  ');
     sql.add('       from SCBZCL ');
     sql.add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('              and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');  
     sql.add('       union ');
     sql.add('       select SCBZCL.DepNo,BDepartment.DepName,'+''''+' Plan'+''''+' as SB,isnull(sum(SCBZCL.Qty),0) as Qty ,32 as NDay  ');
     sql.add('       from SCBZCL ');
     sql.add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('              and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
     if Checkbox1.checked then
       begin
         sql.add('              and  exists(select convert(varchar,SCBB.SCDate,111) as NowDay from  SCBB ');
         sql.add('                            left join BDepartment on BDepartment.ID=SCBB.DepNO ');
         sql.add('                          where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
         sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
         sql.add('                                and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
         sql.add('                                and SCBB.GSBH like'+''''+CB1.text+'%'+'''');  
         sql.add('                                and convert(varchar,SCBB.SCDate,111)=convert(varchar,SCBZCL.BZDate,111) )');
       end;
     sql.add('       group by SCBZCL.DepNo,BDepartment.DepName ');
     //計算差額
     sql.add('       union ');
     sql.add('       select SCBZCL.DepNo,SCBZCL.DepName,'+''''+'Diff'+''''+' as SB,SCBBB.Qty-SCBZCL.Qty as Qty ,SCBZCL.NDay  ');
     sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,SCBZCL.Qty,datepart(day, SCBZCL.BZDate) as NDay  ');
     sql.add('             from SCBZCL ');
     sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('                    '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+''''+') SCBZCL');
     sql.add('       left join ( select  SCBB.DepNo,BDepartment.DepName,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay  ');
     sql.add('                   from SCBBS ');
     sql.add('                   left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('                   left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('                   where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('                          '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('                          and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                          and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
     
     if CB1.text<>'VR1' then
       begin
         sql.add('                          and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
     sql.add('                   group by SCBB.DepNo,BDepartment.DepName,datepart(day, SCBB.SCDate)  ');
     sql.add('                   ) SCBBB  on SCBBB.DepNo=SCBZCL.DepNo and SCBBB.NDay=SCBZCL.NDay');
     sql.add('       union '); 
     sql.add('       select SCBZCL.DepNo,SCBZCL.DepName,'+''''+'Diff'+''''+' as SB,SCBBB.Qty-SCBZCL.Qty as Qty ,32 as NDay  ');
     sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,'+''''+' Plan'+''''+' as SB,sum(SCBZCL.Qty) as Qty   ');
     sql.add('             from SCBZCL ');
     sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('                    '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
     if Checkbox1.checked then
       begin
         sql.add('                and  exists(select convert(varchar,SCBB.SCDate,111) as NowDay from  SCBB ');
         sql.add('                            left join BDepartment on BDepartment.ID=SCBB.DepNO ');
         sql.add('                            where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
         sql.add('                                  '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
         sql.add('                                  and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
         sql.add('                                  and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
         sql.add('                                  and convert(varchar,SCBB.SCDate,111)=convert(varchar,SCBZCL.BZDate,111) )');
       end;
     sql.add('             group by SCBZCL.DepNo,BDepartment.DepName) SCBZCL ');
     sql.add('             left join (select  SCBB.DepNo,BDepartment.DepName,isnull(sum(SCBBS.Qty),0) as Qty  ');
     sql.add('                        from SCBBS ');
     sql.add('                        left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('                        left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('                        where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('                               '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('                               and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                               and SCBB.GSBH like'+''''+CB1.text+'%'+''''); 
     if CB1.text<>'VR1' then
       begin
         sql.add('                               and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
     sql.add('                        group by SCBB.DepNo,BDepartment.DepName  ');
     sql.add('                        )SCBBB on SCBBB.DepNo=SCBZCL.DepNo ');
     //計算百分比
     sql.add('       union ');
     sql.add('       select SCBZCL.DepNo,SCBZCL.DepName,'+''''+'Per%'+''''+' as SB,case when SCBZCL.Qty<>0 and SCBZCL.Qty is not null then round(isnull(SCBBB.Qty,0)/SCBZCL.Qty*100,0) end  as Qty ,SCBZCL.NDay  ');
     sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,SCBZCL.Qty ,datepart(day, SCBZCL.BZDate) as NDay  ');
     sql.add('             from SCBZCL ');
     sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('                    '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
     sql.add('                   ) SCBZCL');
     sql.add('       left join ( select  SCBB.DepNo,BDepartment.DepName,isnull(sum(SCBBS.Qty),0) as Qty,datepart(day, SCBB.SCDate) as NDay  ');
     sql.add('                   from SCBBS ');
     sql.add('                   left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('                   left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('                   where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('                          '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('                          and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                          and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
     if CB1.text<>'VR1' then
       begin
         sql.add('                          and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
     sql.add('                   group by SCBB.DepNo,BDepartment.DepName,datepart(day, SCBB.SCDate) ');
     sql.add('                   ) SCBBB  on SCBBB.DepNo=SCBZCL.DepNo and SCBBB.NDay=SCBZCL.NDay');
     sql.add('       union ');
     sql.add('       select SCBZCL.DepNo,SCBZCL.DepName,'+''''+'Per%'+''''+' as SB,case when SCBZCL.Qty<>0 and SCBZCL.Qty is not null then round(isnull(SCBBB.Qty,0)/SCBZCL.Qty*100,0)  end  as Qty ,32 as NDay  ');
     sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,'+''''+' Plan'+''''+' as SB,sum(SCBZCL.Qty) as Qty   ');
     sql.add('             from SCBZCL ');
     sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('                    '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
     if Checkbox1.checked then
       begin
         sql.add('                and  exists(select convert(varchar,SCBB.SCDate,111) as NowDay from  SCBB ');
         sql.add('                            left join BDepartment on BDepartment.ID=SCBB.DepNO ');
         sql.add('                            where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
         sql.add('                                  '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
         sql.add('                                  and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
         sql.add('                                  and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
         sql.add('                                  and convert(varchar,SCBB.SCDate,111)=convert(varchar,SCBZCL.BZDate,111) )');
       end;
     sql.add('             group by SCBZCL.DepNo,BDepartment.DepName) SCBZCL ');
     sql.add('       left join (select  SCBB.DepNo,BDepartment.DepName,isnull(sum(SCBBS.Qty),0) as Qty  ');
     sql.add('                  from SCBBS ');
     sql.add('                  left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('                  left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('                  where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('                         '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
     sql.add('                         and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                         and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
     if CB1.text<>'VR1' then
       begin
         sql.add('                         and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
       end
       else
         begin
           sql.add('                         and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
     sql.add('                  group by SCBB.DepNo,BDepartment.DepName  ');
     sql.add('                  )SCBBB on SCBBB.DepNo=SCBZCL.DepNo ');
     sql.add('            )SCBBS ');

     sql.add('group by   SCBBS.DepNo,SCBBS.DepName,SB   ');
     sql.add('order by   SCBBS.DepNo,SCBBS.DepName,SB');
     active:=true;
   end;
 with DBGrideh1 do
   begin
     columns[0].Width:=0;     
     columns[0].title.caption:='部門編號|DepNo';
     columns[1].Width:=70;
     columns[1].title.caption:='部門名稱|DepName';
     columns[2].Width:=40;
     columns[2].title.caption:='目標|'+columns[2].title.caption;
     for i:=3 to query2.FieldCount-2 do
       begin
         columns[i].Width:=50;
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
           begin
             columns[i].font.color:=cllime;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=cllime;
           end;  
         columns[i].Title.Caption:='日期('+CBX1.text+'/'+CBX2.text+')|'+columns[i].Title.Caption;
       end;
     columns[query2.FieldCount-1].Width:=60;
     columns[query2.FieldCount-1].title.caption:='合計|Total';
   end;
  
case radiogroup1.ItemIndex of
  0:
    begin
      DBGrideh1.Visible:=false;
      StringGrid1.Visible:=false;
      DBGrid1.Align:=alclient;
      DBGrid1.Visible:=true;
      monthreport.caption:='Monthly production rate report';
      label1.Caption:='月產量達成狀況統計表'  ;
    end ;
  1:
    begin
      DBGrid1.Visible:=false;
      DBGrideh1.Visible:=false;
      StringGrid1.Align:=alClient;
      StringGrid1.Visible:=true;
      monthreport.caption:='Monthly actual production output report';
      label1.Caption:='月實際產量統計表'  ;
    end;
  2:
    begin
      DBGrid1.Visible:=false;
      StringGrid1.Visible:=false;
      DBGrideh1.Align:=alClient;
      DBGrideh1.Visible:=true;
      monthreport.caption:='Monthly production output report';
      label1.Caption:='月生產統計表'  ;
    end;
  end;

end;

procedure TMonthReport.Button3Click(Sender: TObject);
begin
{
if edit2.Text='1'  then
  begin
    DBGrid1.Visible:=false;
    StringGrid1.Align:=alClient;
    StringGrid1.Visible:=true;
    edit2.Text:='2' ;
    monthreport.caption:='Monthly actual production output report';
    label1.Caption:='月實際產量統計表'  ;
    abort;
  end ;
if edit2.Text='2'  then
  begin
    StringGrid1.Visible:=false;
    DBGrideh1.Align:=alClient;
    DBGrideh1.Visible:=true;
    edit2.Text:='3' ;
    monthreport.caption:='Monthly production output report';
    label1.Caption:='月生產統計表'  ;
    abort;
  end;
if edit2.Text='3'  then
  begin
    DBGrideh1.Visible:=false;
    DBGrid1.Align:=alclient;
    DBGrid1.Visible:=true;
    edit2.Text:='1' ;
    monthreport.caption:='Monthly production rate report';
    label1.Caption:='月產量達成狀況統計表'  ;
    abort;
  end;  }
end;

procedure TMonthReport.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var y,m,d:word;
i,e:integer;
begin
    decodedate(sdate,y,m,d);
    for i:=1 to 7 do
      begin
        if dayoftheweek(encodedate(y,m,i))=7 then
          begin
            e:=i
          end;
      end;
if ACol<>0 then
  begin
    if ((ACol-e)mod 7=0) and (ACol<>(stringgrid1.ColCount-1)) then
      begin
        with   StringGrid1.Canvas   do
          begin
            Font.Color:=clRed;
          //  Font.Size:=8;
            Font.Style:=[fsbold,fsitalic];
            StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-8, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
           // TextOut(Rect.Left+2,   Rect.Top+3,   StringGrid1.Cells[ACol,   ARow]);
          end;
      end
      else
        StringGrid1.Canvas.TextRect(Rect,Rect.right-Canvas.TextWidth(stringgrid1.Cells[ACol,ARow])-8, Rect.Top+2, stringgrid1.Cells[ACol,ARow] );
  end;

end;

procedure TMonthReport.FormDestroy(Sender: TObject);
begin
MonthReport:=nil;
end;

procedure TMonthReport.FormCreate(Sender: TObject);
var i:integer;
begin
with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    for i:=1 to recordcount do
      begin
        CB1.Items.Add(fieldbyname('GSDH').asstring);
        next;
      end;
    CB1.Text:=main.edit2.Text;
    active:=false;
  end;

end;

procedure TMonthReport.Query1CalcFields(DataSet: TDataSet);
begin
with query1 do
  begin
    if FieldByName('bzQty').value<>0 then
      begin
        FieldByName('person').value:=FieldByName('Qty').value/FieldByName('bzQty').value*100;
      end;
    FieldByName('Lack_Qty').value:=FieldByName('Qty').value-FieldByName('bzQty').value;
    FieldByName('BZGS').value:=FieldByName('Worker_Qty').value*FieldByName('SDGS').value ;
    if FieldByName('BZGS').value<>0 then
      begin
        FieldByName('BZRate').value:=FieldByName('Act_Hours').value/FieldByName('BZGS').value*100 ;
      end;
    if FieldByName('SJGS').value<>0 then
      begin
        FieldByName('SJRate').value:=FieldByName('Act_Hours').value/FieldByName('SJGS').value*100 ;
        FieldByName('PRS/H').value:=FieldByName('Qty').value/FieldByName('SJGS').value ;
      end;
  end;
end;

procedure TMonthReport.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
{
if query1.FieldByName('DepName').value='Total' then
  begin
    dbgrid1.canvas.font.style:=[fsitalic,fsbold];
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;}
if  query1.fieldbyname('Person').Value<100 then
  begin
    //dbgrid1.canvas.font.style:=[fsitalic];
    dbgrid1.canvas.font.color:=clred;
  //  dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
end;

procedure TMonthReport.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
{
if query2.FieldByName('SB').value='Actual' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FFE6E6;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    //dbgrideh1.defaultdrawdatacell(rect,field,state);
  end;
if query2.FieldByName('SB').value='Diff' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FFC1C1;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
   // dbgrideh1.defaultdrawdatacell(rect,field,state);
  end;  }
if query2.FieldByName('SB').value='Per%' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    //dbgrideh1.defaultdrawdatacell(rect,field,state);
  end;
end;

procedure TMonthReport.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if ((query2.FieldByName('32').value>=100) and (query2.FieldByName('SB').value='Per%')) then
  begin
    dbgrideh1.canvas.font.Color:=clBlue;
  end;
if ((query2.FieldByName('32').value<95 ) and (query2.FieldByName('SB').value='Per%')) then
  begin
    dbgrideh1.canvas.font.Color:=clred;
  end;
end;

procedure TMonthReport.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if query1.FieldByName('DepName').value='Total' then
  begin
    dbgrid1.canvas.brush.Color:=$00FCCBCD;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TMonthReport.Query2AfterOpen(DataSet: TDataSet);
var i:integer;
begin
for i:=3 to query2.FieldCount-1 do
  begin
    Tfloatfield(query2.Fields[i]).displayformat:='##,#0' ;
  end;
end;

procedure TMonthReport.RadioGroup1Click(Sender: TObject);
begin

case radiogroup1.ItemIndex of
  0:
    begin
      DBGrideh1.Visible:=false;
      StringGrid1.Visible:=false;
      DBGrid1.Align:=alclient;
      DBGrid1.Visible:=true;
      monthreport.caption:='Monthly production rate report';
      label1.Caption:='月產量達成狀況統計表'  ;
    end ;
  1:
    begin
      DBGrid1.Visible:=false;
      DBGrideh1.Visible:=false;
      StringGrid1.Align:=alClient;
      StringGrid1.Visible:=true;
      monthreport.caption:='Monthly actual production output report';
      label1.Caption:='月實際產量統計表'  ;
    end;
  2:
    begin
      DBGrid1.Visible:=false;
      StringGrid1.Visible:=false;
      DBGrideh1.Align:=alClient;
      DBGrideh1.Visible:=true;
      monthreport.caption:='Monthly production output report';
      label1.Caption:='月生產統計表'  ;
    end;
  end;

end;

procedure TMonthReport.Button4Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin
 if DBGrid1.Visible then
  begin
    if  query1.active  then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('炵苀羶衄假蚾Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          WorkBook:=eclApp.workbooks.Add;
            for   i:=0   to   query1.fieldCount-1   do
              begin
                eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
                eclApp.Cells.item[1,i+1].font.size:='8';
              end;

           query1.First;
           j:=2;
           while   not   query1.Eof   do
             begin
               for   i:=0   to   query1.FieldCount-1   do
                 begin
                   eclApp.Cells(j,i+1):=query1.Fields[i].Value;
                   eclApp.Cells.item[j,i+1].font.size:='8';
                 end;
               query1.Next;
               inc(j);
             end;
          eclapp.columns.autofit;
          eclApp.Visible:=True;
        except
          on   F:Exception   do
            showmessage(F.Message);
        end;
    end;
  end ;
if StringGrid1.visible then
  begin
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('沒有安裝Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
      WorkBook:=eclApp.workbooks.Add;
        for i:=0 to stringgrid1.RowCount-1 do
          begin
            for j:=0 to stringgrid1.ColCount-1 do
              begin
                eclApp.Cells(i+3,j+1):=stringgrid1.cells[j,i];
              end;
          end;
     eclapp.columns.autofit;
      eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end;
 if DBGrideh1.Visible then
  begin
    if  query2.active  then
      begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('炵苀羶衄假蚾Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          WorkBook:=eclApp.workbooks.Add;
            for   i:=0   to   query2.fieldCount-1   do
              begin
                eclApp.Cells(1,i+1):=query2.fields[i].FieldName;
                eclApp.Cells.item[1,i+1].font.size:='8';
              end;

         query2.First;
         j:=2;
         while   not   query2.Eof   do
           begin
             for   i:=0   to   query2.FieldCount-1   do
               begin
                 eclApp.Cells(j,i+1):=query2.Fields[i].Value;
                 eclApp.Cells.item[j,i+1].font.size:='8';
               end;
             query2.Next;
             inc(j);
           end;
        eclapp.columns.autofit;
        eclApp.Visible:=True;
      except
        on   F:Exception   do
          showmessage(F.Message);
      end;
    end;
  end ;


end;

procedure TMonthReport.Print1Click(Sender: TObject);
begin

printdbgrideh1.preview;
end;

procedure TMonthReport.PrintDBGridEh1BeforePrint(Sender: TObject);
begin

PrintDBGridEh1.SetSubstitutes(['%[NDate]',CBX1.text+'/'+CBX2.text,'%[Factory]',CB1.text,'%[Department]',Edit1.text]);
//PrintDBGridEh1.SetSubstitutes(['%[date]',,'%[header]','設備標准達成率']);
end;

end.


