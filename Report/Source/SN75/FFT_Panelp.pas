unit FFT_Panelp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Menus, DB, DBTables, Grids, iniFiles,
  DBGrids;

type
  TFFTPanel = class(TForm)
    TopPanel: TPanel;
    RefreshLabel: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    TDate: TDateTimePicker;
    MainPanel: TPanel;
    Panel0: TPanel;
    Dep0: TLabel;
    C0: TLabel;
    S0: TLabel;
    A0: TLabel;
    AR0: TLabel;
    DD0: TLabel;
    HD0: TLabel;
    FFT0: TLabel;
    Panel1: TPanel;
    Dep1: TLabel;
    C1: TLabel;
    S1: TLabel;
    A1: TLabel;
    AR1: TLabel;
    FFT1: TLabel;
    DD1: TLabel;
    HD1: TLabel;
    Panel2: TPanel;
    Dep2: TLabel;
    C2: TLabel;
    S2: TLabel;
    A2: TLabel;
    AR2: TLabel;
    FFT2: TLabel;
    DD2: TLabel;
    HD2: TLabel;
    Panel3: TPanel;
    Dep3: TLabel;
    C3: TLabel;
    S3: TLabel;
    A3: TLabel;
    AR3: TLabel;
    FFT3: TLabel;
    DD3: TLabel;
    HD3: TLabel;
    Panel4: TPanel;
    Dep4: TLabel;
    C4: TLabel;
    S4: TLabel;
    A4: TLabel;
    AR4: TLabel;
    FFT4: TLabel;
    DD4: TLabel;
    HD4: TLabel;
    Panel5: TPanel;
    Dep5: TLabel;
    C5: TLabel;
    S5: TLabel;
    A5: TLabel;
    AR5: TLabel;
    FFT5: TLabel;
    DD5: TLabel;
    HD5: TLabel;
    Panel6: TPanel;
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
    YYBHQry: TQuery;
    ReLoadTimer: TTimer;
    FFTUpd: TUpdateSQL;
    Dep6: TLabel;
    C6: TLabel;
    S6: TLabel;
    A6: TLabel;
    AR6: TLabel;
    FFT6: TLabel;
    HD6: TLabel;
    DD6: TLabel;
    ShowTimer: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ShowTimerTimer(Sender: TObject);
    procedure Dep0DblClick(Sender: TObject);
    procedure ReLoadTimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ShowPanelParition();

  public
    SubsumlineSQL:String;
    { Public declarations }
    procedure ShowFFTonLabel();
    procedure ShowSumlineFFTReport();
    procedure ShowLabelBoard();
  end;

var
  FFTPanel: TFFTPanel;

implementation
  uses FFT_Panel_DepP, Main1, FunUnit;
{$R *.dfm}

procedure TFFTPanel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFFTPanel.FormDestroy(Sender: TObject);
begin
  FFTPanel:=nil;
end;


procedure TFFTPanel.FormResize(Sender: TObject);
begin
  ShowPanelParition();
  ShowTimer.Enabled:=true;
end;

procedure TFFTPanel.Button1Click(Sender: TObject);
begin

  FFT_Panel_Dep:=TFFT_Panel_Dep.Create(self);
  FFT_Panel_Dep.Parent:=self;
  FFT_Panel_Dep.ShowModal;
  FFT_Panel_Dep.Free;
  //
  
end;




