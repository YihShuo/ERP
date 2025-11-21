unit DailyRep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls,OleServer ,
  DBCtrls, ComCtrls,comobj, GridsEh, DBGridEh,dateutils, PrnDbgeh;

type
  TDailyRep = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;       
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Query1: TQuery;
    DS1: TDataSource;
    PopupMenu1: TPopupMenu;
    NN1: TMenuItem;
    NN2: TMenuItem;
    NN3: TMenuItem;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Label5: TLabel;
    scbbs: TQuery;
    DS2: TDataSource;
    SCBBSS: TQuery;
    DS3: TDataSource;
    SCBBSSXXCC: TStringField;
    SCBBSSQty: TFloatField;
    Query1SCDate: TStringField;
    Query1DepNo: TStringField;
    Query1DepName: TStringField;
    Query1Qty: TFloatField;
    Query1bzQty: TIntegerField;
    QTemp: TQuery;
    Edit1: TEdit;
    Query1Lack_Qty: TFloatField;
    Query1Person: TFloatField;
    Label6: TLabel;
    CB1: TComboBox;
    Check: TCheckBox;
    Query1SCGS: TFloatField;
    Query1DepName2: TStringField;
    Label1: TLabel;
    scbbsSCDate: TStringField;
    scbbsProNo: TStringField;
    scbbsTime: TStringField;
    scbbsSCBH: TStringField;
    scbbsGXLB: TStringField;
    scbbsProQty: TFloatField;
    Query1CQQty: TIntegerField;
    Query1QJQty: TIntegerField;
    Query1SJGS: TFloatField;
    Query1SDGS: TCurrencyField;
    Query1Worker_Qty: TIntegerField;
    Query1Act_Hours: TFloatField;
    Query1BZGS: TFloatField;
    Query1BZRate: TFloatField;
    Query1SJRate: TFloatField;
    Query1PRSH: TFloatField;
    RadioGroup1: TRadioGroup;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid2: TDBGridEh;
    DBGrid3: TDBGridEh;
    DBGrid1: TDBGridEh;
    DBGridEh1: TDBGridEh;
    Query2: TQuery;
    DS4: TDataSource;
    PopupMenu2: TPopupMenu;
    EXCEL1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    PrintDBGridEh2: TPrintDBGridEh;
    Print1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Query2AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure EXCEL1Click(Sender: TObject);
    procedure NN3Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure PrintDBGridEh2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyRep: TDailyRep;

implementation

uses main1;

{$R *.dfm}

procedure TDailyRep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDailyRep.FormCreate(Sender: TObject);
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
DTP1.Date:=date-7;
DTP2.date:=date-1;

end;

procedure TDailyRep.Button1Click(Sender: TObject);
var e:string;
 i:integer;
begin
{with QTemp do
  begin
    active:=false;
    active:=true;
    if recordcount>0 then
      begin
        showmessage('Pls setup model capicity first.');
        abort;
      end;
    active:=false;
  end; }

