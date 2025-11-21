unit DeliverList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids,dateutils, GridsEh, DBGridEh,comobj, PrnDbgeh,IniFiles;

type
  TDeliverList = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DS3: TDataSource;
    DelMas: TQuery;
    DelMasLLNO: TStringField;
    DelMasSCBH: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasCFMDate: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasYN: TStringField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    UpMas: TUpdateSQL;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetKCBH: TStringField;
    DelDetDDYN: TStringField;
    DS4: TDataSource;
    UPDet: TUpdateSQL;
    PopupMenu1: TPopupMenu;
    Excel1: TMenuItem;
    Button2: TButton;
    DelDetHGLB: TStringField;
    DelDetCNO: TStringField;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    PopupMenu2: TPopupMenu;
    Modify1: TMenuItem;
    Save1: TMenuItem;
    Cancel1: TMenuItem;
    DBGridEh1: TDBGridEh;
    DBGridEh2: TDBGridEh;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetLLMemo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Modify1Click(Sender: TObject);
    procedure Cancel1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
  private
    procedure ReadIni();
    { Private declarations }
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  DeliverList: TDeliverList;

implementation

uses main1;

{$R *.dfm}

procedure TDeliverList.ReadIni();
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
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('TempQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TDeliverList.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

free;
end;

procedure TDeliverList.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName ');
    sql.add('from KCLL ');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID  ');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    //sql.add('where KCLL.CFMID='+''''+'NO'+'''');
    sql.add('where convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and KCLL.LLNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and KCCK.GSBH='+''''+main.Edit2.Text+'''');
    if Edit2.Text<>'' then
    sql.add('and exists (select LLNO from KCLLS where KCLLS.LLNO=KCLL.LLNO and  KCLLS.HGLB like '''+Edit2.Text+'%'' Group by LLNO ) ');
    if Edit3.Text<>'' then
    sql.add('and exists (select LLNO from KCLLS where KCLLS.LLNO=KCLL.LLNO and  KCLLS.CNO like '''+Edit3.Text+'%'' Group by LLNO ) ');
    sql.add('order by KCLL.LLNO  ');
    active:=true;
  end;
  if DelDet.requestlive=true then
  begin
    with DelDet do
    begin
      active:=false;
      requestlive:=false;
      cachedupdates:=false;
    end;
  end;
  DelDet.Active:=true;
end;

procedure TDeliverList.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-3;
  DTP2.Date:=date;
  ReadIni();
end;

procedure TDeliverList.FormDestroy(Sender: TObject);
begin
  DeliverList:=nil;
end;

procedure TDeliverList.Excel1Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

  if DelMas.Active then
  begin
    if DelMas.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
  DelDet.Active:=false;
  WorkBook:=eclApp.workbooks.Add; 
  eclApp.Cells(1,1):='NO';
  for   i:=1   to   DelMas.fieldcount   do
    begin
      eclApp.Cells(1,i+1):=DelMas.fields[i-1].FieldName;
    end;
  DelMas.First;
  j:=2;
  while   not  DelMas.Eof   do
    begin
      eclApp.Cells(j,1):=j-1;
      for   i:=1   to   DelMas.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=DelMas.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
      DelMas.Next;
      inc(j);
    end;
  eclapp.columns.autofit;
  showmessage('Succeed.');
  eclApp.Visible:=True;
  DelDet.Active:=true;
except
  on   F:Exception   do
    showmessage(F.Message);
end;


end;

procedure TDeliverList.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
      i,j,s:integer;
begin

  if DelMas.Active then
  begin
    if DelMas.recordcount=0 then
      begin
        showmessage('No record.');
        abort;
      end;
  end
  else
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
    for i:=3 to DelMas.RecordCount do
      eclapp.workbooks[1].sheets.add;
    eclapp.workbooks[1].sheets[1].name:='Deliver List';
    eclApp.workbooks[1].sheets[1].Cells(1,1):='NO';

    DelDet.active:=false;

    for   i:=1   to   DelMas.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[1].Cells(1,i+1):=DelMas.fields[i-1].FieldName;
      end;
    DelMas.First;
    j:=2;
    while   not  DelMas.Eof   do
      begin
        eclApp.workbooks[1].sheets[1].Cells(j,1):=j-1;
        for   i:=1   to   DelMas.fieldcount   do
          begin
            eclApp.workbooks[1].sheets[1].Cells(j,i+1):=DelMas.Fields[i-1].Value;
            eclApp.workbooks[1].sheets[1].Cells.Cells.item[j,i+1].font.size:='8';
          end;
        DelMas.Next;
        inc(j);
      end;
  //  eclapp.columns.autofit;

  //產生明細 edit by billweng 2011/6/29
    DelMas.First;
    DelDet.active:=true;
    s:=2;
    while   not  DelMas.Eof   do
    begin
  //    eclapp.workbooks[1].sheets[s].name:=DelMas.fields[0].value + inttostr(DelMas.fields[1].value);
      eclapp.workbooks[1].sheets[s].name:=DelMas.fields[0].asstring;
      eclApp.workbooks[1].sheets[s].Cells(1,1):='NO';

      for   i:=1   to   DelDet.fieldcount   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(1,i+1):=DelDet.fields[i-1].FieldName;
      end;
      DelDet.First;
      j:=2;
      while   not  DelDet.Eof   do
      begin
        eclApp.workbooks[1].sheets[s].Cells(j,1):=j-1;
        for   i:=1   to   DelDet.fieldcount   do
          begin
            eclApp.workbooks[1].sheets[s].Cells(j,i+1):=DelDet.Fields[i-1].Value;
            eclApp.workbooks[1].sheets[s].Cells.Cells.item[j,i+1].font.size:='8';
          end;
        DelDet.Next;
        inc(j);
      end;
      S:=S+1;
      DelMas.Next;
    end;
  //結束

    eclapp.columns.autofit;
    showmessage('Succeed.');
    eclApp.Visible:=True;
  except
    on   F:Exception   do
      showmessage(F.Message);
  end;


end;


procedure TDeliverList.Modify1Click(Sender: TObject);
begin
  //
  if ((DelMas.FieldByName('YN').AsString='1') and
      (DelMas.FieldByName('CFMID').AsString=main.Edit1.Text)) then
  begin
    with DelDet do
    begin
      requestlive:=true;
      cachedupdates:=true;
      edit;
    end;
    Save1.Enabled:=true;
    Cancel1.Enabled:=true;
  end else
  begin
    Showmessage(' It is not yours, can not modify.');
  end;
  //
end;

procedure TDeliverList.Cancel1Click(Sender: TObject);
begin
  with DelDet do
  begin
    active:=false;
    requestlive:=false;
    cachedupdates:=false;
    active:=true;
  end;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;
end;

procedure TDeliverList.Save1Click(Sender: TObject);
var i:integer;
begin

  DelDet.First;
  for i:=0 to DelDet.RecordCount-1 do
  begin
    case DelDet.updatestatus of
      usmodified:
      begin
        if (((DelDet.FieldByName('HGLB').AsString='NK') or (DelDet.FieldByName('HGLB').AsString='TC') or (DelDet.FieldByName('HGLB').AsString='HD')) and (DelDet.FieldByName('CNO').AsString<>''))
            or  (DelDet.FieldByName('HGLB').AsString='KD') then
        begin
          UPDet.apply(ukmodify);
        end;
      end;
    end;
    DelDet.Next;
  end;
  DelDet.active:=false;
  DelDet.cachedupdates:=false;
  DelDet.requestlive:=false;
  DelDet.active:=true;
  Save1.Enabled:=false;
  Cancel1.Enabled:=false;

end;

end.
