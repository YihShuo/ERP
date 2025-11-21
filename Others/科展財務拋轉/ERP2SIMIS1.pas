unit ERP2SIMIS1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, iniFiles, StdCtrls, GridsEh, DBGridEh, ComCtrls, Spin,
  dateutils, ExtCtrls;

type
  TERP2SIMIS = class(TForm)
    ADOConnSIMIS: TADOConnection;
    ADOQuery: TADOQuery;
    PC1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    RB_CLZL2a0pdtr: TRadioButton;
    RB_ZSZL2a0cbtr: TRadioButton;
    RB_BDeprtment2a0detr: TRadioButton;
    RB_LBZLS2a0cutr: TRadioButton;
    RB_SCGXDY2ct01tr: TRadioButton;
    RB_XXZLS2c15tr: TRadioButton;
    RB_KCRK2c14tr_N: TRadioButton;
    RB_KCRK2c14tr_M: TRadioButton;
    RB_KCRK2c14tr_D: TRadioButton;
    RB_KCLL2c14tr_N: TRadioButton;
    RB_KCLL2c14tr_M: TRadioButton;
    RB_KCLL2c14tr_D: TRadioButton;
    RB_YWCP2c14tr_N: TRadioButton;
    RB_YWCP2c14tr_M: TRadioButton;
    RB_YWCP2c14tr_D: TRadioButton;
    RB_INVOICE2c14tr_N: TRadioButton;
    RB_INVOICE2c14tr_M: TRadioButton;
    RB_INVOICE2c14tr_D: TRadioButton;
    RB_SMDD2pr15tr_N: TRadioButton;
    RB_SMDD2pr15tr_M: TRadioButton;
    RB_SMDD2pr15tr_D: TRadioButton;
    RB_SCBB2pr13tr_N: TRadioButton;
    RB_SCBB2pr13tr_M: TRadioButton;
    RB_SCBB2pr13tr_D: TRadioButton;
    Button1: TButton;
    Button3: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    DelCK: TCheckBox;
    DBGridEh1: TDBGridEh;
    ADOQuery1: TADOQuery;
    DBGridEh2: TDBGridEh;
    ADOQuery2: TADOQuery;
    CheckDataComBo: TComboBox;
    QryBtn: TButton;
    DS1: TDataSource;
    DS2: TDataSource;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    CBX1: TComboBox;
    Label3: TLabel;
    CBX2: TComboBox;
    Button4: TButton;
    TmpQry: TADOQuery;
    CKSQLPrint: TCheckBox;
    Label1: TLabel;
    Label4: TLabel;
    RB_JGZL2c14tr_N: TRadioButton;
    RB_JGZL2c14tr_M: TRadioButton;
    RB_JGZL2c14tr_D: TRadioButton;
    GroupBox2: TGroupBox;
    SpinEdit1: TSpinEdit;
    RB1: TRadioButton;
    DTP3: TDateTimePicker;
    DTP4: TDateTimePicker;
    RB2: TRadioButton;
    ChkDet: TCheckBox;
    ADOQuery3: TADOQuery;
    DS3: TDataSource;
    GroupBox3: TGroupBox;
    RB3: TRadioButton;
    RB4: TRadioButton;
    TabSheet4: TTabSheet;
    DBGridEh3: TDBGridEh;
    RB_DCINVOICE2c14tr_N: TRadioButton;
    RB_DCINVOICE2c14tr_M: TRadioButton;
    RB_DCINVOICE2c14tr_D: TRadioButton;
    Button5: TButton;
    TmpQry1: TADOQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure QryBtnClick(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    IstodayRepeatUpdate:String;
    NumDay:string;
    DBIP,DBName,User,Pass:string;
    //
    ERPIP,ERPDBName,ERPUser,ERPPass:string;
    //
    Default_GSBH:string;
    Default_GSBH_Name:string;
    Default_Brand:string;
    //
    DevelopCenter_CKBH:String;
    Total_CKBH:String;
    //
    Local_DDGB:String;
    Local_Currency:String;
    { Private declarations }
    procedure Readini();
    procedure InitSQL();
    procedure DeInitSQL();
    //
    procedure CLZL2a0pdtr();  //原料+成品
    procedure ZSZL2a0cbtr();      //廠商+客戶+員工
    procedure BDeprtment2a0detr(); //部門+廠別
    procedure LBZLS2a0cutr();   //幣別
    procedure SCGXDY2ct01tr();  //製程
    procedure XXZLS2c15tr();
    procedure KCRK2c14tr_N();//進料單  新增
    procedure KCRK2c14tr_M();//進料單  修改
    procedure KCRK2c14tr_D();//進料單  刪除
    procedure KCLL2c14tr_N();//領料單  新增
    procedure KCLL2c14tr_M();//領料單  修改
    procedure KCLL2c14tr_D();//領料單  刪除
    procedure YWCP2c14tr_N();//成品入庫 新增
    procedure YWCP2c14tr_M();//成品入庫 修改
    procedure YWCP2c14tr_D();//成品入庫 刪除
    procedure INVOICE2c14tr_N(); //銷貨 新增
    procedure INVOICE2c14tr_M(); //銷貨 修改
    procedure INVOICE2c14tr_D(); //銷貨 刪除
    procedure SMDD2pr15tr_N();   //製令工單 新增
    procedure SMDD2pr15tr_M();   //製令工單 修改
    procedure SMDD2pr15tr_D();   //製令工單 刪除
    procedure SCBB2pr13tr_N();   //生產日報 新增
    procedure SCBB2pr13tr_M();   //生產日報 修改
    procedure SCBB2pr13tr_D();   //生產日報 刪除
    procedure JGZL2c14tr_N();    //加工單 新增
    procedure JGZL2c14tr_M();    //加工單 更新
    procedure JGZL2c14tr_D();    //加工單 刪除
    procedure DCINVOICE2c14tr_N(); //開發銷貨 新增
    procedure DCINVOICE2c14tr_M(); //開發銷貨 修改
    procedure DCINVOICE2c14tr_D(); //開發銷貨 刪除
    //檢查比對資料筆數是否符合
    procedure CLZL2a0pdtr1_Checck(); //原料
    procedure CLZL2a0pdtr2_Checck(); //成品
    procedure ZSZL2a0cbtr1_Checck(); //供應商
    procedure ZSZL2a0cbtr2_Checck(); //客戶
    procedure ZSZL2a0cbtr3_Checck(); //員工
    procedure BDeprtment2a0detr_Checck(); //部門+廠別數檢查
    procedure LBZLS2a0cutr_Checck();  //幣別筆數檢查

    procedure SCGXDY2ct01tr_Checck(); //製程筆數檢查
    procedure XXZLS2c15tr_Checck(); //BOM 產品結構 筆數檢查
    procedure KCRK2c14tr_Checck(); //入庫筆數檢查
    procedure KCLL2c14tr_Checck(); //領料單筆數檢查
    procedure YWCP2c14tr_Checck(); //繳庫筆數檢查
    procedure INVOICE2c14tr_Check(); //銷貨筆數檢查

    procedure SMDD2pr15tr_Check(); //製令工單筆數檢查
    procedure SCBB2pr13tr_Check(); //日報表筆數檢查

    procedure JGZL2c14tr_Checck(); //加工單筆數檢查

    procedure DailyAutoRun();  //每日全部拋轉表格
    //
    procedure Monthly_KCRK2c14tr_M(sCBX1:string;sCBX2:String); //每日更新拋轉上個月入庫
    procedure Check_Monthly2SIMIS(); //檢查是否月結和拋轉
  public

    { Public declarations }
  end;

var
  ERP2SIMIS: TERP2SIMIS;

implementation
  uses FunUnit;
{$R *.dfm}


procedure TERP2SIMIS.Readini();
var ini:TiniFile;
    i:integer;
begin
   try
    ini:=TiniFile.Create(ExtractFilePath(Application.ExeName)+'\Setting.ini');
    DBIP:=ini.ReadString('DB','IP','127.0.0.1\MSSQL2012');
    DBName:=ini.ReadString('DB','Database','xu1');
    User:=ini.ReadString('DB','User','sa');
    Pass:=ini.ReadString('DB','Pass','jack');
    //
    ERPIP:=ini.ReadString('ERP','IP','127.0.0.1');
    ERPDBName:=ini.ReadString('ERP','Database','LIY_ERP');
    ERPUser:=ini.ReadString('ERP','User','tyx');
    ERPPass:=ini.ReadString('ERP','Pass','tyx');
    //
    Default_Brand:=ini.ReadString('ERP','Default_Brand','''036''');
    //
    Default_GSBH:=ini.ReadString('ERP','Default_GSBH','VTX');
    Default_GSBH_Name:=ini.ReadString('ERP','Default_GSBH_Name','億春總公司');
    //
    DevelopCenter_CKBH:=ini.ReadString('ERP','DevelopCenter_CKBH','''CDC'',''CDT'',''BYC'',''BYT''');
    Total_CKBH:=ini.ReadString('ERP','Total_CKBH','''VTXX'',''VTXY'',''VTXZ''');
    //
    Local_DDGB:=ini.ReadString('ERP','DDGB','VIE');
    Local_Currency:=ini.ReadString('ERP','Currency','VND');
    //
    ADOConnSIMIS.ConnectionString:='Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;Provider=SQLOLEDB.1;Password='+Pass+';Persist Security Info=True;User ID='+User+';Initial Catalog='+DBName+';Data Source='+DBIP;
    //showmessage(ADOConnSIMIS.ConnectionString);
    //funcObj.WriteErrorLog(ADOConnSIMIS.ConnectionString);
   finally
     ini.Free;
   end;
end;
//
procedure TERP2SIMIS.InitSQL();
begin
  with  ADOQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('USE xu1');
    SQL.Add('Exec sp_addlinkedserver');
    SQL.Add('   @server=''tyxuanDB'', ');
    SQL.Add('   @srvproduct='''', ');
    SQL.Add('   @provider=''SQLOLEDB'', ');
    SQL.Add('   @datasrc='''+ERPIP+''', ');
    SQL.Add('   @catalog='''+ERPDBName+''' ');
    SQL.Add('Exec sp_addlinkedsrvlogin');
    SQL.Add('@useself=''false'',');
    SQL.Add('@rmtsrvname=''tyxuanDB'', ');
    SQL.Add('@rmtuser='''+ERPUser+''' , ');
    SQL.Add('@rmtpassword='''+ERPPass+'''');
    funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
end;

procedure TERP2SIMIS.DeInitSQL();
begin
  with  ADOQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('USE xu1');
    SQL.Add('Exec sp_droplinkedsrvlogin ''tyxuanDB'',Null ');
    SQL.Add('Exec sp_dropserver ''tyxuanDB'',''droplogins'' ');
    funcObj.WriteErrorLog(sql.Text);
    ExecSQL();
  end;
end;
//料品拋轉 + 成品
procedure TERP2SIMIS.CLZL2a0pdtr();
var iRes:integer;
begin
  try
    with  ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      if DelCK.Checked=true then
      begin
        //科展2020/5/6說不需要刪除
        SQL.Add('Delete from a0pdtr ');
        SQL.Add('where   fpdno in (');  //fiono=''原料'' and  --fiono非index key加了會變慢
        SQL.Add('  select CLZL.cldh collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.CLZL as CLZL ');
        SQL.Add('where IsNull(CLZL.ywpm,'''')<>'''' ');
        if RB1.Checked=true then
        begin
          SQL.Add('  and Convert(varchar,CLZL.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
        end else if RB2.Checked=true then
        begin
          SQL.Add('  and Convert(varchar,CLZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
        end;
      end;
      SQL.Add('insert into a0pdtr (fdati, fdaus ,fpdno ,fpdna ,fpdun , fiono, fusno, f0bua)');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus');
      SQL.Add('	   ,CLZL.CLBH as fpdno');
      SQL.Add('	   ,CLZL.ywpm as fpdna');
      SQL.Add('	   ,IsNull(CLZL.dwbh,'''') as fpdun');
      SQL.Add('	   ,case when CLZL.CWBH in (''152'') then  convert(varchar(1),''3'') else convert(varchar(4),''5'') end  as fiono'); //3 原料  5 其他
      SQL.Add('    ,IsNull(CLZL.CWBH,'''') as  fusno ');
      SQL.Add('    ,IsNull(CLZL.cqdh,'''') as f0bua ');
      SQL.Add('from (');
      SQL.Add('select  CLZL.cldh as  CLBH, Max(CWBH) as CWBH, Max(USERDATE2) as USERDATE,CLZL.ywpm,CLZL.dwbh,CLZL.cqdh ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCZLS KCZLS on CLZL.cldh=KCZLS.CLBH');
      SQL.Add('where  IsNull(CLZL.ywpm,'''')<>''''');
      if RB1.Checked=true then
      begin
        SQL.Add('  and Convert(varchar,CLZL.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add('  and Convert(varchar,CLZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('Group by CLZL.cldh,CLZL.ywpm,CLZL.dwbh,CLZL.cqdh ');
      SQL.Add(') CLZL');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' CLZL2a0pdtr(原料)完成，更新筆數:'+inttostr(iRes));
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' CLZL2a0pdtr(原料)錯誤:'+E.Message);
    end;
  end;
  //2022/1/6物料財務科目
  try
    with  ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      //
      SQL.Add('insert into a0pdtr (fdati, fdaus ,fpdno ,fpdna ,fpdun , fiono, fusno, f0bua)');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus');
      SQL.Add('	   ,KCZLS.CLBH as fpdno');
      SQL.Add('	   ,KCZLS.ywpm as fpdna');
      SQL.Add('	   ,IsNull(KCZLS.dwbh,'''') as fpdun');
      SQL.Add('	   ,case when KCZLS.CWBH in (''152'') then  convert(varchar(4),''3'') else convert(varchar(4),''5'') end  as fiono'); //3 原料  5 其他
      SQL.Add('    ,IsNull(KCZLS.CWBH,'''') as  fusno ');
      SQL.Add('    ,IsNull(KCZLS.cqdh,'''') as f0bua ');
      SQL.Add('from (');
      SQL.Add('select CLBH, Max(CWBH) as CWBH, Max(USERDATE2) as USERDATE,CLZL.ywpm,CLZL.dwbh,CLZL.cqdh ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCZLS KCZLS ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCZLS.CLBH');
      SQL.Add('where  IsNull(CLZL.ywpm,'''')<>''''');
      if RB1.Checked=true then
      begin
        SQL.Add('  and Convert(varchar,KCZLS.USERDATE2,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add('  and Convert(varchar,KCZLS.USERDATE2,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('Group by KCZLS.CLBH,CLZL.ywpm,CLZL.dwbh,CLZL.cqdh ');
      SQL.Add(') KCZLS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' KCZLS(物料財務科目)完成，更新筆數:'+inttostr(iRes));
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' KCZLS(物料財務科目)錯誤:'+E.Message);
    end;
  end;
  //成品資料
  try
    with  ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      if DelCK.Checked=true then
      begin
      //
        SQL.Add('Delete from a0pdtr ');
        SQL.Add('where  fpdno in ('); //fiono=''成品'' and
        SQL.Add('  select XXZL.XieXing+XXZL.SheHao collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.XXZL XXZL ');
        SQL.Add('where XXZL.KHDH in ('+Default_Brand+') )');
        if RB1.Checked=true then
        begin
          SQL.Add('  and Convert(varchar,XXZL.USERDATE,111)>=Convert(varchar,GetDate()-1,111)  ');
        end else if RB2.Checked=true then
        begin
          SQL.Add('  and  (Convert(varchar,XXZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''') ');
        end;
      end;
      SQL.Add('insert into a0pdtr (fdati, fdaus ,fpdno ,fpdna ,fpdun , fiono, ffaqu, fpequ)');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus  ');
      SQL.Add('       ,XXZL.XieXing+XXZL.SheHao as fpdno');
      SQL.Add('	   ,IsNull(XXZL.ARTICLE,'''') as fpdna');
      SQL.Add('	   ,''PRS'' as fpdun');
      SQL.Add('	   ,convert(varchar(4),''2'') as fiono');  //2 成品
	    SQL.Add('    ,IsNull(XXZL.POH,0.0) as ffaqu  ');
	    SQL.Add('    ,IsNull(XXZL.POH,0.0) as fpequ  ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select XXZL.* from (');
      SQL.Add('Select XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE,SCXXCL.POH');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.XXZL XXZL');
      SQL.Add('left join (select SCXXCL.XieXing,SCXXCL.SheHao,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Sum(SCXXCL.BZRS+SCXXCL.BZJS)/Max(Convert(float,SCXXCL.BZCL)),4)) as POH,Max(SCXXCL.USERDATE) as USERDATE');
      SQL.Add('            from tyxuanDB.'+ERPDBName+'.dbo.SCXXCL SCXXCL where BZLB=''3'' group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=XXZL.XieXing and SCXXCL.SheHao=XXZL.SheHao');
      SQL.Add('where XXZL.KHDH in ('+Default_Brand+') ');
      if RB1.Checked=true then
      begin
        SQL.Add('  and Convert(varchar,XXZL.USERDATE,111)>=Convert(varchar,GetDate()-1,111)  ');
      end else if RB2.Checked=true then
      begin
        SQL.Add('  and Convert(varchar,XXZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(' ) XXZL ');
      SQL.Add(') XXZL');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' CLZL2a0pdtr(成品)完成,更新筆數:'+inttostr(iRes));
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' CLZL2a0pdtr(成品)錯誤:'+E.Message);
    end;
  end;
  //IE 成品雙數
  try
    with  ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('insert into a0pdtr (fdati, fdaus ,fpdno ,fpdna ,fpdun , fiono, ffaqu, fpequ)');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), DATEADD(n,1,GetDate()) , 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus  ');
      SQL.Add('    ,XXZL.XieXing+XXZL.SheHao as fpdno');
      SQL.Add('	   ,IsNull(XXZL.ARTICLE,'''') as fpdna');
      SQL.Add('	   ,''PRS'' as fpdun');
      SQL.Add('	   ,convert(varchar(4),''2'') as fiono');  //2  成品
	    SQL.Add('    ,IsNull(XXZL.POH,0.0) as ffaqu  ');
	    SQL.Add('    ,IsNull(XXZL.POH,0.0) as fpequ  ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select XXZL.* from (');
      //20211231 型體成品增加 ffaqu fpequ
      SQL.Add('Select XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE,SCXXCL.POH');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.XXZL XXZL');
      SQL.Add('left join (select SCXXCL.XieXing,SCXXCL.SheHao,max(SCXXCL.BZCL)as IEQty, Sum(SCXXCL.BZRS+SCXXCL.BZJS) as IEPeo,(Round(Sum(SCXXCL.BZRS+SCXXCL.BZJS)/Max(Convert(float,SCXXCL.BZCL)),4)) as POH,Max(SCXXCL.USERDATE) as USERDATE');
      SQL.Add('            from tyxuanDB.'+ERPDBName+'.dbo.SCXXCL SCXXCL where BZLB=''3'' group by XieXing,SheHao ) SCXXCL on SCXXCL.XieXing=XXZL.XieXing and SCXXCL.SheHao=XXZL.SheHao');
      SQL.Add('where XXZL.KHDH in ('+Default_Brand+') ');
      if RB1.Checked=true then
      begin
        SQL.Add('  and Convert(varchar,SCXXCL.USERDATE,111)>=Convert(varchar,GetDate()-1,111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add('  and (Convert(varchar,SCXXCL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' )');
      end;
      SQL.Add(') XXZL');
      //
      SQL.Add(') XXZL');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' CLZL2a0pdtr(IE成品)完成，更新筆數:'+inttostr(iRes));
    end;

  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' CLZL2a0pdtr(IE成品)錯誤:'+E.Message);
    end;
  end;
end;

//對象(供應商)+客戶+員工
procedure TERP2SIMIS.ZSZL2a0cbtr();
var iRes:integer;
begin

  try
    //廠商
    with  ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      if DelCK.Checked=true then
      begin
        SQL.Add('Delete from a0cbtr ');
        SQL.Add('where   fcbno in (');  //fcbty=''供應商'' and  --fcbty非index key加了會變慢
        SQL.Add('  select ZSZL.zsdh collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.ZSZL as ZSZL');
        SQL.Add('where  1=1 ');
        if RB1.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,ZSZL.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111)');
        end else if RB2.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,ZSZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
        end;
        SQL.Add(')');
      end;
      SQL.Add('insert into a0cbtr (fdati, fdaus ,fcbno ,fcbna ,fcbfn ,fboss ,fcoma ,ftel1 ,ffax1 ,fidno ,fcuno ,fadd1 ,fadd2 ,fadd3, fcbty, ftaxs, fcrty, fenda)');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus');
      SQL.Add('	   ,ZSZL.zsdh as fcbno');
      SQL.Add('	   ,IsNull(ZSZL.zsjc,'''') as fcbna');
      SQL.Add('	   ,IsNull(ZSZL.zsqm,'''') as fcbfn');
      SQL.Add('	   ,IsNull(ZSZL.fzr,'''') as fboss');
      SQL.Add('	   ,IsNull(ZSZL.llr,'''') as fcoma');
      SQL.Add('	   ,IsNull(ZSZL.dh,'''') as ftel1');
      SQL.Add('	   ,IsNull(ZSZL.cz,'''') as ffax1');
      SQL.Add('	   ,IsNull(ZSZL.tybh,'''') as fidno');
      SQL.Add('	   ,IsNull(ZSZL.bb,'''') as fcuno');
      SQL.Add('	   ,IsNull(ZSZL.fpdz,'''') as fadd1');
      SQL.Add('	   ,IsNull(ZSZL.fpdz,'''') as fadd2');
      SQL.Add('	   ,IsNull(ZSZL.yjdz,'''') as fadd3');
      SQL.Add('	   ,''2''  as fcbty');  // 2 供應商
      SQL.Add('	   ,6 as ftaxs');
      SQL.Add('	   ,''應付'' as fcrty');
      SQL.Add('	   ,31 as fenda');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.ZSZL as ZSZL');
      SQL.Add('where  1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,ZSZL.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111)');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,ZSZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;

      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' ZSZL2a0cbtr(供應商)完成，更新筆數:'+inttostr(iRes));
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' ZSZL2a0cbtr(供應商)錯誤:'+E.Message);
    end;
  end;
  try
    //客戶
    with  ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      if DelCK.Checked=true then
      begin
        SQL.Add('Delete from a0cbtr ');
        SQL.Add('where   fcbno in (');   //fcbty=''客戶'' and  --fcbty非index key加了會變慢
        SQL.Add('  select KFZL.kfdh collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.KFZL as KFZL');
        SQL.Add('where  1=1 ');
        if RB1.Checked=true then
        begin
          SQL.Add(' and  Convert(varchar,KFZL.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
        end else if RB2.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,KFZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
        end;
        SQL.Add(')');
      end;
      //
      SQL.Add('insert into a0cbtr (fdati, fdaus ,fcbno ,fcbna ,fcbfn ,fboss ,fcoma ,ftel1 ,ffax1 ,fidno ,fcuno ,fadd1 ,fadd2 ,fadd3, fcbty, ftaxs, fcrty, fenda)');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus');
      SQL.Add('	   ,KFZL.kfdh as fcbno');
      SQL.Add('	   ,IsNull(KFZL.kfjc,'''') as fcbna');
      SQL.Add('	   ,IsNull(KFZL.kfqm,'''') as fcbfn');
      SQL.Add('	   ,IsNull(KFZL.fzr,'''') as fboss');
      SQL.Add('	   ,IsNull(KFZL.llr1,'''') as fcoma');
      SQL.Add('	   ,IsNull(KFZL.dh,'''') as ftel1');
      SQL.Add('	   ,IsNull(KFZL.cz,'''') as ffax1');
      SQL.Add('	   ,IsNull(KFZL.tybh,'''') as fidno');
      SQL.Add('	   ,IsNull(KFZL.bb,'''') as fcuno');
      SQL.Add('	   ,IsNull(KFZL.fpdz,'''') as fadd1');
      SQL.Add('	   ,IsNull(KFZL.fpdz,'''') as fadd2');
      SQL.Add('	   ,IsNull(KFZL.yjdz,'''') as fadd3');
      SQL.Add('	   ,''1''  as fcbty'); //1  客戶
      SQL.Add('	   ,6 as ftaxs');
      SQL.Add('	   ,''應收'' as fcrty');
      SQL.Add('	   ,31 as fenda');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KFZL as KFZL');
      SQL.Add('where  1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KFZL.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KFZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' ZSZL2a0cbtr(客戶)完成，更新筆數:'+inttostr(iRes));
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' ZSZL2a0cbtr(客戶)錯誤:'+E.Message);
    end;
  end;
  try
    //員工
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('insert into a0cbtr (fdati, fdaus ,fcbno ,fcbna ,fcbfn ,fboss ,fcoma ,ftel1 ,ffax1 ,fidno ,fcuno ,fadd1 ,fadd2 ,fadd3, fcbty, ftaxs, fcrty, fenda)');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus');
      SQL.Add('	   ,Busers.USERID as fcbno');
      SQL.Add('	   ,Busers.USERID as fcbna');
      SQL.Add('	   ,Busers.USERNAME as fcbfn');
      SQL.Add('	   ,'''' as fboss');
      SQL.Add('	   ,'''' as fcoma');
      SQL.Add('	   ,'''' as ftel1');
      SQL.Add('	   ,'''' as ffax1');
      SQL.Add('	   ,'''' as fidno');
      SQL.Add('	   ,''''as fcuno');
      SQL.Add('	   ,'''' as fadd1');
      SQL.Add('	   ,'''' as fadd2');
      SQL.Add('	   ,'''' as fadd3');
      SQL.Add('	   ,''4''  as fcbty'); //4 員工
      SQL.Add('	   ,6 as ftaxs');
      SQL.Add('	   ,''應付'' as fcrty');
      SQL.Add('	   ,31 as fenda');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.BUsers as Busers');
      SQL.Add('where Busers.USERID collate  Chinese_Taiwan_Stroke_BIN not in (select fcbno from a0cbtr where  fcbty=''4'') ');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' ZSZL2a0cbtr(員工)完成，更新筆數:'+inttostr(iRes));
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' ZSZL2a0cbtr(員工)錯誤:'+E.Message);
    end;
  end;

end;
//部門基本資料+廠別
procedure TERP2SIMIS.BDeprtment2a0detr();
var iRes:integer;
begin
  //
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      if DelCK.Checked=true then
      begin
        SQL.Add('Delete from a0detr ');
        SQL.Add('where fdeno in ( ');
        SQL.Add('  select BDepartment.ID collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.BDepartment as BDepartment ');
        SQL.Add('where  1=1 ');
        if RB1.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,BDepartment.UserDate,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
        end else if RB2.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,BDepartment.UserDate,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
        end;
        SQL.Add(') ');
      end;
      SQL.Add('insert into a0detr (fdati, fdaus, fdeno, fdena) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus');
      SQL.Add('	   ,BDepartment.ID as fdeno');
      SQL.Add('	   ,BDepartment.DepName as fdena');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.BDepartment as BDepartment   ');
      SQL.Add('where  1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,BDepartment.UserDate,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,BDepartment.UserDate,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      //
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' BDeprtment2a0detr(部門)完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' BDeprtment2a0detr(部門)錯誤:'+E.Message);
    end;
  end;
  //
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      if DelCK.Checked=true then
      begin
        SQL.Add('Delete from a0detr ');
        SQL.Add('where fdeno in ( ');
        SQL.Add('  select bgszl.gsdh collate  Chinese_Taiwan_Stroke_BIN from  tyxuanDB.'+ERPDBName+'.dbo.bgszl ');
        if RB1.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,bgszl.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
        end else if RB2.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,bgszl.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
        end;
        SQL.Add(') ');
      end;
      SQL.Add('insert into a0detr (fdati, fdaus, fdeno, fdena) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus');
      SQL.Add('	   ,bgszl.gsdh as fdeno');
      SQL.Add('	   ,bgszl.gszwqm as fdena');
      SQL.Add('from  tyxuanDB.'+ERPDBName+'.dbo.bgszl');
      SQL.Add('where  1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,bgszl.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,bgszl.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' BDeprtment2a0detr(廠別)完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' BDeprtment2a0detr(廠別)錯誤:'+E.Message);
    end;
  end;
  //
end;
//幣別基本資料
procedure TERP2SIMIS.LBZLS2a0cutr();
var iRes:integer;
begin
  //
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      if DelCK.Checked=true then
      begin
        SQL.Add('Delete from a0cutr ');
        SQL.Add('where fcuno in ( ');
        SQL.Add('  select LBZLS.lbdh collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.LBZLS LBZLS ');
        SQL.Add('where 1=1 ');
        if RB1.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,LBZLS.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
        end else if RB2.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,LBZLS.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
        end;
        SQL.Add(') ');
      end;
      SQL.Add('insert into a0cutr (fdati, fdaus, fcuno, fcuna) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati ');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,LBZLS.lbdh as fcuno ');
      SQL.Add('	   ,IsNull(LBZLS.ywsm,'''') as fcuna ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.LBZLS LBZLS ');
      SQL.Add('where LBZLS.lb=''01'' ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,LBZLS.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,LBZLS.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' LBZLS2a0cutr完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' LBZLS2a0cutr錯誤:'+E.Message);
    end;
  end;
  //
