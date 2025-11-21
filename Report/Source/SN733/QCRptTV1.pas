unit QCRptTV1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,
  jpeg, mmSystem, inifiles, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient;

type
  TQCRptTV = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Qtemp: TQuery;
    GroupBox2: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    TDate: TDateTimePicker;
    TitlePanel: TPanel;
    FreshTimer: TTimer;
    imgAlarm1: TImage;
    imgAlarm2: TImage;
    AlertTimer: TTimer;
    IdTCPClient: TIdTCPClient;
    Query1SCBH: TStringField;
    Query1Article: TStringField;
    Query1DepNo: TStringField;
    Query1DepName: TStringField;
    Query1YYBH: TStringField;
    Query1YWSM: TStringField;
    Query1ZWSM: TStringField;
    Query1BDEDesigner7: TIntegerField;
    Query1BDEDesigner8: TIntegerField;
    Query1BDEDesigner9: TIntegerField;
    Query1BDEDesigner10: TIntegerField;
    Query1BDEDesigner11: TIntegerField;
    Query1BDEDesigner12: TIntegerField;
    Query1BDEDesigner13: TIntegerField;
    Query1BDEDesigner14: TIntegerField;
    Query1BDEDesigner15: TIntegerField;
    Query1BDEDesigner16: TIntegerField;
    Query1OverTime: TIntegerField;
    Query1Total: TIntegerField;
    Query1alarmL: TFloatField;
    Query1stopL: TFloatField;
    Query1GXLB: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure FreshTimerTimer(Sender: TObject);
    procedure AlertTimerTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    SendMsgStr_A01_AndonMail:string;
    { Private declarations }
    procedure ReadSetting();
  public
    FlashColorInt:integer;
    AlarmState:byte;
    DepNameIndex:integer;
    SubDepNameSQL:TStringList;
    procedure ShowDepNameQCRptTV();
    { Public declarations }
    procedure CheckIfShowAlart();

  end;
  //
  type
    mythread = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

var
  QCRptTV: TQCRptTV;

implementation

uses QCTVDep1, Main1, FunUnit;

{$R *.dfm}
procedure mythread.Execute;
begin
  if FileExists(ExtractFilePath(Application.ExeName)+'QC_Alert.wav') then
     sndPlaySound(Pchar(ExtractFilePath(Application.ExeName)+'QC_Alert.wav'), SND_FILENAME or SND_SYNC);
end;

procedure TQCRptTV.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  SubDepNameSQL.Free;
end;

procedure TQCRptTV.FormDestroy(Sender: TObject);
begin
   QCRptTV:=NIL;
end;

procedure TQCRptTV.Button1Click(Sender: TObject);
begin
  QCTVDep:=TQCTVDep.Create(self);
  QCTVDep.Show;
end;

procedure TQCRptTV.ShowDepNameQCRptTV();
var
  j,k :word;
