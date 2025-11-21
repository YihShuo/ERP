unit Deliverdet1;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids,
  DBGrids,dateutils, GridsEh, DBGridEh,comobj, PrnDbgeh,IniFiles;

type
  TDeliverdet = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGrid2: TDBGridEh;
    KCLLQuery: TQuery;
    DS2: TDataSource;
    KCLLQueryLLNO: TStringField;
    KCLLQueryDepID: TStringField;
    KCLLQueryCFMDate: TDateTimeField;
    KCLLQueryCLBH: TStringField;
    KCLLQueryDFL: TStringField;
    KCLLQueryQty: TCurrencyField;
    KCLLQueryCLSL: TCurrencyField;
    KCLLQueryYYBH: TStringField;
    KCLLQueryYWPM: TStringField;
    KCLLQueryDWBH: TStringField;
    KCLLQueryDepName: TStringField;
    KCLLQuerySCBH_1: TStringField;
    KCLLQueryCKBH: TStringField;
    Label2: TLabel;
    Edit2: TEdit;
    KCLLQueryGSBH: TStringField;
    KCLLQueryYWSM: TStringField;
    KCLLQueryZWSM: TStringField;
    Label3: TLabel;
    CB1: TComboBox;
    Query1: TQuery;
    CB2: TCheckBox;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    DateTimePicker2: TDateTimePicker;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    KCLLQuerySCBH: TStringField;
    KCLLQueryUSERDATE: TDateTimeField;
    KCLLQueryUSERID: TStringField;
    KCLLQueryCFMID: TStringField;
    KCLLQueryYN: TStringField;
    KCLLQueryPMARK: TIntegerField;
    KCLLQueryFORM_TABLE: TStringField;
    KCLLQueryLLNO_1: TStringField;
    KCLLQueryTempQty: TCurrencyField;
    KCLLQueryUSPrice: TCurrencyField;
    KCLLQueryCostID: TStringField;
    KCLLQueryUSERDATE_1: TDateTimeField;
    KCLLQueryUSERID_1: TStringField;
    KCLLQueryYN_1: TStringField;
    KCLLQueryMEMO: TStringField;
    KCLLQueryBLSB: TStringField;
    KCLLQueryCWSB: TStringField;
    KCLLQueryR3Qty: TCurrencyField;
    KCLLQueryCNO: TStringField;
    Label8: TLabel;
    Edit3: TEdit;
    KCLLQueryVNPrice: TCurrencyField;
    KCLLQueryCWHL: TCurrencyField;
    KCLLQueryVNACC: TCurrencyField;
    KCLLQueryHGLB: TStringField;
    Label9: TLabel;
    HGLB: TComboBox;
    KCLLQueryMEMO_1: TStringField;
    KCLLQueryZWPM: TStringField;
    CB3: TCheckBox;
    chk1: TCheckBox;
    KCLLQueryARTICLE: TStringField;
    KCLLQueryKFJD: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid2GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
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
  Deliverdet: TDeliverdet;
  NDate:TDate;

implementation

uses FunUnit, main1;

{$R *.dfm}