end;
//製程基本資料
procedure TERP2SIMIS.SCGXDY2ct01tr();
var iRes:integer;
begin
  //
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      if DelCK.Checked=true then
      begin
      SQL.Add('truncate table ct01tr ');
      end;
      SQL.Add('insert into ct01tr (fdati, fdaus, fstno, fstna) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus');
      SQL.Add('    ,SCGXDY.GXLB as fstno');
      SQL.Add('	   ,IsNull(SCGXDY.CMEMO,'''') as fstna');
      SQL.Add('from (select GXLB,Max(CMEMO) as CMEMO from tyxuanDB.'+ERPDBName+'.dbo.SCGXDY Group by GXLB ) SCGXDY');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' SCGXDY2ct01tr完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' SCGXDY2ct01tr錯誤:'+E.Message);
    end;
  end;
  //
end;
//BOM 產品結構
procedure TERP2SIMIS.XXZLS2c15tr();
var iRes:integer;
begin
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      if DelCK.Checked=true then
      begin
        SQL.Add('Delete from c15tr ');
        SQL.Add('where exists ( ');
        SQL.Add('  select XXZLS.XieXing,XXZLS.SheHao  from tyxuanDB.'+ERPDBName+'.dbo.XXZLS XXZLS ');
        SQL.Add('  left join tyxuanDB.'+ERPDBName+'.dbo.XXZL on XXZL.XieXing=XXZLS.XieXing and XXZLS.SheHao=XXZLS.SheHao');
        SQL.Add('where XXZLS.XieXing+XXZLS.SheHao collate  Chinese_Taiwan_Stroke_BIN=c15tr.fpdno  and XXZLS.BWBH collate  Chinese_Taiwan_Stroke_BIN=c15tr.funiq and XXZL.KHDH in ('+Default_Brand+') ');
        if RB1.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,XXZL.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
        end else if RB2.Checked=true then
        begin
          SQL.Add(' and Convert(varchar,XXZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
        end;
        SQL.Add(' ) ');
      end;
      SQL.Add('insert into c15tr (fdati, fdaus, fpdno, fdate,funiq, fsequ,fpdna, fpdun, fpdn1, fpdu1, favus, fdeve) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus  ');
      SQL.Add('    ,XXZLS.XieXing+XXZLS.SheHao as fpdno');
      SQL.Add('	   ,Convert(varchar,XXZLS.USERDATE,111) as fdate');
      SQL.Add('	   ,XXZLS.BWBH as funiq');
      SQL.Add('	   ,XXZLS.fsequ');
      SQL.Add('	   ,IsNull(XXZLS.ARTICLE,'''') as fpdna');
      SQL.Add('	   ,''PRS'' as fpdun');
      SQL.Add('	   ,IsNull(XXZLS.CLBH,'''') as fpdn1');
      SQL.Add('	   ,IsNull(XXZLS.dwbh,'''') as fpdu1');
      SQL.Add('	   ,IsNull(XXZLS.CLSL,0.0) as favus');
      SQL.Add('	   ,IsNull(XXZLS.LOSS,0.0) as fdeve');
      SQL.Add('from ( ');
      SQL.Add('select XXZLS.*,ROW_NUMBER() over (PARTITION BY XieXing,SheHao ORDER BY CLBH desc) as fsequ from (');
      SQL.Add('Select XXZLS.XieXing,XXZLS.SheHao,XXZLS.USERDATE,CLZL.dwbh,XXZLS.CLSL,XXZLS.LOSS,XXZL.ARTICLE,XXZLS.BWBH,XXZLS.CLBH');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.XXZLS XXZLS');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL on CLZL.cldh=XXZLS.CLBH');
      SQL.Add('where XXZL.KHDH in ('+Default_Brand+') ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,XXZL.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,XXZL.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(') XXZLS) XXZLS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' XXZLS2c15tr完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' XXZLS2c15tr錯誤:'+E.Message);
    end;
  end;
end;
//進貨單 原材料入庫進貨  新增
procedure TERP2SIMIS.KCRK2c14tr_N();
var iRes:integer;
begin
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      //新增單據
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R  =Getdate()');
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbno, fcbna, fcuno, frava, fcbo1, fcba1, fpdno, fpdpr, fbaqu, fpdu2, fcumo, fsamo, flin1, fodmo, ftaxs, flcno, fbhno, f0sio, f0grd, f0seo, fcbo2) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''01'' as fiono');
      SQL.Add('	   ,Convert(varchar,KCRKS.RKUSERDATE,111) as fdate');
      SQL.Add('	   ,KCRKS.RKNO as flino');
      SQL.Add('	   ,KCRKS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(KCRKS.GSBH,'''') as fdeno');
      SQL.Add('	   ,IsNull(KCRKS.gszwqm,'''') as fdena');
      SQL.Add('	   ,IsNull(KCRKS.ZSBH,'''') as fcbno');
      SQL.Add('	   ,IsNull(KCRKS.zsjc,'''') as fcbna');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then ''USD'' else '''+Local_Currency+''' end  as fcuno');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then  IsNull(KCRKS.CWHL,0.0) else 1 end as frava');
      SQL.Add('	   ,IsNull(KCRKS.CGUSERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(KCRKS.CGUSERNAME,'''') as fcba1');
      SQL.Add('	   ,KCRKS.CLBH as fpdno');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USPrice else IsNull(KCRKS.VNPrice,0.0) end as fpdpr');
      SQL.Add('	   ,KCRKS.Qty as fbaqu');
      SQL.Add('	   ,IsNull(KCRKS.dwbh,'''') as fpdu2');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USACC else IsNull(KCRKS.VNACC,0.0)  end  as fcumo');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then IsNull(KCRKS.VNACC,0.0) else IsNull(KCRKS.VNACC,0.0)  end  as fsamo');
      SQL.Add('	   ,KCRKS.ZSNO as flin1');
      SQL.Add('	   ,IsNull(KCRKS.ExchACC,0) as fodmo	  ');
      SQL.Add('	   ,6 as ftaxs ');
      //發票或INVOICE
      SQL.Add('    ,IsNull(KCRKS.DOCNO_NK,'''') as flcno ');
      SQL.Add('    ,IsNull(Substring(IsNull(KCRKS.DOCNO_HD,''''),1,10),'''') as fbhno '); //0928 科展尚未完覆 長度10
      //2021.11.8
      SQL.Add('    ,Substring(IsNull(KCRKS.GSBH,''''),1,3) as f0sio '); //廠別
      SQL.Add('    ,IsNull(KCRKS.KFJC,'''') as f0grd '); //品牌
      SQL.Add('    ,IsNull(KCRKS.f0seo,'''') as f0seo '); //海關料號
      SQL.Add('    ,IsNull(KCRKS.fcbo2,'''') as fcbo2 '); //入庫庫別
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select  KCRKS.*,ROW_NUMBER() over (PARTITION BY RKNO ORDER BY CLBH desc) as fsequ from (');
      SQL.Add('select KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc ,KCRK.USERDATE as RKUSERDATE,');
      SQL.Add('       Case when KCRK.HGLB=''HD'' then KCRK.DOCNO else ''''  End as DOCNO_HD,Case when KCRK.HGLB in (''NK'',''KD'',''TC'') then KCRK.DOCNO else ''''  End as DOCNO_NK,  ');
      SQL.Add('       KCRKS.CLBH,KCRKS.CWHL,cgzl.USERID as CGUSERID,Busers.USERNAME as CGUSERNAME,CLZL.dwbh,Sum(KCRKS.Qty) as Qty,');
      SQL.Add('       Max(KCRKS.VNPrice) as VNPrice,Max(KCRKS.USPrice) as USPrice,Sum(KCRKS.VNACC) as VNACC,Sum(KCRKS.USACC) as USACC,Sum(KCRKS.ExchACC) as ExchACC,Max(KFZL.kfjc) as KFJC, ');
      SQL.Add('       CLHG.HGBH as f0seo,KCRK.HGLB as fcbo2');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCRKS KCRKS');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCRK KCRK on KCRK.RKNO=KCRKS.RKNO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=KCRKS.CGBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on KFZL.kfdh=DDZL.KHBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.bgszl bgszl on bgszl.gsdh=KCRK.GSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.zszl zszl on zszl.zsdh=KCRK.ZSBH   ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.cgzl cgzl on cgzl.CGNO=KCRK.ZSNO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=cgzl.USERID ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLHG CLHG on CLHG.CLBH=KCRKS.CLBH ');
      SQl.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''01'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =KCRK.RKNO  collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where CLZL.cldh is not null and KCRK.GSBH <> ''NVNH'' and KCRK.HGLB <> ''GC'' ');  //KCRK.CFMID<>''NO'' and KCRK.YN=''5''   可以原本已經Confirm 可能又被修改取消Confirm
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCRK.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCRK.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQl.Add(' and c14trmode.flino is null ');
      SQL.Add('Group by KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc,KCRK.USERDATE,KCRK.DOCNO,KCRK.HGLB,KCRKS.CLBH,CLZL.dwbh,KCRKS.CWHL,cgzl.USERID,Busers.USERNAME,CLHG.HGBH,KCRK.HGLB ) KCRKS');
      SQL.Add(') KCRKS ');
      //記錄檔
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''01'' as fiono');
      SQL.Add('	   ,Convert(varchar,KCRKS.USERDATE,111) as fdate');
      SQL.Add('	   ,KCRKS.RKNO as flino');
      SQL.Add('	   ,''N'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select KCRK.RKNO,KCRK.USERDATE');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCRK KCRK');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH ');
      SQl.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''01'' and  fdate>GetDate()-75  ) c14trmode on c14trmode.flino =KCRK.RKNO  collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where 1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCRK.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCRK.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is null  ');
      SQL.Add('Group by KCRK.RKNO,KCRK.USERDATE');
      SQL.Add(') KCRKS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' KCRK2c14tr_N完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' KCRK2c14tr_N錯誤:'+E.Message);
    end;
  end;
end;
//進貨單 原材料入庫進貨  修改
procedure TERP2SIMIS.KCRK2c14tr_M();
var iRes:integer;
begin
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      //新增單據
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R  =Getdate()');
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbno, fcbna, fcuno, frava, fcbo1, fcba1, fpdno, fpdpr, fbaqu, fpdu2, fcumo, fsamo, flin1, fodmo, ftaxs, flcno, fbhno, f0sio, f0grd, f0seo, fcbo2) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''01'' as fiono');
      SQL.Add('	   ,Convert(varchar,KCRKS.RKUSERDATE,111) as fdate');
      SQL.Add('	   ,KCRKS.RKNO as flino');
      SQL.Add('	   ,KCRKS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(KCRKS.GSBH,'''') as fdeno');
      SQL.Add('	   ,IsNull(KCRKS.gszwqm,'''') as fdena');
      SQL.Add('	   ,IsNull(KCRKS.ZSBH,'''') as fcbno');
      SQL.Add('	   ,IsNull(KCRKS.zsjc,'''') as fcbna');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then ''USD'' else '''+Local_Currency+''' end  as fcuno');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then  IsNull(KCRKS.CWHL,0.0) else 1 end as frava');
      SQL.Add('	   ,IsNull(KCRKS.CGUSERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(KCRKS.CGUSERNAME,'''') as fcba1');
      SQL.Add('	   ,KCRKS.CLBH as fpdno');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USPrice else IsNull(KCRKS.VNPrice,0.0) end as fpdpr');
      SQL.Add('	   ,KCRKS.Qty as fbaqu');
      SQL.Add('	   ,IsNull(KCRKS.dwbh,'''') as fpdu2');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USACC else IsNull(KCRKS.VNACC,0.0)  end  as fcumo');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then IsNull(KCRKS.VNACC,0.0) else IsNull(KCRKS.VNACC,0.0)  end  as fsamo');
      SQL.Add('	   ,KCRKS.ZSNO as flin1');
      SQL.Add('	   ,IsNull(KCRKS.ExchACC,0) as fodmo	  ');
      SQL.Add('	   ,6 as ftaxs ');
      //發票或INVOICE
      SQL.Add('    ,IsNull(KCRKS.DOCNO_NK,'''') as flcno ');
      SQL.Add('    ,IsNull(Substring(IsNull(KCRKS.DOCNO_HD,''''),1,10),'''') as fbhno '); //0928 科展尚未完覆 長度10
      //2021.11.8
      SQL.Add('    ,Substring(IsNull(KCRKS.GSBH,''''),1,3) as f0sio '); //廠別
      SQL.Add('    ,IsNull(KCRKS.KFJC,'''') as f0grd '); //品牌
      SQL.Add('    ,IsNull(KCRKS.f0seo,'''') as f0seo '); //海關料號
      SQL.Add('    ,IsNull(KCRKS.fcbo2,'''') as fcbo2 '); //入庫庫別
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select  KCRKS.*,ROW_NUMBER() over (PARTITION BY RKNO ORDER BY CLBH desc) as fsequ from (');
      SQL.Add('select KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc ,KCRK.USERDATE as RKUSERDATE,');
      SQL.Add('       Case when KCRK.HGLB=''HD'' then KCRK.DOCNO else ''''  End as DOCNO_HD,Case when KCRK.HGLB in (''NK'',''KD'',''TC'') then KCRK.DOCNO else ''''  End as DOCNO_NK,  ');
      SQL.Add('       KCRKS.CLBH,KCRKS.CWHL,cgzl.USERID as CGUSERID,Busers.USERNAME as CGUSERNAME,CLZL.dwbh,Sum(KCRKS.Qty) as Qty,');
      SQL.Add('       Max(KCRKS.VNPrice) as VNPrice,Max(KCRKS.USPrice) as USPrice,Sum(KCRKS.VNACC) as VNACC,Sum(KCRKS.USACC) as USACC,Sum(KCRKS.ExchACC) as ExchACC,Max(KFZL.kfjc) as KFJC, ');
      SQL.Add('       CLHG.HGBH as f0seo,KCRK.HGLB as fcbo2');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCRKS KCRKS');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCRK KCRK on KCRK.RKNO=KCRKS.RKNO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=KCRKS.CGBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on KFZL.kfdh=DDZL.KHBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.bgszl bgszl on bgszl.gsdh=KCRK.GSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.zszl zszl on zszl.zsdh=KCRK.ZSBH   ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.cgzl cgzl on cgzl.CGNO=KCRK.ZSNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=cgzl.USERID');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLHG CLHG on CLHG.CLBH=KCRKS.CLBH ');
      SQl.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''01'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =KCRK.RKNO  collate  Chinese_Taiwan_Stroke_BIN    ');
      SQL.Add('where CLZL.cldh is not null and KCRK.GSBH <> ''NVNH'' and KCRK.HGLB <> ''GC'' '); //KCRK.CFMID<>''NO'' and KCRK.YN=''5''  可以原本已經Confirm 可能又被修改取消Confirm
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCRK.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCRK.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is not null   '); //having  Convert(varchar,KCRK.YN_Date,111)'+IstodayRepeatUpdate+'max(fdate)
      SQL.Add('Group by KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc,KCRK.USERDATE,KCRK.DOCNO,KCRK.HGLB,KCRKS.CLBH,CLZL.dwbh,KCRKS.CWHL,cgzl.USERID,Busers.USERNAME,CLHG.HGBH,KCRK.HGLB ) KCRKS');
      SQL.Add(') KCRKS ');
      //記錄檔
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''01'' as fiono');
      SQL.Add('	   ,Convert(varchar,KCRKS.USERDATE,111) as fdate');
      SQL.Add('	   ,KCRKS.RKNO as flino');
      SQL.Add('	   ,''M'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select KCRK.RKNO,KCRK.USERDATE ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCRK KCRK');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH ');
      SQl.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''01'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =KCRK.RKNO  collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where 1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCRK.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCRK.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(' and c14trmode.flino is not null '); //having  Convert(varchar,KCRK.YN_Date,111)'+IstodayRepeatUpdate+'max(fdate)
      SQL.Add('Group by KCRK.RKNO,KCRK.USERDATE');
      SQL.Add(') KCRKS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' KCRK2c14tr_M完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' KCRK2c14tr_M錯誤:'+E.Message);
    end;
  end;
end;
//進貨單 原材料入庫進貨  刪除
procedure TERP2SIMIS.KCRK2c14tr_D();
var iRes:integer;
begin
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R  =Getdate()');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''01'' as fiono');
      SQL.Add('	   ,fdate');
      SQL.Add('	   ,flino');
      SQL.Add('	   ,''D'' as fmode');
      SQL.Add(' from (');
      SQL.Add('select flino,fdate from c14trmode where fiono=''01'' and fmode=''N'' and fdate>GetDate()-75 and flino not in (Select RKNO collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.KCRK where  USERDATE>GetDate()-75)'); //KCRK.CFMID<>''NO'' and KCRK.YN=''5'' and
      SQL.Add(') KCRKD');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' KCRK2c14tr_D完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' KCRK2c14tr_D錯誤:'+E.Message);
    end;
  end;
end;
//領料單   新增
procedure TERP2SIMIS.KCLL2c14tr_N();
var iRes:integer;
    LLNOSub:String;
begin
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',Date())+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-1))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-2))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-3))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-4))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-5))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-6))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-7))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-8))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-9))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-10))+'999%'' ';
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      //新增單據
      SQL.Add('Declare @fdati_L  smalldatetime');
      SQL.Add('set @fdati_L  =Getdate()');
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbo1, fcba1, fpdn1, fpda1, fpdno, fbaqu, flin5, frela, fbano) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_L, 112)+convert(varchar(8), @fdati_L, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      //SQL.Add('	   ,''54'' as fiono');
      SQL.Add('    ,Case when KCLLS.CWBH=''152'' and KCLLS.CKBH not in ('+DevelopCenter_CKBH+') then ''54'' else ''58'' end as fiono ');
      SQL.Add('	   ,Convert(varchar,KCLLS.LLUSERDATE,111) as fdate');
      SQL.Add('	   ,KCLLS.LLNO as flino');
      SQL.Add('	   ,KCLLS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(KCLLS.DepID,'''') as fdeno');
      SQL.Add('	   ,IsNull(KCLLS.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(KCLLS.USERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(KCLLS.USERNAME,'''') as fcba1');
      SQL.Add('	   ,IsNull(KCLLS.fpdn1,'''') as fpdn1');
      SQL.Add('	   ,IsNull(KCLLS.fpda1,'''') as fpda1');
      SQL.Add('	   ,KCLLS.CLBH as fpdno');
      SQL.Add('	   ,KCLLS.Qty as fbaqu');
      SQL.Add('	   ,IsNull(KCLLS.SCBH,'''') as flin5');
      SQL.Add('	   ,IsNull(KCLLS.SCBH,'''') as frela');
      SQL.Add('    ,case when KCLLS.CWBH=''152'' then '''' else ''580A'' end as fbano ');
      SQL.Add('from (');
      SQL.Add('select KCLLS.*,ROW_NUMBER() over (PARTITION BY LLNO ORDER BY CLBH,SCBH desc) as fsequ from (');
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate as LLUSERDATE,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,Sum(KCLLS.Qty) as Qty,KCLLS.SCBH,DDZL.XieXing+DDZL.SheHao as fpdn1,DDZL.ARTICLE as fpda1,KCZLS.CWBH ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCLLS KCLLS ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCLL KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCLLS.CLBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=KCLL.DepID');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=KCLLS.USERID ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCZLS KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH '); //20220106 修改只拋轉會科152 153
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono in (''54'',''58'') and  fdate>GetDate()-75) c14trmode on c14trmode.flino =KCLL.LLNO collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where KCZLS.CWBH in (''152'',''153'') and CLZL.cldh is not null '+LLNOSub); //KCLL.CFMID<>''NO'' and KCLL.YN=''5''    可以原本已經Confirm 可能又被修改取消Confirm
      SQL.Add('      and KCLL.CKBH not in ('+Total_CKBH+') '); //2022.2.18
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCLL.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCLL.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is null  ');
      SQL.Add('Group by KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,KCLLS.SCBH,DDZL.XieXing,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE,KCZLS.CWBH ) KCLLS');
      SQL.Add(') KCLLS');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_L, 112)+convert(varchar(8), @fdati_L, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      //SQL.Add('	   ,''54'' as fiono');
      SQL.Add('    ,Case when KCLLS.CWBH=''152'' and KCLLS.CKBH not in ('+DevelopCenter_CKBH+') then ''54'' else ''58'' end as fiono ');
      SQL.Add('	   ,Convert(varchar,KCLLS.CFMDate,111) as fdate');
      SQL.Add('	   ,KCLLS.LLNO as flino');
      SQL.Add('	   ,''N'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.CFMDate,Min(KCZLS.CWBH) as CWBH');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCLLS KCLLS ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCLL KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCLLS.CLBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCZLS KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH ');
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono in (''54'',''58'') and  fdate>GetDate()-75) c14trmode on c14trmode.flino =KCLL.LLNO collate  Chinese_Taiwan_Stroke_BIN     ');
      SQL.Add('where KCZLS.CWBH in (''152'',''153'') and CLZL.cldh is not null '+LLNOSub );
      SQL.Add('      and KCLL.CKBH not in ('+Total_CKBH+') '); //2022.2.18
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCLL.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCLL.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is null   ');
      SQL.Add('Group by KCLL.CKBH,KCLLS.LLNO,KCLL.CFMDate ');
      SQL.Add(') KCLLS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' KCLL2c14tr_N完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' KCLL2c14tr_N錯誤:'+E.Message);
    end;
  end;
end;
//領料單修改
procedure TERP2SIMIS.KCLL2c14tr_M();
var iRes:integer;
    LLNOSub:String;
begin
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',Date())+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-1))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-2))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-3))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-4))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-5))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-6))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-7))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-8))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-9))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-10))+'999%'' ';
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      //新增單據
      SQL.Add('Declare @fdati_L  smalldatetime');
      SQL.Add('set @fdati_L  =Getdate()');
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbo1, fcba1, fpdn1, fpda1, fpdno, fbaqu, flin5, frela, fbano ) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_L, 112)+convert(varchar(8), @fdati_L, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      //SQL.Add('	   ,''54'' as fiono');
      SQL.Add('    ,Case when KCLLS.CWBH=''152'' and KCLLS.CKBH not in ('+DevelopCenter_CKBH+') then ''54'' else ''58'' end as fiono ');
      SQL.Add('	   ,Convert(varchar,KCLLS.LLUSERDATE,111) as fdate');
      SQL.Add('	   ,KCLLS.LLNO as flino');
      SQL.Add('	   ,KCLLS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(KCLLS.DepID,'''') as fdeno');
      SQL.Add('	   ,IsNull(KCLLS.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(KCLLS.USERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(KCLLS.USERNAME,'''') as fcba1');
      SQL.Add('	   ,IsNull(KCLLS.fpdn1,'''') as fpdn1');
      SQL.Add('	   ,IsNull(KCLLS.fpda1,'''') as fpda1');
      SQL.Add('	   ,KCLLS.CLBH as fpdno');
      SQL.Add('	   ,KCLLS.Qty as fbaqu');
      SQL.Add('	   ,IsNull(KCLLS.SCBH,'''') as flin5');
      SQL.Add('	   ,IsNull(KCLLS.SCBH,'''') as frela');
      SQL.Add('    ,case when KCLLS.CWBH=''152'' then '''' else ''580z'' end as fbano ');
      SQL.Add('from (');
      SQL.Add('select KCLLS.*,ROW_NUMBER() over (PARTITION BY LLNO ORDER BY CLBH,SCBH desc) as fsequ from (');
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate as LLUSERDATE,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,Sum(KCLLS.Qty) as Qty,KCLLS.SCBH,DDZL.XieXing+DDZL.SheHao as fpdn1,DDZL.ARTICLE as fpda1,KCZLS.CWBH ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCLLS KCLLS ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCLL KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCLLS.CLBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=KCLL.DepID');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=KCLLS.USERID ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCZLS KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH '); //20220106 修改只拋轉會科152 153
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono in (''54'',''58'') and  fdate>GetDate()-75) c14trmode on c14trmode.flino =KCLL.LLNO collate  Chinese_Taiwan_Stroke_BIN     ');
      SQL.Add('where KCZLS.CWBH in (''152'',''153'') and CLZL.cldh is not null '+LLNOSub); //KCLL.CFMID<>''NO'' and KCLL.YN=''5''     可以原本已經Confirm又被修改取消Confirm
      SQL.Add('      and KCLL.CKBH not in ('+Total_CKBH+') '); //2022.2.18
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCLL.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCLL.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is not null   '); //having  Convert(varchar,KCLL.YN_Date,111)'+IstodayRepeatUpdate+'max(fdate)
      SQL.Add('Group by KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,KCLLS.SCBH,DDZL.XieXing,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE,KCZLS.CWBH ) KCLLS');
      SQL.Add(') KCLLS');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_L, 112)+convert(varchar(8), @fdati_L, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      //SQL.Add('	   ,''54'' as fiono');
      SQL.Add('    ,Case when KCLLS.CWBH=''152'' and KCLLS.CKBH not in ('+DevelopCenter_CKBH+') then ''54'' else ''58'' end as fiono ');
      SQL.Add('	   ,Convert(varchar,KCLLS.CFMDate,111) as fdate');
      SQL.Add('	   ,KCLLS.LLNO as flino');
      SQL.Add('	   ,''M'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.CFMDate,Min(KCZLS.CWBH) as CWBH');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCLLS KCLLS ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCLL KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCLLS.CLBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCZLS KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH '); //20220106 修改只拋轉會科152 153
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono in (''54'',''58'') and  fdate>GetDate()-75) c14trmode on c14trmode.flino =KCLL.LLNO collate  Chinese_Taiwan_Stroke_BIN     ');
      SQL.Add('where KCZLS.CWBH in (''152'',''153'') and CLZL.cldh is not null '+LLNOSub);
      SQL.Add('      and KCLL.CKBH not in ('+Total_CKBH+') '); //2022.2.18
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCLL.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,KCLL.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(' and c14trmode.flino is not null '); //having  Convert(varchar,KCLL.YN_Date,111)'+IstodayRepeatUpdate+'max(fdate) )
      SQL.Add('Group by KCLL.CKBH,KCLLS.LLNO,KCLL.CFMDate ');
      SQL.Add(') KCLLS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' KCLL2c14tr_M完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' KCLL2c14tr_M錯誤:'+E.Message);
    end;
  end;
