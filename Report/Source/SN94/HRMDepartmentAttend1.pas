unit HRMDepartmentAttend1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables, Dateutils,
  Menus, Comobj, inifiles;

type
  THRMDepartmentAttend = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    ExeQuery: TQuery;
    HRMQry: TQuery;
    DS1: TDataSource;
    Label2: TLabel;
    CBX1: TComboBox;
    Label7: TLabel;
    CBX2: TComboBox;
    DBGridEh1: TDBGridEh;
    Splitter1: TSplitter;
    DBGridEh2: TDBGridEh;
    HRMDetQry: TQuery;
    DS2: TDataSource;
    HRMDetQryX_MA_: TStringField;
    HRMDetQryTONGSO: TIntegerField;
    HRMDetQryTONGSODILAM: TIntegerField;
    HRMDetQryTONGSODILAM_A: TIntegerField;
    HRMDetQryTONGSODILAM_B: TIntegerField;
    HRMDetQryTONGSODILAMHC: TIntegerField;
    HRMDetQryTONGSODILAMCA2: TIntegerField;
    HRMDetQryTONGSODILAMCA3: TIntegerField;
    HRMDetQryTONGSODILAMCA4: TIntegerField;
    HRMDetQryTONGSODILAMCA_Nghi: TIntegerField;
    HRMDetQryP: TIntegerField;
    HRMDetQryTS: TIntegerField;
    HRMDetQryKHAC: TIntegerField;
    HRMDetQryVE15H30NUOICON: TIntegerField;
    HRMDetQryVE15H30MANGTHAI: TIntegerField;
    HRMDetQryNGHIVIEC: TIntegerField;
    HRMDetQryNDay: TStringField;
    DonViEdit: TEdit;
    Label3: TLabel;
    PopupMenu: TPopupMenu;
    Excel1: TMenuItem;
    OpenDialog: TOpenDialog;
    CKBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure HRMQryAfterOpen(DataSet: TDataSet);
    procedure DBGridEh1CellClick(Column: TColumnEh);
    procedure DBGridEh2CellClick(Column: TColumnEh);
    procedure Excel1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    AppDir:String;
    ExcelSheetI:integer;
    IsShowDalogHRMNHhanVien:boolean;
    GFactory:String;
    GSelDate:TDatetime;

    { Private declarations }
    procedure ReadIni();
    procedure CreateHRM_Connect();
    procedure CreateHRM_DisConnect();
    procedure ExportDefaultExcel();
    procedure ExportFormatExcel();
    procedure ExportExternalExcel();
  public
    HrmsDBIP,HrmsDBUser,HrmsDBPass,HrmsDBName:String;
    Manage_N546_DV_MA:string;
    { Public declarations }
  end;

var
  HRMDepartmentAttend: THRMDepartmentAttend;

