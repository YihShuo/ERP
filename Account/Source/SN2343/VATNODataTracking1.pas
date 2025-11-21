unit VATNODataTracking1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, ComCtrls, StdCtrls, ExtCtrls,ComObj, IniFiles;

type
  TVATNODataTracking = class(TForm)
    Panel6: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    ZS_VATNO: TEdit;
    query_VATNO: TButton;
    ex_VATNO: TButton;
    edt_VATNO: TEdit;
    Chk_StartDate: TCheckBox;
    DT1_VATNO: TDateTimePicker;
    DT2_VATNO: TDateTimePicker;
    DB_VATNO: TDBGridEh;
    Panel4: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label15: TLabel;
    DT1_TK: TDateTimePicker;
    CL_TK: TEdit;
    edt_TK: TEdit;
    query_TK: TButton;
    excel_TK: TButton;
    Chk_TKDate: TCheckBox;
    DT2_TK: TDateTimePicker;
    qry_VATNO: TQuery;
    qry_VATNOVATNO: TStringField;
    qry_VATNOVATDATE: TDateTimeField;
    qry_VATNOZSBH_MST: TStringField;
    qry_VATNOUSERID: TStringField;
    qry_VATNOUSERDATE: TDateTimeField;
    qry_VATNOYN: TStringField;
    qry_VATNOKYHIEU_MAUSO: TStringField;
    qry_VATNOKYHIEU_HOADON: TStringField;
    qry_VATNOTEN_NGUOIBAN: TStringField;
    qry_VATNOTONGTIEN_CHUATHUE: TCurrencyField;
    qry_VATNOTONGTIEN_THUE: TCurrencyField;
    qry_VATNOTONGTIEN_CHIETKHAU: TCurrencyField;
    qry_VATNOTONGTIEN_PHI: TCurrencyField;
    qry_VATNOTONGTIEN_THANHTOAN: TCurrencyField;
    qry_VATNODONVI_TIENTE: TStringField;
    qry_VATNOTRANGTHAI_HD: TStringField;
    qry_VATNOKETQUA_KIEMTRA: TStringField;
    qry_VATNOMST_TOCHUCGIAIPHAP: TStringField;
    qry_VATNOMST_TOCHUCTRUYENNHAN: TStringField;
    qry_TKTong: TQuery;
    qry_TKTongDECLARATION: TStringField;
    qry_TKTongNGAYDANGKY: TDateTimeField;
    qry_TKTongMALOAIHINH: TStringField;
    qry_TKTongTENDOITAC: TStringField;
    qry_TKTongNGAYDEN: TDateTimeField;
    qry_TKTongTONGTRIGIA_HOADON: TCurrencyField;
    qry_TKTongDOCNO: TStringField;
    qry_TKTongUSERID: TStringField;
    qry_TKTongUSERDATE: TDateTimeField;
    qry_TKTongYN: TStringField;
    qry_TKTongNGAYTHONGQUAN: TDateTimeField;
    DS_TKTong: TDataSource;
    DS_VATNO: TDataSource;
    qry_temp: TQuery;
    Query1: TQuery;
    DBGrid1: TDBGridEh;
    qry_VATNODa_Keo_Thanh_Toan: TStringField;
    qry_VATNOPhieu_Thanh_Toan: TStringField;
    qry_VATNONguoi_De_Nghi: TStringField;
    qry_VATNOKhu: TStringField;
    GroupBox1: TGroupBox;
    rd2: TRadioButton;
    rd1: TRadioButton;
    GroupBox2: TGroupBox;
    rd4: TRadioButton;
    rd3: TRadioButton;
    qry_TKTongDa_Keo_Thanh_Toan: TStringField;
    qry_TKTongPhieu_Thanh_Toan: TStringField;
    qry_TKTongNguoi_De_Nghi: TStringField;
    qry_TKTongKhu: TStringField;
    edt_FKBH: TEdit;
    Label1: TLabel;
    edt_FKBH2: TEdit;
    Label4: TLabel;
    rd5: TRadioButton;
    rd6: TRadioButton;
    qry_VATNOPLX: TIntegerField;
    qry_TKTongPLX: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure query_VATNOClick(Sender: TObject);
    procedure query_TKClick(Sender: TObject);
    procedure ex_VATNOClick(Sender: TObject);
    procedure excel_TKClick(Sender: TObject);
    procedure rd2Click(Sender: TObject);
    procedure rd1Click(Sender: TObject);
    procedure rd4Click(Sender: TObject);
    procedure rd3Click(Sender: TObject);
  private
    SQL_LinkServer,AccountN233_CheckLinkServer : string;
    { Private declarations }
    sign: boolean;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  VATNODataTracking: TVATNODataTracking;
  NDate:Tdate;
