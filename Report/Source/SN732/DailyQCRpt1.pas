unit DailyQCRpt1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls, ComCtrls,comobj;

type
  TDailyQCRpt = class(TForm)
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    QCSD: TDateTimePicker;
    QCED: TDateTimePicker;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    CBX1: TComboBox;
    Label1: TLabel;
    Qtemp: TQuery;
    Qry_AR: TQuery;
    B1EX_S: TButton;
    B1EX_A: TButton;
    Label2: TLabel;
    CBX2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure QCSDChange(Sender: TObject);
    procedure B1EX_SClick(Sender: TObject);
    procedure B1EX_AClick(Sender: TObject);
    procedure CBX1Change(Sender: TObject);
  private
     AppDir:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DailyQCRpt: TDailyQCRpt;

implementation

uses Main1;

{$R *.dfm}

procedure TDailyQCRpt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDailyQCRpt.FormDestroy(Sender: TObject);
begin
  DailyQCRpt:=Nil;
end;

procedure TDailyQCRpt.FormCreate(Sender: TObject);
begin
  QCSD.Date:=Now;
  QCED.Date:=Now;
  AppDir:=ExtractFilePath(Application.ExeName);
end;

procedure TDailyQCRpt.Button1Click(Sender: TObject);
var
  j,k :word;
