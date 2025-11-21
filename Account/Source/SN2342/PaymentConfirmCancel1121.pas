unit PaymentConfirmCancel1121;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Menus, StdCtrls, ComCtrls, ExtCtrls, GridsEh, comobj,
  DBGridEh, IniFiles;

type
  TPaymentConfirmCancel112 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    edt_FKBH: TEdit;
    Button4: TButton;
    qryTemp: TQuery;
    Label3: TLabel;
    edt_HDNO: TEdit;
    edt_Supplier: TEdit;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    rd2: TRadioButton;
    rd1: TRadioButton;
    qry_CGPayment: TQuery;
    qry_CGPaymentFKBH: TStringField;
    qry_CGPaymentHDNO: TStringField;
    qry_CGPaymentZSBH: TStringField;
    qry_CGPaymentzsqm: TStringField;
    qry_CGPaymentzsywjc: TStringField;
    qry_CGPaymentDEPID: TStringField;
    qry_CGPaymentDepName: TStringField;
    qry_CGPaymentHD_LOAI: TStringField;
    qry_CGPaymentUSERID: TStringField;
    qry_CGPaymentUSERDATE: TDateTimeField;
    qry_CGPaymentYN: TStringField;
    qry_CGPaymentDepMemo: TStringField;
    qry_CGPaymentGSBH: TStringField;
    qry_CGPaymentHD_NOIDUNG: TStringField;
    qry_CGPaymentHD_NOIDUNG_TW: TStringField;
    DS_CGPayment: TDataSource;
    Up_CGPay: TUpdateSQL;
    DBGridEh8: TDBGridEh;
    DS1: TDataSource;
    DS2: TDataSource;
    DS3: TDataSource;
    qry1: TQuery;
    qry2: TQuery;
    qry3: TQuery;
    qry1FKBH: TStringField;
    qry1DECLARATION: TStringField;
    qry1LOAIHINH: TStringField;
    qry1NGAY_THUCLANH: TDateTimeField;
    qry1USACC_CHUATHUE: TCurrencyField;
    qry1CWHL: TCurrencyField;
    qry1VNACC_CHUATHUE: TCurrencyField;
    qry1Percent_TT: TIntegerField;
    qry1USACC_NHATHAU: TCurrencyField;
    qry1VNACC_NHATHAU: TCurrencyField;
    qry1USACC_THANHTOAN: TCurrencyField;
    qry1VNACC_THANHTOAN: TCurrencyField;
    qry1USERID: TStringField;
    qry1USERDATE: TDateTimeField;
    qry1YN: TStringField;
    qry2FKBH: TStringField;
    qry2ZSBH_MST: TStringField;
    qry2VATNO: TStringField;
    qry2KYHIEU_HOADON: TStringField;
    qry2VATDATE: TDateTimeField;
    qry2TONGTIEN_CHUATHUE: TCurrencyField;
    qry2TONGTIEN_THUE: TCurrencyField;
    qry2TONGTIEN_THANHTOAN: TCurrencyField;
    qry2USERID: TStringField;
    qry2USERDATE: TDateTimeField;
    qry2YN: TStringField;
    qry_CGPaymentCFMID: TStringField;
    qry_CGPaymentCFMDate: TDateTimeField;
    Memo1: TMemo;
    cbx1: TComboBox;
    Label5: TLabel;
    qry_CGPaymentIs_Notice: TBooleanField;
    qry_CGPaymentManyDay: TIntegerField;
    qry_CGPaymentFKBH_S: TStringField;
    lblName: TLabel;
    qry_CGPaymentCFMID1: TStringField;
    qry_CGPaymentCFMDate1: TDateTimeField;
    Button5: TButton;
    qry4: TQuery;
    qry4FKBH: TStringField;
    qry4SOTIEN_TAMUNG: TCurrencyField;
    qry4NGAY_TAMUNG: TDateTimeField;
    qry4LOAI_CHUNGTU: TStringField;
    qry4SOPHIEU: TStringField;
    qry4NGAY_HOADON: TDateTimeField;
    qry4SOTIEN_CHUATHUE: TCurrencyField;
    qry4SOTIEN_THUE: TCurrencyField;
    qry4SOTIEN_TT: TCurrencyField;
    qry4SOTIEN_HOANLAI: TCurrencyField;
    qry4SOTIEN_CHITHEM: TCurrencyField;
    qry4USERID: TStringField;
    qry4USERDATE: TDateTimeField;
    qry4YN: TStringField;
    qry4FKBH_TTT: TStringField;
    qry5: TQuery;
    qry5FKBH: TStringField;
    qry5STT: TStringField;
    qry5LYDO: TStringField;
    qry5SOTIEN_TT: TCurrencyField;
    qry5USERID: TStringField;
    qry5USERDATE: TDateTimeField;
    qry5YN: TStringField;
    DS5: TDataSource;
    DS4: TDataSource;
    Panel3: TPanel;
    DBGridEh3: TDBGridEh;
    DBGridEh6: TDBGridEh;
    Panel2: TPanel;
    DBGrid2: TDBGridEh;
    DBGridEh1: TDBGridEh;
    qry4ZSBH_MST: TStringField;
    qry5TIENTE: TStringField;
    qry1PLX: TIntegerField;
    qry2PLX: TIntegerField;
    qry4TIENTE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EnMasAfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure qry_CGPaymentAfterOpen(DataSet: TDataSet);
    procedure qry_CGPaymentBeforeClose(DataSet: TDataSet);
    procedure DBGridEh8DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure qry_CGPaymentAfterScroll(DataSet: TDataSet);
    procedure cbx1Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGridEh3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure qry4AfterOpen(DataSet: TDataSet);
    procedure qry4AfterScroll(DataSet: TDataSet);
  private
    SQL_LinkServer,AccountN233_CheckLinkServer : string;

    { Private declarations }
    procedure CallQuery();
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  PaymentConfirmCancel112: TPaymentConfirmCancel112;

implementation

uses main1,FUNUNIT;

{$R *.dfm}
procedure TPaymentConfirmCancel112.ReadIni();
var MyIni :Tinifile;
    AppDir, UserIDList:string;
    tmpUserIDList:TStringlist;
    index:integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
  AccountN233_CheckLinkServer:='Y';
  SQL_LinkServer:='';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','');
      UserIDList:=MyIni.ReadString('ERP','Account_N2342_CheckUserID','');
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

  
  if  UserIDList <> '' then
  begin
    tmpUserIDList:=FuncObj.SplitString(UserIDList,',');
    index:=tmpUserIDList.IndexOf(main.Edit1.Text);
    if index>=0 then
    begin
      Button2.Enabled:=true;
      Button4.Enabled:=true;
    end else begin
      Button2.Enabled:=false;
      Button4.Enabled:=false;
    end;
    tmpUserIDList.Free;
  end else
  begin
    Button2.Enabled:=false;
    Button4.Enabled:=false;
  end;
end;


procedure TPaymentConfirmCancel112.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TPaymentConfirmCancel112.FormDestroy(Sender: TObject);
begin
  PaymentConfirmCancel112:=nil;
end;

