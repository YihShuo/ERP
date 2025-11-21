unit Traceability_Material_Receiving1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,comobj,IniFiles,ShellApi;

type
  TTraceability_Material_Receiving = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MatNoEdit: TEdit;
    Button1: TButton;
    MatNameEdit: TEdit;
    Button3: TButton;
    BuyNoEdit: TEdit;
    RYEdit: TEdit;
    DBGridEh1: TDBGridEh;
    Query1: TQuery;
    DS1: TDataSource;
    Query1KHPO: TStringField;
    Query1ZLBH: TStringField;
    Query1Declaretion: TStringField;
    Query1BillNo: TStringField;
    Query1DOCNO: TStringField;
    Query1CFMDate: TDateTimeField;
    Query1LoadingDate: TDateTimeField;
    Query1ArivalDate: TDateTimeField;
    Query1Place: TStringField;
    Query1PlaceLading: TStringField;
    Query1PortExport: TStringField;
    Query1PlaceDischarge: TStringField;
    Query1PlaceDelivery: TStringField;
    Query1FWD: TStringField;
    Query1Exporter: TStringField;
    Query1Producer: TStringField;
    Query1Carrier: TStringField;
    Query1Shipper: TStringField;
    Query1Consignee: TStringField;
    Query1NotifyParty: TStringField;
    Query1Container: TStringField;
    Query1VersselIdentification: TStringField;
    Query1PackingSlip3: TStringField;
    Query1Packinglocation: TStringField;
    Query1Packdate: TStringField;
    Query1DeliverDate: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    Address:string;
    ComFullName:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Traceability_Material_Receiving: TTraceability_Material_Receiving;

implementation

uses main1,fununit;

{$R *.dfm}
procedure TTraceability_Material_Receiving.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  Address:='HOA PHU INDUSTRIAL ZONE, THANH HUNG HAMLET, HOA PHU VILLAGE, LONG HO DISTRICT, VINH LONG PROVINCE, VIETNAM';
  ComFullName:='VINH LONG FOOTWEAR CO., LTD';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      Address:=MyIni.ReadString('ERP','Address','');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
    finally
      MyIni.Free;
    end;
  end;

end;
//

procedure TTraceability_Material_Receiving.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTraceability_Material_Receiving.FormDestroy(Sender: TObject);
begin
  Traceability_Material_Receiving:=nil;
end;

procedure TTraceability_Material_Receiving.Button1Click(Sender: TObject);
var InputIsOk:boolean;
    DDZL_SubSQL:String;