begin
  try

    //整理交叉表的內容
    with Query1 do
    begin
      active:=false;
      sql.Clear;
      sql.add('select QCC.SCBH,DDZL.Article,QCC.DepNo,QCC.DepName,Replace(QCC.GXLB,''C+S'',''S'') as GXLB,isnull(QCC.YYBH,'''') as YYBH,isnull(QCC.YWSM,'''') as YWSM,isnull(QCC.ZWSM,'''') as ZWSM');
      for j:=7 to 16 do
      begin
        sql.add(',isnull(sum(case  when NHour='''+inttostr(j)+'''');
        sql.add(' then Qty  end),0) as '''+inttostr(j)+'''');
      end;

      sql.add(',isnull(sum(case  when NHour>''16'' then Qty end),0) as ''Over Time''');
      sql.add(',QCC.Total,QCC.alarmL,QCC.stopL ');
      //各部門每小時各個Defect統計
      sql.add('from (select qcr.Depno,Max(qcr.SCBH) as SCBH,BDepartment.Depname,QCR.GXLB,qcrd.YYBH');
      //顯示Defect原因為英/越文
      sql.add('           ,QCBLYY.ZWSM,QCBLYY.YWSM');
      sql.add('             ,QCT.Qty as Total,sum(qcrd.qty) as Qty,datepart(hh,qcr.userdate) as NHour,qcblyy.AlarmL,qcblyy.StopL');
      sql.add('	     from QCRD');
      sql.add('	     left join QCR on qcr.prono= qcrd.prono');
      sql.add('	     left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
      sql.add('	     left join bdepartment on bdepartment.id=qcr.depno');
      sql.add('	     left join (select qcr.Depno,qcrd.YYBH,sum(qcrd.qty) as Qty');
      sql.add('				          from QCRD');
      sql.add('				          left join QCR on qcr.prono= qcrd.prono');
      sql.add('				          left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
      sql.add('                 where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
      sql.add('                        '+''''+datetostr(TDate.Date)+''''+' and '+''''+datetostr(TDate.Date+1)+''''+'');
      sql.add('	   						         and QCR.GSBH ='+''''+main.sGSBH+''''+'');
      sql.Add('                 and QCR.GXLB in(''C+S'',''A'')');
      sql.add('				          group by qcr.Depno,qcrd.YYBH) as QCT on QCR.DepNo = QCT.DepNo and QCBLYY.YYBH = QCT.YYBH');
      sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
      sql.add('             '+''''+datetostr(TDate.Date)+''''+' and '+''''+datetostr(TDate.Date+1)+''''+'');
      sql.Add(       SubDepNameSQL[DepNameIndex]);
      sql.add('	   				  and QCR.GSBH ='+''''+main.sGSBH+''''+'');
      sql.Add('             and QCR.GXLB in(''C+S'',''A'')');
      sql.add('	     group by qcr.Depno,BDepartment.Depname,QCR.GXLB,qcrd.YYBH,qcblyy.AlarmL,qcblyy.StopL');
      sql.add('             ,qcblyy.YWSM,qcblyy.ZWSM,QCT.Qty,datepart(hh,qcr.userdate)');
       //產生部門每小時所有Defect合計
      sql.add('	     union all');
      sql.add('	     select qcr.DepNo,''Z'' as SCBH,BDepartment.Depname,QCR.GXLB,''Z'' as YYBH,''Hourly_Total'' as YWSM,''Hourly_Total'' as ZWSM, QCT.Qty  as Total');
      sql.add('             ,sum(qcrd.qty) as Qty,datepart(hh,qcr.userdate) as NHour,null as AlarmL,null as StopL ');
      sql.add('	     from QCRD');
      sql.add('	     left join QCR on qcr.prono= qcrd.prono');
      sql.add('	     left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
      sql.add('	     left join bdepartment on bdepartment.id=qcr.depno');
      sql.add('	     left join (select qcr.Depno,qcr.GXLB,sum(qcrd.qty) as Qty');
      sql.add('				          from QCRD');
      sql.add('				          left join QCR on qcr.prono= qcrd.prono');
      sql.add('				          left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
      sql.add('                 where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
      sql.add('                        '+''''+datetostr(TDate.Date)+''''+' and '+''''+datetostr(TDate.Date+1)+''''+'');
      sql.add('	   						         and QCR.GSBH ='+''''+main.sGSBH+''''+'');
      sql.Add('                 and QCR.GXLB in(''C+S'',''A'')');
      sql.add('				          group by qcr.Depno,qcr.GXLB) as QCT on QCR.DepNo = QCT.DepNo and QCR.GXLB=QCT.GXLB');
      //
      sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
      sql.add('             '+''''+datetostr(TDate.Date)+''''+' and '+''''+datetostr(TDate.Date+1)+''''+'');
      sql.Add(       SubDepNameSQL[DepNameIndex]);
      sql.add('	   					and QCR.GSBH ='+''''+main.sGSBH+''''+'');
      sql.Add('             and QCR.GXLB in(''C+S'',''A'')');
      sql.add('	     group by qcr.Depno,BDepartment.Depname,QCT.Qty,QCR.GXLB,datepart(hh,qcr.userdate)');
      sql.add('	     ) as QCC');
      sql.add('      Left Join DDZL on DDZL.DDBH=qcc.SCBH ');
      sql.add('group by qcc.SCBH,DDZL.Article,qcc.DepNo,qcc.DepName,QCC.GXLB,qcc.YYBH,qcc.YWSM,qcc.ZWSM,QCC.Total,QCC.alarmL,QCC.stopL');
      sql.add('order by qcc.DepName,QCC.DepNo,QCC.GXLB,QCC.YYBH');
      //funcObj.WriteErrorLog(sql.Text);
      active:=true;
    end;

    with DBGrideh1 do
    begin
      columns[0].title.caption:='Defect';
      columns[0].Width:=510;
      for j:=1 to Columns.Count-1 do
      begin
        columns[j].Width:=65;
        columns[j].Title.Caption:='Working Time|'+Query1.Fields[j].FieldName;
        if j mod 2 = 0 then
          columns[j].Color:=clInfoBk;
      end;
      for k:= Columns.Count-1 to Columns.Count-1 do
      begin
       columns[k].Width:=70;
       columns[k].title.caption:='Total';
      end;
    end;
    TitlePanel.Visible:=true;
    if query1.fieldbyname('DepName').AsString<>'' then
      TitlePanel.Caption:=query1.fieldbyname('DepName').AsString+' Defect Qty';
    if RB1.Checked=true then
       DBGrideh1.Columns[0].FieldName:='YWSM'
    else  if RB2.Checked=true then
       DBGrideh1.Columns[0].FieldName:='ZWSM';

    Panel1.Visible:=false;
  except
    on E:Exception do
    funcObj.WriteErrorLog(E.Message);
  end;
end;

procedure TQCRptTV.FormCreate(Sender: TObject);
begin
   TDate.Date:=Date();
   SubDepNameSQL:=TStringlist.Create;
end;

procedure TQCRptTV.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  //
  if trim(query1.FieldByName('YYBH').value)='Z' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
  //警告和停用
  if ( (DataCol>=1) and (DataCol<=11) and (query1.FieldByName('YYBH').AsString<>'Z') ) then
  begin
    if (query1.Fields[DataCol].AsInteger>=query1.FieldByName('alarmL').AsInteger) then
    begin
      dbgrideh1.canvas.brush.Color:=clyellow;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    end;
    if (query1.Fields[DataCol].AsInteger>=query1.FieldByName('StopL').AsInteger) then
    begin
      dbgrideh1.canvas.brush.Color:=clred;
      DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
    end;
  end;
end;

procedure TQCRptTV.DBGridEh1DblClick(Sender: TObject);
begin
  if Panel1.Visible=true then
  begin
    Panel1.Visible:=false
  end else
    Panel1.Visible:=true;
end;

procedure TQCRptTV.CheckIfShowAlart();
var i:integer;
    HourStr:string;
begin
  HourStr:=FormatDateTime('h',time());
  //
  AlarmState:=0;
  for i:=0 to  Query1.RecordCount-1 do
  begin
    if Query1.FieldByName('YYBH').AsString<>'Z' then
    begin
      if Query1.FieldByName(HourStr).AsInteger>=query1.FieldByName('AlarmL').AsInteger then
      begin
        AlarmState:=1;
      end;
      if Query1.FieldByName(HourStr).AsInteger>=query1.FieldByName('StopL').AsInteger then
      begin
        AlarmState:=2;
        //20170230停線發送Mail到Server
        try
          SendMsgStr_A01_AndonMail:='<A01_AndonMail>,'+HourStr+','+Query1.FieldByName('DepName').AsString+'(RY='+Query1.FieldByName('SCBH').AsString+' SKU='+Query1.FieldByName('Article').AsString+'),'+StringReplace(Query1.FieldByName('YWSM').AsString,',','@',[rfReplaceAll, rfIgnoreCase])+','+StringReplace(Query1.FieldByName('ZWSM').AsString,',','@',[rfReplaceAll, rfIgnoreCase]);
          IdTCPClient.Connect();
          IdTCPClient.WriteLn(SendMsgStr_A01_AndonMail);
          IdTCPClient.Disconnect();
        except
        end;
      end;
    end;
    Query1.Next;
  end;
  //
end;
//
procedure TQCRptTV.FreshTimerTimer(Sender: TObject);
begin
   //
   FreshTimer.Enabled:=false;
   DepNameIndex:=DepNameIndex+1;
   if DepNameIndex>=SubDepNameSQL.Count then DepNameIndex:=0;
   QCRptTV.ShowDepNameQCRptTV();
   //檢查目前時段是否有
   CheckIfShowAlart();
   if (AlarmState=1) or (AlarmState=2) then
   begin
     imgAlarm1.Visible:=true;
     imgAlarm2.Visible:=true;
     AlertTimer.Enabled:=true;
     mythread.Create(false);
   end else
   begin
     FlashColorInt:=0;
     TitlePanel.Font.Color:=clBlack;
     TitlePanel.Color:=clwhite;
     imgAlarm1.Visible:=false;
     imgAlarm2.Visible:=false;
     AlertTimer.Enabled:=false;
   end;
   //
   FreshTimer.Enabled:=true;
   //
end;

procedure TQCRptTV.AlertTimerTimer(Sender: TObject);
begin
  if AlarmState=1 then
  begin
    if (FlashColorInt mod 2)=0 then
    begin
      TitlePanel.Font.Color:=clRed;
      TitlePanel.Color:=clyellow;
    end else
    begin
      TitlePanel.Font.Color:=clBlack;
      TitlePanel.Color:=clwhite;
    end;
  end;
  if AlarmState=2 then
  begin
    if (FlashColorInt mod 2)=0 then
    begin
      TitlePanel.Font.Color:=clyellow;
      TitlePanel.Color:=clred;
    end else
    begin
      TitlePanel.Font.Color:=clBlack;
      TitlePanel.Color:=clwhite;
    end;

  end;
  FlashColorInt:=FlashColorInt+1;
end;

procedure TQCRptTV.FormShow(Sender: TObject);
begin
  ReadSetting();
end;
//
procedure TQCRptTV.ReadSetting();
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
        DepName:=MyIni.ReadString('Report_SN733','DepNameList','');
        //
        DepNameIndex:=0;
        SubDepNameSQL.Clear;
        DepNameList:=funcObj.SplitString(DepName,',');
        for i:=0 to DepNameList.Count-1 do
        begin
           SubDepNameSQL.Add(DepNameList.Strings[i]);
        end;
        DepNameList.Free;
        if SubDepNameSQL.Count>0 then
        begin
           ShowDepNameQCRptTV();
           FreshTimer.Enabled:=true;
        end;
        //
      finally
        MyIni.Free;
      end;
    end;
  end;

end;

end.
