unit MonthMaterialEntry1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Bde.DBTables, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls,dateutils,fununit,comobj;

type
  TMonthMaterialEntry = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    SBBHEdit: TEdit;
    Button1: TButton;
    RKNOEdit: TEdit;
    YWPMEdit: TEdit;
    ZSYWJCEdit: TEdit;
    Button2: TButton;
    DBGridEh1: TDBGridEh;
    KCRKS: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    Label4: TLabel;
    CBX1: TComboBox;
    Label6: TLabel;
    CBX2: TComboBox;
    Label12: TLabel;
    Label11: TLabel;
    CBX4: TComboBox;
    Label13: TLabel;
    CBX5: TComboBox;
    KCRKSGSBH: TStringField;
    KCRKSRKNO: TStringField;
    KCRKSZSJC_YW: TStringField;
    KCRKSZSJC_ZW: TStringField;
    KCRKSZSNO: TStringField;
    KCRKSUSERDATE: TDateTimeField;
    KCRKSCFMDATE: TDateTimeField;
    KCRKSSBBH: TStringField;
    KCRKSDWBH: TStringField;
    KCRKSQTY: TFloatField;
    KCRKSVNPrice: TCurrencyField;
    KCRKSVNACC: TCurrencyField;
    KCRKSUSPrice: TFloatField;
    KCRKSUSACC: TFloatField;
    KCRKSCWHL: TCurrencyField;
    KCRKSCWHL_HG: TCurrencyField;
    KCRKSVNACC_HG: TCurrencyField;
    KCRKSVNPrice_HG: TCurrencyField;
    KCRKSVNTax_HG: TCurrencyField;
    KCRKSVNACC_Tax: TCurrencyField;
    KCRKSMonthS: TIntegerField;
    KCRKSCostID: TStringField;
    KCRKSZWPM: TStringField;
    KCRKSVWPM: TStringField;
    KCRKSSOHIEU: TStringField;
    KCRKSDOCNO: TStringField;
    KCRKSDOCDate: TDateTimeField;
    KCRKSHDNO: TStringField;
    KCRKSHDDate: TDateTimeField;
    KCRKSTOKHAI: TStringField;
    KCRKSTKDate: TDateTimeField;
    KCRKSRKMemo: TStringField;
    KCRKSTSBH: TStringField;
    KCRKSHGPM: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBX2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthMaterialEntry: TMonthMaterialEntry;

implementation

{$R *.dfm}

uses main1;

function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TMonthMaterialEntry.Button1Click(Sender: TObject);
var sdate,edate:Tdate;
    y,m:integer;
