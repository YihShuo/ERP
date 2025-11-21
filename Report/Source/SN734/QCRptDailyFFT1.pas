unit QCRptDailyFFT1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls, DB, DBTables, Comobj;

type
  TQCRptDailyFFT = class(TForm)
    Panel1: TPanel;
    RefreshLabel: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    TDate: TDateTimePicker;
    DBGridEh1: TDBGridEh;
    Label4: TLabel;
    Label1: TLabel;
    DepNameEdit: TEdit;
    FFTQry: TQuery;
    FFTQrysumline: TStringField;
    FFTQryDepName: TStringField;
    FFTQryC: TFloatField;
    FFTQryS: TFloatField;
    FFTQryA: TFloatField;
    FFTQryAR: TFloatField;
    FFTQryFTT: TFloatField;
    FFTQryDaily_Defect: TStringField;
    FFTQryHourly_Defect: TStringField;
    FFTUpd: TUpdateSQL;
    DS: TDataSource;
    YYBHQry: TQuery;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ShowSumlineFFTReport();
  public
    SubsumlineSQL:string;
    { Public declarations }
  end;

var
  QCRptDailyFFT: TQCRptDailyFFT;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TQCRptDailyFFT.Button1Click(Sender: TObject);
begin
  if DepNameEdit.Text<>'' then
  SubsumlineSQL:='and BDepartment.DepName like '''+DepNameEdit.Text+'%'' ';
  ShowSumlineFFTReport();
end;

