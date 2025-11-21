unit AdjustExtra1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,
  GridsEh, DBGridEh, DateUtils, iniFiles;

type
  TAdjustExtra = class(TForm)
    DBGrid2: TDBGridEh;
    DBGrid3: TDBGridEh;
    JGMas: TQuery;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasZSYWJC: TStringField;
    JGMasJGDate: TDateTimeField;
    JGMasJGLX: TStringField;
    JGMasUSERDATE: TDateTimeField;
    JGMasUSERID: TStringField;
    JGMasCFMID1: TStringField;
    JGMasCFMDate1: TDateTimeField;
    JGMasYN: TStringField;
    JGMasCFMID2: TStringField;
    JGMasCFMDate2: TDateTimeField;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    UPDet: TUpdateSQL;
    JGDet: TQuery;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetZMLB: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    JGDetQty: TCurrencyField;
    JGDetUSPrice: TCurrencyField;
    JGDetCostID: TStringField;
    JGDetMemo: TStringField;
    JGDetBJNO: TStringField;
    JGDetYQDate: TDateTimeField;
    JGDetCFMDate: TDateTimeField;
    JGDetUSERDATE: TDateTimeField;
    JGDetUSERID: TStringField;
    JGDetYN: TStringField;
    DS4: TDataSource;
    JGDetZ: TQuery;
    JGDetZCLBH: TStringField;
    JGDetZZMLB: TStringField;
    JGDetZYWPM: TStringField;
    JGDetZDWBH: TStringField;
    JGDetZQty: TCurrencyField;
    DS2: TDataSource;
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
    JGDetUSACC: TCurrencyField;
    JGMasGSBH: TStringField;
    JGMasCKBH: TStringField;
    BDelRec: TQuery;
    Qtemp: TQuery;
    JGMasYN_Date: TDateTimeField;
    JGDetCWHL: TCurrencyField;
    JGDetVNPrice: TCurrencyField;
    JGDetVNACC: TCurrencyField;
    JGDetKCBH: TStringField;
    JGDetZLLNO: TStringField;
    JGDetZHGLB: TStringField;
    JGDetZCNO: TStringField;
    JGDetZQty_Del: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure JGDetAfterOpen(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure JGMasNewRecord(DataSet: TDataSet);
    procedure JGDetNewRecord(DataSet: TDataSet);
  private
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
  AdjustExtra: TAdjustExtra;
  NDate:TDate;
  
implementation

uses main1,FunUnit;

{$R *.dfm}

procedure TAdjustExtra.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
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
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(JGDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(JGDetZ.FieldByName('Qty_Del')).DisplayFormat:=WH_DiplayFormat;
  //
end;

procedure TAdjustExtra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAdjustExtra.Button1Click(Sender: TObject);
begin
  with JGMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select JGZL.*,ZSZL.ZSYWJC ');
    sql.add('from JGZL');
    sql.add('left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH ');
    sql.add('where 1=1 and ISNULL(JGZL.flowflag,'''')<>''X'' and JGZL.JGDATE>='+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and JGZL.JGDate<='+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and JGZL.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('order by JGZL.JGNO  ');
    active:=true;
  end;
  JGDet.Active:=true;
end;

procedure TAdjustExtra.FormCreate(Sender: TObject);
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

procedure TAdjustExtra.Button2Click(Sender: TObject);
var IsUpdate:boolean;
begin
  with JGDet do
  begin
    first;
    while not eof do
    begin
      if fieldbyname('KCBH').IsNull then
      begin
        showmessage('KCBH can''t be null ');
        exit;
      end;
      Next;
    end;
  end;

  try  //更新真正庫存
    IsUpdate:=false;
    with JGDet do
    begin
        first;
        while not eof do
        begin
          if updatestatus=usmodified then
          begin
            IsUpdate:=true;
            UPdet.apply(ukmodify);
          end;
          Next;
        end;
    end;
    with JGMas do
    begin
      if ((state in [dsedit]) or (IsUpdate=true)) then
      begin
        IsUpdate:=true;
        Edit;
        fieldbyname('YN_Date').Value:=NDate;
        UPMas.Apply(ukmodify);
      end;
      active:=false;
      active:=true;
    end;
    if IsUpdate=true then
    begin
      with BDelRec do
      begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('+''''+'JGZLC'+''''+','+''''+JGMas.fieldbyname('JGNO').Value+'''');
          sql.add(','+''''+' '+''''+','+''''+JGMas.fieldbyname('USERID').Value+''''+',');
          sql.add(''''+main.Edit1.Text+''''+',getdate())');
          execsql;
          active:=false;
      end;
    end;

    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TAdjustExtra.JGDetAfterOpen(DataSet: TDataSet);
begin
JGDetZ.active:=true;
end;

procedure TAdjustExtra.Button3Click(Sender: TObject);
begin
JGDet.Active:=false;
JGMas.Active:=false;
JGMas.Active:=true;
JGDet.Active:=true;
end;

procedure TAdjustExtra.FormDestroy(Sender: TObject);
begin
AdjustExtra:=nil;
end;

procedure TAdjustExtra.JGMasNewRecord(DataSet: TDataSet);
begin
abort;
end;

procedure TAdjustExtra.JGDetNewRecord(DataSet: TDataSet);
begin
abort;
end;

end.