with Query1 do
  begin
    active:=false;
    sql.Clear;   
    //將產量類型先取最新產量
    if not Check.Checked then
      begin

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

        sql.add('        and convert(varchar,SCBB.SCDate,111) between ');
        sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+')');


        sql.add('select convert(varchar,SCBB.SCDate,111) as SCDate ,SCBB.DepNo,BDepartment.DepName,BDepartment.DepName as DepName2,');
        sql.add('       isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCL.Qty,0) as bzQty,SCRL.SCGS,');
        sql.add('       RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS) as Act_Hours,BDepartment.Worker_Qty ');
        sql.add('from SCBB ');
        sql.add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
        sql.add('left join BDepartment on BDepartment.ID=SCBB.DepNo  ');
        sql.add('left join SCBZCL on SCBZCL.BZDate=SCBB.SCDate and SCBZCL.DepNo=SCBB.DepNo');
        sql.add('left join DDZL on DDZl.ZLBH=SCBBS.SCBH ');
        sql.add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
        sql.add('left join SCRL on convert(varchar,convert(smalldatetime,SCRL.SCYEAR+'+''''+'/'+''''+'+SCRL.SCMONTH+'+''''+'/'+''''+'+SCRL.SCDay))');
        sql.add('                         =convert(varchar,SCBB.SCDate)  ');
        sql.add('                  and SCRL.DepNO=SCBB.DepNO ');   
        sql.add('left join  RSCQ on convert(varchar,RSCQ.RSDate,111)=convert(varchar,SCBB.SCDate,111) and RSCQ.DepNo=SCBB.DepNo');
        sql.add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
        //sql.add('       and SCBB.DepNo like '+''''+edit3.Text+'%'+'''');
        sql.add('       and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.add('       and SCBBS.SCBH like '+''''+edit2.text+'%'+'''');
        sql.add('       and SCBB.GSBH like'+''''+CB1.text+'%'+'''');  
        if CB1.text<>'VR1' then
          begin
            sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
          end
          else
            begin
              sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
            end;
        sql.add('Group by convert(varchar,SCBB.SCDate,111) ,SCBB.DepNo,BDepartment.DepName ,SCBZCL.Qty,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS ,SCRL.SCGS,BDepartment.Worker_Qty');

        sql.add('union all ');
      end;

    sql.add('select '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''''+' as SCDate ,SCBB.DepNO,'+''''+'Total'+''''+' as DepName,BDepartment.DepName as DepName2,');
    sql.add('        isnull(sum(SCBBS.Qty),0) as Qty,isnull(SCBZCLA.Qty,0) as bzQty,SCRL.SCGS,');
    sql.add('        RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS');
    sql.Add('        ,sum(isnull(SCBBS.Qty,0)*SCXXCL.XXGS) as Act_Hours,BDepartment.Worker_Qty ');
    sql.add('from SCBB ');
    sql.add('left join SCBBS on  SCBB.ProNo=SCBBS.ProNo');
    sql.add('left join BDepartment on BDepartment.ID=SCBB.DepNo  ');
    sql.add('left join (select sum(SCBZCL.Qty) as Qty,SCBZCL.DepNo from SCBZCL ');
    sql.add('           where SCBZCL.BZDate between');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('           group by SCBZCL.DepNo ) SCBZCLA  on SCBZCLA.DepNo=SCBB.DepNo');
    sql.add('left join (select DepNo,sum(SCGS) as SCGS from SCRL ');
    sql.add('           where convert(smalldatetime,SCRL.SCYEAR+'+''''+'/'+''''+'+SCRL.SCMONTH+'+''''+'/'+''''+'+SCRL.SCDay) between ');
    sql.add('           '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''' );
    sql.add('           group by DepNo ) SCRL on SCRL.DepNo=SCBB.DepNO ');   
    sql.add('left join (select RSCQ.DepNo,avg(RSCQ.CQQty) as CQQty,avg(RSCQ.QJQty) as QJQty,sum(RSCQ.SDGS) as SDGS,sum(RSCQ.SJGS) as SJGS ');
    sql.add('           from RSCQ where convert(smalldatetime,convert(varchar,RSDate,111)) between ');
    sql.add('                 '''+formatdatetime('yyyy/MM/dd',DTP1.date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.date)+'''');
    sql.add('           group by RSCQ.DepNo) RSCQ on RSCQ.DepNo=SCBB.DepNO    ');
    sql.add('left join DDZL on DDZl.ZLBH=SCBBS.SCBH ');
    sql.add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=SCBBS.BZLB');
    sql.add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('       and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('       and SCBBS.SCBH like '+''''+edit2.text+'%'+'''');
    sql.add('       and SCBB.GSBH like'+''''+CB1.text+'%'+'''') ;  
    if CB1.text<>'VR1' then
      begin
        sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
      end
       else
         begin
           sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
         end;
    sql.add('Group by SCBB.DepNo,BDepartment.DepName,SCBZCLA.Qty,SCRL.SCGS,RSCQ.CQQty,RSCQ.QJQty,RSCQ.SDGS,RSCQ.SJGS,BDepartment.Worker_Qty');
    sql.add('Order by  SCBB.DepNo,BDepartment.DepName,SCDate,SCBZCLA.Qty ');
    active:=true;
  end;
scbbs.active:=true;
scbbss.Active:=true;


//整理交叉表的內容

with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select  NDay ');
    sql.add('from (select  convert(varchar,SCBB.SCDate,111) as NDay from SCBB');
    sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNo ');
    sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('             and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
    sql.add('     union ');
    sql.add('     select convert(varchar,SCBZCL.BZDate,111) as NDay from SCBZCL ');
    sql.add('         left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
    sql.add('         where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    sql.add('                '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('                and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
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
     sql.add(',sum(case  when NDay='+''''+'Total'+'''');
     sql.add(' then Qty  end) as '+''''+'Total'+'''');

     //原表內容      //每日實際產量
     sql.add('from  (select  SCBB.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB,sum(SCBBS.Qty) as Qty,convert(varchar,SCBB.SCDate,111) as NDay  ');
     sql.add('       from SCBBS ');
     sql.add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('              '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
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
     //sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
     sql.add('       group by SCBB.DepNo,BDepartment.DepName,convert(varchar,SCBB.SCDate,111)  ');
     sql.add('      union   all');
     sql.add('      select  SCBB.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB,isnull(sum(SCBBS.Qty),0) as Qty,'+''''+'Total'+''''+' as NDay  ');
     sql.add('      from SCBBS ');
     sql.add('      left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('             '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
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
     sql.add('       union  all');
     sql.add('       select SCBZCL.DepNo,BDepartment.DepName,'+''''+' Plan'+''''+' as SB,isnull(SCBZCL.Qty,0) as Qty ,convert(varchar,SCBZCL.BZDate,111) as NDay  ');
     sql.add('       from SCBZCL ');
     sql.add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('              '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
     sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('              and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
     sql.add('       union ');
     sql.add('       select SCBZCL.DepNo,BDepartment.DepName,'+''''+' Plan'+''''+' as SB,isnull(sum(SCBZCL.Qty),0) as Qty ,'+''''+'Total'+''''+' as NDay  ');
     sql.add('       from SCBZCL ');
     sql.add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('              '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
     sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('              and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
     sql.add('       group by SCBZCL.DepNo,BDepartment.DepName ');
     //計算差額
     sql.add('       union  all');
     sql.add('       select SCBZCL.DepNo,SCBZCL.DepName,'+''''+'Diff'+''''+' as SB,SCBBB.Qty-SCBZCL.Qty as Qty ,SCBZCL.NDay  ');
     sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,SCBZCL.Qty,convert(varchar,SCBZCL.BZDate,111) as NDay  ');
     sql.add('             from SCBZCL ');
     sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('                    '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
     sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+''''+') SCBZCL');
     sql.add('       left join ( select  SCBB.DepNo,BDepartment.DepName,sum(SCBBS.Qty) as Qty,convert(varchar,SCBB.SCDate,111) as NDay  ');
     sql.add('                   from SCBBS ');
     sql.add('                   left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('                   left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('                   where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('                          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
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
     sql.add('                   group by SCBB.DepNo,BDepartment.DepName,convert(varchar,SCBB.SCDate,111)  ');
     sql.add('                   ) SCBBB  on SCBBB.DepNo=SCBZCL.DepNo and SCBBB.NDay=SCBZCL.NDay');
     sql.add('       union  all');
     sql.add('       select SCBZCL.DepNo,SCBZCL.DepName,'+''''+'Diff'+''''+' as SB,SCBBB.Qty-SCBZCL.Qty as Qty ,'+''''+'Total'+''''+' as NDay  ');
     sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,'+''''+' Plan'+''''+' as SB,sum(SCBZCL.Qty) as Qty   ');
     sql.add('             from SCBZCL ');
     sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('                    '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
     sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
     sql.add('             group by SCBZCL.DepNo,BDepartment.DepName) SCBZCL ');
     sql.add('             left join (select  SCBB.DepNo,BDepartment.DepName,isnull(sum(SCBBS.Qty),0) as Qty  ');
     sql.add('                        from SCBBS ');
     sql.add('                        left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('                        left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('                        where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('                               '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
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
     sql.add('       union  all');
     sql.add('       select SCBZCL.DepNo,SCBZCL.DepName,'+''''+'Per%'+''''+' as SB,case when SCBZCL.Qty<>0 and SCBZCL.Qty is not null then round(isnull(SCBBB.Qty,0)/SCBZCL.Qty*100,0) end  as Qty ,SCBZCL.NDay  ');
     sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,SCBZCL.Qty ,convert(varchar,SCBZCL.BZDate,111) as NDay  ');
     sql.add('             from SCBZCL ');
     sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('                    '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
     sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
     sql.add('                   ) SCBZCL');
     sql.add('       left join ( select  SCBB.DepNo,BDepartment.DepName,isnull(sum(SCBBS.Qty),0) as Qty,convert(varchar,SCBB.SCDate,111) as NDay  ');
     sql.add('                   from SCBBS ');
     sql.add('                   left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('                   left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('                   where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('                          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
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
     sql.add('                   group by SCBB.DepNo,BDepartment.DepName,convert(varchar,SCBB.SCDate,111) ');
     sql.add('                   ) SCBBB  on SCBBB.DepNo=SCBZCL.DepNo and SCBBB.NDay=SCBZCL.NDay');
     sql.add('       union  all');
     sql.add('       select SCBZCL.DepNo,SCBZCL.DepName,'+''''+'Per%'+''''+' as SB,case when SCBZCL.Qty<>0 and SCBZCL.Qty is not null then round(isnull(SCBBB.Qty,0)/SCBZCL.Qty*100,0)  end  as Qty ,'+''''+'Total'+''''+' as NDay  ');
     sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,'+''''+' Plan'+''''+' as SB,sum(SCBZCL.Qty) as Qty   ');
     sql.add('             from SCBZCL ');
     sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
     sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
     sql.add('                    '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
     sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
     sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
     sql.add('             group by SCBZCL.DepNo,BDepartment.DepName) SCBZCL ');
     sql.add('       left join (select  SCBB.DepNo,BDepartment.DepName,isnull(sum(SCBBS.Qty),0) as Qty  ');
     sql.add('                  from SCBBS ');
     sql.add('                  left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
     sql.add('                  left join BDepartment on BDepartment.ID=SCBB.DepNO ');
     sql.add('                  where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
     sql.add('                         '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
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
         columns[i].Width:=65;
         columns[i].title.font.size:=8;
         if dayoftheweek(strtodate(columns[i].title.caption))=7 then
           begin
             columns[i].font.color:=cllime;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=cllime;
           end;  
         columns[i].Title.Caption:='日期|'+columns[i].Title.Caption;
       end;
     columns[query2.FieldCount-1].Width:=60;
     columns[query2.FieldCount-1].title.caption:='合計|Total';
   end;
end;

procedure TDailyRep.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  SCBBS.active:=false;
  SCBBSS.Active:=false;
  if  query1.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query1.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query1.fields[i].FieldName;
          end;
        query1.First;
        j:=2;
        while   not   query1.Eof   do
          begin
            for   i:=0   to   query1.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=query1.Fields[i].Value;
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

    SCBBS.active:=true;
    SCBBSS.Active:=true;
end;

procedure TDailyRep.DBGrid1TitleClick(Column: TColumn);
{var
 temp, title: string;
 las:integer;   }
begin {
if (not Query1.Active) or Query1.RequestLive then
  begin
    abort;
  end;
 temp := Column.FieldName;
 if temp='SCDate' then
   begin
     Query1.Close;
     las:=pos('Order',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+'Order by SCBB.SCDate ,SCBB.DepNo,BDepartment.DepName,SCBZCL.Qty';
     Query1.Active:=true;
   end;
  if temp='DepNo' then
   begin
     Query1.Close;
     las:=pos('Order',Query1.SQL.Text);
     Query1.SQL.text:=copy(Query1.SQL.text,1,las-1)+' Order by SCBB.DepNo,SCBB.SCDate';
     Query1.Active:=true;
   end;  }

end;

procedure TDailyRep.Query1CalcFields(DataSet: TDataSet);
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

procedure TDailyRep.FormDestroy(Sender: TObject);
begin
DailyRep:=nil;
end;

procedure TDailyRep.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
with DBGrid1 do
  begin
    case radiogroup1.ItemIndex of
      0:
        begin
          if  query1.FieldByName('Person').value<100 then
            begin
              dbgrid1.canvas.font.color:=clred;
            end;
        end;
      1:
        begin
          if  query1.FieldByName('BZRate').value<100 then
            begin
              dbgrid1.canvas.font.color:=clred;
            end;
        end;
      2:
        begin
          if  query1.FieldByName('SJRate').value<100 then
            begin
              dbgrid1.canvas.font.color:=clred;
            end;
        end;
      3:
        begin
          if  query1.FieldByName('Person').value<100 then
            begin
              dbgrid1.canvas.font.color:=clred;
            end;
        end;
    end;
  end;

 {
if query1.FieldByName('DepNO').value='zTotal' then
  begin
    dbgrid1.canvas.font.style:=[fsitalic,fsbold];
    dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end;
if query1.FieldByName('Person').value<100 then
  begin
    dbgrid1.canvas.font.color:=clred;
   // dbgrid1.defaultdrawcolumncell(rect,datacol,column,state);
  end; }

end;

procedure TDailyRep.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if (query1.FieldByName('DepName').value='Total') and (not check.Checked) then
  begin
    dbgrid1.canvas.brush.Color:=$00FCCBCD;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TDailyRep.Query1AfterOpen(DataSet: TDataSet);
var i:integer;
begin
with DBGrid1 do
  begin
    for i:=3 to fieldcount-1 do
      begin
        columns[i].width:=0 ;
      end; 
    if check.Checked then
      begin
        columns[0].width:=0 ;
        columns[1].fieldname:='DepName2' ;
        //columns[14].Width:=68;
      end
      else
        begin
          columns[0].width:=85 ;
          columns[1].fieldname:='DepName' ;
          //columns[14].Width:=0;
        end;
   { if check.Checked then
      begin
        columns[17].Width:=68;
      end;  }
    if check.checked then
      begin
        footerrowcount:=1;
        case radiogroup1.ItemIndex of  
          0:
            begin
              Columns[2].Footer.ValueType := fvtSum;
              columns[3].Width:=65;
              Columns[3].Footer.ValueType := fvtSum;
              columns[4].Width:=65;
              Columns[4].Footer.ValueType := fvtSum;
              columns[5].Width:=65;
              Columns[5].Footer.ValueType := fvtavg;
              columns[6].Width:=65;
              Columns[6].Footer.ValueType := fvtavg;
            end;
          1:
            begin
              Columns[2].Footer.ValueType := fvtSum;
              columns[7].Width:=65;
              Columns[7].Footer.ValueType := fvtavg;
              columns[8].Width:=65;
              Columns[8].Footer.ValueType := fvtSum;
              columns[11].Width:=70;
              Columns[11].Footer.ValueType := fvtSum;
              columns[12].Width:=65;
              Columns[12].Footer.ValueType := fvtSum;
              columns[13].Width:=85;
              Columns[13].Footer.ValueType := fvtavg;
            end;
          2:
            begin
              Columns[2].Footer.ValueType := fvtSum;
              columns[7].Width:=65;
              Columns[7].Footer.ValueType := fvtSum;
              columns[9].Width:=65;
              Columns[9].Footer.ValueType := fvtSum;
              columns[10].Width:=65;
              Columns[10].Footer.ValueType := fvtSum;
              columns[11].Width:=75;
              Columns[11].Footer.ValueType := fvtSum;
              columns[14].Width:=65;
              Columns[14].Footer.ValueType := fvtSum;
              columns[15].Width:=75;
              Columns[15].Footer.ValueType := fvtavg;
              columns[16].Width:=75;
              Columns[16].Footer.ValueType := fvtavg;
            end;
          3:
            begin
              Columns[2].Footer.ValueType := fvtSum;
              columns[3].Width:=65;
              Columns[3].Footer.ValueType := fvtSum;
              columns[4].Width:=65;
              Columns[4].Footer.ValueType := fvtSum;
              columns[5].Width:=65;
              Columns[5].Footer.ValueType := fvtavg;
              columns[6].Width:=65;
              Columns[6].Footer.ValueType := fvtavg;
              columns[7].Width:=65;
              Columns[7].Footer.ValueType := fvtavg;
              columns[8].Width:=65;
              Columns[8].Footer.ValueType := fvtSum;
              columns[9].Width:=65;
              Columns[9].Footer.ValueType := fvtSum;
              columns[10].Width:=65;
              Columns[10].Footer.ValueType := fvtSum;
              columns[11].Width:=75;
              Columns[11].Footer.ValueType := fvtSum;
              columns[12].Width:=65;
              Columns[12].Footer.ValueType := fvtSum;
              columns[13].Width:=85;
              Columns[13].Footer.ValueType := fvtavg;
              columns[14].Width:=65;
              Columns[14].Footer.ValueType := fvtSum;
              columns[15].Width:=75;
              Columns[15].Footer.ValueType := fvtavg;
              columns[16].Width:=80;
              Columns[16].Footer.ValueType := fvtavg;
            end;
        end;
      end
      else
        begin
          footerrowcount:=0;
          case radiogroup1.ItemIndex of
          0:
            begin
              columns[3].Width:=65;
              columns[4].Width:=70;
              columns[5].Width:=65;
              columns[6].Width:=65;
            end;
          1:
            begin
              //columns[6].Width:=54;
              columns[7].Width:=65;
              columns[8].Width:=65;
              //columns[9].Width:=52;
              //columns[10].Width:=54;
              columns[11].Width:=75;
              columns[12].Width:=65;
              columns[13].Width:=85;
            end;
          2:
            begin
              //columns[6].Width:=54;
              columns[7].Width:=65;
              columns[9].Width:=65;
              columns[10].Width:=65;
              columns[11].Width:=75;
              columns[14].Width:=65;
              columns[15].Width:=75;
              columns[16].Width:=75;
            end;
          3:
            begin
              columns[3].Width:=65;
              columns[4].Width:=65;
              columns[5].Width:=65;
              columns[6].Width:=65;
              columns[7].Width:=65;
              columns[8].Width:=65;
              columns[9].Width:=65;
              columns[10].Width:=65;
              columns[11].Width:=75;
              columns[12].Width:=65;
              columns[13].Width:=85;
              columns[14].Width:=65;
              columns[15].Width:=75;
              columns[16].Width:=75;
            end;
        end;
      end;
  end;
end;

procedure TDailyRep.RadioGroup1Click(Sender: TObject);

var i:integer;
begin
if radiogroup1.itemindex=4 then
  begin
    panel2.Visible:=false;
    DBGrideh1.align:=alclient;
    DBGrideh1.visible:=true;
  end
    else
      begin  
        panel2.Visible:=true;
        DBGrideh1.visible:=false;
      end;

with DBGrid1 do
  begin
    for i:=3 to fieldcount-1 do
      begin
        columns[i].width:=0 ;
      end;
    if check.Checked then
      begin
        columns[17].Width:=68;
      end;
    if check.checked then
      begin
        footerrowcount:=1;
        case radiogroup1.ItemIndex of  
          0:
            begin
              Columns[2].Footer.ValueType := fvtSum; 
              columns[3].Width:=53;
              Columns[3].Footer.ValueType := fvtSum;
              columns[4].Width:=59;
              Columns[4].Footer.ValueType := fvtSum;
              columns[5].Width:=51;
              Columns[5].Footer.ValueType := fvtavg;
              columns[6].Width:=54;
              Columns[7].Footer.ValueType := fvtavg;
            end;
          1:
            begin
              Columns[2].Footer.ValueType := fvtSum;
              //columns[6].Width:=54;
              columns[7].Width:=55;
              Columns[7].Footer.ValueType := fvtavg;
              columns[8].Width:=58;
              Columns[8].Footer.ValueType := fvtSum;
              //columns[9].Width:=52;
              //columns[10].Width:=54;
              columns[11].Width:=66;
              Columns[11].Footer.ValueType := fvtSum;
              columns[12].Width:=52;
              Columns[12].Footer.ValueType := fvtSum;
              columns[13].Width:=74;
              Columns[13].Footer.ValueType := fvtavg;
            end;
          2:
            begin
              Columns[2].Footer.ValueType := fvtSum;
              //columns[6].Width:=54;
              columns[7].Width:=55;
              Columns[7].Footer.ValueType := fvtSum;
              columns[9].Width:=52;
              Columns[9].Footer.ValueType := fvtSum;
              columns[10].Width:=54;
              Columns[10].Footer.ValueType := fvtSum;
              columns[11].Width:=66;
              Columns[11].Footer.ValueType := fvtSum;
              columns[14].Width:=52;
              Columns[14].Footer.ValueType := fvtSum;
              columns[15].Width:=65;
              Columns[7].Footer.ValueType := fvtavg;
              columns[16].Width:=68;
              Columns[7].Footer.ValueType := fvtavg;
            end;
          3:
            begin
              columns[3].Width:=53;
              columns[4].Width:=59;
              columns[5].Width:=51;
              columns[6].Width:=54;
              columns[7].Width:=55;
              columns[8].Width:=58;
              columns[9].Width:=52;
              columns[10].Width:=54;
              columns[11].Width:=66;
              columns[12].Width:=52;
              columns[13].Width:=74;
              columns[14].Width:=52;
              columns[15].Width:=65;
              columns[16].Width:=68;
            end;
        end;
      end
      else
        begin 
          footerrowcount:=0;
          case radiogroup1.ItemIndex of
          0:
            begin
              columns[3].Width:=53;
              columns[4].Width:=59;
              columns[5].Width:=51;
              columns[6].Width:=54;
            end;
          1:
            begin
              //columns[6].Width:=54;
              columns[7].Width:=55;
              columns[8].Width:=58;
              //columns[9].Width:=52;
              //columns[10].Width:=54;
              columns[11].Width:=66;
              columns[12].Width:=52;
              columns[13].Width:=74;
            end;
          2:
            begin
              //columns[6].Width:=54;
              columns[7].Width:=55;
              columns[9].Width:=52;
              columns[10].Width:=54;
              columns[11].Width:=66;
              columns[14].Width:=52;
              columns[15].Width:=65;
              columns[16].Width:=68;
            end;
          3:
            begin
              columns[3].Width:=53;
              columns[4].Width:=59;
              columns[5].Width:=51;
              columns[6].Width:=54;
              columns[7].Width:=55;
              columns[8].Width:=58;
              columns[9].Width:=52;
              columns[10].Width:=54;
              columns[11].Width:=66;
              columns[12].Width:=52;
              columns[13].Width:=74;
              columns[14].Width:=52;
              columns[15].Width:=65;
              columns[16].Width:=68;
            end;
        end;
      end;
  end;

end;

procedure TDailyRep.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

if ((query2.FieldByName('Total').value>=100) and (query2.FieldByName('SB').value='Per%')) then
  begin
    dbgrideh1.canvas.font.Color:=clBlue;
  end;
if ((query2.FieldByName('Total').value<100 ) and (query2.FieldByName('SB').value='Per%')) then
  begin
    dbgrideh1.canvas.font.Color:=clred;
  end;
end;

procedure TDailyRep.Query2AfterOpen(DataSet: TDataSet);
var i:integer;
begin
for i:=3 to query2.FieldCount-1 do
  begin
    Tfloatfield(query2.Fields[i]).displayformat:='##,#0' ;
  end;
end;

procedure TDailyRep.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

if query2.FieldByName('SB').value='Per%' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    //dbgrideh1.defaultdrawdatacell(rect,field,state);
  end;
end;

procedure TDailyRep.EXCEL1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
  begin
  if  query2.active  then
    begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Mcrosoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    try
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   query2.fieldCount-1   do
          begin
              eclApp.Cells(1,i+1):=query2.fields[i].FieldName;
          end;
        query2.First;
        j:=2;
        while   not   query2.Eof   do
          begin
            for   i:=0   to   query2.FieldCount-1   do
              begin
                eclApp.Cells(j,i+1):=query2.Fields[i].Value;
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


end;

procedure TDailyRep.NN3Click(Sender: TObject);
begin

PrintDBGridEh1.Preview  ;
end;

procedure TDailyRep.Print1Click(Sender: TObject);
begin

PrintDBGridEh2.Preview  ;
end;

procedure TDailyRep.PrintDBGridEh1BeforePrint(Sender: TObject);
begin

case radiogroup1.itemindex of
  0:
    begin
      PrintDBGridEh1.SetSubstitutes(['%[date]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'--'+formatdatetime('yyyy/MM/dd',DTP2.Date),'%[header]','計劃達成率']);

    end;
  1:
    begin
      PrintDBGridEh1.SetSubstitutes(['%[date]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'--'+formatdatetime('yyyy/MM/dd',DTP2.Date),'%[header]','設備標准達成率']);
    end;
  2:
    begin
      PrintDBGridEh1.SetSubstitutes(['%[date]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'--'+formatdatetime('yyyy/MM/dd',DTP2.Date),'%[header]','企劃標准達成率']);
    end;  
  3:
    begin
      PrintDBGridEh1.SetSubstitutes(['%[date]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'--'+formatdatetime('yyyy/MM/dd',DTP2.Date),'%[header]','計劃&設備&企劃標准達成率']);
    end;
  end;


end;

procedure TDailyRep.PrintDBGridEh2BeforePrint(Sender: TObject);
begin

PrintDBGridEh2.SetSubstitutes(['%[date]',formatdatetime('yyyy/MM/dd',DTP1.Date)+'--'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

end.
