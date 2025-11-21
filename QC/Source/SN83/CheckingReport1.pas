unit CheckingReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,fununit,comobj;

type
  TCheckingReport = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    edtLine: TEdit;
    EditXuong: TEdit;
    DBGrdh1: TDBGridEh;
    WOPR_AE: TQuery;
    DataSource1: TDataSource;
    WOPR_AEDepname: TStringField;
    WOPR_AESCBH: TStringField;
    WOPR_AEGXLB: TStringField;
    WOPR_AEYYBH: TStringField;
    WOPR_AEYWSM: TStringField;
    WOPR_AETotal: TFloatField;
    WOPR_AEBDEDesigner78: TFloatField;
    WOPR_AEBDEDesigner910: TFloatField;
    WOPR_AEBDEDesigner1112: TFloatField;
    WOPR_AEBDEDesigner1314: TFloatField;
    WOPR_AEBDEDesigner1516: TFloatField;
    WOPR_AEBDEDesigner1718: TFloatField;
    WOPR_AEBDEDesigner1920: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckingReport: TCheckingReport;

implementation

uses main1;

{$R *.dfm}

procedure TCheckingReport.Button1Click(Sender: TObject);
begin
   with WOPR_AE do
   begin
      Active:=false;
      SQL.Clear;
      SQL.Add('  select *from (  ');
      SQL.Add('  select Depname,SCBH,GXLB,YYBH,YWSM,Total  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''7'',''8'')  ');
      SQL.Add('   then Qty  end),0) as ''7-8''  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''9'',''10'')  ');
      SQL.Add('   then Qty  end),0) as ''9-10''  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''11'',''12'')  ');
      SQL.Add('   then Qty  end),0) as ''11-12''  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''13'',''14'')  ');
      SQL.Add('   then Qty  end),0) as ''13-14''  ');
      SQL.Add('   ,isnull(sum(case  when NHour in (''15'',''16'')  ');
      SQL.Add('   then Qty  end),0) as ''15-16''  ');
      SQL.Add('   ,isnull(sum(case  when NHour in (''17'',''18'')  ');
      SQL.Add('   then Qty  end),0) as ''17-18''  ');
      SQL.Add('   ,isnull(sum(case  when NHour in (''19'',''20'')  ');
      SQL.Add('   then Qty  end),0) as ''19-20''  ');
      SQL.Add('    ');
      SQL.Add('  from (select BDepartment.Depname,QCR_AE.SCBH,QCR_AE.GXLB,QCRD_AE.YYBH,QCBLYY.YWSM');
      SQL.Add('        ,QCT.Qty as Total,sum(QCRD_AE.qty) as Qty,datepart(hh,QCR_AE.userdate) as NHour  ');
      SQL.Add('        from QCRD_AE  ');
      SQL.Add('  	     left join QCR_AE on QCR_AE.prono= QCRD_AE.prono  ');
      SQL.Add('  	     left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSBH = QCBLYY.GSBH  ');
      SQL.Add('  	     left join bdepartment on bdepartment.id=QCR_AE.depno  ');
      SQL.Add('  	     left join (select QCR_AE.Depno,QCR_AE.SCBH,QCRD_AE.YYBH,sum(QCRD_AE.qty) as Qty  ');
      SQL.Add('  				          from QCRD_AE  ');
      SQL.Add('  		              left join QCR_AE on QCR_AE.prono= QCRD_AE.prono  ');
      SQL.Add('  			            left join bdepartment on bdepartment.id=QCR_AE.depno  ');
      SQL.Add('  				          left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSBH = QCBLYY.GSBH  ');
      SQL.Add('                   where 1=1 ');
      if CheckBox1.Checked=true then
        SQL.Add('                 and  CONVERT(varchar(10),QCR_AE.USERDATE,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');

      SQL.Add('  	   		          and QCR_AE.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('                   and QCR_AE.GXLB = ''AE''  ');
      if edtLine.Text<>'' then
        SQL.Add('                 and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('                 and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('  				          group by QCR_AE.Depno,QCRD_AE.YYBH,QCR_AE.SCBH) as QCT on QCR_AE.DepNo = QCT.DepNo and QCBLYY.YYBH = QCT.YYBH and QCR_AE.SCBH=QCT.SCBH  ');
      SQL.Add('  where 1=1 ');
      if CheckBox1.Checked=true then
        SQL.Add('and  CONVERT(varchar(10),QCR_AE.USERDATE,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      if edtLine.Text<>'' then
        SQL.Add('and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('  and QCR_AE.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('  and (  QCR_AE.GXLB = ''AE'')  ');
      SQL.Add('  group by QCR_AE.SCBH,BDepartment.Depname,QCR_AE.GXLB,QCRD_AE.YYBH,QCBLYY.YWSM,QCT.Qty,datepart(hh,QCR_AE.userdate) ) QCR group by Depname,SCBH,GXLB,YYBH,YWSM,Total  ');
      SQL.Add('  union   ');
      SQL.Add('  select Depname,SCBH,GXLB,YYBH,YWSM,Total  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''7'',''8'')  ');
      SQL.Add('   then Qty  end),0) as ''7-8''  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''9'',''10'')  ');
      SQL.Add('   then Qty  end),0) as ''9-10''  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''11'',''12'')  ');
      SQL.Add('   then Qty  end),0) as ''11-12''  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''13'',''14'')  ');
      SQL.Add('   then Qty  end),0) as ''13-14''  ');
      SQL.Add('   ,isnull(sum(case  when NHour in (''15'',''16'')  ');
      SQL.Add('   then Qty  end),0) as ''15-16''  ');
      SQL.Add('   ,isnull(sum(case  when NHour in (''17'',''18'')  ');
      SQL.Add('   then Qty  end),0) as ''17-18''  ');
      SQL.Add('   ,isnull(sum(case  when NHour in (''19'',''20'')  ');
      SQL.Add('   then Qty  end),0) as ''19-20''  ');
      SQL.Add('   from (select BDepartment.Depname,'''' as SCBH,QCR_AE.GXLB,''Z1'' as YYBH,''Bi-Hour Defect_Total'' as ywsm,QCT.Qty  as Total  ');
      SQL.Add('  	,sum(QCRD_AE.qty) as Qty,datepart(hh,QCR_AE.userdate) as NHour  ');
      SQL.Add('        from QCRD_AE  ');
      SQL.Add('        left join QCR_AE on QCR_AE.prono= QCRD_AE.prono  ');
      SQL.Add('        left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSBH = QCBLYY.GSBH  ');
      SQL.Add('        left join bdepartment on bdepartment.id=QCR_AE.depno  ');
      SQL.Add('        left join (select QCR_AE.Depno,QCR_AE.GXLB,sum(QCRD_AE.qty) as Qty  ');
      SQL.Add('  		              from QCRD_AE  ');
      SQL.Add('  		              left join QCR_AE on QCR_AE.prono= QCRD_AE.prono  ');
      SQL.Add('  		              left join bdepartment on bdepartment.id=QCR_AE.depno  ');
      SQL.Add('  		              left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSBH = QCBLYY.GSBH  ');
      SQL.Add('                   where 1=1 ');
      if CheckBox1.Checked=true then
        SQL.Add('                 and  CONVERT(varchar(10),QCR_AE.USERDATE,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      SQL.Add('  	   		          and QCR_AE.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('                   and QCR_AE.GXLB = ''AE''  ');
      if edtLine.Text<>'' then
        SQL.Add('                 and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('                 and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('  		              group by QCR_AE.Depno,QCR_AE.GXLB) as QCT on QCR_AE.DepNo = QCT.DepNo and QCR_AE.GXLB=QCT.GXLB --and QCR_AE.SCBH=QCT.SCBH  ');
      SQL.Add('  where 1=1 ');
      if CheckBox1.Checked=true then
        SQL.Add('and  CONVERT(varchar(10),QCR_AE.USERDATE,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      if edtLine.Text<>'' then
        SQL.Add('and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('  and QCR_AE.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('  and (  QCR_AE.GXLB = ''AE'')  ');
      SQL.Add('  group by BDepartment.Depname,QCT.Qty,QCR_AE.GXLB,datepart(hh,QCR_AE.userdate) ) QCR group by Depname,SCBH,GXLB,YYBH,YWSM,Total  ');
      SQL.Add('  union   ');
      SQL.Add('  select Depname,SCBH,GXLB,YYBH,YWSM,Total  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''7'',''8'')  ');
      SQL.Add('   then Qty  end),0) as ''7-8''  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''9'',''10'')  ');
      SQL.Add('   then Qty  end),0) as ''9-10''  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''11'',''12'')  ');
      SQL.Add('   then Qty  end),0) as ''11-12''  ');
      SQL.Add('  ,isnull(sum(case  when NHour in (''13'',''14'')  ');
      SQL.Add('   then Qty  end),0) as ''13-14''  ');
      SQL.Add('   ,isnull(sum(case  when NHour in (''15'',''16'')  ');
      SQL.Add('   then Qty  end),0) as ''15-16''  ');
      SQL.Add('   ,isnull(sum(case  when NHour in (''17'',''18'')  ');
      SQL.Add('   then Qty  end),0) as ''17-18''  ');
      SQL.Add('   ,isnull(sum(case  when NHour in (''19'',''20'')  ');
      SQL.Add('   then Qty  end),0) as ''19-20''  ');
      SQL.Add('   from (select BDepartment.DepName,'''' as SCBH,''AE'' as GXLB ,''Z2'' as YYBH,''Output'' as ywsm,PerDay.TotQty as Total,sum(SMZL.CTS*SMDDSS.Qty) as Qty,datepart(Hour,SMZL.ScanDate) as NHour   ');
      SQL.Add('  	      from SMZL   ');
      SQL.Add('         left join BDepartment on BDepartment.ID=SMZL.DepNO   ');
      SQL.Add('         left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR   ');
      SQL.Add('         left join (select BDepartment.ID as DepNo,SMDDSS.GXLB,sum(SMZL.CTS*SMDDSS.Qty) as TotQty   ');
      SQL.Add('                    from SMZL   ');
      SQL.Add('                    left join BDepartment on BDepartment.ID=SMZL.DepNO   ');
      SQL.Add('                    left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR   ');
      SQL.Add('                    where 1=1  ');
      if edtLine.Text<>'' then
        SQL.Add('                  and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('                  and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('                    and BDepartment.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('                    and SMDDSS.GXLB=''A''  ');
      if CheckBox1.Checked=true then
        SQL.Add('                  and  CONVERT(varchar(10),SMZL.ScanDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      SQL.Add('                    group by SMDDSS.GXLB,BDepartment.ID ) PerDay on PerDay.DepNO=BDepartment.ID and PerDay.GXLB=''A'' ');
      SQL.Add('  where  1=1 ');
      if edtLine.Text<>'' then
        SQL.Add('and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('  and BDepartment.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('  and SMDDSS.GXLB=''A''  ');
      if CheckBox1.Checked=true then
        SQL.Add('and  CONVERT(varchar(10),SMZL.ScanDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      SQL.Add('  group by convert(varchar,SMZL.ScanDate,111),datepart(Hour,SMZL.ScanDate),BDepartment.DepName,PerDay.TotQty ) SMZL group by Depname,SCBH,GXLB,YYBH,YWSM,Total  ');
      SQL.Add('  union   ');
      SQL.Add('  select T1.Depname,'''' as SCBH ,T1.GXLB,''Z3'' as YYBH,T1.ywsm  ');
      SQL.Add('  ,case when isnull(T2.Total,0)<>0 then (Round(Max(Convert(float,isnull(T2.Total,0)-isnull(T1.Total,0)))/isnull(T2.Total,0)*100,2)) end Total  ');
      SQL.Add('  ,case when isnull(T2.[7-8],0)<>0 then (Round(Max(Convert(float,isnull(T2.[7-8],0)-isnull(T1.[7-8],0)))/isnull(T2.[7-8],0)*100,2)) end ''7-8''  ');
      SQL.Add('  ,case when isnull(T2.[9-10],0)<>0 then (Round(Max(Convert(float,isnull(T2.[9-10],0)-isnull(T1.[9-10],0)))/isnull(T2.[9-10],0)*100,2)) end ''9-10''  ');
      SQL.Add('  ,case when isnull(T2.[11-12],0)<>0 then (Round(Max(Convert(float,isnull(T2.[11-12],0)-isnull(T1.[11-12],0)))/isnull(T2.[11-12],0)*100,2)) end ''11-12''  ');
      SQL.Add('  ,case when isnull(T2.[13-14],0)<>0 then (Round(Max(Convert(float,isnull(T2.[13-14],0)-isnull(T1.[13-14],0)))/isnull(T2.[13-14],0)*100,2)) end ''13-14''  ');
      SQL.Add('  ,case when isnull(T2.[15-16],0)<>0 then (Round(Max(Convert(float,isnull(T2.[15-16],0)-isnull(T1.[15-16],0)))/isnull(T2.[15-16],0)*100,2)) end ''15-16''  ');
      SQL.Add('  ,case when isnull(T2.[17-18],0)<>0 then (Round(Max(Convert(float,isnull(T2.[17-18],0)-isnull(T1.[15-16],0)))/isnull(T2.[17-18],0)*100,2)) end ''17-18''  ');
      SQL.Add('  ,case when isnull(T2.[19-20],0)<>0 then (Round(Max(Convert(float,isnull(T2.[19-20],0)-isnull(T1.[19-20],0)))/isnull(T2.[19-20],0)*100,2)) end ''19-20''  ');
      SQL.Add('  from (  ');
      SQL.Add('  	     select Depname,DepNo,GXLB,YYBH,YWSM,Total  ');
      SQL.Add('  	     ,isnull(sum(case  when NHour in (''7'',''8'')  ');
      SQL.Add('  	     then Qty  end),0) as ''7-8''  ');
      SQL.Add('        ,isnull(sum(case  when NHour in (''9'',''10'')  ');
      SQL.Add('  	     then Qty  end),0) as ''9-10''  ');
      SQL.Add('        ,isnull(sum(case  when NHour in (''11'',''12'')  ');
      SQL.Add('        then Qty  end),0) as ''11-12''  ');
      SQL.Add('        ,isnull(sum(case  when NHour in (''13'',''14'')  ');
      SQL.Add('        then Qty  end),0) as ''13-14''  ');
      SQL.Add('        ,isnull(sum(case  when NHour in (''15'',''16'')  ');
      SQL.Add('        then Qty  end),0) as ''15-16''  ');
      SQL.Add('        ,isnull(sum(case  when NHour in (''17'',''18'')  ');
      SQL.Add('        then Qty  end),0) as ''17-18''  ');
      SQL.Add('       ,isnull(sum(case  when NHour in (''19'',''20'')  ');
      SQL.Add('       then Qty  end),0) as ''19-20''  ');
      SQL.Add('  	    from (select QCR_AE.DepNo,BDepartment.Depname,QCR_AE.GXLB,''Z1'' as YYBH,''Pass rate'' as ywsm,QCT.Qty  as Total  ');
      SQL.Add('  	          ,sum(QCRD_AE.qty) as Qty,datepart(hh,QCR_AE.userdate) as NHour  ');
      SQL.Add('  			      from QCRD_AE  ');
      SQL.Add('  			      left join QCR_AE on QCR_AE.prono= QCRD_AE.prono  ');
      SQL.Add('  			      left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSBH = QCBLYY.GSBH  ');
      SQL.Add('  			      left join bdepartment on bdepartment.id=QCR_AE.depno  ');
      SQL.Add('  			      left join (select QCR_AE.Depno,QCR_AE.GXLB,sum(QCRD_AE.qty) as Qty  ');
      SQL.Add('  					             from QCRD_AE  ');
      SQL.Add('  		                   left join QCR_AE on QCR_AE.prono= QCRD_AE.prono  ');
      SQL.Add('  		                   left join bdepartment on bdepartment.id=QCR_AE.depno  ');
      SQL.Add('  		                   left join qcblyy on qcblyy.yybh=QCRD_AE.yybh and QCR_AE.GSBH = QCBLYY.GSBH  ');
      SQL.Add('                        where 1=1 ');
      if CheckBox1.Checked=true then
        SQL.Add('                      and  CONVERT(varchar(10),QCR_AE.USERDATE,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      SQL.Add('  	   		               and QCR_AE.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('                        and (  QCR_AE.GXLB = ''AE'')  ');
      if edtLine.Text<>'' then
        SQL.Add('                      and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('                      and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('  		                   group by QCR_AE.Depno,QCR_AE.GXLB) as QCT on QCR_AE.DepNo = QCT.DepNo and QCR_AE.GXLB=QCT.GXLB  ');
      SQL.Add('       where  1=1 ');
      if CheckBox1.Checked=true then
        SQL.Add('     and  CONVERT(varchar(10),QCR_AE.USERDATE,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      SQL.Add('  	   	and QCR_AE.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('       and QCR_AE.GXLB = ''AE''  ');
      if edtLine.Text<>'' then
        SQL.Add('     and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('     and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('       group by QCR_AE.Depno,BDepartment.Depname,QCT.Qty,QCR_AE.GXLB,datepart(hh,QCR_AE.userdate) ) QCR group by Depname,Depno,GXLB,YYBH,YWSM,Total ) T1  ');
      SQL.Add('       left join   ');
      SQL.Add('  	    (select Depname,ID,SCBH,GXLB,YYBH,YWSM,Total  ');
      SQL.Add('  	    ,isnull(sum(case  when NHour in (''7'',''8'')  ');
      SQL.Add('  	    then Qty  end),0) as ''7-8''  ');
      SQL.Add('       ,isnull(sum(case  when NHour in (''9'',''10'')  ');
      SQL.Add('  	    then Qty  end),0) as ''9-10''  ');
      SQL.Add('       ,isnull(sum(case  when NHour in (''11'',''12'')  ');
      SQL.Add('       then Qty  end),0) as ''11-12''  ');
      SQL.Add('       ,isnull(sum(case  when NHour in (''13'',''14'')  ');
      SQL.Add('       then Qty  end),0) as ''13-14''  ');
      SQL.Add('       ,isnull(sum(case  when NHour in (''15'',''16'')  ');
      SQL.Add('       then Qty  end),0) as ''15-16''  ');
      SQL.Add('       ,isnull(sum(case  when NHour in (''17'',''18'')  ');
      SQL.Add('       then Qty  end),0) as ''17-18''  ');
      SQL.Add('       ,isnull(sum(case  when NHour in (''19'',''20'')  ');
      SQL.Add('       then Qty  end),0) as ''19-20''  ');
      SQL.Add('  		  from (select BDepartment.DepName,BDepartment.ID,'''' as SCBH,''AE'' as GXLB ,''Z2'' as YYBH,''Output'' as ywsm,PerDay.TotQty as Total,sum(SMZL.CTS*SMDDSS.Qty) as Qty,datepart(Hour,SMZL.ScanDate) as NHour   ');
      SQL.Add('  			      from SMZL   ');
      SQL.Add('  			      left join BDepartment on BDepartment.ID=SMZL.DepNO   ');
      SQL.Add('  			      left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR   ');
      SQL.Add('  			      left join (select BDepartment.ID as DepNo,SMDDSS.GXLB,sum(SMZL.CTS*SMDDSS.Qty) as TotQty   ');
      SQL.Add('                        from SMZL   ');
      SQL.Add('                        left join BDepartment on BDepartment.ID=SMZL.DepNO   ');
      SQL.Add('                        left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR   ');
      SQL.Add('                        where 1=1  ');
      if edtLine.Text<>'' then
        SQL.Add('                      and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('                      and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('                        and BDepartment.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('                        and SMDDSS.GXLB=''A''  ');
      if CheckBox1.Checked=true then
        SQL.Add('                      and  CONVERT(varchar(10),SMZL.ScanDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      SQL.Add('                        group by SMDDSS.GXLB,BDepartment.ID ) PerDay on PerDay.DepNO=BDepartment.ID and PerDay.GXLB=''A''   ');
      SQL.Add('       where  1=1 ');
      if edtLine.Text<>'' then
        SQL.Add('     and BDepartment.DepName like ''%'+edtLine.Text+'%'' ');
      if EditXuong.Text<>'' then
        SQL.Add('     and BDepartment.Xuong like ''%'+EditXuong.Text+'%'' ');
      SQL.Add('       and BDepartment.GSBH='+''''+main.Edit2.Text+'''');
      SQL.Add('       and SMDDSS.GXLB=''A''  ');
      if CheckBox1.Checked=true then
        SQL.Add('     and  CONVERT(varchar(10),SMZL.ScanDate,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
      SQL.Add('       group by convert(varchar,SMZL.ScanDate,111),datepart(Hour,SMZL.ScanDate),BDepartment.DepName,PerDay.TotQty,BDepartment.ID ) SMZL group by Depname,ID,SCBH,GXLB,YYBH,YWSM,Total ) T2 on T1.DepNo =T2.ID   ');
      SQL.Add('  group by T1.DepNo,T1.Depname,T1.GXLB,T1.ywsm,T1.Total,T2.Total,T2.[7-8],T1.[7-8],T1.[9-10],T2.[9-10],T1.[11-12],T2.[11-12],T1.[13-14],T2.[13-14],T1.[15-16],T2.[15-16]  ');
      SQL.Add('  ,T1.[17-18],T2.[17-18],T1.[19-20],T2.[19-20]  ');
      SQL.Add('   ) as QCC  ');
      SQL.Add('  order by qcc.DepName,QCC.YYBH  ');
      //funcobj.WriteErrorLog(sql.Text);
      Active:=true;
   end;
end;

procedure TCheckingReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TCheckingReport.FormDestroy(Sender: TObject);
begin
  CheckingReport:=nil;
end;

procedure TCheckingReport.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date();
  DTP2.Date:=Date();
end;

procedure TCheckingReport.Button2Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,k,f:integer;
  NameTab:string;
begin
  if WOPR_AE.Active then
  begin
    if WOPR_AE.recordcount=0 then
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
    for i:=0 to DBGrdh1.Columns.Count-1 do
    begin
      eclApp.Cells[1,i+1].NumberFormatLocal:='@';
      eclApp.Cells(1,i+1):=DBGrdh1.Columns[i].Title.Caption;
    end;

    WOPR_AE.First;
    j:=2;
    f:=5;
    while   not  WOPR_AE.Eof   do
    begin
      for i:=0 to DBGrdh1.Columns.Count-1 do
      begin
          eclApp.Cells(j,i+1):=DBGrdh1.Fields[i].AsString;
          if WOPR_AE.FieldByName('YYBH').Asstring='Z3' then
          begin
            for f:=5 to DBGrdh1.Columns.Count-1 do
            begin
              if DBGrdh1.Fields[f-1].AsString <> '' then
                eclApp.Cells(j,f):=DBGrdh1.Fields[f-1].AsString+'% ';
            end;
            inc(f);
          end;
      end;
      WOPR_AE.Next;
      inc(j);
      for k:=1 to 4 do
      begin
        eclApp.range[eclApp.cells[1,1],eclApp.cells[j-1,i]].borders[k].linestyle:=1;
      end;
    end;
    {eclApp.Cells(1,1):='DepName';
    eclApp.Cells(1,2):='RY';
    eclApp.Cells(1,3):='Process';
    eclApp.Cells(2,4):='Defect';}
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;

end;

end.