end;
//領料單刪除
procedure TERP2SIMIS.KCLL2c14tr_D();
var iRes:integer;
    LLNOSub:String;
begin
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',Date())+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-1))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-2))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-3))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-4))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-5))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-6))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-7))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-8))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-9))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-10))+'999%'' ';

  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R =Getdate()');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,fiono');
      SQL.Add('	   ,fdate');
      SQL.Add('	   ,flino');
      SQL.Add('	   ,''D'' as fmode');
      SQL.Add('from (');
      SQL.Add('select fiono,flino,fdate from c14trmode where fiono in (''54'',''58'') and fmode=''N''  and fdate>GetDate()-75 and flino not in (Select LLNO collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.KCLL where   substring(KCLL.LLNO,7,3)<>''999'' and KCLL.CFMDate>GetDate()-75 ) ');//KCLL.CFMID<>''NO'' and KCLL.YN=''5'' and
      SQL.Add(') KCRKD');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' KCLL2c14tr_D完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' KCLL2c14tr_D錯誤:'+E.Message);
    end;
  end;
end;
//繳庫單
procedure TERP2SIMIS.YWCP2c14tr_N();
var iRes:integer;
begin
  //
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_I  smalldatetime');
      SQL.Add('set @fdati_I  =Getdate()');
      SQL.Add('');
       //新增 2021.5.15 fpdun
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbo1, fcba1, fpdno, fpdna, fpdun, fpdu2, fbaqu, flin5, frela, f0art, f0sio, f0grd) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_I, 112)+convert(varchar(8), @fdati_I, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,YWCP.INDATE,111) as fdate');
      SQL.Add('	   ,YWCP.CARTONBAR as flino');  //2021.11.8 箱號
      SQL.Add('	   ,YWCP.CARTONNO as fsequ');
      SQL.Add('	   ,IsNull(YWCP.DepNO,'''') as fdeno');
      SQL.Add('	   ,IsNull(YWCP.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(YWCP.USERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(YWCP.USERNAME,'''') as fcba1');
      SQL.Add('	   ,IsNull(YWCP.fpdno,'''') as fpdno');
      SQL.Add('	   ,IsNull(YWCP.fpdna,'''') as fpdna');
      //新增 2021.5.15 fpdun
      SQL.Add('	   ,''PRS'' as fpdun');
      SQL.Add('	   ,''PRS'' as fpdu2');
      SQL.Add('	   ,YWCP.Qty as fbaqu');
      SQL.Add('	   ,IsNull(YWCP.DDBH,'''') as flin5');
      SQL.Add('	   ,IsNull(YWCP.DDBH,'''') as frela');
      //2021.11.8
      SQL.Add('	   ,IsNull(YWCP.fpdna,'''') as f0art');
      SQL.Add('	   ,Substring(IsNull(YWCP.GSBH,''''),1,3)  as f0sio');
      SQL.Add('	   ,IsNull(YWCP.KFJC,'''') as f0grd');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select YWCP.*,ROW_NUMBER() over (PARTITION BY DDBH ORDER BY DDBH desc) as fsequ from (');
      SQL.Add('select YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,Max(YWCP.DepNO) as DepNO,Max(BDepartment.DepName) as DepName,Max(YWCP.INDATE) as INDATE,Max(YWCP.USERID) as USERID,');
      SQL.Add('       Max(Busers.USERNAME) as USERNAME,Sum(YWCP.Qty) as Qty,DDZL.Pairs,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna,max(KFZL.kfjc) as KFJC,Max(YWDD.GSBH) as GSBH ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.YWCP YWCP ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.YWDD on YWDD.DDBH=YWCP.DDBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=YWDD.YSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on KFZL.kfdh=DDZL.KHBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=YWCP.DepNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=YWCP.USERID ');
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''03'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =YWCP.CARTONBAR   collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where YWCP.Qty>0 and YWCP.INDATE is not null ');
      if RB1.Checked=true then
      begin
        SQL.Add('  and Convert(varchar,YWCP.INDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,YWCP.INDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(' and c14trmode.flino is null  ');
      //SQL.Add('     and convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between ''2020/3/20'' and ''2020/3/31'' ');
      SQL.Add('Group by YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ,DDZL.Pairs ) YWCP');
      SQL.Add(') YWCP');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_I, 112)+convert(varchar(8), @fdati_I, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,YWCP.INDATE,111) as fdate');
      SQL.Add('	   ,YWCP.CARTONBAR as flino');
      SQL.Add('	   ,''N'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select YWCP.CARTONBAR,Max(YWCP.INDATE) as INDATE');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.YWCP YWCP ');
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''03'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =YWCP.CARTONBAR   collate  Chinese_Taiwan_Stroke_BIN  ');
      SQL.Add('where YWCP.Qty>0 and YWCP.INDATE is not null ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,YWCP.INDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,YWCP.INDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is null   ');
      SQL.Add('Group by YWCP.CARTONBAR');
      SQL.Add(') YWCP');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' YWCP2c14tr_N完成，更新筆數:'+inttostr(iRes));
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' YWCP2c14tr_N錯誤:'+E.Message);
    end;
  end;
end;
//繳庫單 更新
procedure TERP2SIMIS.YWCP2c14tr_M();
var iRes:integer;
begin
  //
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_I  smalldatetime');
      SQL.Add('set @fdati_I  =Getdate()');
      SQL.Add('');
      //新增 2021.5.15 fpdun
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbo1, fcba1, fpdno, fpdna, fpdun, fpdu2, fbaqu, flin5, frela, f0art, f0sio, f0grd) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_I, 112)+convert(varchar(8), @fdati_I, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,YWCP.INDATE,111) as fdate');
      SQL.Add('	   ,YWCP.CARTONBAR as flino');  //2021.11.8 改箱號
      SQL.Add('	   ,YWCP.CARTONNO as fsequ');
      SQL.Add('	   ,IsNull(YWCP.DepNO,'''') as fdeno');
      SQL.Add('	   ,IsNull(YWCP.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(YWCP.USERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(YWCP.USERNAME,'''') as fcba1');
      SQL.Add('	   ,IsNull(YWCP.fpdno,'''') as fpdno');
      SQL.Add('	   ,IsNull(YWCP.fpdna,'''') as fpdna');
      //新增 2021.5.15 fpdun
      SQL.Add('	   ,''PRS'' as fpdun');
      SQL.Add('	   ,''PRS'' as fpdu2');
      SQL.Add('	   ,YWCP.Qty as fbaqu');
      SQL.Add('	   ,IsNull(YWCP.DDBH,'''') as flin5');
      SQL.Add('	   ,IsNull(YWCP.DDBH,'''') as frela');
      //2021.11.8
      SQL.Add('	   ,IsNull(YWCP.fpdna,'''') as f0art');
      SQL.Add('	   ,Substring(IsNull(YWCP.GSBH,''''),1,3) as f0sio');
      SQL.Add('	   ,IsNull(YWCP.KFJC,'''') as f0grd');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select YWCP.*,ROW_NUMBER() over (PARTITION BY DDBH ORDER BY DDBH desc) as fsequ from (');
      SQL.Add('select YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,Max(YWCP.DepNO) as DepNO,Max(BDepartment.DepName) as DepName,Max(YWCP.INDATE) as INDATE,Max(YWCP.USERID) as USERID,');
      SQL.Add('       Max(Busers.USERNAME) as USERNAME,Sum(YWCP.Qty) as Qty,DDZL.Pairs,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna,max(KFZL.kfjc) as KFJC,Max(YWDD.GSBH) as GSBH  ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.YWCP YWCP ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.YWDD on YWDD.DDBH=YWCP.DDBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=YWDD.YSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on KFZL.kfdh=DDZL.KHBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=YWCP.DepNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=YWCP.USERID ');
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''03'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =YWCP.CARTONBAR   collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where YWCP.Qty>0  and YWCP.INDATE is not null ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,YWCP.INDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,YWCP.INDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(' and c14trmode.flino is not null  '); //having  Convert(varchar,YWCP.INDATE,111)'+IstodayRepeatUpdate+'max(fdate)
      SQL.Add('Group by YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ,DDZL.Pairs ) YWCP');
      SQL.Add(') YWCP');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_I, 112)+convert(varchar(8), @fdati_I, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,YWCP.INDATE,111) as fdate');
      SQL.Add('	   ,YWCP.CARTONBAR as flino');
      SQL.Add('	   ,''M'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select YWCP.CARTONBAR,Max(YWCP.INDATE) as INDATE');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.YWCP YWCP ');
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''03'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =YWCP.CARTONBAR   collate  Chinese_Taiwan_Stroke_BIN    ');
      SQL.Add('where YWCP.Qty>0 and YWCP.INDATE is not null ');
      if RB1.Checked=true then
      begin
        SQL.Add('    and Convert(varchar,YWCP.INDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,YWCP.INDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is not null  ');  //having  Convert(varchar,YWCP.INDATE,111)'+IstodayRepeatUpdate+'max(fdate)
      SQL.Add('Group by YWCP.CARTONBAR');
      SQL.Add(') YWCP');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' YWCP2c14tr_M完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' YWCP2c14tr_M錯誤:'+E.Message);
    end;
  end;
end;
//繳庫單 刪除
procedure TERP2SIMIS.YWCP2c14tr_D();
var iRes:integer;
begin
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R =Getdate()');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,fdate');
      SQL.Add('	   ,flino');
      SQL.Add('	   ,''D'' as fmode');
      SQL.Add('from (');
      SQL.Add('select flino,fdate from c14trmode ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.YWCP YWCP on c14trmode.flino =YWCP.CARTONBAR   collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where fiono=''03'' and fmode=''N''  and fdate>GetDate()-75 and YWCP.CARTONBAR is null ');
      SQL.Add(') YWCP');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' YWCP2c14tr_D完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' YWCP2c14tr_D錯誤:'+E.Message);
    end;
  end;
end;
//銷貨單 新增
procedure TERP2SIMIS.INVOICE2c14tr_N();
var iRes:integer;
begin
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_Ex  smalldatetime');
      SQL.Add('set @fdati_Ex =Getdate()');
      SQL.Add('');
      //新增 2021.5.15 fpdna,fpdun
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fcuno, ftaxs, fdeno, fdena, fpdpr, fbaqu, fpdu2, fcumo, fcbpu, flin1, fpdno, fcbno, fcbna ,fpdna, fpdun, fcbo1, fcba1, f0grd, f0art, fcono, fcona, finpm) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''52'' as fiono');
      SQL.Add('	   ,Convert(varchar,INVOICE_D.INV_DATE,111) as fdate');
      SQL.Add('	   ,INVOICE_D.INV_NO as flino');
      SQL.Add('	   ,INVOICE_D.PACK_NO as fsequ');
      SQL.Add('	   ,''USD'' as fcuno');
      SQL.Add('	   ,6 as ftaxs');
      SQL.Add('	   ,'''+Default_GSBH+''' as fdeno');
      SQL.Add('	   ,'''+Default_GSBH_Name+''' as fdena');
      SQL.Add('	   ,IsNull(INVOICE_D.UNIT_PRICE,0.0) as fpdpr');
      SQL.Add('	   ,INVOICE_D.PAIRS as fbaqu');
      SQL.Add('	   ,''PRS'' as fpdu2');
      SQL.Add('	   ,INVOICE_D.AMOUNT as fcumo');
      SQL.Add('	   ,IsNull(INVOICE_D.PO,'''') as fcbpu');
      SQL.Add('	   ,IsNull(INVOICE_D.RYNO,'''') as flin1 ');
      SQL.Add('	   ,IsNull(INVOICE_D.fpdno,'''') as fpdno');
      //2021.11.8  銷貨對象旺隆
      SQL.Add('	   ,''FTD'' as fcbno');
      SQL.Add('	   ,''旺隆發展台灣分公司'' as fcbna ');
       //新增 2021.5.15 fpdna,fpdun
      SQL.Add('	   ,IsNull(INVOICE_D.fpdna,'''') as fpdna ');
      SQL.Add('	   ,''PRS'' as fpdun');
      SQL.Add('	   ,IsNull(INVOICE_D.UserID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(INVOICE_D.USERNAME,'''') as fcba1');
      SQL.Add('	   ,IsNull(INVOICE_D.kfjc,'''') as f0grd ');
      //2021.11.8
      SQL.Add('	   ,IsNull(INVOICE_D.fpdna,'''') as f0art ');
      //2022.2.18
      SQL.Add('    ,Case when INVOICE_D.DDGB='''+Local_DDGB+''' then ''VN'' else ''TW'' end as  fcono  ');
      SQL.Add('    ,Case when INVOICE_D.DDGB='''+Local_DDGB+''' then ''VN'' else ''TW'' end as  fcona  ');
      SQL.Add('	   ,IsNull(INVOICE_D.Declaretion,'''') as finpm ');         //報單單號
      //
      SQL.Add('from (');
      SQL.Add('select INVOICE_D.INV_NO,RYNO,convert(int,PACK_NO) as PACK_NO,PO,INVOICE_D.PAIRS,UNIT_PRICE,AMOUNT,INVOICE_M.INV_DATE,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.KHBH,KFZL.kfjc,DDZL.DDGB ');
      //新增 2021.5.15 fpdna
      SQL.Add(',DDZL.ARTICLE as fpdna,INVOICE_D.UserID,Busers.USERNAME,INVOICE_M.Declaretion ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_D INVOICE_D');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.INVOICE_M INVOICE_M on INVOICE_M.INV_NO=INVOICE_D.INV_NO ');
      SQL.Add('left join (select INV_NO,Max(UserDate) as YN_DATE from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_D Group by INV_NO) INVOICE_DM on INVOICE_DM.INV_NO=INVOICE_D.INV_NO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.YWDD YWDD on YWDD.DDBH=INVOICE_D.RYNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=YWDD.YSBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on DDZL.KHBH=KFZL.kfdh');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=INVOICE_D.UserID ');
      SQL.Add('left join (select distinct flino from  c14trmode where  c14trmode.fiono=''52'' and fdate>GetDate()-75 ) c14trmode on c14trmode.flino =INVOICE_D.INV_NO  collate  Chinese_Taiwan_Stroke_BIN    ');
      SQL.Add('where 1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,INVOICE_DM.YN_DATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111)  ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,INVOICE_DM.YN_DATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(' and c14trmode.flino is null ' );
      SQL.Add(') INVOICE_D');
      SQL.Add('');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''52'' as fiono');
      SQL.Add('	   ,Convert(varchar,INVOICE_D.INV_DATE,111) as fdate');
      SQL.Add('	   ,INVOICE_D.INV_NO as flino');
      SQL.Add('	   ,''N'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select INVOICE_D.INV_NO,INVOICE_M.INV_DATE ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_D INVOICE_D');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.INVOICE_M INVOICE_M on INVOICE_M.INV_NO=INVOICE_D.INV_NO ');
      SQL.Add('left join (select distinct flino from  c14trmode where  c14trmode.fiono=''52''  and  fdate>GetDate()-75 ) c14trmode on c14trmode.flino =INVOICE_D.INV_NO  collate  Chinese_Taiwan_Stroke_BIN    ');
      SQL.Add('where 1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,INVOICE_D.UserDate,111)>=Convert(varchar,GetDate()-'+NumDay+',111)  ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,INVOICE_D.UserDate,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is null   ');
      SQL.Add('Group by INVOICE_D.INV_NO,INVOICE_M.INV_DATE ');
      SQL.Add(') INVOICE_D');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' INVOICE2c14tr_N完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' INVOICE2c14tr_N錯誤:'+E.Message);
    end;
  end;
end;
//銷貨單 修改
procedure TERP2SIMIS.INVOICE2c14tr_M();
var iRes:integer;
begin
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_Ex  smalldatetime');
      SQL.Add('set @fdati_Ex =Getdate()');
      //新增 2021.5.15 fpdna,fpdun
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fcuno, ftaxs, fdeno, fdena, fpdpr, fbaqu, fpdu2, fcumo, fcbpu, flin1, fpdno, fcbno, fcbna, fpdna ,fpdun, fcbo1, fcba1, f0grd, f0art, fcono, fcona, finpm) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''52'' as fiono');
      SQL.Add('	   ,Convert(varchar,INVOICE_D.INV_DATE,111) as fdate');
      SQL.Add('	   ,INVOICE_D.INV_NO as flino');
      SQL.Add('	   ,INVOICE_D.PACK_NO as fsequ');
      SQL.Add('	   ,''USD'' as fcuno');
      SQL.Add('	   ,6 as ftaxs');
      SQL.Add('	   ,'''+Default_GSBH+''' as fdeno');
      SQL.Add('	   ,'''+Default_GSBH_Name+''' as fdena');
      SQL.Add('	   ,INVOICE_D.UNIT_PRICE as fpdpr');
      SQL.Add('	   ,INVOICE_D.PAIRS as fbaqu');
      SQL.Add('	   ,''PRS'' as fpdu2');
      SQL.Add('	   ,INVOICE_D.AMOUNT as fcumo');
      SQL.Add('	   ,IsNull(INVOICE_D.PO,'''') as fcbpu');
      SQL.Add('	   ,IsNull(INVOICE_D.RYNO,'''') as flin1 ');
      SQL.Add('	   ,IsNull(INVOICE_D.fpdno,'''') as fpdno');
      //2021.11.8  銷貨對象旺隆
      SQL.Add('	   ,''FTD'' as fcbno');
      SQL.Add('	   ,''旺隆發展台灣分公司'' as fcbna ');
      //新增 2021.5.15 fpdna,fpdun
      SQL.Add('	   ,IsNull(INVOICE_D.fpdna,'''') as fpdna ');
      SQL.Add('	   ,''PRS'' as fpdun');
      SQL.Add('	   ,IsNull(INVOICE_D.UserID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(INVOICE_D.USERNAME,'''') as fcba1');
      SQL.Add('	   ,IsNull(INVOICE_D.kfjc,'''') as f0grd ');
      //2021.11.8
      SQL.Add('	   ,IsNull(INVOICE_D.fpdna,'''') as f0art ');
      //2022.2.18
      SQL.Add('    ,Case when INVOICE_D.DDGB='''+Local_DDGB+''' then ''VN'' else ''TW'' end as  fcono  ');
      SQL.Add('    ,Case when INVOICE_D.DDGB='''+Local_DDGB+''' then ''VN'' else ''TW'' end as  fcona  ');
      SQL.Add('	   ,IsNull(INVOICE_D.Declaretion,'''') as finpm ');         //報單單號
      SQL.Add('from (');
      SQL.Add('select INVOICE_D.INV_NO,RYNO,convert(int,PACK_NO) as PACK_NO,PO,INVOICE_D.PAIRS,UNIT_PRICE,AMOUNT,INVOICE_M.INV_DATE,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.KHBH,KFZL.kfjc,DDZL.DDGB ');
      //新增 2021.5.15 fpdna
      SQL.Add(',DDZL.ARTICLE as fpdna,INVOICE_D.UserID,Busers.USERNAME,INVOICE_M.Declaretion');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_D INVOICE_D');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.INVOICE_M INVOICE_M on INVOICE_M.INV_NO=INVOICE_D.INV_NO ');
      SQL.Add('left join (select INV_NO,Max(UserDate) as YN_DATE from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_D Group by INV_NO) INVOICE_DM on INVOICE_DM.INV_NO=INVOICE_D.INV_NO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.YWDD YWDD on YWDD.DDBH=INVOICE_D.RYNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=YWDD.YSBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on DDZL.KHBH=KFZL.kfdh');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=INVOICE_D.UserID ');
      SQL.Add('left join (select distinct flino from  c14trmode where  c14trmode.fiono=''52''  and  fdate>GetDate()-75 ) c14trmode on c14trmode.flino =INVOICE_D.INV_NO  collate  Chinese_Taiwan_Stroke_BIN  ');
      SQL.Add('where 1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,INVOICE_DM.YN_DATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111)  ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,INVOICE_DM.YN_DATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(' and c14trmode.flino is not null   ' ); // having  Convert(varchar,INVOICE_D.UserDate,111)'+IstodayRepeatUpdate+'max(fdate)
      SQL.Add(') INVOICE_D');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''52'' as fiono');
      SQL.Add('	   ,Convert(varchar,INVOICE_D.INV_DATE,111) as fdate');
      SQL.Add('	   ,INVOICE_D.INV_NO as flino');
      SQL.Add('	   ,''M'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select INVOICE_D.INV_NO,INVOICE_M.INV_DATE  ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_D INVOICE_D');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.INVOICE_M INVOICE_M on INVOICE_M.INV_NO=INVOICE_D.INV_NO ');
      SQL.Add('where   1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,INVOICE_D.UserDate,111)>=Convert(varchar,GetDate()-'+NumDay+',111)  ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,INVOICE_D.UserDate,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(' and  exists (select flino from c14trmode where fiono=''52'' and flino=INVOICE_D.INV_NO collate  Chinese_Taiwan_Stroke_BIN  and fdate>GetDate()-180 Group by flino   ) ' ); //having  Convert(varchar,INVOICE_D.UserDate,111)'+IstodayRepeatUpdate+'max(fdate)
      SQL.Add('Group by INVOICE_D.INV_NO,INVOICE_M.INV_DATE ');
      SQL.Add(') INVOICE_D');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' INVOICE2c14tr_M完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' INVOICE2c14tr_M錯誤:'+E.Message);
    end;
  end;
end;
//銷貨單 刪除
procedure TERP2SIMIS.INVOICE2c14tr_D();
var iRes:integer;
begin
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R =Getdate()');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''52'' as fiono');
      SQL.Add('	   ,fdate');
      SQL.Add('	   ,flino');
      SQL.Add('	   ,''D'' as fmode');
      SQL.Add('from (');
      SQL.Add('select flino,fdate from c14trmode where fiono=''52'' and fmode=''N'' and flino not like ''LVL%'' and flino not like ''LBT%'' and flino not like ''LDT%'' and flino not like ''LBT'' ');
      SQL.Add('and fdate>GetDate()-75 and flino not in (Select INV_NO collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_M where  INVOICE_M.INV_DATE>GetDate()-75 Group by INV_NO)');
      SQL.Add(') YWCP');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' INVOICE2c14tr_D完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' INVOICE2c14tr_D錯誤:'+E.Message);
    end;
  end;
end;
//製令工單  新增
procedure TERP2SIMIS.SMDD2pr15tr_N();
var iRes:integer;
begin
  try
    //新增 2021.5.15 Connected:=true;
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_ZL  smalldatetime');
      SQL.Add('set @fdati_ZL  =Getdate()');
      SQL.Add('');
      //新增 2021.5.15 fpdno,fpdna,fpdun
      SQL.Add('insert into pr15tr(fdati, fdaus, fiono, fdate, fsequ, flino, fdeno, fdena, fstno, fdat5, finda, fquan, frela ,fpdno ,fpdna ,fpdun, ftrta) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_ZL, 112)+convert(varchar(8), @fdati_ZL, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,SMDD.USERDate,111) as fdate');
      SQL.Add('	   ,SMDD.fsequ as fsequ');
      SQL.Add('	   ,IsNull(SMDD.YSBH,'''') as flino');
      SQL.Add('	   ,IsNull(SMDD.DepNO,'''') as fdeno');
      SQL.Add('	   ,IsNull(SMDD.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(SMDD.GXLB,'''') as fstno');
      SQL.Add('	   ,Convert(varchar,SMDD.PlanDate,111)  as fdat5');
      SQL.Add('	   ,Convert(varchar,SMDD.PlanEDate,111)  as finda');
      SQL.Add('	   ,SMDD.Qty as fquan');
      SQL.Add('    ,IsNull(SMDD.YSBH,'''') as frela ');
      //新增 2021.5.15 fpdno,fpdna,fpdun
      SQL.Add('    ,IsNull(SMDD.fpdno,'''') as fpdno');
      SQL.Add('    ,IsNull(SMDD.fpdna,'''') as fpdna');
      SQL.Add('	   ,''PRS'' as fpdun');
      //2021.11.8
      SQL.Add('    ,case when SMDD.GXLB=''A'' then ''2'' else ''1'' end as ftrta ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select SMDD.*,ROW_NUMBER() over (PARTITION BY YSBH ORDER BY GXLB desc) as fsequ from (');
      SQL.Add('select SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName,Min(PlanDate) as PlanDate,Max(PlanEdate) as PlanEDate,Sum(Qty) as Qty,Max(CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112)) as USERDate');
      //新增 2021.5.15 fpdno,fpdna
      SQL.Add(',DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SMDD SMDD');
      SQL.Add('left join (select YSBH,Max(USERDate) as YN_DATE from tyxuanDB.'+ERPDBName+'.dbo.SMDD Group by YSBH) SMDDM on SMDDM.YSBH=SMDD.YSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment BDepartment on BDepartment.ID=SMDD.DepNO');
      //新增 2021.5.15 left join
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=SMDD.YSBH');
      SQL.Add('left join (select flino from pr15trmode where fiono=''03''  and fdate>GetDate()-75  Group by flino ) pr15trmode  on pr15trmode.flino=SMDD.YSBH collate  Chinese_Taiwan_Stroke_BIN ');
      SQL.Add('where  SMDD.GXLB in (''C'',''S'',''A'') and SMDD.PlanDate is not null and SMDD.PlanEdate is not null ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,SMDDM.YN_DATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,SMDDM.YN_DATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('      and pr15trmode.flino is null ');
      //新增 2021.5.15 DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE
      SQL.Add('Group by SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ) SMDD');
      SQL.Add(') SMDD ');
      SQL.Add('insert into pr15trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_ZL, 112)+convert(varchar(8), @fdati_ZL, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,SMDD.USERDate,111) as fdate');
      SQL.Add('	   ,SMDD.YSBH as flino');
      SQL.Add('	   ,''N'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select SMDD.YSBH,Max(CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112)) as USERDate');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SMDD SMDD');
      SQL.Add('left join (select YSBH,Max(USERDate) as YN_DATE from tyxuanDB.'+ERPDBName+'.dbo.SMDD Group by YSBH) SMDDM on SMDDM.YSBH=SMDD.YSBH ');
      SQL.Add('left join (select flino from pr15trmode where fiono=''03''  and fdate>GetDate()-75  Group by flino ) pr15trmode  on pr15trmode.flino=SMDD.YSBH collate  Chinese_Taiwan_Stroke_BIN ');
      SQL.Add('where  SMDD.GXLB in (''C'',''S'',''A'') and SMDD.PlanDate is not null and SMDD.PlanEdate is not null');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,SMDDM.YN_DATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,SMDDM.YN_DATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('      and pr15trmode.flino is null ');
      SQL.Add('Group by SMDD.YSBH');
      SQL.Add(') SMDD');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' SMDD2pr15tr_N完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' SMDD2pr15tr_N錯誤:'+E.Message);
    end;
  end;
end;
//製令工單  修改
procedure TERP2SIMIS.SMDD2pr15tr_M();
var iRes:integer;
begin
  try
    //新增 2021.5.15 Connected:=true;
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_ZL  smalldatetime');
      SQL.Add('set @fdati_ZL  =Getdate()');
      SQL.Add('');
      //新增 2021.5.15 fpdno,fpdna,fpdun
      SQL.Add('insert into pr15tr(fdati, fdaus, fiono, fdate, fsequ, flino, fdeno, fdena, fstno, fdat5, finda, fquan, frela ,fpdno ,fpdna ,fpdun, ftrta ) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_ZL, 112)+convert(varchar(8), @fdati_ZL, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,SMDD.USERDate,111) as fdate');
      SQL.Add('	   ,SMDD.fsequ as fsequ');
      SQL.Add('	   ,IsNull(SMDD.YSBH,'''') as flino');
      SQL.Add('	   ,IsNull(SMDD.DepNO,'''') as fdeno');
      SQL.Add('	   ,IsNull(SMDD.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(SMDD.GXLB,'''') as fstno');
      SQL.Add('	   ,Convert(varchar,SMDD.PlanDate,111)  as fdat5');
      SQL.Add('	   ,Convert(varchar,SMDD.PlanEDate,111)  as finda');
      SQL.Add('	   ,SMDD.Qty as fquan ');
      SQL.Add('    ,IsNull(SMDD.YSBH,'''') as frela ');
      //新增 2021.5.15 fpdno,fpdna,fpdun
      SQL.Add('    ,IsNull(SMDD.fpdno,'''') as fpdno');
      SQL.Add('    ,IsNull(SMDD.fpdna,'''') as fpdna');
      SQL.Add('	   ,''PRS'' as fpdun');
      //2021.11.8
      SQL.Add('    ,case when SMDD.GXLB=''A'' then ''2'' else ''1'' end as ftrta ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select SMDD.*,ROW_NUMBER() over (PARTITION BY YSBH ORDER BY GXLB desc) as fsequ from (');
      SQL.Add('select SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName,Min(PlanDate) as PlanDate,Max(PlanEdate) as PlanEDate,Sum(Qty) as Qty,Max(CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112)) as USERDate');
      //新增 2021.5.15 fpdno,fpdna
      SQL.Add(',DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SMDD SMDD');
      SQL.Add('left join (select YSBH,Max(USERDate) as YN_DATE from tyxuanDB.'+ERPDBName+'.dbo.SMDD Group by YSBH) SMDDM on SMDDM.YSBH=SMDD.YSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment BDepartment on BDepartment.ID=SMDD.DepNO');
      //新增 2021.5.15 left join
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=SMDD.YSBH');
      SQL.Add('left join (select flino from pr15trmode where fiono=''03''  and fdate>GetDate()-75  Group by flino ) pr15trmode  on pr15trmode.flino=SMDD.YSBH collate  Chinese_Taiwan_Stroke_BIN ');
      SQL.Add('where  SMDD.GXLB in (''C'',''S'',''A'') and SMDD.PlanDate is not null and SMDD.PlanEdate is not null ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,SMDDM.YN_DATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,SMDDM.YN_DATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('      and pr15trmode.flino is not null ');
      //新增 2021.5.15 DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE
      SQL.Add('Group by SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE  ) SMDD');
      SQL.Add(') SMDD ');
      SQL.Add('insert into pr15trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_ZL, 112)+convert(varchar(8), @fdati_ZL, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,SMDD.USERDate,111) as fdate');
      SQL.Add('	   ,SMDD.YSBH as flino');
      SQL.Add('	   ,''M'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select SMDD.YSBH,Max(CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112)) as USERDate');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SMDD SMDD');
      SQL.Add('left join (select flino from pr15trmode where fiono=''03''  and fdate>GetDate()-75  Group by flino ) pr15trmode  on pr15trmode.flino=SMDD.YSBH collate  Chinese_Taiwan_Stroke_BIN ');
      SQL.Add('where  SMDD.GXLB in (''C'',''S'',''A'') and SMDD.PlanDate is not null and SMDD.PlanEdate is not null');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,SMDD.USERDate,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,SMDD.USERDate,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('      and pr15trmode.flino is not null ');
      SQL.Add('Group by SMDD.YSBH');
      SQL.Add(') SMDD');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' SMDD2pr15tr_M完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' SMDD2pr15tr_M錯誤:'+E.Message);
    end;
  end;
end;
//製令工單  刪除
procedure TERP2SIMIS.SMDD2pr15tr_D();
var iRes:integer;
begin
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R =Getdate()');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,fdate');
      SQL.Add('	   ,flino');
      SQL.Add('	   ,''D'' as fmode');
      SQL.Add('from (');
      SQL.Add('select flino,fdate from pr15trmode where fiono=''03'' and fmode=''N'' and fdate>GetDate()-75 and flino not in (Select YSBH collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.SMDD where  SMDD.USERDate>GetDate()-180 Group by YSBH)');
      SQL.Add(') SMDD');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' SMDD2pr15tr_D完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' SMDD2pr15tr_D錯誤:'+E.Message);
    end;
  end;
