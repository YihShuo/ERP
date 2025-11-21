unit MASSHRM1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables,
  Grids, DBGrids, Comobj, iniFiles;

type
  TMASSHRM = class(TForm)
    HRMQry: TQuery;
    DS1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    ExeQuery: TQuery;
    PageControl1: TPageControl;
    Label19: TLabel;
    CBX1: TComboBox;
    CBX2: TComboBox;
    Label18: TLabel;
    Label2: TLabel;
    CBX3: TComboBox;
    CBX4: TComboBox;
    Label3: TLabel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    QTQry: TQuery;
    DS4: TDataSource;
    Splitter1: TSplitter;
    QTQryQT_Month: TIntegerField;
    QTQryQT_Day: TIntegerField;
    QTQrySLTT: TIntegerField;
    QTQrySLGT: TIntegerField;
    QTQrySL_All: TIntegerField;
    DBGridEh4: TDBGridEh;
    DBGridEh5: TDBGridEh;
    TTGioQry: TQuery;
    DS5: TDataSource;
    TTGioQryQT_Month: TIntegerField;
    TTGioQryQT_Day: TIntegerField;
    TTGioQryTTLCHC: TFloatField;
    TTGioQryTTTCHC: TFloatField;
    TTGioQryHC_All: TFloatField;
    GTGioQry: TQuery;
    DS6: TDataSource;
    DBGridEh6: TDBGridEh;
    GTGioQryQT_Month: TIntegerField;
    GTGioQryQT_Day: TIntegerField;
    GTGioQryGTLCHC: TFloatField;
    GTGioQryGTTCHC: TFloatField;
    GTGioQryHC_All: TFloatField;
    HRMQryHMonth: TStringField;
    HRMQryHDays: TIntegerField;
    HRMQryPodQty: TFloatField;
    HRMQryShipQty: TIntegerField;
    HRMQryDirectHM_WQty: TIntegerField;
    HRMQryInDirectHM_WQty: TIntegerField;
    HRMQryHM_WQty: TIntegerField;
    HRMQryDirectHM_WHourN: TFloatField;
    HRMQryDirectHM_WHourC: TFloatField;
    HRMQryDirectHM_WHour: TFloatField;
    HRMQryInDirectHM_WHourN: TFloatField;
    HRMQryInDirectHM_WHourC: TFloatField;
    HRMQryInDirectHM_WHour: TFloatField;
    HRMQryHM_WHour: TFloatField;
    HRMQryWorkCount: TIntegerField;
    HRMQryInDirectRate: TFloatField;
    HRMQryWorkRate: TFloatField;
    HRMQryLeftWorkRate: TIntegerField;
    HRMQryThaiQty: TFloatField;
    DBGridEh2: TDBGridEh;
    ScbQry: TQuery;
    DS2: TDataSource;
    ScbQryPMonth: TIntegerField;
    ScbQryPDay: TIntegerField;
    ScbQryQty: TFloatField;
    DBGridEh3: TDBGridEh;
    YWCPQry: TQuery;
    DS3: TDataSource;
    YWCPQryExMonth: TIntegerField;
    YWCPQryExDay: TIntegerField;
    YWCPQryQty: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGridEh1CellClick(Column: TColumnEh);
  private
    SelectedIndex:integer;
    STDList,ETDList:TStringlist;
    HrmsDBIP,HrmsDBUser,HrmsDBPass,HrmsDBName:String;
    { Private declarations }
    procedure ReadIni();
    procedure CreateHRM_Connect();
    procedure CreateHRM_DisConnect();
  public
    { Public declarations }
  end;

var
  MASSHRM: TMASSHRM;

implementation
  uses main1, DateUtils, FunUnit;
{$R *.dfm}
procedure TMASSHRM.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      HrmsDBIP:=MyIni.ReadString('HRMS','IP','192.168.23.12');
      HrmsDBName:=MyIni.ReadString('HRMS','Database','P0104-TYXUAN');
      HrmsDBUser:=MyIni.ReadString('HRMS','User','hrms');
      HrmsDBPass:=MyIni.ReadString('HRMS','Pass','123456');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TMASSHRM.CreateHRM_Connect();
