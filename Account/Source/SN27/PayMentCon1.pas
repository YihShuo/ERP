unit PayMentCon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids,
  Menus, GridsEh, DBGridEh, ADODB, Buttons;
const ASDC_DB='TYXUAN_NEW';//測試資料庫 'TEST';
type
  TPayMentCon = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    PayMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    PayDet: TQuery;
    PayDetZSBH: TStringField;
    PayDetDJLX: TStringField;
    PayDetDJNO: TStringField;
    PayDetCGBH: TStringField;
    PayDetCLBH: TStringField;
    PayDetDJDATE: TDateTimeField;
    PayDetQty: TCurrencyField;
    PayDetUSPrice: TCurrencyField;
    PayDetUSACC: TCurrencyField;
    PayDetCWHL: TIntegerField;
    PayDetVNPrice: TFloatField;
    PayDetVNACC: TFloatField;
    PayDetCostID: TStringField;
    PayDetFKBH: TStringField;
    PayDetUSERDATE: TDateTimeField;
    PayDetUSERID: TStringField;
    PayDetYN: TStringField;
    PayDetYWPM: TStringField;
    PayDetDWBH: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DBGrid4: TDBGridEh;
    CB1: TCheckBox;
    Pop1: TPopupMenu;
    N1: TMenuItem;
    PayDetUSQty: TCurrencyField;
    PayDetVNQty: TFloatField;
    QPrice: TQuery;
    QPriceBJNO: TStringField;
    QPriceCLBH: TStringField;
    QPriceUSPrice: TCurrencyField;
    QPriceVNPrice: TCurrencyField;
    QPriceUSERDate: TDateTimeField;
    QPriceUSERID: TStringField;
    QPriceBJLX: TStringField;
    QPriceMemo: TStringField;
    QPriceYN: TStringField;
    PopupMenu1: TPopupMenu;
    N21: TMenuItem;
    Panel3: TPanel;
    PayMasFKBH: TStringField;
    PayMasGSBH: TStringField;
    PayMasPDBH: TStringField;
    PayMasKJBH: TStringField;
    PayMasUSACC: TCurrencyField;
    PayMasVNACC: TFloatField;
    PayMasCWHL: TFloatField;
    PayMasUSQty: TCurrencyField;
    PayMasVNQty: TFloatField;
    PayMasZHBH: TStringField;
    PayMasZSBH: TStringField;
    PayMasFKDate: TDateTimeField;
    PayMasUSERDATE: TDateTimeField;
    PayMasUSERID: TStringField;
    PayMasYN: TStringField;
    PayMasCMdate: TDateTimeField;
    PayMasZSYWJC: TStringField;
    PayMasCMID: TStringField;
    PayMasMA003: TStringField;
    E2A: TADOQuery;
    Panel2: TPanel;
    BB1: TBitBtn;
    BB5: TBitBtn;
    BB7: TBitBtn;
    Label3: TLabel;
    Edit2: TEdit;
    PayMasSZBH: TStringField;
    BB3: TBitBtn;
    Label4: TLabel;
    PayMasKJBM: TStringField;
    Label5: TLabel;
    PayMasDSBM: TStringField;
    BitBtn1: TBitBtn;
    ZSZL: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PayMasAfterOpen(DataSet: TDataSet);
    procedure PayMasAfterScroll(DataSet: TDataSet);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBGrid4GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure DBGrid1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure PayMasNewRecord(DataSet: TDataSet);
    procedure PayDetNewRecord(DataSet: TDataSet);
    procedure N21Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BB1Click(Sender: TObject);
    procedure BB7Click(Sender: TObject);
    procedure BB5Click(Sender: TObject);
    procedure BB3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    //IsCreate_ASDC_Connect:boolean; //鼎新連線判斷
    { Private declarations }
    procedure Create_ASDC_Conn();
    procedure Drop_ASDC_Conn();
  public
    { Public declarations }
  end;

var
  PayMentCon: TPayMentCon;

implementation

uses  Payabl_CMSMQ1, PayMentCon_Price1, DM3, FunUnit, Payable_ACTMA1, main1;

