unit MonthOutPut1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, PrnDbgeh, DB, DBTables, GridsEh, DBGridEh, StdCtrls,
  ExtCtrls,dateutils,comobj,fununit,inifiles;

type
  TMonthOutPut = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Button1: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DataSource1: TDataSource;
    Qtemp: TQuery;
    PrintDBGridEh1: TPrintDBGridEh;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Print1: TMenuItem;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    Label6: TLabel;
    CBX3: TComboBox;
    OpenDialog: TOpenDialog;
    editPM: TEdit;
    editBB: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    btnPM: TButton;
    btnBB: TButton;
    Label10: TLabel;
    EditDFL: TEdit;
    Label11: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure DBGridEh1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Print1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure PrintDBGridEh1BeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPMClick(Sender: TObject);
    procedure btnBBClick(Sender: TObject);
  private
    AppDir:String;
    SampleLean,BabyLean:string;
    { Private declarations }
    OrderListExcel:Variant;
    OrderExcFN:string;
    procedure ExportFormatExcel();
    procedure ExportDefaultExcel();
    Procedure ExportExternalExcel();
    procedure InitCombo();
    procedure ReadSetting();
    procedure WriteIniSample(DepName:string);
    procedure WriteIniBaBy(DepName:string);
  public
    ExcelSheetI:integer;
    { Public declarations }
  end;

var
  MonthOutPut: TMonthOutPut;
  sdate,edate:TDate;
  a:string;

implementation

uses ExcelSheetDlg1, main1, Dep_lean1;

{$R *.dfm}

procedure TMonthOutPut.FormDestroy(Sender: TObject);
begin
MonthOutPut:=nil;
end;

procedure TMonthOutPut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;
procedure TMonthOutPut.ReadSetting();
var MyIni :Tinifile;
    DiskNM:string;
    DepNameList:TStringlist;
    i:integer;