begin
  if (CBX1.text='')or (CBX2.text='')  then
  begin
    showmessage('You have to select the year and month first.');
    abort;
  end;
  y:=strtoint(CBX1.Text);
  m:=strtoint(CBX2.Text);
  if (y>2999) or (y<1900) then
  begin
    showmessage('Pls key in right year');
    abort;
  end;
  if (m=0) or (m>12) then
  begin
    showmessage('Pls key in right month');
    abort;
  end;
  SDate:=EncodeDate(strtoint(CBX1.Text), strtoint(CBX2.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), 1);
  EDate:=EncodeDate(strtoint(CBX4.Text), strtoint(CBX5.Text), DaysOfItsMonth(EDate));
  With KCRKS do
  begin
    Active:=false;
    sql.Clear;
    SQL.Add('  select TSCD_KCRK.GSBH,TSCD_KCRK.RKNO,TSCD_ZSZL.ZSJC_YW,TSCD_ZSZL.ZSJC_ZW,TSCD_KCRK.ZSNO  ');
    sql.Add('         ,TSCD_KCRK.SOHIEU,TSCD_KCRK.DOCNO,TSCD_KCRK.DOCDate,TSCD_KCRK.HDNO,TSCD_KCRK.HDDate,TSCD_KCPK.Declaretion as TOKHAI,TSCD_KCPK.TKDate');
    SQL.Add('         ,TSCD_KCRK.USERDATE,TSCD_KCRK.CFMDATE,TSCD_KCRKS.SBBH,TSCD_SB.ZWPM,TSCD_SB.VWPM,TSCD_SB.HGPM,TSCD_SB.DWBH,TSCD_KCRKS.QTY  ');
    SQL.Add('         ,TSCD_KCRKS.VNPrice,TSCD_KCRKS.VNACC,TSCD_KCRKS.USPrice,TSCD_KCRKS.USACC,TSCD_KCRKS.CWHL  ');
    sql.Add('         ,TSCD_KCRKS.CWHL_HG ,TSCD_KCRKS.VNACC_HG,TSCD_KCRKS.VNPrice_HG,TSCD_KCRKS.VNTax_HG');
    sql.Add('         ,TSCD_KCRKS.VNACC_Tax,TSCD_KCRKS.MonthS,TSCD_KCRKS.CostID,TSCD_KCRKS.RKMemo');
    sql.Add('         ,case when  TSCD_KCRKS.Memo is not null then TSCD_KCRKS.Memo else CAST(substring (( select '','' + TSCD.TSBH ');
    sql.Add(' 	      from TSCD where TSCD.SBBH=TSCD_SB.SBBH and TSCD.RKNO=TSCD_KCRKS.RKNO and TSCD.SBBH=TSCD_KCRKS.SBBH ');
    sql.Add('		      for XML Path ('''')),2,1000) as varchar(1000)) end as TSBH');
    SQL.Add('  from TSCD_KCRK  ');
    SQL.Add('  left join TSCD_KCRKS on TSCD_KCRK.RKNO=TSCD_KCRKS.RKNO   ');
    SQL.Add('  left join TSCD_SB on TSCD_SB.SBBH = TSCD_KCRKS.SBBH  ');
    SQL.Add('  left join TSCD_ZSZL on TSCD_KCRK.ZSBH=TSCD_ZSZL.ZSDH  ');
    sql.Add('  left join TSCD_KCPK on TSCD_KCRK.RKNO=TSCD_KCPK.PKNO');
    SQL.Add('  where Convert(smalldatetime,convert(varchar,TSCD_KCRK.USERDate,111)) between ');
    SQL.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    //SQL.add('      and TSCD_KCRK.GSBH='+''''+main.edit2.Text+'''');
    SQL.add('      and TSCD_KCRK.YN='+''''+'5'+'''');
    if SBBHEdit.Text<>'' then
    SQL.Add('       and TSCD_KCRKS.SBBH like ''%'+SBBHEdit.Text+'%'' ');
    if RKNOEdit.Text<>'' then
    SQL.Add('       and TSCD_KCRK.RKNO like ''%'+RKNOEdit.Text+'%'' ');
    if YWPMEdit.Text<>'' then
    SQL.Add('       and TSCD_SB.YWPM like ''%'+YWPMEdit.Text+'%'' ');
    if ZSYWJCEdit.Text<>'' then
    SQL.Add('       and TSCD_ZSZL.ZSJC_YW like ''%'+ZSYWJCEdit.Text+'%'' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
    //ExecSQL;
  end;
end;

procedure TMonthMaterialEntry.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  KCRKS.active  then
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
      for   i:=0   to   KCRKS.fieldcount-1   do
      begin
         eclApp.Cells(1,i+1):=KCRKS.fields[i].FieldName;
      end;

      KCRKS.First;
      j:=2;
      while   not KCRKS.Eof   do
      begin
        for   i:=0   to  KCRKS.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=KCRKS.Fields[i].AsString;
        end;
        KCRKS.Next;
        inc(j);
      end;
     eclapp.columns.autofit;
     eclApp.Visible:=True;
     showmessage('Succeed');
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;

procedure TMonthMaterialEntry.CBX2Change(Sender: TObject);
begin
  CBX5.Text:=CBX2.Text;
end;

procedure TMonthMaterialEntry.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TMonthMaterialEntry.FormCreate(Sender: TObject);
var
  myYear, myMonth, myDay : Word;
  i,j:integer;
begin
 
  // Load year-month
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

  for j:=0 to CBX4.Items.Count-1 do
  begin
    if strtoint(CBX4.Items[j])=myYear then
    begin
      CBX4.ItemIndex:=j;
      break;
    end;
  end;
  for j:=0 to CBX5.Items.Count-1 do
  begin
    if strtoint(CBX5.Items[j])=myMonth then
    begin
      CBX5.ItemIndex:=j;
      break;
    end;
  end;
end;

procedure TMonthMaterialEntry.FormDestroy(Sender: TObject);
begin
  MonthMaterialEntry:=nil;
end;

end.
