unit RY_Inspection_Status1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, Buttons,
  ComCtrls, DBCtrls, Mask, Menus, ExtDlgs,comobj,jpeg,FunUnit;

type
  TRY_Inspection_Status = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    YWSM: TEdit;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    CheckBox1: TCheckBox;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Button2: TButton;
    DevTypeEdit: TComboBox;
    Last_Date: TCheckBox;
    Excel1: TQuery;
    Excel2: TQuery;
    Query1DDBH: TStringField;
    Query1DepName: TStringField;
    Query1KHPO: TStringField;
    Query1XieMing: TStringField;
    Query1Article: TStringField;
    Query1YWSM: TStringField;
    Query1DevType: TStringField;
    Query1Qty: TIntegerField;
    Query1okQty: TIntegerField;
    Query1RateQty: TStringField;
    Query1FTT: TStringField;
    Query1Production_NGQty: TIntegerField;
    Query1FTTdefectcode: TStringField;
    Query1HI_Tot: TIntegerField;
    Query1HILotPassRate: TFloatField;
    Query1HI_DefQty: TIntegerField;
    Query1HI_InsQty: TIntegerField;
    Query1DI_Tot: TIntegerField;
    Query1DILotPassRate: TFloatField;
    Query1DI_Defectcode: TStringField;
    Query1DI_DefQty: TIntegerField;
    Query1DI_InsQty: TIntegerField;
    Query1DIDefectRate: TFloatField;
    Query1ShipDate: TDateTimeField;
    Excel3: TQuery;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    DTP3: TDateTimePicker;
    Label4: TLabel;
    DTP4: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RY_Inspection_Status: TRY_Inspection_Status;

implementation

{$R *.dfm}

procedure TRY_Inspection_Status.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TRY_Inspection_Status.FormDestroy(Sender: TObject);
begin
  RY_Inspection_Status:=nil
end;

