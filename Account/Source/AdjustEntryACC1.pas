unit AdjustEntryACC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh, iniFiles;

type
  TAdjustEntryACC = class(TForm)
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
    UPDet: TUpdateSQL;
    EnDet: TQuery;
    EnDetRKNO: TStringField;
    EnDetCLBH: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetCGBH: TStringField;
    EnDetRKSB: TStringField;
    EnDetPaQty: TCurrencyField;
    EnDetQty: TCurrencyField;
    EnDetUSPrice: TCurrencyField;
    EnDetUSACC: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    DS4: TDataSource;
    EnMas: TQuery;
    EnMasRKNO: TStringField;
    EnMasZSBH: TStringField;
    EnMasZSYWJC: TStringField;
    EnMasZSNO: TStringField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TDateTimeField;
    EnMasCFMID: TStringField;
    EnMasCFMDATE: TDateTimeField;
    EnMasYN: TStringField;
    EnMasGSBH: TStringField;
    EnMasCKBH: TStringField;
    DS3: TDataSource;
    BDelRec: TQuery;
    Label3: TLabel;
    Edit2: TEdit;
    Qtemp: TQuery;
    EnDetExchACC: TFloatField;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetCWHL: TCurrencyField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EnDetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure readini();
  public
    VNPrice_DiplayFormat:string;
    VNPrice_Decimal:Byte;
    { Public declarations }
  end;

var
  AdjustEntryACC: TAdjustEntryACC;
  NDate:TDate;

implementation

uses main1;

{$R *.dfm}
procedure TAdjustEntryACC.readini();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0.00';
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
  TCurrencyField(EnDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(EnDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TAdjustEntryACC.FormDestroy(Sender: TObject);
begin
  AdjustEntryACC:=nil;
end;

procedure TAdjustEntryACC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAdjustEntryACC.Button1Click(Sender: TObject);
begin

  with EnMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.ZSYWJC ');
    sql.add('from KCRK');
    sql.add('left join ZSZL on ZSZL.ZSDH=KCRK.ZSBH '); 
    sql.add('left join KCCK on KCCK.CKBH=KCRK.CKBH ');
    sql.add('where   convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.date )+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('        and KCRK.RKNO like '+''''+edit1.Text+'%'+'''');
    //sql.add('        and KCCK.GSBH='+''''+main.edit2.text+'''');
    sql.add('        and isnull(KCRK.ZSNO,'+''''+''+''''+') like '+''''+'%'+edit2.Text+'%'+'''');
    sql.add('order by KCRK.RKNO  ');
    active:=true;
  end;
  EnDet.Active:=true;
end;

procedure TAdjustEntryACC.FormCreate(Sender: TObject);
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

procedure TAdjustEntryACC.Button2Click(Sender: TObject);
var IsUpdate:boolean;
begin

  IsUpdate:=false;
  try  //更新真正庫存
    with EnDet do
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
            sql.add('values ('+''''+'KCRKC'+''''+','+''''+EnMas.fieldbyname('RKNO').Value+'''');
            sql.add(','+''''+' '+''''+','+''''+EnMas.fieldbyname('USERID').Value+''''+',');
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

procedure TAdjustEntryACC.EnDetNewRecord(DataSet: TDataSet);
begin
  abort;
end;

end.