{$R *.dfm}

procedure TPayMentCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //刪除鼎新資料庫連線
  Drop_ASDC_Conn();
  action:=cafree;
end;

procedure TPayMentCon.Button1Click(Sender: TObject);
begin

  //
  PayDet.Active:=false;
  with PayMas do
  begin
    active:=false;
    sql.Clear;
    sql.add('select CWFK.*,ZSZL.ZSYWJC,ZSZL.SZBH,ACTMA.MA003 as KJNM,ACTMA.MA004 as KJBM,DSCBM.DSBM ');
    sql.add('from CWFK');
    sql.add('left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH ');
    sql.add('left join ACTMA on ACTMA.MA001=CWFK.KJBH ');
    sql.add('left join DSCBM on CWFK.GSBH=DSCBM.LYBM ');
    sql.add('where convert(smalldatetime,convert(varchar,CWFK.FKDate,111)) between ');
    sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.Date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.Date)+'''');
    sql.add('     and CWFK.FKBH like '+''''+edit1.Text+'%'+'''');
    sql.Add('     and CWFK.ZSBH like  '+''''+edit2.Text+'%'+'''');
    if CB1.Checked then
        sql.add(' and (IsNull(CWFK.CMdate,'''') = '''') ')
    else
        sql.add(' and (CWFK.CMdate is not  null)  ');
    sql.add('order by CWFK.FKBH desc');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //
  with PayMas do
  begin
    requestlive:=true;
    cachedupdates:=true;
    edit;
  end;
  Dbgrid1.columns[1].ButtonStyle:=cbsEllipsis;
  Dbgrid1.columns[2].ButtonStyle:=cbsEllipsis;
  //
  PayDet.Active:=true;
  Panel1.Visible:=false;
  CB1.Checked:=true;
  //創建鼎新資料庫連線
  Create_ASDC_Conn();

end;

procedure TPayMentCon.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-7;
  DTP2.Date:=date;

end;

procedure TPayMentCon.PayMasAfterOpen(DataSet: TDataSet);
begin
  if PayMas.recordcount>0 then
      BB5.enabled:=true
  else
      BB5.enabled:=false;
end;

procedure TPayMentCon.PayMasAfterScroll(DataSet: TDataSet);
begin
if PayMas.FieldByName('ZHBH').IsNull then
    N1.Enabled:=false
    else
      N1.Enabled:=true;
end;

procedure TPayMentCon.DBGrid1EditButtonClick(Sender: TObject);
begin

  with DBGrid1 do
  begin
    if PayMas.FieldByName('CMDate').IsNull then
    begin
      if Selectedfield.fieldname='PDBH' then  //憑單單號
      begin
        Payable_CMSMQ:=TPayable_CMSMQ.create(self);
        Payable_CMSMQ.ShowModal;
        Payable_CMSMQ.Free;
      end;
      if Selectedfield.fieldname='KJBH' then  //會計科目
      begin
        Payable_ACTMA:=TPayable_ACTMA.create(self);
        Payable_ACTMA.ShowModal;
        Payable_ACTMA.Free;
      end;
    end;
  end;
  //
end;

procedure TPayMentCon.N1Click(Sender: TObject);
begin
with PayMas do
  begin
    edit;
    fieldbyname('ZHBH').Value:=null;
    fieldbyname('BankNo').Value:=null;
    fieldbyname('ZHJC').Value:=null;
    Upmas.Apply(ukmodify);
    active:=false;
    active:=true;
  end;

end;

procedure TPayMentCon.DBGrid4GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
with PayDet do
  begin
    if fieldbyname('USACC').value<>fieldbyname('USQty').value  then
      begin
        DBGRid4.canvas.Font.Color:=clred;
      end;
    if fieldbyname('VNACC').value<>fieldbyname('VNQty').value  then
      begin
        DBGRid4.canvas.Font.Color:=clred;
      end;
  end;
end;

procedure TPayMentCon.DBGrid1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin

with PayMas do
  begin
    if fieldbyname('USACC').value<>fieldbyname('USQty').value  then
      begin
        DBGRid1.canvas.Font.Color:=clred;
      end;
    if fieldbyname('VNACC').value<>fieldbyname('VNQty').value  then
      begin
        DBGRid1.canvas.Font.Color:=clred;
      end;
  end;
end;

procedure TPayMentCon.PayMasNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TPayMentCon.PayDetNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TPayMentCon.N21Click(Sender: TObject);
begin
if PayDet.recordcount>0 then
  begin
    PayMentCon_Price:=TPayMentCon_Price.create(self);
    PayMentCon_Price.show;
  end;
end;

procedure TPayMentCon.FormDestroy(Sender: TObject);
begin
PayMentCon:=nil;
end;
//創建鼎新資料庫連線
procedure TPayMentCon.Create_ASDC_Conn();
begin
    //要換成正式環境 IP
    E2A.Active:=false;
    E2A.ConnectionString:='Provider=SQLOLEDB.1;Password=jack;Persist Security Info=True;User ID=sa;Initial Catalog=LIY_ERP;Data Source=192.168.23.9';
    with e2a do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('if  not exists(select *  from   master..sysservers  where  srvname= ''ASDC'')');
      SQL.Add('exec sp_addlinkedserver ');
      SQL.Add('@server=N''ASDC'',');
      SQL.Add('@srvproduct=N'''',');
      SQL.Add('@provider=N''SQLOLEDB'',');
      SQL.Add('@datasrc=N''192.168.23.10\VL''; ');
      SQL.Add('exec sp_addlinkedsrvlogin ');
      SQL.Add('@rmtsrvname = ''ASDC'',');
      SQL.Add('@useself=''false'',');
      SQL.Add('@locallogin = ''sa'',');
      SQL.Add('@rmtuser = ''billweng'',');
      SQL.Add('@rmtpassword = ''billweng''; ');
      ExecSQL();
    end;