procedure TPaymentConfirmCancel112.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-3;
  DTP2.Date:=date;
  with qryTemp do
  begin
    Close;
    sql.Clear;
		sql.Add('SELECT distinct HD_LOAI FROM cgzl_Payment order by HD_LOAI  ');
    Open;
		cbx1.Items.Clear;
		cbx1.Items.Add('');
		First;
		while not eof do
		begin
			cbx1.Items.Add(fieldbyname('HD_LOAI').AsString);
			Next;
		end;
  end;
  ReadIni();
  panel2.Visible:=true;
  panel2.Align:=alClient;
  DBGrid2.Visible:=true;
  DBGrid2.Align:=alClient;
  DBGridEh1.Visible:=false;
  Panel3.Visible:=false;
end;

procedure TPaymentConfirmCancel112.EnMasAfterOpen(DataSet: TDataSet);
begin
  //qry_CGPaymentS.Active:=true;
  //qry_CGPaymentSS.Active:=true;
  //qry_CGPaymentUNG.Active:=true;
end;

procedure TPaymentConfirmCancel112.Button2Click(Sender: TObject);
begin
  With qryTemp do
  begin
    Close;
    SQL.Clear;
    SQL.Add('  update CGZL_Payment SET CFMID1 = '''+main.Edit1.Text+''' , CFMDATE1=GETDATE() WHERE FKBH='''+qry_CGPayment.FieldByName('FKBH').Value+'''  ');
    ExecSQL;
  end;
  showmessage('Success.');
  Button1Click(nil);
end;

procedure TPaymentConfirmCancel112.Button4Click(Sender: TObject);
begin
  if qry_CGPayment.FieldByName('CFMID1').AsString='NO' then
  begin
    showmessage('Not available.');
    abort;
  end;
  With qryTemp do
  begin 
    Close; 
    SQL.Clear;
    SQL.Add('  update CGZL_Payment SET CFMID1 = ''NO'' WHERE FKBH='''+qry_CGPayment.FieldByName('FKBH').Value+'''  ');
    ExecSQL;
  end;
  showmessage('Success.');
  Button1Click(nil);
end;

procedure TPaymentConfirmCancel112.CallQuery();
begin
  if (qry_CGPayment.FieldByName('HD_LOAI').AsString='1')  then
  begin
    panel2.Visible:=true;
    panel2.Align:=alClient;
    DBGrid2.Visible:=true;
    DBGrid2.Align:=alClient;
    DBGridEh1.Visible:=false;
    Panel3.Visible:=false;
    With qry1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      Active := false;
      SQL.Clear;
       //20230523 phieu thanh toan co thanh toan tra trc tien VND se la 0
      SQL.Add('   SELECT  FKBH,DECLARATION,LOAIHINH,NGAY_THUCLANH,USACC_CHUATHUE,CWHL ');
      SQL.Add('		        ,CASE WHEN FKBH IN (SELECT FKBH FROM CGZL_Payment_Map WHERE CGZL_Payment_Map.FKBH=:FKBH)  THEN 0 ELSE VNACC_CHUATHUE END as VNACC_CHUATHUE ');
      SQL.Add('		        ,Percent_TT,USACC_NHATHAU,CASE WHEN FKBH IN (SELECT FKBH FROM CGZL_Payment_Map WHERE CGZL_Payment_Map.FKBH=:FKBH)  THEN 0 ELSE VNACC_NHATHAU END as VNACC_NHATHAU ');
      SQL.Add('       		,USACC_THANHTOAN,CASE WHEN FKBH IN (SELECT FKBH FROM CGZL_Payment_Map WHERE CGZL_Payment_Map.FKBH=:FKBH)  THEN 0 ELSE VNACC_THANHTOAN END as VNACC_THANHTOAN ');
      SQL.Add('       		,USERID,USERDATE,YN,PLX ');
      SQL.Add('   FROM ( ');
      SQL.Add('   SELECT  a.FKBH, a.DECLARATION, b.MALOAIHINH LOAIHINH  ');
      SQL.Add('  		      ,isnull(b.NGAYTHONGQUAN,b.NGAYDANGKY) NGAY_THUCLANH ');
      SQL.Add('           ,case when a.TIENTE=''VND'' then 0.0 else b.TONGTRIGIA_HOADON end USACC_CHUATHUE ');
      SQL.Add('           ,case when a.TIENTE=''VND'' then 0.0 else a.CWHL end CWHL  ');
      SQL.Add('  		      ,case when a.TIENTE=''VND'' then b.TONGTRIGIA_HOADON else round((a.CWHL*b.TONGTRIGIA_HOADON),0)  end  VNACC_CHUATHUE ');
      SQL.Add('           ,a.Percent_TT  ');
      SQL.Add('  		      ,case when a.TIENTE=''VND'' then 0.0 else round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) end USACC_NHATHAU  ');
      SQL.Add('  		      ,case when a.TIENTE=''VND'' then  ROUND((round(b.TONGTRIGIA_HOADON,0)*(100-a.Percent_TT)/100),0) else round((a.CWHL*round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0) end VNACC_NHATHAU   ');
      SQL.Add('  		      ,case when a.TIENTE=''VND'' then 0.0 else round(((b.TONGTRIGIA_HOADON)-(round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2) end USACC_THANHTOAN   ');
      SQL.Add('  		      ,case when a.TIENTE=''VND'' then round(b.TONGTRIGIA_HOADON -(round(b.TONGTRIGIA_HOADON,0)*(100-a.Percent_TT)/100),0) ');
      SQL.Add('                      else round(((round((a.CWHL*b.TONGTRIGIA_HOADON),0))-(round((a.CWHL*round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0))),0) end VNACC_THANHTOAN   ');
      SQL.Add('  		      ,a.USERID, a.USERDATE, a.YN   ');
      SQL.Add('           ,case when (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX  ');
      SQL.Add('   FROM CGZL_PaymentS a  ');
      SQL.Add('   LEFT JOIN '+SQL_LinkServer+'.CGZL_Declaration b ON a.DECLARATION  =b.DECLARATION   ');
      SQL.Add('   LEFT JOIN CGZL_Payment on a.FKBH=CGZL_Payment.FKBH ');
      SQL.Add('   LEFT JOIN DOCNO_File on a.DOCNO=DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH ');
      SQL.Add('   WHERE a.FKBH=:FKBH and a.DECLARATION<>''TRUTIEN''   ');
      SQL.Add('   UNION ALL ');
      SQL.Add('	  SELECT FKBH,DECLARATION,NULL as LOAIHINH,NULL as NGAYTHUCLANH,-1*a.TONGTRIGIA_HOADON,CWHL ');
      SQL.Add('			     ,-1*round((a.CWHL*a.TONGTRIGIA_HOADON),0) VNACC_CHUATHUE, a.Percent_TT  ');
      SQL.Add('     		 ,-1*round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) USACC_NHATHAU ');
      SQL.Add('     		 ,-1*round((a.CWHL*round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0) VNACC_NHATHAU ');
      SQL.Add('       	 ,-1*round(((a.TONGTRIGIA_HOADON)-(round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2) USACC_THANHTOAN ');
      SQL.Add('       	 ,-1*round(((round((a.CWHL*a.TONGTRIGIA_HOADON),0))-(round((a.CWHL*round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0))),0) VNACC_THANHTOAN ');
      SQL.Add('       	 ,a.USERID, a.USERDATE, a.YN, 0 as PLX ');
      SQL.Add(' 	FROM CGZL_PaymentS a  ');
      SQL.Add(' 	WHERE FKBH=:FKBH and a.DECLARATION=''TRUTIEN'' ');
      SQL.Add('   UNION ALL  ');
      SQL.Add(' 	SELECT a.FKBH,c.DECLARATION+'' ( ''+ A.FKBH_TTT+ '' )'',NULL as LOAIHINH,NULL as NGAYTHUCLANH,-1*c.TONGTRIGIA_HOADON,CWHL  ');
      SQL.Add('			     ,-1*(c.CWHL*c.TONGTRIGIA_HOADON) VNACC_CHUATHUE, c.Percent_TT ');
      SQL.Add('       	 ,-1*round((c.TONGTRIGIA_HOADON*(100-c.Percent_TT)/100),2) USACC_NHATHAU ');
      SQL.Add('       	 ,-1*(c.CWHL*round(c.TONGTRIGIA_HOADON*(100-c.Percent_TT)/100,2)) VNACC_NHATHAU ');
      SQL.Add('       	 ,-1*round(((c.TONGTRIGIA_HOADON)-(round((c.TONGTRIGIA_HOADON*(100-c.Percent_TT)/100),2))),2)  USACC_THANHTOAN ');
      SQL.Add('       	 ,-1*(c.CWHL*round(c.TONGTRIGIA_HOADON*c.Percent_TT/100,2)) VNACC_THANHTOAN ');
      SQL.Add('     		 ,c.USERID, c.USERDATE, c.YN, 0 as PLX ');
      SQL.Add(' 	FROM CGZL_Payment_Map a ');
      SQL.Add('   LEFT JOIN CGZL_Payment b on a.FKBH_TTT=b.FKBH ');
      SQL.Add(' 	LEFT JOIN CGZL_PaymentS c on c.FKBH=b.FKBH ');
      SQL.Add(' 	WHERE a.FKBH=:FKBH  and c.DECLARATION=''TRATRUOC'' ');
      SQL.Add('   ) CGZL_PAYMENTS ');
      Open;
      //ExecSQL;
    end;
  end;


  if (qry_CGPayment.FieldByName('HD_LOAI').AsString='3')  then
  begin
    panel2.Visible:=true;
    panel2.Align:=alClient;
    DBGrid2.Visible:=true;
    DBGrid2.Align:=alClient;
    DBGridEh1.Visible:=false;
    Panel3.Visible:=false;
    With qry1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('  SELECT a.FKBH, a.DECLARATION, a.TONGTRIGIA_HOADON USACC_CHUATHUE,'''' LOAIHINH, a.USERDATE NGAY_THUCLANH, 0.00 CWHL  ');
      SQL.Add('  		    , a.VNACC_CHUATHUE, a.Percent_TT  ');
      SQL.Add('  		    , round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) USACC_NHATHAU   ');
      SQL.Add('  		    ,(a.VNACC_CHUATHUE*(100-a.Percent_TT)/100) VNACC_NHATHAU  ');
      SQL.Add('  		    , round(((a.TONGTRIGIA_HOADON)-(round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2) USACC_THANHTOAN    ');
      SQL.Add('  		    ,(a.VNACC_CHUATHUE*a.Percent_TT/100) VNACC_THANHTOAN  ');
      SQL.Add('  		    ,a.USERID, a.USERDATE, a.YN, 0 as PLX   ');
      SQL.Add('  FROM CGZL_PaymentS a  ');
      SQL.Add('  WHERE FKBH=:FKBH   ');
      Open;
      //ExecSQL;
    end;
  end;
  qry1.Active:=true;
  if (qry_CGPayment.FieldByName('HD_LOAI').AsString='2')  then
  begin
    panel2.Visible:=true;
    panel2.Align:=alClient;
    DBGrid2.Visible:=false;
    DBGridEh1.Visible:=true;
    DBGridEh1.Align:=alClient;
    Panel3.Visible:=false;
    With qry2 do
    begin 
      Close; 
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      Active := false;
      SQL.Clear;
      SQL.Add('  SELECT a.FKBH, a.ZSBH_MST, a.VATNO  ');
      SQL.Add('  		    ,b.KYHIEU_MAUSO+ b.KYHIEU_HOADON KYHIEU_HOADON,b.VATDATE ');
      SQL.Add('         ,CASE WHEN isnull(TRU_CHIETKHAU,0)=0 THEN b.TONGTIEN_CHUATHUE + isnull(b.TONGTIEN_PHI,0) ELSE ');
      SQL.Add('         (b.TONGTIEN_CHUATHUE -isnull(b.TONGTIEN_CHIETKHAU,0)) + isnull(b.TONGTIEN_PHI,0) end TONGTIEN_CHUATHUE  ');
      SQL.Add('  		    ,b.TONGTIEN_THUE, b.TONGTIEN_THANHTOAN ,a.USERID, a.USERDATE, a.YN   ');
      SQL.Add('         ,case when (isnull(DOCNO_File.VATFile,'''') <> '''') or (isnull(DOCNO_File.VATFile1,'''')<>'''') then 1 else 0 end as PLX  ');
      SQL.Add('  FROM CGZL_PaymentSS a  ');
      SQL.Add('  LEFT JOIN '+SQL_LinkServer+'.CGZL_VATNO b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZSBH_MST AND a.KYHIEU_HOADON=b.KYHIEU_HOADON  ');
      SQL.Add('  LEFT JOIN CGZL_Payment on a.FKBH=CGZL_Payment.FKBH ');
      SQL.Add('  LEFT JOIN DOCNO_File on a.VATNO = DOCNO_File.DOCNO and CGZL_Payment.GSBH=DOCNO_File.GSBH and CGZL_Payment.ZSBH=DOCNO_File.ZSBH ');
      SQL.Add('  WHERE a.FKBH=:FKBH and a.ZSBH_MST<>''TRUTIEN'' 	  ');
      SQL.Add('  UNION ALL ');
      SQL.Add('  SELECT FKBH, a.ZSBH_MST, a.VATNO  ');
      SQL.Add('  		    ,'''' KYHIEU_HOADON,a.VATDATE,-1*a.TONGTIEN_CHUATHUE TONGTIEN_CHUATHUE  ');
      SQL.Add('  		    ,-1*a.TONGTIEN_THUE, -1*a.TONGTIEN_THANHTOAN ,a.USERID, a.USERDATE, a.YN, 0 as PLX   ');
      SQL.Add('  FROM CGZL_PaymentSS a  ');
      SQL.Add('  WHERE FKBH=:FKBH and a.ZSBH_MST=''TRUTIEN'' 	  ');
      SQL.Add('  UNION ALL ');
      SQL.Add('  SELECT  a.FKBH,c.ZSBH_MST +'' ( ''+ a.FKBH_TTT +'' )'' ,c.VATNO,c.KYHIEU_HOADON,c.VATDATE,-1*c.TONGTIEN_CHUATHUE,-1*c.TONGTIEN_THUE,-1*c.TONGTIEN_THANHTOAN,a.USERID,a.USERDATE,a.YN, 0 as PLX ');
      SQL.Add('  FROM  CGZL_Payment_Map a ');
      SQL.Add('  LEFT JOIN CGZL_Payment b on a.FKBH_TTT=b.FKBH ');
      SQL.Add('  LEFT JOIN CGZL_PaymentSS c on c.FKBH=b.FKBH  ');
      SQL.Add('  WHERE a.FKBH=:FKBH  and c.ZSBH_MST=''TRATRUOC'' ');
      //FUNCOBJ.WriteErrorLog(SQL.Text);
      Open; 
      //ExecSQL;
    end;
  end;
  
  if (qry_CGPayment.FieldByName('HD_LOAI').AsString='4')  then
  begin
    panel2.Visible:=true;
    panel2.Align:=alClient;
    DBGrid2.Visible:=false;
    DBGridEh1.Visible:=true;
    DBGridEh1.Align:=alClient;
    Panel3.Visible:=false;
    With qry2 do
    begin 
      Close; 
      SQL.Clear;
      SQL.Add('     SELECT  a.FKBH,a.ZSBH_MST, a.VATNO, a.KYHIEU_HOADON, a.VATDATE  ');
      SQL.Add('  		        ,a.TONGTIEN_CHUATHUE, a.TONGTIEN_THUE,a.TONGTIEN_THANHTOAN  ');
      SQL.Add('  		        ,a.USERID, a.USERDATE, a.YN, 0 as PLX   ');
      SQL.Add('    FROM CGZL_PaymentSS a  ');
      SQL.Add('    WHERE FKBH=:FKBH  ');
      SQL.Add('    ');
      Open; 
      //ExecSQL;
    end;
  end;

  qry2.Active:=true;
  if (qry_CGPayment.FieldByName('HD_LOAI').AsString='5')  then
  begin
    panel3.Visible:=true;
    panel3.Align:=alClient;
    DBGridEh3.Visible:=true;
    DBGridEh3.Align:=alClient;
    DBGridEh6.Visible:=false;
    Panel2.Visible:=false;
    With qry4 do
    begin 
      Close; 
      SQL.Clear;
      SQL.Add('SET ANSI_NULLS ON ');
      SQL.Add('SET ANSI_WARNINGS ON ');
      ExecSQL();
      Active := false;
      SQL.Clear;
      SQL.Add('SELECT a.FKBH, 0 SOTIEN_TAMUNG, null NGAY_TAMUNG, CASE WHEN d.VATNO IS NOT NULL THEN ''HD'' ELSE a.LOAI_CHUNGTU END AS LOAI_CHUNGTU, isnull(a.SOPHIEU,d.VATNO) SOPHIEU, isnull(a.NGAY_HOADON,d.VATDATE) NGAY_HOADON, ');
      SQL.Add('  		  CASE WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=1 THEN d.TONGTIEN_CHUATHUE+ isnull(d.TONGTIEN_PHI,0) WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=0 ');
      SQL.Add('       THEN (d.TONGTIEN_CHUATHUE-isnull(d.TONGTIEN_CHIETKHAU,0))+isnull(d.TONGTIEN_PHI,0) ELSE a.SOTIEN_CHUATHUE END AS SOTIEN_CHUATHUE, isnull(a.SOTIEN_THUE,d.TONGTIEN_THUE) SOTIEN_THUE, ');
      SQL.Add('  		  isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN) SOTIEN_TT, 0 SOTIEN_HOANLAI, 0 SOTIEN_CHITHEM, a.USERID, a.USERDATE, a.YN, c.FKBH FKBH_TTT, a.ZSBH_MST, a.TIENTE ');
      SQL.Add('FROM cgzl_payments_advance a ');
      SQL.Add('LEFT JOIN cgzl_payment_map b ON b.FKBH = a.FKBH ');
      SQL.Add('LEFT JOIN (SELECT cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG, Sum(cgzl_advances.SOTIEN_TT) THANHTOAN ');
      SQL.Add('           FROM cgzl_advances LEFT JOIN cgzl_payment ON cgzl_payment.FKBH = cgzl_advances.FKBH ');
      SQL.Add('           GROUP BY cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG) c ON b.FKBH_TTT = c.FKBH ');
      SQL.Add('LEFT JOIN '+SQL_LinkServer+'.CGZL_VATNO d ON a.VATNO=d.VATNO  AND a.ZSBH_MST=d.ZSBH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON  ');
      SQL.Add('WHERE a.FKBH=:FKBH ');
      SQL.Add('UNION ALL ');
      SQL.Add('SELECT a.FKBH, Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0)) SOTIEN_TAMUNG, Isnull(max(c.NGAY_TAMUNG), isnull(max(a.NGAY_TAMUNG),''1900/01/01'')) NGAY_TAMUNG, ');
      SQL.Add('  		  ''zTot'' LOAI_CHUNGTU, ''zTot'' SOPHIEU, null NGAY_HOADON, CASE WHEN isnull(TRU_CHIETKHAU,0)=1 THEN  sum(isnull(a.SOTIEN_CHUATHUE,d.TONGTIEN_CHUATHUE+ isnull(d.TONGTIEN_PHI,0))) ');
      SQL.Add('  		  ELSE sum(isnull(a.SOTIEN_CHUATHUE,(d.TONGTIEN_CHUATHUE-isnull(d.TONGTIEN_CHIETKHAU,0))+isnull(d.TONGTIEN_PHI,0))) END AS SOTIEN_CHUATHUE, ');
      SQL.Add('  		  sum(isnull(a.SOTIEN_THUE,d.TONGTIEN_THUE)) SOTIEN_THUE, sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN)) SOTIEN_TT, ');
      SQL.Add('  		  CASE WHEN (Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0))-sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN))) >0 ');
      SQL.Add('  		  THEN (Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0))-sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN))) else 0  end SOTIEN_HOANLAI, ');
      SQL.Add('  		  CASE WHEN (Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0))-sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN))) <0 ');
      SQL.Add('  		  THEN (sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN)) -Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0))) else 0 end SOTIEN_CHITHEM, ');
      SQL.Add('  		  a.USERID, null USERDATE, a.YN, null FKBH_TTT, null ZSBH_MST, null TIENTE ');
      SQL.Add('FROM cgzl_payments_advance a ');
      SQL.Add('LEFT JOIN cgzl_payment_map b ON b.FKBH = a.FKBH ');
      SQL.Add('LEFT JOIN (SELECT cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG, Sum(cgzl_advances.SOTIEN_TT) THANHTOAN ');
      SQL.Add('           FROM cgzl_advances LEFT JOIN cgzl_payment ON cgzl_payment.FKBH = cgzl_advances.FKBH ');
      SQL.Add('           GROUP BY cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG) c ON b.FKBH_TTT = c.FKBH ');
      SQL.Add('LEFT JOIN '+SQL_LinkServer+'.CGZL_VATNO d ON a.VATNO=d.VATNO  AND a.ZSBH_MST=d.ZSBH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON  ');
      SQL.Add('WHERE a.FKBH=:FKBH ');
      SQL.Add('group by a.FKBH,a.USERID,a.YN,TRU_CHIETKHAU ');
      SQL.Add('order by SOPHIEU ');
      //FUNCOBJ.WriteErrorLog(SQL.Text);
      Open;
      //ExecSQL;
    end;
  end;
  if (qry_CGPayment.FieldByName('HD_LOAI').AsString='6')  then
  begin
    panel3.Visible:=true;
    panel3.Align:=alClient;
    DBGridEh3.Visible:=false;
    DBGridEh6.Visible:=true;
    DBGridEh6.Align:=alClient;
    Panel2.Visible:=false;
  end;
  qry5.Active:=true;
end;

procedure TPaymentConfirmCancel112.Button1Click(Sender: TObject);
begin
    With qry_CGPayment do
    begin
      active:=false;
      SQL.Clear;
      SQL.Add('SELECT FKBH,HDNO, ZSBH, ZSZL.zsqm, ZSZL.zsywjc, CGZL_Payment.GSBH, CGZL_Payment.DEPID, BDepartment.DepName, BDepartment.DepMemo, ');
      SQL.Add('       HD_NOIDUNG, HD_NOIDUNG_TW, HD_LOAI, CGZL_Payment.USERID, CGZL_Payment.USERDATE, CGZL_Payment.YN , CGZL_Payment.CFMID,CGZL_Payment.CFMDate,isnull(CGZL_Payment.CFMID1,''NO'') CFMID1,CGZL_Payment.CFMDate1,isnull(Is_Notice,''0'') Is_notice,');
      SQL.Add('       DATEDIFF(DAY,convert(varchar,CGZL_Payment.USERDATE,111),convert(varchar,GETDATE(),111)) ManyDay, isnull(FKBH_S,''N'') FKBH_S  ');
      SQL.Add('FROM CGZL_Payment ');
      SQL.Add('LEFT JOIN (SELECT zsdh, zsqm, zsywjc FROM zszl where yn=''2'' UNION ALL SELECT zsdh, CAST(dbo.fSignsToNoSigns(zsqm) AS VARCHAR(200)) AS zsqm, CAST(dbo.fSignsToNoSigns(zsywjc) AS VARCHAR(200)) AS zsywjc FROM zszl_pay )ZSZL ON CGZL_Payment.ZSBH=ZSDH  ');

      SQL.Add('LEFT JOIN BDepartment ON BDepartment.ID = CGZL_Payment.DEPID  ');
      SQL.Add('WHERE isnull(CGZL_Payment.CFMID,''NO'')<>''NO'' ');
      if trim(edt_HDNO.Text) <>'' then
        SQL.Add('    and HDNO like ''%'+edt_HDNO.Text+'%'' ');
      if trim(edt_Supplier.Text) <>'' then
        SQL.Add('    and ZSBH like ''%'+edt_Supplier.Text+'%'' ');
      if trim(edt_FKBH.Text) <>'' then
        SQL.Add('    and FKBH like ''%'+edt_FKBH.Text+'%'' ');
      if trim(cbx1.Text) <>'' then
        SQL.Add('    and HD_LOAI like ''%'+cbx1.Text+'%'' ');
      if rd1.Checked then
        SQL.Add('and isnull(CGZL_Payment.CFMID1,''NO'')=''NO'' ');
      if rd2.Checked then
        SQL.Add('and isnull(CGZL_Payment.CFMID1,''NO'')<>''NO'' ');

      sql.add('      and convert(varchar,CGZL_Payment.USERDATE,111) between ');
      sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' ');
      sql.add('          and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
      //SQL.Add('order by  CGZL_Payment.FKBH desc , HDNO asc ');
      active:=true;
    end;
end;

procedure TPaymentConfirmCancel112.qry_CGPaymentAfterOpen(DataSet: TDataSet);
begin
  CallQuery();
end;

procedure TPaymentConfirmCancel112.qry_CGPaymentBeforeClose(
  DataSet: TDataSet);
begin
  qry1.Active:=false;
  qry2.Active:=false;
  qry4.Active:=false;
  qry5.Active:=false;
end;

procedure TPaymentConfirmCancel112.DBGridEh8DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qry_CGPayment.FieldByName('CFMID1').value <> 'NO' then
  begin
    DBGridEh8.canvas.font.color := clblue;
    DBGridEh8.defaultdrawcolumncell(Rect, DataCol, Column, State);
  end;
  {if ((column.FieldName='FKBH') and(qry_CGPayment.FieldByName('Is_Notice').AsString='True') and(qry_CGPayment.FieldByName('ManyDay').Value<15) and(qry_CGPayment.FieldByName('FKBH_S').AsString='N')) then
  begin
     DBGridEh8.Canvas.Brush.Color := $00BCDFFA ;
     DBGridEh8.defaultdrawcolumncell(Rect, DataCol, Column, State);
  end;
  if ((column.FieldName='FKBH') and(qry_CGPayment.FieldByName('Is_Notice').AsString='True') and(qry_CGPayment.FieldByName('ManyDay').Value>=15) and(qry_CGPayment.FieldByName('FKBH_S').AsString='N')) then
  begin
     DBGridEh8.Canvas.Brush.Color := clRed ;
     DBGridEh8.defaultdrawcolumncell(Rect, DataCol, Column, State);
  end;}

end;

procedure TPaymentConfirmCancel112.Button3Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  if ((qry_CGPayment.FieldByName('HD_LOAI').AsString='1') or (qry_CGPayment.FieldByName('HD_LOAI').AsString='3'))  then
  begin
    if qry1.Active then
    begin
      if qry1.recordcount=0 then
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
      //eclApp.Cells(1,1):='NO';
      for i:=0 to DBGrid2.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGrid2.Columns[i].Title.Caption;
      end;
      qry1.First;
      j:=2;
      while   not  qry1.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGrid2.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+1):=DBGrid2.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        qry1.Next;
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

  if ((qry_CGPayment.FieldByName('HD_LOAI').AsString='2') or (qry_CGPayment.FieldByName('HD_LOAI').AsString='4'))  then
  begin
    if qry2.Active then
    begin
      if qry2.recordcount=0 then
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
      //eclApp.Cells(1,1):='NO';
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      end;
      qry2.First;
      j:=2;
      while   not  qry2.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh1.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        qry2.Next;
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

  if (qry_CGPayment.FieldByName('HD_LOAI').AsString='5') then
  begin
    if qry4.Active then
    begin
      if qry4.recordcount=0 then
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
      //eclApp.Cells(1,1):='NO';
      for i:=0 to DBGridEh3.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh3.Columns[i].Title.Caption;
      end;
      qry4.First;
      j:=2;
      while   not  qry4.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh3.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+1):=DBGridEh3.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        qry4.Next;
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

  if (qry_CGPayment.FieldByName('HD_LOAI').AsString='6') then
  begin
    if qry5.Active then
    begin
      if qry5.recordcount=0 then
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
      //eclApp.Cells(1,1):='NO';
      for i:=0 to DBGridEh6.Columns.Count-1 do
      begin
        eclApp.Cells(1,i+1):=DBGridEh6.Columns[i].Title.Caption;
      end;
      qry5.First;
      j:=2;
      while   not  qry5.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for i:=0 to DBGridEh6.Columns.Count-1 do
        begin
          eclApp.Cells(j,i+1):=DBGridEh6.Fields[i].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        qry5.Next;
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
end;

procedure TPaymentConfirmCancel112.qry_CGPaymentAfterScroll(
  DataSet: TDataSet);
begin
  CallQuery();
end;

procedure TPaymentConfirmCancel112.cbx1Change(Sender: TObject);
begin
  if cbx1.Text='' then lblName.Caption:='TOAN BO';
  if cbx1.Text='1' then lblName.Caption:='TO KHAI';
  if cbx1.Text='2' then lblName.Caption:='HOA DON';
  if cbx1.Text='3' then lblName.Caption:='TRA TRUOC TK';
  if cbx1.Text='4' then lblName.Caption:='TRA TRUOC HD';
  if cbx1.Text='5' then lblName.Caption:='THANH TOAN TAM UNG';
  if cbx1.Text='6' then lblName.Caption:='PHIEU TAM UNG';
  BUTTON1.Click;
end;

procedure TPaymentConfirmCancel112.Button5Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j:integer;
begin
  with qryTemp do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    Active := false;
    SQL.Clear;
    sql.Add(' SELECT MAIN.FKBH, MAIN.HDNO, case when MAIN.HD_LOAI=''1'' THEN ''TOKHAI'' when MAIN.HD_LOAI=''2'' THEN ''HOADON'' when MAIN.HD_LOAI=''3'' THEN ''TRATRUOC_TK'' when MAIN.HD_LOAI=''4'' THEN ''TRATRUOC_HD'' ');
    SQL.Add('         when MAIN.HD_LOAI=''5'' THEN ''TT_TAMUNG'' when MAIN.HD_LOAI=''6'' THEN ''PHIEU_TAMUNG'' End AS LOAI ');
    sql.Add('       , MAIN.HD_NOIDUNG, MAIN.HD_NOIDUNG_TW, MAIN.ZSBH,zszl.zsqm SuppName, MAIN.DEPID,bd.DepName, MAIN.GSBH, MAIN.USERID,bu.USERNAME, MAIN.USERDATE ');
    sql.Add('	      , MAIN.CFMID, MAIN.CFMDATE,MAIN.CFMID1, MAIN.CFMDATE1,isnull(MAIN.Is_Notice,''0'') Yeu_Cau_Tra_No,isnull(MAIN.FKBH_S,''N'') Da_Tra_No, HD.VATNO,HD.ZSBH_MST, HD.KYHIEU_HOADON, HD.VATDATE, HD.TONGTIEN_CHUATHUE, HD.TONGTIEN_THUE  ');
    sql.Add('	      , HD.TONGTIEN_THANHTOAN, TK.DECLARATION, TK.LOAIHINH, TK.NGAY_THUCLANH, TK.USACC_CHUATHUE, TK.CWHL, TK.VNACC_CHUATHUE ');
    sql.Add('	      , TK.Percent_TT, TK.USACC_NHATHAU, TK.VNACC_NHATHAU, TK.USACC_THANHTOAN, TK.VNACC_THANHTOAN, TTTU.LOAI_CHUNGTU, TTTU.SOPHIEU, TTTU.NGAY_TAMUNG, MAIN.NGAY_DUTINH_TT, TTTU.NGAY_HOADON, TTTU.SOTIEN_TAMUNG ');
    sql.Add('	      , TTTU.SOTIEN_CHUATHUE, TTTU.SOTIEN_THUE, TTTU.SOTIEN_TT, TTTU.SOTIEN_HOANLAI, TTTU.SOTIEN_CHITHEM, PTU.STT, PTU.LYDO, PTU.SOTIEN_TT SOTIEN_TT_PTU ');
    sql.Add(' FROM  CGZL_Payment MAIN  ');
    sql.Add(' LEFT JOIN ( SELECT  a.FKBH, a.ZSBH_MST, a.VATNO,b.KYHIEU_MAUSO+ b.KYHIEU_HOADON KYHIEU_HOADON,b.VATDATE ');
    sql.Add('                     ,CASE WHEN isnull(TRU_CHIETKHAU,0)=0 THEN b.TONGTIEN_CHUATHUE + isnull(b.TONGTIEN_PHI,0) ELSE ');
    sql.Add('                     (b.TONGTIEN_CHUATHUE -isnull(b.TONGTIEN_CHIETKHAU,0)) + isnull(b.TONGTIEN_PHI,0) end TONGTIEN_CHUATHUE ');
    sql.Add('                 		,b.TONGTIEN_THUE, b.TONGTIEN_THANHTOAN ,a.USERID, a.USERDATE, a.YN  ');
    sql.Add('              FROM CGZL_PaymentSS a  ');
    sql.Add('       			 LEFT JOIN '+SQL_LinkServer+'.CGZL_VATNO b ON a.VATNO=b.VATNO  AND a.ZSBH_MST=b.ZSBH_MST and a.KYHIEU_HOADON=b.KYHIEU_HOADON ');
    sql.Add('       			 WHERE (a.ZSBH_MST<>''TRATRUOC'' and a.ZSBH_MST<>''TRUTIEN'') ');
    sql.Add('       			 UNION ALL   ');
    sql.Add('       			 SELECT  a.FKBH,a.ZSBH_MST, a.VATNO, a.KYHIEU_HOADON, a.VATDATE ,a.TONGTIEN_CHUATHUE, a.TONGTIEN_THUE,a.TONGTIEN_THANHTOAN,a.USERID, a.USERDATE, a.YN ');
    sql.Add('     			   FROM CGZL_PaymentSS a  ');
    sql.Add('       			 WHERE a.ZSBH_MST=''TRATRUOC'' ');
    sql.Add('       			 UNION ALL   ');
    sql.Add('       			 SELECT  a.FKBH,a.ZSBH_MST, a.VATNO, a.KYHIEU_HOADON, a.VATDATE ,-1*a.TONGTIEN_CHUATHUE, -1*a.TONGTIEN_THUE,-1*a.TONGTIEN_THANHTOAN,a.USERID, a.USERDATE, a.YN ');
    sql.Add('     			   FROM CGZL_PaymentSS a  ');
    sql.Add('       			 WHERE a.ZSBH_MST=''TRUTIEN'' ');
    sql.Add('       			 UNION ALL ');
    sql.Add('        		   SELECT  a.FKBH,c.ZSBH_MST +'' ( ''+ a.FKBH_TTT +'' )'' as ZSBH_MST ,c.VATNO,c.KYHIEU_HOADON,c.VATDATE,-1*c.TONGTIEN_CHUATHUE,-1*c.TONGTIEN_THUE,-1*c.TONGTIEN_THANHTOAN,a.USERID,a.USERDATE,a.YN  ');
    sql.Add('      			   FROM  CGZL_Payment_Map a  ');
    sql.Add('     			   LEFT JOIN CGZL_Payment b on a.FKBH_TTT=b.FKBH ');
    sql.Add('       			 LEFT JOIN CGZL_PaymentSS c on c.FKBH=b.FKBH  ');
    sql.Add('     			   WHERE c.ZSBH_MST=''TRATRUOC'' ');
    sql.Add('     			  ) HD ON HD.FKBH = MAIN.FKBH  ');
    sql.Add(' LEFT JOIN ( ');
    sql.Add('              SELECT FKBH,DECLARATION,LOAIHINH,NGAY_THUCLANH,USACC_CHUATHUE,CWHL ');
    sql.Add('                 		,CASE WHEN FKBH IN (SELECT FKBH FROM CGZL_Payment_Map a WHERE a.FKBH=CGZL_PaymentS.FKBH)  THEN 0 ELSE VNACC_CHUATHUE END as VNACC_CHUATHUE ');
    sql.Add('                  		,Percent_TT,USACC_NHATHAU,CASE WHEN FKBH IN (SELECT FKBH FROM CGZL_Payment_Map a WHERE a.FKBH=CGZL_PaymentS.FKBH)  THEN 0 ELSE VNACC_NHATHAU END as VNACC_NHATHAU ');
    sql.Add('                 		,USACC_THANHTOAN,CASE WHEN FKBH IN (SELECT FKBH FROM CGZL_Payment_Map a  WHERE a.FKBH=CGZL_PaymentS.FKBH)  THEN 0 ELSE VNACC_THANHTOAN END as VNACC_THANHTOAN ');
    sql.Add('                 		,USERID,USERDATE,YN	 ');
    sql.Add('               FROM( SELECT a.FKBH, a.DECLARATION, b.MALOAIHINH LOAIHINH ,isnull(b.NGAYTHONGQUAN,b.NGAYDANGKY) NGAY_THUCLANH ');
    sql.Add('                            ,case when a.TIENTE=''VND'' then 0.0 else b.TONGTRIGIA_HOADON end USACC_CHUATHUE ');
    sql.Add('                            ,case when a.TIENTE=''VND'' then 0.0 else a.CWHL end CWHL  ');
    sql.Add('                            ,case when a.TIENTE=''VND'' then b.TONGTRIGIA_HOADON else round((a.CWHL*b.TONGTRIGIA_HOADON),0) end VNACC_CHUATHUE ');
    sql.Add('                            ,a.Percent_TT ');
    sql.Add('                            ,case when a.TIENTE=''VND'' then 0.0 else round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) end USACC_NHATHAU ');
    sql.Add('                            ,case when a.TIENTE=''VND'' then  ROUND((round(b.TONGTRIGIA_HOADON,0)*(100-a.Percent_TT)/100),0) else round((a.CWHL*round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0) end VNACC_NHATHAU ');
    sql.Add('                            ,case when a.TIENTE=''VND'' then 0.0 else round(((b.TONGTRIGIA_HOADON)-(round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2) end USACC_THANHTOAN  ');
    sql.Add('                            ,case when a.TIENTE=''VND'' then round(b.TONGTRIGIA_HOADON -(round(b.TONGTRIGIA_HOADON,0)*(100-a.Percent_TT)/100),0)  ');
    sql.Add('                                       else round(((round((a.CWHL*b.TONGTRIGIA_HOADON),0))-(round((a.CWHL*round((b.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0))),0) end VNACC_THANHTOAN ');
    sql.Add('                            ,a.USERID, a.USERDATE, a.YN ');
    sql.Add('              FROM CGZL_PaymentS a  ');
    sql.Add('              LEFT JOIN '+SQL_LinkServer+'.CGZL_Declaration b ON a.DECLARATION  =b.DECLARATION ');
    sql.Add('       			 WHERE ( a.DECLARATION<>''TRATRUOC'' and a.DECLARATION<>''TRUTIEN'') ');
    sql.Add('      			   UNION ALL  ');
    sql.Add('			         SELECT a.FKBH, a.DECLARATION,NULL AS LOAIHINH, a.USERDATE NGAY_THUCLANH,A.TONGTRIGIA_HOADON USACC_CHUATHUE, a.CWHL CWHL, a.VNACC_CHUATHUE, a.Percent_TT ');
    sql.Add('  					          ,round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) USACC_NHATHAU  ,(a.VNACC_CHUATHUE*(100-a.Percent_TT)/100) VNACC_NHATHAU ');
    sql.Add('           	 				,round(((a.TONGTRIGIA_HOADON)-(round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2) USACC_THANHTOAN ,(a.VNACC_CHUATHUE*a.Percent_TT/100) VNACC_THANHTOAN,a.USERID, a.USERDATE, a.YN ');
    sql.Add('     			  FROM CGZL_PaymentS a  ');
    sql.Add('     			  WHERE   a.DECLARATION=''TRATRUOC'' ');
    sql.Add('     			  UNION ALL  ');
    sql.Add('     			  SELECT a.FKBH,DECLARATION,NULL as LOAIHINH,NULL as NGAYTHUCLANH,-1*a.TONGTRIGIA_HOADON,CWHL ,-1*round((a.CWHL*a.TONGTRIGIA_HOADON),0) VNACC_CHUATHUE, a.Percent_TT ');
    sql.Add('           				 ,-1*round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2) USACC_NHATHAU ,-1*round((a.CWHL*round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0) VNACC_NHATHAU ');
    sql.Add('           				 ,-1*round(((a.TONGTRIGIA_HOADON)-(round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2))),2) USACC_THANHTOAN ');
    sql.Add('                    ,-1*round(((round((a.CWHL*a.TONGTRIGIA_HOADON),0))-(round((a.CWHL*round((a.TONGTRIGIA_HOADON*(100-a.Percent_TT)/100),2)),0))),0) VNACC_THANHTOAN  ');
    sql.Add('              			 ,a.USERID, a.USERDATE, a.YN  ');
    sql.Add('     			  FROM CGZL_PaymentS a ');
    sql.Add('     			  WHERE   a.DECLARATION=''TRUTIEN'' ');
    sql.Add('     			  UNION ALL  ');
    sql.Add('     			  SELECT a.FKBH,c.DECLARATION+'' ( ''+ A.FKBH_TTT+ '' )'' as DECLARATION ,NULL as LOAIHINH,NULL as NGAYTHUCLANH,-1*c.TONGTRIGIA_HOADON,CWHL ,-1*(c.CWHL*c.TONGTRIGIA_HOADON) VNACC_CHUATHUE, c.Percent_TT ');
    sql.Add('             			,-1*round((c.TONGTRIGIA_HOADON*(100-c.Percent_TT)/100),2) USACC_NHATHAU,-1*(c.CWHL*round(c.TONGTRIGIA_HOADON*(100-c.Percent_TT)/100,2)) VNACC_NHATHAU ');
    sql.Add('           				,-1*round(((c.TONGTRIGIA_HOADON)-(round((c.TONGTRIGIA_HOADON*(100-c.Percent_TT)/100),2))),2) USACC_THANHTOAN,-1*(c.CWHL*round(c.TONGTRIGIA_HOADON*c.Percent_TT/100,2)) VNACC_THANHTOAN,c.USERID, c.USERDATE, c.YN ');
    sql.Add('      			  FROM CGZL_Payment_Map a ');
    sql.Add('     			  LEFT JOIN CGZL_Payment b on a.FKBH_TTT=b.FKBH ');
    sql.Add('     			  LEFT JOIN CGZL_PaymentS c on c.FKBH=b.FKBH ');
    sql.Add('     			  WHERE c.DECLARATION=''TRATRUOC'' ');
    sql.Add('               ) CGZL_PAYMENTS ');
    sql.Add('						 )TK ON TK.FKBH = MAIN.FKBH  ');
    sql.Add(' LEFT JOIN (SELECT CASE WHEN d.VATNO IS NOT NULL THEN ''HD'' ELSE a.LOAI_CHUNGTU END AS LOAI_CHUNGTU, isnull(a.SOPHIEU,d.VATNO) SOPHIEU, a.NGAY_TAMUNG, isnull(a.NGAY_HOADON,d.VATDATE) NGAY_HOADON, ');
    sql.Add('                             CASE WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=1 THEN d.TONGTIEN_CHUATHUE+ isnull(d.TONGTIEN_PHI,0) WHEN d.VATNO IS NOT NULL AND isnull(TRU_CHIETKHAU,0)=0 ');
    sql.Add('                             THEN (d.TONGTIEN_CHUATHUE -isnull(d.TONGTIEN_CHIETKHAU,0))+ isnull(d.TONGTIEN_PHI,0) ELSE a.SOTIEN_CHUATHUE END AS SOTIEN_CHUATHUE, a.SOTIEN_TAMUNG, ');
    sql.Add('                             isnull(a.SOTIEN_THUE,d.TONGTIEN_THUE) SOTIEN_THUE, isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN) SOTIEN_TT, a.FKBH, ');
    sql.Add('                             CASE WHEN (Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0))-sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN))) >0 ');
    sql.Add('                             THEN (Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0))-sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN))) else 0 end SOTIEN_HOANLAI, ');
    sql.Add('                             CASE WHEN (Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0))-sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN))) <0 ');
    sql.Add('                             THEN (sum(isnull(a.SOTIEN_TT,d.TONGTIEN_THANHTOAN)) -Isnull(max(c.THANHTOAN), isnull(max(a.SOTIEN_TAMUNG),0))) else 0 end SOTIEN_CHITHEM ');
    SQL.Add('            FROM cgzl_payments_advance a ');
    SQL.Add('            LEFT JOIN cgzl_payment_map b ON b.FKBH = a.FKBH ');
    SQL.Add('            LEFT JOIN (SELECT cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG, Sum(cgzl_advances.SOTIEN_TT) THANHTOAN ');
    SQL.Add('                       FROM cgzl_advances LEFT JOIN cgzl_payment ON cgzl_payment.FKBH = cgzl_advances.FKBH ');
    SQL.Add('                       GROUP BY cgzl_advances.FKBH, cgzl_payment.NGAY_TAMUNG) c ON b.FKBH_TTT = c.FKBH ');
    SQL.Add('            LEFT JOIN '+SQL_LinkServer+'.CGZL_VATNO d ON a.VATNO=d.VATNO  AND a.ZSBH_MST=d.ZSBH_MST and a.KYHIEU_HOADON=d.KYHIEU_HOADON  ');
    SQL.Add('            GROUP BY a.FKBH, a.SOPHIEU, a.LOAI_CHUNGTU, d.VATNO, a.NGAY_TAMUNG, a.NGAY_HOADON, d.VATDATE, a.SOTIEN_TAMUNG, a.TRU_CHIETKHAU, d.TONGTIEN_CHUATHUE,d.TONGTIEN_PHI, ');
    sql.Add('                     d.TONGTIEN_CHIETKHAU, a.SOTIEN_CHUATHUE, a.SOTIEN_THUE, d.TONGTIEN_THUE, a.SOTIEN_TT, d.TONGTIEN_THANHTOAN ) TTTU ON TTTU.FKBH = MAIN.FKBH ');
    sql.Add(' LEFT JOIN CGZL_AdvanceS PTU ON PTU.FKBH = MAIN.FKBH ');
    sql.Add(' LEFT JOIN BDepartment bd ON bd.ID = MAIN.DEPID ');
    sql.Add(' LEFT JOIN Busers bu ON  bu.USERID = MAIN.USERID ');
    sql.Add(' LEFT JOIN ( SELECT zsdh, zsqm, zsywjc FROM zszl  ');
    sql.Add('       		  UNION ALL  ');
    sql.Add('             SELECT zsdh, CAST(dbo.fSignsToNoSigns(zsqm) AS VARCHAR(200)) AS zsqm, CAST(dbo.fSignsToNoSigns(zsywjc) AS VARCHAR(200)) AS zsywjc ');
    sql.Add('			        FROM zszl_pay )ZSZL ON zszl.zsdh=MAIN.ZSBH  ');
    sql.Add(' WHERE (HD.FKBH IS NOT NULL OR TK.FKBH IS NOT NULL OR TTTU.FKBH IS NOT NULL OR PTU.FKBH IS NOT NULL) ');
    sql.add(' and convert(varchar,MAIN.USERDATE,111) between ');
    sql.add('          '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''' ');
    sql.add('          and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+''' ');
    SQL.Add(' and isnull(MAIN.CFMID,''NO'')<>''NO'' ');
    if rd1.Checked then
        SQL.Add('and isnull(MAIN.CFMID1,''NO'')=''NO'' ');
    if rd2.Checked then
        SQL.Add('and isnull(MAIN.CFMID1,''NO'')<>''NO'' ');
    if cbx1.Text <>'' then
      SQL.Add('    and MAIN.HD_LOAI like ''%'+cbx1.Text+'%'' ');
    if trim(edt_HDNO.Text) <>'' then
      SQL.Add('    and Main.HDNO like ''%'+edt_HDNO.Text+'%'' ');
    if trim(edt_Supplier.Text) <>'' then
      SQL.Add('    and Main.ZSBH like ''%'+edt_Supplier.Text+'%'' ');
    if trim(edt_FKBH.Text) <>'' then
      SQL.Add('    and Main.FKBH like ''%'+edt_FKBH.Text+'%'' ');
    sql.Add('ORDER BY MAIN.FKBH ');  
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;

  if qryTemp.Active then
  begin
    if qryTemp.recordcount=0 then
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
    for   i:=0   to   qryTemp.fieldcount-1   do
    begin
      eclApp.Cells(1,i+1):=qryTemp.fields[i].FieldName;
    end;
    qryTemp.First;
    j:=2;
    while   not  qryTemp.Eof   do
    begin
      for   i:=0   to   qryTemp.fieldcount-1   do
      begin
        eclApp.Cells(j,i+1):=qryTemp.Fields[i].Value;
        eclApp.Cells.Cells.item[j,i+1].font.size:='8';
      end;
      qryTemp.Next;
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

procedure TPaymentConfirmCancel112.DBGridEh3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
begin
  if qry4.FieldByName('NGAY_HOADON').AsString = '' then
  begin
    DBGridEh3.canvas.Brush.color := clCream;
    DBGridEh3.defaultdrawcolumncell(Rect, DataCol, Column, State);
  end;
end;

procedure TPaymentConfirmCancel112.qry4AfterOpen(DataSet: TDataSet);
begin
  if qry4.FieldByName('TIENTE').AsString='USD' then
  begin
    DBGridEh3.Columns[7].DisplayFormat:='##,#0.00';
    DBGridEh3.Columns[8].DisplayFormat:='##,#0.00';
    DBGridEh3.Columns[9].DisplayFormat:='##,#0.00';
    DBGridEh3.Columns[10].DisplayFormat:='##,#0.00';
    DBGridEh3.Columns[11].DisplayFormat:='##,#0.00';
  end else
  begin
    DBGridEh3.Columns[7].DisplayFormat:='#,##0';
    DBGridEh3.Columns[8].DisplayFormat:='#,##0';
    DBGridEh3.Columns[9].DisplayFormat:='#,##0';
    DBGridEh3.Columns[10].DisplayFormat:='#,##0';
    DBGridEh3.Columns[11].DisplayFormat:='#,##0';
  end;
end;

procedure TPaymentConfirmCancel112.qry4AfterScroll(DataSet: TDataSet);
begin
  if qry4.FieldByName('TIENTE').AsString='USD' then
  begin
    DBGridEh3.Columns[7].DisplayFormat:='##,#0.00';
    DBGridEh3.Columns[8].DisplayFormat:='##,#0.00';
    DBGridEh3.Columns[9].DisplayFormat:='##,#0.00';
    DBGridEh3.Columns[10].DisplayFormat:='##,#0.00';
    DBGridEh3.Columns[11].DisplayFormat:='##,#0.00';
  end else
  begin
    DBGridEh3.Columns[7].DisplayFormat:='#,##0';
    DBGridEh3.Columns[8].DisplayFormat:='#,##0';
    DBGridEh3.Columns[9].DisplayFormat:='#,##0';
    DBGridEh3.Columns[10].DisplayFormat:='#,##0';
    DBGridEh3.Columns[11].DisplayFormat:='#,##0';
  end;
end;

end.
