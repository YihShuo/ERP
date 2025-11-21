unit AdjustEntry1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Bde.DBTables, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.ExtCtrls, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TAdjustEntry = class(TForm)
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
    DS4: TDataSource;
    EnMas: TQuery;
    UpMas: TUpdateSQL;
    DS3: TDataSource;
    BDelRec: TQuery;
    Qtemp: TQuery;
    EnMasRKNO: TStringField;
    EnMasGSBH: TStringField;
    EnMasLB: TStringField;
    EnMasZSBH: TStringField;
    EnMasDOCNO: TStringField;
    EnMasHDNO: TStringField;
    EnMasDepID: TStringField;
    EnMasZSNO: TStringField;
    EnMasDOCDate: TDateTimeField;
    EnMasHDDate: TDateTimeField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TDateTimeField;
    EnMasCFMID: TStringField;
    EnMasCFMDATE: TDateTimeField;
    EnMasYN: TStringField;
    EnMaszsjc_yw: TStringField;
    EnDetRKNO: TStringField;
    EnDetSBBH: TStringField;
    EnDetQty: TFloatField;
    EnDetVNPrice: TCurrencyField;
    EnDetVNACC: TCurrencyField;
    EnDetUSPrice: TFloatField;
    EnDetUSACC: TFloatField;
    EnDetCWHL: TCurrencyField;
    EnDetCostID: TStringField;
    EnDetCWHL_HG: TCurrencyField;
    EnDetVNACC_HG: TCurrencyField;
    EnDetVNTax_HG: TCurrencyField;
    EnDetVNPrice_HG: TCurrencyField;
    EnDetVNACC_Tax: TCurrencyField;
    EnDetMonthS: TIntegerField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetYWPM: TStringField;
    EnDetDWBH: TStringField;
    EnDetVWPM: TStringField;
    EnDetHGPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdjustEntry: TAdjustEntry;
  NDate:TDate;

implementation

{$R *.dfm}

uses main1;

procedure TAdjustEntry.Button1Click(Sender: TObject);
begin
  with EnMas do
  begin
    Active:=false;
    sql.Clear;
    sql.add('select KCRK.*,ZSZL.zsjc_yw ');
    sql.add('from TSCD_KCRK KCRK');
    sql.add('left join TSCD_ZSZL ZSZL on ZSZL.ZSDH=KCRK.ZSBH ');
    sql.add('where  ISNULL(flowflag,'''')<>''X'' and convert(smalldatetime,convert(varchar,KCRK.USERDATE,111)) between ');
    sql.add('        '''+formatdatetime('yyyy/MM/dd',DTP1.date )+''''+' and '+''''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('        and KCRK.RKNO like '+''''+edit1.Text+'%'+'''');
    //sql.add('        and KCRK.GSBH='+''''+main.edit2.text+'''');
    sql.add('order by KCRK.RKNO  ');
    active:=true;
   end;
   with EnDet do
   begin
    active:=false;
    sql.Clear;
    sql.Add('select KCRKS.*,TSCD_SB.YWPM,TSCD_SB.VWPM,TSCD_SB.HGPM,TSCD_SB.DWBH');
    sql.Add('from TSCD_KCRKS KCRKS');
    sql.Add('left join TSCD_SB on TSCD_SB.SBBH = KCRKS.SBBH');
    sql.Add('where KCRKS.RKNO=:RKNO');
    sql.Add('order by KCRKS.RKNO');
    active:=true;
   end;
end;

procedure TAdjustEntry.Button2Click(Sender: TObject);
var IsUpdate:boolean;
begin
  with EnMas do
  begin
    if ((fieldbyname('USERDATE').AsString='') or (fieldbyname('YN').AsString='')) then
    begin
      showmessage('USERDATE / YN can not be empty.');
      abort;
    end;
  end;
  with EnDet do
  begin
    first;
    while not eof do
      begin
        if fieldbyname('CostID').AsString='' then
        begin
            showmessage('CostID can not be empty.');
            abort;
        end;
        if  (fieldbyname('USPrice').isnull and fieldbyname('VNPrice').isnull) then
        begin
            showmessage('Price can not be empty.');
            abort;
        end;
        if  (not fieldbyname('USPrice').isnull and  fieldbyname('USACC').isnull) then
        begin
            showmessage('USACC can not be empty.');
            abort;
        end;
        if  (not fieldbyname('VNPrice').isnull and  fieldbyname('VNACC').isnull) then
        begin
            showmessage('VNACC can not be empty.');
            abort;
        end;
        next;
      end;
  end;
  IsUpdate:=false;
  try
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
    end;
    with EnMas do
    begin
      if ((state in [dsedit]) or (IsUpdate=true)) then
      begin
        IsUpdate:=true;
        Edit;
        UPMas.Apply(ukmodify);
      end;
      active:=false;
      active:=true;
    end;
    //
    if IsUpdate=true then
    begin
      with BDelRec do
      begin
          active:=false;
          sql.Clear;
          sql.add('insert into BDelRec ');
          sql.add('(TableName ,TNO,CLBH,OldID,DelID,DelDate)');
          sql.add('values ('+''''+'TSCD_KCRKC'+''''+','+''''+EnMas.fieldbyname('RKNO').Value+'''');
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

procedure TAdjustEntry.Button3Click(Sender: TObject);
begin
  EnDet.Active:=false;
  EnMas.Active:=false;
  EnMas.Active:=true;
  EnDet.Active:=true;
end;

procedure TAdjustEntry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   action:=cafree;
end;

procedure TAdjustEntry.FormCreate(Sender: TObject);
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
end;

procedure TAdjustEntry.FormDestroy(Sender: TObject);
begin
   AdjustEntry:=nil;
end;

end.