begin
  if CBX1.text='' then
  begin
   showmessage('Vui long chon cong doan truoc');
   abort;
  end;
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select distinct NHour');
    sql.add('from (select  datepart(HH, SMZL.USERDATE) as NHour from SMZL');
    sql.add('      left join BDepartment on BDepartment.ID=SMZL.DepNo ');
    sql.add('      where  convert(smalldatetime,convert(varchar,SMZL.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date+1)+''''+'');
    sql.add('      and BDepartment.GSBH ='+''''+main.sGSBH+''''+'');
    sql.Add('      union all');
    sql.add('      select distinct datepart(HH, QCR.USERDATE) as NHour from QCR');
    sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date+1)+''''+'');
    sql.add('      and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    sql.add('      ) as HourList order by NHour');
    //memo1.Text:=sql.Text;
    active:=true;
  end;

  //整理交叉表的內容
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select QCC.DepNo,QCC.DepName,Replace(QCC.GXLB,''C+S'',''S''),isnull(QCC.YYBH,'''') as YYBH,isnull(QCC.YWSM,'''') as YWSM');
    for j:=7 to 16 do
    begin
      sql.add(',isnull(sum(case  when NHour='''+inttostr(j)+'''');
      sql.add(' then Qty  end),0) as '''+inttostr(j)+'''');
    end;

    sql.add(',isnull(sum(case  when NHour>''16'' then Qty end),0) as ''Over Time''');
    sql.add(',QCC.Total');

    //各部門每小時各個Defect統計
    sql.add('from (select qcr.Depno,BDepartment.Depname,QCR.GXLB,qcrd.YYBH');
    if RadioGroup1.ItemIndex = 0 then   //顯示Defect原因為英/越文
      sql.add('           ,QCBLYY.YWSM');
    if RadioGroup1.ItemIndex = 1 then
      sql.add('           ,QCBLYY.ZWSM as YWSM');
    sql.add('             ,QCT.Qty as Total,sum(qcrd.qty) as Qty,datepart(hh,qcr.userdate) as NHour');
    sql.add('	     from QCRD');
    sql.add('	     left join QCR on qcr.prono= qcrd.prono');
    sql.add('	     left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
    sql.add('	     left join bdepartment on bdepartment.id=qcr.depno');
    sql.add('	     left join (select qcr.Depno,qcrd.YYBH,sum(qcrd.qty) as Qty');
    sql.add('				          from QCRD');
    sql.add('				          left join QCR on qcr.prono= qcrd.prono');
    sql.add('				          left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
    sql.add('                 where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('                        '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.add('	   						         and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    if CBX1.Text='S' then
    begin
      sql.Add('    and QCR.GXLB=''C+S''');
    end else
    begin
      sql.add('      and QCR.GXLB='+''''+CBX1.Text+'''');
    end;
    sql.add('				          group by qcr.Depno,qcrd.YYBH) as QCT on QCR.DepNo = QCT.DepNo and QCBLYY.YYBH = QCT.YYBH');
    sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.Add('             and BDepartment.DepName = '+''''+CBX2.Text+'''');
    sql.add('	   				  and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    if CBX1.Text='S' then
    begin
      sql.Add('    and QCR.GXLB=''C+S''');
    end else
    begin
      sql.add('      and QCR.GXLB='+''''+CBX1.Text+'''');
    end;
    sql.add('	     group by qcr.Depno,BDepartment.Depname,QCR.GXLB,qcrd.YYBH');
    if RadioGroup1.ItemIndex = 0 then
      sql.add('             ,qcblyy.ywsm,QCT.Qty,datepart(hh,qcr.userdate)');
    if RadioGroup1.ItemIndex = 1 then
      sql.add('             ,qcblyy.zwsm,QCT.Qty,datepart(hh,qcr.userdate)');

    //產生部門每小時所有Defect合計
    sql.add('	     union all');
    sql.add('	     select qcr.DepNo,BDepartment.Depname,QCR.GXLB,'+''''+'Z'+''''+' as YYBH,'+''''+'1.Total Defect'+''''+' as ywsm,QCT.Qty  as Total');
    sql.add('             ,sum(qcrd.qty) as Qty,datepart(hh,qcr.userdate) as NHour');
    sql.add('	     from QCRD');
    sql.add('	     left join QCR on qcr.prono= qcrd.prono');
    sql.add('	     left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
    sql.add('	     left join bdepartment on bdepartment.id=qcr.depno');
    sql.add('	     left join (select qcr.Depno,qcr.GXLB,sum(qcrd.qty) as Qty');
    sql.add('				          from QCRD');
    sql.add('				          left join QCR on qcr.prono= qcrd.prono');
    sql.add('				          left join qcblyy on qcblyy.yybh=qcrd.yybh and QCR.GSBH = QCBLYY.GSBH');
    sql.add('                 where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('                        '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.add('	   						  and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    if CBX1.Text='S' then
    begin
      sql.Add('               and QCR.GXLB=''C+S''');
    end else
    begin
      sql.add('               and QCR.GXLB='+''''+CBX1.Text+'''');
    end;
    sql.add('				          group by qcr.Depno,qcr.GXLB) as QCT on QCR.DepNo = QCT.DepNo and QCR.GXLB=QCT.GXLB');
    sql.add('      where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between ');
    sql.add('             '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.Add('      and BDepartment.DepName like '+''''+CBX2.Text+'''');
    sql.add('	   	 and QCR.GSBH ='+''''+main.sGSBH+''''+'');
    if CBX1.Text='S' then
    begin
      sql.Add('    and QCR.GXLB=''C+S''');
    end else
    begin
      sql.add('    and QCR.GXLB='+''''+CBX1.Text+'''');
    end;
    sql.add('	     group by qcr.Depno,BDepartment.Depname,QCT.Qty,QCR.GXLB,datepart(hh,qcr.userdate)');
    //
    sql.add('       union all');
    sql.add('       select SMZL.DepNO,BDepartment.DepName,SMDDSS.GXLB,'+''''+'Z'+''''+'as YYBH,'+''''+'2.Total Inspection'+''''+'as YWSM,a.Qty as Total,isnull(sum(SMZL.CTS*SMDDSS.Qty),0) as Qty,datepart(Hour,SMZL.ScanDate) as NHour');
    sql.add('       from SMZL');
    sql.add('       left join BDepartment on BDepartment.ID=SMZL.DepNO');
    sql.add('       left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR');
    sql.add('       left join (select SMZL.DepNO,SMDDSS.GXLB,isnull(sum(SMZL.CTS*SMDDSS.Qty),0) as Qty');
    sql.add('                  from SMZL');
    sql.add('                  left join BDepartment on BDepartment.ID=SMZL.DepNO');
    sql.add('                  left join SMDDSS on SMDDSS.CODEBAR=SMZL.CODEBAR');
    sql.add('                  where BDepartment.DepName ='+''''+CBX2.Text+'''');
    sql.add('                  and BDepartment.GSBH='+''''+main.sGSBH+''''+'');
    sql.add('                  and SMDDSS.GXLB='+''''+CBX1.Text+'''');
    sql.add('                  and convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between');
    sql.add('                  '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.add('                  group by SMZL.DepNO,SMDDSS.GXLB)a on a.depno=smzl.depno and a.gxlb=smddss.gxlb');
    sql.add('       where BDepartment.DepName ='+''''+CBX2.Text+'''');
    sql.add('       and BDepartment.GSBH='+''''+main.sGSBH+''''+'');
    sql.add('       and SMDDSS.GXLB='+''''+CBX1.Text+'''');
    sql.add('       and convert(smalldatetime,convert(varchar,SMZL.ScanDate,111)) between');
    sql.add('       '+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
    sql.add('       group by SMZL.DepNO,BDepartment.DepName,SMDDSS.GXLB,a.qty,datepart(Hour,SMZL.ScanDate)');
    sql.add('	     ) as QCC');
    sql.add('group by qcc.DepNo,qcc.DepName,QCC.GXLB,qcc.YYBH,qcc.YWSM,QCC.Total');
    sql.add('order by qcc.DepName,QCC.DepNo,QCC.GXLB,QCC.YYBH,QCC.YWSM');
    //memo1.Text:=sql.Text;
    active:=true;
    if CBX1.Text='S' then
    begin
      B1EX_S.Enabled:=true;
      B1EX_A.Enabled:=false;
    end;
    if CBX1.Text='A' then
    begin
      B1EX_A.Enabled:=true;
      B1EX_S.Enabled:=false;
    end;
  end;
  with DBGrideh1 do
  begin
    columns[0].Width:=0;
    columns[0].title.caption:='部門編號|DepNo';
    columns[1].Width:=95;
    columns[1].title.caption:='部門名稱|DepName';
    columns[2].Width:=40;
    columns[2].title.caption:='工段|GXLB';
    columns[3].Width:=60;
    columns[3].title.caption:='Deff號|'+columns[3].title.caption;
    columns[4].Width:=200;
    columns[4].title.caption:='不良項目|Defect';
    for j:=5 to Query1.FieldCount-1 do
    begin
      columns[j].Width:=35;
      columns[j].Title.Caption:='時   間   Working Hour|'+columns[j].Title.Caption;
      if j mod 2 = 0 then
        columns[j].Color:=clInfoBk;
    end;
    for k:= Query1.FieldCount-1 to  Query1.FieldCount-1 do
    begin
     columns[k].Width:=60;
     columns[k].title.caption:='小計|Total';
     columns[K].Color:=$00FCCBCD;
    end;
  end;
end;

procedure TDailyQCRpt.DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
begin
  if trim(query1.FieldByName('YYBH').value)='Z' then
  begin
    dbgrideh1.canvas.brush.Color:=$00FCCBCD;
    DBGridEh1.DefaultDrawColumnCell(Rect,DataCol,Column, State);
  end;
end;

procedure TDailyQCRpt.QCSDChange(Sender: TObject);
begin
  QCED.Date:=QCSD.Date;
end;

procedure TDailyQCRpt.B1EX_SClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    DDBH, Article, ExlYYBH,ExlInspect: string;
    i,j,k: integer;
begin
   with Qtemp do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select distinct qcr.scbh as SCBH');
      sql.add('from qcr');
      sql.Add('left join qcrd on qcr.prono=qcrd.prono');
      sql.add('left join bdepartment on bdepartment.id=qcr.depno');
      sql.add('where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between');
      sql.add(''+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
      sql.add('and BDepartment.DepName ='+''''+CBX2.Text+'''');
      sql.add('and QCR.GSBH ='+''''+main.sGSBH+''''+'');
      if CBX1.text='S' then
      begin
        sql.Add('and QCR.GXLB=''C+S''');
      end else
      begin
        sql.add('and QCR.GXLB='+''''+CBX1.Text+'''');
      end;
      active:=true;
   end;
   with Qry_AR do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select distinct ddzl.article as Article');
      sql.add('from qcr');
      sql.Add('left join qcrd on qcr.prono=qcrd.prono');
      sql.add('left join bdepartment on bdepartment.id=qcr.depno');
      sql.add('left join ddzl on ddzl.ddbh=qcr.scbh');
      sql.add('where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between');
      sql.add(''+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
      sql.add('and BDepartment.DepName ='+''''+CBX2.Text+'''');
      sql.add('and QCR.GSBH ='+''''+main.sGSBH+''''+'');
      if CBX1.text='S' then
      begin
        sql.Add('and QCR.GXLB=''C+S''');
      end else
      begin
        sql.add('and QCR.GXLB='+''''+CBX1.Text+'''');
      end;
      active:=true;
   end;
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\B1-QIP-M_20160308.xls'),Pchar(AppDir+'Additional\B1-QIP-M_20160308.xls'),false);
   if FileExists(AppDir+'Additional\B1-QIP-M_20160308.xls') then
   begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\B1-QIP-M_20160308.xls');
          eclApp.WorkSheets[1].Activate;
          //WorkBook:=eclApp.workbooks.Add;
          eclApp.Cells(2,1):='Ngay/Date/日期: '+formatdatetime('yyyy/MM/dd',QCSD.date);
          eclApp.Cells(2,13):='LEAN: '+Query1.FieldByName('DepName').AsString;
          DDBH:='';
          Article:='';
          Qtemp.First;
          QTemp.Active:=true;
          for i:=0 to QTemp.RecordCount-1 do
          begin
             DDBH:=DDBH+QTemp.FieldByName('SCBH').AsString+',';   //Ex. AL1409-001,
             QTemp.Next;
          end;
          eclApp.Cells(2,3):='Lenh/Ry/訂單: '+Copy(DDBH,1,length(DDBH)-1);
          Qry_AR.First;
          Qry_AR.Active;
          for j:=0 to Qry_AR.RecordCount-1 do
          begin
             Article:= Article+Qry_AR.FieldByName('Article').AsString+',';
             Qry_AR.Next;
          end;
          eclApp.Cells(2,9):='Ma mau/Art/型體: '+Copy(Article,1,length(Article)-1);
          //
          for i:=5 to 24 do
          begin
            Query1.First;
            for j:=0 to Query1.RecordCount-1 do
            begin
              ExlYYBH:=eclApp.Cells[i,1];
              if Query1.FieldByName('YYBH').Value=ExlYYBH  then
              begin
                for k:=5 to Query1.FieldCount-1 do
                begin
                 eclApp.Cells(i,k-2):=Query1.Fields[k].AsString;
                end;
                break;
              end;
              Query1.Next;
            end;
          end;
          for i:=25 to 25 do
          begin
            query1.First;
            for j:=0 to Query1.RecordCount do
            begin
               ExlInspect:='2.Total Inspection';
               if  Query1.FieldByName('YWSM').AsString=ExlInspect  then
               begin
                  for k:=5 to query1.FieldCount-1 do
                  begin
                    eclApp.Cells(i,k-2):=Query1.Fields[k].AsString;
                  end;
                  break;
               end;
               query1.Next;
            end;
          end;
          //
          showmessage('Succeed.');
          eclApp.Visible:=True;
          except
               on   F:Exception   do
               showmessage(F.Message);
        end;
   end;
end;

procedure TDailyQCRpt.B1EX_AClick(Sender: TObject);
var eclApp,WorkBook:olevariant;
    DDBH, Article, ExlYYBH,ExlInspect: string;
    i,j,k: integer;
begin
   with Qtemp do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select distinct qcr.scbh as SCBH');
      sql.add('from qcr');
      sql.Add('left join qcrd on qcr.prono=qcrd.prono');
      sql.add('left join bdepartment on bdepartment.id=qcr.depno');
      sql.add('where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between');
      sql.add(''+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
      sql.add('and BDepartment.DepName ='+''''+CBX2.Text+'''');
      sql.add('and QCR.GSBH ='+''''+main.sGSBH+''''+'');
      if CBX1.text='S' then
      begin
        sql.Add('and QCR.GXLB=''C+S''');
      end else
      begin
        sql.add('and QCR.GXLB='+''''+CBX1.Text+'''');
      end;
      active:=true;
   end;
   with Qry_AR do
   begin
      active:=false;
      sql.Clear;
      sql.Add('select distinct ddzl.article as Article');
      sql.add('from qcr');
      sql.Add('left join qcrd on qcr.prono=qcrd.prono');
      sql.add('left join bdepartment on bdepartment.id=qcr.depno');
      sql.add('left join ddzl on ddzl.ddbh=qcr.scbh');
      sql.add('where  convert(smalldatetime,convert(varchar,QCR.USERDATE,111)) between');
      sql.add(''+''''+datetostr(QCSD.Date)+''''+' and '+''''+datetostr(QCED.Date)+''''+'');
      sql.add('and BDepartment.DepName ='+''''+CBX2.Text+'''');
      sql.add('and QCR.GSBH ='+''''+main.sGSBH+''''+'');
      if CBX1.text='S' then
      begin
        sql.Add('and QCR.GXLB=''C+S''');
      end else
      begin
        sql.add('and QCR.GXLB='+''''+CBX1.Text+'''');
      end;
      active:=true;
   end;
   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\B1-QIP-G_20160308.xls'),Pchar(AppDir+'Additional\B1-QIP-G_20160308.xls'),false);
   if FileExists(AppDir+'Additional\B1-QIP-G_20160308.xls') then
   begin
        try
          eclApp:=CreateOleObject('Excel.Application');
          WorkBook:=CreateOleObject('Excel.Sheet');
        except
          Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
          Exit;
        end;
        try
          eclApp.WorkBooks.Open(AppDir+'Additional\B1-QIP-G_20160308.xls');
          eclApp.WorkSheets[1].Activate;//
          //WorkBook:=eclApp.workbooks.Add;
          eclApp.Cells(2,1):='Ngay/Date/日期: '+formatdatetime('yyyy/MM/dd',QCSD.date);
          eclApp.Cells(2,13):='LEAN: '+Query1.FieldByName('DepName').AsString;
          DDBH:='';
          Article:='';
          Qtemp.First;
          QTemp.Active:=true;
          for i:=0 to QTemp.RecordCount-1 do
          begin
             DDBH:=DDBH+QTemp.FieldByName('SCBH').AsString+',';   //Ex. AL1409-001,
             QTemp.Next;
          end;
          eclApp.Cells(2,3):='Lenh/Ry/訂單: '+Copy(DDBH,1,length(DDBH)-1);
          Qry_AR.First;
          Qry_AR.Active;
          for j:=0 to Qry_AR.RecordCount-1 do
          begin
             Article:= Article+Qry_AR.FieldByName('Article').AsString+',';
             Qry_AR.Next;
          end;
          eclApp.Cells(2,9):='Ma mau/Art/型體: '+Copy(Article,1,length(DDBH)-1);
          //

          for i:=5 to 24 do
          begin
            Query1.First;
            for j:=0 to Query1.RecordCount-1 do
            begin
              ExlYYBH:=eclApp.Cells[i,1];
              if Query1.FieldByName('YYBH').Value=ExlYYBH  then
              begin
                for k:=5 to Query1.FieldCount-1 do
                begin
                 eclApp.Cells(i,k-2):=Query1.Fields[k].AsString;
                end;
                break;
              end;
              Query1.Next;
            end;
          end;
          for i:=25 to 25 do
          begin
            query1.First;
            for j:=0 to Query1.RecordCount do
            begin
               ExlInspect:='2.Total Inspection';
               if  Query1.FieldByName('YWSM').AsString=ExlInspect  then
               begin
                  for k:=5 to query1.FieldCount-1 do
                  begin
                    eclApp.Cells(i,k-2):=Query1.Fields[k].AsString;
                  end;
                  break;
               end;
               query1.Next;
            end;
          end;
          //
          showmessage('Succeed.');
          eclApp.Visible:=True;
          except
               on   F:Exception   do
               showmessage(F.Message);
        end;
   end;
end;

procedure TDailyQCRpt.CBX1Change(Sender: TObject);
var i:integer;
begin
  Qtemp.Active:=false;
  Qtemp.SQL.Clear;
  Qtemp.SQL.Add('select ID,DepName from BDepartment ');
  if CBX1.Text = 'A'  then
     Qtemp.sql.add('where GXLB ='+''''+'A'+'''');
  if CBX1.Text = 'S'  then
     Qtemp.sql.add('where GXLB ='+''''+'S'+'''');
  Qtemp.sql.add('   and GSBH='+''''+main.sGSBH+'''');
  Qtemp.Active:=true;
  CBX2.Items.Clear;
  for i:=1 to Qtemp.RecordCount do
  begin
    CBX2.Items.Add(Qtemp.fieldbyname('DepName').asstring);
    Qtemp.next;
  end;
  CBX2.Itemindex:=0;
end;

end.
