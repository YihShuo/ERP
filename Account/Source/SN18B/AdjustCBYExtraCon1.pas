unit AdjustCBYExtraCon1;

interface

{uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, IniFiles,
  Grids, DBGrids;}
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, DB, DBTables, Grids, DBGrids,
  GridsEh, DBGridEh, DateUtils, iniFiles;

type
  TAdjust_CBY_Extra_Con = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    Edit1: TEdit;
    DBGrid2: TDBGridEh;
    Panel2: TPanel;
    DBGrid3: TDBGridEh;
    Button1: TButton;
    Button5: TButton;
    Button3: TButton;
    DS1: TDataSource;
    Qtemp: TQuery;
    DS2: TDataSource;
    JGDetZ: TQuery;
    JGDetZCLBH: TStringField;
    JGDetZZMLB: TStringField;
    JGDetZYWPM: TStringField;
    JGDetZDWBH: TStringField;
    JGDetZQty: TCurrencyField;
    JGDetZJGNO: TStringField;
    DS3: TDataSource;
    JGDet: TQuery;
    JGDetJGNO: TStringField;
    JGDetCLBH: TStringField;
    JGDetYWPM: TStringField;
    JGDetDWBH: TStringField;
    JGDetQty: TCurrencyField;
    JGDetUSPrice: TCurrencyField;
    JGDetUSACC: TCurrencyField;
    JGDetCWHL: TCurrencyField;
    JGDetVNPrice: TCurrencyField;
    JGDetVNACC: TCurrencyField;
    JGDetCostID: TStringField;
    JGDetMemo: TStringField;
    JGDetBJNO: TStringField;
    JGDetUserDate: TDateTimeField;
    JGDetUserID: TStringField;
    JGDetYN: TStringField;
    UpMas: TUpdateSQL;
    UPDet: TUpdateSQL;
    JGMas: TQuery;
    JGMasJGNO: TStringField;
    JGMasZSBH: TStringField;
    JGMasZSYWJC: TStringField;
    JGMasUserID: TStringField;
    JGMasCFMID1: TStringField;
    JGMasCFMID2: TStringField;
    JGMasYN: TStringField;
    JGMasCKBH: TStringField;
    JGMasUserDate: TDateTimeField;
    JGMasJGDate: TDateTimeField;
    JGMasCFMDate1: TDateTimeField;
    JGMasCFMDate2: TDateTimeField;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure JGDetAfterOpen(DataSet: TDataSet);
    procedure JGDetNewRecord(DataSet: TDataSet);
    procedure Query1AfterOpen(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure JGMasNewRecord(DataSet: TDataSet);
  private
    procedure readini();
    { Private declarations }
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  Adjust_CBY_Extra_Con: TAdjust_CBY_Extra_Con;
  NDate:TDate;


implementation

uses main1;

{$R *.dfm}
procedure TAdjust_CBY_Extra_Con.readini();
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

procedure TAdjust_CBY_Extra_Con.Button1Click(Sender: TObject);
begin
  with JGMas do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('SELECT DISTINCT JGZL.LSNO AS JGNO, JGZL.ZSBH, ZSZL.ZSYWJC,  CONVERT(SmallDateTime, CONVERT(VARCHAR, JGZL.UserDate, 111)) AS JGDate, JGZL.UserID, CONVERT(SmallDateTime, CONVERT(VARCHAR, JGZL.UserDate, 111)) as UserDate ');
    SQL.Add(',JGZL.CFMID1,  CONVERT(SmallDateTime, CONVERT(VARCHAR, JGZL.CFMDate1, 111)) as CFMDate1, JGZL.CFMID2, CONVERT(SmallDateTime, CONVERT(VARCHAR, JGZL.CFMDate2, 111)) as CFMDate2, JGZL.YN, JGZL.CKBH FROM CBY_LineSideStockS AS JGZL');
    SQL.Add('LEFT JOIN ZSZL ON ZSZL.ZSDH = JGZL.ZSBH');
    SQL.Add('LEFT JOIN ( SELECT DISTINCT RLSNO FROM CBY_LineSideStockS  ) AS RKData ON RKData.RLSNO = JGZL.LSNO ');
    SQL.Add('WHERE  JGZL.Memo = ''Outsourced'' AND RKData.RLSNO IS NOT NULL  ');
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

procedure TAdjust_CBY_Extra_Con.FormCreate(Sender: TObject);
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

procedure TAdjust_CBY_Extra_Con.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAdjust_CBY_Extra_Con.FormDestroy(Sender: TObject);
begin
  Adjust_CBY_Extra_Con:=nil;
end;

procedure TAdjust_CBY_Extra_Con.JGDetAfterOpen(DataSet: TDataSet);
begin
    JGDetZ.active:=true;
end;

procedure TAdjust_CBY_Extra_Con.JGDetNewRecord(DataSet: TDataSet);
begin
    abort;
end;

procedure TAdjust_CBY_Extra_Con.Query1AfterOpen(DataSet: TDataSet);
begin
    JGDetZ.active:=true;
end;

procedure TAdjust_CBY_Extra_Con.Query1NewRecord(DataSet: TDataSet);
begin
    abort;
end;


procedure TAdjust_CBY_Extra_Con.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
      Button1Click(edit1);
end;

procedure TAdjust_CBY_Extra_Con.Button5Click(Sender: TObject);
var IsUpdate:boolean;
begin
    try
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
          //UPMas.Apply(ukmodify);
          Qtemp.Active := false;
          Qtemp.SQL.Clear;
          Qtemp.SQL.Add('UPDATE CBY_LineSideStockS SET  CFMDate1 = '''+formatdatetime('yyyy/MM/dd',FieldByName('CFMDate1').Value)+''', YN = '''+FieldByName('YN').Value +'''');
          Qtemp.SQL.Add('WHERE LSNO = ''' + FieldByName('JGNO').AsString + '''');
          Qtemp.ExecSQL;
          Qtemp.SQL.Clear;
        end;
        active:=false;
        active:=true;
      end;
      if IsUpdate=true then
      begin
        with Qtemp do
        begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('''+'CBY_LineSideStockS'+''','''+JGMas.fieldbyname('JGNO').Value+'''');
          sql.add(','''+JGDet.fieldbyname('CLBH').AsString+''','''+JGMas.fieldbyname('USERID').Value+''',');
          sql.add(''''+main.Edit1.Text+''',getdate())');
          execsql;
          active:=false;
        end;
      end; 
      showmessage('Succeed.');
    except
      showmessage('Have wrong.');
    end;
end;


procedure TAdjust_CBY_Extra_Con.Button3Click(Sender: TObject);
begin
  JGDet.Active:=false;
  JGMas.Active:=false;
  JGMas.Active:=true;
  JGDet.Active:=true;
end;

procedure TAdjust_CBY_Extra_Con.JGMasNewRecord(DataSet: TDataSet);
begin
  abort;
end;

end.









