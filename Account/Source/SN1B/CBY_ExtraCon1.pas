unit CBY_ExtraCon1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DB, DBTables, ComCtrls, ExtCtrls, Grids,dateUtils,
  DBGrids, GridsEh, DBGridEh, IniFiles;

type
  TCBY_ExtraCon = class(TForm)
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
    DS3: TDataSource;
    UPDet: TUpdateSQL;
    JGDet: TQuery;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    JGDetQty: TCurrencyField;
    JGDetUSPrice: TCurrencyField;
    JGDetMemo: TStringField;
    JGDetBJNO: TStringField;
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
    JGDetUSACC: TCurrencyField;
    Qtemp: TQuery;
    Panel2: TPanel;
    DBGrid3: TDBGridEh;
    JGDetZJGNO: TStringField;
    JGDetCWHL: TCurrencyField;
    JGDetVNPrice: TCurrencyField;
    JGDetVNACC: TCurrencyField;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasZSYWJC: TStringField;
    JGMasJGDate: TStringField;
    JGMasUserID: TStringField;
    JGMasUserDate: TStringField;
    JGMasCFMID1: TStringField;
    JGMasCFMDate1: TStringField;
    JGMasCFMID2: TStringField;
    JGMasCFMDate2: TStringField;
    JGMasYN: TStringField;
    JGMasCKBH: TStringField;
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
    { Public declarations }
  end;

var
  CBY_ExtraCon: TCBY_ExtraCon;
  NDate:TDate;

implementation

uses main1,FunUnit;

{$R *.dfm}
procedure TCBY_ExtraCon.readini();
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
  TCurrencyField(JGDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(JGDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;
//
procedure TCBY_ExtraCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TCBY_ExtraCon.Button1Click(Sender: TObject);
begin
  with JGMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT JGZL.LSNO AS JGNO, JGZL.ZSBH, ZSZL.ZSYWJC, convert(varchar,JGZL.UserDate,111) AS JGDate, JGZL.UserID, convert(varchar,JGZL.UserDate,111) as UserDate ');
    SQL.Add(', JGZL.CFMID1,  convert(varchar,JGZL.CFMDate1,111) as CFMDate1, JGZL.CFMID2, convert(varchar,JGZL.CFMDate2,111) as CFMDate2, JGZL.YN, JGZL.CKBH FROM CBY_LineSideStockS AS JGZL');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = JGZL.ZSBH');
    SQL.Add('WHERE JGZL.Memo = ''Outsourced'' AND JGZL.CFMID2 <> ''NO'' AND JGZL.YN <> ''5'' ');
    SQL.Add('AND CONVERT(SmallDateTime, CONVERT(VARCHAR, JGZL.UserDate, 111)) BETWEEN ''' + FormatDateTime('yyyy/MM/dd', DTP1.Date) +''' AND ''' + FormatDateTime('yyyy/MM/dd', DTP2.Date) + '''');
    SQL.Add('AND JGZL.LSNO LIKE ''' + Edit1.Text + '%''');
    SQL.Add('ORDER BY JGZL.LSNO');
    Active := true;
  end;

  if JGMas.RecordCount > 0 then
  begin
    JGDet.Active := true;
  end;
end;

procedure TCBY_ExtraCon.FormCreate(Sender: TObject);
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

procedure TCBY_ExtraCon.Button2Click(Sender: TObject);
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
        {if fieldbyname('CWBH').isnull  then
        begin
            showmessage('CWBH can not be empty.');
            abort;
        end;}
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
      Qtemp.Active := false;
      Qtemp.SQL.Clear;
      Qtemp.SQL.Add('UPDATE CBY_LineSideStockS SET CFMID2 = ''' + main.Edit1.Text + ''', CFMDate2 = GetDate(), YN = ''5''');
      Qtemp.SQL.Add('WHERE LSNO = ''' + FieldByName('JGNO').AsString + '''');
      Qtemp.ExecSQL;
      Qtemp.SQL.Clear;
      active:=false;
      active:=true;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;

end;

procedure TCBY_ExtraCon.JGDetAfterOpen(DataSet: TDataSet);
begin
  JGDetZ.active:=true;
end;

procedure TCBY_ExtraCon.Button3Click(Sender: TObject);
begin
  JGDet.Active:=false;
  JGMas.Active:=false;
  JGMas.Active:=true;
  JGDet.Active:=true;
end;

procedure TCBY_ExtraCon.Button4Click(Sender: TObject);
var iRes:integer;
begin
  // Check if have already delivery at KCRKCX table
  try
    with JGMas do
    begin
      edit;
      iRes:=messagedlg('Are you sure to reset it?', mtinformation, [mbYes, mbCancel], 0);
      if iRes=mrYes then
      begin
        Qtemp.Active := false;
        Qtemp.SQL.Clear;
        Qtemp.SQL.Add('UPDATE CBY_LineSideStockS SET CFMID2 = ''NO''');
        Qtemp.SQL.Add('WHERE LSNO = ''' + FieldByName('JGNO').AsString + '''');
        Qtemp.ExecSQL;
        Qtemp.SQL.Clear;
        active:=false;
        active:=true;
      end;
    end;
    showmessage('Succeed.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TCBY_ExtraCon.JGMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TCBY_ExtraCon.JGDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

procedure TCBY_ExtraCon.FormDestroy(Sender: TObject);
begin
  CBY_ExtraCon:=nil;
end;

procedure TCBY_ExtraCon.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
    Button1Click(edit1);
end;

end.