end;
//刪除鼎新連線
procedure TPayMentCon.Drop_ASDC_Conn();
begin
 
    with e2a do
    begin
      Active:=false;
      SQL.Clear;
      SQL.Add('if exists(select *  from   master..sysservers  where  srvname= ''ASDC'') begin ');
      SQL.Add('Exec sp_droplinkedsrvlogin ''ASDC'',Null ');
      SQL.Add('Exec sp_dropserver ''ASDC'',''droplogins'' ');
      SQL.Add('end');
      ExecSQL();
    end;
end;
procedure TPayMentCon.BB1Click(Sender: TObject);
begin
  Panel1.Visible:=true;
end;

procedure TPayMentCon.BB7Click(Sender: TObject);
begin
  Close;
end;
{ 20140211 weston 
  轉入鼎新會計系統會轉換ERP部門變成DSC鼎新會計部門，關聯表格DSCBM
  DSCBM 表格: ERP部門別轉換鼎新部門
  CMSMQ 表格: 憑單ID表格,從鼎新CMSMQ表格轉入 select MQ001,MQ002 from CMSMQ where MQ003='71'
  ACTMA 表格: 會計ID表格，從鼎新ACTMA表格轉入 select MA001,MA003 from ACTMA
}
procedure TPayMentCon.BB5Click(Sender: TObject);
var i,iRes:integer;
begin

 try
    //創建鼎新資料庫連線
    Create_ASDC_Conn();
    //
    PayDet.Active:=false;//先不顯示明細加快速度
    PayMas.First;
    for i:=1 to PayMas.Recordcount do
    begin
      if ((PayMas.FieldByName('CMDate').IsNull) and (PayMas.FieldByName('PDBH').IsNull=false) and (PayMas.FieldByName('KJBH').IsNull=false) and PayMas.FieldByName('DSBM').IsNull=false) then
      begin
        UpMas.Apply(ukmodify);
        //檢查是否已經存在
        with E2A do
        begin
          Active:=false;
          SQL.Clear;
          SQL.Add('Select TA001,TA002 from ASDC.'+ASDC_DB+'.dbo.ACPTA where TA001='''+PayMas.FieldByName('PDBH').AsString+''' and TA002='''+PayMas.FieldByName('FKBH').AsString+''' ');
          SQL.Add('Union ALL ');
          SQL.Add('Select TB001,TB002 from ASDC.'+ASDC_DB+'.dbo.ACPTB where TB001='''+PayMas.FieldByName('PDBH').AsString+''' and TB002='''+PayMas.FieldByName('FKBH').AsString+''' ');
          Active:=true;
        end;
        if E2A.RecordCount=0 then
        begin

            //單頭寫入 BDE元件不支援無法跨資料庫Insert 改用ADO元件
            with E2A do
            begin
              Active:=false;
              SQL.Clear;
              SQL.Add('Insert into ASDC.'+ASDC_DB+'.dbo.ACPTA ');
              sql.add('(COMPANY, CREATOR, USR_GROUP, CREATE_DATE, FLAG, TA001, TA002, TA003, TA004, TA005, TA006, TA008,');
              sql.Add('TA009, TA010, TA011, TA012, TA013, TA016, TA017, TA018, TA019, TA020, TA021, TA024, TA025, TA026, TA027,');  //20140228 新增TA021 備忘欄位
              sql.Add('TA028, TA029, TA030, TA031, TA032, TA033, TA034, TA035, TA036, TA037, TA038, TA040, TA041, TA042,');
              sql.Add('TA043, TA044, TA047, TA048, TA050, TA051, TA053, TA054, TA055, TA059, TA061, TA062, TA063, TA064,');
              sql.Add('UDF06, UDF07, UDF08, UDF09, UDF10) ');
              sql.Add('Select ''TYXUAN(NEW)'','''+main.Edit1.Text+''',''001'',convert(nchar(8),GETDATE(),112),''3'',');
              sql.Add('CWFK.PDBH, CWFK.FKBH, convert(nchar(8),CWFK.FKDate,112), CWFK.ZSBH, ''TX'', ZSZL.TYBH2,');
              sql.Add('case when CWFK.USQty>0 then ''USD'' else ''VND'' end, Case when CWFK.USQty>0 then Round(CWFK.VNQty/USQty,0) else 1 end,');
              sql.Add('ZSZL.FPLS,ZSZL.KSB,3,''N'',case when CWFK.USQty>0 then CWFK.USQty else CWFK.VNQty end,0,''N'',');
              sql.Add('convert(nchar(8),CWFK.FKDate,112),convert(nchar(8),CWFK.FKDate,112),''Nhap kho'',''N'',''N'',''N'',0,');
              sql.Add('case when CWFK.USQty>0 then CWFK.USQty else CWFK.VNQty end,0,0,''N'',convert(nchar(6),CWFK.FKDate,112),''N'',');
              sql.Add('convert(nchar(8),CWFK.FKDate,112),'''+main.Edit1.Text+''',0,CWFK.VNQty,0,convert(nchar(8),CWFK.FKDate,112),');
              sql.Add('convert(nchar(8),CWFK.FKDate,112),0,0,''N'',0,0,''N'',0,convert(nchar(8),CWFK.FKDate,112),');
              sql.Add('0,0,ZSZL.SZBH,''Y'',1,8,7,0,0,0,0,0 ');
              sql.Add('from CWFK ');
              sql.Add('left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH ');
              //sql.Add('left join ASDC.'+ASDC_DB+'.dbo.ACPTA as ACPTA on ACPTA.TA001=CWFK.PDBH and ACPTA.TA002=CWFK.FKBH '); //兩邊資料庫格式排序不一樣無法left join
              sql.Add('where (CWFK.PDBH is not null) and (CWFK.KJBH is not null) and (CWFK.ZSBH is not null) and (ZSZL.SZBH is not null) and (CWFK.VNQty>0) ');//and (ASDC.'+ASDC_DB+'.dbo.ACPTA.TA001 is null) ');
              sql.Add('and (CWFK.FKBH='''+PayMas.FieldByName('FKBH').AsString+''')');
              iRes:=ExecSQL();
            end;
            if iRes=1 then
            begin
              with E2A do
              begin
                Active:=false;
                SQL.Clear;
                sql.Add('Insert into ASDC.'+ASDC_DB+'.dbo.ACPTB ');
                sql.add('(COMPANY, CREATOR, USR_GROUP, CREATE_DATE, FLAG, TB001, TB002, TB003, TB004, TB008, TB009, TB010,');
                sql.Add('TB012, TB013, TB014, TB015, TB016, TB017, TB018, TB024, TB025, TB029, UDF07, UDF08, UDF09, UDF10) ');
                sql.Add('Select ''TYXUAN(NEW)'','''+main.Edit1.Text+''',''001'',convert(nchar(8),GETDATE(),112),''3'',');
                sql.Add('CWFK.PDBH, CWFK.FKBH, ''001'',9, convert(nchar(8),CWFK.FKDate,112),case when CWFK.USQty>0 then CWFK.USQty else CWFK.VNQty end,');
                sql.Add('0,''N'',CWFK.KJBH,DSCBM.DSBM,case when CWFK.USQty>0 then CWFK.USQty else CWFK.VNQty end,0,');
                sql.Add('CWFK.VNQty,0,0,0,0,0,0,0,0 ');
                sql.Add('from CWFK ');
                sql.Add('left join ZSZL on ZSZL.ZSDH=CWFK.ZSBH ');
                sql.add('left join DSCBM on CWFK.GSBH=DSCBM.LYBM ');
                //sql.Add('left join ASDC.'+ASDC_DB+'.dbo.ACPTB ACPTB on ACPTB.TB001=CWFK.PDBH and  ACPTB.TB002=CWFK.FKBH and ACPTB.TB003=''001'' '); //兩邊資料庫格式排序不一樣無法left join
                sql.Add('where (CWFK.PDBH is not null) and (CWFK.KJBH is not null) and (CWFK.ZSBH is not null) and (ZSZL.SZBH is not null) and (CWFK.VNQty>0) ');//and (ASDC.'+ASDC_DB+'.dbo.ACPTB.TA001 is null) ');
                sql.Add(' and (CWFK.FKBH='''+PayMas.FieldByName('FKBH').AsString+''')');
                iRes:=ExecSQL();
              end;
              //最後成功更新Confirm日期
              if iRes=1 then
              begin
                PayMas.Edit;
                PayMas.FieldByName('CMdate').Value:=Now();
                PayMas.FieldByName('CMID').AsString:=main.Edit1.Text;
                PayMas.Post;
                UpMas.Apply(ukmodify);
              end;
            end;

        end; //判斷鼎新資料不存在 if E2A.RecordCount=0 then
      end;//if 判斷式 PDBH and KJBH is not null , CFDate is null 
      PayMas.Next;
    end; // for 迴圈
    //重新載入
    with PayMas do
    begin
      active:=false;
      RequestLive:=false;
      CachedUpdates:=false;
      active:=true;
      //
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    PayDet.Active:=true;//恢復顯示明細 加快速度
  except
    On E:Exception  do
    begin
      showmessage(E.Message);
    end;
  end;
end;

procedure TPayMentCon.BB3Click(Sender: TObject);
var iRes:integer;
begin
  //還原匯入
  with PayMas do
  begin
    if (FieldByName('PDBH').IsNull=false) and (FieldByName('KJBH').IsNull=false) and (FieldByName('CMDate').IsNull=false) then
    begin
        //刪除主檔
        E2A.Active:=false;
        E2A.SQL.Clear;
        E2A.SQL.Add('Delete from ASDC.'+ASDC_DB+'.dbo.ACPTA where (TA001='''+FieldByName('PDBH').AsString+''') and (TA002='''+FieldByName('FKBH').AsString+''') ');
        iRes:=E2A.ExecSQL();
        //刪除明細
        E2A.Active:=false;
        E2A.SQL.Clear;
        E2A.SQL.Add('Delete from ASDC.'+ASDC_DB+'.dbo.ACPTB where (TB001='''+FieldByName('PDBH').AsString+''') and (TB002='''+FieldByName('FKBH').AsString+''') and (TB003=''001'') ');
        iRes:=E2A.ExecSQL();
        //
        PayMas.Edit;
        PayMas.FieldByName('PDBH').Clear;
        PayMas.FieldByName('KJBH').Clear;
        PayMas.FieldByName('CMdate').Clear;  //還原成NULL
        PayMas.FieldByName('CMID').Clear;
        PayMas.Post;
        UpMas.Apply(ukmodify);
        //記錄誰刪除
        funcObj.WriteErrorLog(datetimetostr(now)+' UserID:'+main.Edit1.Text+' resotre data PDBH:'+FieldByName('PDBH').AsString+' FKBH:'+FieldByName('FKBH').AsString);
        showmessage('Restore ok!');
    end;
  end;
end;

procedure TPayMentCon.Label4Click(Sender: TObject);
begin
  if PayMas.Active=true then
      BB3.enabled:=true
  else
      BB3.enabled:=false;
end;

procedure TPayMentCon.BitBtn1Click(Sender: TObject);
var iRes:integer;
begin

 try
    //創建鼎新資料庫連線
    Create_ASDC_Conn();
    E2A.Active:=false;
    E2A.SQL.Clear;
    E2A.SQL.Add('select MA001,MA005,MA076,MA030,MA044 from ASDC.'+ASDC_DB+'.dbo.PURMA order by MA001');
    E2A.Active:=true;
    while Not E2A.Eof do
    begin
      ZSZL.Active:=false;
      ZSZL.SQL.Clear;
      ZSZL.SQL.Add('UPDATE zszl set zszl.tybh2='''+StringReplace(trim(E2A.FieldByName('MA005').AsString), '''', '',[rfReplaceAll, rfIgnoreCase]) +''','); //鼎新發票編號資料有 ' 符號
      ZSZL.SQL.Add('                zszl.szbh='''+trim(E2A.FieldByName('MA076').AsString)+''',');
      ZSZL.SQL.Add('                zszl.fpls='''+trim(E2A.FieldByName('MA030').AsString)+''',');
      ZSZL.SQL.Add('                zszl.ksb='''+trim(E2A.FieldByName('MA044').AsString)+''' ');
      ZSZL.SQL.Add('WHERE  zszl.zsdh='''+trim(E2A.FieldByName('MA001').AsString)+'''');
      ZSZL.ExecSQL();
      E2A.Next;
      Application.ProcessMessages;
    end;
    E2A.Active:=false;
    {
    //同步鼎新廠商  將廠商統一編號、稅制、發票聯數、課稅別資料建立在ERP系統(select MA001,MA005,MA076,MA030,MA044 from PURMA  )提供廠商資料轉入使用
    E2A.Active:=false;
    E2A.SQL.Clear;
    E2A.SQL.Add('UPDATE zszl set zszl.tybh2=ASDC.'+ASDC_DB+'.dbo.PURMA.MA005,');
    E2A.SQL.Add('                zszl.szbh=ASDC.'+ASDC_DB+'.dbo.PURMA.MA076,');
    E2A.SQL.Add('                zszl.fpls=ASDC.'+ASDC_DB+'.dbo.PURMA.MA030,');
    E2A.SQL.Add('                zszl.ksb=ASDC.'+ASDC_DB+'.dbo.PURMA.MA044 ');
    E2A.SQL.Add('FROM ASDC.'+ASDC_DB+'.dbo.PURMA, zszl ');
    E2A.SQL.Add('WHERE ASDC.'+ASDC_DB+'.dbo.PURMA.MA001 = zszl.zsdh ');//兩邊資料格式不一樣 不能 left join  殘念
    iRes:=E2A.ExecSQL();
    }
    showmessage('Syn Supplier OK!');
 except
    on E:Exception do
    begin
      funcObj.WriteErrorLog(ZSZL.SQL.Text);
      E2A.Active:=false;
      showmessage('Error:'+E.Message);
    end;
 end;
end;

end.