begin
  //
  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('--//[1] Create Linkserver');
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    SQL.Add(' ');
    SQL.Add('if  not exists(select *  from   master..sysservers  where  srvname= ''HumanDB'') ');
    SQL.Add('Exec sp_addlinkedserver');
    SQL.Add('   @server=''HumanDB'', --//linkserver name.');
    SQL.Add('   @srvproduct='''', --//一般描述');
    SQL.Add('   @provider=''SQLOLEDB'', --//OLEDB Provider name, check BOL for more providers');
    SQL.Add('   @datasrc='''+HrmsDBIP+''', --//遠端Server Name  192.168.11.100\sql2k8');
    SQL.Add('   @catalog='''+HrmsDBName+''' --//default database for linkserver');
    //SQL.Add('GO');
    SQL.Add('');
    SQL.Add('--//[2]Add linked server login');
    SQL.Add('Exec sp_addlinkedsrvlogin');
    SQL.Add('@useself=''false'', --//false=使用遠端使用者/密碼登入');
    SQL.Add(' --//true=使用本地端使用者/密碼連線遠端SERVER                        ');
    SQL.Add('@rmtsrvname=''HumanDB'', --//Linked server name');
    SQL.Add('@rmtuser='''+HrmsDBUser+''' , --//遠端登入使用者');
    SQL.Add('@rmtpassword='''+HrmsDBPass+''' --//遠端登入使用者密碼');
    //SQL.Add('GO');
    ExecSQL();
  end;
  //
end;

//關閉HRM連線
procedure TMASSHRM.CreateHRM_DisConnect();
begin
  with ExeQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('if exists(select *  from   master..sysservers  where  srvname= ''HumanDB'') begin');
    SQL.Add('Exec sp_droplinkedsrvlogin ''HumanDB'',Null ');
    SQL.Add('Exec sp_dropserver ''HumanDB'',''droplogins'' ');
    SQL.Add('end');
    ExecSQL();
  end;
end;

procedure TMASSHRM.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  STDList.Free;
  ETDList.Free;
  CreateHRM_DisConnect();
  Action:=Cafree;
end;

procedure TMASSHRM.FormDestroy(Sender: TObject);
begin
  MASSHRM:=nil;
end;



procedure TMASSHRM.Button1Click(Sender: TObject);
var STD,ETD:string;
    i:integer;
begin
  //
  if CBX1.Text<>CBX3.Text then
  begin
    Showmessage('Please select the same year');
    exit;
  end;
  if (Strtoint(CBX4.Text)-Strtoint(CBX2.Text))>3 then
  begin
    Showmessage('Please select between month < 3 month');
    exit;
  end;
  STD:=CBX1.Text+'-'+CBX2.Text+'-01';
  ETD:=FormatDatetime('YYYY-MM-DD', EndOfAMonth(strtoint(CBX3.Text),strtoint(CBX4.Text)));
  //begin
  STDList.Clear;
  ETDList.Clear;
  if StrtoInt(CBX2.Text)<=StrtoInt(CBX4.Text) then
  begin
    for i:= StrtoInt(CBX2.Text) to StrtoInt(CBX4.Text) do
    begin
       STDList.Add(CBX1.Text+'-'+Format('%.2d',[i])+'-01');
       ETDList.Add( FormatDatetime('YYYY-MM-DD', EndOfAMonth(strtoint(CBX3.Text),i)) );
    end;
  end;
  //end;
  //
  with HRMQry do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on ');
    //
    SQL.Add('select SCBZCL.BMonth as ''HMonth'',SCBZCL.BCount as ''HDays'',');
    SQL.Add('       SCBB.Qty as ''PodQty'',YWCP.Qty as ''ShipQty'',');
    SQL.Add('       HRM.SLTT/SCBZCL.BCount as ''DirectHM_WQty'', HRM.SLGT/SCBZCL.BCount as ''InDirectHM_WQty'',');
    SQL.Add('       (HRM.SLTT/SCBZCL.BCount+HRM.SLGT/SCBZCL.BCount) as ''HM_WQty'',');
    SQL.Add('       HRM.TTLCHC as ''DirectHM_WHourN'',HRM.TTTCHC as ''DirectHM_WHourC'',');
    SQL.Add('       HRM.All_TTHC as ''DirectHM_WHour'',');
    SQL.Add('       HRM.GTLCHC as ''InDirectHM_WHourN'',HRM.GTTCHC as ''InDirectHM_WHourC'',');
    SQL.Add('       HRM.All_GTHC as ''InDirectHM_WHour'',');
    SQL.Add('       HRM.All_TTHC+HRM.All_GTHC as ''HM_WHour'',HRM.SL as ''Work Count'',');
    SQL.Add('       HRM.TTGT as ''InDirectRate'', HRM.WorkRate/SCBZCL.BCount*100 as ''WorkRate'', HRM.NGHIVIEC as ''LeftWorkRate'', HRM.THAIRate*100 as ''ThaiQty''     ');
    SQL.Add('from (');
    SQL.Add('select Convert(varchar,month(BZDate)) as BMonth,Count (distinct BZDate) as BCount ');
    SQL.Add('from SCBZCL ');
    SQL.Add('left join BDepartment on BDepartment.ID=SCBZCL.DepNo');
    SQL.Add('where BDepartment.GSBH='''+main.sGSBH+''' and BDepartment.ProYN=1 and BZDate>='''+STD+''' and BZDate<='''+ETD+''' and BZDate<='''+FormatDateTime('YYYY-MM-DD',Date()-1)+''' and Qty>0');
    SQL.Add('Group by month(BZDate) ) SCBZCL');
    SQL.Add('left join ( ');
    SQL.Add('select month(SCBB.SCDate) as PMonth,Sum(Qty) as Qty ');
    SQL.Add('from SCBBS');
    SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO');
    SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+STD+''' and '''+ETD+'''  ');
    SQL.Add('       and SCBBS.GXLB=''A'' and SCBB.GSBH='''+main.sGSBH+''' ');
    SQL.Add('Group by month(SCBB.SCDate)  ) SCBB  on SCBB.PMonth=SCBZCL.BMonth ');
    SQL.Add('left join ( ');
    SQL.Add('select month(YWCP.EXEDATE) as ExMonth, SUM(YWCP.Qty) as Qty ');
    SQL.Add('from YWCP');
    SQL.Add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
    SQL.Add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
    SQL.Add('where DDZL.GSBH='''+main.sGSBH+''' and convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) between '''+STD+''' and '''+ETD+'''  ');
    SQL.Add('Group by month(YWCP.EXEDATE) ) YWCP on YWCP.ExMonth=SCBZCL.BMonth ');
    SQL.Add('--');
    SQL.Add('Left join (');
    SQL.Add('--');
    SQL.Add('select Convert(varchar,GIOQUETTEH_SL.QT_Month) as QT_Month,GIOQUETTEH_SL.SLTT,GIOQUETTEH_SL.SLGT,GIOQUETTEH_SL.SLTT+GIOQUETTEH_SL.SLGT as ALLSL,');
    SQL.Add('       GIOQUETTEH_SL.TTLCHC,GIOQUETTEH_SL.TTTCHC,GIOQUETTEH_SL.TTLCHC+GIOQUETTEH_SL.TTTCHC as All_TTHC,');
    SQL.Add('       GIOQUETTEH_SL.GTLCHC,GIOQUETTEH_SL.GTTCHC,GIOQUETTEH_SL.GTLCHC+GIOQUETTEH_SL.GTTCHC as All_GTHC,');
    SQL.Add('       GIOQUETTEH_SL.TTLCHC+GIOQUETTEH_SL.TTTCHC+GIOQUETTEH_SL.GTLCHC+GIOQUETTEH_SL.GTTCHC as All_HC,');
    SQL.Add('       Round(Convert(float,GIOQUETTEH_SL.SLTT)/Convert(float,GIOQUETTEH_SL.SLGT),2) as TTGT,');
    SQL.Add('       Convert(float,(GIOQUETTEH_SL.SLTT+GIOQUETTEH_SL.SLGT))/NHANVIEN_SL.SL as WorkRate,  ');
    SQL.Add('       NGHIVIEC_SL.NGHIVIEC,');
    SQL.Add('       Convert(float,NHANVIEN_SL.VE15H30NUOICON)/NHANVIEN_SL.SL as THAIRate,NHANVIEN_SL.SL');
    SQL.Add('from (');
    SQL.Add('SELECT month(ST_GIOQUETTHE.QT_NGAY) as QT_Month,');
    SQL.Add('SLTT=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 THEN 1 ELSE 0 END) ,');
    SQL.Add('SLGT=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.GIANTIEP=1  THEN 1 ELSE 0 END) , ');
    SQL.Add('TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END) ,');
    SQL.Add('TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOTANGCA ELSE 0 END),');
    SQL.Add('GTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.GIANTIEP=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END) ,');
    SQL.Add('GTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.GIANTIEP=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOTANGCA ELSE 0 END)');
    SQL.Add('');
    SQL.Add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 ');    //
    SQL.Add('Left JOIN HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA  ');
    SQL.Add('WHERE QT_NGAY>='''+STD+''' and QT_NGAY<='''+ETD+''' AND ST_DONVI.X_MA_ like ''A%''');
    SQL.Add('GROUP BY  month(ST_GIOQUETTHE.QT_NGAY)  ) as GIOQUETTEH_SL');
    SQL.Add('LEFT join (  ');
    SQL.Add('');
    for i:=0 to STDList.Count-1 do
    begin
      SQL.Add('select month(Convert(smalldatetime,'''+ETDList.Strings[i]+''')) as NHANNIEN_Month,COUNT(distinct ST_NHANVIEN.NV_MA) as SL');
      SQL.Add('       ,VE15H30NUOICON = COUNT(distinct IT_THAITHANGTHU7.NV_MA )+COUNT(distinct IT_NUOICONDUOI12THANG.NV_MA )');
      SQL.Add('from HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN');
      SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_NHANVIEN.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  ');
      SQL.Add('LEFT JOIN HumanDB.['+HrmsDBName+'].dbo.IT_NUOICONDUOI12THANG IT_NUOICONDUOI12THANG ON ST_NHANVIEN.NV_MA = IT_NUOICONDUOI12THANG.NV_MA  ');
      SQL.Add('               AND  ((IT_NUOICONDUOI12THANG.TUNGAY<='''+STDList.Strings[i]+''' and IT_NUOICONDUOI12THANG.DENNGAY>='''+STDList.Strings[i]+''') ');
      SQL.Add('               or (IT_NUOICONDUOI12THANG.TUNGAY<='''+ETDList.Strings[i]+''' and IT_NUOICONDUOI12THANG.DENNGAY>='''+ETDList.Strings[i]+''') ');
      SQL.Add('               or (IT_NUOICONDUOI12THANG.TUNGAY>='''+STDList.Strings[i]+''' and IT_NUOICONDUOI12THANG.DENNGAY<='''+ETDList.Strings[i]+''') ');
      SQL.Add('               or (IT_NUOICONDUOI12THANG.TUNGAY<='''+STDList.Strings[i]+''' and IT_NUOICONDUOI12THANG.DENNGAY>='''+ETDList.Strings[i]+''') ) ');
      SQL.Add('LEFT JOIN HumanDB.['+HrmsDBName+'].dbo.IT_THAITHANGTHU7 IT_THAITHANGTHU7 ON ST_NHANVIEN.NV_MA = IT_THAITHANGTHU7.NV_MA  ');
      SQL.Add('               AND  ((IT_THAITHANGTHU7.BATDAUTU<='''+STDList.Strings[i]+''' and IT_THAITHANGTHU7.DENNGAY>='''+STDList.Strings[i]+''') ');
      SQL.Add('               or (IT_THAITHANGTHU7.BATDAUTU<='''+ETDList.Strings[i]+''' and IT_THAITHANGTHU7.DENNGAY>='''+ETDList.Strings[i]+''') ');
      SQL.Add('               or (IT_THAITHANGTHU7.BATDAUTU>='''+STDList.Strings[i]+''' and IT_THAITHANGTHU7.DENNGAY<='''+ETDList.Strings[i]+''') ');
      SQL.Add('               or (IT_THAITHANGTHU7.BATDAUTU<='''+STDList.Strings[i]+''' and IT_THAITHANGTHU7.DENNGAY>='''+ETDList.Strings[i]+''') )');
      SQL.Add('WHERE ST_NHANVIEN.NV_Ngayvao <= '''+ETDList.Strings[i]+''' AND ST_NHANVIEN.NV_THOIVIEC=0 --and ST_NHANVIEN.NV_NgayTV> '''+ETDList.Strings[i]+''' ');
      SQL.Add('      AND ST_NHANVIEN.DV_MA NOT IN (''BGD'',''BGDX'') ');
      SQL.Add('      AND ST_NHANVIEN.DV_MA NOT LIKE ''%CG%''       ');
      SQL.Add('      AND ST_DONVI.X_MA_ like ''A%'' ');
      if i<>STDList.Count-1  then
        SQL.Add('union all');
    end;
    SQL.Add('      ) as NHANVIEN_SL on GIOQUETTEH_SL.QT_Month=NHANVIEN_SL.NHANNIEN_Month');
    SQL.Add('');
    SQL.Add('LEFT join ( ');
    SQL.Add('SELECT ');
    SQL.Add(' month(IT_DIEMDANHHANGNGAY.NGAY) as NGHIVIEC_Month ,NGHIVIEC = COUNT(IT_DIEMDANHHANGNGAY.NV_MA)');
    SQL.Add('FROM HumanDB.['+HrmsDBName+'].dbo.IT_DIEMDANHHANGNGAY IT_DIEMDANHHANGNGAY');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON IT_DIEMDANHHANGNGAY.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  ');
    SQL.Add('WHERE IT_DIEMDANHHANGNGAY.NGAYVAO  <= '''+ETD+''' ');
    SQL.Add('      AND IT_DIEMDANHHANGNGAY.DV_MA NOT IN (''BGD'',''BGDX'') ');
    SQL.Add('      AND IT_DIEMDANHHANGNGAY.DV_MA NOT LIKE ''%CG%''');
    SQL.Add('      AND IT_DIEMDANHHANGNGAY.NGAY between '''+STD+''' and '''+ETD+''' ');
    SQL.Add('      AND (IT_DIEMDANHHANGNGAY.NVG = 1 OR IT_DIEMDANHHANGNGAY.OPKTRG = 1)');
    SQL.Add('      AND ST_DONVI.X_MA_ like ''A%''');
    SQL.Add('GROUP BY month(IT_DIEMDANHHANGNGAY.NGAY) ) as NGHIVIEC_SL on NGHIVIEC_SL.NGHIVIEC_Month=GIOQUETTEH_SL.QT_Month ) HRM on HRM.QT_Month COLLATE DATABASE_DEFAULT =SCBZCL.BMonth COLLATE DATABASE_DEFAULT');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;

end;

procedure TMASSHRM.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i:integer;
begin
  SelectedIndex:=-1;
  STDList:=TStringlist.Create;
  ETDList:=TStringlist.Create;
  //
  DecodeDate(Date()-30, myYear, myMonth, myDay);
  for i:=0 to CBX1.Items.Count-1 do
  begin
    if strtoint(CBX1.Items[i])=myYear then
    begin
      CBX1.ItemIndex:=i;
      CBX3.ItemIndex:=i;
      break;
    end;
  end;

  for i:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[i])=myMonth then
    begin
      CBX2.ItemIndex:=i;
      CBX4.ItemIndex:=i;
      break;
    end;
  end;
  ReadIni();
  CreateHRM_Connect();