procedure TRY_Inspection_Status.Button1Click(Sender: TObject);
begin
  With Query1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('  select DDBH,DepName,KHPO,XieMing,Article,YWSM,DevType,Qty,okQty,LEFT(cast((case when RateQty <> 0 then RateQty else 0 end) as varchar),4)+''%'' RateQty,FTT        ');
    SQL.Add('  ,SUM(CASE WHEN Production_NGQty is not null THEN Production_NGQty WHEN Production_NGQty is null THEN NULL  ELSE 0 END) AS Production_NGQty,FTTdefectcode,HI_Tot           ');
    SQL.Add('  ,Case when HILot is not null then Round(1.00*sum(HILot)/ sum(HI_Tot),2) when HILot is null then NULL else 0 end  as ''HI Lot Pass Rate'' ,HI_DefQty,HI_InsQty,DI_Tot      ');
    SQL.Add('  ,Case when DILot is not null then Round(1.00*sum(DILot)/ sum(DI_Tot),2) when DILot is null then NULL else 0 end  as ''DI Lot Pass Rate'' ,DI_Defectcode ,DI_DefQty,DI_InsQty     ');
    SQL.Add('  ,Case when DI_DefQty is not null then Round(1.00*sum(DI_DefQty)/ sum(DI_InsQty),2)  else NUll end  as ''DI Defect Rate'' ,ShipDate          ');
    SQL.Add('  from (    ');
    SQL.Add('    select distinct DDZL.DDBH,DDZL.KHPO,XXZL.XieMing,DDZL.Article,LBZLS.YWSM,kfxxzl.DevType,     ');
    SQL.Add('    DDZL.Pairs as Qty,okQty,((okQty*100)/DDZL.Pairs) as RateQty,FTT  ');
    SQL.Add('    ,Case when HI_DefQty<>'''' then HI_DefQty when HI_DefQty=0 then 0 else NUll end as HI_DefQty  ');
    SQL.Add('    ,Case when HI_InsQty<>'''' then HI_InsQty when HI_InsQty=0 then 0 else NUll end as HI_InsQty  ');
    SQL.Add('    ,Case when DI_DefQty<>'''' then DI_DefQty when DI_DefQty=0 then 0 else NUll end as DI_DefQty  ');
    SQL.Add('    ,Case when DI_InsQty<>'''' then DI_InsQty when DI_InsQty=0 then 0 else NUll end as DI_InsQty   ');
    SQL.Add('    ,ISNULL(HILot,0) as HILot,ISNULL(DILot,0) as DILot, DI_Tot,HI_Tot,BDepartment.DepName       ');
    SQL.Add('    ,CAST(substring (( select ''/'' + QCMAD.YYBH        ');
    SQL.Add('    from QCMA        ');
    SQL.Add('    left join QCMAD on QCMAD.ProNo=QCMA.ProNo      ');
    //SQL.Add('    left join QCMAYY  on QCMAYY.YYBH=QCMAD.YYBH      ');
    SQL.Add('    where QCMA.SCBH=DDZL.DDBH and  BDepartment.ID=QCMA.DepNo and QCMA.GXLB=''DI'' and QCMA.SCBH in (select WOPR_MA.SCBH from WOPR_MA where WOPR_MA.SCBH=DDZL.DDBH and WOPR_MA.GXLB=''DI'' and WOPR_MA.PrdQty<>0)');
    SQL.Add('    group by QCMAD.YYBH order by CAST(QCMAD.YYBH AS varchar)        ');
    SQL.Add('    for XML Path ('''')),2,1000) as varchar(1000)  ) as DI_Defectcode      ');
    SQL.Add('    ,CAST(substring (( select ''/'' + QCRD.YYBH        ');
    SQL.Add('    from QCR        ');
    SQL.Add('    left join QCRD on QCR.ProNo=QCRD.ProNo      ');
    //SQL.Add('    left join QCBLYY  on QCBLYY.YYBH=QCRD.YYBH      ');
    SQL.Add('    where QCR.SCBH=DDZL.DDBH and   BDepartment.ID=QCR.DepNo and  QCR.GXLB=''AR'' and QCR.GSBH =''VA12'' ');

    SQL.Add('    and QCR.SCBH in (select WOPR.SCBH from WOPR where WOPR.SCBH=DDZL.DDBH and WOPR.GXLB=''AR'' and WOPR.NGQty<>0) ');
    SQL.Add('    group by QCRD.YYBH order by CAST(QCRD.YYBH AS varchar)        ');
    SQL.Add('    for XML Path ('''')),2,1000) as varchar(1000)  ) as FTTdefectcode     ');
    SQL.Add('    ,DDZL.ShipDate,Production_Qty ,Production_NGQty    ');
    SQL.Add('  from DDZL ');
    SQL.Add('  left join WOPR_MA on WOPR_MA.SCBH=DDZL.DDBH  ');
    SQL.Add('  left join KFZL on KFZl.KFDH=DDZl.KHBH     ');
    SQL.Add('  left join ZLZL on ZLZL.ZLBH=DDZL.DDBH    ');
    SQL.Add('  left join XXZL  on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao    ');
    SQL.Add('  left join LBZLS on LBZLS.LB=''06'' and LBZLS.LBDH=DDZL.DDGB    ');
    SQL.Add('  left join (select SCBH,DepNo,sum(Qty+NGQty) as Production_Qty,sum(NGQty) as Production_NGQty  from WOPR where GXLB=''AR'' group by SCBH,DepNo) MA on  MA.SCBH=DDZL.DDBH  and WOPR_MA.DepNo=MA.DepNo  ');
    SQL.Add('  left join BDepartment on BDepartment.ID=WOPR_MA.DepNo  ');
    SQL.Add('  left join kfxxzl ON DDZL.XieXing = kfxxzl.XieXing AND DDZL.SheHao = kfxxzl.SheHao     ');
    SQL.Add('  left join (select ywcp.DDBH,sum(YWCP.Qty) as okQty from ywcp where SB is not null group by DDBH) ywcp on ywcp.DDBH=DDZL.DDBH    ');
    SQL.Add('  left join (SELECT LEFT(cast((case when sum([Qty])>0 then sum([Qty])*100.0/(sum([Qty])+sum([NGQty])) else 0.0 end) as varchar),4)+''%'' FTT,SCBH    ');
    SQL.Add('                FROM WOPR where 1=1 and WOPR.GXLB=''AR'' group by SCBH) WOPR on WOPR.SCBH=DDZL.DDBH    ');
    SQL.Add('  left join (select sum(WOPR_MA.DefQty) as DI_DefQty, sum(WOPR_MA.InsQty) as DI_InsQty,SCBH,DepNo from WOPR_MA where 1=1 and GXLB=''DI'' and PrdQty<>0 group by SCBH,DepNo) Rate_DI on Rate_DI.SCBH=DDZL.DDBH and Rate_DI.DepNo=BDepartment.ID');
    SQL.Add('  left join (select sum(WOPR_MA.DefQty) as HI_DefQty, sum(WOPR_MA.InsQty) as HI_InsQty,SCBH,DepNo from WOPR_MA where 1=1 and GXLB=''HI'' and PrdQty<>0 group by SCBH,DepNo) Rate_HI on Rate_HI.SCBH=DDZL.DDBH and Rate_HI.DepNo=BDepartment.ID');
    SQL.Add('  left join (select count (WOPR_MA.ID) as HILot,SCBH,DepNo from WOPR_MA where 1=1 and GXLB=''HI'' and Result=''P'' and PrdQty<>0 group by SCBH,DepNo) Lot_HI on Lot_HI.SCBH=DDZL.DDBH and Lot_HI.DepNo=BDepartment.ID');
    SQL.Add('  left join (select count (WOPR_MA.ID) as DILot,SCBH,DepNo from WOPR_MA where 1=1 and GXLB=''DI'' and Result=''P'' and PrdQty<>0 group by SCBH,DepNo) Lot_DI on Lot_DI.SCBH=DDZL.DDBH and Lot_DI.DepNo=BDepartment.ID');
    SQL.Add('  left join (select count (WOPR_MA.ID) as DI_Tot,SCBH,DepNo from WOPR_MA where 1=1  and PrdQty<>0 and GXLB=''DI'' group by SCBH,DepNo) DILot_Tot on DILot_Tot.SCBH=DDZL.DDBH and DILot_Tot.DepNo=BDepartment.ID');
    SQL.Add('  left join (select count (WOPR_MA.ID) as HI_Tot,SCBH,DepNo from WOPR_MA where 1=1  and PrdQty<>0 and GXLB=''HI'' group by SCBH,DepNo) HILot_Tot on HILot_Tot.SCBH=DDZL.DDBH and HILot_Tot.DepNo=BDepartment.ID');
    SQL.Add('  where 1=1 ');
    if Last_Date.Checked then
      SQL.Add('and WOPR_MA.Last_Date=''Y''  ');
    if CheckBox1.Checked=true then
      SQL.Add('and  CONVERT(varchar(10),DDZL.ShipDate ,111) between ''' + formatdatetime('yyyy/MM/dd', DTP1.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP2.date) + ''' ');
    if CheckBox2.Checked=true then
      SQL.Add('and  CONVERT(varchar(10),WOPR_MA.SCDate ,111) between ''' + formatdatetime('yyyy/MM/dd', DTP3.date) + ''' and ''' + formatdatetime('yyyy/MM/dd', DTP4.date) + ''' ');
    if DevTypeEdit.Text<>'' then
      SQL.Add('and kfxxzl.DevType like ''%'+DevTypeEdit.Text+'%'' ');
    if YWSM.Text<>'' then
      SQL.Add(' and LBZLS.YWSM like ''%'+YWSM.Text+'%'' ');
    SQL.Add('    ) WOPR_MA  ');
    SQL.Add('       ');
    SQL.Add('group by DDBH,KHPO,XieMing,Article,YWSM,DevType,Qty,okQty,RateQty,FTT,WOPR_MA.HI_DefQty,DI_DefQty,HILot,DILot,HI_DefQty,HI_InsQty,ShipDate,DepName,DI_Defectcode,FTTdefectcode,HI_Tot');
    SQL.Add(',DI_Tot,DI_Defectcode,DI_DefQty,DI_InsQty ');
    SQL.Add('order by DDBH,ShipDate  ');
    //funcobj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TRY_Inspection_Status.FormCreate(Sender: TObject);
begin
  DTP1.Date:=Date();
  DTP2.Date:=Date();
  DTP3.Date:=Date();
  DTP4.Date:=Date();
end;

procedure TRY_Inspection_Status.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j,Pass,Fail:integer;
begin
  if Query1.Active then
  begin
    if Query1.recordcount=0 then
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

    for   i:=1   to   Query1.fieldcount-11   do
    begin
      eclApp.Cells(1,i):=DBGridEh1.Columns[i-1].Title.Caption;
    end;
    eclApp.Cells(1,14):='TQC TOP1 Defect';
    eclApp.Cells(1,15):='TQC TOP1 Defect Rate';
    eclApp.Cells(1,16):='TQC TOP2 Defect';
    eclApp.Cells(1,17):='TQC TOP2 Defect Rate';
    eclApp.Cells(1,18):='TQC TOP3 Defect';
    eclApp.Cells(1,19):='TQC TOP3 Defect Rate';
    eclApp.Cells(1,20):='HI Lot Qty';
    eclApp.Cells(1,21):='HI Lot Pass Rate';
    eclApp.Cells(1,22):='HI Defect Qty';
    eclApp.Cells(1,23):='HI Inspect Qty';
    eclApp.Cells(1,24):='HI TOP1 Defect';
    eclApp.Cells(1,25):='HI TOP1 Defect Rate';
    eclApp.Cells(1,26):='HI TOP2 Defect';
    eclApp.Cells(1,27):='HI TOP2 Defect Rate';
    eclApp.Cells(1,28):='HI TOP3 Defect';
    eclApp.Cells(1,29):='HI TOP3 Defect Rate';
    eclApp.Cells(1,30):='DI Lot Qty';
    eclApp.Cells(1,31):='DI Lot Pass Rate';
    eclApp.Cells(1,32):='DI TOP1 Defect';
    eclApp.Cells(1,33):='DI TOP1 Defect Rate';
    eclApp.Cells(1,34):='DI TOP2 Defect';
    eclApp.Cells(1,35):='DI TOP2 Defect Rate';
    eclApp.Cells(1,36):='DI TOP3 Defect';
    eclApp.Cells(1,37):='DI TOP3 Defect Rate';
    eclApp.Cells(1,38):='DI Defect Qty';
    eclApp.Cells(1,39):='DI Inspect qty';
    eclApp.Cells(1,40):='DI Defect Rate';
    eclApp.Cells(1,41):='GAC date';

    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
        With Excel1 do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('select QCR1.YYBH as TQC_TOP1_defect,QCR1.TQC_T_1 as TQC_TOP1_defect_rate,QCR2.YYBH as TQC_TOP2_defect,QCR2.TQC_T_1 as TQC_TOP2_defect_rate,QCR3.YYBH as TQC_TOP3_defect,QCR3.TQC_T_1 as TQC_TOP3_defect_rate   ');
          SQL.Add('from ddzl');
          SQL.Add('  left join (SELECT   QCR.SCBH,QCRD.YYBH,sum (QCRD.Qty) as QTY,  ');
          SQL.Add('  	          LEFT(cast((case when sum (QCRD.Qty)>0 then sum (QCRD.Qty)*100.0/max(DDZL.Pairs) else NULL end) as varchar),4)+''%'' TQC_T_1,   ');
          SQL.Add('  	          ROW_NUMBER() OVER (ORDER BY SUM(QCRD.Qty) DESC) AS RowNum1  ');
          SQL.Add('             FROM QCR  ');
          SQL.Add('             LEFT JOIN BDepartment on BDepartment.ID=QCR.DepNo  ');
          SQL.Add('  	          LEFT JOIN DDZL on DDZL.DDBH = QCR.SCBH  ');
          SQL.Add('             LEFT JOIN QCRD ON QCR.ProNo = QCRD.ProNo  ');
          SQL.Add('             WHERE QCR.GXLB = ''AR'' and QCRD.Qty <> 0 and SCBH='''+Query1.FieldByName('DDBH').AsString+'''  ');
          SQL.Add('             and BDepartment.DepName = '''+Query1.FieldByName('DepName').AsString+'''  ');
          SQL.Add('             GROUP BY QCRD.YYBH,QCR.SCBH ) QCR1 on QCR1.SCBH =DDZL.DDBH and RowNum1=1  ');
          SQL.Add('  left join (SELECT   QCR.SCBH,QCRD.YYBH,sum (QCRD.Qty) as QTY,  ');
          SQL.Add('  	          LEFT(cast((case when sum (QCRD.Qty)>0 then sum (QCRD.Qty)*100.0/max(DDZL.Pairs) else NULL end) as varchar),4)+''%'' TQC_T_1,   ');
          SQL.Add('  	          ROW_NUMBER() OVER (ORDER BY SUM(QCRD.Qty) DESC) AS RowNum2  ');
          SQL.Add('             FROM QCR  ');
          SQL.Add('             LEFT JOIN BDepartment on BDepartment.ID=QCR.DepNo  ');
          SQL.Add('  	          LEFT JOIN DDZL on DDZL.DDBH = QCR.SCBH  ');
          SQL.Add('             LEFT JOIN QCRD ON QCR.ProNo = QCRD.ProNo  ');
          SQL.Add('             WHERE QCR.GXLB = ''AR'' and QCRD.Qty <> 0 and SCBH='''+Query1.FieldByName('DDBH').AsString+'''  ');
           SQL.Add('             and BDepartment.DepName = '''+Query1.FieldByName('DepName').AsString+'''  ');
          SQL.Add('             GROUP BY QCRD.YYBH,QCR.SCBH ) QCR2 on QCR2.SCBH =DDZL.DDBH and RowNum2=2  ');
          SQL.Add('  left join (SELECT   QCR.SCBH,QCRD.YYBH,sum (QCRD.Qty) as QTY,  ');
          SQL.Add('  	          LEFT(cast((case when sum (QCRD.Qty)>0 then sum (QCRD.Qty)*100.0/max(DDZL.Pairs) else NULL end) as varchar),4)+''%'' TQC_T_1,   ');
          SQL.Add('  	          ROW_NUMBER() OVER (ORDER BY SUM(QCRD.Qty) DESC) AS RowNum3  ');
          SQL.Add('             FROM QCR  ');
          SQL.Add('             LEFT JOIN BDepartment on BDepartment.ID=QCR.DepNo  ');
          SQL.Add('  	          LEFT JOIN DDZL on DDZL.DDBH = QCR.SCBH  ');
          SQL.Add('             LEFT JOIN QCRD ON QCR.ProNo = QCRD.ProNo  ');
          SQL.Add('             WHERE QCR.GXLB = ''AR'' and QCRD.Qty <> 0 and SCBH='''+Query1.FieldByName('DDBH').AsString+''' ');
          SQL.Add('             and BDepartment.DepName = '''+Query1.FieldByName('DepName').AsString+'''  ');
          SQL.Add('             GROUP BY QCRD.YYBH,QCR.SCBH ) QCR3 on QCR3.SCBH =DDZL.DDBH and RowNum3=3  ');
          SQL.Add('where ddbh ='''+Query1.FieldByName('DDBH').AsString+'''  ');
          //funcobj.WriteErrorLog(sql.Text);
          Active:=true;
        end;

        With Excel2 do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('select   Case when DI_DefQty>0 then QCR1.YYBH  else NULL end as TQC_TOP1_defect     ');
          SQL.Add('            ,Case when DI_DefQty>0 then QCR1.TQC_T_1  else NULL end as TQC_TOP1_defect_rate       ');
          SQL.Add('            ,Case when (QCR1.QTy= DI_DefQty) then NULL when DI_DefQty<2 then NULL else QCR2.YYBH end as TQC_TOP2_defect      ');
          SQL.Add('            ,Case when (QCR1.QTy= DI_DefQty)  then NULL when DI_DefQty<2 then NULL else QCR2.TQC_T_1 end as TQC_TOP2_defect_rate      ');
          SQL.Add('            ,Case when (QCR1.QTy= DI_DefQty) then NULL when DI_DefQty<3 then NULL else QCR3.YYBH end as TQC_TOP3_defect      ');
          SQL.Add('            ,Case when (QCR1.QTy= DI_DefQty)  then NULL when DI_DefQty<3 then NULL  else QCR3.TQC_T_1 end as TQC_TOP3_defect_rate   ');
          SQL.Add('from ddzl  left join (SELECT   QCMA.SCBH,QCMAD.YYBH,sum (QCMAD.Qty) as QTy,  ');
          SQL.Add('  	          LEFT(cast((case when sum (QCMAD.Qty)>0 then sum (QCMAD.Qty)*100.0/TolQty else NULL end) as varchar),4)+''%'' TQC_T_1,   ');
          SQL.Add('  	          ROW_NUMBER() OVER (ORDER BY SUM(QCMAD.Qty) DESC) AS RowNum1  ');
          SQL.Add('             FROM QCMA  ');
          SQL.Add('             LEFT JOIN BDepartment on BDepartment.ID=QCMA.DepNo  ');
          SQL.Add('             LEFT JOIN QCMAD ON QCMA.ProNo = QCMAD.ProNo  ');
          SQL.Add('  		      	LEFT JOIN (select WOPR_MA.SCBH,WOPR_MA.DepNo, sum (WOPR_MA.InsQty) as TolQty from WOPR_MA where WOPR_MA.GXLB = ''HI'' group by WOPR_MA.SCBH,WOPR_MA.DepNo) WOPR on WOPR.SCBH=QCMA.SCBH and WOPR.DepNo=QCMA.DepNo ');
          SQL.Add('             WHERE QCMA.GXLB = ''HI'' and QCMA.SCBH ='''+Query1.FieldByName('DDBH').AsString+'''  ');
          SQL.Add('             and BDepartment.DepName='''+Query1.FieldByName('DepName').AsString+'''  ');
          SQL.Add('             GROUP BY QCMA.SCBH,QCMAD.YYBH,TolQty) QCR1 on QCR1.SCBH =DDZL.DDBH and RowNum1=1  ');
          SQL.Add('  left join (SELECT   QCMA.SCBH,QCMAD.YYBH,sum (QCMAD.Qty) as QTy,  ');
          SQL.Add('  	          LEFT(cast((case when sum (QCMAD.Qty)>0 then sum (QCMAD.Qty)*100.0/TolQty else NULL end) as varchar),4)+''%'' TQC_T_1,   ');
          SQL.Add('  	          ROW_NUMBER() OVER (ORDER BY SUM(QCMAD.Qty) DESC) AS RowNum2  ');
          SQL.Add('             FROM QCMA  ');
          SQL.Add('             LEFT JOIN BDepartment on BDepartment.ID=QCMA.DepNo  ');
          SQL.Add('             LEFT JOIN QCMAD ON QCMA.ProNo = QCMAD.ProNo  ');
          SQL.Add('  		      	LEFT JOIN (select WOPR_MA.SCBH,WOPR_MA.DepNo, sum (WOPR_MA.InsQty) as TolQty from WOPR_MA where WOPR_MA.GXLB = ''HI'' group by WOPR_MA.SCBH,WOPR_MA.DepNo) WOPR on WOPR.SCBH=QCMA.SCBH and WOPR.DepNo=QCMA.DepNo ');
          SQL.Add('             WHERE QCMA.GXLB = ''HI'' and QCMA.SCBH ='''+Query1.FieldByName('DDBH').AsString+'''  ');
          SQL.Add('             and BDepartment.DepName='''+Query1.FieldByName('DepName').AsString+'''  ');
          SQL.Add('             GROUP BY QCMA.SCBH,QCMAD.YYBH,TolQty ) QCR2 on QCR2.SCBH =DDZL.DDBH and RowNum2=2  ');
          SQL.Add('  left join (SELECT   QCMA.SCBH,QCMAD.YYBH,sum (QCMAD.Qty) as QTy,  ');
          SQL.Add('  	          LEFT(cast((case when sum (QCMAD.Qty)>0 then sum (QCMAD.Qty)*100.0/TolQty else NULL end) as varchar),4)+''%'' TQC_T_1,   ');
          SQL.Add('  	          ROW_NUMBER() OVER (ORDER BY SUM(QCMAD.Qty) DESC) AS RowNum3  ');
          SQL.Add('             FROM QCMA  ');
          SQL.Add('             LEFT JOIN BDepartment on BDepartment.ID=QCMA.DepNo  ');
          SQL.Add('             LEFT JOIN QCMAD ON QCMA.ProNo = QCMAD.ProNo  ');
          SQL.Add('  		      	LEFT JOIN (select WOPR_MA.SCBH,WOPR_MA.DepNo, sum (WOPR_MA.InsQty) as TolQty from WOPR_MA where WOPR_MA.GXLB = ''HI'' group by WOPR_MA.SCBH,WOPR_MA.DepNo) WOPR on WOPR.SCBH=QCMA.SCBH and WOPR.DepNo=QCMA.DepNo ');
          SQL.Add('             WHERE QCMA.GXLB = ''HI'' and QCMA.SCBH ='''+Query1.FieldByName('DDBH').AsString+'''  ');
          SQL.Add('             and BDepartment.DepName='''+Query1.FieldByName('DepName').AsString+'''  ');
          SQL.Add('             GROUP BY QCMA.SCBH,QCMAD.YYBH,TolQty) QCR3 on QCR3.SCBH =DDZL.DDBH and RowNum3=3  ');
          SQL.Add('  left join (select sum(WOPR_MA.DefQty) as DI_DefQty,SCBH from WOPR_MA LEFT JOIN BDepartment on BDepartment.ID=WOPR_MA.DepNo  ');
          SQL.Add('             where 1=1 and WOPR_MA.GXLB=''HI'' and PrdQty<>0 and   BDepartment.DepName='''+Query1.FieldByName('DepName').AsString+''' group by SCBH) Rate_DI on Rate_DI.SCBH=DDZL.DDBH  ');
          SQL.Add('where ddbh ='''+Query1.FieldByName('DDBH').AsString+'''  ');
          //funcobj.WriteErrorLog(sql.Text);
          Active:=true;
        end;

        With Excel3 do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('select   Case when DI_DefQty>0 then QCR1.YYBH  else NULL end as TQC_TOP1_defect     ');
          SQL.Add('            ,Case when DI_DefQty>0 then QCR1.TQC_T_1  else NULL end as TQC_TOP1_defect_rate       ');
          SQL.Add('            ,Case when (QCR1.QTy= DI_DefQty) then NULL when DI_DefQty<2 then NULL else QCR2.YYBH end as TQC_TOP2_defect      ');
          SQL.Add('            ,Case when (QCR1.QTy= DI_DefQty)  then NULL when DI_DefQty<2 then NULL else QCR2.TQC_T_1 end as TQC_TOP2_defect_rate      ');
          SQL.Add('            ,Case when (QCR1.QTy= DI_DefQty) then NULL when DI_DefQty<3 then NULL else QCR3.YYBH end as TQC_TOP3_defect      ');
          SQL.Add('            ,Case when (QCR1.QTy= DI_DefQty)  then NULL when DI_DefQty<3 then NULL  else QCR3.TQC_T_1 end as TQC_TOP3_defect_rate   ');
          SQL.Add('from ddzl  left join (SELECT   QCMA.SCBH,QCMAD.YYBH,sum (QCMAD.Qty) as QTy,  ');
          SQL.Add('  	          LEFT(cast((case when sum (QCMAD.Qty)>0 then sum (QCMAD.Qty)*100.0/TolQty else NULL end) as varchar),4)+''%'' TQC_T_1,   ');
          SQL.Add('  	          ROW_NUMBER() OVER (ORDER BY SUM(QCMAD.Qty) DESC) AS RowNum1  ');
          SQL.Add('             FROM QCMA  ');
          SQL.Add('             LEFT JOIN BDepartment on BDepartment.ID=QCMA.DepNo  ');
          SQL.Add('             LEFT JOIN QCMAD ON QCMA.ProNo = QCMAD.ProNo  ');
          SQL.Add('  		      	LEFT JOIN (select WOPR_MA.SCBH,WOPR_MA.DepNo, sum (WOPR_MA.InsQty) as TolQty from WOPR_MA where WOPR_MA.GXLB = ''DI'' group by WOPR_MA.SCBH,WOPR_MA.DepNo) WOPR on WOPR.SCBH=QCMA.SCBH and WOPR.DepNo=QCMA.DepNo ');
          SQL.Add('             WHERE QCMA.GXLB = ''DI'' and QCMA.SCBH ='''+Query1.FieldByName('DDBH').AsString+'''  ');
          SQL.Add('             and BDepartment.DepName='''+Query1.FieldByName('DepName').AsString+'''  ');
          SQL.Add('             GROUP BY QCMA.SCBH,QCMAD.YYBH,TolQty) QCR1 on QCR1.SCBH =DDZL.DDBH and RowNum1=1  ');
          SQL.Add('  left join (SELECT   QCMA.SCBH,QCMAD.YYBH,sum (QCMAD.Qty) as QTy,  ');
          SQL.Add('  	          LEFT(cast((case when sum (QCMAD.Qty)>0 then sum (QCMAD.Qty)*100.0/TolQty else NULL end) as varchar),4)+''%'' TQC_T_1,   ');
          SQL.Add('  	          ROW_NUMBER() OVER (ORDER BY SUM(QCMAD.Qty) DESC) AS RowNum2  ');
          SQL.Add('             FROM QCMA  ');
          SQL.Add('             LEFT JOIN BDepartment on BDepartment.ID=QCMA.DepNo  ');
          SQL.Add('             LEFT JOIN QCMAD ON QCMA.ProNo = QCMAD.ProNo  ');
          SQL.Add('  		      	LEFT JOIN (select WOPR_MA.SCBH,WOPR_MA.DepNo, sum (WOPR_MA.InsQty) as TolQty from WOPR_MA where WOPR_MA.GXLB = ''DI'' group by WOPR_MA.SCBH,WOPR_MA.DepNo) WOPR on WOPR.SCBH=QCMA.SCBH and WOPR.DepNo=QCMA.DepNo ');
          SQL.Add('             WHERE QCMA.GXLB = ''DI'' and QCMA.SCBH ='''+Query1.FieldByName('DDBH').AsString+'''  ');
          SQL.Add('             and BDepartment.DepName='''+Query1.FieldByName('DepName').AsString+'''  ');
          SQL.Add('             GROUP BY QCMA.SCBH,QCMAD.YYBH,TolQty ) QCR2 on QCR2.SCBH =DDZL.DDBH and RowNum2=2  ');
          SQL.Add('  left join (SELECT   QCMA.SCBH,QCMAD.YYBH,sum (QCMAD.Qty) as QTy,  ');
          SQL.Add('  	          LEFT(cast((case when sum (QCMAD.Qty)>0 then sum (QCMAD.Qty)*100.0/TolQty else NULL end) as varchar),4)+''%'' TQC_T_1,   ');
          SQL.Add('  	          ROW_NUMBER() OVER (ORDER BY SUM(QCMAD.Qty) DESC) AS RowNum3  ');
          SQL.Add('             FROM QCMA  ');
          SQL.Add('             LEFT JOIN BDepartment on BDepartment.ID=QCMA.DepNo  ');
          SQL.Add('             LEFT JOIN QCMAD ON QCMA.ProNo = QCMAD.ProNo  ');
          SQL.Add('  		      	LEFT JOIN (select WOPR_MA.SCBH,WOPR_MA.DepNo, sum (WOPR_MA.InsQty) as TolQty from WOPR_MA where WOPR_MA.GXLB = ''DI'' group by WOPR_MA.SCBH,WOPR_MA.DepNo) WOPR on WOPR.SCBH=QCMA.SCBH and WOPR.DepNo=QCMA.DepNo ');
          SQL.Add('             WHERE QCMA.GXLB = ''DI'' and QCMA.SCBH ='''+Query1.FieldByName('DDBH').AsString+'''  ');
          SQL.Add('             and BDepartment.DepName='''+Query1.FieldByName('DepName').AsString+'''  ');
          SQL.Add('             GROUP BY QCMA.SCBH,QCMAD.YYBH,TolQty) QCR3 on QCR3.SCBH =DDZL.DDBH and RowNum3=3  ');
          SQL.Add('  left join (select sum(WOPR_MA.DefQty) as DI_DefQty,SCBH from WOPR_MA LEFT JOIN BDepartment on BDepartment.ID=WOPR_MA.DepNo  ');
          SQL.Add('             where 1=1 and WOPR_MA.GXLB=''DI'' and PrdQty<>0 and  BDepartment.DepName='''+Query1.FieldByName('DepName').AsString+''' group by SCBH) Rate_DI on Rate_DI.SCBH=DDZL.DDBH  ');
          SQL.Add('where ddbh ='''+Query1.FieldByName('DDBH').AsString+'''  ');
          Active:=true;
        end;
        for   i:=1   to   Query1.fieldcount-11   do
        begin
            eclApp.Cells(j,i):=DBGridEh1.Fields[i-1].Value;
            eclApp.Cells(j,14):=Excel1.FieldByName('TQC_TOP1_defect').AsString;
            eclApp.ActiveSheet.Columns[14].HorizontalAlignment := '3';
            eclApp.Cells(j,15):=Excel1.FieldByName('TQC_TOP1_defect_rate').AsString;
            eclApp.Cells(j,16):=Excel1.FieldByName('TQC_TOP2_defect').AsString;
            eclApp.ActiveSheet.Columns[16].HorizontalAlignment := '3';
            eclApp.Cells(j,17):=Excel1.FieldByName('TQC_TOP2_defect_rate').AsString;
            eclApp.Cells(j,18):=Excel1.FieldByName('TQC_TOP3_defect').AsString;
            eclApp.ActiveSheet.Columns[18].HorizontalAlignment := '3';
            eclApp.Cells(j,19):=Excel1.FieldByName('TQC_TOP3_defect_rate').AsString;
            eclApp.Cells(j,20):=Query1.FieldByName('HI_Tot').AsString;
            eclApp.Cells(j,21):=Query1.FieldByName('HI Lot Pass Rate').AsString;
            eclApp.ActiveSheet.Columns[21].NumberFormatLocal := '0.00%';
            eclApp.Cells(j,22):=Query1.FieldByName('HI_DefQty').AsString;
            eclApp.Cells(j,23):=Query1.FieldByName('HI_InsQty').AsString;
            eclApp.Cells(j,24):=Excel2.FieldByName('TQC_TOP1_defect').AsString;
            eclApp.Cells(j,25):=Excel2.FieldByName('TQC_TOP1_defect_rate').AsString;
            eclApp.Cells(j,26):=Excel2.FieldByName('TQC_TOP2_defect').AsString;
            eclApp.Cells(j,27):=Excel2.FieldByName('TQC_TOP2_defect_rate').AsString;
            eclApp.Cells(j,28):=Excel2.FieldByName('TQC_TOP3_defect').AsString;
            eclApp.Cells(j,29):=Excel2.FieldByName('TQC_TOP3_defect_rate').AsString;
            eclApp.Cells(j,30):=Query1.FieldByName('DI_Tot').AsString;
            eclApp.Cells(j,31):=Query1.FieldByName('DI Lot Pass Rate').AsString;
            eclApp.ActiveSheet.Columns[31].NumberFormatLocal := '0.00%';
            eclApp.Cells(j,32):=Excel3.FieldByName('TQC_TOP1_defect').AsString;
            eclApp.Cells(j,33):=Excel3.FieldByName('TQC_TOP1_defect_rate').AsString;
            eclApp.Cells(j,34):=Excel3.FieldByName('TQC_TOP2_defect').AsString;
            eclApp.Cells(j,35):=Excel3.FieldByName('TQC_TOP2_defect_rate').AsString;
            eclApp.Cells(j,36):=Excel3.FieldByName('TQC_TOP3_defect').AsString;
            eclApp.Cells(j,37):=Excel3.FieldByName('TQC_TOP3_defect_rate').AsString;
            eclApp.Cells(j,38):=Query1.FieldByName('DI_DefQty').AsString;
            eclApp.Cells(j,39):=Query1.FieldByName('DI_InsQty').AsString;
            eclApp.Cells(j,40):=Query1.FieldByName('DI Defect Rate').AsString;
            eclApp.ActiveSheet.Columns[40].NumberFormatLocal := '0.00%';
            eclApp.Cells(j,41):=Query1.FieldByName('ShipDate').AsString;
        end;
        Query1.Next;
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

end.