//顯示FFT資訊
procedure TFFTPanel.ShowSumlineFFTReport();
begin
   //顯示產線FFT
   with FFTQry do
   begin
     requestlive:=false;
     cachedupdates:=false;
     Active:=false;
     SQL.Clear;
     SQL.Add('select  FTT.sumline,');
     SQL.Add('Case ');
     SQL.Add('when SubString(FTT.Sumline,4,1)=''L'' then SubString(FTT.Sumline,1,3)+''-LEAN''+SubString(FTT.Sumline,5,2)+''-''+SubString(FTT.Sumline,7,2) ');
     SQL.Add('when SubString(FTT.Sumline,4,1)=''B'' then SubString(FTT.Sumline,1,3)+''-L''+SubString(FTT.Sumline,5,2)+''-''+SubString(FTT.Sumline,7,2)  ');
     SQL.Add('end as DepName, ');
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

     //
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
          if ((FieldByName('C').AsString='0') or  (FieldByName('S').AsString='0') or (FieldByName('A').AsString='0') or (FieldByName('AR').AsString='0') or
              (FieldByName('C').AsString='') or  (FieldByName('S').AsString='') or (FieldByName('A').AsString='') or (FieldByName('AR').AsString='')
          ) then
          begin
            Edit;
            FieldByName('FTT').AsString:='0';
            Post;
          end;
        end else if main.sGSBH='VB1' then
        begin
          if ((FieldByName('S').AsString='0') or  (FieldByName('A').AsString='0') or (FieldByName('S').AsString='') or  (FieldByName('A').AsString='') ) then
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
   //
   if RB1.Checked=true then
     RefreshLabel.Caption:='Last refresh time: '+FormatDatetime('YYYY/MM/DD HH:NN:SS',now())
   else
     RefreshLabel.Caption:='Lan lam moi cuoi cung: '+FormatDatetime('YYYY/MM/DD HH:NN:SS',now());
   //顯示在Label上面
   ShowFFTonLabel();
   //關閉隱藏TopPanel
   TopPanel.Visible:=false;
   ShowPanelParition();
   //顯示外框
   ShowTimer.Enabled:=true;
end;
//調整區塊LABEL大小位子做標
procedure TFFTPanel.ShowPanelParition();
var i,wid,ScrHeigth,AvgPanelHei:integer;
    offSetTop:integer;
    tmpPanel:TPanel;
    tmpDep,tmpC,tmpS,tmpA,tmpAR,tmpDD,tmpHD,tmpFFT:TLabel;
