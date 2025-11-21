unit CBY_AdjustDeliver1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids,
  GridsEh, DBGridEh, DateUtils, inifiles;

type
  TCLBH=record
   CLBH:String;
   NK:double;
   TC:double;
   KD:double;
   HD:double;
   GC:double;
   XT:double;
end;

type
  TCBY_AdjustDeliver = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
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
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    DelDet: TQuery;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetACCUS: TFloatField;
    DelDetACCVN: TIntegerField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetDFL: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    DelDetLLNO: TStringField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    BDelRec: TQuery;
    Qtemp: TQuery;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DelMasNewRecord(DataSet: TDataSet);
    procedure DelDetNewRecord(DataSet: TDataSet);
  private
    IsHide_Warehouse_XT:String;
    sYear,sMonth:String;
    sSTDT,sEDDT:String;
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    //倉庫結算位數
    WH_Decimal:String;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  CBY_AdjustDeliver: TCBY_AdjustDeliver;
  NDate:TDate;
implementation

uses main1, AdjustDeliver_CL1, FunUnit;

{$R *.dfm}


procedure TCBY_AdjustDeliver.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  IsHide_Warehouse_XT:='N';
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  //倉庫小位數
  WH_Decimal:='2';
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      //倉庫小位數
      WH_Decimal:=MyIni.ReadString('Warehouse','Decimal','2');
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
      //隱藏XT
      IsHide_Warehouse_XT:=MyIni.ReadString('ERP','IsHide_Warehouse_XT','N');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
end;
//
procedure TCBY_AdjustDeliver.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCBY_AdjustDeliver.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName ');
    sql.add('from CBY_LineStock_KCLL KCLL ');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID  ');
    sql.add('where KCLL.USERDATE>='''+formatdatetime('yyyy/MM/dd',DTP1.date )+''' ');
    sql.add('and KCLL.USERDATE<='''+formatdatetime('yyyy/MM/dd',DTP2.date )+''' ');
    sql.add('and KCLL.LLNO like'''+edit1.Text+'%'' ');
    sql.add('and KCLL.GSBH='''+main.edit2.text+''' and ISNULL(flowflag,'''')<>''X'' ');
    sql.add('order by KCLL.LLNO  ');
    //funcObj.WriteErrorLog(sql.text);
    active:=true;
  end;
  with DelDet do
  begin
    Active:=false;
    sql.Clear;
    SQL.Add('select KCLLS.*,CLZL.YWPM,CLZL.DWBH');
    SQL.Add('from CBY_LineStock_KCLLs KCLLS inner join CBY_LineStock_KCLL KCLL on KCLLS.LLNO=KCLL.LLNO');
    SQL.Add('left join CLZL on CLZL.CLDH=KCLLS.CLBH');
    SQL.Add('where KCLLS.LLNO=:LLNO');
    SQL.Add('order by KCLLS.DFL,KCLLS.SCBH,KCLLS.CLBH');
    //funcObj.WriteErrorLog(sql.Text);
  end;
  DelDet.Active:=true;
end;

procedure TCBY_AdjustDeliver.Button3Click(Sender: TObject);
begin
  DelDet.Active:=false;
  DelMas.Active:=false;
  DelMas.Active:=true;
  DelDet.Active:=true;
end;

procedure TCBY_AdjustDeliver.Button2Click(Sender: TObject);
var IsUpdate:boolean;
begin

  //檢查
  with DelMas do
  begin
    if ((fieldbyname('SCBH').AsString='') or (fieldbyname('USERDATE').AsString='') or (fieldbyname('USERID').AsString='')
        or (fieldbyname('YN').AsString='') ) then
    begin
      showmessage('SCBH / USERDATE / USERID / YN can not be empty.');
      abort;
    end;
    if fieldbyname('CFMID').AsString='NO' then
    begin
      if fieldbyname('CFMDate').AsString<>'' then
      begin
        showmessage('CFMDate must be null');
        abort;
      end;
    end else
    begin
      if fieldbyname('CFMDate').AsString='' then
      begin
        showmessage('CFMDate can not be empty ');
        abort;
      end;
    end;
  end;
  with DelDet do
  begin
    first;
    while not eof do
    begin
      if fieldbyname('Qty').AsString='' then
      begin
          showmessage('Qty can not be empty.');
          abort;
      end;
      if fieldbyname('CostID').AsString='' then
      begin
          showmessage('CostID can not be empty.');
          abort;
      end;
      next;
    end;
  end;

 IsUpdate:=false;
 try  //更新真正庫存
   with DelDet do
   begin
      first;
      while not eof do
      begin
          if updatestatus=usmodified then
          begin
            IsUpdate:=true;
            UPdet.apply(ukmodify);
          end;
          next;
      end;
   end;

   with DelMas do
   begin
      if ((state in [dsedit]) or (IsUpdate=true)) then
      begin
        IsUpdate:=true;
        Edit;
        with BDelRec do
        begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('+''''+'CBY_LineStock_KCLLC'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
          sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
          sql.add(''''+main.Edit1.Text+''''+',getdate())');
          execsql;
          active:=false;
        end;
        UPMas.Apply(ukmodify);
      end;
      active:=false;
      active:=true;
   end;
  showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TCBY_AdjustDeliver.FormCreate(Sender: TObject);
var i:integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    NDate:=fieldbyname('NDate').value;
    DTP1.Date:=NDate-3;
    DTP2.Date:=NDate;
    active:=false;
  end;
  readini();
end;

procedure TCBY_AdjustDeliver.FormDestroy(Sender: TObject);
begin
  CBY_AdjustDeliver:=nil;
end;

procedure TCBY_AdjustDeliver.DelMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TCBY_AdjustDeliver.DelDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

end.
