unit MonthlyStockReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, ExtCtrls, DB, DBTables,iniFiles,Comobj;

type
  TMonthlyStockReport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Edit1: TEdit;
    CBX1: TComboBox;
    Button2: TButton;
    CBX2: TComboBox;
    CBX3: TComboBox;
    Edit4: TEdit;
    CBX6: TComboBox;
    Button3: TButton;
    DBGridEh1: TDBGridEh;
    CalQuery: TQuery;
    CalQueryKCYEAR: TStringField;
    CalQueryKCMONTH: TStringField;
    CalQueryCKBH: TStringField;
    CalQueryHGLB: TStringField;
    CalQueryCLBH: TStringField;
    CalQueryRemQty: TCurrencyField;
    CalQueryRemQty01T: TCurrencyField;
    CalQueryRemQty02T: TCurrencyField;
    CalQueryRemQty03T: TCurrencyField;
    CalQueryRemQty04T: TCurrencyField;
    CalQueryRemQty05T: TCurrencyField;
    CalQueryRemQty06T: TCurrencyField;
    CalQueryRemQty07T: TCurrencyField;
    CalDS: TDataSource;
    CalQueryYWPM: TStringField;
    CalQueryDWBH: TStringField;
    temp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    IsHide_Warehouse_XT:String;
    procedure readini();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MonthlyStockReport: TMonthlyStockReport;
  NDate:TDate;

implementation

uses main1,fununit;

{$R *.dfm}

procedure TMonthlyStockReport.readini();
var MyIni :Tinifile;
    AppDir:string;
begin

  IsHide_Warehouse_XT:='N';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      //¡Ù¬√XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  //¡Ù¬√XT
  if IsHide_Warehouse_XT='Y' then
  begin
    CBX6.Items.Clear;
    CBX6.Items.Add('');
    CBX6.Items.Add('NK');
    CBX6.Items.Add('TC');
    CBX6.Items.Add('HD');
    CBX6.Items.Add('KD');
    CBX6.Items.Add('NK+TC+HD+KD');
    CBX6.Items.Add('NK1+TC1+HD1+KD1');
    CBX6.Items.Add('NK+TC+HD+KD+NK1+TC1+HD1+KD1+NQ+NKNQ');
    CBX6.Items.Add('NK1');
    CBX6.Items.Add('TC1');
    CBX6.Items.Add('HD1');
    CBX6.Items.Add('KD1');
    CBX6.Items.Add('NQ');
    CBX6.Items.Add('NKNQ');
    CBX6.ItemIndex:=7;
  end;
end;

procedure TMonthlyStockReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMonthlyStockReport.FormDestroy(Sender: TObject);
begin
  MonthlyStockReport:=nil;
end;

procedure TMonthlyStockReport.FormCreate(Sender: TObject);
var i,j,index:integer;
    myYear, myMonth, myDay : Word;
begin
  with temp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='''+main.edit2.text+''' ');
    sql.add('order by CKBH ');
    active:=true;
    CBX1.items.clear;
    while not eof do
    begin
        CBX1.items.add(fieldbyname('CKBH').AsString);
        Next;
    end;
    CBX1.items.add('ALL');
    CBX1.itemindex:=0;
    active:=false;
  end;
  // Load year-month
  DecodeDate(Date(), myYear, myMonth, myDay);
  for j:=0 to CBX2.Items.Count-1 do
  begin
    if strtoint(CBX2.Items[j])=myYear then
    begin
      CBX2.ItemIndex:=j;
      break;
    end;
  end;
  for j:=0 to CBX3.Items.Count-1 do
  begin
    if strtoint(CBX3.Items[j])=myMonth then
    begin
      CBX3.ItemIndex:=j-1;
      break;
    end;
  end;
  readini();
end;

procedure TMonthlyStockReport.Button3Click(Sender: TObject);
var  tmpList:TStringlist;
     HGLBSQL:String;
     i:integer;
begin
  with CalQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select CWCLZL.*,CLZL.YWPM,CLZL.DWBH ');
    SQL.Add('From CWCLZL_HG_Mon CWCLZL ');
    SQL.Add('Left join KCZLS on KCZLS.CLBH=CWCLZL.CLBH and KCZLS.CKBH=CWCLZL.CKBH ');
    SQL.add('Left join KCCK on KCCK.CKBH=CWCLZL.CKBH ');
    SQL.Add('Left join CLZL on CWCLZL.CLBH=CLZL.CLDH');
    SQL.Add('Where CWCLZL.KCYEAR='''+CBX2.Text+''' and CWCLZL.KCMONTH='''+CBX3.Text+'''  ');
    SQL.add(' and KCCK.GSBH='''+main.Edit2.Text+''' ');
    if edit1.Text<>'' then
      sql.Add(' and CWCLZL.CLBH like '''+edit1.Text+'%'' ');
    if edit4.Text<>'' then
      sql.Add(' and CLZL.YWPM like ''%'+edit4.Text+'%'' ');
    if CBX1.itemindex<>0 then
    begin
       sql.add(' and CWCLZL.CKBH= '+''''+CBX1.Text+'''');
    end;
    //HGLB
    if CBX6.ItemIndex>0 then
    begin
      if Pos('+',CBX6.Text)<0 then
      begin
        sql.add('and CWCLZL.HGLB='''+CBX6.Text+''' ')
      end else
      begin
        tmpList:=TStringlist.Create;
        tmpList:=FuncObj.SplitString(CBX6.Text,'+');
        for i:=0 to tmpList.Count-1 do
        begin
          HGLBSQL:=HGLBSQL+''''+tmpList.Strings[i]+''',';
        end;
        HGLBSQL:='('+Copy(HGLBSQL,1,length(HGLBSQL)-1)+')';
        sql.add('and CWCLZL.HGLB in '+HGLBSQL+' ');
        tmpList.Free;
      end;
    end;
    if IsHide_Warehouse_XT='Y' then  //¡Ù¬√XT
      sql.add('and CWCLZL.HGLB <>''XT'' ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
end;

procedure TMonthlyStockReport.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
  if CalQuery.Active then
  begin
    if CalQuery.recordcount=0 then
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
    for i:=1 to  CalQuery.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=CalQuery.fields[i-1].FieldName;
    end;
    CalQuery.First;
    j:=2;
    while  not CalQuery.Eof   do
    begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   CalQuery.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=CalQuery.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='10';
        end;
        CalQuery.Next;
        inc(j);
    end;
    //eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;
end;

end.