implementation

{$R *.dfm}
uses fununit;

procedure TVATNODataTracking.ReadIni();
var MyIni :Tinifile;
    AppDir :string;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  AccountN233_CheckLinkServer:='Y';
  SQL_LinkServer:='';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','');
    finally
      MyIni.Free;
    end;
  end;

  If AccountN233_CheckLinkServer='Y' then
  begin
    SQL_LinkServer:='LacTyDB.LIY_ERP.dbo';
  end else
  begin
    SQL_LinkServer:='dbo';
  end;

  with Qry_Temp do
  begin
    Active:=false;
    sql.Clear;
    sql.Add('SELECT name FROM sys.objects WHERE name=''fSignsToNoSigns''');
    Active:=true;
    if Qry_Temp.RecordCount>0 then sign:=true else sign:=false;
  end;
end;

procedure TVATNODataTracking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TVATNODataTracking.FormDestroy(Sender: TObject);
begin
  VATNODataTracking:=nil;
end;

procedure TVATNODataTracking.FormCreate(Sender: TObject);
begin
  with qry_temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate');
    active:=true;

    NDate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DT1_VATNO.Date:=Date-10;
  DT2_VATNO.Date:=Date;

  DT1_TK.Date:=Date-10;
  DT2_TK.Date:=Date;
  ReadIni();
end;

