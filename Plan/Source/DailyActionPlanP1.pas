unit DailyActionPlanP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, GridsEh, DBGridEh, PrnDbgeh, StdCtrls,
  ComCtrls, ExtCtrls,dateutils,comobj;

type
  TDailyActionPlanP = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    Edit1: TEdit;
    CB1: TComboBox;
    PrintDBGridEh2: TPrintDBGridEh;
    DBGridEh1: TDBGridEh;
    QTemp: TQuery;
    Query2: TQuery;
    DS4: TDataSource;
    PopupMenu2: TPopupMenu;
    EXCEL1: TMenuItem;
    Print1: TMenuItem;
    DTP2: TDateTimePicker;
    Label3: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure Print1Click(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure PrintDBGridEh2BeforePrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyActionPlanP: TDailyActionPlanP;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}

procedure TDailyActionPlanP.FormDestroy(Sender: TObject);
begin
  DailyActionPlanP:=nil;
end;

procedure TDailyActionPlanP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDailyActionPlanP.Button1Click(Sender: TObject);
  var e:string;
      i:integer;
begin

//整理交叉表的內容

  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select NDay ');
    sql.add('from (select  convert(varchar,SCBB.SCDate,11) as NDay from SCBB');
    sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNo ');
    sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('             and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
    sql.add('      union ');
    sql.add('      select convert(varchar,SCBZCL.BZDate,11) as NDay from SCBZCL ');
    sql.add('      left join BDepartment on BDepartment.ID=SCBZCL.DepNo ');
    sql.add('      where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    sql.add('             '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('             and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
    sql.add('     ) DayList order by NDay');
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
      sql.add('     then Qty  end) as '+''''+e+'''');
      QTemp.Next;
    end;
    sql.add('   ,sum(case  when NDay='+''''+'Total'+'''');
    sql.add('        then Qty  end) as '+''''+'Total'+'''');

    //原表內容      //每日實際產量
    sql.add('from  (select SCBB.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB,sum(SCBBS.Qty) as Qty,convert(varchar,SCBB.SCDate,11) as NDay  ');
    sql.add('       from SCBBS ');
    sql.add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    sql.add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('              '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('              and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
    if CB1.text<>'VR1' then
    begin
      sql.add('            and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end
    else
    begin
      sql.add('            and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end;
    //sql.add('       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    sql.add('       group by SCBB.DepNo,BDepartment.DepName,convert(varchar,SCBB.SCDate,11)  ');
    if FormatDatetime('YYYYMMDD',DTP2.Date)=FormatDatetime('YYYYMMDD',NDate) then
    begin
      sql.add('     union  all');
      sql.add('     select  SMZL.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,convert(varchar,SMZL.ScanDate,11) as NDay ');
      sql.add('     from SMZL ');
      sql.add('     left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR ');
      sql.add('     left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      sql.add('     left join BDepartment on BDepartment.ID=SMZL.DepNO ');
      sql.add('     where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between ');
      sql.add('            '''+formatdatetime('yyyy/MM/dd',NDate) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',NDate)+'''');
      sql.add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
      sql.add('            and SMDD.GSBH like'+''''+CB1.text+'%'+'''');
      if CB1.text<>'VR1' then
      begin
        sql.add('          and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end
      else
      begin
        sql.add('          and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'W'+''''+' or SMDDSS.GXLB='+''''+'I'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end;
      sql.add('     group by SMZL.DepNo,BDepartment.DepName,convert(varchar,SMZL.ScanDate,11)  ');
    end;
    sql.add('       union  all');
    sql.add('       select  SCBB.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB,isnull(sum(SCBBS.Qty),0) as Qty,'+''''+'Total'+''''+' as NDay  ');
    sql.add('       from SCBBS ');
    sql.add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    sql.add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('              '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('              and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
    if CB1.text<>'VR1' then
    begin
      sql.add('            and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end
    else
    begin
      sql.add('            and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end;
    sql.add('       group by SCBB.DepNo,BDepartment.DepName  ');
    if FormatDatetime('YYYYMMDD',DTP2.Date)=FormatDatetime('YYYYMMDD',NDate) then
    begin
      sql.add('     union  all');
      sql.add('     select  SMZL.DepNo,BDepartment.DepName,'+''''+'Actual'+''''+' as SB,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,'+''''+'Total'+''''+' as NDay ');
      sql.add('     from SMZL ');
      sql.add('     left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR ');
      sql.add('     left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      sql.add('     left join BDepartment on BDepartment.ID=SMZL.DepNO ');
      sql.add('     where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between ');
      sql.add('            '''+formatdatetime('yyyy/MM/dd',NDate) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',NDate)+'''');
      sql.add('            and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
      sql.add('            and SMDD.GSBH like'+''''+CB1.text+'%'+'''');
      if CB1.text<>'VR1' then
      begin
        sql.add('          and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end
      else
      begin
        sql.add('          and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'W'+''''+' or SMDDSS.GXLB='+''''+'I'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end;
      sql.add('     group by SMZL.DepNo,BDepartment.DepName  ');
    end;

    //每日各部門計劃產量
    sql.add('       union all');
    sql.add('       select SCBZCL.DepNo,BDepartment.DepName,'+''''+' Plan'+''''+' as SB,isnull(SCBZCL.Qty,0) as Qty ,convert(varchar,SCBZCL.BZDate,11) as NDay  ');
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
    sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,SCBZCL.Qty,convert(varchar,SCBZCL.BZDate,11) as NDay  ');
    sql.add('             from SCBZCL ');
    sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
    sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    sql.add('                    '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+''''+') SCBZCL');
    sql.add('       left join ( select  SCBB.DepNo,BDepartment.DepName,sum(SCBBS.Qty) as Qty,convert(varchar,SCBB.SCDate,11) as NDay  ');
    sql.add('                   from SCBBS ');
    sql.add('                   left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    sql.add('                   left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    sql.add('                   where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('                          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('                          and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                          and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
    if CB1.text<>'VR1' then
    begin
      sql.add('                        and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end
    else
    begin
      sql.add('                        and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end;
      sql.add('                   group by SCBB.DepNo,BDepartment.DepName,convert(varchar,SCBB.SCDate,11)  ');
    if FormatDatetime('YYYYMMDD',DTP2.Date)=FormatDatetime('YYYYMMDD',NDate) then
    begin
      sql.add('                 union  all');
      sql.add('                 select  SMZL.DepNo,BDepartment.DepName,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,convert(varchar,SMZL.ScanDate,11) as NDay ');
      sql.add('                 from SMZL ');
      sql.add('                 left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR ');
      sql.add('                 left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      sql.add('                 left join BDepartment on BDepartment.ID=SMZL.DepNO ');
      sql.add('                 where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between ');
      sql.add('                        '''+formatdatetime('yyyy/MM/dd',NDate) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',NDate)+'''');
      sql.add('                        and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
      sql.add('                        and SMDD.GSBH like'+''''+CB1.text+'%'+'''');
      if CB1.text<>'VR1' then
      begin
        sql.add('                      and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end
      else
      begin
        sql.add('                      and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'W'+''''+' or SMDDSS.GXLB='+''''+'I'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end;
        sql.add('                 group by SMZL.DepNo,BDepartment.DepName,convert(varchar,SMZL.ScanDate,11)  ');
    end;
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
      sql.add('                             and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end
    else
    begin
      sql.add('                             and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end;
    sql.add('                        group by SCBB.DepNo,BDepartment.DepName  ');
    if FormatDatetime('YYYYMMDD',DTP2.Date)=FormatDatetime('YYYYMMDD',NDate) then
    begin
      sql.add('                      union  all');
      sql.add('                      select  SMZL.DepNo,BDepartment.DepName,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty ');
      sql.add('                      from SMZL ');
      sql.add('                      left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR ');
      sql.add('                      left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      sql.add('                      left join BDepartment on BDepartment.ID=SMZL.DepNO ');
      sql.add('                      where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between ');
      sql.add('                             '''+formatdatetime('yyyy/MM/dd',NDate) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',NDate)+'''');
      sql.add('                             and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
      sql.add('                             and SMDD.GSBH like'+''''+CB1.text+'%'+'''');
      if CB1.text<>'VR1' then
      begin
        sql.add('                           and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end
      else
      begin
        sql.add('                           and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'W'+''''+' or SMDDSS.GXLB='+''''+'I'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end;
      sql.add('                      group by SMZL.DepNo,BDepartment.DepName  ');
    end;
    sql.add('                        )SCBBB on SCBBB.DepNo=SCBZCL.DepNo ');
    //計算百分比
    sql.add('       union  all');
    sql.add('       select SCBZCL.DepNo,SCBZCL.DepName,'+''''+'Per%'+''''+' as SB,case when SCBZCL.Qty<>0 and SCBZCL.Qty is not null then round(isnull(SCBBB.Qty,0)/SCBZCL.Qty*100,0) end  as Qty ,SCBZCL.NDay  ');
    sql.add('       from (select SCBZCL.DepNo,BDepartment.DepName,SCBZCL.Qty ,convert(varchar,SCBZCL.BZDate,11) as NDay  ');
    sql.add('             from SCBZCL ');
    sql.add('             left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
    sql.add('             where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
    sql.add('                    '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('                    and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                    and SCBZCL.GSBH like'+''''+CB1.text+'%'+'''');
    sql.add('                   ) SCBZCL');
    sql.add('       left join ( select  SCBB.DepNo,BDepartment.DepName,isnull(sum(SCBBS.Qty),0) as Qty,convert(varchar,SCBB.SCDate,11) as NDay  ');
    sql.add('                   from SCBBS ');
    sql.add('                   left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
    sql.add('                   left join BDepartment on BDepartment.ID=SCBB.DepNO ');
    sql.add('                   where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
    sql.add('                          '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('                          and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
    sql.add('                          and SCBB.GSBH like'+''''+CB1.text+'%'+'''');
    if CB1.text<>'VR1' then
    begin
      sql.add('                        and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end
    else
    begin
      sql.add('                        and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end;
    sql.add('                   group by SCBB.DepNo,BDepartment.DepName,convert(varchar,SCBB.SCDate,11) ');
    if FormatDatetime('YYYYMMDD',DTP2.Date)=FormatDatetime('YYYYMMDD',NDate) then
    begin
      sql.add('                 union  all');
      sql.add('                 select  SMZL.DepNo,BDepartment.DepName,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty,convert(varchar,SMZL.ScanDate,11) as NDay ');
      sql.add('                 from SMZL ');
      sql.add('                 left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR ');
      sql.add('                 left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      sql.add('                 left join BDepartment on BDepartment.ID=SMZL.DepNO ');
      sql.add('                 where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between ');
      sql.add('                        '''+formatdatetime('yyyy/MM/dd',NDate) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',NDate)+'''');
      sql.add('                        and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
      sql.add('                        and SMDD.GSBH like'+''''+CB1.text+'%'+'''');
      if CB1.text<>'VR1' then
      begin
        sql.add('                      and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end
      else
      begin
        sql.add('                      and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'W'+''''+' or SMDDSS.GXLB='+''''+'I'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end;
      sql.add('                 group by SMZL.DepNo,BDepartment.DepName,convert(varchar,SMZL.ScanDate,11)  ');
    end;
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
      sql.add('                       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end
    else
    begin
      sql.add('                       and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'W'+''''+' or SCBBS.GXLB='+''''+'I'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
    end;
    sql.add('                  group by SCBB.DepNo,BDepartment.DepName  ');
    if FormatDatetime('YYYYMMDD',DTP2.Date)=FormatDatetime('YYYYMMDD',NDate) then
    begin
      sql.add('                union  all');
      sql.add('                select  SMZL.DepNo,BDepartment.DepName,isnull(sum(Convert(float,SMZL.CTS*SMDDSS.Qty)),0) as Qty ');
      sql.add('                from SMZL ');
      sql.add('                left join SMDDSS on SMZL.CODEBAR=SMDDSS.CODEBAR ');
      sql.add('                left join SMDD on SMDDSS.DDBH=SMDD.DDBH and SMDDSS.GXLB=SMDD.GXLB ');
      sql.add('                left join BDepartment on BDepartment.ID=SMZL.DepNO ');
      sql.add('                where  convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between ');
      sql.add('                       '''+formatdatetime('yyyy/MM/dd',NDate) +''''+' and '+ ''''+formatdatetime('yyyy/MM/dd',NDate)+'''');
      sql.add('                       and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
      sql.add('                       and SMDD.GSBH like'+''''+CB1.text+'%'+'''');
      if CB1.text<>'VR1' then
      begin
        sql.add('                     and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end
      else
      begin
        sql.add('                     and (SMDDSS.GXLB='+''''+'C'+''''+' or SMDDSS.GXLB='+''''+'S'+''''+' or SMDDSS.GXLB='+''''+'W'+''''+' or SMDDSS.GXLB='+''''+'I'+''''+' or SMDDSS.GXLB='+''''+'A'+''''+')');
      end;
      sql.add('                group by SMZL.DepNo,BDepartment.DepName  ');
    end;
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
    columns[1].Width:=65;
    columns[1].title.caption:='部門名稱|DepName';
    columns[2].Width:=40;
    columns[2].title.caption:='目標|'+columns[2].title.caption;
    for i:=3 to query2.FieldCount-2 do
    begin
      Tfloatfield(query2.Fields[i]).displayformat:='##,#0' ;
      columns[i].Width:=50;
      columns[i].title.font.size:=8;
      if dayoftheweek(strtodate(columns[i].title.caption))=7 then
      begin
        columns[i].font.color:=clred;
        columns[i].font.style:=[fsitalic];
        columns[i].title.font.style:=[fsitalic];
        columns[i].title.font.color:=clred;
      end;
      columns[i].Title.Caption:='日期|'+columns[i].Title.Caption;
    end;
    columns[query2.FieldCount-1].Width:=60;
    Tfloatfield(query2.Fields[query2.FieldCount-1]).displayformat:='##,#0' ;
    columns[query2.FieldCount-1].font.style:=[fsbold];
    columns[query2.FieldCount-1].title.caption:='合計|Total';
  end;
end;

procedure TDailyActionPlanP.FormCreate(Sender: TObject);
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
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    active:=false;
  end;
  DTP1.Date:=NDate-7;
  DTP2.date:=NDate-1;
end;

procedure TDailyActionPlanP.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if query2.FieldByName('SB').value='Per%' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    //dbgrideh1.defaultdrawdatacell(rect,field,state);
  end;
  {
  if trim(query2.FieldByName('SB').value)='Per%' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    if (query1.FieldByName('Factory').asstring='A1') or (query1.FieldByName('Factory').asstring='A2')   then
      begin
        if (column.field.fieldname='1') or (column.field.fieldname='2')  or (column.field.fieldname='3')  or (column.field.fieldname='4')
        or (column.field.fieldname='5') or (column.field.fieldname='6')  or (column.field.fieldname='7')  or (column.field.fieldname='8')
        or (column.field.fieldname='9') or (column.field.fieldname='10')  or (column.field.fieldname='11')  or (column.field.fieldname='12')
        or (column.field.fieldname='13') or (column.field.fieldname='14')  or (column.field.fieldname='15')  or (column.field.fieldname='16')
        or (column.field.fieldname='17') or (column.field.fieldname='18')  or (column.field.fieldname='19')  or (column.field.fieldname='20')
        or (column.field.fieldname='21') or (column.field.fieldname='22')  or (column.field.fieldname='23')  or (column.field.fieldname='24')
        or (column.field.fieldname='25') or (column.field.fieldname='26')  or (column.field.fieldname='27')  or (column.field.fieldname='28')
        or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')  or (column.field.fieldname='32')
        then
        if (Column.Field.value<0.5)   then
          begin
            DBGrideh1.Canvas.Font.Color   :=   clblue;
            DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
          end
          else
            begin
              DBGrideh1.Canvas.Font.Color   :=   clred;
              DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
            end;
      end
      else
        begin
          if (column.field.fieldname='1') or (column.field.fieldname='2')  or (column.field.fieldname='3')  or (column.field.fieldname='4')
          or (column.field.fieldname='5') or (column.field.fieldname='6')  or (column.field.fieldname='7')  or (column.field.fieldname='8')
          or (column.field.fieldname='9') or (column.field.fieldname='10')  or (column.field.fieldname='11')  or (column.field.fieldname='12')
          or (column.field.fieldname='13') or (column.field.fieldname='14')  or (column.field.fieldname='15')  or (column.field.fieldname='16')
          or (column.field.fieldname='17') or (column.field.fieldname='18')  or (column.field.fieldname='19')  or (column.field.fieldname='20')
          or (column.field.fieldname='21') or (column.field.fieldname='22')  or (column.field.fieldname='23')  or (column.field.fieldname='24')
          or (column.field.fieldname='25') or (column.field.fieldname='26')  or (column.field.fieldname='27')  or (column.field.fieldname='28')
          or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')  or (column.field.fieldname='32')
          then
          if (Column.Field.value<0.8)   then
            begin
              DBGrideh1.Canvas.Font.Color   :=   clblue;
              DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
            end
            else
              begin
                DBGrideh1.Canvas.Font.Color   :=   clred;
                DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
              end;
      end;
  end;  }
end;

procedure TDailyActionPlanP.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

  if ((query2.FieldByName('Total').value>=100) and (query2.FieldByName('SB').value='Per%')) then
  begin
    dbgrideh1.canvas.font.Color:=clBlue;
  end;
  if ((query2.FieldByName('Total').value<95 ) and (query2.FieldByName('SB').value='Per%')) then
  begin
    dbgrideh1.canvas.font.Color:=clred;
  end;
end;

procedure TDailyActionPlanP.Print1Click(Sender: TObject);
begin
  PrintDBGridEh2.Preview  ;
end;

procedure TDailyActionPlanP.EXCEL1Click(Sender: TObject);
  var
        eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
        i,j:integer;
begin

  if query2.Active then
  begin
    if query2.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end
  else
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

procedure TDailyActionPlanP.PrintDBGridEh2BeforePrint(Sender: TObject);
begin
  PrintDBGridEh2.SetSubstitutes(['%[Date]',CB1.text+'      '+formatdatetime('yyyy/MM/dd',DTP1.Date)+'~~~'+formatdatetime('yyyy/MM/dd',DTP2.Date)]);
end;

end.