end;

procedure TMASSHRM.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  HRMQry.active  then
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
          for   i:=0   to   HRMQry.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=HRMQry.fields[i].FieldName;
          end;

          HRMQry.First;
          j:=2;
          while   not   HRMQry.Eof   do
          begin
            for   i:=0   to  HRMQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=HRMQry.Fields[i].Value;
            end;
            HRMQry.Next;
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

procedure TMASSHRM.DBGridEh1CellClick(Column: TColumnEh);
var STD,ETD:string;
    i:integer;
    IsFreshDetail:boolean;
begin

   if HRMQry.Active=false then exit;
   IsFreshDetail:=true;
   for i:=0 to STDList.Count-1 do
   begin
     if strtoint(Copy(STDList.Strings[i],6,2))=HRMQry.FieldByName('HMonth').AsInteger then
     begin
       STD:=STDList.Strings[i];
       ETD:=ETDList.Strings[i];
       if SelectedIndex=i then IsFreshDetail:=false;
       SelectedIndex:=i;
       break;
     end;
   end;
   //差勤人數
   if  ((Column.FieldName='DirectHM_WQty') or (Column.FieldName='InDirectHM_WQty') or (Column.FieldName='HM_WQty')) then
   begin
      PageControl1.TabIndex:=2;
      if ((IsFreshDetail=true) or (QTQry.Active=false)) then
      with QTQry do
      begin
        active:=false;
        sql.Clear;
        sql.add('SELECT month(ST_GIOQUETTHE.QT_NGAY) as QT_Month,Day(ST_GIOQUETTHE.QT_NGAY) as QT_Day,');
        sql.add('SLTT=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 THEN 1 ELSE 0 END) ,');
        sql.add('SLGT=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.GIANTIEP=1 THEN 1 ELSE 0 END) ,');
        sql.add('SL_All=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0  THEN 1 ELSE 0 END) ');
        sql.add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE ');
        sql.add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
        sql.add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA   '); //AND DV_LocBB =0
        SQL.Add('Left JOIN HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA  ');
        sql.add('WHERE QT_NGAY>='''+STD+''' and QT_NGAY<='''+ETD+''' AND ST_DONVI.X_MA_ like ''A%'' ');
        sql.add('GROUP BY  month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY) ');
        sql.add('order by month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY) ');
        Active:=true;
      end;
   end;
   //直工工時
   if  ((Column.FieldName='DirectHM_WHourN') or (Column.FieldName='DirectHM_WHourC') or (Column.FieldName='DirectHM_WHour')) then
   begin
      PageControl1.TabIndex:=3;
      if ((IsFreshDetail=true) or (TTGioQry.Active=false)) then
      with TTGioQry do
      begin
        active:=false;
        sql.Clear;
        sql.add('SELECT month(ST_GIOQUETTHE.QT_NGAY) as QT_Month,Day(ST_GIOQUETTHE.QT_NGAY) as QT_Day,');
        SQL.Add('TTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END) ,');
        SQL.Add('TTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOTANGCA ELSE 0 END),');
        SQL.Add('HC_All=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END)+');
        SQL.Add('SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.TTCV=1 AND (CA_MA=''Ca HC'' or CA_MA=''CA 2'' or CA_MA=''CA 3''or CA_MA=''CA 4'') THEN CC_GIOTANGCA ELSE 0 END) ');
        sql.add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE ');
        sql.add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
        sql.add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  ');   //
        SQL.Add('Left JOIN HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA  ');
        sql.add('WHERE QT_NGAY>='''+STD+''' and QT_NGAY<='''+ETD+''' AND ST_DONVI.X_MA_ like ''A%'' ');
        sql.add('GROUP BY  month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY) ');
        sql.add('order by month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY) ');
        Active:=true;
      end;
   end;
   //間工工時
   if  ((Column.FieldName='InDirectHM_WHourN') or (Column.FieldName='InDirectHM_WHourC') or (Column.FieldName='InDirectHM_WHour')) then
   begin
      PageControl1.TabIndex:=4;
      if ((IsFreshDetail=true) or (GTGioQry.Active=false)) then
      with GTGioQry do
      begin
        active:=false;
        SQL.Clear;
        sql.add('SELECT month(ST_GIOQUETTHE.QT_NGAY) as QT_Month,Day(ST_GIOQUETTHE.QT_NGAY) as QT_Day,');
        SQL.Add('GTLCHC=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.GIANTIEP=1 AND ST_GIOQUETTHE.CA_MA in (''Ca HC'',''CA 2'',''CA 2'',''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END) ,');
        SQL.Add('GTTCHC=SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.GIANTIEP=1 AND ST_GIOQUETTHE.CA_MA in (''Ca HC'',''CA 2'',''CA 2'',''CA 4'') THEN CC_GIOTANGCA ELSE 0 END),');
        SQL.Add('HC_All=SUM(CASE WHEN ISNULL(CC_GIOBINHTHUONG,0)>0 AND ST_CONGVIEC.GIANTIEP=1 AND ST_GIOQUETTHE.CA_MA in (''Ca HC'',''CA 2'',''CA 2'',''CA 4'') THEN CC_GIOBINHTHUONG ELSE 0 END)+');
        SQL.Add('SUM(CASE WHEN ISNULL(CC_GIOTANGCA,0)>0 AND ST_CONGVIEC.GIANTIEP=1 AND ST_GIOQUETTHE.CA_MA in (''Ca HC'',''CA 2'',''CA 2'',''CA 4'') THEN CC_GIOTANGCA ELSE 0 END) ');
        sql.add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE ');
        sql.add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
        sql.add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  '); //
        SQL.Add('Left JOIN HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA  ');
        sql.add('WHERE QT_NGAY>='''+STD+''' and QT_NGAY<='''+ETD+''' AND ST_DONVI.X_MA_ like ''A%'' ');
        sql.add('GROUP BY  month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY) ');
        sql.add('order by month(ST_GIOQUETTHE.QT_NGAY),Day(ST_GIOQUETTHE.QT_NGAY) ');
        Active:=true;
      end;
   end;
   //
   //產量工時
   if  (Column.FieldName='PodQty')  then
   begin
      PageControl1.TabIndex:=0;
      if ((IsFreshDetail=true) or (ScbQry.Active=false)) then
      with ScbQry do
      begin
        active:=false;
        SQL.Clear;
        SQL.Add('select month(SCBB.SCDate) as PMonth, Day(SCBB.SCDate) as PDay ,Sum(Qty) as Qty ');
        SQL.Add('from SCBBS ');
        SQL.Add('left join SCBB on SCBB.ProNo=SCBBS.ProNO ');
        SQL.Add('where  convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+STD+''' and '''+ETD+'''  ');
        SQL.Add('       and SCBBS.GXLB=''A'' and SCBB.GSBH='''+main.sGSBH+''' ');
        SQL.Add('Group by month(SCBB.SCDate),Day(SCBB.SCDate) ');
        SQL.Add('order by month(SCBB.SCDate),Day(SCBB.SCDate) ');
        Active:=true;
      end;
   end;
   //出貨
   if  (Column.FieldName='ShipQty')  then
   begin
      PageControl1.TabIndex:=1;
      if ((IsFreshDetail=true) or (YWCPQry.Active=false)) then
      with YWCPQry do
      begin
        active:=false;
        SQL.Clear;
        SQL.Add('select month(YWCP.EXEDATE) as ExMonth,Day(YWCP.EXEDATE) as ExDay, SUM(YWCP.Qty) as Qty ');
        SQL.Add('from YWCP');
        SQL.Add('left join YWDD on YWDD.DDBH=YWCP.DDBH');
        SQL.Add('left join DDZL on DDZL.DDBH=YWDD.YSBH');
        SQL.Add('where DDZL.GSBH='''+main.sGSBH+''' and convert(smalldatetime,convert(varchar,YWCP.EXEDATE,111)) between '''+STD+''' and '''+ETD+'''  ');
        SQL.Add('Group by month(YWCP.EXEDATE),Day(YWCP.EXEDATE) ');
        SQL.Add('order by month(YWCP.EXEDATE),Day(YWCP.EXEDATE) ');
        Active:=true;
      end;
   end;
end;

end.