begin
  InputIsOk:=false;
  if length(RYEdit.Text)>=5 then InputIsOk:=true;
  if length(BuyNoEdit.Text)>=4 then InputIsOk:=true;
  DDZL_SubSQL:='and DDZL.GSBH='''+main.Edit2.Text+''' ';
  if BuyNoEdit.Text<>'' then
    DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ';
  if RYEdit.Text<>'' then
    DDZL_SubSQL:=DDZL_SubSQL+'and DDZL.DDBH like '''+RYEdit.Text+'%'' ';
  if InputIsOk=false then
  begin
    Showmessage('Input OrderNo(5) '+#13#10+'Input BuyNo(4)');
    abort;
  end;
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
    sql.Add(' Select * ');
    sql.Add(' from (   ');
    sql.Add(' Select  DDZL.KHPO ,ZLZLS2.ZLBH, case when RKZL.Declaretion is not null then RKZL.Declaretion else isnull(RKZL.DOCNO,''NO'') end as Declaretion,Bill_Info.BillNo  ');
    sql.Add('		      ,case when RKZL.Declaretion is not null then RKZL.DOCNO else ''NO'' end as DOCNO,CGZL.CFMDate,Bill_Info.LoadingDate,Bill_Info.ArivalDate,Bill_Info.DeliverDate   ');
    sql.Add('	      	,'''+Address+''' as Place ,Bill_Info.PlaceLading,Bill_Info.PortExport,Bill_Info.PlaceDischarge,Bill_Info.FWD,Max(zszl.zsywjc) as Exporter  ');
    sql.Add('		      ,case when CLZL.cqdh=''VN'' then ''VIET NAM'' else Bill_Info.Country end as Producer,Bill_Info.Shipper ');
    sql.Add('		      ,case when ISNULL(Bill_Info.Carrier,'''')='''' then ''Truck'' else Bill_Info.Carrier end as Carrier, KCRKScan_RF.MEMO as Packdate ');
    sql.Add('		      ,case when CLZL.cqdh=''VN'' then ''VIET NAM'' else Bill_Info.PlaceDelivery end as PlaceDelivery,case when CLZL.cqdh=''VN'' then ''VIET NAM'' else Bill_Info.PlaceDelivery end as Packinglocation ');
    sql.Add('   		  ,'''+ComFullName+''' as Consignee,''NO'' as NotifyParty,Bill_Info.Container,Bill_Info.VersselIdentification,'''' as PackingSlip3  ');
    sql.Add(' from ZLZLS2 with (nolock) ');
    sql.Add(' inner join DDZl  with (nolock) on DDZl.DDBH=ZLZLS2.ZLBH ' +DDZL_SubSQL );
    sql.Add(' left join DDZLTW with (nolock) on DDZLTW.DDBH=ZLZLS2.ZLBH ');
    sql.Add(' left join SCZL with (nolock) on ZLZLS2.ZLBH = SCZL.SCBH  ');
    sql.Add(' left join CLZL  with (nolock) on CLZL.CLDH=ZLZLs2.CLBH   ');
    sql.Add(' left join KFZL  with (nolock) on KFZl.KFDH=DDZLTW.KHBH   ');
    sql.Add(' left join ZLZL  with (nolock) on ZLZL.ZLBH=ZLZLS2.ZLBH   ');
    sql.Add(' left join XXZL  with (nolock) on XXZl.XieXing=DDZLTW.XieXing and XXZL.SheHao=DDZLTW.SheHao ');
    sql.Add(' left join KFXXZL  with (nolock) on KFXXZL.XieXing=DDZLTW.XieXing and KFXXZL.SheHao=DDZLTW.SheHao  ');
    sql.Add(' left join XXBWFL  with (nolock) on XXBWFL.XieXing=XXZL.XieXing and XXBWFL.BWBH=ZLZLS2.BWBH  ');
    sql.Add(' left join XXBWFLS  with (nolock) on XXBWFLS.FLBH=XXBWFL.FLBH  ');
    sql.Add(' left join lbzls on lbzls.lbdh=ddzl.ddgb and lbzls.lb=''06'' ');
    sql.Add(' left join ( select CGZLSS.ZLBH,CGZLSS.CLBH,sum(CGZLSS.Qty) as CGQty,CGZLSS.CFMDate,CGZL.CGNO ');
    sql.Add('             from CGZLSS with (nolock)  ');
    sql.Add('             inner join DDZL on DDZL.DDBH = CGZLSS.ZLBH '+DDZL_SubSQL);
    sql.Add('             left join CGZLS with (nolock)  on CGZLS.CGNO=CGZLSS.CGNO and CGZLS.CLBH=CGZLSS.CLBH   ');
    sql.Add('             left join  CGZL with (nolock)  on CGZl.CGNO=CGZLSS.CGNO  ');
    sql.Add('             where CGZL.CGLX in (''1'',''2'',''5'') and  DDZL.GSBH='''+main.edit2.Text+''' ');
    if BuyNoEdit.Text <>'' then
      sql.Add('           and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add('           and CGZLSS.ZLBH  like '''+RYEdit.Text+'%'' ');
    if MatNoEdit.Text <> '' then
      sql.Add('           and CGZLSS.CLBH like '''+MatNoEdit.Text+'%'' ');
    sql.Add('             group by CGZLSS.ZLBH,CGZLSS.CLBH,CGZLSS.CFMDate,CGZL.CGNO  ) CGZL  ');
    sql.Add('             on CGZL.ZLBH=ZLZLS2.ZLBH and CGZL.CLBH=ZLZLS2.CLBH ');
    sql.Add(' left join ( select KCRKS.CGBH as ZLBH ,KCRKS.CLBH,sum(KCRKS.Qty ) as RKQty, KCRKS.RKNO,Declaretion,KCRK.DOCNO,KCRK.Memo as BillNo,KCRK.ZSBH,zszl.yjdz  ');
    sql.Add('             from  KCRKS with (nolock)  ');
    sql.Add('             inner join DDZL on DDZL.DDBH=KCRKS.CGBH '+DDZL_SubSQL);
    sql.Add('             left join KCRK with (nolock)  on KCRK.RKNO=KCRKS.RKNO  ');
    sql.Add('        	    left join KCPK on kcrk.RKNO=kcpk.PKNO ');
    sql.Add('        	    left join zszl on kcrk.ZSBH=zszl.zsdh ');
    sql.Add('             where DDZL.GSBH='''+main.edit2.Text+''' ');
    sql.Add('             and KCRK.SFL<>''THU HOI'' ');
    if BuyNoEdit.Text <>'' then
      sql.Add('           and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add('           and KCRKS.CGBH  like '''+RYEdit.Text+'%'' ');
    if MatNoEdit.Text <> '' then
      sql.Add('           and KCRKS.CLBH like '''+MatNoEdit.Text+'%'' ');
    sql.Add('             group by KCRKS.CGBH,KCRKS.CLBH,KCRKS.RKNO,Declaretion,KCRK.DOCNO,KCRK.MEMO,KCRK.ZSBH,zszl.yjdz  ) RKZL  ');
    sql.Add('             on RKZL.ZLBH=ZLZLS2.ZLBH and RKZL.CLBH=ZLZLS2.CLBH ');
    sql.Add(' left join (select zsdh,zsywjc from zszl) zszl on ZLZLS2.CSBH=zszl.zsdh  ');
    sql.Add(' left join (select CGNO, CLBH, ZLBH, MEMO FROM KCRKScan_RFSSS LEFT JOIN KCRKScan_RF ON KCRKScan_RFSSS.SCNO=KCRKScan_RF.SCNO  ');
    sql.Add('            WHERE LB=''02'' AND MEMO IS NOT NULL) KCRKScan_RF on KCRKScan_RF.ZLBH=ZLZLS2.ZLBH and KCRKScan_RF.CLBH=ZLZLS2.CLBH ');
    sql.Add(' left join Bill_Info on RKZL.DOCNO=Bill_Info.DocNo ');
    sql.Add(' where DDZL.GSBH='''+main.edit2.Text+''' ');
    sql.Add(' and ZLZLS2.CLBH not like ''W%'' ');
    sql.Add(' and not exists(select CLBH from KCSAFE where KCSAFE.CLBH=ZLZLS2.CLBH ) ');
    if BuyNoEdit.Text <>'' then
      sql.Add('           and DDZL.BUYNO like '''+BuyNoEdit.Text+'%'' ');
    if RYEdit.Text <> '' then
      sql.Add(' and ZLZLS2.ZLBH  like '''+RYEdit.Text+'%'' ');
    if MatNoEdit.Text <> '' then
      sql.Add(' and ZLZLS2.CLBH  like '''+MatNoEdit.Text+'%'' ');
    if MatNameEdit.Text <> '' then
      sql.Add(' and CLZL.YWPM like ''%'+ MatNameEdit.Text+'%'' ');
    sql.Add(' and ZLZLS2.ZMLB=''N'' ');
    sql.Add(' and ZLZLS2.CLSL<>0 ');
    sql.Add(' and (XXBWFLS.DFL<>''G'' or XXBWFLS.DFL is null) ');
    sql.Add(' group by DDZL.KHPO ,ZLZLS2.ZLBH, Bill_Info.BillNo,CGZL.CFMDate,Bill_Info.LoadingDate,Bill_Info.ArivalDate,Bill_Info.DeliverDate   ');
    sql.Add('		       ,Bill_Info.PlaceLading,Bill_Info.PortExport,Bill_Info.PlaceDischarge,Bill_Info.PlaceDelivery,Bill_Info.FWD ');
    sql.Add('		       ,Bill_Info.Carrier,Bill_Info.Shipper,Bill_Info.Container,Bill_Info.VersselIdentification,RKZL.Declaretion,RKZL.DOCNO,CLZL.cqdh  ');
    sql.Add('		       ,Bill_Info.Country, KCRKScan_RF.MEMO ) Exp_Info ');
    sql.Add(' where  ((Exp_Info.Declaretion <>''NO'')  or  (Exp_Info.DOCNO <>''NO'') or (isnull(Exp_Info.CFMDate,'''')<>'''')) ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
end;

procedure TTraceability_Material_Receiving.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TTraceability_Material_Receiving.Button3Click(Sender: TObject);
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
        if ((DBGridEh1.Fields[i].FieldName = 'DOCNO') or (DBGridEh1.Fields[i].FieldName = 'Declaretion') or (DBGridEh1.Fields[i].FieldName = 'KHPO') or (DBGridEh1.Fields[i].FieldName = 'BillNo')) then
            eclApp.Cells(j,i+1):= #39 + DBGridEh1.Fields[i].Value
        else
            eclApp.Cells(j,i+1):=DBGridEh1.Fields[i].Value;
        if ((DBGridEh1.Fields[i].FieldName = 'CFMDate') or (DBGridEh1.Fields[i].FieldName = 'ArivalDate') or (DBGridEh1.Fields[i].FieldName = 'DeliverDate'))  then
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
    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;


end.
