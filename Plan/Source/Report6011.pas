unit Report6011;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PrnDbgeh, Menus, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls,dateutils,comobj;

type
  TReport601 = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Edit1: TEdit;
    CB1: TComboBox;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    QDep: TQuery;
    UpdateSQL1: TUpdateSQL;
    QTemp: TQuery;
    Query2: TQuery;
    DS2: TDataSource;
    PopupMenu2: TPopupMenu;
    Print1: TMenuItem;
    PrintDBGridEh1: TPrintDBGridEh;
    Excel1: TMenuItem;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Query2AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Report601: TReport601;  
  sdate,edate:Tdate;

implementation

uses main1;

{$R *.dfm}

procedure TReport601.FormDestroy(Sender: TObject);
begin
Report601:=nil;
end;

procedure TReport601.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TReport601.FormCreate(Sender: TObject);
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

procedure TReport601.Button1Click(Sender: TObject);
var a,b,c,i :word;
begin

a:=strtoint(CBX1.text);
b:=strtoint(CBX2.text);
c:=1;
sdate:=EncodeDate(a,b,c);
edate:=endofthemonth(sdate);
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
         //e:=Qtemp.fieldbyname('NDay').asstring;
         sql.add(',sum(case  when NDay='+''''+Qtemp.fieldbyname('NDay').asstring+'''');
         sql.add(' then Qty  end) as '+''''+Qtemp.fieldbyname('NDay').asstring+'''');
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
     sql.add('      union  all ');
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
     sql.add('       union  all');
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
     sql.add('       union  all');
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
     sql.add('       union  all');
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
     sql.add('       union  all');
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
     sql.add('       union  all');
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

end;

procedure TReport601.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
{
if query2.FieldByName('SB').value='Per%' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    //dbgrideh1.defaultdrawdatacell(rect,field,state);
  end;  }   
if trim(query2.FieldByName('SB').value)='Per%' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    if (column.field.fieldname='1') or (column.field.fieldname='2')  or (column.field.fieldname='3')  or (column.field.fieldname='4')
      or (column.field.fieldname='5') or (column.field.fieldname='6')  or (column.field.fieldname='7')  or (column.field.fieldname='8')
      or (column.field.fieldname='9') or (column.field.fieldname='10')  or (column.field.fieldname='11')  or (column.field.fieldname='12')
      or (column.field.fieldname='13') or (column.field.fieldname='14')  or (column.field.fieldname='15')  or (column.field.fieldname='16')
      or (column.field.fieldname='17') or (column.field.fieldname='18')  or (column.field.fieldname='19')  or (column.field.fieldname='20')
      or (column.field.fieldname='21') or (column.field.fieldname='22')  or (column.field.fieldname='23')  or (column.field.fieldname='24')
      or (column.field.fieldname='25') or (column.field.fieldname='26')  or (column.field.fieldname='27')  or (column.field.fieldname='28')
      or (column.field.fieldname='29') or (column.field.fieldname='30')  or (column.field.fieldname='31')  or (column.field.fieldname='32')
                          then
      begin
        if (Column.Field.value<95)   then
          begin
            DBGrideh1.Canvas.Font.Color   :=   clred;
            DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
          end;
        if (Column.Field.value>100)   then
          begin
            DBGrideh1.Canvas.Font.Color   :=   clBlue;
            DBGrideh1.DefaultDrawColumnCell(Rect,   DataCol,   Column,   State);
          end;
      end;
  end;
end;

procedure TReport601.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
      {
if ((query2.FieldByName('32').value>=100) and (query2.FieldByName('SB').value='Per%')) then
  begin
    dbgrideh1.canvas.font.Color:=clBlue;
  end;
if ((query2.FieldByName('32').value<100 ) and (query2.FieldByName('SB').value='Per%')) then
  begin
    dbgrideh1.canvas.font.Color:=clred;
  end;    }
end;

procedure TReport601.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[Date]',CB1.text+'      '+CBX1.Text+'/'+CBX2.text]);
end;

procedure TReport601.Print1Click(Sender: TObject);
begin
PrintDBGrideh1.Preview;
end;

procedure TReport601.Excel1Click(Sender: TObject);
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

procedure TReport601.Query2AfterOpen(DataSet: TDataSet);
var i:integer;
begin
 with DBGrideh1 do
   begin
     columns[0].Width:=0;
     columns[0].title.caption:='部門編號|DepNo';
     columns[1].Width:=60;
     columns[1].title.caption:='部門名稱|DepName';
     columns[2].Width:=35;
     columns[2].title.caption:='目標|'+columns[2].title.caption;
     for i:=3 to query2.FieldCount-2 do
       begin
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
           begin
             columns[i].font.color:=cllime;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=cllime;
           end;    
         columns[i].Width:=40;
         columns[i].Title.Caption:='日期('+CBX1.text+'/'+CBX2.text+')|'+columns[i].Title.Caption;
       end;
     columns[query2.FieldCount-1].Width:=60;
     columns[query2.FieldCount-1].title.caption:='合計|Total';
   end;
end;

end.
