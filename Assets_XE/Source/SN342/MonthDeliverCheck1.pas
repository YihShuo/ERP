unit MonthDeliverCheck1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Bde.DBTables, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls,dateutils,comobj;

type
  TMonthDeliverCheck = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    SBBHEdit: TEdit;
    Button1: TButton;
    LLNOEdit: TEdit;
    YWPMEdit: TEdit;
    LSBHEdit: TEdit;
    Button2: TButton;
    CBX1: TComboBox;
    CBX2: TComboBox;
    CBX4: TComboBox;
    CBX5: TComboBox;
    DBGridEh1: TDBGridEh;
    KCLLS: TQuery;
    DS1: TDataSource;
    Qtemp: TQuery;
    KCLLSLLNO: TStringField;
    KCLLSTSID: TStringField;
    KCLLSPARAMENT1: TStringField;
    KCLLSPARAMENT2: TStringField;
    KCLLSPARAMENT3: TStringField;
    KCLLSPARAMENT4: TStringField;
    KCLLSPARAMENT5: TStringField;
    KCLLSPARAMENT6: TStringField;
    KCLLSVALUE1: TStringField;
    KCLLSVALUE2: TStringField;
    KCLLSVALUE3: TStringField;
    KCLLSVALUE4: TStringField;
    KCLLSVALUE5: TStringField;
    KCLLSVALUE6: TStringField;
    KCLLSCOLUMN1: TStringField;
    KCLLSCOLUMN2: TStringField;
    KCLLSCOLUMN3: TStringField;
    KCLLSCOLUMN4: TStringField;
    KCLLSCOLUMN5: TStringField;
    KCLLSCOLUMN6: TStringField;
    KCLLSSBBH: TStringField;
    KCLLSYWPM: TStringField;
    KCLLSZWPM: TStringField;
    KCLLSDepName: TStringField;
    KCLLSDepID_Memo: TStringField;
    KCLLSUSERID: TStringField;
    KCLLSUSERDATE: TDateTimeField;
    KCLLSYN: TStringField;
    KCLLSQUCBH: TStringField;
    KCLLSLSBH: TStringField;
    KCLLSNSX: TStringField;
    KCLLSTSBH: TStringField;
    KCLLSQty: TFloatField;
    KCLLSCFMDATE: TDateTimeField;
    KCLLSGSBH: TStringField;
    KCLLSLB: TStringField;
    KCLLSVWPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthDeliverCheck: TMonthDeliverCheck;

implementation

{$R *.dfm}

uses main1,fununit;

function   DaysOfItsMonth(ADate:   TDateTime):   Word;
var
   Y,M,D:Word;
begin
    DecodeDate(ADate,Y,M,D);
    ADate:=EncodeDate(Y,M,1);
    Result:=Trunc(IncMonth(ADate,1)-ADate);
end;

procedure TMonthDeliverCheck.Button1Click(Sender: TObject);
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
  with KCLLS do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select TSCD_KCLLS.LLNO,TSCD_KCLLS.TSID ');
    sql.Add(',TSCD_KCLLS.PARAMENT1,TSCD_KCLLS.PARAMENT2,TSCD_KCLLS.PARAMENT3,TSCD_KCLLS.PARAMENT4,TSCD_KCLLS.PARAMENT5,TSCD_KCLLS.PARAMENT6 ');
    sql.Add(',TSCD_KCLLS.VALUE1,TSCD_KCLLS.VALUE2,TSCD_KCLLS.VALUE3,TSCD_KCLLS.VALUE4,TSCD_KCLLS.VALUE5,TSCD_KCLLS.VALUE6 ');
    sql.Add(',TSCD_KCLLS.COLUMN1,TSCD_KCLLS.COLUMN2,TSCD_KCLLS.COLUMN3,TSCD_KCLLS.COLUMN4,TSCD_KCLLS.COLUMN5,TSCD_KCLLS.COLUMN6');
    sql.Add(',TSCD.SBBH,TSCD_SB.YWPM,TSCD_SB.ZWPM,TSCD_SB.VWPM,IsNull(JDBDep.DepName,BDepartment.DepName) as DepName,TSCD.DepID_Memo,TSCD_KCLLS.USERID,TSCD_KCLLS.USERDATE,TSCD_KCLLS.YN ');
    sql.Add(',TSCD_SB.QUCBH,TSCD_SB.LSBH,TSCD.NSX,TSCD.TSBH,TSCD_KCLLS.Qty,TSCD_KCLL.CFMDATE,TSCD_KCLL.GSBH,TSCD_KCLL.LB');
    sql.Add('from TSCD_KCLLS ');
    sql.Add('left join TSCD_KCLL on TSCD_KCLLS.LLNO=TSCD_KCLL.LLNO ');
    sql.Add('left join TSCD on TSCD.TSID=TSCD_KCLLS.TSID ');
    sql.Add('left join TSCD_SB on TSCD_SB.SBBH = TSCD.SBBH ');
    sql.Add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD.DepID ');
    sql.Add('left join TSCD_BDepartment JDBDep on JDBDep.ID=TSCD.JDTS') ;
    SQL.Add('where Convert(smalldatetime,convert(varchar,TSCD_KCLL.CFMDate,111)) between ');
    SQL.add('      '''+formatdatetime('yyyy/MM/dd',sdate)+''''+' and ' +''''+formatdatetime('yyyy/MM/dd',edate)+'''');
    SQL.add('      and TSCD_KCLL.YN='+''''+'5'+'''');
    if SBBHEdit.Text<>'' then
    SQL.Add('and TSCD.SBBH like ''%'+SBBHEdit.Text+'%'' ');
    if LLNOEdit.Text<>'' then
    SQL.Add('and TSCD_KCLLS.LLNO like ''%'+LLNOEdit.Text+'%'' ');
    if YWPMEdit.Text<>'' then
    SQL.Add('and TSCD_SB.YWPM like ''%'+YWPMEdit.Text+'%'' ');
    if LSBHEdit.Text<> '' then
    sql.Add('and TSCD_SB.LSBH like ''%'+LSBHEdit.Text+'%'' ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true

  end;
end;

procedure TMonthDeliverCheck.Button2Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
      i,j:integer;
begin
  if  KCLLS.active  then
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
      for   i:=0   to   KCLLS.fieldcount-1   do
      begin
         eclApp.Cells(1,i+1):=KCLLS.fields[i].FieldName;
      end;

      KCLLS.First;
      j:=2;
      while   not KCLLS.Eof   do
      begin
        for   i:=0   to  KCLLS.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=KCLLS.Fields[i].AsString;
        end;
        KCLLS.Next;
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

procedure TMonthDeliverCheck.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TMonthDeliverCheck.FormCreate(Sender: TObject);
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

procedure TMonthDeliverCheck.FormDestroy(Sender: TObject);
begin
   MonthDeliverCheck:=nil;
end;

end.
