unit TraceApplyTotal1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ExtCtrls,ehlibBDE,
  comobj, PrnDbgeh, ComCtrls, IniFiles;

type
  TTraceApply = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    cb2: TComboBox;
    Edit4: TEdit;
    Edit6: TEdit;
    DBGridEh1: TDBGridEh;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Qtemp: TQuery;
    Button2: TButton;
    Query1SGNO: TStringField;
    Query1GSBH: TStringField;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1ZWPM: TStringField;
    Query1DWBH: TStringField;
    Query1CGQty: TCurrencyField;
    Query1RKQty: TCurrencyField;
    Query1VNPrice: TCurrencyField;
    Query1VNACC: TCurrencyField;
    Query1CG_ZSBH: TStringField;
    Query1RK_ZSBH: TStringField;
    Query1SupName: TStringField;
    Query1CGDate: TDateTimeField;
    Query1YQDate: TDateTimeField;
    Query1CFMDate: TDateTimeField;
    Query1RKDate: TDateTimeField;
    Query1RKNO: TStringField;
    Query1Qty: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit5: TEdit;
    Query1Depname: TStringField;
    Query1LB: TStringField;
    LBCombo: TComboBox;
    Label8: TLabel;
    LBName: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure LBComboChange(Sender: TObject);
  private
    { Private decl
    procedure Button1Click(Sender: TObject);arations }
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  TraceApply: TTraceApply;

implementation

uses main1, FunUnit;

{$R *.dfm}