end;
//生產日報 新增
procedure TERP2SIMIS.SCBB2pr13tr_N();
var iRes:integer;
begin
  try
    //新增 2021.5.15 Connected:=true;
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_SB  smalldatetime');
      SQL.Add('set @fdati_SB  =Getdate()');
      //新增 2021.5.15 fpdno,fpdna,fpdun
      SQL.Add('insert into pr13tr(fdati, fdaus, fiono, fdate, fsequ, flino, fdeno, fdena, fstno, frela, fquan, fdat1, fdat2 ,fpdno ,fpdna ,fpdun, flin1, ftrta ) ');
      SQL.Add('select ');
      SQL.Add('     replace(convert(varchar(8), @fdati_SB, 112)+convert(varchar(8), @fdati_SB, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdate');
      SQL.Add('	   ,SCBBS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(SCBBS.ProNo,'''') as flino');
      SQL.Add('	   ,IsNull(SCBBS.DepNo,'''') as fdeno');
      SQL.Add('	   ,IsNull(SCBBS.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(SCBBS.GXLB,'''') as fstno');
      SQL.Add('	   ,IsNull(SCBBS.SCBH,'''') as frela');
      SQL.Add('	   ,SCBBS.Qty as fquan');
      SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdat1');
      SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdat2');
      //新增 2021.5.15 fpdno,fpdna,fpdun
      SQL.Add('    ,IsNull(SCBBS.fpdno,'''') as fpdno');
      SQL.Add('    ,IsNull(SCBBS.fpdna,'''') as fpdna');
      SQL.Add('	   ,''PRS'' as fpdun');
      //工單號
      SQL.Add('	   ,IsNull(SCBBS.SCBH,'''') as flin1');
      //2021.11.8
      SQL.Add('    ,case when SCBBS.GXLB=''A'' then ''2'' else ''1'' end as ftrta ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select SCBBS.*,ROW_NUMBER() over (PARTITION BY ProNo ORDER BY GXLB desc) as fsequ from (');
      SQL.Add('select SCBBS.SCBH,SCBB.SCDate,SCBB.DepNo,BDepartment.DepName,SCBBS.GXLB,SCBB.ProNo,SCBBS.Qty');
      //新增 2021.5.15 fpdno,fpdna
      SQL.Add(',DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SCBB SCBB');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.SCBBS SCBBS on SCBB.ProNo=SCBBS.ProNo');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment BDepartment on BDepartment.ID=SCBB.DepNo');
      //新增 2021.5.15 left join
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=SCBBS.SCBH');
      SQL.Add('left join (select flino from pr13trmode where fiono=''03''  and fdate>GetDate()-75  Group by flino ) pr13trmode  on pr13trmode.flino=SCBB.ProNo collate  Chinese_Taiwan_Stroke_BIN ');
      SQL.Add('where SCBBS.GXLB in (''C'',''S'',''A'') ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,SCBB.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,SCBB.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('   and pr13trmode.flino is null ');
      //新增 2021.5.15 Group by
      SQL.Add('Group by SCBBS.SCBH,SCBB.SCDate,SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName,SCBB.ProNo,SCBBS.Qty,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ) SCBBS');
      SQL.Add(')SCBBS');
      //新增紀錄
      SQL.Add('insert into pr13trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_SB, 112)+convert(varchar(8), @fdati_SB, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdate');
      SQL.Add('	   ,SCBBS.ProNo as flino');
      SQL.Add('	   ,''N'' as fmode');
      SQL.Add('from (');
      SQL.Add('select SCBBS.ProNo,SCBB.SCDate ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SCBB SCBB');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.SCBBS SCBBS on SCBB.ProNo=SCBBS.ProNo');
      SQL.Add('left join (select flino from pr13trmode where fiono=''03''  and fdate>GetDate()-75  Group by flino ) pr13trmode  on pr13trmode.flino=SCBB.ProNo collate  Chinese_Taiwan_Stroke_BIN ');
      SQL.Add('where  SCBBS.GXLB in (''C'',''S'',''A'') ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,SCBB.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,SCBB.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('   and pr13trmode.flino is null ');
      //SQL.Add('where convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between ''2020/3/1'' and ''2020/3/31''');
      SQL.Add('Group by SCBBS.ProNo,SCBB.SCDate  ) SCBBS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' SCBB2pr13tr_N完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' SCBB2pr13tr_N錯誤:'+E.Message);
    end;
  end;