const FontS_Hei_Ratio=0.62; //字體大小換算字體高度 比率測試取得
begin
  //取得可分配的版面高度
  ScrHeigth:=MainPanel.Height;
  //分配給七個區塊
  offSetTop:=0;
  AvgPanelHei:=ScrHeigth div 7;
  for i:=0 to 6 do
  begin
    tmpPanel:=TPanel(FindComponent('Panel'+IntToStr(i)));
    if tmpPanel<>nil then
    begin
      tmpPanel.Top:=offSetTop;
      tmpPanel.Left:=0;
      tmpPanel.Width:=MainPanel.Width;
      tmpPanel.Height:=AvgPanelHei; //給區塊平均高度
      offSetTop:=offSetTop+tmpPanel.Height;
      //調整部門Label
      tmpDep:=TLabel(FindComponent('Dep'+IntToStr(i)));
      if tmpDep<>nil then
      begin

        //
        tmpDep.Left:=0;
        tmpDep.Top:=0;
        tmpDep.Height:=tmpPanel.Height;
        tmpDep.Font.Size:=Round(tmpDep.Height*FontS_Hei_Ratio*0.4);
        //檢查LABLE長度要夠長  字體 A01-LEAN01-03 所需長度 Size x 9.625(倍數測試取得)
        if (tmpPanel.Width div 8)< ((tmpDep.Font.Size*9.625)) then
          tmpDep.Width:=Round(tmpDep.Font.Size*9.625)+5
        else
          tmpDep.Width:=(tmpPanel.Width div 8);
        //
      end;
      //上排欄位
      //調整Cutting Label
      tmpC:=TLabel(FindComponent('C'+IntToStr(i)));
      if tmpC<>nil then
      begin
        tmpC.Left:=tmpDep.Left+tmpDep.Width;
        tmpC.Top:=0;
        tmpC.Height:=tmpPanel.Height div 2;
        tmpC.Width:=(tmpPanel.Width-tmpDep.Width) div 5;
        tmpC.Font.Size:=Round(tmpC.Height*FontS_Hei_Ratio);
      end;
      //調整Stitching Label
      tmpS:=TLabel(FindComponent('S'+IntToStr(i)));
      if tmpS<>nil then
      begin
        tmpS.Left:=tmpC.Left+tmpC.Width;
        tmpS.Top:=0;
        tmpS.Height:=tmpPanel.Height div 2;
        tmpS.Width:=(tmpPanel.Width-tmpDep.Width) div 5;
        tmpS.Font.Size:=Round(tmpS.Height*FontS_Hei_Ratio);
      end;
      //調整Assambly 前段 Label
      tmpA:=TLabel(FindComponent('A'+IntToStr(i)));
      if tmpA<>nil then
      begin
        tmpA.Left:=tmpS.Left+tmpS.Width;
        tmpA.Top:=0;
        tmpA.Height:=tmpPanel.Height div 2;
        tmpA.Width:=(tmpPanel.Width-tmpDep.Width) div 5;
        tmpA.Font.Size:=Round(tmpA.Height*FontS_Hei_Ratio);
      end;
      //調整Assambly 後段 Label
      tmpAR:=TLabel(FindComponent('AR'+IntToStr(i)));
      if tmpAR<>nil then
      begin
        tmpAR.Left:=tmpA.Left+tmpA.Width;
        tmpAR.Top:=0;
        tmpAR.Height:=tmpPanel.Height div 2;
        tmpAR.Width:=(tmpPanel.Width-tmpDep.Width) div 5;
        tmpAR.Font.Size:=Round(tmpAR.Height*FontS_Hei_Ratio);
      end;
      //調整Assambly Label
      tmpFFT:=TLabel(FindComponent('FFT'+IntToStr(i)));
      if tmpFFT<>nil then
      begin
        tmpFFT.Left:=tmpAR.Left+tmpAR.Width;
        tmpFFT.Top:=0;
        tmpFFT.Height:=tmpPanel.Height div 2;
        tmpFFT.Width:=(tmpPanel.Width-tmpDep.Width) div 5;
        tmpFFT.Font.Size:=Round(tmpFFT.Height*FontS_Hei_Ratio);
      end;
      //下排欄位
      //調整Daily Defect
      tmpDD:=TLabel(FindComponent('DD'+IntToStr(i)));
      if tmpDD<>nil then
      begin
        tmpDD.Left:=tmpDep.Left+tmpDep.Width;;
        tmpDD.Top:=tmpC.Top+tmpC.Height;
        tmpDD.Height:=tmpPanel.Height-tmpC.Height;
        tmpDD.Width:=(tmpPanel.Width-tmpDep.Width) div 2;
        tmpDD.Font.Size:=Round(tmpDD.Height*FontS_Hei_Ratio*0.6);
      end;
      //調整Daily Defect
      tmpHD:=TLabel(FindComponent('HD'+IntToStr(i)));
      if tmpHD<>nil then
      begin
        tmpHD.Left:=tmpDD.Left+tmpDD.Width;;
        tmpHD.Top:=tmpC.Top+tmpC.Height;
        tmpHD.Height:=tmpPanel.Height-tmpC.Height;
        tmpHD.Width:=(tmpPanel.Width-tmpDep.Width) div 2;
        tmpHD.Font.Size:=Round(tmpHD.Height*FontS_Hei_Ratio*0.6);
      end;
    end;

  end;
end;
//將資料顯示在版面(LABEL)上
procedure TFFTPanel.ShowFFTonLabel();
var tmpLabel:TLabel;
    tmpPanel:TPanel;
    i,j:integer;
