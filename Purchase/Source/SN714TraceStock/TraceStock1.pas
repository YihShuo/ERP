unit TraceStock1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,ComObj;

type
  TTraceStock = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label5: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    EditMatNo: TEdit;
    EditSampleOrd: TEdit;
    Button1: TButton;
    EditSeason: TEdit;
    edt2: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    strngfldQuery1CLBH: TStringField;
    strngfldQuery1CLMC: TStringField;
    strngfldQuery1dwbh: TStringField;
    fltfldQuery1clsl: TFloatField;
    strngfldQuery1ZSYWJC: TStringField;
    strngfldQuery1CLZMLB: TStringField;
    strngfldQuery1jijie: TStringField;
    strngfldQuery1fd: TStringField;
    strngfldQuery1kfjd: TStringField;
    strngfldQuery1xieming: TStringField;
    intgrfldQuery1recs: TIntegerField;
    dtmfldQuery1cgdate: TDateTimeField;
    dtmfldQuery1yqdate: TDateTimeField;
    dtmfldQuery1ETA: TDateTimeField;
    strngfldQuery1cgno: TStringField;
    crncyfldQuery1cgqty: TCurrencyField;
    strngfldQuery1clbhys: TStringField;
    strngfldQuery1ypdh: TStringField;
    Query1SamplePurchaser: TStringField;
    Query1SamplePurchaser_Name: TStringField;
    Query1USERID: TStringField;
    Query1USERDATE: TDateTimeField;
    Query1devcode: TStringField;
    qrUsestock: TQuery;
    Label3: TLabel;
    DTP1: TDateTimePicker;
    Label4: TLabel;
    DTP2: TDateTimePicker;
    QryTemp: TQuery;
    chk1: TCheckBox;
    Query1QtyIn: TFloatField;
    Query1QtyOut: TFloatField;
    Query1Total: TFloatField;
    Button2: TButton;
    Query1qty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TraceStock: TTraceStock;
   NDate:TDate;
implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TTraceStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TTraceStock.FormDestroy(Sender: TObject);
begin
  TraceStock:=nil;
end;

procedure TTraceStock.FormCreate(Sender: TObject);
begin
  with qryTemp do
  begin
      active:=false;
      sql.Clear;
      sql.add('select getdate() as NDate ');
      active:=true;
      NDate:=fieldbyname('NDate').Value;
      active:=false;
      sql.Clear;
  end;
  DTP1.Date:=date-3;
  DTP2.date:=date;
end;

