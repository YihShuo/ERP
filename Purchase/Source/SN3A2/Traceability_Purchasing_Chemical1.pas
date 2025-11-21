unit Traceability_Purchasing_Chemical1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,IniFiles,ShellApi,
  ComCtrls;

type
  TTraceability_Purchasing_Chemical = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    MatNoEdit: TEdit;
    Button1: TButton;
    MatNameEdit: TEdit;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    DS2: TDataSource;
    QFile: TQuery;
    QFileCLBH: TStringField;
    QFileLotNO: TStringField;
    QFileLotFile: TStringField;
    QFileZLBH: TStringField;
    Query1GSBH: TStringField;
    Query1CGNO: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CQDH: TStringField;
    Query1CGQty: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1Address_Of_Buy_Com: TStringField;
    Query1Address_Of_Sell_Com: TStringField;
    Query1usprice: TFloatField;
    Query1vnprice: TCurrencyField;
    Query1DOCNO: TStringField;
    Query1Declaretion: TStringField;
    Query1BillNo: TStringField;
    Query1CountryOrigin: TStringField;
    Query1MaterialOrigin: TStringField;
    Query1CertificateOrigin: TStringField;
    Query1FKBH: TStringField;
    Query1PaymentDate: TDateTimeField;
    Query1USERNAME: TStringField;
    Query1DepName: TStringField;
    Query1Amount_USD: TCurrencyField;
    Query1Amount_VND: TCurrencyField;
    Query1RKDate: TDateTimeField;
    Query1RKNO: TStringField;
    Query1CGDate: TDateTimeField;
    Label2: TLabel;
    SuppIDEdit: TEdit;
    Label3: TLabel;
    SuppNameEdit: TEdit;
    Label4: TLabel;
    DTP1: TDateTimePicker;
    Label5: TLabel;
    DTP2: TDateTimePicker;
    Query1zsywjc: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    Address,CKBH:string;
    SQL_LinkServer,AccountN233_CheckLinkServer:string;
    DCTFilePath: string;
    OriginFilePath: string;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Traceability_Purchasing_Chemical: TTraceability_Purchasing_Chemical;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TTraceability_Purchasing_Chemical.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  Address:='HOA PHU INDUSTRIAL ZONE, THANH HUNG HAMLET, HOA PHU VILLAGE, LONG HO DISTRICT, VINH LONG PROVINCE, VIETNAM';
  CKBH:='VTXW';
  AppDir:=ExtractFilePath(Application.ExeName);
  AccountN233_CheckLinkServer:='Y';
  DCTFilePath := '\\192.168.123.112\origin\';
  OriginFilePath := '\\192.168.23.16\printlabel\uploadfile\';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Address:=MyIni.ReadString('ERP','Address','');
      CKBH:=MyIni.ReadString('ERP','Purchase_N3A2_CKBH','VTXW');
      AccountN233_CheckLinkServer:=MyIni.ReadString('ERP','AccountN233_CheckLinkServer','');
      DCTFilePath:=MyIni.ReadString('DCT','Purchase_N2A_DCTFilePath','');
      OriginFilePath:=MyIni.ReadString('ERP','PurchaseN39_OriginFile','');
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
end;
//

procedure TTraceability_Purchasing_Chemical.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTraceability_Purchasing_Chemical.FormDestroy(Sender: TObject);
begin
  Traceability_Purchasing_Chemical:=nil;
end;