procedure TVATNODataTracking.query_VATNOClick(Sender: TObject);
begin
  with Qry_VATNO do
  begin
    active:=false;
    sql.Clear;
    sql.Add('SET ANSI_NULLS ON ');
    sql.Add('SET ANSI_WARNINGS ON ');
    ExecSQL;
    active:=false;
    //Close;
    sql.Clear;
    sql.Add('SELECT KYHIEU_MAUSO,CGZL_VATNO.KYHIEU_HOADON,CGZL_VATNO.VATNO,CGZL_VATNO.VATDATE,CGZL_VATNO.ZSBH_MST--TEN_NGUOIBAN,');
    if not sign then
        sql.Add('   ,TEN_NGUOIBAN')
    else
        sql.Add('   ,CAST(dbo.fSignsToNoSigns(TEN_NGUOIBAN) AS VARCHAR(200)) AS TEN_NGUOIBAN');
    sql.Add('       ,TONGTIEN_CHUATHUE,TONGTIEN_THUE,TONGTIEN_CHIETKHAU,TONGTIEN_PHI,TONGTIEN_THANHTOAN');
    if not sign then
        sql.Add('   ,DONVI_TIENTE')
    else
        sql.Add('   ,CAST(dbo.fSignsToNoSigns(DONVI_TIENTE) AS VARCHAR(5)) AS DONVI_TIENTE');
    if not sign then
        sql.Add('   ,TRANGTHAI_HD')
    else
        sql.Add('   ,CAST(dbo.fSignsToNoSigns(TRANGTHAI_HD) AS VARCHAR(50)) AS TRANGTHAI_HD');
    if not sign then
        sql.Add('   ,KETQUA_KIEMTRA')
    else
        sql.Add('   ,CAST(dbo.fSignsToNoSigns(KETQUA_KIEMTRA) AS VARCHAR(50)) AS KETQUA_KIEMTRA');
    sql.Add('       ,CGZL_VATNO.USERID,CGZL_VATNO.USERDATE,CGZL_VATNO.YN, MST_TOCHUCGIAIPHAP, MST_TOCHUCTRUYENNHAN ');
    SQL.Add('  ,CASE WHEN (PayB.VATNO IS NOT NULL) OR (PayA.VATNO IS NOT NULL) THEN ''Y'' ELSE ''N'' END AS Da_Keo_Thanh_Toan  ');
    SQL.Add('  ,CASE WHEN  (PayB.VATNO IS NOT NULL)  then PayB.FKBH WHEN  (PayA.VATNO IS NOT NULL)  then PayA.FKBH ELSE NULL end  Phieu_Thanh_Toan  ');
    SQL.Add('  ,CASE WHEN  (PayB.VATNO IS NOT NULL)  then PayB.USERID WHEN  (PayA.VATNO IS NOT NULL)  then PayA.USERID ELSE NULL end  Nguoi_De_Nghi  ');
    SQL.Add('  ,CASE WHEN  (PayB.VATNO IS NOT NULL)  then ''Khu B'' WHEN  (PayA.VATNO IS NOT NULL)  then ''Khu A'' ELSE NULL end  Khu  ');
    SQL.Add('  ,CASE WHEN (PayB.VATNO IS NOT NULL)  then PayB.PLX WHEN (PayA.VATNO IS NOT NULL) then PayA.PLX ELSE 0 end PLX ');
    sql.Add('FROM '+SQL_LinkServer+'.CGZL_VATNO CGZL_VATNO  ');
    SQL.Add('  LEFT JOIN (  ');
    SQL.Add('  SELECT VATNO, ZSBH_MST, CGZL_PaymentSS.FKBH, KYHIEU_HOADON,CGZL_PaymentSS.USERID ');
    SQL.Add('         ,CASE WHEN (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX ');
    SQL.Add('  FROM '+SQL_LinkServer+'.CGZL_PaymentSS CGZL_PaymentSS ');
    SQL.Add('  LEFT JOIN '+SQL_LinkServer+'.CGZL_Payment CGZL_Payment on CGZL_PaymentSS.FKBH=CGZL_Payment.FKBH ');
    SQL.Add('  LEFT JOIN '+SQL_LinkServer+'.DOCNO_File DOCNO_File on CGZL_Payment.GSBH=DOCNO_File.GSBH ');
    if SQL_LinkServer <> 'dbo' then
      SQL.Add('  AND CGZL_Payment.ZSBH=(SELECT CASE WHEN  isnull(zszl.MZSDH,'''')='''' THEN zszl.zsdh ELSE  zszl.MZSDH END MZSDH from '+SQL_LinkServer+'.zszl zszl WHERE zsdh= DOCNO_File.ZSDH) ')
    else
      SQL.Add('  AND CGZL_Payment.ZSBH=(SELECT CASE WHEN  isnull(zszl.MZSDH,'''')='''' THEN zszl.zsdh ELSE  zszl.MZSDH END MZSDH from '+SQL_LinkServer+'.zszl zszl WHERE zsdh= DOCNO_File.ZSBH) ');
    SQL.Add('  AND DOCNO_File.DOCNO=CGZL_PaymentSS.KYHIEU_HOADON +CGZL_PaymentSS.VATNO  ');
    SQL.Add('  UNION SELECT VATNO, ZSBH_MST, FKBH, KYHIEU_HOADON,USERID, 0 as PLX FROM '+SQL_LinkServer+'.CGZL_PaymentS_Advance ');
    SQL.Add('  ) PayB ON PayB.VATNO = CGZL_VATNO.VATNO AND  PayB.ZSBH_MST = CGZL_VATNO.ZSBH_MST  and PayB.KYHIEU_HOADON=CGZL_VATNO.KYHIEU_MAUSO+CGZL_VATNO.KYHIEU_HOADON ');
    SQL.Add('  LEFT JOIN (  ');
    SQL.Add('  SELECT VATNO, ZSBH_MST, CGZL_PaymentSS.FKBH, KYHIEU_HOADON,CGZL_PaymentSS.USERID ');
    SQL.Add('         ,CASE WHEN (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX ');
    SQL.Add('  FROM CGZL_PaymentSS ');
    SQL.Add('  LEFT JOIN CGZL_Payment on CGZL_PaymentSS.FKBH=CGZL_Payment.FKBH ');
    SQL.Add('  LEFT JOIN DOCNO_File on CGZL_PaymentSS.VATNO=DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH ');
    SQL.Add('  UNION SELECT VATNO, ZSBH_MST, FKBH, KYHIEU_HOADON,USERID, 0 as PLX FROM CGZL_PaymentS_Advance ');
    SQL.Add('  ) PayA ON PayA.VATNO = CGZL_VATNO.VATNO AND  PayA.ZSBH_MST = CGZL_VATNO.ZSBH_MST and PayA.KYHIEU_HOADON=CGZL_VATNO.KYHIEU_HOADON  ');
    sql.Add('where  1=1  ');
    if rd1.Checked then
      SQL.Add(' and ((PayB.VATNO IS NULL) AND (PayA.VATNO IS NULL))  ');
    if rd2.Checked then
      SQL.Add(' and ((PayB.VATNO IS NOT NULL) OR (PayA.VATNO IS NOT NULL)) ');
    if Chk_StartDate.Checked=true then
    begin
      sql.add(' and convert(varchar,CGZL_VATNO.VATDATE,111) between ');
      sql.add(''''+formatdatetime('yyyy/MM/dd',DT1_VATNO.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DT2_VATNO.date)+'''');
    end;

    if (trim(ZS_VATNO.Text)<>'') then
      sql.Add('  and  CGZL_VATNO.ZSBH_MST like ''%'+trim(ZS_VATNO.Text)+'%''  ');
    if (trim(edt_VATNO.Text)<>'') then
      sql.Add('  and  CGZL_VATNO.VATNO like ''%'+trim(edt_VATNO.Text)+'%''  ');
    if (trim(edt_FKBH.Text)<>'') then
      sql.Add('  and  (PayB.FKBH like '''+trim(edt_FKBH.Text)+'%''  or  PayA.FKBH like '''+trim(edt_FKBH.Text)+'%'') ');
    if rd2.Checked then
      sql.Add('  order by  isnull(PayB.FKBH,PayA.FKBH) asc  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TVATNODataTracking.query_TKClick(Sender: TObject);
begin
  with qry_TKTong do
    begin
      active:=false;
      sql.Clear;
      sql.Add('SET ANSI_NULLS ON ');
      sql.Add('SET ANSI_WARNINGS ON ');
      ExecSQL;
      active:=false;                          
      //Close;
      sql.Clear;
      SQL.Add('  SELECT CGZL_Declaration.DECLARATION, NGAYDANGKY, MALOAIHINH, TENDOITAC, NGAYDEN, TONGTRIGIA_HOADON, DOCNO, CGZL_Declaration.USERID, CGZL_Declaration.USERDATE, CGZL_Declaration.YN,NGAYTHONGQUAN   ');
      SQL.Add('  ,CASE WHEN (PayB.DECLARATION IS NOT NULL) OR (PayA.DECLARATION IS NOT NULL) THEN ''Y'' ELSE ''N'' END AS Da_Keo_Thanh_Toan  ');
      SQL.Add('  ,CASE WHEN (PayB.DECLARATION IS NOT NULL)  then PayB.FKBH WHEN  (PayA.DECLARATION IS NOT NULL)  then PayA.FKBH ELSE NULL end  Phieu_Thanh_Toan  ');
      SQL.Add('  ,CASE WHEN (PayB.DECLARATION IS NOT NULL)  then PayB.USERID WHEN  (PayA.DECLARATION IS NOT NULL)  then PayA.USERID ELSE NULL end  Nguoi_De_Nghi  ');
      SQL.Add('  ,CASE WHEN (PayB.DECLARATION IS NOT NULL)  then ''Khu B'' WHEN  (PayA.DECLARATION IS NOT NULL)  then ''Khu A'' ELSE NULL end  Khu  ');
      SQL.Add('  ,CASE WHEN (PayB.DECLARATION IS NOT NULL)  then PayB.PLX WHEN (PayA.DECLARATION IS NOT NULL) then PayA.PLX ELSE 0 end PLX ');
      SQL.Add('  FROM '+SQL_LinkServer+'.CGZL_Declaration  CGZL_Declaration ');
      SQL.Add('  LEFT JOIN (  ');
      SQL.Add('  SELECT DECLARATION, CGZL_PaymentS.FKBH,CGZL_PaymentS.USERID  ');
      SQL.Add('         ,CASE WHEN (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX ');
      SQL.Add('  FROM '+SQL_LinkServer+'.CGZL_PaymentS CGZL_PaymentS ');
      SQL.Add('  LEFT JOIN '+SQL_LinkServer+'.CGZL_Payment CGZL_Payment on CGZL_PaymentS.FKBH=CGZL_Payment.FKBH ');
      if SQL_LinkServer <> 'dbo' then
        SQL.Add('  LEFT JOIN '+SQL_LinkServer+'.DOCNO_File DOCNO_File on CGZL_PaymentS.DOCNO=DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSDH ')
      else
        SQL.Add('  LEFT JOIN '+SQL_LinkServer+'.DOCNO_File DOCNO_File on CGZL_PaymentS.DOCNO=DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH ');
      SQL.Add('      ) PayB ON PayB.DECLARATION = CGZL_Declaration.DECLARATION      ');
      SQL.Add('  LEFT JOIN (  ');
      SQL.Add('  SELECT DECLARATION, CGZL_PaymentS.FKBH,CGZL_PaymentS.USERID   ');
      SQL.Add('         ,CASE WHEN (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX ');
      SQL.Add('  FROM CGZL_PaymentS  ');
      SQL.Add('  LEFT JOIN CGZL_Payment CGZL_Payment on CGZL_PaymentS.FKBH=CGZL_Payment.FKBH ');
      SQL.Add('  LEFT JOIN DOCNO_File DOCNO_File on CGZL_PaymentS.DOCNO=DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH ');
      SQL.Add('      ) PayA ON PayA.DECLARATION = CGZL_Declaration.DECLARATION    ');
      sql.Add('  where  1=1  ');
      if rd3.Checked then
        SQL.Add(' and ((PayB.DECLARATION IS NULL) AND (PayA.DECLARATION IS NULL))  ');
      if rd4.Checked then
        SQL.Add(' and ((PayB.DECLARATION IS NOT NULL) OR (PayA.DECLARATION IS NOT NULL)) ');
      if Chk_TKDate.Checked=true then
      begin
        sql.add(' and convert(varchar,CGZL_Declaration.NGAYDANGKY,111) between ');
        sql.add(''''+formatdatetime('yyyy/MM/dd',DT1_TK.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DT2_TK.date)+'''');
      end;
      if (trim(CL_TK.Text)<>'') then
        sql.Add('  and  CGZL_Declaration.DOCNO like ''%'+trim(CL_TK.Text)+'%''  ');
      if (trim(edt_TK.Text)<>'') then
        sql.Add('  and  CGZL_Declaration.Declaration like ''%'+trim(edt_TK.Text)+'%''  ');
      if (trim(edt_FKBH2.Text)<>'') then
        sql.Add('  and  (PayB.FKBH like '''+trim(edt_FKBH2.Text)+'%''  or  PayA.FKBH like '''+trim(edt_FKBH2.Text)+'%'') ');
      if rd4.Checked then
      sql.Add('  order by  isnull(PayB.FKBH,PayA.FKBH) asc  ');
      //funcobj.WriteErrorLog(sql.Text);
       active:=true;
    end;
end;

procedure TVATNODataTracking.ex_VATNOClick(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;   
begin
  if qry_VATNO.Active then
  begin
    if qry_VATNO.recordcount=0 then
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
    for   i:=1   to   qry_VATNO.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=qry_VATNO.fields[i-1].FieldName;
    end;
    qry_VATNO.First;
    j:=2;
    while   not  qry_VATNO.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   qry_VATNO.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=qry_VATNO.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='8';
          end;
        qry_VATNO.Next;
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

procedure TVATNODataTracking.excel_TKClick(Sender: TObject);
var i,j,k:integer;
    eclApp,WorkBook:olevariant;
begin
  if qry_TKTong.Active then
    begin
      if qry_TKTong.recordcount=0 then
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
      eclapp.Cells.NumberFormatLocal:='@';
      EclApp.ActiveSheet.Columns['C'].NumberFormat:='yyyy/mm/dd hh:mm:ss'; ///////////////
      EclApp.ActiveSheet.Columns['F'].NumberFormat:='yyyy/mm/dd hh:mm:ss'; ///////////////
      EclApp.ActiveSheet.Columns['J'].NumberFormat:='yyyy/mm/dd hh:mm:ss'; ///////////////
      EclApp.ActiveSheet.Columns['L'].NumberFormat:='yyyy/mm/dd hh:mm:ss'; ///////////////
      eclApp.Cells(1,1):='NO';
      for   i:=1   to   qry_TKTong.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=DBGrid1.Columns[i-1].Title.Caption;
      end;
      qry_TKTong.First;
      j:=2;
      while   not  qry_TKTong.Eof   do
      begin
          eclApp.Cells(j,1):=j-1;
          for   i:=1   to   qry_TKTong.fieldcount   do
          begin
            eclApp.Cells(j,i+1):=qry_TKTong.Fields[i-1].Value;
            eclApp.Cells.Cells.item[j,i+1].font.size:='10';
          end;
          qry_TKTong.Next;
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

procedure TVATNODataTracking.rd2Click(Sender: TObject);
begin
  edt_FKBH.Enabled:=true;
end;

procedure TVATNODataTracking.rd1Click(Sender: TObject);
begin
  edt_FKBH.Enabled:=false;
end;

procedure TVATNODataTracking.rd4Click(Sender: TObject);
begin
  edt_FKBH2.Enabled:=true;
end;

procedure TVATNODataTracking.rd3Click(Sender: TObject);
begin
  edt_FKBH2.Enabled:=false;
end;

end.