begin
  DiskNM:='';
  if DirectoryExists('D:\') and (DiskNM='') then DiskNM:='D';
  if DirectoryExists('E:\') and (DiskNM='') then DiskNM:='E';
  if DiskNM<>'' then
  begin
    SampleLean:='A12KHA01';
    BabyLean:='A01L0522';
    if FileExists(DiskNM+':\ERP_Temp\ERP_Setting.ini')=true then
    begin
      try
        MyIni := Tinifile.Create(DiskNM+':\ERP_Temp\ERP_Setting.ini');
        SampleLean:=MyIni.ReadString('Plan_SN541','SampleLean','');
        BabyLean:=MyIni.ReadString('Plan_SN541','BabyLean','');
      finally
        MyIni.Free;
      end;
    end;
  end;
end;
Procedure TmonthOutPut.WriteIniSample(DepName:string);
var MyIni :Tinifile;
    DiskNM:string;
begin
  DiskNM:='';
  if DirectoryExists('D:\') and (DiskNM='') then DiskNM:='D';
  if DirectoryExists('E:\') and (DiskNM='') then DiskNM:='E';
  if DiskNM<>'' then
  begin
    if (not DirectoryExists(DiskNM+':\ERP_Temp\'))  then ForceDirectories(DiskNM+':\ERP_Temp\');
    try
      MyIni := Tinifile.Create(DiskNM+':\ERP_Temp\ERP_Setting.ini');
      MyIni.WriteString('Plan_SN541','SampleLean',DepName);
    finally
      MyIni.Free;
    end;
  end;
end;

Procedure TmonthOutPut.WriteIniBaBy(DepName:string);
var MyIni :Tinifile;
    DiskNM:string;
begin
  DiskNM:='';
  if DirectoryExists('D:\') and (DiskNM='') then DiskNM:='D';
  if DirectoryExists('E:\') and (DiskNM='') then DiskNM:='E';
  if DiskNM<>'' then
  begin
    if (not DirectoryExists(DiskNM+':\ERP_Temp\'))  then ForceDirectories(DiskNM+':\ERP_Temp\');
    try
      MyIni := Tinifile.Create(DiskNM+':\ERP_Temp\ERP_Setting.ini');
      MyIni.WriteString('Plan_SN541','BabyLean',DepName);
    finally
      MyIni.Free;
    end;
  end;
end;
procedure TMonthOutPut.Button1Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
    Str:string;
    tmpDate:TDateTime;
    iYear,iMonth:word;
    a,b,c :word;
    tmpStr:string;
    Factory:string;
    Factory_S,Factory_E:integer;
    AccumDay:string;
begin
  a:=strtoint(CBX1.text);
  b:=strtoint(CBX2.text);
  c:=1;
  sdate:=EncodeDate(a,b,c);
  edate:=endofthemonth(sdate);
  decodedate(edate,a,b,c);
  //
  if edate>Date() then
    AccumDay:=FormatDateTime('DD',Date()-1)
  else
    AccumDay:='31';
  //
  with Query1 do
  begin
    active:=false;
    sql.Clear;
    begin
      active:=false;
      sql.Clear;
      sql.add('if object_id(''tempdb..#MonSCBBS'') is not null  ');
      sql.add('   begin   drop table #MonSCBBS end   ');
      sql.add('select * into #MonSCBBS ');
      sql.add('from (select  BDepartment.DFL as GSBH');
      sql.add('              ,SCBBS.GXLB,''Actual'' as SB,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay  ');
      sql.add('       from SCBBS ');
      sql.add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
      sql.add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
      sql.add('       left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ')  ;
      sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('              and BDepartment.DepName like ''%'+edit1.Text+'%'+'''');
      sql.add('              and BDepartment.GXLB<>''G''');
      if EditDFL.Text<>'' then
      sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
      if editbb.Text<>'' then
      begin
        sql.Add('              and BDepartment.sumline<>'''+editbb.Text+''' ');
      end;
      sql.Add('              and BDepartment.YN= 1  ');
      if CBX3.itemindex=0 then
      begin
        sql.add('              and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+')');
      end else
      begin
        sql.add('              and SCBBS.GXLB='+''''+CBX3.text+'''' );
      end;
      //sql.add('              and (SCBBS.GXLB='+''''+'C'+''''+' or SCBBS.GXLB='+''''+'S'+''''+' or SCBBS.GXLB='+''''+'A'+''''+' or SCBBS.GXLB='+''''+'W'+''''+')');
      sql.add('       Group by BDepartment.DFL ,SCBBS.GXLB,datepart(day, SCBB.SCDate)  ');
      //各廠加總
      sql.add('      union  all ');
      sql.add('      select  BDepartment.DFL ');
      sql.add('               ,SCBBS.GXLB,''Actual'' as SB,isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay  ');
      sql.add('      from SCBBS ');
      sql.add('      left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
      sql.add('      left join BDepartment on BDepartment.ID=SCBB.DepNO ');
      sql.add('      left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ') ;
      sql.add('      where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('             '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('             and BDepartment.DepName like ''%'+edit1.Text+'%'' ');
      sql.add('              and BDepartment.GXLB<>''G''');
      if EditDFL.Text<>'' then
      sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
      if editbb.Text<>'' then
      begin
        sql.Add('              and BDepartment.sumline<>'''+editbb.Text+''' ');
      end;
      sql.Add('              and BDepartment.YN= 1  ');
      if CBX3.itemindex=0 then
      begin
         sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'')');
      end else
      begin
         sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
      end;
      sql.add('       Group by BDepartment.DFL,SCBBS.GXLB');
      //每日各部門計劃產量
      ////////////// plan
      sql.add('       union  all');
      sql.add('       select BDepartment.DFL ');
      SQL.Add('              ,BDepartment.GXLB,'' Plan'' as SB,sum(isnull(SCBZCL.Qty,0)) as Qty ,datepart(day, SCBZCL.BZDate) as NDay  ');
      sql.add('       from SCBZCL ');
      sql.add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
      sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
      sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('              and BDepartment.DepName like ''%'+edit1.Text+'%''');
      sql.add('              and BDepartment.GXLB<>''G''');
      if EditDFL.Text<>'' then
      sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
      if editbb.Text<>'' then
      begin
        sql.Add('              and BDepartment.sumline<>'''+editbb.Text+''' ');
      end;
      sql.Add('              and BDepartment.YN= 1  ');
      //sql.Add('              and SCBZCL.Qty>0 ');
      if CBX3.itemindex=0 then
      begin
        sql.add('              and (BDepartment.GXLB='+''''+'C'+''''+' or BDepartment.GXLB='+''''+'S'+''''+' or BDepartment.GXLB='+''''+'A'+''''+')');
      end else
      begin
        sql.add('              and BDepartment.GXLB='+''''+CBX3.text+'''' );
      end;

      sql.add('       Group by BDepartment.DFL ,BDepartment.GXLB,datepart(day, SCBZCL.BZDate) ');
      //各廠加總
      sql.add('       union all ');
      sql.add('       select BDepartment.DFL');
      SQL.Add('             ,BDepartment.GXLB,'' Plan'' as SB,isnull(sum(SCBZCL.Qty),0) as Qty ,32 as NDay  ');
      sql.add('       from SCBZCL ');
      sql.add('       left join BDepartment on BDepartment.ID=SCBZCL.DepNO ');
      sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
      sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('              and BDepartment.DepName like ''%'+edit1.Text+'%'' ');
      sql.add('              and BDepartment.GXLB<>''G''');
      if EditDFL.Text<>'' then
      sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
      if editbb.Text<>'' then
      begin
        sql.Add('               and BDepartment.sumline<>'''+editbb.Text+''' ');
      end;
      sql.Add('              and BDepartment.YN= 1  ');
      if CBX3.itemindex=0 then
      begin
          sql.add('              and (BDepartment.GXLB=''C'' or BDepartment.GXLB=''S'' or BDepartment.GXLB=''A'')');
      end else
      begin
        sql.add('              and BDepartment.GXLB='+''''+CBX3.text+'''' );
      end;
      if Checkbox1.checked then
      begin
          sql.add('              and  exists(select convert(varchar,SCBB.SCDate,111) as NowDay from  SCBB ');
          sql.add('                            left join BDepartment on BDepartment.ID=SCBB.DepNO ');
          sql.add('                          where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
          sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
          sql.add('                                and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
          sql.add('                                and convert(varchar,SCBB.SCDate,111)=convert(varchar,SCBZCL.BZDate,111) )');
      end;
      sql.add('       group by BDepartment.DFL ,BDepartment.GXLB ');
      // 20160817增加目標產能
      sql.Add('union all');
      sql.Add('select T1.DFL as GSBH,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours) as Qty,T1.NDay');
      sql.add('from(select  Bdepartment.DFL, Bdepartment.DepName, SCBBS.GXLB,''  Sdr'' as SB ');
      sql.add('             ,isNull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay, SCRL.SCGS as Hours  ');

      sql.add('       from SCBBS ');
      sql.add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
      sql.add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
      sql.add('       left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ')  ;
      sql.Add('       left join DDZL on SCBBS.SCBH=DDZL.DDBH');
      //2021.2.19 新增 SCXXCL.BZLB=BDepartment.BZLB
      sql.Add('       left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=BDepartment.BZLB');
      sql.Add('       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
      sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('              and BDepartment.DepName like ''%'+edit1.Text+'%''');
      if EditDFL.Text<>'' then
      sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
      if editbb.Text<>'' then
      begin
        sql.Add('              and BDepartment.sumline<>'''+editbb.Text+''' ');
      end;
      sql.Add('              and BDepartment.YN= 1  ');
      if CBX3.itemindex=0 then
      begin
        sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'' )');
      end else
      begin
        sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
      end;
      sql.add('       Group by Bdepartment.DFL, Bdepartment.DepName, SCBBS.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS ) T1 ');
      sql.Add('group by  T1.DFL,T1.GXLB,T1.SB,T1.NDay  ');
      //各廠加總
      sql.Add('union all');
      sql.Add('select T2.GSBH,T2.GXLB,T2.SB,sum(T2.Qty)as Qty, 32 as NDay');
      sql.Add('from(select T1.DFL as GSBH,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qty,T1.NDay');
      sql.add('     from(select  Bdepartment.DFL, Bdepartment.DepName, SCBBS.GXLB,''  Sdr'' as SB ');
      sql.add('               ,isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay,SCRL.SCGS as Hours  ');
      sql.add('       from SCBBS ');
      sql.add('       left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
      sql.add('       left join BDepartment on BDepartment.ID=SCBB.DepNO ');
      sql.add('       left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ')  ;
      sql.Add('       left join DDZL on SCBBS.SCBH=DDZL.DDBH');
      //2021.2.19 新增 SCXXCL.BZLB=BDepartment.BZLB
      sql.Add('       left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=BDepartment.BZLB');
      sql.Add('       left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
      sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
      sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
      sql.add('              and BDepartment.DepName like ''%'+edit1.Text+'%'' ');
      if EditDFL.Text<>'' then
      sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
      if editbb.Text<>'' then
      begin
        sql.Add('            and BDepartment.sumline<>'''+editbb.Text+''' ');
      end;
      sql.Add('              and BDepartment.YN= 1  ');
      if CBX3.itemindex=0 then
      begin
        sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'')');
      end else
      begin
        sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
      end;
      sql.add('       group by Bdepartment.DFL, Bdepartment.DepName, SCBBS.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS ) T1 ');
      sql.Add('    group by  T1.DFL ,T1.GXLB,T1.SB,T1.NDay ) T2  ');
      sql.Add('group by T2.GSBH,T2.GXLB,T2.SB ');
      /////////////////////////// PM//////////////////////////////
      //if PMCK.Checked=true then
      if editPM.Text<>'' then
      begin
        sql.add('union all ');
        sql.Add('select  BDepartment.DFL as DepName');
        sql.Add('       ,SCBBS.GXLB,''Actual'' as SB,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay ');
        sql.Add('from SCBBS');
        sql.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO');
        sql.Add('left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like ''%'+Edit1.Text+'%''');
        sql.Add('              and BDepartment.YN=5  and BDepartment.sumline = '''+editPM.Text+'''');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'')');
        end else
        begin
          sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
        end;
        sql.Add('group by BDepartment.DFL ,SCBBS.GXLB,datepart(day, SCBB.SCDate)');
        sql.add('union all ');

        sql.Add('select BDepartment.DFL ');
        sql.Add('      ,SCBBS.GXLB,''Actual'' as SB,isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay');
        sql.Add('from SCBBS');
        sql.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO');
        sql.Add('left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.Add('              and BDepartment.YN=5  ');
        sql.Add('              and BDepartment.sumline = '''+editPM.Text+''' ');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'' )');
        end else
        begin
          sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
        end;
        sql.Add('group by BDepartment.DFL ,SCBBS.GXLB');
        //樣品室沒有目標產量
        sql.add('union all ');
        sql.add('select BDepartment.DFL ,BDepartment.GXLB,'' Plan'' as SB,null as Qty ,datepart(day, SCBB.SCdate) as NDay    ');
        sql.Add('from SCBB');
        sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO ');
        sql.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCdate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.Add('              and BDepartment.YN=5  ');
        sql.Add('              and BDepartment.sumline = '''+editPM.Text+''' ');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (BDepartment.GXLB=''C'' or BDepartment.GXLB=''S'' or BDepartment.GXLB=''A'')');
        end else
        begin
          sql.add('              and BDepartment.GXLB='''+CBX3.text+'''' );
        end;
        sql.Add('group by BDepartment.DFL,BDepartment.GXLB,datepart(day, SCBB.SCdate)');
        sql.Add('union all');
        if CBX3.itemindex=0 then
        begin
          sql.add('select ''PM'' as DepName,''C'' as GXLB,'' Plan'' as SB,null as Qty,32 as NDay  ');
          sql.add('union all ');
          sql.add('select ''PM'' as DepName,''S'' as GXLB,'' Plan'' as SB,null as Qty,32 as NDay  ');
          sql.add('union all ');
          sql.add('select ''PM'' as DepName,''A'' as GXLB,'' Plan'' as SB,null as Qty,32 as NDay  ');
        end else
        begin
          sql.add('select ''PM'' as DepName,'''+CBX3.text+''' as GXLB,'' Plan'' as SB,null as Qty,32 as NDay  ');
        end;

        sql.add('union all ');
        sql.Add('select T1.DFL,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qty,T1.NDay');
        sql.add('     from(select  Bdepartment.DFL ,SCBBS.GXLB,'+''''+'  Sdr'+''''+' as SB ');
        sql.Add(',isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay, SCRL.SCGS as Hours');
        sql.Add('from SCBBS');
        sql.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
        sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO ');
        sql.Add('left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ');
        sql.Add('left join DDZL on SCBBS.SCBH=DDZL.DDBH');
        //2021.2.19 新增 SCXXCL.BZLB=BDepartment.BZLB
        sql.Add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=BDepartment.BZLB');
        sql.Add('left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '''+'%'+edit1.Text+'%''');
        sql.Add('              and BDepartment.YN=5  ');
        sql.Add('              and BDepartment.sumline = '''+editPM.Text+''' ');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'' )');
        end else
        begin
          sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
        end;
        sql.Add('group by Bdepartment.DFL,SCBBS.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS ) T1');
        sql.Add('group by  T1.DFL,T1.GXLB,T1.SB,T1.NDay');

        sql.Add('union all');
        sql.Add('select T2.DFL,T2.GXLB,T2.SB,sum(T2.Qty)as Qty, 32 as NDay');
        sql.Add('from(select T1.DFL,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qty,T1.NDay');
        sql.add('     from(select  Bdepartment.DFL,SCBBS.GXLB,'+''''+'  Sdr'+''''+' as SB ');
        sql.Add(',isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay,SCRL.SCGS as Hours ');
        sql.Add('from SCBBS');
        sql.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
        sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO ');
        sql.Add('left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ');
        sql.Add('left join DDZL on SCBBS.SCBH=DDZL.DDBH');
        //2021.2.19 新增 SCXXCL.BZLB=BDepartment.BZLB
        sql.Add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=BDepartment.BZLB');
        sql.Add('left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.Add('              and BDepartment.YN=5  ');
        sql.Add('              and BDepartment.sumline = '''+editPM.Text+''' ');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'' )');
        end else
        begin
          sql.add('              and SCBBS.GXLB='+''''+CBX3.text+'''' );
        end;
        sql.Add('group by Bdepartment.DFL,SCBBS.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS )T1');
        sql.Add('group by  T1.DFL,T1.GXLB,T1.SB,T1.NDay  )T2 ');
        sql.Add('group by T2.DFL,T2.GXLB,T2.SB');
        /////////////////////////// PM//////////////////////////////
      end;
      /////////////////////////// BB//////////////////////////////
      if editbb.Text<>'' then
      begin
        sql.add('union all ');
        sql.Add('select BDepartment.DFL');
        sql.Add('       ,SCBBS.GXLB,''Actual'' as SB,sum(SCBBS.Qty) as Qty,datepart(day, SCBB.SCDate) as NDay ');
        sql.Add('from SCBBS');
        sql.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO');
        sql.Add('left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '''+'%'+edit1.Text+'%''');
        sql.Add('              and BDepartment.YN=1  and BDepartment.sumline = '''+editbb.Text+'''');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'') ');
        end else
        begin
          sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
        end;
        sql.Add('group by BDepartment.DFL,SCBBS.GXLB,datepart(day, SCBB.SCDate)');
        sql.add('union all ');

        sql.Add('select BDepartment.DFL ');
        sql.Add('      ,SCBBS.GXLB,''Actual'' as SB,isnull(sum(SCBBS.Qty),0) as Qty,32 as NDay');
        sql.Add('from SCBBS');
        sql.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
        sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO');
        sql.Add('left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.Add('              and BDepartment.YN=1  ');
        //sql.Add('              and BDepartment.sumline = ''A01L0521''');
        sql.Add('              and BDepartment.sumline = '''+editbb.Text+'''');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'')');
        end else
        begin
          sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
        end;
        sql.Add('group by BDepartment.DFL ,SCBBS.GXLB');
        sql.add('union all ');
        sql.Add('select BDepartment.DFL');
        sql.Add(',BDepartment.GXLB,'' Plan'' as SB,sum(isnull(SCBZCL.Qty,0)) as Qty ,datepart(day, SCBZCL.BZDate) as NDay ');
        sql.Add('from SCBZCL');
        sql.Add('left join BDepartment on BDepartment.ID=SCBZCL.DepNO  ');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.Add('              and BDepartment.YN=1  ');
        sql.Add('              and BDepartment.sumline = '''+editbb.Text+'''');
        sql.Add('              and SCBZCL.Qty>0 ');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (BDepartment.GXLB=''C'' or BDepartment.GXLB=''S'' or BDepartment.GXLB=''A'')');
        end else
        begin
          sql.add('             and BDepartment.GXLB='''+CBX3.text+'''' );
        end;
        sql.Add(' group by  BDepartment.DFL,BDepartment.GXLB,datepart(day, SCBZCL.BZDate) ');

        sql.add('union all ');
        sql.Add('select BDepartment.DFL');
        sql.Add('      ,BDepartment.GXLB,'' Plan'' as SB,isnull(sum(SCBZCL.Qty),0) as Qty ,32 as NDay');
        sql.Add('from SCBZCL');
        sql.Add('left join BDepartment on BDepartment.ID=SCBZCL.DepNO');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBZCL.BZDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.Add('              and BDepartment.YN=1  ');
        sql.Add('              and BDepartment.sumline = '''+editbb.Text+'''');
        sql.Add('              and SCBZCL.Qty>0 ');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (BDepartment.GXLB=''C'' or BDepartment.GXLB=''S'' or BDepartment.GXLB=''A'')');
        end else
        begin
          sql.add('              and BDepartment.GXLB='''+CBX3.text+'''' );
        end;
        if Checkbox1.checked then
        begin
            sql.add('              and  exists(select convert(varchar,SCBB.SCDate,111) as NowDay from  SCBB ');
            sql.add('                            left join BDepartment on BDepartment.ID=SCBB.DepNO ');
            sql.add('                          where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
            sql.add('                                '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
            sql.add('                                and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
            sql.add('                                and convert(varchar,SCBB.SCDate,111)=convert(varchar,SCBZCL.BZDate,111) )');
        end;
        sql.Add('group by BDepartment.DFL ,BDepartment.GXLB ');

        sql.add('union all ');
        sql.Add('select T1.DFL,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qty,T1.NDay');
        sql.add('     from(select  BDepartment.DFL,SCBBS.GXLB,''  Sdr'' as SB ');
        sql.Add('     ,isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay, SCRL.SCGS as Hours');
        sql.Add('from SCBBS');
        sql.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
        sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO ');
        sql.Add('left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ');
        sql.Add('left join DDZL on SCBBS.SCBH=DDZL.DDBH');
        //2021.2.19 新增 SCXXCL.BZLB=BDepartment.BZLB
        sql.Add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=BDepartment.BZLB');
        sql.Add('left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.Add('              and BDepartment.YN=1  ');
        sql.Add('              and BDepartment.sumline = '''+editbb.Text+'''');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'') ');
        end else
        begin
          sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
        end;
        sql.Add('group by BDepartment.DFL,SCBBS.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS )T1');
        sql.Add('group by T1.DFL,T1.GXLB,T1.SB,T1.NDay');

        sql.Add('union all');
        sql.Add('select T2.DFL,T2.GXLB,T2.SB,sum(T2.Qty)as Qty, 32 as NDay');
        sql.Add('from(select T1.DFL,T1.GXLB,T1.SB,sum(T1.Qty*T1.Hours)as Qty,T1.NDay');
        sql.add('     from(select  Bdepartment.DFL,SCBBS.GXLB,''  Sdr'' as SB ');
        sql.Add(',isnull(avg(SCXXCL.BZCL),0) as Qty,datepart(day, SCBB.SCDate) as NDay,SCRL.SCGS as Hours ');
        sql.Add('from SCBBS');
        sql.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
        sql.Add('left join BDepartment on BDepartment.ID=SCBB.DepNO ');
        sql.Add('left join SCGXDY on SCGXDY.GXLB=SCBBS.GXLB ');
        sql.Add('left join DDZL on SCBBS.SCBH=DDZL.DDBH');
        //2021.2.19 新增 SCXXCL.BZLB=BDepartment.BZLB
        sql.Add('left join SCXXCL on SCXXCL.XieXing=DDZL.XieXing and SCXXCL.SheHao=DDZL.SheHao and SCXXCL.GXLB=SCBBS.GXLB and SCXXCL.BZLB=BDepartment.BZLB');
        sql.Add('left join SCRL on SCRL.SCYEAR=year(SCBB.SCDate)and SCRL.SCMONTH=month(SCBB.SCDate)and SCRL.SCDAY=day(SCBB.SCDate)and SCRL.DepNo=SCBB.Depno');
        sql.add('       where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ');
        sql.add('              '''+formatdatetime('yyyy/MM/dd',sDate) +''''+'and '+ ''''+formatdatetime('yyyy/MM/dd',eDate)+'''');
        sql.add('              and BDepartment.DepName like '+''''+'%'+edit1.Text+'%'+'''');
        sql.Add('              and BDepartment.YN=1  ');
        sql.Add('              and BDepartment.sumline = '''+editbb.Text+'''');
        if EditDFL.Text<>'' then
        sql.Add('              and BDepartment.DFL='''+EditDFL.Text+''' ');
        if CBX3.itemindex=0 then
        begin
          sql.add('              and (SCBBS.GXLB=''C'' or SCBBS.GXLB=''S'' or SCBBS.GXLB=''A'')');
        end else
        begin
          sql.add('              and SCBBS.GXLB='''+CBX3.text+'''' );
        end;
        sql.Add('group by Bdepartment.DFL,SCBBS.GXLB,datepart(day, SCBB.SCDate),SCRL.SCGS )T1');
        sql.Add('group by  T1.DFL,T1.GXLB,T1.SB,T1.NDay  )T2 ');
        sql.Add('group by T2.DFL,T2.GXLB,T2.SB');
      end;  
      /////////////////////////// BB//////////////////////////////
      sql.add('     ) SCBBS ');
      sql.add('order by SCBBS.GSBH,SCBBS.GXLB,SCBBS.NDay ');
      //日平均
      SQL.Add('insert into #MonSCBBS ');
      SQL.Add('select A1.GSBH,A1.GXLB,''  Sdr'' as SB,A1.Qty/A2.Cout as Qty,33 as NDay ');
      SQL.Add('from (select GSBH,GXLB,Qty from #MonSCBBS  where NDay=32 and  SB=''  Sdr'') A1');
      SQL.Add('left join ( select GSBH,GXLB,Count(NDay) as Cout from #MonSCBBS  where SB=''  Sdr''  and NDay<>32 Group by GSBH,GXLB ) A2 on A1.GSBH=A2.GSBH and A1.GXLB=A2.GXLB ');
      //
      SQL.Add('insert into #MonSCBBS ');
      SQL.Add('select A1.GSBH,A1.GXLB,'' Plan'' as SB,A1.Qty/A2.Cout as Qty,33 as NDay ');
      SQL.Add('from (select GSBH,GXLB,Qty from #MonSCBBS  where NDay=32 and  SB='' Plan'') A1');
      SQL.Add('left join ( select GSBH,GXLB,Count(NDay) as Cout from #MonSCBBS  where SB='' Plan''  and NDay<>32 Group by GSBH,GXLB ) A2 on A1.GSBH=A2.GSBH and A1.GXLB=A2.GXLB ');
      //
      SQL.Add('insert into #MonSCBBS ');
      SQL.Add('select A1.GSBH,A1.GXLB,''Actual'' as SB,A1.Qty/A2.Cout as Qty,33 as NDay ');
      SQL.Add('from (select GSBH,GXLB,Qty from #MonSCBBS  where NDay=32 and  SB=''Actual'') A1');
      SQL.Add('left join ( select GSBH,GXLB,Count(NDay) as Cout from #MonSCBBS  where SB=''Actual''  and NDay<>32 Group by GSBH,GXLB ) A2 on A1.GSBH=A2.GSBH and A1.GXLB=A2.GXLB ');
      //日累計
      SQL.Add('insert into #MonSCBBS ');
      SQL.Add('select A1.GSBH,A1.GXLB,''  Sdr'' as SB,Sum(A1.Qty) as Qty,34 as NDay ');
      SQL.Add('from (select GSBH,GXLB,Qty from #MonSCBBS  where NDay<='+AccumDay+' and  SB=''  Sdr'') A1 ');
      SQL.Add('Group by A1.GSBH,A1.GXLB ');

      SQL.Add('insert into #MonSCBBS ');
      SQL.Add('select A1.GSBH,A1.GXLB,'' Plan'' as SB,Sum(A1.Qty) as Qty,34 as NDay ');
      SQL.Add('from (select GSBH,GXLB,Qty from #MonSCBBS  where NDay<='+AccumDay+' and  SB='' Plan'') A1 ');
      SQL.Add('Group by A1.GSBH,A1.GXLB ');

      SQL.Add('insert into #MonSCBBS ');
      SQL.Add('select A1.GSBH,A1.GXLB,''Actual'' as SB,Sum(A1.Qty) as Qty,34 as NDay ');
      SQL.Add('from (select GSBH,GXLB,Qty from #MonSCBBS  where NDay<='+AccumDay+' and  SB=''Actual'') A1 ');
      SQL.Add('Group by A1.GSBH,A1.GXLB ');
      //
      sql.add('alter table #MonSCBBS ');
      sql.add('alter column GSBH varchar(10) null ');
      sql.add('insert into #MonSCBBS ');
      sql.add('select '+''''+' ZTotal'+''''+' as GSBH,#MonSCBBS.GXLB,#MonSCBBS.SB,sum(Qty) as Qty,#MonSCBBS.NDay ');
      sql.add('from #MonSCBBS ');
      sql.add('group by #MonSCBBS.GXLB,#MonSCBBS.SB,#MonSCBBS.NDay  ');
      //
      sql.add('select SCBBS.GSBH as Factory,SCBBS.GXLB,SCBBS.SB  ');
      sql.add(',sum(case  when NDay=''32''');
      sql.add(' then Qty  else 0 end) as ''Total''');
      sql.add(',sum(case  when NDay=''34''');
      sql.add(' then Qty  else 0 end) as ''Accum''');
      sql.add(',sum(case  when NDay=''33''');
      sql.add(' then Qty  else 0 end) as ''Avage''');
      for i:=1 to c do
      begin
        sql.add(',sum(case  when NDay='+''''+inttostr(i)+'''');
        sql.add(' then Qty  end) as '+''''+inttostr(i)+'''');
      end;
       sql.add('from  (select #MonSCBBS.* from #MonSCBBS  ');
       sql.add('       union all ');
       sql.add('       select SCBZCL.GSBH,SCBZCL.GXLB,'+''''+'Diff'+''''+' as SB,');
       sql.add('             case when isnull(SCBBS.Qty,0)<>0  then  isnull(SCBBS.Qty,0)-isnull(SCBZCL.Qty,0) end Qty,SCBZCL.NDay');
       sql.add('       from (select * from #MonSCBBS where #MonSCBBS.SB like '+''''+'%Plan%'+''''+') SCBZCL ');
       sql.add('       left join (select * from #MonSCBBS where #MonSCBBS.SB like '+''''+'%Actual%'+''''+') SCBBS ');
       sql.add('                 on SCBZCL.GSBH=SCBBS.GSBH and SCBZCL.GXLB=SCBBS.GXLB and SCBZCL.NDay=SCBBS.NDay ') ;
       ///////////////
       sql.add('       union all ');
       sql.add('       select SCBZCL.GSBH,SCBZCL.GXLB,'+''''+'Diff1'+''''+' as SB,');
       sql.add('             case when isnull(SCBBS.Qty,0)<>0  then  isnull(SCBBS.Qty,0)-isnull(SCBZCL.Qty,0) end Qty,SCBZCL.NDay');
       sql.add('       from (select * from #MonSCBBS where #MonSCBBS.SB like '+''''+'%Sdr%'+''''+') SCBZCL ');
       sql.add('       left join (select * from #MonSCBBS where #MonSCBBS.SB like '+''''+'%Actual%'+''''+') SCBBS ');
       sql.add('                 on SCBZCL.GSBH=SCBBS.GSBH and SCBZCL.GXLB=SCBBS.GXLB and SCBZCL.NDay=SCBBS.NDay ') ;

       sql.add('       union all ');
       sql.add('       select SCBZCL.GSBH,SCBZCL.GXLB,'+''''+'Per%'+''''+' as SB,');
       sql.add('             case when isnull(SCBZCL.Qty,0)<>0 then round(isnull(SCBBS.Qty,0)/isnull(SCBZCL.Qty,0)*100,0) end Qty,SCBZCL.NDay ');
       sql.add('       from (select * from #MonSCBBS where #MonSCBBS.SB like '+''''+'%Plan%'+''''+') SCBZCL ');
       sql.add('       left join (select * from #MonSCBBS where #MonSCBBS.SB like '+''''+'%Actual%'+''''+') SCBBS ');
       sql.add('                 on SCBZCL.GSBH=SCBBS.GSBH and SCBZCL.GXLB=SCBBS.GXLB and SCBZCL.NDay=SCBBS.NDay ') ;
       sql.add('       union all ');
       sql.add('       select SCBZCL.GSBH,SCBZCL.GXLB,'+''''+'Per1%'+''''+' as SB,');
       sql.add('             case when isnull(SCBZCL.Qty,0)<>0 then round(isnull(SCBBS.Qty,0)/isnull(SCBZCL.Qty,0)*100,0) end Qty,SCBZCL.NDay ');
       sql.add('       from (select * from #MonSCBBS where #MonSCBBS.SB like '+''''+'%Sdr%'+''''+') SCBZCL ');
       sql.add('       left join (select * from #MonSCBBS where #MonSCBBS.SB like '+''''+'%Actual%'+''''+') SCBBS ');
       sql.add('                 on SCBZCL.GSBH=SCBBS.GSBH and SCBZCL.GXLB=SCBBS.GXLB and SCBZCL.NDay=SCBBS.NDay ') ;
       sql.add('       ) SCBBS ');
       sql.add('group by   SCBBS.GXLB,SCBBS.GSBH ,SCBBS.SB ');
       sql.add('order by   SCBBS.GXLB,SCBBS.GSBH ,SCBBS.SB');
       //funcObj.WriteErrorLog(sql.Text);
       active:=true;
     end;
  end;

  writeIniSample(editPM.Text);
  writeIniBaby(editBB.Text);

end;


procedure TMonthOutPut.Query1AfterOpen(DataSet: TDataSet);
var i:word;
begin

   with DBGrideh1 do
   begin
     columns[0].Width:=40;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='廠區|Factory';
     columns[1].Width:=30;
     columns[1].title.titlebutton:=true;
     columns[1].title.caption:='工段|GX';
     columns[2].Width:=40;
     columns[2].title.caption:='類別|SB';
     columns[3].Width:=60;
     columns[3].font.style:=[fsbold];
     columns[3].title.caption:='合計|Total';
     columns[4].Width:=60;
     columns[4].font.style:=[fsbold];
     columns[4].title.caption:='日類計|Accmu';
     columns[5].Width:=60;
     columns[5].font.style:=[fsbold];
     columns[5].title.caption:='日平均|Avage';
     for i:=6 to query1.FieldCount-1 do
     begin
         Tfloatfield(query1.Fields[i]).displayformat:='##,#0' ;
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
         begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
         end;
         columns[i].Width:=40;
         columns[i].Title.Caption:='日  期  ( '+CBX1.text+' / '+CBX2.text+' )|'+columns[i].Title.Caption;
         //columns[i].footer.ValueType := fvtSum;
     end;
   end;

end;

procedure TMonthOutPut.DBGridEh1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin

  if trim(query1.FieldByName('SB').value)='Per%' then
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

procedure TMonthOutPut.Print1Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TMonthOutPut.ExportExternalExcel();
var i,j,excelcount: integer;
    eclApp,WorkBook:olevariant;
    k:integer;
    tmpStr:string;
    Factory:string;
    Factory_S,Factory_E:integer;
begin
  if OpenDialog.Execute()=true then
  begin
    try
      //開啟Excel OLE
      OrderListExcel:=CreateOleObject('Excel.Application');
    except
      on E:Exception do
      begin
        Application.MessageBox(PChar('NO EXCEL'+E.Message),'', MB_OK);
        EXIT;
      end;
  end;
  try
    OrderListExcel.WorkBooks.Open(OpenDialog.FileName);
    ExcelSheetI:=1;
    excelcount:=OrderListExcel.WorkSheets.count;

    ExcelSheetDlg:=TExcelSheetDlg.Create(self);
    ExcelSheetDlg.ExcelSheetI:=@ExcelSheetI;
    for i:=1 to excelcount do
    begin
      ExcelSheetDlg.ListBox1.Items.Add(inttostr(i)+'.'+OrderListExcel.WorkSheets[i].name);
    end;
    ExcelSheetDlg.ShowModal();
    ExcelSheetDlg.Free;
    //
    OrderListExcel.WorkSheets[ExcelSheetI].Activate;

    OrderListExcel.Cells(2,1):=CBX1.Text+'年度'+CBX2.Text+'月份產量達成狀況明細表';
    for   i:=3   to   Query1.fieldCount-1   do
    begin
        OrderListExcel.Cells(3,i):=Query1.fields[i].FieldName;
    end;
    OrderListExcel.Cells(3,3):='總計';
    OrderListExcel.Cells(3,4):='日類計';
    OrderListExcel.Cells(3,5):='日平均';
      Query1.First;
      j:=4;
      while   not   Query1.Eof   do
      begin
        for   k:=3   to  Query1.fieldcount-1  do
        begin
          OrderListExcel.Cells(j,k):=Query1.Fields[k].Value;
        end;

        OrderListExcel.Cells(j,1):=Query1.FieldByName('Factory').AsString;
        OrderListExcel.Cells(j,2):=Query1.FieldByName('SB').AsString;


        if  Query1.FieldByName('SB').Value='  Sdr' then
        begin
            OrderListExcel.Cells(j,2):='標準產量';
            OrderListExcel.Range[OrderListExcel.Cells[j,2],OrderListExcel.Cells[j,k-1]].interior.color:=clyellow;
        end;
        if  Query1.FieldByName('SB').Value=' Plan' then
        begin
            OrderListExcel.Cells(j,2):='目標產量';
            OrderListExcel.Range[OrderListExcel.Cells[j,2],OrderListExcel.Cells[j,k-1]].interior.color:=claqua;
        end;
        if  Query1.FieldByName('SB').Value='Actual' then
            OrderListExcel.Cells(j,2):='實際產量';

        if  Query1.FieldByName('SB').Value='Diff' then
              OrderListExcel.Cells(j,2):='目標與實際差異';

        if  Query1.FieldByName('SB').Value='Diff1' then
              OrderListExcel.Cells(j,2):='標準與實際差異';

        if  Query1.FieldByName('SB').Value='Per%' then
              OrderListExcel.Cells(j,2):='目標與實際達成率';

        if  Query1.FieldByName('SB').Value='Per1%' then
              OrderListExcel.Cells(j,2):='標準與實際達成率';

        if  Query1.FieldByName('Factory').Value=' ZTotal' then
        begin
          OrderListExcel.Cells(j,1):='A廠區小計';
          OrderListExcel.Range[OrderListExcel.Cells[j,1],OrderListExcel.Cells[j,1]].interior.color:=claqua;
        end;
        if  Query1.FieldByName('Factory').Value='A1' then
              OrderListExcel.Cells(j,1):='A1廠成型';
        if  Query1.FieldByName('Factory').Value='A2' then
              OrderListExcel.Cells(j,1):='A2廠成型';
        if  Query1.FieldByName('Factory').Value='BB' then
              OrderListExcel.Cells(j,1):='A1廠BB鞋';
        if  Query1.FieldByName('Factory').Value='PM' then
              OrderListExcel.Cells(j,1):='A1.2廠樣品室';

        Query1.Next;
        OrderListExcel.Rows[j].RowHeight:=20;
        inc(j);
        Factory:='';
        Factory_S:=0;
        Factory_E:=0;
        for k:=4 to Query1.RecordCount+4 do
        begin
         tmpStr:=OrderListExcel.Cells[k,1];
         if Factory='' then
         begin
           Factory_S:=k;
           Factory:=tmpStr;
         end;
        if(( tmpStr<>Factory) and (Factory<>'')) then
        begin
          Factory_E:=k-1;
          Factory:= OrderListExcel.Cells[k,1];
          OrderListExcel.Range[OrderListExcel.Cells[Factory_S+6,1],OrderListExcel.Cells[Factory_E,1]].merge;
          OrderListExcel.Range[OrderListExcel.Cells[Factory_S+6,1],OrderListExcel.Cells[Factory_E,1]].Font.Bold:=true;
          Factory_S:=k;
        end;
       end;
      end;
      for k:=1 to 4 do
        begin
            OrderListExcel.range[OrderListExcel.cells[3,2],OrderListExcel.cells[j-1,i-1]].borders[k].linestyle:=1;
        end;
        showmessage('Succeed.');
        OrderListExcel.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
    //end;
  end;
end;

procedure TMonthOutPut.ExportFormatExcel();
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
    tmpStr:string;
    Factory:string;
    Factory_S,Factory_E:integer;
begin

   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Plan_SN541.xls'),Pchar(AppDir+'Additional\Plan_SN541.xls'),false);
   if FileExists(AppDir+'Additional\Plan_SN541.xls') then
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
          eclApp.WorkBooks.Open(AppDir+'Additional\Plan_SN541.xls');
          eclApp.Cells(2,1):=CBX1.Text+'年度'+CBX2.Text+'月份產量達成狀況明細表';
          for   i:=3   to   Query1.fieldCount-1   do
          begin
              eclApp.Cells(3,i):=Query1.fields[i].FieldName;
          end;
          Query1.First;
          j:=4;
          while   not   Query1.Eof   do
          begin
            for   k:=3   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,k):=Query1.Fields[k].Value;
            end;
            //
            eclApp.Cells(j,1):=Query1.FieldByName('Factory').AsString;
            eclApp.Cells(j,2):=Query1.FieldByName('SB').AsString;

            if  Query1.FieldByName('SB').Value='  Sdr' then
            begin
              eclApp.Cells(j,2):='標準產量';
              eclApp.Range[eclApp.Cells[j,2],eclApp.Cells[j,k-1]].interior.color:=clyellow;
            end;
            if  Query1.FieldByName('SB').Value=' Plan' then
            begin
              eclApp.Cells(j,2):='目標產量';
              eclApp.Range[eclApp.Cells[j,2],eclApp.Cells[j,k-1]].interior.color:=claqua;
            end;
            if  Query1.FieldByName('SB').Value='Actual' then
              eclApp.Cells(j,2):='實際產量';

            if  Query1.FieldByName('SB').Value='Diff' then
                eclApp.Cells(j,2):='目標與實際差異';

            if  Query1.FieldByName('SB').Value='Diff1' then
                eclApp.Cells(j,2):='標準與實際差異';

            if  Query1.FieldByName('SB').Value='Per%' then
                eclApp.Cells(j,2):='目標與實際達成率';

            if  Query1.FieldByName('SB').Value='Per1%' then
                eclApp.Cells(j,2):='標準與實際達成率';
            /////////////////
            if  Query1.FieldByName('Factory').Value=' ZTotal' then
            begin
                eclApp.Cells(j,1):='A廠區小計';
                eclApp.Range[eclApp.Cells[j,1],eclApp.Cells[j,1]].interior.color:=claqua;
            end;
            if  Query1.FieldByName('Factory').Value='A1' then
                eclApp.Cells(j,1):='A1廠成型';
            if  Query1.FieldByName('Factory').Value='A2' then
                eclApp.Cells(j,1):='A2廠成型';
            if  Query1.FieldByName('Factory').Value='BB' then
                eclApp.Cells(j,1):='A1廠BB鞋';
            if  Query1.FieldByName('Factory').Value='PM' then
                eclApp.Cells(j,1):='A1.2廠樣品室';
            Query1.Next;
            eclApp.Rows[j].RowHeight:=20;
            inc(j);

            Factory:='';
            Factory_S:=0;
            Factory_E:=0;
            for k:=4 to Query1.RecordCount+4 do
            begin
             tmpStr:=eclApp.Cells[k,1];
             if Factory='' then
             begin
               Factory_S:=k;
               Factory:=tmpStr;
             end;
             if(( tmpStr<>Factory) and (Factory<>'')) then
             begin
              Factory_E:=k-1;
              Factory:= eclApp.Cells[k,1];
              eclApp.Range[eclApp.Cells[Factory_S+6,1],eclApp.Cells[Factory_E,1]].merge;
              eclApp.Range[eclApp.Cells[Factory_S+6,1],eclApp.Cells[Factory_E,1]].Font.Bold:=true;
              Factory_S:=k;
             end;
            end;
            for k:=1 to 4 do
            begin
              eclApp.range[eclApp.cells[3,1],eclApp.cells[j-1,i-1]].borders[k].linestyle:=1;
            end;
          end;
          showmessage('Succeed.');
          eclApp.Visible:=True;
      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
    end;
 end;
end;

///////////////////  ExportDefaultExcel ///////////////////////
procedure TMonthOutPut.ExportDefaultExcel();
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
    tmpStr:string;
    Factory:string;
    Factory_S,Factory_E:integer;
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
    eclApp.Cells(1,1):='NO';
    for   i:=1   to   Query1.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=Query1.fields[i-1].FieldName;
    end;
    Query1.First;
    j:=2;
    while   not  Query1.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   Query1.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=Query1.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
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


procedure TMonthOutPut.Button2Click(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
    tmpStr:string;
    Factory:string;
    Factory_S,Factory_E:integer;
begin

  if  Messagedlg(Pchar('Format Export?'),mtInformation,[mbNo,mbYes],0)=mrYes then
  begin
     if Messagedlg(Pchar('Use External Excel?'),mtInformation,[mbNo,mbYes],0)=mrYes then
     begin
       ExportExternalExcel();
     end else
     begin
       ExportFormatExcel();
     end;
  end else
  begin
     ExportDefaultExcel();
  end;
end;

procedure TMonthOutPut.InitCombo();
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  DecodeDate(Date(), myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      break;
    end;
  end;
  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      break;
    end;
  end;
end;
procedure TMonthOutPut.FormCreate(Sender: TObject);
var textvar:textfile;
    sline1,pp:string;
begin
   AppDir:=ExtractFilePath(Application.ExeName);
   InitCombo();

   ReadSetting();
   editPm.Text:=SampleLean;
   editBB.Text:=BabyLean;

end;

procedure TMonthOutPut.Excel1Click(Sender: TObject);
begin
button2click(nil);
end;

procedure TMonthOutPut.Button3Click(Sender: TObject);
begin
printdbgrideh1.Preview;
end;

procedure TMonthOutPut.PrintDBGridEh1BeforePrint(Sender: TObject);
begin
PrintDBGridEh1.SetSubstitutes(['%[Date]',CBX1.Text+'/'+CBX2.text]);
end;

procedure TMonthOutPut.btnPMClick(Sender: TObject);
begin
  Dep_lean:=TDep_lean.create(self);
  Dep_lean.LeanType := 'Sample Room';
  Dep_lean.show;
end;

procedure TMonthOutPut.btnBBClick(Sender: TObject);
begin
  Dep_lean:=TDep_lean.create(self);
  Dep_lean.LeanType := 'Baby Lean';
  Dep_lean.show;
end;

end.