implementation
  uses HRMNHhanVien1,ExcelSheetDlg1,FunUnit, Main1;
{$R *.dfm}
procedure THRMDepartmentAttend.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  Manage_N546_DV_MA:='''A.BGD'',''A1A2CG'',''A1CG'',''A2CG'',''B.BGD'',''B1CG'',''B6 CG'',''B7 CG'',''CDCG'',''R2CG'',''R3CG'',''T.CG'',''VP.BGD'',''VP.CGVP'',''VPHC.BGD'',''GCCG'',''BGD''' ;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      HrmsDBIP:=MyIni.ReadString('HRMS','IP','192.168.23.12');
      HrmsDBName:=MyIni.ReadString('HRMS','Database','P0104-TYXUAN');
      HrmsDBUser:=MyIni.ReadString('HRMS','User','hrms');
      HrmsDBPass:=MyIni.ReadString('HRMS','Pass','123456');
      Manage_N546_DV_MA:=MyIni.ReadString('ERP','Manage_N546_DV_MA','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure THRMDepartmentAttend.CreateHRM_Connect();
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
procedure THRMDepartmentAttend.CreateHRM_DisConnect();
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

procedure THRMDepartmentAttend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
 CreateHRM_DisConnect();
end;

procedure THRMDepartmentAttend.FormDestroy(Sender: TObject);
begin
  HRMDepartmentAttend:=nil;
end;

procedure THRMDepartmentAttend.Button1Click(Sender: TObject);
var iYear,iMonth,iDay :word;
    i:integer;
    sDate,eDate:TDateTime;
begin
  iYear:=strtoint(CBX1.text);
  iMonth:=strtoint(CBX2.text);
  iDay:=1;
  sdate:=EncodeDate(iYear,iMonth,iDay);
  edate:=endofthemonth(sdate);
  decodedate(edate,iYear,iMonth,iDay);

  with HRMQry do
  begin
    Active:=false;
    SQL.Clear;
    //
    SQL.Add('if object_id(''tempdb..#HRMDepAtt'') is not null  ');
    SQL.Add('   begin   drop table #HRMDepAtt end   ');
    SQL.Add('set ansi_nulls on ');
    SQL.Add('set ansi_warnings on');    
    SQL.Add('select * into #HRMDepAtt from (');
    SQL.Add('select ST_DONVI.X_MA_,''All'' as SB ,datepart(day,ST_GIOQUETTHE.QT_NGAY) as NDay,');
    SQL.Add('       Qty = SUM(CASE WHEN CC_GIOBINHTHUONG > 0 THEN 1 ELSE 0 END)');
    SQL.Add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE ');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 ');
    SQL.Add('WHERE QT_NGAY>='''+Formatdatetime('yyyy/MM/dd',sDate)+''' and QT_NGAY<='''+Formatdatetime('yyyy/MM/dd',eDate)+''' AND ST_DONVI.X_MA_ not like ''CNM%'' and ST_DONVI.X_MA_  not like ''TAM%''');
    SQL.Add('AND ST_NHANVIEN.NV_Ngayvao <= '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('AND ST_NHANVIEN.DV_MA NOT IN ('''+Manage_N546_DV_MA+''')');
    SQL.Add('AND ST_NHANVIEN.DV_MA_ NOT IN ('''+Manage_N546_DV_MA+''')');
    //SQL.Add('AND ST_NHANVIEN.DV_MA NOT LIKE ''%CG%''');
    if DonViEdit.Text<>'' then
      SQL.Add('AND ST_NHANVIEN.DV_MA like ''%'+DonViEdit.Text+'%'' ');
    SQL.Add('Group by ST_DONVI.X_MA_,ST_GIOQUETTHE.QT_NGAY');
    SQL.Add('Union all ');
    SQL.Add('select ST_DONVI.X_MA_,''Dir'' as SB ,datepart(day,ST_GIOQUETTHE.QT_NGAY) as NDay,');
    SQL.Add('       Qty = SUM(CASE WHEN CC_GIOBINHTHUONG > 0 and ST_CONGVIEC.TTCV=1 THEN 1 ELSE 0 END)');
    SQL.Add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 ');
    SQL.Add('Left JOIN HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA  ');
    SQL.Add('WHERE QT_NGAY>='''+Formatdatetime('yyyy/MM/dd',sDate)+''' and QT_NGAY<='''+Formatdatetime('yyyy/MM/dd',eDate)+''' AND ST_DONVI.X_MA_ not like ''CNM%'' and ST_DONVI.X_MA_  not like ''TAM%''');
    SQL.Add('AND ST_NHANVIEN.NV_Ngayvao <= '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('AND ST_NHANVIEN.DV_MA NOT IN ('''+Manage_N546_DV_MA+''')');
    SQL.Add('AND ST_NHANVIEN.DV_MA_ NOT IN ('''+Manage_N546_DV_MA+''')');
    //SQL.Add('AND ST_NHANVIEN.DV_MA NOT LIKE ''%CG%''');
    if DonViEdit.Text<>'' then
      SQL.Add('AND ST_NHANVIEN.DV_MA like ''%'+DonViEdit.Text+'%'' ');
    SQL.Add('Group by ST_DONVI.X_MA_,ST_GIOQUETTHE.QT_NGAY');
    SQL.Add('Union all');
    SQL.Add('select ST_DONVI.X_MA_,''InDir'' as SB ,datepart(day,ST_GIOQUETTHE.QT_NGAY) as NDay,');
    SQL.Add('       Qty = SUM(CASE WHEN CC_GIOBINHTHUONG > 0 and ST_CONGVIEC.GIANTIEP=1 THEN 1 ELSE 0 END)');
    SQL.Add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 ');
    SQL.Add('Left JOIN HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA  ');
    SQL.Add('WHERE QT_NGAY>='''+Formatdatetime('yyyy/MM/dd',sDate)+''' and QT_NGAY<='''+Formatdatetime('yyyy/MM/dd',eDate)+''' AND ST_DONVI.X_MA_ not like ''CNM%'' and ST_DONVI.X_MA_  not like ''TAM%''');
    SQL.Add('AND ST_NHANVIEN.NV_Ngayvao <= '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    //SQL.Add('AND ST_NHANVIEN.DV_MA NOT IN (''BGD'',''BGDX'')');
    //SQL.Add('AND ST_NHANVIEN.DV_MA_ NOT IN (''BGD'',''BGDX'')');
    //SQL.Add('AND ST_NHANVIEN.DV_MA NOT LIKE ''%CG%''');
    SQL.Add('AND ST_NHANVIEN.DV_MA NOT IN ('''+Manage_N546_DV_MA+''')');
    SQL.Add('AND ST_NHANVIEN.DV_MA_ NOT IN ('''+Manage_N546_DV_MA+''')');
    if DonViEdit.Text<>'' then
      SQL.Add('AND ST_NHANVIEN.DV_MA like ''%'+DonViEdit.Text+'%'' ');
    SQL.Add('Group by ST_DONVI.X_MA_,ST_GIOQUETTHE.QT_NGAY');
    SQL.Add('');
    SQL.Add('union all');
    SQL.Add('select ''ZTotal'' as X_MA_,''All'' as SB ,datepart(day,ST_GIOQUETTHE.QT_NGAY) as NDay,');
    SQL.Add('       Qty = SUM(CASE WHEN CC_GIOBINHTHUONG > 0 THEN 1 ELSE 0 END)');
    SQL.Add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 ');
    SQL.Add('WHERE QT_NGAY>='''+Formatdatetime('yyyy/MM/dd',sDate)+''' and QT_NGAY<='''+Formatdatetime('yyyy/MM/dd',eDate)+''' AND ST_DONVI.X_MA_ not like ''CNM%'' and ST_DONVI.X_MA_  not like ''TAM%''');
    SQL.Add('AND ST_NHANVIEN.NV_Ngayvao <= '''+Formatdatetime('yyyy/MM/dd',eDate)+''' ');
    SQL.Add('AND ST_NHANVIEN.DV_MA NOT IN ('''+Manage_N546_DV_MA+''')');
    SQL.Add('AND ST_NHANVIEN.DV_MA_ NOT IN ('''+Manage_N546_DV_MA+''')');
    //SQL.Add('AND ST_NHANVIEN.DV_MA NOT LIKE ''%CG%''');
    if DonViEdit.Text<>'' then
      SQL.Add('AND ST_NHANVIEN.DV_MA like ''%'+DonViEdit.Text+'%'' ');
    SQL.Add('Group by ST_GIOQUETTHE.QT_NGAY');
    SQL.Add('Union all ');
    SQL.Add('select ''ZTotal'' as X_MA_,''Dir'' as SB ,datepart(day,ST_GIOQUETTHE.QT_NGAY) as NDay,');
    SQL.Add('       Qty = SUM(CASE WHEN CC_GIOBINHTHUONG > 0 and ST_CONGVIEC.TTCV=1 THEN 1 ELSE 0 END)');
    SQL.Add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0  ');
    SQL.Add('Left JOIN HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA  ');
    SQL.Add('WHERE QT_NGAY>='''+Formatdatetime('yyyy/MM/dd',sDate)+''' and QT_NGAY<='''+Formatdatetime('yyyy/MM/dd',eDate)+''' AND ST_DONVI.X_MA_ not like ''CNM%'' and ST_DONVI.X_MA_  not like ''TAM%''');
    SQL.Add('AND ST_NHANVIEN.NV_Ngayvao <= '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('AND ST_NHANVIEN.DV_MA NOT IN ('''+Manage_N546_DV_MA+''')');
    SQL.Add('AND ST_NHANVIEN.DV_MA_ NOT IN ('''+Manage_N546_DV_MA+''')');
    //SQL.Add('AND ST_NHANVIEN.DV_MA NOT LIKE ''%CG%''');
    if DonViEdit.Text<>'' then
      SQL.Add('AND ST_NHANVIEN.DV_MA like ''%'+DonViEdit.Text+'%'' ');
    SQL.Add('Group by ST_GIOQUETTHE.QT_NGAY');
    SQL.Add('Union all');
    SQL.Add('select ''ZTotal'' as X_MA_,''InDir'' as SB ,datepart(day,ST_GIOQUETTHE.QT_NGAY) as NDay,');
    SQL.Add('       Qty = SUM(CASE WHEN CC_GIOBINHTHUONG > 0 and ST_CONGVIEC.GIANTIEP=1 THEN 1 ELSE 0 END)');
    SQL.Add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_GIOQUETTHE.NV_MA=ST_NHANVIEN.NV_MA ');
    SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 ');
    SQL.Add('Left JOIN HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA  ');
    SQL.Add('WHERE QT_NGAY>='''+Formatdatetime('yyyy/MM/dd',sDate)+''' and QT_NGAY<='''+Formatdatetime('yyyy/MM/dd',eDate)+''' AND ST_DONVI.X_MA_ not like ''CNM%'' and ST_DONVI.X_MA_  not like ''TAM%''');
    SQL.Add('AND ST_NHANVIEN.NV_Ngayvao <= '''+Formatdatetime('yyyy/MM/dd',eDate)+'''');
    SQL.Add('AND ST_NHANVIEN.DV_MA NOT IN ('''+Manage_N546_DV_MA+''')');
    SQL.Add('AND ST_NHANVIEN.DV_MA_ NOT IN ('''+Manage_N546_DV_MA+''')');
    //SQL.Add('AND ST_NHANVIEN.DV_MA NOT LIKE ''%CG%''');
    if DonViEdit.Text<>'' then
      SQL.Add('AND ST_NHANVIEN.DV_MA like ''%'+DonViEdit.Text+'%'' ');
    SQL.Add('Group by ST_GIOQUETTHE.QT_NGAY');
    SQL.Add('');
    SQL.Add(') ST_GIOQUETTHE');
    //
    SQL.Add('select HRM.X_MA_,HRM.SB  ');
    for i:=1 to iDay do
    begin
         sql.add(',sum(case  when NDay='+''''+inttostr(i)+'''');
         sql.add(' then Qty  end) as '+''''+inttostr(i)+'''');
    end;
    SQL.Add('from  (select #HRMDepAtt.* from #HRMDepAtt  ');
    SQL.Add('       ) HRM ');
    SQL.Add('group by   HRM.X_MA_,HRM.SB  ');
    SQL.Add('order by   HRM.X_MA_ Desc,HRM.SB Asc ');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure THRMDepartmentAttend.FormCreate(Sender: TObject);
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  IsShowDalogHRMNHhanVien:=false;
  ReadIni();
  CreateHRM_Connect();
end;

procedure THRMDepartmentAttend.HRMQryAfterOpen(DataSet: TDataSet);
var i:integer;
begin
   with DBGrideh1 do
   begin
     columns[0].Width:=90;
     columns[0].title.titlebutton:=true;
     columns[0].title.caption:='單位|Factory';
     columns[0].FieldName:=HRMQry.Fields[0].FieldName;
     columns[1].Width:=50;
     columns[1].title.caption:='類別|SB';
     columns[1].FieldName:=HRMQry.Fields[1].FieldName;
     for i:=2 to HRMQry.FieldCount-1 do
     begin
         Tfloatfield(HRMQry.Fields[i]).displayformat:='##,#0' ;
         if dayoftheweek(encodedate(strtoint(CBX1.text),strtoint(CBX2.text),strtoint(columns[i].title.caption)))=7 then
         begin
             columns[i].font.color:=clred;
             columns[i].font.style:=[fsitalic];
             columns[i].title.font.style:=[fsitalic];
             columns[i].title.font.color:=clred;
         end;
         columns[i].Width:=45;
         columns[i].FieldName:=HRMQry.Fields[i].FieldName;
         columns[i].Title.Caption:='日  期  ( '+CBX1.text+' / '+CBX2.text+' )|'+columns[i].Title.Caption;
     end;
   end;

end;

procedure THRMDepartmentAttend.DBGridEh1CellClick(Column: TColumnEh);
var Factory:string;
    iYear,iMonth :word;
    SelDate:TDateTime;
begin
 //
 if HRMQry.Active=true then
 begin
   //差勤人數
   if  ((Column.Field.FieldName<>'X_MA_') and (Column.Field.FieldName<>'SB'))  then
   begin
     Factory:=HRMQry.FieldByName('X_MA_').AsString;
     iYear:=strtoint(CBX1.text);
     iMonth:=strtoint(CBX2.text);
     SelDate:=EncodeDate(iYear,iMonth,strtoint(Column.Field.FieldName));
     if ((GFactory<>Factory) or (GSelDate<>SelDate)) then
     begin
       GFactory:=Factory;
       GSelDate:=SelDate;
       with HRMDetQry do
       begin
         Active:=false;
         SQL.Clear;
         SQL.Add('SELECT ');
         SQL.Add(' '''+Formatdatetime('yyyy/MM/dd',SelDate)+''' as NDay,');
         if Factory<>'ZTotal' then
           SQL.Add(' ST_DONVI.X_MA_, ')
         else
           SQL.Add(' ''ZTotal'' as X_MA_, ');
         SQL.Add(' TONGSO = COUNT(ST_NHANVIEN.NV_MA),');
         SQL.Add(' TONGSODILAM = SUM(CASE WHEN (CC_GIOBINHTHUONG > 0) THEN 1 ELSE 0 END),');
         SQL.Add(' TONGSODILAM_A = SUM(CASE WHEN ((CC_GIOBINHTHUONG > 0) ) and ST_CONGVIEC.TTCV=1  THEN 1 ELSE 0 END),');
         SQL.Add(' TONGSODILAM_B = SUM(CASE WHEN ((CC_GIOBINHTHUONG > 0) ) and ST_CONGVIEC.GIANTIEP=1  THEN 1 ELSE 0 END),');
         SQL.Add(' TONGSODILAMHC = SUM(CASE WHEN ST_GIOQUETTHE.CA_MA= ''CA HC'' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 THEN  1 ELSE 0 END),');
         SQL.Add(' TONGSODILAMCA2 = SUM(CASE WHEN ST_GIOQUETTHE.CA_MA= ''CA 2'' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 THEN 1 ELSE 0 END),');
         SQL.Add(' TONGSODILAMCA3 = SUM(CASE WHEN ST_GIOQUETTHE.CA_MA= ''CA 3'' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 THEN 1 ELSE 0 END),');
         SQL.Add(' TONGSODILAMCA4 = SUM(CASE WHEN ST_GIOQUETTHE.CA_MA= ''CA 4'' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 THEN 1 ELSE 0 END),');
         SQL.Add(' TONGSODILAMCA_Nghi = SUM( CASE WHEN ST_GIOQUETTHE.NP_Ma is null AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0 THEN 1 ELSE 0 END),');
         SQL.Add(' P = SUM( CASE WHEN CC_HESONGAYCONG <> 2 AND ST_GIOQUETTHE.NP_Ma = ''P'' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0 THEN 1 ELSE 0 END),');
         SQL.Add(' TS = SUM( CASE WHEN CC_HESONGAYCONG <> 2 AND ST_GIOQUETTHE.NP_Ma IN (''TS'',''TS1'')  AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0  THEN 1 ELSE 0 END),');
         SQL.Add(' KHAC = SUM( CASE WHEN CC_HESONGAYCONG <> 2 AND ST_GIOQUETTHE.NP_Ma NOT IN (''P'',''TS'',''TS1'')  AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0  THEN 1 ELSE 0 END),');
         SQL.Add(' VE15H30NUOICON = COUNT(IT_NUOICONDUOI12THANG.NV_MA ),');
         SQL.Add(' VE15H30MANGTHAI = COUNT(IT_THAITHANGTHU7.NV_MA ),');
         SQL.Add(' NGHIVIEC = 0');
         SQL.Add('FROM HumanDB.['+HrmsDBName+'].dbo.ST_GIOQUETTHE ST_GIOQUETTHE ');
         SQL.Add('INNER JOIN HumanDB.['+HrmsDBName+'].dbo.ST_DONVI ST_DONVI ON ST_GIOQUETTHE.DV_MA = ST_DONVI.DV_MA AND DV_LocBB =0 AND DV_TV <> 1 ');   //
         SQL.Add('LEFT JOIN HumanDB.['+HrmsDBName+'].dbo.ST_NHANVIEN ST_NHANVIEN ON ST_NHANVIEN.NV_Ma = ST_GIOQUETTHE .NV_MA ');
         SQL.Add('Left JOIN HumanDB.['+HrmsDBName+'].dbo.ST_CONGVIEC ST_CONGVIEC ON ST_NHANVIEN.CV_MA = ST_CONGVIEC.CV_MA  ');
         SQL.Add('LEFT JOIN HumanDB.['+HrmsDBName+'].dbo.IT_NUOICONDUOI12THANG IT_NUOICONDUOI12THANG ON ST_NHANVIEN.NV_MA = IT_NUOICONDUOI12THANG.NV_MA');
         SQL.Add('     AND CHONNGAYSANH=1 AND '''+Formatdatetime('yyyy/MM/dd',SelDate)+''' BETWEEN CONVERT(DATETIME,NGAYSANH,103) AND DATEADD(M,12,CONVERT(DATETIME,NGAYSANH,103))');
         SQL.Add('LEFT JOIN HumanDB.['+HrmsDBName+'].dbo.IT_THAITHANGTHU7 IT_THAITHANGTHU7 ON ST_NHANVIEN.NV_MA = IT_THAITHANGTHU7.NV_MA');
         SQL.Add('     AND '''+Formatdatetime('yyyy/MM/dd',SelDate)+''' BETWEEN ISNULL(BATDAUTU,DATEADD(YY,-100, '''+Formatdatetime('yyyy/MM/dd',SelDate)+''')) AND ISNULL(IT_THAITHANGTHU7.DENNGAY,DATEADD(YY,-100, '''+Formatdatetime('yyyy/MM/dd',SelDate)+'''))');
         SQL.Add('WHERE  QT_NGAY = '''+Formatdatetime('yyyy/MM/dd',SelDate)+''' AND ST_NHANVIEN.NV_Ngayvao <= '''+Formatdatetime('yyyy/MM/dd',SelDate)+'''');
         SQL.Add('AND ST_NHANVIEN.DV_MA NOT IN (''BGD'',''BGDX'')');
         SQL.Add('AND ST_NHANVIEN.DV_MA NOT LIKE ''%CG%''');
         if DonViEdit.Text<>'' then
           SQL.Add('AND ST_NHANVIEN.DV_MA like ''%'+DonViEdit.Text+'%'' ');
         if Factory<>'ZTotal' then
         begin
            SQL.Add('AND ST_DONVI.X_MA_ = '''+Factory+'''');
            SQL.Add('GROUP BY ST_DONVI.X_MA_');
         end;
         //funcObj.WriteErrorLog(sql.Text);
         Active:=true;
       end;
     end;

   end;
 end;
 //
end;

procedure THRMDepartmentAttend.DBGridEh2CellClick(Column: TColumnEh);
begin
 if HRMDetQry.Active=true then
 begin
   HRMNHhanVien:=THRMNHhanVien.Create(self);
   HRMNHhanVien.SelDate:=HRMDetQry.FieldByName('NDay').AsString;
   HRMNHhanVien.DV_MA:='';
   HRMNHhanVien.SubSQL:='';
   if DonViEdit.Text<>'' then
     HRMNHhanVien.DV_MA:=DonViEdit.Text;
   if HRMDetQry.FieldByName('X_MA_').AsString<>'ZTotal' then
     HRMNHhanVien.SubSQL:='AND ST_DONVI.X_MA_ = '''+HRMDetQry.FieldByName('X_MA_').AsString+''' ';
   //差勤人數
   if  (Column.Field.FieldName='TONGSO')  then
   begin

   end;
   //刷卡人數
   if  (Column.Field.FieldName='TONGSODILAM')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 ';
   end;
   //直工
   if  (Column.Field.FieldName='TONGSODILAM_A')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 and LEFT(ST_NHANVIEN.CV_MA,1)=''A'' ';
   end;
   //間工
   if  (Column.Field.FieldName='TONGSODILAM_B')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 and LEFT(ST_NHANVIEN.CV_MA,1)=''B'' ';
   end;
   //正常班
   if  (Column.Field.FieldName='TONGSODILAMHC')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 and ST_GIOQUETTHE.CA_MA= ''CA HC'' ';
   end;
   //早班
   if  (Column.Field.FieldName='TONGSODILAMCA2')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 and ST_GIOQUETTHE.CA_MA= ''CA 2'' ';
   end;
   //午班
   if  (Column.Field.FieldName='TONGSODILAMCA3')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 and ST_GIOQUETTHE.CA_MA= ''CA 3'' ';
   end;
   //晚班
   if  (Column.Field.FieldName='TONGSODILAMCA4')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG > 0 and ST_GIOQUETTHE.CA_MA= ''CA 4'' ';
   end;
   //Sua Nghhi
   if  (Column.Field.FieldName='TONGSODILAMCA_Nghi')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND ST_GIOQUETTHE.NP_Ma is null AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0 ';
   end;
   //Nghhi P
   if  (Column.Field.FieldName='P')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND CC_HESONGAYCONG <> 2 AND ST_GIOQUETTHE.NP_Ma = ''P'' AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0 ';
   end;
   //Nghhi TS
   if  (Column.Field.FieldName='TS')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND CC_HESONGAYCONG <> 2 AND ST_GIOQUETTHE.NP_Ma IN (''TS'',''TS1'')  AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0 ';
   end;
   //Nghhi KHac
   if  (Column.Field.FieldName='KHAC')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND CC_HESONGAYCONG <> 2 AND ST_GIOQUETTHE.NP_Ma NOT IN (''P'',''TS'',''TS1'')  AND ST_GIOQUETTHE.CC_GIOBINHTHUONG = 0 ';
   end;
   //Nghhi THAI NGUOI CON
   if  (Column.Field.FieldName='VE15H30NUOICON')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND CHONNGAYSANH=1 AND '''+Formatdatetime('yyyy/MM/dd',GSelDate)+''' BETWEEN CONVERT(DATETIME,NGAYSANH,103) AND DATEADD(M,12,CONVERT(DATETIME,NGAYSANH,103)) ';
   end;
   //Nghhi THAI MANG THAI
   if  (Column.Field.FieldName='VE15H30MANGTHAI')  then
   begin
     HRMNHhanVien.SubSQL:=HRMNHhanVien.SubSQL+' AND '''+Formatdatetime('yyyy/MM/dd',GSelDate)+''' BETWEEN ISNULL(BATDAUTU,DATEADD(YY,-100, '''+Formatdatetime('yyyy/MM/dd',GSelDate)+''')) AND ISNULL(IT_THAITHANGTHU7.DENNGAY,DATEADD(YY,-100, '''+Formatdatetime('yyyy/MM/dd',GSelDate)+'''))';
   end;
   //
   if ((HRMNHhanVien.SubSQL<>'') and (IsShowDalogHRMNHhanVien=true)) then
      HRMNHhanVien.ShowModal();
 end;
end;

//
procedure THRMDepartmentAttend.ExportExternalExcel();
  //
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
  //
var i,j,k,excelcount:integer;
    eclApp,WorkBook:olevariant;
    SB,Str:string;
    tmpDate:TDateTime;
    iYear,iMonth:word;
begin

   if OpenDialog.Execute()=true then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(OpenDialog.FileName);
        ExcelSheetI:=1;
        excelcount:=eclApp.WorkSheets.count;
        //
        ExcelSheetDlg:=TExcelSheetDlg.Create(self);
        ExcelSheetDlg.ExcelSheetI:=@ExcelSheetI;
        for i:=1 to excelcount do
        begin
          ExcelSheetDlg.ListBox1.Items.Add(inttostr(i)+'.'+eclApp.WorkSheets[i].name);
        end;
        ExcelSheetDlg.ShowModal();
        ExcelSheetDlg.Free;
        //
        //
        eclApp.WorkSheets[ExcelSheetI].Activate;
        eclApp.Cells(2,1):=CBX2.Text+'月'+Str+'人事刷卡出勤報表';
        HRMQry.First;
        //
        eclApp.Cells(3,1):='廠別';
        eclApp.Cells(3,2):='項目';
        iYear:=strtoint(CBX1.text);
        iMonth:=strtoint(CBX2.text);
        for i:=2 to HRMQry.FieldCount-1 do
        begin
          //日期從Query.Fields[3]開始, Excel從
          eclApp.Cells(3,i+1):=HRMQry.Fields[i].FieldName;
          //判斷是否星期日  斜體
          TmpDate:=EncodeDate(iYear,iMonth,strtoint(HRMQry.Fields[i].FieldName));
          if DayofWeek(tmpDate)=1 then
          begin
            eclApp.Columns[i+1].Font.Italic:=true;
            eclApp.Cells[3,i+1].Interior.Color := clGray;  //
          end else
          begin
            eclApp.Columns[i+1].Font.Italic:=false;
            eclApp.Cells[3,i+1].Interior.Color := clyellow;  //
          end;
        end;

        //刪除多餘Column
        for j:=i to 36 do
          eclApp.ActiveSheet.Columns[i+1].Delete;
        //刪除區塊
        if CKBox1.Checked=false then
        begin
          SB:=eclApp.Cells[14,2];
          while SB<>'' do
          begin
            eclApp.ActiveSheet.Rows[7].Delete;
            SB:=eclApp.Cells[7,2];
          end;
          for j:=1 to (HRMQry.RecordCount div 3)-1 do
          begin
            eclApp.Range[GetExcelColumnID(1)+'4:'+GetExcelColumnID(i)+'6'].Copy;
            eclApp.ActiveSheet.Rows[7+((j-1)*3)].Select;
            eclApp.ActiveSheet.Paste;
          end;
        end;
        //
        k:=0;
        for j:=0 to HRMQry.RecordCount-1 do
        begin
          eclApp.Cells(4+k,1):=HRMQry.FieldByName('X_MA_').AsString;
          if  HRMQry.FieldByName('SB').AsString='All' then Str:='刷卡總數';
          if  HRMQry.FieldByName('SB').AsString='Dir' then Str:='刷卡直工';
          if  HRMQry.FieldByName('SB').AsString='InDir' then Str:='刷卡間工';

          eclApp.Cells(4+k,2):=Str;
          for i:=2 to HRMQry.FieldCount-1 do
          begin
            eclApp.Cells(4+k,i+1):=HRMQry.Fields[i].Value;
            if HRMQry.Fields[i].Value<0 then
               eclApp.Cells[4+k,i+1].Font.Color := clRed
            else
               eclApp.Cells[4+k,i+1].Font.Color := clBlack;
          end;
          if  HRMQry.FieldByName('X_MA_').Value='ZTotal' then
                eclApp.Cells(4+k,1):='全廠合計';
          if  HRMQry.FieldByName('X_MA_').Value='VP' then
                eclApp.Cells(4+k,1):='總公司';
          if  HRMQry.FieldByName('X_MA_').Value='R3' then
                eclApp.Cells(4+k,1):='R3廠';
          if  HRMQry.FieldByName('X_MA_').Value='R2' then
                eclApp.Cells(4+k,1):='R2廠';
          if  HRMQry.FieldByName('X_MA_').Value='R1' then
                eclApp.Cells(4+k,1):='R1廠';
          if  HRMQry.FieldByName('X_MA_').Value='GC' then
                eclApp.Cells(4+k,1):='GC廠';
          if  HRMQry.FieldByName('X_MA_').Value='BR2' then
                eclApp.Cells(4+k,1):='BR2廠';
          if  HRMQry.FieldByName('X_MA_').Value='BR1' then
                eclApp.Cells(4+k,1):='BR1廠';
          if  HRMQry.FieldByName('X_MA_').Value='BP' then
                eclApp.Cells(4+k,1):='BP廠';
          if  HRMQry.FieldByName('X_MA_').Value='B7' then
                eclApp.Cells(4+k,1):='B7廠';
          if  HRMQry.FieldByName('X_MA_').Value='B6' then
                eclApp.Cells(4+k,1):='B6廠';
          if  HRMQry.FieldByName('X_MA_').Value='B5' then
                eclApp.Cells(4+k,1):='B5廠';
          if  HRMQry.FieldByName('X_MA_').Value='B' then
                eclApp.Cells(4+k,1):='B廠';
          if  HRMQry.FieldByName('X_MA_').Value='A2' then
                eclApp.Cells(4+k,1):='A2廠';
          if  HRMQry.FieldByName('X_MA_').Value='A1A2' then
                eclApp.Cells(4+k,1):='A1A2廠';
          if  HRMQry.FieldByName('X_MA_').Value='A1' then
                eclApp.Cells(4+k,1):='A1廠';
          //
          k:=k+1;
          HRMQry.Next;
        end;
        eclApp.Cells(4,1):='全廠合計';
        //add out line
        eclApp.range[eclApp.cells[3,1],eclApp.cells[3+k,i]].Borders.Weight := 2;
        //
        showmessage('Succeed.');
        eclApp.Visible:=True;

      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;

end;
//
procedure THRMDepartmentAttend.ExportFormatExcel();
  //
  function GetExcelColumnID(i:integer):string;
  var str:string;
  begin
    case i of
      1:str:='A';  2:str:='B';  3:str:='C';
      4:str:='D';  5:str:='E';  6:str:='F';
      7:str:='G';  8:str:='H';  9:str:='I';
      10:str:='J';  11:str:='K';  12:str:='L';
      13:str:='M';  14:str:='N';  15:str:='O';
      16:str:='P';  17:str:='Q';  18:str:='R';
      19:str:='S';  20:str:='T';  21:str:='U';
      22:str:='V';  23:str:='W';  24:str:='X';
      25:str:='Y';  26:str:='Z';  27:str:='AA';
      28:str:='AB';  29:str:='AC';  30:str:='AD';
      31:str:='AE';  32:str:='AF';  33:str:='AG';
      34:str:='AH';  35:str:='AI';  36:str:='AJ';
    end;
    result:=str;
  end;
  //
var i,j,k,excelcount:integer;
    eclApp,WorkBook:olevariant;
    SB,Str:string;
    tmpDate:TDateTime;
    iYear,iMonth:word;
begin

   if(not DirectoryExists(AppDir+'Additional\'))  then ForceDirectories(AppDir+'Additional\');
   CopyFile(Pchar('\\'+main.ServerIP+'\liy_erp\Additional\Report_SN94.xls'),Pchar(AppDir+'Additional\Report_SN94.xls'),false);
   if FileExists(AppDir+'Additional\Report_SN94.xls') then
   begin
      try
        eclApp:=CreateOleObject('Excel.Application');
        WorkBook:=CreateOleObject('Excel.Sheet');
      except
        Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
        Exit;
      end;
      //
      try
        eclApp.WorkBooks.Open(AppDir+'Additional\Report_SN94.xls');
        ExcelSheetI:=1;
        //
        eclApp.WorkSheets[ExcelSheetI].Activate;
        eclApp.Cells(2,1):=CBX2.Text+'月'+Str+'人事刷卡出勤報表';
        HRMQry.First;
        //
        eclApp.Cells(3,1):='廠別';
        eclApp.Cells(3,2):='項目';
        iYear:=strtoint(CBX1.text);
        iMonth:=strtoint(CBX2.text);
        for i:=2 to HRMQry.FieldCount-1 do
        begin
          //日期從Query.Fields[3]開始, Excel從
          eclApp.Cells(3,i+1):=HRMQry.Fields[i].FieldName;
          //判斷是否星期日  斜體
          TmpDate:=EncodeDate(iYear,iMonth,strtoint(HRMQry.Fields[i].FieldName));
          if DayofWeek(tmpDate)=1 then
          begin
            eclApp.Columns[i+1].Font.Italic:=true;
            eclApp.Cells[3,i+1].Interior.Color := clGray;  //
          end else
          begin
            eclApp.Columns[i+1].Font.Italic:=false;
            eclApp.Cells[3,i+1].Interior.Color := clyellow;  //
          end;
        end;
        //外框線
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i-1)+'6'].Borders[1].Weight := 1;
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i-1)+'6'].Borders[2].Weight := 1;
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i-1)+'6'].Borders[3].Weight := 1;
        //eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i-1)+'6'].Borders[4].Weight := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'6'].Borders[1].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'6'].Borders[2].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'6'].Borders[3].LineStyle := 1;
        eclApp.Range[GetExcelColumnID(2)+'3:'+GetExcelColumnID(i)+'6'].Borders[4].LineStyle := 1;
        
        //刪除多餘Column
        for j:=i to 36 do
          eclApp.ActiveSheet.Columns[i+1].Delete;
        //刪除歷史行數
        if CKBox1.Checked=false then
        begin
          //刪除區塊
          SB:=eclApp.Cells[14,2];
          while SB<>'' do
          begin
            eclApp.ActiveSheet.Rows[7].Delete;
            SB:=eclApp.Cells[7,2];
          end;
          for j:=1 to (HRMQry.RecordCount div 3)-1 do
          begin
            eclApp.Range[GetExcelColumnID(1)+'4:'+GetExcelColumnID(i)+'6'].Copy;
            eclApp.ActiveSheet.Rows[7+((j-1)*3)].Select;
            eclApp.ActiveSheet.Paste;
          end;
        end;
        //
        k:=0;
        for j:=0 to HRMQry.RecordCount-1 do
        begin
          eclApp.Cells(4+k,1):=HRMQry.FieldByName('X_MA_').AsString;
          if  HRMQry.FieldByName('SB').AsString='All' then Str:='刷卡總數';
          if  HRMQry.FieldByName('SB').AsString='Dir' then Str:='刷卡直工';
          if  HRMQry.FieldByName('SB').AsString='InDir' then Str:='刷卡間工';

          eclApp.Cells(4+k,2):=Str;
          for i:=2 to HRMQry.FieldCount-1 do
          begin
            eclApp.Cells(4+k,i+1):=HRMQry.Fields[i].Value;
            if HRMQry.Fields[i].Value<0 then
               eclApp.Cells[4+k,i+1].Font.Color := clRed
            else
               eclApp.Cells[4+k,i+1].Font.Color := clBlack;
          end;
          k:=k+1;
          HRMQry.Next;
        end;
        eclApp.Cells(4,1):='總計';
        //
        showmessage('Succeed.');
        eclApp.Visible:=True;

      except
       on   F:Exception   do
       showmessage(F.Message);
      end;
   end;
end;
//
procedure THRMDepartmentAttend.ExportDefaultExcel();
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
//明細
procedure THRMDepartmentAttend.Excel1Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
    if  HRMDetQry.active  then
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
          for   i:=0   to   HRMDetQry.fieldcount-1   do
          begin
            eclApp.Cells(1,i+1):=HRMQry.fields[i].FieldName;
          end;

          HRMDetQry.First;
          j:=2;
          while   not   HRMDetQry.Eof   do
          begin
            for   i:=0   to  HRMQry.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=HRMQry.Fields[i].Value;
            end;
            HRMDetQry.Next;
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

procedure THRMDepartmentAttend.Label1Click(Sender: TObject);
begin
  IsShowDalogHRMNHhanVien:=true;
end;

procedure THRMDepartmentAttend.Button2Click(Sender: TObject);
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

end.
