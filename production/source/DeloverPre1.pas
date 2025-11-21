unit DeloverPre1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, DBTables, Grids, DBGrids,comobj,
  DBCtrls, ComCtrls, Menus, Mask,dateutils, GridsEh, DBGridEh ,IniFiles;

type
  TDeloverPre = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid2: TDBGridEh;
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
    DS3: TDataSource;
    DelDet: TQuery;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetDFL: TStringField;
    DelDetYN: TStringField;
    DelDetLLNO: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetCLSL: TCurrencyField;
    DS4: TDataSource;
    PopupMenu1: TPopupMenu;
    EXCEL1: TMenuItem;
    CB1: TCheckBox;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    ComboBox1: TComboBox;
    DelDetHGLB: TStringField;
    DelDetCNO: TStringField;
    qryCGNO: TQuery;
    qryCGNOCGNO: TStringField;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EXCEL1Click(Sender: TObject);
    procedure DelDetAfterOpen(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  DeloverPre: TDeloverPre;

implementation

uses main1, DeloverPre_Print1, DelMaterial_Print1;

{$R *.dfm}

procedure TDeloverPre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TDeloverPre.Button1Click(Sender: TObject);
begin
  DelDet.Active:=false;
  with DelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLL.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.SCBH,KCLL.USERDATE,KCLL.USERID');
    sql.add(',KCLL.CFMDATE,KCLL.CFMID,KCLL.YN,KCLL.GSBH,KCLL.CKBH ');
    sql.add('from KCLL ');
    sql.add('left join KCLLS on KCLLS.LLNO=KCLL.LLNO');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID  ');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.add('where ISNULL(KCLL.flowflag,'''')<>''X'' and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between'+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    if CB1.Checked then
    begin
      sql.Add(' and KCLL.CFMID='+''''+'NO'+'''');
    end;
    if edit1.Text <> '' then
      sql.add('and KCLL.LLNO like '+''''+edit1.Text+'%'+'''');
    if edit2.Text <> '' then
      sql.add('and KCLLS.SCBH like '+''''+edit2.Text+'%'+'''');
    if ComboBox1.Text <> '' then
      sql.add('and KCLLS.HGLB like '+''''+ComboBox1.Text+'%'+'''');
    sql.add('and KCLL.GSBH='+''''+main.edit2.text+'''');
    sql.add('group by KCLL.LLNO,KCLL.DepID,BDepartment.DepName,KCLL.SCBH,KCLL.USERDATE,KCLL.USERID');
    sql.add(',KCLL.CFMDATE,KCLL.CFMID,KCLL.YN,KCLL.GSBH,KCLL.CKBH ');
    sql.add('order by KCLL.LLNO  ');
    //funcobj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  with DelDet do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLLS.*,CLZL.YWPM,CLZL.DWBH');
    sql.add('from KCLLS');
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    sql.add('where KCLLS.LLNO=:LLNO');
    sql.add('order by KCLLS.CLBH,KCLLS.DFL,KCLLS.SCBH');
    active:=true;
  end;
end;

procedure TDeloverPre.ReadIni();
var MyIni :Tinifile;
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
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TDeloverPre.FormCreate(Sender: TObject);
begin
  DTP1.Date:=date-3;
  DTP2.Date:=date;
  ReadIni();
end;

procedure TDeloverPre.FormDestroy(Sender: TObject);
begin
  DeloverPre:=nil;
end;

procedure TDeloverPre.EXCEL1Click(Sender: TObject);
var   a:string;
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
 begin
  if  DelMas.active  then
  begin
  try
    eclApp:=CreateOleObject('Excel.Application');
    WorkBook:=CreateOleObject('Excel.Sheet');
  except
    Application.MessageBox('No Microsoft   Excel','Microsoft   Excel',MB_OK+MB_ICONWarning);
    Exit;
  end;
  try
     DelDet.Active:=false;
      WorkBook:=eclApp.workbooks.Add;
      for   i:=0   to   DelMas.fieldcount-1   do
        begin
            eclApp.Cells(1,i+1):=DelMas.fields[i].FieldName;
        end;

      DelMas.First;
      j:=2;
      while   not   DelMas.Eof   do
        begin
          for   i:=0   to  DelMas.fieldcount-1  do
          begin
            eclApp.Cells(j,i+1):=DelMas.Fields[i].Value;
          end;
        DelMas.Next;
        inc(j);
        end;
     eclapp.columns.autofit;
     eclApp.Visible:=True;
     DelDet.Active:=true;
     showmessage('Succeed');
    except
      on   F:Exception   do
        showmessage(F.Message);
    end;
  end;
end;



procedure TDeloverPre.DelDetAfterOpen(DataSet: TDataSet);
begin
  Button2.Enabled:=true;
end;

procedure TDeloverPre.Button2Click(Sender: TObject);
begin
  if DelDet.RequestLive then
  begin
    showmessage('Pls save data first.');
    abort;
  end else
  begin
    //qryCGNO.Active:=true;
    DeloverPre_Print:=TDeloverPre_Print.create(nil);
    DeloverPre_Print.quickrep1.prepare;
    DeloverPre_Print.Qpage1.caption:=inttostr(DeloverPre_Print.quickrep1.QRPrinter.pagecount);
    DeloverPre_Print.quickrep1.preview;
    DelDet.active:=false;
    DelDet.active:=true;
    DeloverPre_Print.free;
    //qryCGNO.Active:=false;
  end;
end;

end.