procedure TTraceability_Purchasing_Chemical.Button1Click(Sender: TObject);
begin
  with Query1 do
  begin
    active:=false;
    //Close;
    sql.Clear;
    SQL.Add('SET ANSI_NULLS ON ');
    SQL.Add('SET ANSI_WARNINGS ON ');
    ExecSQL();
    active:=false;
    sql.Clear;
    sql.Add(' Select  CGZLS.GSBH, CGZLS.CGNO, CGZLS.CLBH,  CLZL.YWPM, CLZL.DWBH , case when  CGZLS.ZSBH=''VC115'' then ''TW'' else ''VN'' end as CQDH  ');
    sql.Add('     		,isnull(CGZLS.Qty, 0) as CGQty,  RKZL.RKQty,zszl.zsywjc as zsywjc, '''+Address+''' as Address_Of_Buy_Com,zszl.yjdz as Address_Of_Sell_Com ');
    sql.Add('     		,RKZL.usprice,RKZL.vnprice,RKZL.DOCNO,RKZL.Declaretion ');
    sql.Add('         ,case when CGZLS.ZSBH<>''VC115'' then RKZL.BillNo else Bill_Info.BillNo end as BillNo ');
    sql.Add('         ,case when CGZLS.ZSBH<>''VC115'' then ''VIET NAM'' else Bill_Info.Country end as CountryOrigin  ');
    sql.Add('         ,Origin.Country as MaterialOrigin,Origin.DocFile as CertificateOrigin,RKZL.FKBH,RKZL.PaymentDate,RKZL.USERNAME,RKZL.DepName,RKZL.Amount_USD,RKZL.Amount_VND,RKZL.RKDate,RKZl.RKNO,CGZLS.CGDate  ');
    sql.Add(' From (  ');
    sql.Add('         select CGZLS.CGNO, CGZLS.CLBH, CGZLS.Qty, CGZL.CGDate ');
    sql.Add('                , CGZLS.YQDate, CGZLS.CFMDate, CGZL.GSBH, CGZL.ZSBH ');
    sql.Add('         from CGZLS  with (nolock) ');
    sql.Add('         left join CGZL on CGZl.CGNO=CGZLS.CGNO ');
    sql.Add('         where CGZLS.YN!=0 and CGZLS.CLBH like ''W%'' ');
    sql.Add('         and CGZL.GSBH = '''+main.edit2.Text+''' ');
    sql.Add('         and convert(smalldatetime,convert(varchar,CGZL.CGDate,111)) between ');
    sql.add('         '''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    sql.Add('         and CGZL.CGLX = ''4'' ');
    sql.Add('        )  CGZLS  ');
    sql.Add(' left join ( select KCRK.ZSNO as ZSNO,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty,  ');
    sql.Add('                    max(KCRKS.RKNO) as RKNO,max(KCRK.USERDate) as RKDate, ');
    sql.Add('                    max(kcrks.usprice) as usprice,max(kcrks.vnprice) as vnprice ,Declaretion,KCRK.DOCNO,KCRK.Memo as BillNo,KCRK.ZSBH,zszl.yjdz ');
    sql.Add('         				   ,CGZL_Payment.FKBH,CGZL_Payment.USERDATE as PaymentDate,Busers.USERNAME,DepName ');
    sql.Add('                    ,round(((CGZL_Declaration.TONGTRIGIA_HOADON)-(round((CGZL_Declaration.TONGTRIGIA_HOADON*(100-CGZL_PaymentS.Percent_TT)/100),2))),2)  as Amount_USD ');
    sql.Add('                    ,CGZL_VATNO.TONGTIEN_THANHTOAN as Amount_VND ');
    sql.Add('             from  KCRKS with (nolock)  ');
    sql.Add('             left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO  ');
    sql.Add('        	    left join KCPK on kcrk.RKNO=kcpk.PKNO ');
    sql.Add('        	    left join zszl on kcrk.ZSBH=zszl.zsdh ');
    sql.Add('         	  left join CGZL_PaymentS on kcpk.Declaretion=CGZL_PaymentS.DECLARATION and kcrk.DOCNO=CGZL_PaymentS.DOCNO ');
    sql.Add('       	    left join CGZL_PaymentSS on CGZL_PaymentSS.VATNO=KCRK.DOCNO and CGZL_PaymentSS.ZSBH_MST=zszl.tybh  ');
    sql.Add('       	    left join CGZL_Payment on isnull(CGZL_PaymentS.FKBH,CGZL_PaymentSS.FKBH)=CGZL_Payment.FKBH  ');
    sql.Add('             left join '+SQL_LinkServer+'.CGZL_Declaration CGZL_Declaration on CGZL_PaymentS.DECLARATION=CGZL_Declaration.DECLARATION ');
    sql.Add('       			left join '+SQL_LinkServer+'.CGZL_VATNO CGZL_VATNO on CGZL_VATNO.VATNO=CGZL_PaymentSS.VATNO and CGZL_PaymentSS.ZSBH_MST=CGZL_VATNO.ZSBH_MST ');
    sql.Add('             and CGZL_PaymentSS.KYHIEU_HOADON=CGZL_VATNO.KYHIEU_HOADON  ');
    sql.Add('       	    left join BDepartment on CGZL_Payment.DEPID=BDepartment.ID  ');
    sql.Add('     		    left join Busers on CGZL_Payment.USERID=Busers.USERID ');
    sql.Add('             WHERE KCRK.SFL<>''THU HOI'' and KCRK.CKBH='''+CKBH+''' ');
    if MatNoEdit.Text <> '' then
      sql.Add('           and KCRKS.CLBH like '''+MatNoEdit.Text+'%'' ');
    sql.Add('             group by KCRK.ZSNO,KCRKS.CLBH,Declaretion,KCRK.DOCNO,KCRK.MEMO,KCRK.ZSBH,zszl.yjdz,CGZL_Payment.FKBH,CGZL_Payment.USERDATE,Busers.USERNAME,DepName ');
    sql.Add('                     ,CGZL_Declaration.TONGTRIGIA_HOADON,CGZL_PaymentS.Percent_TT,CGZL_VATNO.TONGTIEN_THANHTOAN  ) RKZL  ');
    sql.Add('             on RKZL.ZSNO = CGZLS.CGNO and RKZL.CLBH = CGZLS.CLBH  ');
    sql.Add(' left join CLZL on CGZLS.CLBH = CLZL.CLDH ');
    sql.Add(' left join zszl on cgzls.zsbh=zszl.zsdh ');
    sql.Add(' left join CLZL_Origin Origin on CLZL.CLDH=Origin.CLBH and Origin.GSBH='''+main.Edit2.Text+'''  ');
    sql.Add(' left join CLZL_FLEX on CLZL.CLDH=CLZL_FLEX.CLDH ');
    sql.Add(' left join Bill_Info on RKZL.DOCNO=Bill_Info.DocNo ');
    sql.Add(' where CGZLS.CLBH like ''W%''  ');
    if MatNoEdit.Text <> '' then
      sql.Add(' and CGZLS.CLBH  like '''+MatNoEdit.Text+'%'' ');
    if MatNameEdit.Text <> '' then
      sql.Add(' and CLZL.YWPM like ''%'+ MatNameEdit.Text+'%'' ');
    if SuppIDEdit.Text <> '' then
      sql.Add(' and CGZLS.ZSBH like '''+SuppIDEdit.Text+'%'' ');
    if SuppNameEdit.Text <> '' then
      sql.Add(' and ZSZL.ZSYWJC like ''%'+ SuppNameEdit.Text+'%'' ');
    sql.Add(' order by CGZLS.CGNO asc ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TTraceability_Purchasing_Chemical.FormCreate(Sender: TObject);
begin
  DTP1.Date:= Date-30;
  DTP2.Date:= Date;
  ReadIni();
end;

procedure TTraceability_Purchasing_Chemical.Button3Click(Sender: TObject);
var
  eclApp,WorkBook:olevariant;
  i,j,l:integer;
begin
  if query1.Active then
  begin
    if query1.recordcount=0 then
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
    for i:=0 to DBGridEh1.Columns.Count-1 do
    begin
      eclApp.Cells(1,i+1):=DBGridEh1.Columns[i].Title.Caption;
      eclApp.Cells.Cells.item[1,i+1].font.name := 'Calibri';
      eclApp.Cells.Cells.item[1,i+1].font.size:='10';
    end;
    query1.First;
    j:=2;
    while   not  query1.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for i:=0 to DBGridEh1.Columns.Count-1 do
      begin
        if ((DBGridEh1.Fields[i].FieldName = 'DOCNO') or (DBGridEh1.Fields[i].FieldName = 'Declaretion')) then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value
        else
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        if ((DBGridEh1.Fields[i].FieldName = 'PaymentDate') or (DBGridEh1.Fields[i].FieldName = 'RKDate') or (DBGridEh1.Fields[i].FieldName = 'CGDate')) then
           eclApp.ActiveSheet.Cells[j, i + 1].NumberFormat := 'YYYY/MM/DD';
        eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        eclApp.Cells.Cells.item[j,i+1].font.name := 'Calibri';
      end;
      query1.Next;
      inc(j);
      // outline
      for l:=1 to 4 do
      begin
       eclApp.workbooks[1].sheets[1].range[eclApp.workbooks[1].sheets[1].cells[1,1],eclApp.workbooks[1].sheets[1].cells[j-1,i]].borders[l].linestyle:=1;
      end;
    end;
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

procedure TTraceability_Purchasing_Chemical.DBGridEh1DblClick(Sender: TObject);
begin
   if (DBGridEh1.SelectedField.FieldName = 'CertificateOrigin') and (Query1.FieldByName('CertificateOrigin').AsString <> '')  then
    ShellExecute(0, 'open', PChar(DCTFilePath + Query1.FieldByName('CertificateOrigin').AsString), nil, nil, SW_Normal);
end;

procedure TTraceability_Purchasing_Chemical.Button2Click(Sender: TObject);
var a: string;
    eclApp, WorkBook: olevariant;
    i, j: integer;
begin
  if (QFile.Active) then
  begin
    try
      eclApp := CreateOleObject('Excel.Application');
      WorkBook := CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft Excel', 'Microsoft Excel', MB_OK + MB_ICONWarning);
      Exit;
    end;

    try
      WorkBook := eclApp.workbooks.Add;
      for i:=0 to QFile.FieldCount-1 do
      begin
        eclApp.Cells(1, i+1) := QFile.Fields[i].FieldName;
      end;

      QFile.First;
      j := 2;
      while not QFile.Eof do
      begin
        for i:=0 to QFile.FieldCount-1 do
        begin
          eclApp.Cells(j, i+1) := QFile.Fields[i].Value;
        end;
        QFile.Next;
        Inc(j);
      end;
      eclapp.columns.autofit;
      ShowMessage('Succeed');
      eclApp.Visible := True;
    except on F:Exception do
      ShowMessage(F.Message);
    end;
  end;
end;

end.
