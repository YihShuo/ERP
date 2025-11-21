unit ExtraCon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DB, DBTables, ComCtrls, ExtCtrls, Grids,dateUtils,
  DBGrids, GridsEh, DBGridEh, IniFiles;

type
  TExtraCon = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    DBGrid2: TDBGridEh;
    UpMas: TUpdateSQL;
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
    JGDetMemo: TStringField;
    JGDetBJNO: TStringField;
    JGDetYQDate: TDateTimeField;
    JGDetCFMDate: TDateTimeField;
    JGDetUSERDATE: TDateTimeField;
    JGDetUSERID: TStringField;
    JGDetYN: TStringField;
    DS4: TDataSource;
    Label2: TLabel;
    Edit1: TEdit;
    JGDetZ: TQuery;
    JGDetZCLBH: TStringField;
    JGDetZZMLB: TStringField;
    JGDetZYWPM: TStringField;
    JGDetZDWBH: TStringField;
    JGDetZQty: TCurrencyField;
    DS2: TDataSource;
    JGDetCostID: TStringField;
    Button4: TButton;
    JGMasCFMID2: TStringField;
    JGMasCFMDate2: TDateTimeField;
    JGDetUSACC: TCurrencyField;
    JGDetCLPrice: TCurrencyField;
    JGMasGSBH: TStringField;
    JGMasCKBH: TStringField;
    Qtemp: TQuery;
    Panel2: TPanel;
    DBGrid3: TDBGridEh;
    JGDetZJGNO: TStringField;
    JGDetZCKBH: TStringField;
    JGMasYN_Date: TDateTimeField;
    JGDetCWHL: TCurrencyField;
    JGDetVNPrice: TCurrencyField;
    JGDetVNACC: TCurrencyField;
    JGDetCWBH: TStringField;
    JGDetZHGLB: TStringField;
    JGDetZCNO: TStringField;
    JGDetZQty_Del: TCurrencyField;
    JGDetZLLNO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure JGDetAfterOpen(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure JGMasNewRecord(DataSet: TDataSet);
    procedure JGDetNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    WH_DiplayFormat:String;
    { Public declarations }
  end;

var
  ExtraCon: TExtraCon;
  NDate:TDate;

implementation

uses main1,FunUnit;

{$R *.dfm}
procedure TExtraCon.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  WH_DiplayFormat:='#,##0.00';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
      WH_DiplayFormat:=MyIni.ReadString('Warehouse','DiplayFormat','#,##0.00');
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(JGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('Qty')).DisplayFormat:=WH_DiplayFormat;
  TCurrencyField(JGDetZ.FieldByName('Qty_Del')).DisplayFormat:=WH_DiplayFormat;
end;
//
procedure TExtraCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TExtraCon.Button1Click(Sender: TObject);
begin
  //
  with JGMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select JGZL.*,ZSZL.ZSYWJC ');
    sql.add('from JGZL');
    sql.add('left join ZSZL on ZSZL.ZSDH=JGZL.ZSBH ');
    sql.add('left join KCCK on KCCK.CKBH=JGZL.CKBH ');
    sql.add('where JGZl.YN<>'+''''+'5'+'''');
   // sql.add('and JGZl.JGLX='+''''+'2'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,JGZL.CFMDATE1,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and JGZL.JGNO like '+''''+edit1.Text+'%'+'''');
    sql.add('and JGZL.CFMID2<>'+''''+'NO'+'''');
    sql.add('and JGZL.CFMID1<>'+''''+'NO'+'''');
    sql.add('and KCCK.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by JGZL.JGNO  ');
    active:=true;
  end;

  if JGMas.RecordCount>0 then
  begin
    JGDet.Active:=true;
  end;
  //
end;

procedure TExtraCon.FormCreate(Sender: TObject);
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

procedure TExtraCon.Button2Click(Sender: TObject);
begin
  if JGMas.FieldByName('CFMID2').IsNull then
  begin
    showmessage('Purchase did not confirm.');
    abort;
  end;

  with JGDet do
  begin
      first;
      while not eof do
      begin
        if  fieldbyname('CostID').isnull  then
        begin
            showmessage('CostID can not be empty.');
            abort;
        end;
        if fieldbyname('CWBH').isnull  then
        begin
            showmessage('CWBH can not be empty.');
            abort;
        end;
        next;
      end;
  end;

  try  //更新真正庫存
    with JGDet do
    begin
      first;
      while not eof do
      begin
          if updatestatus=usmodified then
          begin
              edit;
              fieldbyname('YN').value:='5';
              UPdet.apply(ukmodify);
          end;
          next;
      end;
    end;
    with JGMas do
    begin
      edit;
      if fieldbyname('JGLX').value='1' then
      begin
          fieldbyname('CFMID2').Value:=main.Edit1.Text;
          fieldbyname('CFMDATE2').Value:=Ndate;
      end;
      fieldbyname('YN').Value:='5';
      fieldbyname('YN_Date').Value:=Ndate;
      UPMas.Apply(ukmodify);
      active:=false;
      active:=true;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;

end;

procedure TExtraCon.JGDetAfterOpen(DataSet: TDataSet);
begin
  JGDetZ.active:=true;
end;

procedure TExtraCon.Button3Click(Sender: TObject);
begin
  JGDet.Active:=false;
  JGMas.Active:=false;
  JGMas.Active:=true;
  JGDet.Active:=true;
end;

procedure TExtraCon.Button4Click(Sender: TObject);
var iRes:integer;
begin
  // Check if have already delivery at KCRKCX table
  try
    with JGMas do
    begin
      edit;
      iRes:=messagedlg('Purchase or warehouse?',mtinformation,[mbYes,mbNo,mbCancel],0);
      if iRes=mrYes then
      begin
        fieldbyname('CFMID2').Value:='NO';
      end else if iRes=mrNo then
      begin
        fieldbyname('CFMID1').Value:='NO';
      end;
      if iRes<>mrCancel then
      begin
        with Qtemp do
        begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('+''''+'JGZLRet'+''''+','+''''+JGMas.fieldbyname('JGNO').Value+'''');
          sql.add(','+''''+' '+''''+','+''''+JGMas.fieldbyname('USERID').Value+''''+',');
          sql.add(''''+main.Edit1.Text+''''+',getdate())');
          execsql;
        end;
        UPMas.Apply(ukmodify);
        active:=false;
        active:=true;
      end;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TExtraCon.JGMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TExtraCon.JGDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TExtraCon.FormDestroy(Sender: TObject);
begin
  ExtraCon:=nil;
end;

procedure TExtraCon.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    Button1Click(edit1);
end;

end.
