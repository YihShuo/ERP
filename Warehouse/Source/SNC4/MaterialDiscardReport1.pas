unit MaterialDiscardReport1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, StdCtrls, ComCtrls, ExtCtrls,IniFiles,dateutils,comobj;

type
  TMaterialDiscardReport = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit2: TEdit;
    CB1: TComboBox;
    DBGrid2: TDBGridEh;
    KCLL: TQuery;
    DS2: TDataSource;
    Query1: TQuery;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    KCLLLLNO: TStringField;
    KCLLCKBH: TStringField;
    KCLLDepID: TStringField;
    KCLLDepName: TStringField;
    KCLLCFMDate: TDateTimeField;
    KCLLCLBH: TStringField;
    KCLLYWPM: TStringField;
    KCLLZWPM: TStringField;
    KCLLDWBH: TStringField;
    KCLLQty: TCurrencyField;
    KCLLVNPrice: TCurrencyField;
    KCLLVNACC: TCurrencyField;
    Label7: TLabel;
    Edit3: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  MaterialDiscardReport: TMaterialDiscardReport;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}
procedure TMaterialDiscardReport.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(KCLL.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(KCLL.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(KCLL.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TMaterialDiscardReport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TMaterialDiscardReport.FormDestroy(Sender: TObject);
begin
  MaterialDiscardReport:=nil;
end;

procedure TMaterialDiscardReport.FormCreate(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').Value;
    active:=false;
    sql.Clear;
    sql.add('select CKBH from KCCK ');
    sql.add('where GSBH='+''''+main.edit2.text+'''');
    sql.add('order by CKBH ');
    active:=true;
    CB1.items.clear;
    CB1.Items.Add('ALL');
    while not eof do
    begin
      CB1.items.add(fieldbyname('CKBH').AsString);
      next;
    end;
    CB1.Items.Add('FOC');
    CB1.itemindex:=0;
    active:=false;
  end;
  DTP1.Date:=startofthemonth(Ndate) ;
  DTP2.Date:=Ndate;
  ReadIni();
end;

procedure TMaterialDiscardReport.Button1Click(Sender: TObject);
begin
  With KCLL do
  begin 
    Active:=false;
    SQL.Clear; 
    SQL.Add('  Select KCLL.LLNO,KCLL.CKBH,KCLL.DepID,DepName,CFMDate,KCLLS.CLBH,YWPM,ZWPM,DWBH,KCLLS.Qty,KCLLS.VNPrice_HG as VNPrice, KCLLS.VNACC_HG as VNACC  ');
    SQL.Add('  From KCLLS  ');
    SQL.Add('  Left join KCLL on KCLL.LLNO=KCLLS.LLNO   ');
    SQL.Add('  Left join BDepartment on BDepartment.ID=KCLL.DepID   ');
    SQL.Add('  Left join CLZL on CLZL.CLDH=KCLLS.CLBH   ');
    SQL.Add('  Where  convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    SQL.Add('  and KCLL.CFMID<>''NO''  ');
    SQL.Add('  and isnull(KCLL.BP,0)=1  ');
    SQL.Add('  and KCLL.GSBH='''+main.edit2.Text+''' ');
    if CB1.Text <> 'ALL' then
      SQL.Add(' and KCLL.CKBH ='''+CB1.Text+''' ');
    if Edit1.Text <> '' then
      SQL.Add(' and KCLLS.CLBH like '''+Edit1.Text+'%'' ');
    if Edit4.Text <> '' then
      SQL.Add(' and CLZL.YWPM like ''%'+Edit4.Text+'%'' ');
    if Edit2.Text <> '' then
      SQL.Add(' and DepName like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text <> '' then
      SQL.Add(' and KCLL.LLNO like '''+Edit3.Text+'%'' ');

    SQL.Add('  Union All  ');
    SQL.Add('  Select KCLL.LLNO,KCLL.CKBH,KCLL.DepID,DepName,CFMDate,KCLLS.CLBH,YWPM,ZWPM,DWBH,KCLLS.Qty,'''' as VNPrice, '''' as VNACC  ');
    SQL.Add('  From KCLLS_FOC KCLLS  ');
    SQL.Add('  Left join KCLL_FOC KCLL on KCLL.LLNO=KCLLS.LLNO   ');
    SQL.Add('  Left join BDepartment on BDepartment.ID=KCLL.DepID   ');
    SQL.Add('  Left join CLZL on CLZL.CLDH=KCLLS.CLBH   ');
    SQL.Add('  Where  convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''' and '''+formatdatetime('yyyy/MM/dd',DTP2.date)+''' ');
    SQL.Add('  and KCLL.CFMID<>''NO''  ');
    SQL.Add('  and isnull(KCLL.BP,0)=1  ');
    SQL.Add('  and KCLL.GSBH='''+main.edit2.Text+''' ');
    if CB1.Text <> 'ALL' then
      SQL.Add(' and KCLL.CKBH ='''+CB1.Text+''' ');
    if Edit1.Text <> '' then
      SQL.Add(' and KCLLS.CLBH like '''+Edit1.Text+'%'' ');
    if Edit4.Text <> '' then
      SQL.Add(' and CLZL.YWPM like ''%'+Edit4.Text+'%'' ');
    if Edit2.Text <> '' then
      SQL.Add(' and DepName like ''%'+Edit2.Text+'%'' ');
    if Edit3.Text <> '' then
      SQL.Add(' and KCLL.LLNO like '''+Edit3.Text+'%'' ');
    Active:=true;
  end;
end;

procedure TMaterialDiscardReport.Button2Click(Sender: TObject);
var eclApp,WorkBook:olevariant;
    i,j:integer;
begin
   if KCLL.Active then
  begin
    if KCLL.recordcount=0 then
    begin
      showmessage('No record.');
      abort;
    end;
  end else
  begin
    showmessage('No record.');
    abort;
  end;
  //
  if  KCLL.active  then
  begin
    try
      eclApp:=CreateOleObject('Excel.Application');
      WorkBook:=CreateOleObject('Excel.Sheet');
    except
      Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
      Exit;
    end;
    //
    try
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   KCLL.fieldcount-1   do
      begin
        eclApp.Cells(1,i+1):=KCLL.fields[i].FieldName;
      end;
      //
      KCLL.First;
      j:=2;
      while   not   KCLL.Eof   do
      begin
        for   i:=0   to  KCLL.fieldcount-1  do
        begin
          eclApp.Cells(j,i+1):=KCLL.Fields[i].Value;
        end;
      KCLL.Next;
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

end.