end;
//生產日報 修改
procedure TERP2SIMIS.SCBB2pr13tr_M();
var iRes:integer;
begin
  try
    //新增 2021.5.15 Connected:=true;
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_SB  smalldatetime');
      SQL.Add('set @fdati_SB  =Getdate()');
      //新增 2021.5.15 fpdno,fpdna,fpdun
      SQL.Add('insert into pr13tr(fdati, fdaus, fiono, fdate, fsequ, flino, fdeno, fdena, fstno, frela, fquan, fdat1, fdat2,fpdno,fpdna,fpdun, flin1, ftrta ) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_SB, 112)+convert(varchar(8), @fdati_SB, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdate');
      SQL.Add('	   ,SCBBS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(SCBBS.ProNo,'''') as flino');
      SQL.Add('	   ,IsNull(SCBBS.DepNo,'''') as fdeno');
      SQL.Add('	   ,IsNull(SCBBS.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(SCBBS.GXLB,'''') as fstno');
      SQL.Add('	   ,IsNull(SCBBS.SCBH,'''') as frela');
      SQL.Add('	   ,SCBBS.Qty as fquan');
      SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdat1');
      SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdat2');
      //新增 2021.5.15 fpdno,fpdna,fpdun
      SQL.Add('    ,IsNull(SCBBS.fpdno,'''') as fpdno');
      SQL.Add('    ,IsNull(SCBBS.fpdna,'''') as fpdna');
      SQL.Add('	   ,''PRS'' as fpdun');
      //工單號
      SQL.Add('	   ,IsNull(SCBBS.SCBH,'''') as flin1');
      //2021.11.8
      SQL.Add('    ,case when SCBBS.GXLB=''A'' then ''2'' else ''1'' end as ftrta ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select SCBBS.*,ROW_NUMBER() over (PARTITION BY ProNo ORDER BY GXLB desc) as fsequ from (');
      SQL.Add('select SCBBS.SCBH,SCBB.SCDate  ,SCBB.DepNo,BDepartment.DepName,SCBBS.GXLB,SCBB.ProNo,SCBBS.Qty');
      //新增 2021.5.15 fpdno,fpdna
      SQL.Add(',DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SCBB SCBB');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.SCBBS SCBBS on SCBB.ProNo=SCBBS.ProNo');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment BDepartment on BDepartment.ID=SCBB.DepNo');
      //新增 2021.5.15 left join
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=SCBBS.SCBH');
      SQL.Add('left join (select flino from pr13trmode where fiono=''03''  and fdate>GetDate()-75  Group by flino ) pr13trmode  on pr13trmode.flino=SCBB.ProNo collate  Chinese_Taiwan_Stroke_BIN ');
      SQL.Add('where  SCBBS.GXLB in (''C'',''S'',''A'') ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,SCBB.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,SCBB.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('   and pr13trmode.flino is not null ');
      //新增 2021.5.15 Group by
      SQL.Add('Group by SCBBS.SCBH,SCBB.SCDate,SCBB.DepNo,SCBBS.GXLB,BDepartment.DepName,SCBB.ProNo,SCBBS.Qty,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ) SCBBS');
      SQL.Add(')SCBBS');
      //新增紀錄
      SQL.Add('insert into pr13trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_SB, 112)+convert(varchar(8), @fdati_SB, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdate');
      SQL.Add('	   ,SCBBS.ProNo as flino');
      SQL.Add('	   ,''M'' as fmode');
      SQL.Add('from (');
      SQL.Add('select SCBBS.ProNo,SCBB.SCDate  ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SCBB SCBB');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.SCBBS SCBBS on SCBB.ProNo=SCBBS.ProNo');
      SQL.Add('left join (select flino from pr13trmode where fiono=''03''  and fdate>GetDate()-75  Group by flino ) pr13trmode  on pr13trmode.flino=SCBB.ProNo collate  Chinese_Taiwan_Stroke_BIN ');
      SQL.Add('where  SCBBS.GXLB in (''C'',''S'',''A'') ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,SCBB.USERDATE,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,SCBB.USERDATE,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('   and pr13trmode.flino is not null ');
      SQL.Add('Group by SCBBS.ProNo,SCBB.SCDate  ) SCBBS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' SCBB2pr13tr_M完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' SCBB2pr13tr_M錯誤:'+E.Message);
    end;
  end;
end;
//生產日報 刪除
procedure TERP2SIMIS.SCBB2pr13tr_D();
var iRes:integer;
begin
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R =Getdate()');
      SQL.Add('insert into pr13trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,fdate');
      SQL.Add('	   ,flino');
      SQL.Add('	   ,''D'' as fmode');
      SQL.Add('from (');
      SQL.Add('select flino,fdate from pr13trmode where fiono=''03'' and fmode=''N'' and fdate>GetDate()-75 and flino not in (Select ProNo collate  Chinese_Taiwan_Stroke_BIN ');
      SQL.Add('      from tyxuanDB.'+ERPDBName+'.dbo.SCBB where SCBB.SCDate>GetDate()-75 Group by ProNo)');
      SQL.Add(') SMDD');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' SCBB2pr13tr_D完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' SCBB2pr13tr_D錯誤:'+E.Message);
    end;
  end;
end;

//加工單 庫  新增 20210619
procedure TERP2SIMIS.JGZL2c14tr_N();
var iRes:integer;
begin
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      //新增單據
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R  =Getdate()');
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbno, fcbna, fcuno, frava, fcbo1, fcba1, fpdno, fpdpr, fbaqu, fpdu2, fcumo, fsamo, flin1, fodmo, ftaxs ,fbano, frela, fstno, fstna) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''05'' as fiono');
      SQL.Add('	   ,Convert(varchar,JGZLS.JGUSERDATE,111) as fdate');
      SQL.Add('	   ,JGZLS.JGNO as flino');
      SQL.Add('	   ,JGZLS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(JGZLS.GSBH,'''') as fdeno');
      SQL.Add('	   ,IsNull(JGZLS.gszwqm,'''') as fdena');
      SQL.Add('	   ,IsNull(JGZLS.ZSBH,'''') as fcbno');
      SQL.Add('	   ,IsNull(JGZLS.zsjc,'''') as fcbna');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then ''USD'' else ''VND'' end  as fcuno');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then  IsNull(JGZLS.CWHL,0.0) else 1 end as frava');
      SQL.Add('	   ,IsNull(JGZLS.JGUSERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(JGZLS.JGUSERNAME,'''') as fcba1');
      SQL.Add('	   ,JGZLS.CLBH as fpdno');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then JGZLS.USPrice else IsNull(JGZLS.VNPrice,0.0) end as fpdpr');
      SQL.Add('	   ,IsNull(JGZLS.Qty,0.0) as fbaqu');
      SQL.Add('	   ,IsNull(JGZLS.dwbh,'''') as fpdu2');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then IsNull(JGZLS.USACC,0.0) else IsNull(JGZLS.VNACC,0.0)  end  as fcumo');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then IsNull(JGZLS.VNACC,0.0) else IsNull(JGZLS.VNACC,0.0)  end  as fsamo');
      SQL.Add('	   ,'''' as flin1');
      SQL.Add('	   ,0 as fodmo	  ');
      SQL.Add('	   ,6 as ftaxs ');
      SQL.Add('    ,''0501'' as fbano ');  //加工驗收後，該產品是直接入庫
      //
      SQL.Add('    ,Substring(IsNull(JGZLS.ZLBH ,''''),1,12)   as frela ');  // 0928 科展未回覆目前只有12碼
      SQL.Add('    ,''JGNO'' as fstno ');
      SQL.Add('    ,''Cemented Canvas'' as fstna ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select JGZLS.*,ROW_NUMBER() over (PARTITION BY JGNO ORDER BY CLBH desc) as fsequ from (');
      SQL.Add('select JGZL.JGNO,JGZL.GSBH,bgszl.gszwqm,JGZL.ZSBH,zszl.zsjc ,JGZL.CFMDate1 as JGUSERDATE,');
      SQL.Add('       JGZLS.CLBH,JGZLS.CWHL,JGZL.USERID as JGUSERID,Busers.USERNAME as JGUSERNAME,CLZL.dwbh,');
      SQL.Add('       JGZLSS.ZLBH,JGZLSS.Qty,JGZLS.VNPrice,JGZLS.USPrice,Round(JGZLSS.Qty*JGZLS.VNPrice,0) as VNACC, JGZLSS.Qty*USPrice as USACC ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.JGZLS JGZLS');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.JGZL JGZL on JGZL.JGNO=JGZLS.JGNO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.JGZLSS JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=JGZLS.CLBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.bgszl bgszl on bgszl.gsdh=JGZL.GSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.zszl zszl on zszl.zsdh=JGZL.ZSBH    ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=JGZL.USERID ');
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''05'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =JGZL.JGNO  collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' and CLZL.cldh is not null ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,JGZL.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,JGZL.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('    and c14trmode.flino is null ');
      SQL.Add(' ) JGZLS');
      SQL.Add(') JGZLS ');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''05'' as fiono');
      SQL.Add('	   ,Convert(varchar,JGZLS.USERDATE,111) as fdate');
      SQL.Add('	   ,JGZLS.JGNO as flino');
      SQL.Add('	   ,''N'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select JGZL.JGNO,JGZL.CFMDate1 as USERDATE');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.JGZL JGZL');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.JGZLS JGZLS on JGZL.JGNO=JGZLS.JGNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=JGZLS.CLBH ');
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''05'' and  fdate>GetDate()-75  ) c14trmode on c14trmode.flino =JGZL.JGNO  collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where 1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,JGZL.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,JGZL.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is null  ');
      SQL.Add('Group by JGZL.JGNO,JGZL.CFMDate1');
      SQL.Add(') JGZLS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' JGZL2c14tr_N完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' JGZL2c14tr_N錯誤:'+E.Message);
    end;
  end;
end;

//加工單 入庫  更新 20210619
procedure TERP2SIMIS.JGZL2c14tr_M();
var iRes:integer;
begin
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      //新增單據
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R  =Getdate()');
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbno, fcbna, fcuno, frava, fcbo1, fcba1, fpdno, fpdpr, fbaqu, fpdu2, fcumo, fsamo, flin1, fodmo, ftaxs, fbano, frela, fstno, fstna) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''05'' as fiono');
      SQL.Add('	   ,Convert(varchar,JGZLS.JGUSERDATE,111) as fdate');
      SQL.Add('	   ,JGZLS.JGNO as flino');
      SQL.Add('	   ,JGZLS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(JGZLS.GSBH,'''') as fdeno');
      SQL.Add('	   ,IsNull(JGZLS.gszwqm,'''') as fdena');
      SQL.Add('	   ,IsNull(JGZLS.ZSBH,'''') as fcbno');
      SQL.Add('	   ,IsNull(JGZLS.zsjc,'''') as fcbna');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then ''USD'' else ''VND'' end  as fcuno');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then  IsNull(JGZLS.CWHL,0.0) else 1 end as frava');
      SQL.Add('	   ,IsNull(JGZLS.JGUSERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(JGZLS.JGUSERNAME,'''') as fcba1');
      SQL.Add('	   ,JGZLS.CLBH as fpdno');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then JGZLS.USPrice else IsNull(JGZLS.VNPrice,0.0) end as fpdpr');
      SQL.Add('	   ,IsNull(JGZLS.Qty,0.0)  as fbaqu');
      SQL.Add('	   ,IsNull(JGZLS.dwbh,'''') as fpdu2');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then IsNull(JGZLS.USACC,0.0) else IsNull(JGZLS.VNACC,0.0)  end  as fcumo');
      SQL.Add('	   ,case when JGZLS.USPrice is not null then IsNull(JGZLS.VNACC,0.0) else IsNull(JGZLS.VNACC,0.0)  end  as fsamo');
      SQL.Add('	   ,'''' as flin1');
      SQL.Add('	   ,0 as fodmo	  ');
      SQL.Add('	   ,6 as ftaxs ');
      SQL.Add('    ,''0501'' as fbano ');  //加工驗收後，該產品是直接入庫
      //
      SQL.Add('    ,Substring(IsNull(JGZLS.ZLBH ,''''),1,12)  as frela ');
      SQL.Add('    ,''JGNO'' as fstno ');
      SQL.Add('    ,''Cemented Canvas'' as fstna ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select  JGZLS.*,ROW_NUMBER() over (PARTITION BY JGNO ORDER BY CLBH desc) as fsequ from (');
      SQL.Add('select JGZL.JGNO,JGZL.GSBH,bgszl.gszwqm,JGZL.ZSBH,zszl.zsjc ,JGZL.CFMDate1 as JGUSERDATE,');
      SQL.Add('       JGZLS.CLBH,JGZLS.CWHL,JGZL.USERID as JGUSERID,Busers.USERNAME as JGUSERNAME,CLZL.dwbh,');
      SQL.Add('       JGZLSS.ZLBH,JGZLSS.Qty,JGZLS.VNPrice,JGZLS.USPrice,Round(JGZLSS.Qty*JGZLS.VNPrice,0) as VNACC, JGZLSS.Qty*USPrice as USACC ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.JGZLS JGZLS');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.JGZL JGZL on JGZL.JGNO=JGZLS.JGNO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.JGZLSS JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=JGZLS.CLBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.bgszl bgszl on bgszl.gsdh=JGZL.GSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.zszl zszl on zszl.zsdh=JGZL.ZSBH    ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=JGZL.USERID ');
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''05'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =JGZL.JGNO  collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' and CLZL.cldh is not null ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,JGZL.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,JGZL.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('   and c14trmode.flino is not null ');
      SQL.Add(' ) JGZLS');
      SQL.Add(') JGZLS ');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''05'' as fiono');
      SQL.Add('	   ,Convert(varchar,JGZLS.USERDATE,111) as fdate');
      SQL.Add('	   ,JGZLS.JGNO as flino');
      SQL.Add('	   ,''M'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select JGZL.JGNO,JGZL.CFMDate1 as USERDATE');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.JGZL JGZL');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.JGZLS JGZLS on JGZL.JGNO=JGZLS.JGNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=JGZLS.CLBH ');
      SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''05'' and  fdate>GetDate()-75  ) c14trmode on c14trmode.flino =JGZL.JGNO  collate  Chinese_Taiwan_Stroke_BIN   ');
      SQL.Add('where 1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,JGZL.YN_Date,111)>=Convert(varchar,GetDate()-'+NumDay+',111) ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,JGZL.YN_Date,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('   and c14trmode.flino is not null  ');
      SQL.Add('Group by JGZL.JGNO,JGZL.CFMDate1');
      SQL.Add(') JGZLS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' JGZL2c14tr_M完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' JGZL2c14tr_M錯誤:'+E.Message);
    end;
  end;
end;

//加工單 入庫  刪除
procedure TERP2SIMIS.JGZL2c14tr_D();
var iRes:integer;
begin
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R  =Getdate()');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''05'' as fiono');
      SQL.Add('	   ,fdate');
      SQL.Add('	   ,flino');
      SQL.Add('	   ,''D'' as fmode');
      SQL.Add(' from (');
      SQL.Add('select flino,fdate from c14trmode where fiono=''05'' and fmode=''N'' and fdate>GetDate()-75 and flino not in (Select JGNO collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.JGZL where  JGZL.CFMDate1>GetDate()-75)'); //KCRK.CFMID<>''NO'' and KCRK.YN=''5'' and
      SQL.Add(') KCRKD');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' JGZL2c14tr_D完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' JGZL2c14tr_D錯誤:'+E.Message);
    end;
  end;
end;

procedure TERP2SIMIS.FormCreate(Sender: TObject);
begin
  funcObj:=TFuncObj.Create;
  funcObj.setParameter(true,ExtractFilePath(Application.ExeName));
  Default_GSBH:='VTX';//銷貨單使用
  Default_GSBH_Name:='億春總公司'; //銷貨單使用  
  Readini();
  DTP1.Date:=Date()-3;
  DTP2.Date:=Date();
  NumDay:='1'; //default 2 days range
  IstodayRepeatUpdate:='>=';
  //自動檢查往前第三天
  if ParamCount=1 then
  begin
    if ParamStr(1)='Auto_Check' then
    begin
      Application.ShowMainForm:=false;
      DailyAutoRun();
    end;
  end;
  DTP3.Date:=Date()-1;
  DTP4.Date:=Date();
end;

procedure TERP2SIMIS.FormDestroy(Sender: TObject);
begin
  funcObj.Free;
end;

procedure TERP2SIMIS.Button1Click(Sender: TObject);
begin
  if RB_CLZL2a0pdtr.Checked then CLZL2a0pdtr();
  if RB_ZSZL2a0cbtr.Checked then ZSZL2a0cbtr();
  if RB_BDeprtment2a0detr.Checked then BDeprtment2a0detr();
  if RB_LBZLS2a0cutr.Checked then LBZLS2a0cutr();
  if RB_SCGXDY2ct01tr.Checked then SCGXDY2ct01tr();
  if RB_XXZLS2c15tr.Checked then XXZLS2c15tr();
  if RB_KCRK2c14tr_N.Checked then KCRK2c14tr_N();
  if RB_KCRK2c14tr_M.Checked then KCRK2c14tr_M();
  if RB_KCRK2c14tr_D.Checked then KCRK2c14tr_D();
  if RB_KCLL2c14tr_N.Checked then KCLL2c14tr_N();
  if RB_KCLL2c14tr_M.Checked then KCLL2c14tr_M();
  if RB_KCLL2c14tr_D.Checked then KCLL2c14tr_D();
  if RB_YWCP2c14tr_N.Checked then YWCP2c14tr_N();
  if RB_YWCP2c14tr_M.Checked then YWCP2c14tr_M();
  if RB_YWCP2c14tr_D.Checked then YWCP2c14tr_D();
  if RB_INVOICE2c14tr_N.Checked then INVOICE2c14tr_N();
  if RB_INVOICE2c14tr_M.Checked then INVOICE2c14tr_M();
  if RB_INVOICE2c14tr_D.Checked then INVOICE2c14tr_D();
  if RB_SMDD2pr15tr_N.Checked then SMDD2pr15tr_N();
  if RB_SMDD2pr15tr_M.Checked then SMDD2pr15tr_M();
  if RB_SMDD2pr15tr_D.Checked then SMDD2pr15tr_D();
  if RB_SCBB2pr13tr_N.Checked then SCBB2pr13tr_N();
  if RB_SCBB2pr13tr_M.Checked then SCBB2pr13tr_M();
  if RB_SCBB2pr13tr_D.Checked then SCBB2pr13tr_D();
  if RB_JGZL2c14tr_N.Checked then JGZL2c14tr_N();
  if RB_JGZL2c14tr_M.Checked then JGZL2c14tr_M();
  if RB_JGZL2c14tr_D.Checked then JGZL2c14tr_D();
  if RB_DCINVOICE2c14tr_N.Checked then DCINVOICE2c14tr_N();
  if RB_DCINVOICE2c14tr_M.Checked then DCINVOICE2c14tr_M();
  if RB_DCINVOICE2c14tr_D.Checked then DCINVOICE2c14tr_D();

  showmessage('ok');
end;

procedure TERP2SIMIS.Button2Click(Sender: TObject);
begin
  InitSQL();
end;

procedure TERP2SIMIS.Button3Click(Sender: TObject);
begin
  DeInitSQL();
end;

procedure TERP2SIMIS.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked=true then
    IstodayRepeatUpdate:='>='
  else
    IstodayRepeatUpdate:='>';
end;

procedure TERP2SIMIS.QryBtnClick(Sender: TObject);
begin
 if CheckDataComBo.ItemIndex=0 then  CLZL2a0pdtr1_Checck();
 if CheckDataComBo.ItemIndex=1 then  CLZL2a0pdtr2_Checck();
 
 if CheckDataComBo.ItemIndex=2 then  ZSZL2a0cbtr1_Checck();
 if CheckDataComBo.ItemIndex=3 then  ZSZL2a0cbtr2_Checck();
 if CheckDataComBo.ItemIndex=4 then  ZSZL2a0cbtr3_Checck();

 if CheckDataComBo.ItemIndex=5 then  BDeprtment2a0detr_Checck();
 if CheckDataComBo.ItemIndex=6 then  LBZLS2a0cutr_Checck();
 if CheckDataComBo.ItemIndex=7 then  SCGXDY2ct01tr_Checck();

 if CheckDataComBo.ItemIndex=8 then  XXZLS2c15tr_Checck();
 if CheckDataComBo.ItemIndex=9 then  KCRK2c14tr_Checck();

 if CheckDataComBo.ItemIndex=10 then  KCLL2c14tr_Checck();
 if CheckDataComBo.ItemIndex=11 then  YWCP2c14tr_Checck();
 if CheckDataComBo.ItemIndex=12 then  INVOICE2c14tr_Check();
 if CheckDataComBo.ItemIndex=13 then SMDD2pr15tr_Check();
 if CheckDataComBo.ItemIndex=14 then SCBB2pr13tr_Check();

 if CheckDataComBo.ItemIndex=15 then JGZL2c14tr_Checck();
 showmessage('ok');
end;
//原料筆數檢查
procedure TERP2SIMIS.CLZL2a0pdtr1_Checck();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select * from (');
    SQL.Add('select fpdno,fdati,fpdna,fpdun,fiono,ROW_NUMBER() over (PARTITION BY fpdno ORDER BY fdati desc) as fsequ  from a0pdtr ');
    SQL.Add('where fiono=''原料'' ');
    SQL.Add(') a0pdtr');
    SQL.Add('where fsequ=1');
    SQL.Add(') a0pdtr ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select ');
    SQL.Add('       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus');
    SQL.Add('	   ,CLZL.cldh as fpdno');
    SQL.Add('	   ,CLZL.ywpm as fpdna');
    SQL.Add('	   ,IsNull(CLZL.dwbh,'''') as fpdun');
    SQL.Add('	   ,''原料'' as fiono');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.CLZL as CLZL');
    SQL.Add('where IsNull(CLZL.ywpm,'''')<>'''' ');
    SQL.Add(') CLZL ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;
//成品筆數檢查
procedure TERP2SIMIS.CLZL2a0pdtr2_Checck();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select * from (');
    SQL.Add('select fpdno,fdati,fpdna,fpdun,fiono,ROW_NUMBER() over (PARTITION BY fpdno ORDER BY fdati desc) as fsequ  from a0pdtr ');
    SQL.Add('where fiono=''成品'' ');
    SQL.Add(') a0pdtr');
    SQL.Add('where fsequ=1');
    SQL.Add(') a0pdtr ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select ');
    SQL.Add('       replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus  ');
    SQL.Add('       ,XXZL.XieXing+XXZL.SheHao as fpdno');
    SQL.Add('	   ,IsNull(XXZL.ARTICLE,'''') as fpdna');
    SQL.Add('	   ,''PRS'' as fpdun');
    SQL.Add('	   ,''成品'' as fiono');
    SQL.Add('from ');
    SQL.Add('(');
    SQL.Add('select XXZL.* from (');
    SQL.Add('Select XXZL.XieXing,XXZL.SheHao,XXZL.ARTICLE');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.XXZL XXZL');
    SQL.Add('where XXZL.KHDH in ('+Default_Brand+')  ) XXZL');
    SQL.Add(') XXZL');
    SQL.Add(') XXZL ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;

//供應商筆數檢查
procedure TERP2SIMIS.ZSZL2a0cbtr1_Checck();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select * from (');
    SQL.Add('select fcbno,fdati,fcbna,ROW_NUMBER() over (PARTITION BY fcbno ORDER BY fdati desc) as fsequ  from a0cbtr ');
    SQL.Add('where fcbty=''供應商'' ');
    SQL.Add(') a0cbtr');
    SQL.Add('where fsequ=1');
    SQL.Add(') a0cbtr ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select ');
    SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus');
    SQL.Add('	   ,ZSZL.zsdh as fcbno');
    SQL.Add('	   ,IsNull(ZSZL.zsjc,'''') as fcbna');
    SQL.Add('	   ,IsNull(ZSZL.zsqm,'''') as fcbfn');
    SQL.Add('	   ,IsNull(ZSZL.fzr,'''') as fboss');
    SQL.Add('	   ,IsNull(ZSZL.llr,'''') as fcoma');
    SQL.Add('	   ,IsNull(ZSZL.dh,'''') as ftel1');
    SQL.Add('	   ,IsNull(ZSZL.cz,'''') as ffax1');
    SQL.Add('	   ,IsNull(ZSZL.tybh,'''') as fidno');
    SQL.Add('	   ,IsNull(ZSZL.bb,'''') as fcuno');
    SQL.Add('	   ,IsNull(ZSZL.fpdz,'''') as fadd1');
    SQL.Add('	   ,IsNull(ZSZL.fpdz,'''') as fadd2');
    SQL.Add('	   ,IsNull(ZSZL.yjdz,'''') as fadd3');
    SQL.Add('	   ,''供應商''  as fcbty');
    SQL.Add('	   ,6 as ftaxs');
    SQL.Add('	   ,''應付'' as fcrty');
    SQL.Add('	   ,31 as fenda');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.ZSZL as ZSZL');
    SQL.Add('where 1=1');
    SQL.Add(') ZSZL ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;
//客戶筆數檢查
procedure TERP2SIMIS.ZSZL2a0cbtr2_Checck();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select * from (');
    SQL.Add('select fcbno,fdati,fcbna,ROW_NUMBER() over (PARTITION BY fcbno ORDER BY fdati desc) as fsequ  from a0cbtr ');
    SQL.Add('where fcbty=''客戶'' ');
    SQL.Add(') a0cbtr');
    SQL.Add('where fsequ=1');
    SQL.Add(') a0cbtr ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select ');
    SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus');
    SQL.Add('	   ,KFZL.kfdh as fcbno');
    SQL.Add('	   ,IsNull(KFZL.kfjc,'''') as fcbna');
    SQL.Add('	   ,IsNull(KFZL.kfqm,'''') as fcbfn');
    SQL.Add('	   ,IsNull(KFZL.fzr,'''') as fboss');
    SQL.Add('	   ,IsNull(KFZL.llr1,'''') as fcoma');
    SQL.Add('	   ,IsNull(KFZL.dh,'''') as ftel1');
    SQL.Add('	   ,IsNull(KFZL.cz,'''') as ffax1');
    SQL.Add('	   ,IsNull(KFZL.tybh,'''') as fidno');
    SQL.Add('	   ,IsNull(KFZL.bb,'''') as fcuno');
    SQL.Add('	   ,IsNull(KFZL.fpdz,'''') as fadd1');
    SQL.Add('	   ,IsNull(KFZL.fpdz,'''') as fadd2');
    SQL.Add('	   ,IsNull(KFZL.yjdz,'''') as fadd3');
    SQL.Add('	   ,''客戶''  as fcbty');
    SQL.Add('	   ,6 as ftaxs');
    SQL.Add('	   ,''應收'' as fcrty');
    SQL.Add('	   ,31 as fenda');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KFZL as KFZL');
    SQL.Add(') ZSZL ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;
//員工筆數檢查
procedure TERP2SIMIS.ZSZL2a0cbtr3_Checck();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select * from (');
    SQL.Add('select fcbno,fdati,fcbna,ROW_NUMBER() over (PARTITION BY fcbno ORDER BY fdati desc) as fsequ  from a0cbtr ');
    SQL.Add('where fcbty=''員工'' ');
    SQL.Add(') a0cbtr');
    SQL.Add('where fsequ=1');
    SQL.Add(') a0cbtr ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select ');
    SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus');
    SQL.Add('	   ,Busers.USERID as fcbno');
    SQL.Add('	   ,Busers.USERNAME as fcbna');
    SQL.Add('	   ,Busers.USERNAME as fcbfn');
    SQL.Add('	   ,'''' as fboss');
    SQL.Add('	   ,'''' as fcoma');
    SQL.Add('	   ,'''' as ftel1');
    SQL.Add('	   ,'''' as ffax1');
    SQL.Add('	   ,'''' as fidno');
    SQL.Add('	   ,''''as fcuno');
    SQL.Add('	   ,'''' as fadd1');
    SQL.Add('	   ,'''' as fadd2');
    SQL.Add('	   ,'''' as fadd3');
    SQL.Add('	   ,''員工''  as fcbty');
    SQL.Add('	   ,6 as ftaxs');
    SQL.Add('	   ,''應付'' as fcrty');
    SQL.Add('	   ,31 as fenda');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.BUsers as Busers');
    SQL.Add(') ZSZL ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;
//部門+廠別筆數檢查
procedure TERP2SIMIS.BDeprtment2a0detr_Checck();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select * from (');
    SQL.Add('select fdeno,fdati,fdena,ROW_NUMBER() over (PARTITION BY fdeno ORDER BY fdati desc) as fsequ  from a0detr ');
    SQL.Add(') a0detr');
    SQL.Add('where fsequ=1');
    SQL.Add(') a0detr ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select ');
    SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus');
    SQL.Add('	   ,BDepartment.ID as fdeno');
    SQL.Add('	   ,BDepartment.DepName as fdena');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.BDepartment as BDepartment   ');
    SQL.Add('Union all ');
    SQL.Add('select ');
    SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus');
    SQL.Add('	   ,bgszl.gsdh as fdeno');
    SQL.Add('	   ,bgszl.gszwqm as fdena');
    SQL.Add('from  tyxuanDB.'+ERPDBName+'.dbo.bgszl');
    SQL.Add(') BDeprtment ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;
//幣別筆數檢查
procedure TERP2SIMIS.LBZLS2a0cutr_Checck();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select * from (');
    SQL.Add('select fcuno,fdati,fcuna,ROW_NUMBER() over (PARTITION BY fcuno ORDER BY fdati desc) as fsequ  from a0cutr ');
    SQL.Add(') a0detr');
    SQL.Add('where fsequ=1');
    SQL.Add(') a0cutr ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select ');
    SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati ');
    SQL.Add('	   ,''SYSTEM'' as fdaus ');
    SQL.Add('	   ,LBZLS.lbdh as fcuno ');
    SQL.Add('	   ,IsNull(LBZLS.ywsm,'''') as fcuna ');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.LBZLS LBZLS ');
    SQL.Add('where LBZLS.lb=''01'' ');
    SQL.Add(') LBZLS ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;
//製程筆數檢查
procedure TERP2SIMIS.SCGXDY2ct01tr_Checck();
begin

  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select * from (');
    SQL.Add('select fstno,fdati,fstna,ROW_NUMBER() over (PARTITION BY fstno ORDER BY fdati desc) as fsequ  from ct01tr ');
    SQL.Add(') ct01tr');
    SQL.Add('where fsequ=1');
    SQL.Add(') ct01tr ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select ');
    SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus');
    SQL.Add('    ,SCGXDY.GXLB as fstno');
    SQL.Add('	   ,IsNull(SCGXDY.CMEMO,'''') as fstna');
    SQL.Add('from (select GXLB,Max(CMEMO) as CMEMO from tyxuanDB.'+ERPDBName+'.dbo.SCGXDY Group by GXLB ) SCGXDY');
    SQL.Add(') SCGXDY ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;

end;
//BOM 產品結構 筆數檢查
procedure TERP2SIMIS.XXZLS2c15tr_Checck();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select * from (');
    SQL.Add('select fpdno,fdati,funiq,fpdna,ROW_NUMBER() over (PARTITION BY fpdno,funiq ORDER BY fdati desc) as fsequ  from c15tr ');
    SQL.Add(') c15tr');
    SQL.Add('where fsequ=1');
    SQL.Add(') c15tr ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*) from (');
    SQL.Add('select ');
    SQL.Add('    replace(convert(varchar(8), Getdate(), 112)+convert(varchar(8), Getdate(), 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus  ');
    SQL.Add('    ,XXZLS.XieXing+XXZLS.SheHao as fpdno');
    SQL.Add('	   ,Convert(varchar,XXZLS.USERDATE,111) as fdate');
    SQL.Add('	   ,XXZLS.BWBH as funiq');
    SQL.Add('	   ,XXZLS.fsequ');
    SQL.Add('	   ,IsNull(XXZLS.ARTICLE,'''') as fpdna');
    SQL.Add('	   ,''PRS'' as fpdun');
    SQL.Add('	   ,IsNull(XXZLS.CLBH,'''') as fpdn1');
    SQL.Add('	   ,IsNull(XXZLS.dwbh,'''') as fpdu1');
    SQL.Add('	   ,IsNull(XXZLS.CLSL,0.0) as favus');
    SQL.Add('	   ,IsNull(XXZLS.LOSS,0.0) as fdeve');
    SQL.Add('from ( ');
    SQL.Add('select XXZLS.*,ROW_NUMBER() over (PARTITION BY XieXing,SheHao ORDER BY CLBH desc) as fsequ from (');
    SQL.Add('Select XXZLS.XieXing,XXZLS.SheHao,XXZLS.USERDATE,CLZL.dwbh,XXZLS.CLSL,XXZLS.LOSS,XXZL.ARTICLE,XXZLS.BWBH,XXZLS.CLBH');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.XXZLS XXZLS');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.XXZL on XXZL.XieXing=XXZLS.XieXing and XXZL.SheHao=XXZLS.SheHao');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL on CLZL.cldh=XXZLS.CLBH');
    SQL.Add('where XXZL.KHDH in ('+Default_Brand+') ');
    SQL.Add(') XXZLS) XXZLS');
    SQL.Add(') XXZLS ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;
//收料入庫單筆數檢查
procedure TERP2SIMIS.KCRK2c14tr_Checck();
begin
  if ChkDet.Checked=false then
  begin
    with ADOQuery1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select count(*),Sum(fcumo) as fcumo,Sum(fsamo) as fsamo from (');
      SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,c14tr.fdeno,c14tr.fdena,c14tr.fcbno,c14tr.fcbna,c14tr.fpdna,c14tr.fcuno,c14tr.frava,c14tr.fpdno,c14tr.fpdpr,c14tr.fbaqu,c14tr.fpdu2,c14tr.fcumo,c14tr.fsamo ');
      SQL.Add('from c14tr');
      SQL.Add('inner  join (');
      SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
      SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''01'' ');
      SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
      SQL.Add('where c14tr.fiono=''01'' ');
      SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
      SQL.Add(') c14tr');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
    with ADOQuery2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R  =Getdate()');
      SQL.Add('Select count(*),Sum(fcumo) as fcumo,Sum(fsamo) as fsamo from (');
      //
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''01'' as fiono');
      SQL.Add('	   ,Convert(varchar,KCRKS.RKUSERDATE,111) as fdate');
      SQL.Add('	   ,KCRKS.RKNO as flino');
      SQL.Add('	   ,KCRKS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(KCRKS.GSBH,'''') as fdeno');
      SQL.Add('	   ,IsNull(KCRKS.gszwqm,'''') as fdena');
      SQL.Add('	   ,IsNull(KCRKS.ZSBH,'''') as fcbno');
      SQL.Add('	   ,IsNull(KCRKS.zsjc,'''') as fcbna');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then ''USD'' else ''VND'' end  as fcuno');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then  KCRKS.CWHL else 1 end as frava');
      SQL.Add('	   ,IsNull(KCRKS.CGUSERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(KCRKS.CGUSERNAME,'''') as fcba1');
      SQL.Add('	   ,KCRKS.CLBH as fpdno');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USPrice else KCRKS.VNPrice end as fpdpr');
      SQL.Add('	   ,KCRKS.Qty as fbaqu');
      SQL.Add('	   ,IsNull(KCRKS.dwbh,'''') as fpdu2');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USACC else KCRKS.VNACC  end  as fcumo');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.VNACC else KCRKS.VNACC  end  as fsamo');
      SQL.Add('	   ,KCRKS.ZSNO as flin1');
      SQL.Add('	   ,IsNull(KCRKS.ExchACC,0) as fodmo	  ');
      SQL.Add('	   ,6 as ftaxs ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select  KCRKS.*,ROW_NUMBER() over (PARTITION BY RKNO ORDER BY CLBH desc) as fsequ from (');
      SQL.Add('select KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc ,KCRK.USERDATE as RKUSERDATE,');
      SQL.Add('       KCRKS.CLBH,KCRKS.CWHL,cgzl.USERID as CGUSERID,Busers.USERNAME as CGUSERNAME,CLZL.dwbh,Sum(KCRKS.Qty) as Qty,');
      SQL.Add('       Max(KCRKS.VNPrice) as VNPrice,Max(KCRKS.USPrice) as USPrice,Sum(KCRKS.VNACC) as VNACC,Sum(KCRKS.USACC) as USACC,Sum(KCRKS.ExchACC) as ExchACC');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCRKS KCRKS');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCRK KCRK on KCRK.RKNO=KCRKS.RKNO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.bgszl bgszl on bgszl.gsdh=KCRK.GSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.zszl zszl on zszl.zsdh=KCRK.ZSBH   ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.cgzl cgzl on cgzl.CGNO=KCRK.ZSNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=cgzl.USERID');
      SQL.Add('where CLZL.cldh is not null and KCRK.YN_Date is not null');  //KCRK.CFMID<>''NO'' and KCRK.YN=''5'' and
      SQL.Add('    and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
      SQL.Add('Group by KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc,KCRK.USERDATE ,KCRKS.CLBH,CLZL.dwbh,KCRKS.CWHL,cgzl.USERID,Busers.USERNAME ) KCRKS');
      SQL.Add(') KCRKS ');
      SQL.Add(') KCRK ');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
  end else  if ChkDet.Checked=true then
  begin
    with ADOQuery3 do
    begin
      Active:=false;
      SQL.Clear;
      if RB3.Checked=true then
      begin
        SQL.Add('Declare @fdati_R  smalldatetime');
        SQL.Add('set @fdati_R  =Getdate()');
        SQL.Add('Select * from (');
        //
        SQL.Add('select ');
        SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
        SQL.Add('	   ,''SYSTEM'' as fdaus ');
        SQL.Add('	   ,''01'' as fiono');
        SQL.Add('	   ,Convert(varchar,KCRKS.RKUSERDATE,111) as fdate');
        SQL.Add('	   ,KCRKS.RKNO as flino');
        SQL.Add('	   ,KCRKS.fsequ as fsequ');
        SQL.Add('	   ,IsNull(KCRKS.GSBH,'''') as fdeno');
        SQL.Add('	   ,IsNull(KCRKS.gszwqm,'''') as fdena');
        SQL.Add('	   ,IsNull(KCRKS.ZSBH,'''') as fcbno');
        SQL.Add('	   ,IsNull(KCRKS.zsjc,'''') as fcbna');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then ''USD'' else ''VND'' end  as fcuno');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then  KCRKS.CWHL else 1 end as frava');
        SQL.Add('	   ,IsNull(KCRKS.CGUSERID,'''') as fcbo1');
        SQL.Add('	   ,IsNull(KCRKS.CGUSERNAME,'''') as fcba1');
        SQL.Add('	   ,KCRKS.CLBH as fpdno');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USPrice else KCRKS.VNPrice end as fpdpr');
        SQL.Add('	   ,KCRKS.Qty as fbaqu');
        SQL.Add('	   ,IsNull(KCRKS.dwbh,'''') as fpdu2');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USACC else KCRKS.VNACC  end  as fcumo');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.VNACC else KCRKS.VNACC  end  as fsamo');
        SQL.Add('	   ,KCRKS.ZSNO as flin1');
        SQL.Add('	   ,IsNull(KCRKS.ExchACC,0) as fodmo	  ');
        SQL.Add('	   ,6 as ftaxs ');
        SQL.Add('from ');
        SQL.Add('(');
        SQL.Add('select  KCRKS.*,ROW_NUMBER() over (PARTITION BY RKNO ORDER BY CLBH desc) as fsequ from (');
        SQL.Add('select KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc ,KCRK.USERDATE as RKUSERDATE,');
        SQL.Add('       KCRKS.CLBH,KCRKS.CWHL,cgzl.USERID as CGUSERID,Busers.USERNAME as CGUSERNAME,CLZL.dwbh,Sum(KCRKS.Qty) as Qty,');
        SQL.Add('       Max(KCRKS.VNPrice) as VNPrice,Max(KCRKS.USPrice) as USPrice,Sum(KCRKS.VNACC) as VNACC,Sum(KCRKS.USACC) as USACC,Sum(KCRKS.ExchACC) as ExchACC');
        SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCRKS KCRKS');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCRK KCRK on KCRK.RKNO=KCRKS.RKNO ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.bgszl bgszl on bgszl.gsdh=KCRK.GSBH ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.zszl zszl on zszl.zsdh=KCRK.ZSBH   ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.cgzl cgzl on cgzl.CGNO=KCRK.ZSNO');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=cgzl.USERID');
        SQL.Add('where CLZL.cldh is not null and KCRK.YN_Date is not null');  //KCRK.CFMID<>''NO'' and KCRK.YN=''5'' and
        SQL.Add('    and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        SQL.Add('Group by KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc,KCRK.USERDATE ,KCRKS.CLBH,CLZL.dwbh,KCRKS.CWHL,cgzl.USERID,Busers.USERNAME ) KCRKS');
        SQL.Add(') KCRKS ');
        //
        SQL.Add(') A');
        SQL.Add('left join (');
        //
        SQL.Add('  select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,c14tr.fdeno,c14tr.fdena,c14tr.fcbno,c14tr.fcbna,c14tr.fpdna,c14tr.fcuno,c14tr.frava,c14tr.fpdno,c14tr.fpdpr,c14tr.fbaqu,c14tr.fpdu2,c14tr.fcumo,c14tr.fsamo ');
        SQL.Add('  from c14tr');
        SQL.Add('  inner  join (');
        SQL.Add('	   select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	     select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''01'' ');
        SQL.Add('	   ) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
        SQL.Add('  where c14tr.fiono=''01'' ');
        SQL.Add('     and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') B on A.flino=B.flino collate  Chinese_Taiwan_Stroke_BIN and A.fsequ=B.fsequ');
        SQL.Add('where B.flino is null');
      end else if RB4.Checked=true then
      begin
        SQL.Add('Declare @fdati_R  smalldatetime');
        SQL.Add('set @fdati_R  =Getdate()');
        SQL.Add('Select * from (');
        //
        SQL.Add('  select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,c14tr.fdeno,c14tr.fdena,c14tr.fcbno,c14tr.fcbna,c14tr.fpdna,c14tr.fcuno,c14tr.frava,c14tr.fpdno,c14tr.fpdpr,c14tr.fbaqu,c14tr.fpdu2,c14tr.fcumo,c14tr.fsamo ');
        SQL.Add('  from c14tr');
        SQL.Add('  inner  join (');
        SQL.Add('	   select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	     select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''01'' ');
        SQL.Add('	   ) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
        SQL.Add('  where c14tr.fiono=''01'' ');
        SQL.Add('     and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') A');
        SQL.Add('left join (');
        //
        SQL.Add('select ');
        SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
        SQL.Add('	   ,''SYSTEM'' as fdaus ');
        SQL.Add('	   ,''01'' as fiono');
        SQL.Add('	   ,Convert(varchar,KCRKS.RKUSERDATE,111) as fdate');
        SQL.Add('	   ,KCRKS.RKNO as flino');
        SQL.Add('	   ,KCRKS.fsequ as fsequ');
        SQL.Add('	   ,IsNull(KCRKS.GSBH,'''') as fdeno');
        SQL.Add('	   ,IsNull(KCRKS.gszwqm,'''') as fdena');
        SQL.Add('	   ,IsNull(KCRKS.ZSBH,'''') as fcbno');
        SQL.Add('	   ,IsNull(KCRKS.zsjc,'''') as fcbna');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then ''USD'' else ''VND'' end  as fcuno');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then  KCRKS.CWHL else 1 end as frava');
        SQL.Add('	   ,IsNull(KCRKS.CGUSERID,'''') as fcbo1');
        SQL.Add('	   ,IsNull(KCRKS.CGUSERNAME,'''') as fcba1');
        SQL.Add('	   ,KCRKS.CLBH as fpdno');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USPrice else KCRKS.VNPrice end as fpdpr');
        SQL.Add('	   ,KCRKS.Qty as fbaqu');
        SQL.Add('	   ,IsNull(KCRKS.dwbh,'''') as fpdu2');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USACC else KCRKS.VNACC  end  as fcumo');
        SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.VNACC else KCRKS.VNACC  end  as fsamo');
        SQL.Add('	   ,KCRKS.ZSNO as flin1');
        SQL.Add('	   ,IsNull(KCRKS.ExchACC,0) as fodmo	  ');
        SQL.Add('	   ,6 as ftaxs ');
        SQL.Add('from ');
        SQL.Add('(');
        SQL.Add('select  KCRKS.*,ROW_NUMBER() over (PARTITION BY RKNO ORDER BY CLBH desc) as fsequ from (');
        SQL.Add('select KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc ,KCRK.USERDATE as RKUSERDATE,');
        SQL.Add('       KCRKS.CLBH,KCRKS.CWHL,cgzl.USERID as CGUSERID,Busers.USERNAME as CGUSERNAME,CLZL.dwbh,Sum(KCRKS.Qty) as Qty,');
        SQL.Add('       Max(KCRKS.VNPrice) as VNPrice,Max(KCRKS.USPrice) as USPrice,Sum(KCRKS.VNACC) as VNACC,Sum(KCRKS.USACC) as USACC,Sum(KCRKS.ExchACC) as ExchACC');
        SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCRKS KCRKS');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCRK KCRK on KCRK.RKNO=KCRKS.RKNO ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.bgszl bgszl on bgszl.gsdh=KCRK.GSBH ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.zszl zszl on zszl.zsdh=KCRK.ZSBH   ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.cgzl cgzl on cgzl.CGNO=KCRK.ZSNO');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=cgzl.USERID');
        SQL.Add('where CLZL.cldh is not null and KCRK.YN_Date is not null');  //KCRK.CFMID<>''NO'' and KCRK.YN=''5'' and
        SQL.Add('    and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        SQL.Add('Group by KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc,KCRK.USERDATE ,KCRKS.CLBH,CLZL.dwbh,KCRKS.CWHL,cgzl.USERID,Busers.USERNAME ) KCRKS');
        SQL.Add(') KCRKS ');
        //
        SQL.Add(') B on A.flino=B.flino collate  Chinese_Taiwan_Stroke_BIN and A.fsequ=B.fsequ');
        SQL.Add('where B.flino is null');
      end;
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
    PC1.ActivePageIndex:=3;
  end;
end;

//領料單筆數檢查
procedure TERP2SIMIS.KCLL2c14tr_Checck();
var LLNOSub:string;
begin

  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',Date())+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-1))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-2))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-3))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-4))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-5))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-6))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-7))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-8))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-9))+'999%'' ';
  LLNOSub:=LLNOSub+' and KCLLS.LLNO not like '''+FormatDateTime('YYYYMM',IncMonth(Date(),-10))+'999%'' ';
  //
  if ChkDet.Checked=false then
  begin
    with ADOQuery1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select count(*) as counti,Sum(fbaqu) as fbaqu from ('); //
      SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,c14tr.fdeno,c14tr.fdena,c14tr.fcbno,c14tr.fcbna,c14tr.fpdna,c14tr.fcuno,c14tr.frava,c14tr.fpdno,c14tr.fpdpr,c14tr.fbaqu,c14tr.fpdu2,c14tr.fcumo,c14tr.fsamo ');
      SQL.Add('from c14tr');
      SQL.Add('inner  join (');
      SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
      SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY fiono,flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono in (''54'',''58'') ');
      SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
      SQL.Add('where c14tr.fiono in (''54'',''58'') ');
      SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
      SQL.Add(') c14tr');

      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
    with ADOQuery2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_L  smalldatetime');
      SQL.Add('set @fdati_L  =Getdate()');
      SQL.Add('Select count(*) as counti,Sum(fbaqu) as fbaqu from ('); //
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_L, 112)+convert(varchar(8), @fdati_L, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('    ,Case when KCLLS.CWBH=''152'' and KCLLS.CKBH not in ('+DevelopCenter_CKBH+')  then ''54'' else ''58'' end as fiono ');
      SQL.Add('	   ,Convert(varchar,KCLLS.LLUSERDATE,111) as fdate');
      SQL.Add('	   ,KCLLS.LLNO as flino');
      SQL.Add('	   ,KCLLS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(KCLLS.DepID,'''') as fdeno');
      SQL.Add('	   ,IsNull(KCLLS.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(KCLLS.USERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(KCLLS.USERNAME,'''') as fcba1');
      SQL.Add('	   ,IsNull(KCLLS.fpdn1,'''') as fpdn1');
      SQL.Add('	   ,IsNull(KCLLS.fpda1,'''') as fpda1');
      SQL.Add('	   ,KCLLS.CLBH as fpdno');
      SQL.Add('	   ,KCLLS.Qty as fbaqu');
      SQL.Add('	   ,IsNull(KCLLS.SCBH,'''') as flin5');
      SQL.Add('from (');
      SQL.Add('select KCLLS.*,ROW_NUMBER() over (PARTITION BY LLNO ORDER BY CLBH,SCBH desc) as fsequ from (');
      SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate as LLUSERDATE,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,Sum(KCLLS.Qty) as Qty,KCLLS.SCBH,DDZL.XieXing+DDZL.SheHao as fpdn1,DDZL.ARTICLE as fpda1,KCZLS.CWBH ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCLLS KCLLS ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCLL KCLL on KCLL.LLNO=KCLLS.LLNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCLLS.CLBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZL DDZL on DDZL.DDBH=KCLLS.SCBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=KCLL.DepID');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=KCLLS.USERID ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCZLS KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH ');
      SQL.Add('where KCZLS.CWBH in (''152'',''153'') and CLZL.cldh is not null and KCLL.YN_Date is not null  '+LLNOSub); //KCLL.CFMID<>''NO'' and KCLL.YN=''5''  and
      SQL.Add('      and KCLL.CKBH not in ('+Total_CKBH+') '); //2022.2.18
      SQL.Add('      and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
      SQL.Add('Group by KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,KCLLS.SCBH,DDZL.XieXing,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE,KCZLS.CWBH ) KCLLS');
      SQL.Add(') KCLLS');
      SQL.Add(') KCLL ');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
  end else  if ChkDet.Checked=true then
  begin
    with ADOQuery3 do
    begin
      Active:=false;
      SQL.Clear;
      if RB3.Checked=true then
      begin
        SQL.Add('Declare @fdati_L  smalldatetime');
        SQL.Add('set @fdati_L  =Getdate()');
        SQL.Add('Select * from (');
        //
        SQL.Add('select ');
        SQL.Add('    replace(convert(varchar(8), @fdati_L, 112)+convert(varchar(8), @fdati_L, 114), '':'','''') as fdati');
        SQL.Add('	   ,''SYSTEM'' as fdaus ');
        SQL.Add('    ,Case when KCLLS.CWBH=''152'' and KCLLS.CKBH not in ('+DevelopCenter_CKBH+')  then ''54'' else ''58'' end as fiono ');
        SQL.Add('	   ,Convert(varchar,KCLLS.LLUSERDATE,111) as fdate');
        SQL.Add('	   ,KCLLS.LLNO as flino');
        SQL.Add('	   ,KCLLS.fsequ as fsequ');
        SQL.Add('	   ,IsNull(KCLLS.DepID,'''') as fdeno');
        SQL.Add('	   ,IsNull(KCLLS.DepName,'''') as fdena');
        SQL.Add('	   ,IsNull(KCLLS.USERID,'''') as fcbo1');
        SQL.Add('	   ,IsNull(KCLLS.USERNAME,'''') as fcba1');
        SQL.Add('	   ,IsNull(KCLLS.fpdn1,'''') as fpdn1');
        SQL.Add('	   ,IsNull(KCLLS.fpda1,'''') as fpda1');
        SQL.Add('	   ,KCLLS.CLBH as fpdno');
        SQL.Add('	   ,KCLLS.Qty as fbaqu');
        SQL.Add('	   ,IsNull(KCLLS.SCBH,'''') as flin5');
        SQL.Add('from (');
        SQL.Add('select KCLLS.*,ROW_NUMBER() over (PARTITION BY LLNO ORDER BY CLBH,SCBH desc) as fsequ from (');
        SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate as LLUSERDATE,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,Sum(KCLLS.Qty) as Qty,KCLLS.SCBH,DDZL.XieXing+DDZL.SheHao as fpdn1,DDZL.ARTICLE as fpda1,KCZLS.CWBH ');
        SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCLLS KCLLS ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCLL KCLL on KCLL.LLNO=KCLLS.LLNO');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCLLS.CLBH');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZL DDZL on DDZL.DDBH=KCLLS.SCBH');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=KCLL.DepID');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=KCLLS.USERID ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCZLS KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH ');
        SQL.Add('where KCZLS.CWBH in (''152'',''153'') and CLZL.cldh is not null and KCLL.YN_Date is not null  '+LLNOSub); //KCLL.CFMID<>''NO'' and KCLL.YN=''5''  and
        SQL.Add('      and KCLL.CKBH not in ('+Total_CKBH+') '); //2022.2.18
        SQL.Add('      and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        SQL.Add('Group by KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,KCLLS.SCBH,DDZL.XieXing,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE,KCZLS.CWBH ) KCLLS');
        SQL.Add(') KCLLS');
        //
        SQL.Add(') A');
        SQL.Add('left join (');
        //
        SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,c14tr.fdeno,c14tr.fdena,c14tr.fcbno,c14tr.fcbna,c14tr.fpdna,c14tr.fcuno,c14tr.frava,c14tr.fpdno,c14tr.fpdpr,c14tr.fbaqu,c14tr.fpdu2,c14tr.fcumo,c14tr.fsamo ');
        SQL.Add('from c14tr');
        SQL.Add('inner  join (');
        SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY fiono,flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono in (''54'',''58'') ');
        SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
        SQL.Add('where c14tr.fiono in (''54'',''58'') ');
        SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') B on A.flino= B.flino collate  Chinese_Taiwan_Stroke_BIN and A.fpdno=B.fpdno collate  Chinese_Taiwan_Stroke_BIN ');
        SQL.Add('where B.flino is null');
      end else if RB4.Checked=true then
      begin
        SQL.Add('Declare @fdati_L  smalldatetime');
        SQL.Add('set @fdati_L  =Getdate()');
        SQL.Add('Select * from (');
        //
        SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,c14tr.fdeno,c14tr.fdena,c14tr.fcbno,c14tr.fcbna,c14tr.fpdna,c14tr.fcuno,c14tr.frava,c14tr.fpdno,c14tr.fpdpr,c14tr.fbaqu,c14tr.fpdu2,c14tr.fcumo,c14tr.fsamo ');
        SQL.Add('from c14tr');
        SQL.Add('inner  join (');
        SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY fiono,flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono in (''54'',''58'') ');
        SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
        SQL.Add('where c14tr.fiono in (''54'',''58'') ');
        SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') A');
        SQL.Add('left join (');
        //
        SQL.Add('select ');
        SQL.Add('    replace(convert(varchar(8), @fdati_L, 112)+convert(varchar(8), @fdati_L, 114), '':'','''') as fdati');
        SQL.Add('	   ,''SYSTEM'' as fdaus ');
        SQL.Add('    ,Case when KCLLS.CWBH=''152'' and KCLLS.CKBH not in ('+DevelopCenter_CKBH+')   then ''54'' else ''58'' end as fiono ');
        SQL.Add('	   ,Convert(varchar,KCLLS.LLUSERDATE,111) as fdate');
        SQL.Add('	   ,KCLLS.LLNO as flino');
        SQL.Add('	   ,KCLLS.fsequ as fsequ');
        SQL.Add('	   ,IsNull(KCLLS.DepID,'''') as fdeno');
        SQL.Add('	   ,IsNull(KCLLS.DepName,'''') as fdena');
        SQL.Add('	   ,IsNull(KCLLS.USERID,'''') as fcbo1');
        SQL.Add('	   ,IsNull(KCLLS.USERNAME,'''') as fcba1');
        SQL.Add('	   ,IsNull(KCLLS.fpdn1,'''') as fpdn1');
        SQL.Add('	   ,IsNull(KCLLS.fpda1,'''') as fpda1');
        SQL.Add('	   ,KCLLS.CLBH as fpdno');
        SQL.Add('	   ,KCLLS.Qty as fbaqu');
        SQL.Add('	   ,IsNull(KCLLS.SCBH,'''') as flin5');
        SQL.Add('from (');
        SQL.Add('select KCLLS.*,ROW_NUMBER() over (PARTITION BY LLNO ORDER BY CLBH,SCBH desc) as fsequ from (');
        SQL.Add('select KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate as LLUSERDATE,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,Sum(KCLLS.Qty) as Qty,KCLLS.SCBH,DDZL.XieXing+DDZL.SheHao as fpdn1,DDZL.ARTICLE as fpda1,KCZLS.CWBH ');
        SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCLLS KCLLS ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCLL KCLL on KCLL.LLNO=KCLLS.LLNO');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCLLS.CLBH');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZL DDZL on DDZL.DDBH=KCLLS.SCBH');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=KCLL.DepID');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=KCLLS.USERID ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCZLS KCZLS on KCZLS.CLBH=KCLLS.CLBH and KCZLS.CKBH=KCLL.CKBH ');
        SQL.Add('where KCZLS.CWBH in (''152'',''153'') and CLZL.cldh is not null and KCLL.YN_Date is not null  '+LLNOSub); //KCLL.CFMID<>''NO'' and KCLL.YN=''5''  and
        SQL.Add('      and KCLL.CKBH not in ('+Total_CKBH+') ');
        SQL.Add('      and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        SQL.Add('Group by KCLL.CKBH,KCLLS.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.CFMDate,KCLL.USERID,Busers.USERNAME,KCLLS.CLBH,KCLLS.SCBH,DDZL.XieXing,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE,KCZLS.CWBH ) KCLLS');
        SQL.Add(') KCLLS');
        //
        SQL.Add(') B on A.flino= B.flino collate  Chinese_Taiwan_Stroke_BIN and A.fpdno=B.fpdno collate  Chinese_Taiwan_Stroke_BIN ');
        SQL.Add('where B.flino is null');
      end;
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
    PC1.ActivePageIndex:=3;
  end;
end;

//繳庫檢查筆數
procedure TERP2SIMIS.YWCP2c14tr_Checck();
begin
  //
  if ChkDet.Checked=false then
  begin
    with ADOQuery1 do
    begin
      Active:=false;
      SQL.Clear;
      //
      SQL.Add('Select count(*),Sum(fbaqu) as fbaqu from (');
      SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,fdeno,fdena,fpdna,fpdno,fbaqu ');
      SQL.Add('from c14tr');
      SQL.Add('inner  join (');
      SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
      SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''03'' ');
      SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
      SQL.Add('where c14tr.fiono=''03'' ');
      SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
      SQL.Add(') c14tr');

      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;

    with ADOQuery2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_I  smalldatetime');
      SQL.Add('set @fdati_I  =Getdate()');
      SQL.Add('Select count(*),Sum(fbaqu) as fbaqu from (');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_I, 112)+convert(varchar(8), @fdati_I, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,YWCP.INDATE,111) as fdate');
      SQL.Add('	   ,YWCP.CARTONBAR as flino');
      SQL.Add('	   ,YWCP.CARTONNO as fsequ');
      SQL.Add('	   ,IsNull(YWCP.DepNO,'''') as fdeno');
      SQL.Add('	   ,IsNull(YWCP.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(YWCP.USERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(YWCP.USERNAME,'''') as fcba1');
      SQL.Add('	   ,IsNull(YWCP.fpdno,'''') as fpdno');
      SQL.Add('	   ,IsNull(YWCP.fpdna,'''') as fpdna');
      SQL.Add('	   ,''PRS'' as fpdu2');
      SQL.Add('	   ,YWCP.Qty as fbaqu');
      SQL.Add('	   ,IsNull(YWCP.DDBH,'''') as flin5');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select YWCP.*,ROW_NUMBER() over (PARTITION BY DDBH ORDER BY DDBH desc) as fsequ from (');
      SQL.Add('select YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,Max(YWCP.DepNO) as DepNO,Max(BDepartment.DepName) as DepName,Max(YWCP.INDATE) as INDATE,Max(YWCP.USERID) as USERID,');
      SQL.Add('       Max(Busers.USERNAME) as USERNAME,Sum(YWCP.Qty) as Qty,DDZL.Pairs,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.YWCP YWCP ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.YWDD on YWDD.DDBH=YWCP.DDBH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZL on DDZL.DDBH=YWDD.YSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=YWCP.DepNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=YWCP.USERID ');
      SQL.Add('where YWCP.Qty>0');
      SQL.Add('     and convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
      SQL.Add('Group by YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ,DDZL.Pairs ) YWCP');
      SQL.Add(') YWCP');
      SQL.Add(') YWCP ');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
  end else  if ChkDet.Checked=true then
  begin
    with ADOQuery3 do
    begin
      Active:=false;
      SQL.Clear;
      if RB3.Checked=true then
      begin
        SQL.Add('Declare @fdati_I  smalldatetime');
        SQL.Add('set @fdati_I  =Getdate()');
        SQL.Add('Select * from (');
        //
        SQL.Add('select ');
        SQL.Add('    replace(convert(varchar(8), @fdati_I, 112)+convert(varchar(8), @fdati_I, 114), '':'','''') as fdati');
        SQL.Add('	   ,''SYSTEM'' as fdaus ');
        SQL.Add('	   ,''03'' as fiono');
        SQL.Add('	   ,Convert(varchar,YWCP.INDATE,111) as fdate');
        SQL.Add('	   ,YWCP.CARTONBAR as flino');
        SQL.Add('	   ,YWCP.CARTONNO as fsequ');
        SQL.Add('	   ,IsNull(YWCP.DepNO,'''') as fdeno');
        SQL.Add('	   ,IsNull(YWCP.DepName,'''') as fdena');
        SQL.Add('	   ,IsNull(YWCP.USERID,'''') as fcbo1');
        SQL.Add('	   ,IsNull(YWCP.USERNAME,'''') as fcba1');
        SQL.Add('	   ,IsNull(YWCP.fpdno,'''') as fpdno');
        SQL.Add('	   ,IsNull(YWCP.fpdna,'''') as fpdna');
        SQL.Add('	   ,''PRS'' as fpdu2');
        SQL.Add('	   ,YWCP.Qty as fbaqu');
        SQL.Add('	   ,IsNull(YWCP.DDBH,'''') as flin5');
        SQL.Add('from ');
        SQL.Add('(');
        SQL.Add('select YWCP.*,ROW_NUMBER() over (PARTITION BY DDBH ORDER BY DDBH desc) as fsequ from (');
        SQL.Add('select YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,Max(YWCP.DepNO) as DepNO,Max(BDepartment.DepName) as DepName,Max(YWCP.INDATE) as INDATE,Max(YWCP.USERID) as USERID,');
        SQL.Add('       Max(Busers.USERNAME) as USERNAME,Sum(YWCP.Qty) as Qty,DDZL.Pairs,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna ');
        SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.YWCP YWCP ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.YWDD on YWDD.DDBH=YWCP.DDBH');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZL on DDZL.DDBH=YWDD.YSBH ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=YWCP.DepNO');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=YWCP.USERID ');
        SQL.Add('where YWCP.Qty>0');
        SQL.Add('     and convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        SQL.Add('Group by YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ,DDZL.Pairs ) YWCP');
        SQL.Add(') YWCP');
        //
        SQL.Add(') A');
        SQL.Add('left join (');
        //
        SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,fdeno,fdena,fpdna,fpdno,fbaqu ');
        SQL.Add('from c14tr');
        SQL.Add('inner  join (');
        SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''03'' ');
        SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
        SQL.Add('where c14tr.fiono=''03'' ');
        SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') B on A.flino= B.flino collate  Chinese_Taiwan_Stroke_BIN ');
        SQL.Add('where B.flino is null');
      end else if RB4.Checked=true then
      begin
        SQL.Add('Declare @fdati_I  smalldatetime');
        SQL.Add('set @fdati_I  =Getdate()');
        SQL.Add('Select * from (');
        //
        SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,fdeno,fdena,fpdna,fpdno,fbaqu ');
        SQL.Add('from c14tr');
        SQL.Add('inner  join (');
        SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''03'' ');
        SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
        SQL.Add('where c14tr.fiono=''03'' ');
        SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') A');
        SQL.Add('left join (');
        //
        SQL.Add('select ');
        SQL.Add('    replace(convert(varchar(8), @fdati_I, 112)+convert(varchar(8), @fdati_I, 114), '':'','''') as fdati');
        SQL.Add('	   ,''SYSTEM'' as fdaus ');
        SQL.Add('	   ,''03'' as fiono');
        SQL.Add('	   ,Convert(varchar,YWCP.INDATE,111) as fdate');
        SQL.Add('	   ,YWCP.CARTONBAR as flino');
        SQL.Add('	   ,YWCP.CARTONNO as fsequ');
        SQL.Add('	   ,IsNull(YWCP.DepNO,'''') as fdeno');
        SQL.Add('	   ,IsNull(YWCP.DepName,'''') as fdena');
        SQL.Add('	   ,IsNull(YWCP.USERID,'''') as fcbo1');
        SQL.Add('	   ,IsNull(YWCP.USERNAME,'''') as fcba1');
        SQL.Add('	   ,IsNull(YWCP.fpdno,'''') as fpdno');
        SQL.Add('	   ,IsNull(YWCP.fpdna,'''') as fpdna');
        SQL.Add('	   ,''PRS'' as fpdu2');
        SQL.Add('	   ,YWCP.Qty as fbaqu');
        SQL.Add('	   ,IsNull(YWCP.DDBH,'''') as flin5');
        SQL.Add('from ');
        SQL.Add('(');
        SQL.Add('select YWCP.*,ROW_NUMBER() over (PARTITION BY DDBH ORDER BY DDBH desc) as fsequ from (');
        SQL.Add('select YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,Max(YWCP.DepNO) as DepNO,Max(BDepartment.DepName) as DepName,Max(YWCP.INDATE) as INDATE,Max(YWCP.USERID) as USERID,');
        SQL.Add('       Max(Busers.USERNAME) as USERNAME,Sum(YWCP.Qty) as Qty,DDZL.Pairs,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.ARTICLE as fpdna ');
        SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.YWCP YWCP ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.YWDD on YWDD.DDBH=YWCP.DDBH');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZL on DDZL.DDBH=YWDD.YSBH ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment  BDepartment on BDepartment.ID=YWCP.DepNO');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=YWCP.USERID ');
        SQL.Add('where YWCP.Qty>0');
        SQL.Add('     and convert(smalldatetime,convert(varchar,YWCP.INDATE,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        SQL.Add('Group by YWCP.CARTONBAR,YWCP.DDBH,YWCP.CARTONNO,DDZL.XieXing+DDZL.SheHao,DDZL.ARTICLE ,DDZL.Pairs ) YWCP');
        SQL.Add(') YWCP');
        //
        SQL.Add(') B on A.flino= B.flino collate  Chinese_Taiwan_Stroke_BIN ');
        SQL.Add('where B.flino is null');
      end;
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
    PC1.ActivePageIndex:=3;
  end;
  //
end;
//銷貨單檢查筆數
procedure TERP2SIMIS.INVOICE2c14tr_Check();
begin
  //
  if ChkDet.Checked=false then
  begin
    with ADOQuery1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select count(*),Sum(fbaqu) as fbaqu  from (');
      SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,fdeno,fdena,fpdna,fpdno,fbaqu ');
      SQL.Add('from c14tr');
      SQL.Add('inner  join (');
      SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
      SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''52'' ');
      SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
      SQL.Add('where c14tr.fiono=''52'' ');
      SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
      SQL.Add(') c14tr');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
    with ADOQuery2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_Ex  smalldatetime');
      SQL.Add('set @fdati_Ex =Getdate()');
      SQL.Add('Select count(*),Sum(fbaqu) as fbaqu from (');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''52'' as fiono');
      SQL.Add('	   ,Convert(varchar,INVOICE_D.INV_DATE,111) as fdate');
      SQL.Add('	   ,INVOICE_D.INV_NO as flino');
      SQL.Add('	   ,INVOICE_D.PACK_NO as fsequ');
      SQL.Add('	   ,''USD'' as fcuno');
      SQL.Add('	   ,6 as ftaxs');
      SQL.Add('	   ,'''+Default_GSBH+''' as fdeno');
      SQL.Add('	   ,'''+Default_GSBH_Name+''' as fdena');
      SQL.Add('	   ,INVOICE_D.UNIT_PRICE as fpdpr');
      SQL.Add('	   ,INVOICE_D.PAIRS as fbaqu');
      SQL.Add('	   ,''PRS'' as fpdu2');
      SQL.Add('	   ,INVOICE_D.AMOUNT as fcumo');
      SQL.Add('	   ,IsNull(INVOICE_D.PO,'''') as fcbpu');
      SQL.Add('	   ,IsNull(INVOICE_D.RYNO,'''') as flin1 ');
      SQL.Add('	   ,IsNull(INVOICE_D.fpdno,'''') as fpdno');
      SQL.Add('	   ,IsNull(INVOICE_D.KHBH,'''') as fcbno');
      SQL.Add('	   ,IsNull(INVOICE_D.kfjc,'''') as fcbna ');
      SQL.Add('from (');
      SQL.Add('select INVOICE_D.INV_NO,RYNO,convert(int,PACK_NO) as PACK_NO,PO,PAIRS,UNIT_PRICE,AMOUNT,INVOICE_M.INV_DATE ,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.KHBH,KFZL.kfjc');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_D INVOICE_D');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.INVOICE_M INVOICE_M on INVOICE_M.INV_NO=INVOICE_D.INV_NO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZL DDZL on DDZL.DDBH=INVOICE_D.RYNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on DDZL.KHBH=KFZL.kfdh');
      SQL.Add('where convert(smalldatetime,convert(varchar,INVOICE_M.INV_DATE,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+'''');
      SQL.Add(') INVOICE_D ');
      SQL.Add(') INVOICE_D ');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
  end else  if ChkDet.Checked=true then
  begin
    with ADOQuery3 do
    begin
      Active:=false;
      SQL.Clear;
      if RB3.Checked=true then
      begin
        SQL.Add('Declare @fdati_Ex  smalldatetime');
        SQL.Add('set @fdati_Ex  =Getdate()');
        SQL.Add('Select * from (');
        //
        SQL.Add('select ');
        SQL.Add('    replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), '':'','''') as fdati');
        SQL.Add('	   ,''SYSTEM'' as fdaus ');
        SQL.Add('	   ,''52'' as fiono');
        SQL.Add('	   ,Convert(varchar,INVOICE_D.INV_DATE,111) as fdate');
        SQL.Add('	   ,INVOICE_D.INV_NO as flino');
        SQL.Add('	   ,INVOICE_D.PACK_NO as fsequ');
        SQL.Add('	   ,''USD'' as fcuno');
        SQL.Add('	   ,6 as ftaxs');
        SQL.Add('	   ,'''+Default_GSBH+''' as fdeno');
        SQL.Add('	   ,'''+Default_GSBH_Name+''' as fdena');
        SQL.Add('	   ,INVOICE_D.UNIT_PRICE as fpdpr');
        SQL.Add('	   ,INVOICE_D.PAIRS as fbaqu');
        SQL.Add('	   ,''PRS'' as fpdu2');
        SQL.Add('	   ,INVOICE_D.AMOUNT as fcumo');
        SQL.Add('	   ,IsNull(INVOICE_D.PO,'''') as fcbpu');
        SQL.Add('	   ,IsNull(INVOICE_D.RYNO,'''') as flin1 ');
        SQL.Add('	   ,IsNull(INVOICE_D.fpdno,'''') as fpdno');
        SQL.Add('	   ,IsNull(INVOICE_D.KHBH,'''') as fcbno');
        SQL.Add('	   ,IsNull(INVOICE_D.kfjc,'''') as fcbna ');
        SQL.Add('from (');
        SQL.Add('select INVOICE_D.INV_NO,RYNO,convert(int,PACK_NO) as PACK_NO,PO,PAIRS,UNIT_PRICE,AMOUNT,INVOICE_M.INV_DATE ,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.KHBH,KFZL.kfjc');
        SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_D INVOICE_D');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.INVOICE_M INVOICE_M on INVOICE_M.INV_NO=INVOICE_D.INV_NO ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZL DDZL on DDZL.DDBH=INVOICE_D.RYNO');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on DDZL.KHBH=KFZL.kfdh');
        SQL.Add('where convert(smalldatetime,convert(varchar,INVOICE_M.INV_DATE,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+'''');
        SQL.Add(') INVOICE_D ');
        //
        SQL.Add(') A');
        SQL.Add('left join (');
        //
        SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,fdeno,fdena,fpdna,fpdno,fbaqu ');
        SQL.Add('from c14tr');
        SQL.Add('inner  join (');
        SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''52'' ');
        SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
        SQL.Add('where c14tr.fiono=''52'' ');
        SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') B on A.flino=B.flino collate  Chinese_Taiwan_Stroke_BIN and A.fsequ=B.fsequ');
        SQL.Add('where B.flino is null');
      end else if RB4.Checked=true then
      begin
        SQL.Add('Declare @fdati_Ex  smalldatetime');
        SQL.Add('set @fdati_Ex  =Getdate()');
        SQL.Add('Select * from (');
        //
        SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,fdeno,fdena,fpdna,fpdno,fbaqu ');
        SQL.Add('from c14tr');
        SQL.Add('inner  join (');
        SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''52'' ');
        SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
        SQL.Add('where c14tr.fiono=''52'' ');
        SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') A');
        SQL.Add('left join (');
        //
        SQL.Add('select ');
        SQL.Add('    replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), '':'','''') as fdati');
        SQL.Add('	   ,''SYSTEM'' as fdaus ');
        SQL.Add('	   ,''52'' as fiono');
        SQL.Add('	   ,Convert(varchar,INVOICE_D.INV_DATE,111) as fdate');
        SQL.Add('	   ,INVOICE_D.INV_NO as flino');
        SQL.Add('	   ,INVOICE_D.PACK_NO as fsequ');
        SQL.Add('	   ,''USD'' as fcuno');
        SQL.Add('	   ,6 as ftaxs');
        SQL.Add('	   ,'''+Default_GSBH+''' as fdeno');
        SQL.Add('	   ,'''+Default_GSBH_Name+''' as fdena');
        SQL.Add('	   ,INVOICE_D.UNIT_PRICE as fpdpr');
        SQL.Add('	   ,INVOICE_D.PAIRS as fbaqu');
        SQL.Add('	   ,''PRS'' as fpdu2');
        SQL.Add('	   ,INVOICE_D.AMOUNT as fcumo');
        SQL.Add('	   ,IsNull(INVOICE_D.PO,'''') as fcbpu');
        SQL.Add('	   ,IsNull(INVOICE_D.RYNO,'''') as flin1 ');
        SQL.Add('	   ,IsNull(INVOICE_D.fpdno,'''') as fpdno');
        SQL.Add('	   ,IsNull(INVOICE_D.KHBH,'''') as fcbno');
        SQL.Add('	   ,IsNull(INVOICE_D.kfjc,'''') as fcbna ');
        SQL.Add('from (');
        SQL.Add('select INVOICE_D.INV_NO,RYNO,convert(int,PACK_NO) as PACK_NO,PO,PAIRS,UNIT_PRICE,AMOUNT,INVOICE_M.INV_DATE ,DDZL.XieXing+DDZL.SheHao as fpdno,DDZL.KHBH,KFZL.kfjc');
        SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_D INVOICE_D');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.INVOICE_M INVOICE_M on INVOICE_M.INV_NO=INVOICE_D.INV_NO ');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZL DDZL on DDZL.DDBH=INVOICE_D.RYNO');
        SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on DDZL.KHBH=KFZL.kfdh');
        SQL.Add('where convert(smalldatetime,convert(varchar,INVOICE_M.INV_DATE,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+'''');
        SQL.Add(') INVOICE_D ');
        //
        SQL.Add(') B on A.flino=B.flino collate  Chinese_Taiwan_Stroke_BIN and A.fsequ=B.fsequ ');
        SQL.Add('where B.flino is null');
      end;
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
    PC1.ActivePageIndex:=3;
  end;
  //
end;
//製令工單檢查筆數
procedure TERP2SIMIS.SMDD2pr15tr_Check();
begin
  if ChkDet.Checked=false then
  begin
    with ADOQuery1 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Select count(*),Sum(fquan) as fbaqu from (');
      SQL.Add('select pr15tr.flino,pr15tr.fdati,pr15tr.fsequ,pr15tr.fdate,pr15tr.fdeno,fdena,fstno,fquan,fdat5,finda,frela ');
      SQL.Add('from pr15tr');
      SQL.Add('inner  join (');
      SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
      SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from pr15trmode where pr15trmode.fiono=''03'' ');
      SQL.Add('	) pr15trmode where fsequi=1 ) pr15trmode where  pr15trmode.fmode<>''D''   ) pr15trmode on  pr15trmode.fiono=pr15tr.fiono and pr15trmode.fdate=pr15tr.fdate and pr15trmode.fdati=pr15tr.fdati and pr15trmode.flino=pr15tr.flino ');
      SQL.Add('where pr15tr.fiono=''03'' ');
      SQL.Add('   and convert(smalldatetime,convert(varchar,pr15tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
      SQL.Add(') pr15tr');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
    with ADOQuery2 do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_ZL  smalldatetime');
      SQL.Add('set @fdati_ZL  =Getdate()');
      SQL.Add('Select count(*),Sum(fquan) as fquan from (');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_ZL, 112)+convert(varchar(8), @fdati_ZL, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''03'' as fiono');
      SQL.Add('	   ,Convert(varchar,SMDD.USERDate,111) as fdate');
      SQL.Add('	   ,SMDD.fsequ as fsequ');
      SQL.Add('	   ,IsNull(SMDD.YSBH,'''') as flino');
      SQL.Add('	   ,IsNull(SMDD.DepNO,'''') as fdeno');
      SQL.Add('	   ,IsNull(SMDD.DepName,'''') as fdena');
      SQL.Add('	   ,IsNull(SMDD.GXLB,'''') as fstno');
      SQL.Add('	   ,Convert(varchar,SMDD.PlanDate,111)  as fdat5');
      SQL.Add('	   ,Convert(varchar,SMDD.PlanEDate,111)  as finda');
      SQL.Add('	   ,SMDD.Qty as fquan');
      SQL.Add('    ,IsNull(SMDD.YSBH,'''') as frela ');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select SMDD.*,ROW_NUMBER() over (PARTITION BY YSBH ORDER BY GXLB desc) as fsequ from (');
      SQL.Add('select SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName,Min(PlanDate) as PlanDate,Max(PlanEdate) as PlanEDate,Sum(Qty) as Qty,Max(CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112)) as USERDate');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SMDD SMDD');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment BDepartment on BDepartment.ID=SMDD.DepNO');
      SQL.Add('where  SMDD.GXLB in (''C'',''S'',''A'') and SMDD.PlanDate is not null and SMDD.PlanEdate is not null ');
      SQL.Add('      and CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
      SQL.Add('Group by SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName  ) SMDD');
      SQL.Add(') SMDD ');
      SQL.Add(') SMDD ');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
  //
  end else  if ChkDet.Checked=true then
  begin
    with ADOQuery3 do
    begin
      Active:=false;
      SQL.Clear;
      if RB3.Checked=true then
      begin
        SQL.Add('Declare @fdati_ZL  smalldatetime');
        SQL.Add('set @fdati_ZL  =Getdate()');
        SQL.Add('Select * from (');
        SQL.Add('	select ');
        SQL.Add('		replace(convert(varchar(8), @fdati_ZL, 112)+convert(varchar(8), @fdati_ZL, 114), '':'','''') as fdati');
        SQL.Add('		   ,''SYSTEM'' as fdaus ');
        SQL.Add('		   ,''03'' as fiono');
        SQL.Add('		   ,Convert(varchar,SMDD.USERDate,111) as fdate');
        SQL.Add('		   ,SMDD.fsequ as fsequ');
        SQL.Add('		   ,IsNull(SMDD.YSBH,'''') as flino');
        SQL.Add('		   ,IsNull(SMDD.DepNO,'''') as fdeno');
        SQL.Add('		   ,IsNull(SMDD.DepName,'''') as fdena');
        SQL.Add('		   ,IsNull(SMDD.GXLB,'''') as fstno');
        SQL.Add('		   ,Convert(varchar,SMDD.PlanDate,111)  as fdat5');
        SQL.Add('		   ,Convert(varchar,SMDD.PlanEDate,111)  as finda');
        SQL.Add('		   ,SMDD.Qty as fquan');
        SQL.Add('		,IsNull(SMDD.YSBH,'''') as frela ');
        SQL.Add('	from ');
        SQL.Add('	(');
        SQL.Add('	select SMDD.*,ROW_NUMBER() over (PARTITION BY YSBH ORDER BY GXLB desc) as fsequ from (');
        SQL.Add('	select SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName,Min(PlanDate) as PlanDate,Max(PlanEdate) as PlanEDate,Sum(Qty) as Qty,Max(CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112)) as USERDate');
        SQL.Add('	from tyxuanDB.'+ERPDBName+'.dbo.SMDD SMDD');
        SQL.Add('	left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment BDepartment on BDepartment.ID=SMDD.DepNO');
        SQL.Add('	where  SMDD.GXLB in (''C'',''S'',''A'') and SMDD.PlanDate is not null and SMDD.PlanEdate is not null ');
        SQL.Add('		  and CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        SQL.Add('	Group by SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName  ) SMDD');
        SQL.Add('	) SMDD ');
        SQL.Add(') A');
        SQL.Add('left join (');
        //
        SQL.Add('select pr15tr.flino,pr15tr.fdati,pr15tr.fsequ,pr15tr.fdate,pr15tr.fdeno,fdena,fstno,fquan,fdat5,finda,frela ');
        SQL.Add('from pr15tr');
        SQL.Add('inner  join (');
        SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from pr15trmode where pr15trmode.fiono=''03'' ');
        SQL.Add('	) pr15trmode where fsequi=1 ) pr15trmode where  pr15trmode.fmode<>''D''   ) pr15trmode on  pr15trmode.fiono=pr15tr.fiono and pr15trmode.fdate=pr15tr.fdate and pr15trmode.fdati=pr15tr.fdati and pr15trmode.flino=pr15tr.flino ');
        SQL.Add('where pr15tr.fiono=''03'' ');
        SQL.Add('   and convert(smalldatetime,convert(varchar,pr15tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') B on A.flino=B.flino collate  Chinese_Taiwan_Stroke_BIN and A.fstno=B.fstno collate  Chinese_Taiwan_Stroke_BIN');
        SQL.Add('where B.flino is null');
      end else if RB4.Checked=true then
      begin
        SQL.Add('Declare @fdati_ZL  smalldatetime');
        SQL.Add('set @fdati_ZL  =Getdate()');
        SQL.Add('Select * from (');
        //
        SQL.Add('select pr15tr.flino,pr15tr.fdati,pr15tr.fsequ,pr15tr.fdate,pr15tr.fdeno,fdena,fstno,fquan,fdat5,finda,frela ');
        SQL.Add('from pr15tr');
        SQL.Add('inner  join (');
        SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
        SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from pr15trmode where pr15trmode.fiono=''03'' ');
        SQL.Add('	) pr15trmode where fsequi=1 ) pr15trmode where  pr15trmode.fmode<>''D''   ) pr15trmode on  pr15trmode.fiono=pr15tr.fiono and pr15trmode.fdate=pr15tr.fdate and pr15trmode.fdati=pr15tr.fdati and pr15trmode.flino=pr15tr.flino ');
        SQL.Add('where pr15tr.fiono=''03'' ');
        SQL.Add('   and convert(smalldatetime,convert(varchar,pr15tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        //
        SQL.Add(') A');
        SQL.Add('left join (');
        SQL.Add('	select ');
        SQL.Add('		replace(convert(varchar(8), @fdati_ZL, 112)+convert(varchar(8), @fdati_ZL, 114), '':'','''') as fdati');
        SQL.Add('		   ,''SYSTEM'' as fdaus ');
        SQL.Add('		   ,''03'' as fiono');
        SQL.Add('		   ,Convert(varchar,SMDD.USERDate,111) as fdate');
        SQL.Add('		   ,SMDD.fsequ as fsequ');
        SQL.Add('		   ,IsNull(SMDD.YSBH,'''') as flino');
        SQL.Add('		   ,IsNull(SMDD.DepNO,'''') as fdeno');
        SQL.Add('		   ,IsNull(SMDD.DepName,'''') as fdena');
        SQL.Add('		   ,IsNull(SMDD.GXLB,'''') as fstno');
        SQL.Add('		   ,Convert(varchar,SMDD.PlanDate,111)  as fdat5');
        SQL.Add('		   ,Convert(varchar,SMDD.PlanEDate,111)  as finda');
        SQL.Add('		   ,SMDD.Qty as fquan');
        SQL.Add('		,IsNull(SMDD.YSBH,'''') as frela ');
        SQL.Add('	from ');
        SQL.Add('	(');
        SQL.Add('	select SMDD.*,ROW_NUMBER() over (PARTITION BY YSBH ORDER BY GXLB desc) as fsequ from (');
        SQL.Add('	select SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName,Min(PlanDate) as PlanDate,Max(PlanEdate) as PlanEDate,Sum(Qty) as Qty,Max(CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112)) as USERDate');
        SQL.Add('	from tyxuanDB.'+ERPDBName+'.dbo.SMDD SMDD');
        SQL.Add('	left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment BDepartment on BDepartment.ID=SMDD.DepNO');
        SQL.Add('	where  SMDD.GXLB in (''C'',''S'',''A'') and SMDD.PlanDate is not null and SMDD.PlanEdate is not null ');
        SQL.Add('		  and CONVERT(date,CONVERT(varchar(50),(SMDD.SCYEAR*10000 + SMDD.SCMONTH*100 + 01)),112) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
        SQL.Add('	Group by SMDD.YSBH,SMDD.GXLB,SMDD.DepNO,BDepartment.DepName  ) SMDD');
        SQL.Add('	) SMDD ');
        SQL.Add(') B on A.flino=B.flino collate  Chinese_Taiwan_Stroke_BIN and A.fstno=B.fstno collate  Chinese_Taiwan_Stroke_BIN');
        SQL.Add('where B.flino is null');
      end;
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      Active:=true;
    end;
    PC1.ActivePageIndex:=3;
  end;
  //
end;

//日報表檢查筆數
procedure TERP2SIMIS.SCBB2pr13tr_Check();
begin

  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*),Sum(fquan) as fquan from (');
    SQL.Add('select pr13tr.flino,pr13tr.fdati,pr13tr.fsequ,pr13tr.fdate,fdeno,fdena,fstno,fquan,frela,fdat1 ');
    SQL.Add('from pr13tr');
    SQL.Add('inner  join (');
    SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
    SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from pr13trmode where pr13trmode.fiono=''03'' ');
    SQL.Add('	) pr13trmode where fsequi=1 ) pr13trmode where  pr13trmode.fmode<>''D''   ) pr13trmode on  pr13trmode.fiono=pr13tr.fiono and pr13trmode.fdate=pr13tr.fdate and pr13trmode.fdati=pr13tr.fdati and pr13trmode.flino=pr13tr.flino ');
    SQL.Add('where pr13tr.fiono=''03'' ');
    SQL.Add('   and convert(smalldatetime,convert(varchar,pr13tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
    SQL.Add(') pr13tr');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Declare @fdati_SB  smalldatetime');
    SQL.Add('set @fdati_SB  =Getdate()');
    SQL.Add('Select count(*),Sum(fquan) as fquan from (');
    SQL.Add('select ');
    SQL.Add('     replace(convert(varchar(8), @fdati_SB, 112)+convert(varchar(8), @fdati_SB, 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus ');
    SQL.Add('	   ,''03'' as fiono');
    SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdate');
    SQL.Add('	   ,SCBBS.fsequ as fsequ');
    SQL.Add('	   ,IsNull(SCBBS.ProNo,'''') as flino');
    SQL.Add('	   ,IsNull(SCBBS.DepNo,'''') as fdeno');
    SQL.Add('	   ,IsNull(SCBBS.DepName,'''') as fdena');
    SQL.Add('	   ,IsNull(SCBBS.GXLB,'''') as fstno');
    SQL.Add('	   ,IsNull(SCBBS.SCBH,'''') as frela');
    SQL.Add('	   ,SCBBS.Qty as fquan');
    SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdat1');
    SQL.Add('	   ,Convert(varchar,SCBBS.SCDate,111) as fdat2');
    SQL.Add('from ');
    SQL.Add('(');
    SQL.Add('select SCBBS.*,ROW_NUMBER() over (PARTITION BY ProNo ORDER BY GXLB desc) as fsequ from (');
    SQL.Add('select SCBBS.SCBH,SCBB.SCDate  ,SCBB.DepNo,BDepartment.DepName,SCBBS.GXLB,SCBB.ProNo,SCBBS.Qty');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.SCBB SCBB');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.SCBBS SCBBS on SCBB.ProNo=SCBBS.ProNo');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.BDepartment BDepartment on BDepartment.ID=SCBB.DepNo');
    SQL.Add('where SCBBS.GXLB in (''C'',''S'',''A'') ');
    SQL.Add('    and convert(smalldatetime,convert(varchar,SCBB.SCDate,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ) SCBBS');
    SQL.Add(') SCBBS ');
    SQL.Add(') SCBBS ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;

//加工單單筆數檢查
procedure TERP2SIMIS.JGZL2c14tr_Checck();
begin
  with ADOQuery1 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select count(*),Sum(fcumo) as fcumo,Sum(fsamo) as fsamo from (');
    SQL.Add('select c14tr.flino,c14tr.fdati,c14tr.fsequ,c14tr.fdate,c14tr.fdeno,c14tr.fdena,c14tr.fcbno,c14tr.fcbna,c14tr.fpdna,c14tr.fcuno,c14tr.frava,c14tr.fpdno,c14tr.fpdpr,c14tr.fbaqu,c14tr.fpdu2,c14tr.fcumo,c14tr.fsamo ');
    SQL.Add('from c14tr');
    SQL.Add('inner  join (');
    SQL.Add('	select fiono,fdate,flino,fdati from (select * from (');
    SQL.Add('	 select fiono,fdate,flino,fdati,fmode, ROW_NUMBER() over (PARTITION BY flino ORDER BY fdati desc) as fsequi from c14trmode where c14trmode.fiono=''05'' ');
    SQL.Add('	) c14trmode where fsequi=1 ) c14trmode where  c14trmode.fmode<>''D''   ) c14trmode on  c14trmode.fiono=c14tr.fiono and c14trmode.fdate=c14tr.fdate and c14trmode.fdati=c14tr.fdati and c14trmode.flino=c14tr.flino ');
    SQL.Add('where c14tr.fiono=''05'' ');
    SQL.Add('   and convert(smalldatetime,convert(varchar,c14tr.fdate,111))   between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
    SQL.Add(') c14tr');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
  with ADOQuery2 do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Declare @fdati_R  smalldatetime');
    SQL.Add('set @fdati_R  =Getdate()');
    SQL.Add('Select count(*),Sum(fcumo) as fcumo,Sum(fsamo) as fsamo from (');
    //
    SQL.Add('select ');
    SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
    SQL.Add('	   ,''SYSTEM'' as fdaus ');
    SQL.Add('	   ,''05'' as fiono');
    SQL.Add('	   ,Convert(varchar,JGZLS.JGUSERDATE,111) as fdate');
    SQL.Add('	   ,JGZLS.JGNO as flino');
    SQL.Add('	   ,JGZLS.fsequ as fsequ');
    SQL.Add('	   ,IsNull(JGZLS.GSBH,'''') as fdeno');
    SQL.Add('	   ,IsNull(JGZLS.gszwqm,'''') as fdena');
    SQL.Add('	   ,IsNull(JGZLS.ZSBH,'''') as fcbno');
    SQL.Add('	   ,IsNull(JGZLS.zsjc,'''') as fcbna');
    SQL.Add('	   ,case when JGZLS.USPrice is not null then ''USD'' else ''VND'' end  as fcuno');
    SQL.Add('	   ,case when JGZLS.USPrice is not null then  IsNull(JGZLS.CWHL,0.0) else 1 end as frava');
    SQL.Add('	   ,IsNull(JGZLS.JGUSERID,'''') as fcbo1');
    SQL.Add('	   ,IsNull(JGZLS.JGUSERNAME,'''') as fcba1');
    SQL.Add('	   ,JGZLS.CLBH as fpdno');
    SQL.Add('	   ,case when JGZLS.USPrice is not null then JGZLS.USPrice else IsNull(JGZLS.VNPrice,0.0) end as fpdpr');
    SQL.Add('	   ,JGZLS.Qty as fbaqu');
    SQL.Add('	   ,IsNull(JGZLS.dwbh,'''') as fpdu2');
    SQL.Add('	   ,case when JGZLS.USPrice is not null then IsNull(JGZLS.USACC,0.0) else IsNull(JGZLS.VNACC,0.0)  end  as fcumo');
    SQL.Add('	   ,case when JGZLS.USPrice is not null then IsNull(JGZLS.VNACC,0.0) else IsNull(JGZLS.VNACC,0.0)  end  as fsamo');
    SQL.Add('	   ,'''' as flin1');
    SQL.Add('	   ,0 as fodmo	  ');
    SQL.Add('	   ,6 as ftaxs ');
    SQL.Add('    ,''0501'' as fbano ');  //加工驗收後，該產品是直接入庫
    SQL.Add('from ');
    SQL.Add('(');
    SQL.Add('select JGZLS.*,ROW_NUMBER() over (PARTITION BY JGNO ORDER BY CLBH desc) as fsequ from (');
    SQL.Add('select JGZL.JGNO,JGZL.GSBH,bgszl.gszwqm,JGZL.ZSBH,zszl.zsjc ,JGZL.CFMDate1 as JGUSERDATE,');
    SQL.Add('       JGZLS.CLBH,JGZLS.CWHL,JGZL.USERID as JGUSERID,Busers.USERNAME as JGUSERNAME,CLZL.dwbh,');
    SQL.Add('       JGZLSS.ZLBH,JGZLSS.Qty,JGZLS.VNPrice,JGZLS.USPrice,JGZLSS.Qty*JGZLS.VNPrice as VNACC, JGZLSS.Qty*USPrice as USACC');
    SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.JGZLS JGZLS');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.JGZL JGZL on JGZL.JGNO=JGZLS.JGNO ');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.JGZLSS JGZLSS on JGZLS.JGNO=JGZLSS.JGNO and JGZLS.CLBH=JGZLSS.CLBH  ');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=JGZLS.CLBH ');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.bgszl bgszl on bgszl.gsdh=JGZL.GSBH ');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.zszl zszl on zszl.zsdh=JGZL.ZSBH    ');
    SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=JGZL.USERID ');
    SQL.Add('left join (select distinct flino from c14trmode where c14trmode.fiono=''05'' and  fdate>GetDate()-75) c14trmode on c14trmode.flino =JGZL.JGNO  collate  Chinese_Taiwan_Stroke_BIN   ');
    SQL.Add('where JGZLS.ZMLB=''ZZZZZZZZZZ'' and  CLZL.cldh is not null and JGZL.YN_Date is not null');
    SQL.Add('    and convert(smalldatetime,convert(varchar,JGZL.CFMDate1,111)) between '''+FormatDateTime('YYYY/MM/DD',DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP2.Date)+''' ');
    SQL.Add(') JGZLS');
    SQL.Add(') JGZLS ');
    SQL.Add(') JGZLS ');
    if CKSQLPrint.Checked=true then
      funcObj.WriteErrorLog(sql.text);
    Active:=true;
  end;
end;

//每日自動檢查
procedure TERP2SIMIS.DailyAutoRun();
begin
  CLZL2a0pdtr();
  ZSZL2a0cbtr();
  BDeprtment2a0detr();
  LBZLS2a0cutr();
  //SCGXDY2ct01tr();
  XXZLS2c15tr();
  //入庫
  KCRK2c14tr_M();
  KCRK2c14tr_D();
  KCRK2c14tr_N();
  //領料
  KCLL2c14tr_M();
  KCLL2c14tr_D();
  KCLL2c14tr_N();
  //成品繳庫
  YWCP2c14tr_M();
  YWCP2c14tr_D();
  YWCP2c14tr_N();
  //銷貨
  INVOICE2c14tr_M();
  INVOICE2c14tr_D();
  INVOICE2c14tr_N();
  //製令工單
  SMDD2pr15tr_M();
  SMDD2pr15tr_D();
  SMDD2pr15tr_N();
  //生產日報
  SCBB2pr13tr_M();
  SCBB2pr13tr_D();
  SCBB2pr13tr_N();

  //加工單日報
  JGZL2c14tr_M();
  JGZL2c14tr_D();
  JGZL2c14tr_N();

  //開發銷貨
//  DCINVOICE2c14tr_M();
//  DCINVOICE2c14tr_D();
  DCINVOICE2c14tr_N();

  //檢查是否會計跑月結Account N16了
  Check_Monthly2SIMIS();
  //
  Application.Terminate;
end;
procedure TERP2SIMIS.SpinEdit1Change(Sender: TObject);
begin
  NumDay:=inttostr(SpinEdit1.Value);
end;

//每個月總公司會計月結完畢   //進貨單 原材料入庫進貨  修改
procedure TERP2SIMIS.Monthly_KCRK2c14tr_M(sCBX1:string;sCBX2:String);
var iRes:integer;
    iYear,iMonth:integer;
    sdate,edate:TDate;
begin
  iYear:=strtoint(sCBX1);
  iMonth:=strtoint(sCBX2);
  sdate:=encodedate(iYear,iMonth,1);
  edate:=endofthemonth(sdate);
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      //新增單據
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R  =Getdate()');
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fdeno, fdena, fcbno, fcbna, fcuno, frava, fcbo1, fcba1, fpdno, fpdpr, fbaqu, fpdu2, fcumo, fsamo, flin1, fodmo, ftaxs, flcno, fbhno, f0sio, f0grd) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''01'' as fiono');
      SQL.Add('	   ,Convert(varchar,KCRKS.RKUSERDATE,111) as fdate');
      SQL.Add('	   ,KCRKS.RKNO as flino');
      SQL.Add('	   ,KCRKS.fsequ as fsequ');
      SQL.Add('	   ,IsNull(KCRKS.GSBH,'''') as fdeno');
      SQL.Add('	   ,IsNull(KCRKS.gszwqm,'''') as fdena');
      SQL.Add('	   ,IsNull(KCRKS.ZSBH,'''') as fcbno');
      SQL.Add('	   ,IsNull(KCRKS.zsjc,'''') as fcbna');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then ''USD'' else ''VND'' end  as fcuno');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then  IsNull(KCRKS.CWHL,0.0) else 1 end as frava');
      SQL.Add('	   ,IsNull(KCRKS.CGUSERID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(KCRKS.CGUSERNAME,'''') as fcba1');
      SQL.Add('	   ,KCRKS.CLBH as fpdno');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USPrice else KCRKS.VNPrice end as fpdpr');
      SQL.Add('	   ,KCRKS.Qty as fbaqu');
      SQL.Add('	   ,IsNull(KCRKS.dwbh,'''') as fpdu2');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then KCRKS.USACC else KCRKS.VNACC  end  as fcumo');
      SQL.Add('	   ,case when KCRKS.USPrice is not null then IsNull(KCRKS.VNACC,0.0) else IsNull(KCRKS.VNACC,0.0)  end  as fsamo');
      SQL.Add('	   ,KCRKS.ZSNO as flin1');
      SQL.Add('	   ,IsNull(KCRKS.ExchACC,0) as fodmo	  ');
      SQL.Add('	   ,6 as ftaxs ');
      //發票或INVOICE
      SQL.Add('    ,IsNull(KCRKS.DOCNO_NK,'''') as flcno ');
      SQL.Add('    ,IsNull(Substring(IsNull(KCRKS.DOCNO_HD,''''),1,10),'''') as fbhno '); //0928 科展尚未完覆 長度10
      //2021.11.8
      SQL.Add('    ,Substring(IsNull(KCRKS.GSBH,''''),1,3) as f0sio '); //廠別
      SQL.Add('    ,IsNull(KCRKS.KFJC,'''') as f0grd '); //品牌
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select  KCRKS.*,ROW_NUMBER() over (PARTITION BY RKNO ORDER BY CLBH desc) as fsequ from (');
      SQL.Add('select KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc ,KCRK.USERDATE as RKUSERDATE,');
      SQL.Add('       Case when KCRK.HGLB=''HD'' then KCRK.DOCNO else ''''  End as DOCNO_HD,Case when KCRK.HGLB in (''NK'',''KD'',''TC'') then KCRK.DOCNO else ''''  End as DOCNO_NK,  ');
      SQL.Add('       KCRKS.CLBH,KCRKS.CWHL,cgzl.USERID as CGUSERID,Busers.USERNAME as CGUSERNAME,CLZL.dwbh,Sum(KCRKS.Qty) as Qty,');
      SQL.Add('       Max(KCRKS.VNPrice) as VNPrice,Max(KCRKS.USPrice) as USPrice,Sum(KCRKS.VNACC) as VNACC,Sum(KCRKS.USACC) as USACC,Sum(KCRKS.ExchACC) as ExchACC,Max(KFZL.kfjc) as KFJC ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCRKS KCRKS');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCRK KCRK on KCRK.RKNO=KCRKS.RKNO ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.DDZLTW DDZL on DDZL.DDBH=KCRKS.CGBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on KFZL.kfdh=DDZL.KHBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.bgszl bgszl on bgszl.gsdh=KCRK.GSBH ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.zszl zszl on zszl.zsdh=KCRK.ZSBH   ');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.cgzl cgzl on cgzl.CGNO=KCRK.ZSNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=cgzl.USERID');
      SQL.Add('where KCRK.CFMID<>''NO'' and KCRK.YN=''5'' and CLZL.cldh is not null ');
      SQL.Add(' and exists (select flino from c14trmode where fiono=''01'' and flino=KCRK.RKNO collate  Chinese_Taiwan_Stroke_BIN  Group by flino  )  '); //having  Convert(varchar,KCRK.YN_Date,111)'+IstodayRepeatUpdate+'max(fdate)
      SQL.Add(' and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('Group by KCRKS.RKNO,KCRK.GSBH,bgszl.gszwqm,KCRK.ZSBH,KCRK.ZSNO,zszl.zsjc,KCRK.USERDATE,KCRK.DOCNO, KCRK.HGLB ,KCRKS.CLBH,CLZL.dwbh,KCRKS.CWHL,cgzl.USERID,Busers.USERNAME ) KCRKS');
      SQL.Add(') KCRKS ');
      //記錄檔
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''01'' as fiono');
      SQL.Add('	   ,Convert(varchar,KCRKS.USERDATE,111) as fdate');
      SQL.Add('	   ,KCRKS.RKNO as flino');
      SQL.Add('	   ,''M'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select KCRK.RKNO,KCRK.USERDATE ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.KCRK KCRK');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KCRKS KCRKS on KCRK.RKNO=KCRKS.RKNO');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.CLZL CLZL on CLZL.cldh=KCRKS.CLBH ');
      SQL.Add('where KCRK.CFMID<>''NO'' and KCRK.YN=''5'' and CLZL.cldh is not null ');
      SQL.Add(' and exists (select flino from c14trmode where fiono=''01'' and flino=KCRK.RKNO collate  Chinese_Taiwan_Stroke_BIN  Group by flino  )  '); //having  Convert(varchar,KCRK.YN_Date,111)'+IstodayRepeatUpdate+'max(fdate)
            SQL.Add(' and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between '''+formatdatetime('yyyy/MM/dd',sdate)+''' and '''+formatdatetime('yyyy/MM/dd',edate)+''' ');
      SQL.Add('Group by KCRK.RKNO,KCRK.USERDATE');
      SQL.Add(') KCRKS');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' Monthly_KCRK2c14tr_M完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' Monthly_KCRK2c14tr_M錯誤:'+E.Message);
    end;
  end;
end;


procedure TERP2SIMIS.Check_Monthly2SIMIS();
var KCYEAR,KCMONTH:String;
begin
  with TmpQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select top 1 KCYEAR,KCMONTH,CKBH,USERDATE from tyxuanDB.'+ERPDBName+'.dbo.KCCLMONTH_HG KCCLMONTH_HG where convert(smalldatetime,convert(varchar,KCCLMONTH_HG.USERDATE,111))='''+formatdatetime('yyyy/MM/dd',Date())+''' ');
    Active:=true;
    if RecordCount>0 then
    begin
      Monthly_KCRK2c14tr_M(FieldByName('KCYEAR').AsString,FieldByName('KCMONTH').AsString); //月結結束拋轉入庫單據  &領料單還不用
      funcObj.WriteErrorLog(datetimetostr(now)+' Monty synchronize:'+FieldByName('KCYEAR').AsString+' '+FieldByName('KCMONTH').AsString);
    end;
    Active:=false;
  end;
end;
procedure TERP2SIMIS.Button4Click(Sender: TObject);
var KCYEAR,KCMONTH:String;
begin
  Monthly_KCRK2c14tr_M(CBX1.Text,CBX2.Text); //月結結束拋轉入庫單據
  Showmessage('Success');
end;

//開發銷貨單 新增
procedure TERP2SIMIS.DCINVOICE2c14tr_N();
var iRes:integer;
begin
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_Ex  smalldatetime');
      SQL.Add('set @fdati_Ex =Getdate()');
      SQL.Add('');
      //新增 2021.5.15 fpdna,fpdun
      SQL.Add('insert into c14tr (fdati, fdaus, fiono, fdate, flino, fsequ, fcuno, ftaxs, fdeno, fdena, fpdpr, fbaqu, fpdu2, fcumo, fcbpu, flin1, fpdno, fcbno, fcbna ,fpdna, fpdun, fcbo1, fcba1, f0grd, f0art, fcono, fcona, flcno) ');
      SQL.Add('select ');
      SQL.Add('    replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''52'' as fiono');
      SQL.Add('	   ,Convert(varchar,INVOICE_D.INV_DATE,111) as fdate');
      SQL.Add('	   ,INVOICE_D.INV_NO as flino');
      SQL.Add('	   ,INVOICE_D.PACK_NO as fsequ');
      SQL.Add('	   ,''USD'' as fcuno');
      SQL.Add('	   ,6 as ftaxs');
      SQL.Add('	   ,'''+Default_GSBH+''' as fdeno');
      SQL.Add('	   ,'''+Default_GSBH_Name+''' as fdena');
      SQL.Add('	   ,IsNull(INVOICE_D.UNIT_PRICE,0.0) as fpdpr');
      SQL.Add('	   ,INVOICE_D.PAIRS as fbaqu');
      SQL.Add('	   ,''PRS'' as fpdu2');
      SQL.Add('	   ,INVOICE_D.AMOUNT as fcumo');
      SQL.Add('	   ,IsNull(INVOICE_D.PO,'''') as fcbpu');
      SQL.Add('	   ,IsNull(INVOICE_D.RYNO,'''') as flin1 ');
      SQL.Add('	   ,IsNull(INVOICE_D.fpdno,'''') as fpdno');
      //2021.11.8  銷貨對象旺隆
      SQL.Add('	   ,''FTD'' as fcbno');
      SQL.Add('	   ,''旺隆發展台灣分公司'' as fcbna ');
       //新增 2021.5.15 fpdna,fpdun
      SQL.Add('	   ,IsNull(INVOICE_D.fpdna,'''') as fpdna ');
      SQL.Add('	   ,''PRS'' as fpdun');
      SQL.Add('	   ,IsNull(INVOICE_D.UserID,'''') as fcbo1');
      SQL.Add('	   ,IsNull(INVOICE_D.USERNAME,'''') as fcba1');
      SQL.Add('	   ,IsNull(INVOICE_D.kfjc,'''') as f0grd ');
      //2021.11.8
      SQL.Add('	   ,IsNull(INVOICE_D.fpdna,'''') as f0art ');
      //2022.2.18
      SQL.Add('    ,Case when INVOICE_D.DDGB=''VietNam'' then ''VN'' else ''TW'' end as  fcono  ');
      SQL.Add('    ,Case when INVOICE_D.DDGB=''VietNam'' then ''VN'' else ''TW'' end as  fcona  ');
      SQL.Add('	   ,INVOICE_D.flcno as flcno');
      //
      SQL.Add('from (');
      SQL.Add('select DevtoSimis.SERNO as INV_NO,DevtoSimis.YPDH as RYNO,1 as PACK_NO,DevtoSimis.PONO as PO,DevtoSimis.SHIP_QTY as PAIRS,DevtoSimis.TL_FOB_Amount as UNIT_PRICE,DevtoSimis.TL_VN_Amount as AMOUNT, ');
      //新增 2021.5.15 fpdna
      SQL.Add('DevtoSimis.ETD as INV_DATE,YPZL.XieXing+YPZL.SheHao as fpdno,kfxxzl.KHDH,KFZL.kfjc,YPZL.ARTICLE as fpdna,DevtoSimis.UserID,Busers.USERNAME,DevtoSimis.Customer_Account as DDGB,DevtoSimis.InvoiceNo as flcno');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.DevtoSimis DevtoSimis');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.YPZL YPZL on YPZL.YPDH=DevtoSimis.YPDH');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.kfxxzl kfxxzl on kfxxzl.XieXing=YPZL.XieXing and kfxxzl.SheHao=YPZL.SheHao');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.KFZL KFZL on kfxxzl.KHDH=KFZL.kfdh');
      SQL.Add('left join tyxuanDB.'+ERPDBName+'.dbo.Busers Busers on Busers.USERID=DevtoSimis.UserID ');
      SQL.Add('left join (select distinct flino from  c14trmode where  c14trmode.fiono=''52'' and fdate>GetDate()-75 ) c14trmode on c14trmode.flino =DevtoSimis.InvoiceNo  collate  Chinese_Taiwan_Stroke_BIN    ');
      SQL.Add('where 1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,DevtoSimis.UserDate,111)>=Convert(varchar,GetDate()-'+NumDay+',111)  ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,DevtoSimis.UserDate,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add(' and c14trmode.flino is null ' );
      SQL.Add(') INVOICE_D');
      SQL.Add('');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select ');
      SQL.Add('       replace(convert(varchar(8), @fdati_Ex, 112)+convert(varchar(8), @fdati_Ex, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''52'' as fiono');
      SQL.Add('	   ,Convert(varchar,INVOICE_D.INV_DATE,111) as fdate');
      SQL.Add('	   ,INVOICE_D.INV_NO as flino');
      SQL.Add('	   ,''N'' as fmode');
      SQL.Add('from ');
      SQL.Add('(');
      SQL.Add('select DevtoSimis.SERNO as INV_NO,DevtoSimis.ETD as INV_DATE ');
      SQL.Add('from tyxuanDB.'+ERPDBName+'.dbo.DevtoSimis DevtoSimis');
      SQL.Add('left join (select distinct flino from  c14trmode where  c14trmode.fiono=''52''  and  fdate>GetDate()-75 ) c14trmode on c14trmode.flino =DevtoSimis.SERNO  collate  Chinese_Taiwan_Stroke_BIN    ');
      SQL.Add('where 1=1 ');
      if RB1.Checked=true then
      begin
        SQL.Add('   and Convert(varchar,DevtoSimis.UserDate,111)>=Convert(varchar,GetDate()-'+NumDay+',111)  ');
      end else if RB2.Checked=true then
      begin
        SQL.Add(' and Convert(varchar,DevtoSimis.UserDate,111) between '''+FormatDateTime('YYYY/MM/DD',DTP3.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',DTP4.Date)+''' ');
      end;
      SQL.Add('  and c14trmode.flino is null   ');
      SQL.Add('Group by DevtoSimis.SERNO,DevtoSimis.ETD ');
      SQL.Add(') INVOICE_D');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' DCINVOICE2c14tr_N完成，更新筆數:'+inttostr(iRes));;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      funcObj.WriteErrorLog(datetimetostr(now)+' DCINVOICE2c14tr_N錯誤:'+E.Message);
    end;
  end;
end;
//開發銷貨單 修改
procedure TERP2SIMIS.DCINVOICE2c14tr_M();
var iRes:integer;
begin
end;
//開發銷貨單 刪除
procedure TERP2SIMIS.DCINVOICE2c14tr_D();
var iRes:integer;
begin
  try
    with ADOQuery do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('Declare @fdati_R  smalldatetime');
      SQL.Add('set @fdati_R =Getdate()');
      SQL.Add('insert into c14trmode(fdati, fdaus, fiono, fdate, flino, fmode) ');
      SQL.Add('select replace(convert(varchar(8), @fdati_R, 112)+convert(varchar(8), @fdati_R, 114), '':'','''') as fdati');
      SQL.Add('	   ,''SYSTEM'' as fdaus ');
      SQL.Add('	   ,''52'' as fiono');
      SQL.Add('	   ,fdate');
      SQL.Add('	   ,flino');
      SQL.Add('	   ,''D'' as fmode');
      SQL.Add('from (');
      SQL.Add('select flino,fdate from c14trmode where fiono=''52'' and fmode=''N'' and ((flino like ''LVL%'') or (flino like ''LBT%'') or (flino like ''LDT%''))  ');
      SQL.Add('and fdate>GetDate()-75 and flino not in (Select SERNO collate  Chinese_Taiwan_Stroke_BIN from tyxuanDB.'+ERPDBName+'.dbo.DevtoSimis where  DevtoSimis.ETD>GetDate()-75 Group by SERNO)');
      SQL.Add(') YWCP');
      if CKSQLPrint.Checked=true then
        funcObj.WriteErrorLog(sql.text);
      iRes:=ExecSQL();
      funcObj.WriteErrorLog(datetimetostr(now)+' DCINVOICE2c14tr_D完成，更新筆數:'+inttostr(iRes));;
    end;
  except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(datetimetostr(now)+' DCINVOICE2c14tr_D錯誤:'+E.Message);
    end;
  end;
end;

procedure TERP2SIMIS.Button5Click(Sender: TObject);
var pri: String;
 iRes:integer;
begin
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    tmpqry.Active := false;
    tmpqry.SQL.Clear;
    tmpqry.SQL.Add('select INV_NO,Declaretion from tyxuanDB.'+ERPDBName+'.dbo.INVOICE_M');
    tmpqry.SQL.Add('where Declaretion <> '''' ');
    tmpqry.Active := true;
    tmpqry.First;
    while not TmpQry.Eof do begin
      with ADOQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update c14tr set finpm = '''+tmpqry.fieldbyname('Declaretion').AsString+''' ');
        SQL.Add('where fiono=''52'' and flino COLLATE Chinese_Taiwan_Stroke_BIN = '''+tmpqry.fieldbyname('INV_NO').AsString+''' ');
        showmessage(SQL.Text);
        iRes:=ExecSQL();
      end;
      TmpQry.Next;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      showmessage(datetimetostr(now)+' 更新錯誤:'+E.Message);
    end;
  end;
{
  try
    ADOConnSIMIS.Connected:=true;
    ADOConnSIMIS.BeginTrans;
    tmpqry.Active := false;
    tmpqry.SQL.Clear;
    tmpqry.SQL.Add('select * from (select distinct fpdn1');
    tmpqry.SQL.Add(',isnull((select top 1 finpr from a0pdtr (nolock) where fpdno=c15tr.fpdn1 and finpr>0 order by fdati desc),0) as xfinpr');
    tmpqry.SQL.Add('from c15tr where fpdn1 in (select fpdno from a0pdtr)) as v1 where xfinpr=0 order by fpdn1');
    tmpqry.Active := true;
    tmpqry.First;
    while not TmpQry.Eof do begin
      TmpQry1.Active := false;
      TmpQry1.SQL.Clear;
      TmpQry1.SQL.Add('select top 1 case when SamplePriceVN > 0 then SamplePriceVN else SamplePrice * 23020 end as vnprice from tyxuanDB.'+ERPDBName+'.dbo.MaterialPrice where CLBH = '''+tmpqry.fieldbyname('fpdn1').AsString+''' order by USERDATE desc');
      TmpQry1.Active := true;
      with ADOQuery do
      begin
        Active:=false;
        SQL.Clear;
        SQL.Add('Update a0pdtr set finpr = '''+TmpQry1.Fields[0].AsString+''' ');
        SQL.Add('where fpdno = '''+tmpqry.fieldbyname('fpdn1').AsString+''' ');
//        SQL.Add('and flino COLLATE Chinese_Taiwan_Stroke_BIN in (select RKNO from tyxuanDB.'+ERPDBName+'.dbo.KCRK where HGLB = '''+TmpQry.Fields[0].AsString+''') ');
        iRes:=ExecSQL();
      end;
      TmpQry.Next;
    end;
    ADOConnSIMIS.CommitTrans;
  except
    on E:Exception do
    begin
      ADOConnSIMIS.RollbackTrans;
      showmessage(datetimetostr(now)+' 更新錯誤:'+E.Message);
    end;
  end;
}
end;

end.