procedure TTraceStock.Button1Click(Sender: TObject);
begin
    if ((EditSeason.Text='') or (edt2.Text='')) then
      begin
        showmessage('Please input season and stage');
        abort;
    end;
    with query1 do
      begin
          active:=false;
          sql.Clear;
          sql.add('select ypzl.ypdh,kfxxzl.devcode, YPZLS.CLBH,CLZL.YWPM as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut,(QtyIn - QtyOut) as Total');
          sql.Add(' FROM YPZLS');
          sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add(' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
          sql.Add(' LEFT JOIN CLZL   ON YPZLS.CLBH = CLZL.cldh');

          sql.Add(' left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as QtyIn from KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.cldh and kcrks.CGBH=ypzl.ypdh	');
          sql.Add(' left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SCBH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH');

          sql.Add(' LEFT JOIN LBZLS ON SUBSTRING(YPZLS.CLBH,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
          sql.Add(' LEFT JOIN ZSZL on ZSZL.ZSDH=YPZLS.CSBH');
          sql.Add(' LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurchaser FROM ZSZL_DEV where GSBH='''+main.Edit2.Text+''' GROUP BY ZSDH) ZSZL_VN on ZSZL_VN.ZSDH=YPZLS.CSBH');
          sql.add(' left join BUSERS  on BUSERS.USERID=ZSZL_VN.SamplePurchaser  ');
          sql.Add(' left join zszlfilter on zszlfilter.zsdh=ypzls.csbh');
          sql.Add(' left join clzlfilter on clzlfilter.cldh=ypzls.clbh');
//          sql.Add(' left join bwzlfilter on bwzlfilter.bwdh=ypzls.bwbh');
          sql.Add(' left join cgkcuse on cgkcuse.zlbh=ypzl.ypdh and cgkcuse.clbh=ypzls.clbh');
          sql.Add(' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add(' left join (select cs.clbh,cs.Stage,cs.zlbh, sum(isnull(cs.qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cgno) as cgno from cgzlss cs');
          sql.Add('             left join cgzl on cgzl.cgno=cs.cgno');
          sql.Add('             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
          sql.Add('             where cgzl.CGLX=''6'' '); // 6=sample order
          if length(edt2.Text) > 0 then      //Stage
             sql.Add('                and cs.Stage='''+edt2.Text+'''');
          sql.Add('             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=ypzls.clbh and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode ');
          sql.Add(' where clzl.clzmlb=''N'' ');
          sql.Add(' and zszlfilter.zsdh is null');
          sql.Add(' and clzlfilter.cldh is null');

          if length(edt2.Text) > 0 then
            sql.Add(' and ypzl.kfjd = '''+edt2.Text+'''');

          if length(EditMatNo.Text) > 0 then
             sql.Add(' and YPZLS.CLBH like ''%'+EditMatNo.Text+'%''');
             

          if length(EditSampleOrd.Text) > 0 then      //SampleOrd
             sql.Add('                and ypzl.YPDH='''+EditSampleOrd.Text+'''');

          if length(EditSeason.Text) > 0 then
            sql.Add(' and kfxxzl.jijie = '''+EditSeason.Text+'''');

          if chk1.Checked then
          begin
            sql.add('and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))  between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end;

          sql.add(' group by ypzl.ypdh,kfxxzl.devcode, YPZLS.CLBH,CLZL.YWPM , clzl.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,KFXXZL.fd,ypzl.kfjd,kfxxzl.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut');
          sql.Add(' UNION ALL');
          
          sql.add('select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL.YWPM as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut,(QtyIn - QtyOut) as Total');
          sql.Add(' FROM YPZLS');
          sql.Add(' INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
          sql.Add(' left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add(' LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
          sql.Add(' LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh');

          sql.Add('  left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SCBH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH');
          sql.Add('  left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as QtyIn from KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.cldh and kcrks.CGBH=ypzl.ypdh');

          sql.Add(' LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
          sql.Add(' LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH');
          sql.Add(' LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurchaser FROM ZSZL_DEV where GSBH='''+main.Edit2.Text+''' GROUP BY ZSDH) ZSZL_VN on ZSZL_VN.ZSDH=CLZHZL.ZSDH');
          sql.add(' left join BUSERS  on BUSERS.USERID=ZSZL_VN.SamplePurchaser  ');
          sql.Add(' left join cgkcuse on cgkcuse.zlbh=ypzl.ypdh and cgkcuse.clbh=CLZHZL.CLDH1');
          sql.Add(' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add(' left join zszlfilter on zszlfilter.zsdh=ypzls.csbh');
          sql.Add(' left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1');
//          sql.Add(' left join bwzlfilter on bwzlfilter.bwdh=ypzls.bwbh');
          sql.Add(' left join (select cs.clbh,cs.Stage,cs.zlbh, sum(isnull(cs.qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cgno) as cgno from cgzlss cs');
          sql.Add('             left join cgzl on cgzl.cgno=cs.cgno');
          sql.Add('             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
          sql.Add('             where cgzl.CGLX=''6'' '); // 6=sample order
                       if length(edt2.Text) > 0 then    //stage
                              sql.Add(' and cs.Stage = '''+edt2.Text+'''');
          sql.Add('             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CLZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode ');
          sql.Add(' where CLZHZL.syl<>0 and clzl.clzmlb=''N'' ');

          if length(edt2.Text) > 0 then
            sql.Add(' and ypzl.kfjd = '''+edt2.Text+'''');

          if length(EditMatNo.Text) > 0 then
             sql.Add(' and CLZHZL.CLDH1 like ''%'+EditMatNo.Text+'%''');
          if length(EditSampleOrd.Text) > 0 then      //SampleOrd
             sql.Add('                and ypzl.YPDH='''+EditSampleOrd.Text+'''');

          if length(EditSeason.Text) > 0 then
            sql.Add(' and kfxxzl.jijie = '''+EditSeason.Text+'''');

          if chk1.Checked then
          begin
            sql.add('and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))  between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end;


          sql.Add(' and zszlfilter.zsdh is null');
          sql.Add(' and clzlfilter.cldh is null');

          sql.add(' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clzl.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut');
          //
          sql.Add('UNION ALL') ;   //第二加工材料

          sql.Add('select temp.ypdh,temp.devcode,CLZHZL.CLDH1 AS CLBH,temp.CLMC,temp.dwbh,temp.clsl,temp.cgqty,temp.clbhys,temp.qty,temp.ZSYWJC,temp.CLZMLB,temp.jijie,temp.fd,temp.kfjd,temp.xieming,');
          sql.Add('       temp.recs,temp.cgdate,temp.yqdate,temp.ETA,temp.cgno,temp.SamplePurchaser,temp.SamplePurchaser_Name,temp.USERID,temp.USERDATE, temp.QtyIn, temp.QtyOut, (QtyIn - QtyOut) as Total');
          sql.Add('From (select ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1 AS CLBH,CLZL.YWPM as CLMC, clzl.dwbh,sum(isnull(ypzls.clsl,0)*ypzl.quantity) as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty,ZSZL.ZSYWJC,CLZL.CLZMLB,');
          sql.Add('             kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name,cgkcuse.USERID,cgkcuse.USERDATE,KCRKS.Qty as QtyIn,QtyOut,(KCRKS.Qty - QtyOut) as Total') ;
          sql.Add('      FROM YPZLS');
          sql.Add('      INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
          sql.Add('      left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('      LEFT JOIN BWZL  ON YPZLS.BWBH = BWZL.bwdh');
          sql.Add('      LEFT JOIN CLZL   ON CLZHZL.CLDH1 = CLZL.cldh');

          sql.Add('      left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SCBH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH');
          sql.Add('      left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as Qty from KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.cldh and kcrks.CGBH=ypzl.ypdh');

          sql.Add('      LEFT JOIN LBZLS ON SUBSTRING(CLZHZL.CLDH1,1,1) = LBZLS.lbdh AND LBZLS.LB=''05''');
          sql.Add('      LEFT JOIN ZSZL on ZSZL.ZSDH=CLZHZL.ZSDH');
          sql.Add('      LEFT JOIN (SELECT ZSDH,Max(SamplePurchaser) as SamplePurchaser FROM ZSZL_DEV where GSBH='''+main.Edit2.Text+''' GROUP BY ZSDH) ZSZL_VN on ZSZL_VN.ZSDH=CLZHZL.ZSDH');
          sql.add('      left join BUSERS  on BUSERS.USERID=ZSZL_VN.SamplePurchaser  ');
          sql.Add('      left join cgkcuse on cgkcuse.zlbh=ypzl.ypdh and cgkcuse.clbh=CLZHZL.CLDH1');
          sql.Add('      left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add('      left join zszlfilter on zszlfilter.zsdh=ypzls.csbh');
          sql.Add('      left join clzlfilter on clzlfilter.cldh=CLZHZL.CLDH1');
          sql.Add('      left join (select cs.clbh,cs.Stage,cs.zlbh, sum(isnull(cs.qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cgno) as cgno from cgzlss cs');
          sql.Add('                 left join cgzl on cgzl.cgno=cs.cgno');
          sql.Add('                 left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
          sql.Add('                 where cgzl.CGLX=''6'' '); // 6=sample order
                       if length(edt2.Text) > 0 then    //stage
                              sql.Add(' and cs.Stage = '''+edt2.Text+'''');

          sql.Add('             group by cs.clbh,cs.Stage,cs.zlbh) cg on cg.clbh=CLZHZL.CLDH1 and cg.Stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode ');
          sql.Add('     where CLZHZL.syl<>0 and clzl.clzmlb=''Y'' ');

          if length(edt2.Text) > 0 then
            sql.Add('   and ypzl.kfjd = '''+edt2.Text+'''');

          if length(EditSampleOrd.Text) > 0 then      //SampleOrd
             sql.Add('                and ypzl.YPDH='''+EditSampleOrd.Text+'''');

          if length(EditSeason.Text) > 0 then
            sql.Add('   and kfxxzl.jijie = '''+EditSeason.Text+'''');

          if chk1.Checked then
          begin
            sql.add('and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))  between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end;

          sql.Add(' and zszlfilter.zsdh is null');
          sql.Add(' and clzlfilter.cldh is null');

          sql.add(' group by ypzl.ypdh,kfxxzl.devcode, CLZHZL.CLDH1,CLZL.YWPM , clzl.dwbh,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add(' ZSZL.ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,kfxxzl.devtype,kfxxzl.category,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,ZSZL_VN.SamplePurchaser,BUSERS.USERNAME');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE, KCRKS.Qty, QtyOut)temp inner join clzhzl ON  temp.CLBH = CLZHZL.cldh ');
          sql.Add('left JOIN clzl clzl ON CLZHZL.cldh1 = clzl.cldh');
          sql.Add('where CLZHZL.SYL<>0   and clzl.clzmlb=''N'' ') ;
          if length(EditMatNo.Text) > 0 then
             sql.Add('  and CLZHZL.CLDH1 like ''%'+EditMatNo.Text+'%''');
          //
          sql.Add(' UNION ALL');  //CANCEL CLBH 顯示有使用庫存但已不在樣品單中的材料

          sql.add('select YPZL.YPDH,kfxxzl.devcode,CGKCUSE.CLBH,CLZL.YWPM as CLMC,CLZL.DWBH,cgkcuse.qty*0 as clsl,cg.cgqty,cgkcuse.clbhys,cgkcuse.qty, ');
          sql.Add('  ''CANCEL'' as ZSYWJC,CLZL.CLZMLB,kfxxzl.jijie,kfxxzl.fd,ypzl.kfjd,kfxxzl.xieming,cg.recs,cg.cgdate,cg.yqdate,cg.ETA,cg.cgno,cgkcuse.USERID as SamplePurchaser,BUSERS.USERNAME as SamplePurchaser_Name');
          sql.Add(' ,cgkcuse.USERID,cgkcuse.USERDATE,QtyIn, QtyOut,(QtyIn - QtyOut) as Total');
          sql.Add(' from cgkcuse');
          sql.Add(' left join ypzl on ypzl.ypdh=cgkcuse.ZLBH');
          sql.Add(' left join CLZL ON cgkcuse.CLBH=CLZL.CLDH');

          sql.Add('       left join  (select sum(KCLLS.Qty) as QtyOut,KCLLS.CLBH,KCLLS.SCBH from KCLLS group by kclls.SCBH,kclls.CLBH ) as KCLLS on KCLLS.CLBH = clzl.cldh and KCLLS.SCBH = ypzl.YPDH');
          sql.Add('       left join (select kcrks.cgbh,kcrks.clbh,sum(qty) as QtyIn from KCRKS group by kcrks.cgbh,kcrks.clbh ) KCRKS on KCRKS.CLBH=clzl.cldh and kcrks.CGBH=ypzl.ypdh');

          sql.add(' left join BUSERS  on BUSERS.USERID=cgkcuse.USERID  ');
          sql.Add(' left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add(' left join (select cs.clbh,cs.stage,cs.zlbh, sum(isnull(cs.qty,0)) as cgqty,count(cs.clbh) as recs, min(cgzl.cgdate) as cgdate, min(cgzls.CFMdate) as yqdate,min(cgzls.ETA) as ETA, min(cgzls.cgno) as cgno from cgzlss cs');
          sql.Add('             left join cgzl on cgzl.cgno=cs.cgno');
          sql.Add('             left join cgzls on cgzls.cgno=cs.cgno and cgzls.clbh=cs.clbh');
          sql.Add('             where cgzl.CGLX=''6'' '); // 6=sample order
          if length(edt2.Text) > 0 then    //Stage
             sql.Add('                 and cs.stage = '''+edt2.Text+'''');

          sql.Add('             group by cs.clbh,cs.stage,cs.zlbh');
          sql.Add('           ) cg on cg.clbh=cgkcuse.CLBH and cg.stage=ypzl.kfjd and cg.zlbh=kfxxzl.devcode ');
          sql.Add(' where cgkcuse.gsbh=''R&D'' and clzl.clzmlb=''N'' ');

          if length(edt2.Text) > 0 then
             sql.Add(' and ypzl.kfjd = '''+edt2.Text+'''');

          if length(EditMatNo.Text) > 0 then
             sql.Add(' and CGKCUSE.CLBH like ''%'+EditMatNo.Text+'%''');

          if length(EditSeason.Text) > 0 then
             sql.Add(' and kfxxzl.jijie = '''+EditSeason.Text+'''');
          if length(EditSampleOrd.Text) > 0 then      //SampleOrd
             sql.Add('                and ypzl.YPDH='''+EditSampleOrd.Text+'''');

          if chk1.Checked then
          begin
            sql.add('and convert(smalldatetime,convert(varchar,cgkcuse.USERDATE,111))  between ');
            sql.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
          end;

          sql.Add(' and not exists');
          sql.add('      ( select * from ');
          sql.add('           (select ypzls.clbh,YPZL.YPDH FROM YPZLS  ');
          sql.Add('            left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add('            where clzl.clzmlb=''N'' ');
          if length(edt2.Text) > 0 then
             sql.Add('             and ypzl.kfjd = '''+edt2.Text+'''');
          if length(EditMatNo.Text) > 0 then
             sql.Add('             and YPZLS.CLBH like ''%'+EditMatNo.Text+'%''');
          if length(EditSampleOrd.Text) > 0 then      //SampleOrd
             sql.Add('                and ypzl.YPDH='''+EditSampleOrd.Text+'''');

          if length(EditSeason.Text) > 0 then
             sql.Add('             and kfxxzl.jijie = '''+EditSeason.Text+'''');
          sql.Add('            UNION ALL');
          sql.add('            select CLZHZL.cldh1 AS clbh,YPZL.YPDH FROM YPZLS');
          sql.Add('            INNER  JOIN CLZHZL   ON YPZLS.CLBH = CLZHZL.cldh');
          sql.Add('            left join ypzl on ypzl.ypdh=ypzls.ypdh');
          sql.Add('            left join kfxxzl on kfxxzl.xiexing=YPZL.xiexing and kfxxzl.shehao=YPZL.shehao');
          sql.Add('            where clzl.clzmlb=''N'' ');
          if length(edt2.Text) > 0 then
             sql.Add('              and ypzl.kfjd = '''+edt2.Text+'''');
          if length(EditMatNo.Text) > 0 then
             sql.Add('              and CLZHZL.CLDH1 like ''%'+EditMatNo.Text+'%''');
          if length(EditSampleOrd.Text) > 0 then      //SampleOrd
             sql.Add('                and ypzl.YPDH='''+EditSampleOrd.Text+'''');

          if length(EditSeason.Text) > 0 then
             sql.Add('              and kfxxzl.jijie = '''+EditSeason.Text+'''');
          sql.Add('             GROUP BY CLZHZL.cldh1,YPZL.YPDH   ');
          sql.Add('          )yp where yp.clbh=CGKCUSE.CLBH  AND YP.YPDH=cgkcuse.ZLBH ');
          sql.Add('     ) ');
          active:=true;
          //funcObj.WriteErrorLog(sql.Text);
          //showmessage(sql.Text);
      end ;
end;

procedure TTraceStock.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if  Query1.active  then
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
        for   i:=0   to   Query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
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
