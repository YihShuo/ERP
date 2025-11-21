unit CBY_DeliverCon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, Grids, DBGrids,
  GridsEh, DBGridEh, IniFiles;

type
  TCBY_DeliverCon = class(TForm)
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
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetDFL: TStringField;
    UPDet: TUpdateSQL;
    DS4: TDataSource;
    Button4: TButton;
    DelDetYN: TStringField;
    DelDetLLNO: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetCLSL: TCurrencyField;
    DelMasGSBH: TStringField;
    DelMasCKBH: TStringField;
    DelDetMEMO: TStringField;
    Qtemp: TQuery;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DelMasNewRecord(DataSet: TDataSet);
    procedure DelDetNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);

  private
    CKBHList:TStringlist;
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
  CBY_DeliverCon: TCBY_DeliverCon;
  NDate:TDate;

implementation

uses main1,FunUnit;

{$R *.dfm}
procedure TCBY_DeliverCon.readini();
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
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  //
  TCurrencyField(DelDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;

end;
//

procedure TCBY_DeliverCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CKBHList.Free;
  action:=cafree;
end;

procedure TCBY_DeliverCon.Button1Click(Sender: TObject);
begin
  with DelMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCLL.*,BDepartment.DepName ');
    sql.add('from CBY_LineStock_KCLL KCLL ');
    sql.add('left join BDepartment on KCLL.DepID=BDepartment.ID  '); 
    sql.add('where KCLL.CFMID<>''NO'' ');
    sql.add('and KCLL.YN<>''5'' ');
    sql.add('and convert(smalldatetime,convert(varchar,KCLL.CFMDATE,111)) between '''+formatdatetime('yyyy/MM/dd',DTP1.date )+''' ');
    sql.add('and '''+formatdatetime('yyyy/MM/dd',DTP2.date )+''' ');
    sql.add('and KCLL.LLNO like '+''''+edit1.Text+'%'+'''');   
    sql.add('and KCLL.GSBH='''+main.edit2.text+''' ');
    sql.add('order by KCLL.LLNO  ');
    active:=true;
  end;

  if delmas.RecordCount>0 then
  begin
    DelDet.Active:=true;
  end;
end;

procedure TCBY_DeliverCon.Button3Click(Sender: TObject);
begin
  DelDet.Active:=false;
  DelMas.Active:=false;
  DelMas.Active:=true;
  DelDet.Active:=true;
end;

procedure TCBY_DeliverCon.Button2Click(Sender: TObject);
begin
    with DelDet do
    begin
      first;
      while not eof do
        begin
          if fieldbyname('CostID').isnull then
          begin
              showmessage('CostID can not be empty.');
              abort;
          end;
          next;
        end;
    end;
  try  //更新真正庫存
    with DelDet do
    begin
      first;
      while not eof do
      begin
          if updatestatus=usmodified then
          begin
              edit;
              fieldbyname('YN').Value:= '5';
              UPdet.apply(ukmodify);
          end;
          next;
      end;
    end;
    with DelMas do
    begin
      edit;   
      fieldbyname('YN').Value:='5';
      UPMas.Apply(ukmodify);
      active:=false;
      active:=true;
    end;

    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TCBY_DeliverCon.FormCreate(Sender: TObject);
var i: integer;
begin
  with Qtemp do
  begin
    active:=false;
    sql.Clear;
    sql.add('select getdate() as NDate ');
    active:=true;
    Ndate:=fieldbyname('NDate').Value;
    active:=false;
  end;
  DTP1.Date:=Ndate-3;
  DTP2.Date:=Ndate;
  readini();
end;

procedure TCBY_DeliverCon.Button4Click(Sender: TObject);
begin

  try
    with Qtemp do
    begin
        active:=false;
        sql.Clear;
        sql.add('insert into BDelRec ');
        sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
        sql.add('values ('+''''+'CBY_LineStock_KCLL'+''''+','+''''+DelMas.fieldbyname('LLNO').Value+'''');
        sql.add(','+''''+' '+''''+','+''''+DelMas.fieldbyname('USERID').Value+''''+',');
        sql.add(''''+main.Edit1.Text+''''+',getdate())');
        execsql;
        active:=false;
    end;    
    //
    with DelMas do
    begin
      edit;
      fieldbyname('YN').Value:='1'; 
      fieldbyname('CFMID').Value:='NO';
      UPMas.Apply(ukmodify);
      active:=false;
      active:=true;
    end;
    showmessage('Succeed.');
  except
    on E:Exception do
    showmessage('Have wrong:'+E.Message);
  end;
end;

procedure TCBY_DeliverCon.DelMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TCBY_DeliverCon.DelDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TCBY_DeliverCon.FormDestroy(Sender: TObject);
begin
  CBY_DeliverCon:=nil;
end;


end.