procedure TDeliverdet.ReadIni();
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
  TCurrencyField(KCLLQuery.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(KCLLQuery.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(KCLLQuery.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(KCLLQuery.FieldByName('TempQty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KCLLQuery.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(KCLLQuery.FieldByName('CLSL')).DisplayFormat:=WH_DiplayFormat;
end;

procedure TDeliverdet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TDeliverdet.FormCreate(Sender: TObject);
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
    while not eof do
    begin
      CB1.items.add(fieldbyname('CKBH').AsString);
      next;
    end;
    CB1.itemindex:=0;
    active:=false;
  end;
  DTP1.Date:=startofthemonth(Ndate) ;
  DateTimePicker1.Date:=startofthemonth(Ndate) ;
  DTP2.Date:=Ndate;
  DateTimePicker2.Date:=Ndate;
  ReadIni();
  if main.Edit2.Text='VC1' then     //2025.07.04
  begin
    DBGrid2.FieldColumns['ARTICLE'].visible:=true;
    DBGrid2.FieldColumns['KFJD'].visible:=true;
  end;

end;

procedure TDeliverdet.Button1Click(Sender: TObject);
var KCLLS,KCLL:string;
begin
  if chk1.Checked then
  begin
    KCLLS:= '(Select * From KCLLS union all Select * from KCLLS_2014)';
    KCLL:= '(Select * From KCLL union all Select * from KCLL_2014)';
  end else
  begin
    KCLLS:='KCLLS';
    KCLL:='KCLL';
  end;
  with KCLLQuery do          //出庫數量清單
  begin
    active:=false;
    sql.Clear;
    sql.add('select KCLL.*,KCLLS.*,CLZL.YWPM,CLZL.ZWPM,CLZL.DWBH,BDepartment.DepName,SCBLYY.YWSM,SCBLYY.ZWSM,kfxxzl.ARTICLE,ypzl.KFJD');
    sql.add('from '+KCLLS+' KCLLS');
    sql.add('left join '+KCLL+' KCLL on KCLL.LLNO=KCLLS.LLNO ');
    sql.add('left join BDepartment on BDepartment.ID=KCLL.DepID ') ;
    sql.add('left join CLZL on CLZL.CLDH=KCLLS.CLBH ');
    sql.add('left join KCCK on KCCK.CKBH=KCLL.CKBH ');
    sql.add('left join SCBLYY on SCBLYY.YYBH=KCLLS.YYBH ');
    //===2025.07.04
    sql.Add('left join ypzl on ypzl.ypdh = kclls.scbh');
    sql.Add('left join kfxxzl on ypzl.xiexing = kfxxzl.xiexing and ypzl.shehao = kfxxzl.shehao');
    //=============
    sql.add('where  KCLLS.CLBH like'''+edit1.Text+'%''');
    sql.add('       and KCLLS.Qty<>0');
    sql.add('       and BDepartment.DepName like ''%'+edit2.Text+'%''');

    sql.Add('and ISNULL(flowflag,'''')<>''X'' ');

    if CB1.Text<>'' then
    begin
       sql.add('       and KCLL.CKBH='''+CB1.Text+'''');
       sql.add('       and KCCK.GSBH='''+main.edit2.text+'''');
    end;
    sql.add('       and KCLLS.SCBH like '''+edit3.Text+'%'' ');
    if CheckBox1.Checked = true then
    begin
      sql.add('       and convert(smalldatetime,convert(varchar,KCLL.CFMDate,111)) between ');
      sql.add('       '''+formatdatetime('yyyy/MM/dd',DTP1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date)+''''  );
    end;
    if CheckBox2.Checked = true then
    begin
      sql.add('       and convert(smalldatetime,convert(varchar,KCLL.USERDATE,111)) between ');
      sql.add('       '''+formatdatetime('yyyy/MM/dd',DateTimePicker1.date)+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DateTimePicker2.date)+'''');
    end;
    if CB2.Checked then
    begin
      sql.add('       and KCLL.SCBH='+''''+'ZZZZZZZZZZ'+'''');
    end;
    if CB3.Checked then
    begin
      sql.add('       and KCLL.CFMID=''NO''');
    end;
    if HGLB.ItemIndex>0 then
    begin
      sql.Add('and KCLLS.HGLB ='+''''+HGLB.text+'''');
    end;
    sql.add('order by KCLL.LLNO,KCLLS.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  //Tfloatfield(DBGrid2 .Fields[10]).displayformat:='0.00' ;
end;

procedure TDeliverdet.Button2Click(Sender: TObject);
var
      eclApp,WorkBook:olevariant;
 //     xlsFileName:string;
      i,j:integer;
begin

  if KCLLQuery.Active then
  begin
  if KCLLQuery.recordcount=0 then
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
      for   i:=1   to   KCLLQuery.fieldcount   do
      begin
        eclApp.Cells(1,i+1):=KCLLQuery.fields[i-1].FieldName;
      end;
      KCLLQuery.First;
      j:=2;
      while   not  KCLLQuery.Eof   do
      begin
        eclApp.Cells(j,1):=j-1;
        for   i:=1   to   KCLLQuery.fieldcount   do
        begin
          eclApp.Cells(j,i+1):=KCLLQuery.Fields[i-1].Value;
          eclApp.Cells.Cells.item[j,i+1].font.size:='8';
        end;
        KCLLQuery.Next;
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

procedure TDeliverdet.FormDestroy(Sender: TObject);
begin
  Deliverdet:=nil;
end;

procedure TDeliverdet.DBGrid2GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if  KCLLQuery.FieldByName('CFMID').value='NO'  then
  begin
    DBGrid2.canvas.font.color:=clred;
  end;
end;

end.