begin
  //區塊顯示
  for i:=1 to  6 do
  begin
    tmpPanel:=TPanel(FindComponent('Panel'+IntToStr(i)));
    if tmpPanel<>nil then
    begin
      tmpPanel.Visible:=true;
    end;
  end;
  //
  i:=1;
  FFTQry.first;
  while Not FFTQry.Eof do
  begin
    //調整部門Label
    tmpLabel:=TLabel(FindComponent('Dep'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      tmpLabel.Caption:=FFTQry.FieldByName('DepName').AsString;
    end;
    //Cutting
    tmpLabel:=TLabel(FindComponent('C'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      tmpLabel.Caption:=FFTQry.FieldByName('C').AsString;
    end;
    //Stitching
    tmpLabel:=TLabel(FindComponent('S'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      tmpLabel.Caption:=FFTQry.FieldByName('S').AsString;
    end;
    //Assembly Before
    tmpLabel:=TLabel(FindComponent('A'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      tmpLabel.Caption:=FFTQry.FieldByName('A').AsString;
    end;
    //Assembly After
    tmpLabel:=TLabel(FindComponent('AR'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      tmpLabel.Caption:=FFTQry.FieldByName('AR').AsString;
    end;
    //Assembly After
    tmpLabel:=TLabel(FindComponent('FFT'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      tmpLabel.Caption:=FFTQry.FieldByName('FTT').AsString;
    end;
    //Daily Defect
    tmpLabel:=TLabel(FindComponent('DD'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      tmpLabel.Caption:=FFTQry.FieldByName('Daily_Defect').AsString;
    end;
    //Hourly Defect
    tmpLabel:=TLabel(FindComponent('HD'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      tmpLabel.Caption:=FFTQry.FieldByName('Hourly_Defect').AsString;
    end;
    //
    Inc(i);
    if i>=7 then break;//最多6筆資料
    FFTQry.Next;
  end;
  
  //關閉其他未用的Panel
  for j:=6 downto i do
  begin
    tmpPanel:=TPanel(FindComponent('Panel'+IntToStr(j)));
    if tmpPanel<>nil then
    begin
      tmpPanel.Visible:=false;
    end;
  end;

end;

//顯示外框線
procedure TFFTPanel.ShowLabelBoard();
   procedure CanvasOutline(tmpLabel:TLabel);
   begin
      tmpLabel.Canvas.Pen.Width := 1;
      tmpLabel.Canvas.Rectangle(tmpLabel.ClientRect);
   end;
var i:integer;
    tmpLabel:TLabel;
begin
  for i:=0 to 6 do
  begin
    //調整部門Label
    tmpLabel:=TLabel(FindComponent('Dep'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      CanvasOutline(tmpLabel);
    end;
    //Cutting
    tmpLabel:=TLabel(FindComponent('C'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      CanvasOutline(tmpLabel);
    end;
    //Stitching
    tmpLabel:=TLabel(FindComponent('S'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      CanvasOutline(tmpLabel);
    end;
    //Assembly Before
    tmpLabel:=TLabel(FindComponent('A'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      CanvasOutline(tmpLabel);
    end;
    //Assembly After
    tmpLabel:=TLabel(FindComponent('AR'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      CanvasOutline(tmpLabel);
    end;
    //Assembly After
    tmpLabel:=TLabel(FindComponent('FFT'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      CanvasOutline(tmpLabel);
    end;
    //Daily Defect
    tmpLabel:=TLabel(FindComponent('DD'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      CanvasOutline(tmpLabel);
    end;
    //Hourly Defect
    tmpLabel:=TLabel(FindComponent('HD'+IntToStr(i)));
    if tmpLabel<>nil then
    begin
      CanvasOutline(tmpLabel);
    end;
  end;
end;
procedure TFFTPanel.ShowTimerTimer(Sender: TObject);
begin
  ShowLabelBoard();
  ShowTimer.Enabled:=false;
end;

procedure TFFTPanel.Dep0DblClick(Sender: TObject);
begin
  if TopPanel.Visible=true then
  begin
    TopPanel.Visible:=false
  end else
    TopPanel.Visible:=true;
  //重新調整版面
  ShowPanelParition();
  ShowTimer.Enabled:=true;
end;

procedure TFFTPanel.ReLoadTimerTimer(Sender: TObject);
begin
   ReLoadTimer.Enabled:=false;
   ShowSumlineFFTReport();
   ReLoadTimer.Enabled:=true;
end;

procedure TFFTPanel.FormCreate(Sender: TObject);
begin
  TDate.Date:=Date();//今天日期
end;

procedure TFFTPanel.FormShow(Sender: TObject);
var MyIni :Tinifile;
    DiskNM,DepName:string;
    DepNameList:TStringlist;
    i:integer;
begin
  DiskNM:='';
  if DirectoryExists('D:\') and (DiskNM='') then DiskNM:='D';
  if DirectoryExists('E:\') and (DiskNM='') then DiskNM:='E';
  if DiskNM<>'' then
  begin
    if FileExists(DiskNM+':\ERP_Temp\ERP_Setting.ini')=true then
    begin
      try
        MyIni := Tinifile.Create(DiskNM+':\ERP_Temp\ERP_Setting.ini');
        DepName:=MyIni.ReadString('Report_SN75','DepNameList','');
        //
        if length(DepName)>0 then
        begin
           SubsumlineSQL:=DepName;
           ShowSumlineFFTReport();
           //每五分鐘更新畫面一次
           ReLoadTimer.Enabled:=true;
        end;
        //
      finally
        MyIni.Free;
      end;
    end;
  end;

end;

end.