procedure TTraceApply.Button1Click(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('  select  SGDHS.SGNO,SGDH.GSBH,SGDHS.CLBH,SGDH.LB,  CLZL.YWPM,CLZL.ZWPM , CLZL.DWBH');
    SQL.Add('          ,SGDHS.Qty, isnull(CGZLS.Qty, 0.0) as CGQty,  KCRKS.RKQty, KCRKS.VNPrice,KCRKS.VNACC, CGZLS.ZSBH as CG_ZSBH, KCRK.ZSBH as RK_ZSBH, zszl.zsywjc as SupName');
    SQL.Add('          , convert(smalldatetime,convert(varchar, CGZLS.CGDate,111)) as CGDate, CGZLS.YQDate, CGZLS.CFMDate');
    SQL.Add('          , KCRK.USERDate as RKDate, KCRKS.RKNO,BDepartment.Depname ');
    SQL.Add('  from SGDHS left join SGDH on SGDH.SGNO=SGDHS.SGNO');
    SQL.Add('  left join( select CGZLS.CGNO, CGZLS.CLBH, CGZLSS.ZLBH,CGZLSS.Qty, CGZL.CGDate,CGZLS.YQDate, CGZLS.CFMDate, CGZL.GSBH, CGZL.ZSBH');
    SQL.Add('  		        from CGZLS  ');
    SQL.Add('             left join CGZL on CGZl.CGNO=CGZLS.CGNO');
    SQL.Add('  					  left join CGZLSS on CGZLSS.CGNO=CGZLS.CGNO and CGZLSS.CLBH=CGZLS.CLBH ');
    SQL.Add('             where CGZL.CGLX=''4'' ');
    if edit1.Text <>'' then
      SQL.Add('             and CGZLS.CLBH like '''+edit1.Text+'%'+'''');

    if cb2.Text <> 'ALL' then
      SQL.Add('            and CGZL.GSBH ='''+cb2.Text+''' ');
    SQL.Add('              ) CGZLS on  CGZLS.CLBH=SGDHS.CLBH and CGZLS.ZLBH=SGDHS.SGNO');

    SQL.Add('  left join( select KCRKS.CGBH ,KCRKS.CLBH, sum(KCRKS.Qty) as RKQty,KCRKS.VNPrice, sum(KCRKS.VNACC) as VNACC , MAX(KCRKS.RKNO) as RKNO');
    SQL.Add('             from  KCRKS  ');
    SQL.Add('             left join KCRK on KCRK.RKNO=KCRKS.RKNO');
    SQL.Add('             where KCRK.SB=''1'' ');
    if edit1.Text <>'' then
      SQL.Add('                and KCRKS.CLBH like '''+edit1.Text+'%'+'''');
    SQL.Add('             Group by KCRKS.CGBH , KCRKS.CLBH,KCRKS.VNPrice) KCRKS on KCRKS.CGBH = CGZLS.CGNO and KCRKS.CLBH = CGZLS.CLBH ');
    SQL.Add('  left join BDepartment on BDepartment.ID=SGDH.DepID   ');
    SQL.Add('  left join KCRK on KCRK.RKNO = KCRKS.RKNO   ');
    SQL.Add('  left join zszl on CGZLS.zsbh=zszl.zsdh  ');
    SQL.Add('  left join CLZL on SGDHS.CLBH = CLZL.CLDH');
    SQL.Add('  where 1=1');
    if cb2.Text <> 'ALL' then
      SQL.Add('and SGDH.GSBH='''+cb2.Text+''' ');
    if edit1.Text <>'' then
      SQL.Add('  and  SGDHS.CLBH like '''+edit1.Text+'%'+'''');
    if edit2.Text <>'' then
      SQL.Add('  and  SGDHS.SGNO like '''+edit2.Text+'%'+'''');
    if edit4.Text <>'' then
      SQL.Add('  and  zszl.zsdh like '''+edit4.Text+'%'+'''');
    if edit6.Text <>'' then
      SQL.Add('  and  zszl.zsywjc like '''+edit6.Text+'%'+'''');
    if edit3.Text <>'' then
      SQL.Add('  and  SGDH.DepID like '''+edit3.Text+'%'+'''');
    if edit5.Text <>'' then
      SQL.Add('  and  BDepartment.Depname like '''+edit5.Text+'%'+'''');
    if LBCombo.Text<>'' then
      SQL.Add('    and SGDH.LB='''+LBCombo.Text+''' ');
    SQL.add('and convert(smalldatetime,convert(varchar,SGDH.SGDATE,111))  between ');
    SQL.add(''''+formatdatetime('yyyy/MM/dd',DTP1.Date) +''' and  '''+formatdatetime('yyyy/MM/dd',DTP2.Date) +'''');
    SQL.Add('  order by SGDHS.SGNO DESC  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end; 

end;

procedure TTraceApply.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TTraceApply.FormDestroy(Sender: TObject);
begin
  TraceApply:=nil;
end;

procedure TTraceApply.FormCreate(Sender: TObject);
var i:integer;
    MyIni :Tinifile;
    AppDir:string;
begin
//
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(Query1.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(Query1.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;

  LBCombo.ItemIndex:=3;

  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select GSDH from BGSZL order by GSDH');
    active:=true;
    cb2.Items.Add('ALL');
    for i:=1 to recordcount do
    begin
      cb2.Items.Add(fieldbyname('GSDH').asstring);
      next;
    end;

    cb2.Text:=main.edit2.Text;
    active:=false;
  end;

  DTP1.Date:=date-30;
  DTP2.date:=date;

end;

procedure TTraceApply.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
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
        WorkBook:=eclApp.workbooks.Add;
        for   i:=0   to   Query1.fieldcount-1   do
          begin
              eclApp.Cells(1,i+1):=Query1.fields[i].FieldName;
          end;

        Query1.First;
        j:=2;
        while   not   Query1.Eof   do
          begin
            for   i:=0   to  Query1.fieldcount-1  do
            begin
              eclApp.Cells(j,i+1):=Query1.Fields[i].Value;
            end;
          Query1.Next;
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

procedure TTraceApply.LBComboChange(Sender: TObject);
begin
  if LBCombo.Text='' then LBName.Caption:='全部';
  if LBCombo.Text='01' then LBName.Caption:='每月辦公室請購明細';
  if LBCombo.Text='02' then LBName.Caption:='預算買五金日雜';
  if LBCombo.Text='03' then LBName.Caption:='請購單';
  if LBCombo.Text='04' then LBName.Caption:='機器零件';
  if LBCombo.Text='09' then LBName.Caption:='生產模製具';
end;

end.