//顯示報表
procedure TQCRptDailyFFT.ShowSumlineFFTReport();
begin
   //顯示產線FFT
   with FFTQry do
   begin
     requestlive:=false;
     cachedupdates:=false;
     Active:=false;
     SQL.Clear;
     SQL.Add('select  FTT.sumline,');
     SQL.Add('max(case when (GXLB=''A'' OR GXLB=''AR'') then DepName end )as Depname, ');
     SQL.Add('sum(case when GXLB = ''C'' then Qty end) as ''C'', ');
     SQL.Add('sum(case when GXLB = ''S'' then Qty end) as ''S'', ');
     SQL.Add('sum(case when GXLB = ''A'' then Qty end) as ''A'', ');
     SQL.Add('sum(case when GXLB = ''AR'' then Qty end) as ''AR'', ');
     SQL.Add('Round(power(10.0000,sum(LOG10(NULLIF(QTY,0)*0.01)))*100,1) as ''FTT'', ');
     SQL.Add('''                                                                           '' as Daily_Defect,''                                                             '' as Hourly_Defect ');
     SQL.Add('from(select  WOPRB.DepNo,WOPRB.DepName,WOPRB.sumline,Replace(WOPRB.GXLB,''C+S'',''S'') as GXLB,''4.Pass%'' as SB, ');
     SQL.Add('		    Round(100-((CAST(QCRDB.Qty AS Float)/NULLIF(WOPRB.Qty,0))*100),1) as Qty,WOPRB.NDay ');
     SQL.Add('	 from(select WOPR.DepNo,BDepartment.DepName,BDepartment.sumline,WOPR.GXLB,SUM(WOPR.Qty)+SUM(WOPR.ReQty)+sum(WOPR.NGQty) as Qty ');
     SQL.Add('				 ,DATEPART(DAY,WOPR.USERDATE) as NDay');
     SQL.Add('		  from WOPR ');
     SQL.Add('		  left join BDepartment on WOPR.DepNo = BDepartment.ID ');
     SQL.Add(' 		  where convert(smalldatetime,WOPR.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',TDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',TDate.Date+1)+''' ');
     //20140331不同廠區FFT計算差異
     if main.sGSBH='VA12' then
       SQL.Add('				and WOPR.GSBH ='''+main.sGSBH+''' and WOPR.GXLB in (''A'',''AR'',''C'',''C+S'') '+SubsumlineSQL)
     else if main.sGSBH='VB1' then
       SQL.Add('				and WOPR.GSBH ='''+main.sGSBH+''' and WOPR.GXLB in (''A'',''C+S'') '+SubsumlineSQL)
     else  //其他廠區
       SQL.Add('				and WOPR.GSBH ='''+main.sGSBH+''' and WOPR.GXLB in (''A'',''AR'',''C'',''C+S'') '+SubsumlineSQL);
     SQL.Add('		  group by WOPR.DepNo,BDepartment.DepName,BDepartment.sumline,WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE)) as WOPRB ');
     SQL.Add('		  left join (select WOPR.DepNo,WOPR.GXLB,SUM(WOPR.NGQty) as Qty,DATEPART(DAY,WOPR.USERDATE) as NDay ');
     SQL.Add('					 from WOPR');
     SQL.Add('					 where convert(smalldatetime,WOPR.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',TDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',TDate.Date+1)+''' ');
     //20140331不同廠區FFT計算差異
     if main.sGSBH='VA12' then
        SQL.Add('						   and WOPR.GSBH = '''+main.sGSBH+''' and WOPR.GXLB in (''A'',''AR'',''C'',''C+S'') ')
     else if main.sGSBH='VB1' then
        SQL.Add('						   and WOPR.GSBH = '''+main.sGSBH+''' and WOPR.GXLB in (''A'',''C+S'') ')
     else //其他廠區
        SQL.Add('						   and WOPR.GSBH = '''+main.sGSBH+''' and WOPR.GXLB in (''A'',''AR'',''C'',''C+S'') ');
     SQL.Add('					 group by WOPR.DepNo,WOPR.GXLB,DATEPART(DAY,WOPR.USERDATE)) as QCRDB ');
     SQL.Add('							  on WOPRB.DepNo = QCRDB.DepNo and WOPRB.GXLB = QCRDB.GXLB and WOPRB.NDay = QCRDB.NDay');
     SQL.Add('     where WOPRB.sumline is not null) as FTT ');
     SQL.Add('group by FTT.sumline ');
     SQL.Add('order by FTT.sumline ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   //顯示每日 和 每小時數量最多的Defect原因
   with YYBHQry do
   begin
     Active:=false;
     SQL.Clear;
     SQL.Add('select  Daily.sumline,Daily.YWSM as D_YWSM,Daily.ZWSM as D_ZWSM,Hourly.YWSM as H_YWSM,Hourly.ZWSM as H_ZWSM from ');
     SQL.Add('( ');
     //每日
     SQL.Add('select  DAYQCR.sumline,QCBLYY.YWSM,QCBLYY.ZWSM ');
     SQL.Add('		   from(Select F_QCR.sumline,F_QCR.Qty,Max(F_QCR.YYBH) as YYBH ');
     SQL.Add('			    from (select QCR_A.*,QCR_B.YYBH ');
     SQL.Add('				      from(select G_QCR.sumline,Max(G_QCR.Qty)as Qty ');
     SQL.Add('						   from(select QCR.DepNo,bdepartment.sumline,QCRD.YYBH,Sum(QCRD.Qty) as Qty ');
     SQL.Add('					            from QCR');
     SQL.Add('							    left join QCRD on QCR.Prono=QCRD.Prono');
     SQL.Add('								left join bdepartment on qcr.depno = bdepartment.ID');
     SQL.Add('							    where convert(smalldatetime,QCR.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',TDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',TDate.Date+1)+''' and QCR.GSBH='''+main.sGSBH+''' '+SubsumlineSQL);
     SQL.Add('							    group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as G_QCR');
     SQL.Add('							    group by G_QCR.sumline) as QCR_A');
     SQL.Add('			    left join (select QCR.DepNo,bdepartment.sumline,QCRD.YYBH,Sum(QCRD.Qty) as Qty ');
     SQL.Add('						   from QCR ');
     SQL.Add('						   left join QCRD on QCR.Prono=QCRD.Prono ');
     SQL.Add('						   left join bdepartment on qcr.depno = bdepartment.ID ');
     SQL.Add('						   where convert(smalldatetime,QCR.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',TDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',TDate.Date+1)+''' and QCR.GSBH='''+main.sGSBH+'''  '+SubsumlineSQL);
     SQL.Add('						   group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as QCR_B ');
     SQL.Add('								  on QCR_A.sumline=QCR_B.Sumline and QCR_A.Qty=QCR_B.Qty) as F_QCR ');
     SQL.Add('			    where F_QCR.sumline is not null ');
     SQL.Add('				group by F_QCR.sumline,F_QCR.Qty) as DAYQCR ');
     SQL.Add('		   left join QCBLYY on DAYQCR.YYBH = QCBLYY.YYBH and QCBLYY.GSBH = '''+main.sGSBH+''' ');
     SQL.Add(') as Daily ');
     SQL.Add('left join ');
     SQL.Add('( ');
     //每小時
     SQL.Add('select  DAYQCR.sumline,QCBLYY.YWSM,QCBLYY.ZWSM ');
     SQL.Add('		   from(Select F_QCR.sumline,F_QCR.Qty,Max(F_QCR.YYBH) as YYBH ');
     SQL.Add('			    from (select QCR_A.*,QCR_B.YYBH ');
     SQL.Add('				      from(select G_QCR.sumline,Max(G_QCR.Qty)as Qty ');
     SQL.Add('						   from(select QCR.DepNo,bdepartment.sumline,QCRD.YYBH,Max(QCRD.Qty) as Qty ');
     SQL.Add('					            from QCR');
     SQL.Add('							    left join QCRD on QCR.Prono=QCRD.Prono');
     SQL.Add('								left join bdepartment on qcr.depno = bdepartment.ID');
     SQL.Add('							    where convert(smalldatetime,QCR.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',TDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',Date()+1)+''' and QCR.GSBH='''+main.sGSBH+''' and datepart(HH,QCRD.userdate) = datepart(HH,getdate())-1 '+SubsumlineSQL);
     SQL.Add('							    group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as G_QCR');
     SQL.Add('							    group by G_QCR.sumline) as QCR_A');
     SQL.Add('			    left join (select QCR.DepNo,bdepartment.sumline,QCRD.YYBH,Max(QCRD.Qty) as Qty ');
     SQL.Add('						   from QCR ');
     SQL.Add('						   left join QCRD on QCR.Prono=QCRD.Prono ');
     SQL.Add('						   left join bdepartment on qcr.depno = bdepartment.ID ');
     SQL.Add('						   where convert(smalldatetime,QCR.USERDATE,111) between '''+FormatDatetime('YYYY/MM/DD',TDate.Date)+''' and '''+FormatDatetime('YYYY/MM/DD',Date()+1)+''' and QCR.GSBH='''+main.sGSBH+''' and datepart(HH,QCRD.userdate) = datepart(HH,getdate())-1 '+SubsumlineSQL);
     SQL.Add('						   group by QCR.DepNo,bdepartment.sumline,QCRD.YYBH) as QCR_B ');
     SQL.Add('								  on QCR_A.sumline=QCR_B.Sumline and QCR_A.Qty=QCR_B.Qty) as F_QCR ');
     SQL.Add('			    where F_QCR.sumline is not null ');
     SQL.Add('				group by F_QCR.sumline,F_QCR.Qty) as DAYQCR ');
     SQL.Add('		   left join QCBLYY on DAYQCR.YYBH = QCBLYY.YYBH and QCBLYY.GSBH = '''+main.sGSBH+''' ');
     SQL.Add(') as Hourly on Daily.sumline=Hourly.sumline ');
     SQL.Add(' order by Daily.sumline ');
     //funcObj.WriteErrorLog(sql.Text);
     Active:=true;
   end;
   //更新空白欄位
   with FFTQry do
   begin
     requestlive:=true;
     cachedupdates:=true;
     //
     FFTQry.First;
     YYBHQry.First;
     while not Eof do
     begin
        //檢查其他中一個工段是0 的FFT應該也是0的
        if main.sGSBH='VA12' then
        begin
          if ((FieldByName('C').AsString='0') or  (FieldByName('S').AsString='0') or (FieldByName('A').AsString='0') or (FieldByName('AR').AsString='0')) then
          begin
            Edit;
            FieldByName('FTT').AsString:='0';
            Post;
          end;
        end else if main.sGSBH='VB1' then
        begin
          if ((FieldByName('S').AsString='0') or  (FieldByName('A').AsString='0') ) then
          begin
            Edit;
            FieldByName('FTT').AsString:='0';
            Post;
          end;
        end;
        //將原因更新到後面兩個欄位
        while not YYBHQry.Eof do
        begin
          if YYBHQry.FieldByName('Sumline').AsString=YYBHQry.FieldByName('Sumline').AsString then
          begin
            Edit;
            //Defect說明 顯示中文或越文
            if RB1.Checked=true then
            begin
              FieldByName('Daily_Defect').AsString:=YYBHQry.FieldByName('D_YWSM').AsString;
              FieldByName('Hourly_Defect').AsString:=YYBHQry.FieldByName('H_YWSM').AsString;
            end;
            if RB2.Checked=true then
            begin
              FieldByName('Daily_Defect').AsString:=YYBHQry.FieldByName('D_ZWSM').AsString;
              FieldByName('Hourly_Defect').AsString:=YYBHQry.FieldByName('H_ZWSM').AsString;
            end;
            Post;
            YYBHQry.Next;
            break;
          end;
          //
          if YYBHQry.FieldByName('Sumline').AsString>YYBHQry.FieldByName('Sumline').AsString then
            break
          else
            YYBHQry.Next;
        end;
        //
        next;
     end;
   end;
end;
//
procedure TQCRptDailyFFT.FormCreate(Sender: TObject);
begin
  TDate.Date:=Date();//今天日期
end;

procedure TQCRptDailyFFT.FormDestroy(Sender: TObject);
begin
  QCRptDailyFFT:=nil;
end;

procedure TQCRptDailyFFT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TQCRptDailyFFT.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  FFTQry.active  then
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
          for   i:=0   to   FFTQry.fieldcount-1   do
            begin
                eclApp.Cells(1,i+1):=FFTQry.fields[i].FieldName;
            end;

          FFTQry.First;
          j:=2;
          while   not   FFTQry.Eof   do
            begin
              for   i:=0   to  FFTQry.fieldcount-1  do
              begin
                eclApp.Cells(j,i+1):=FFTQry.Fields[i].Value;
              end;
            FFTQry.Next;
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
