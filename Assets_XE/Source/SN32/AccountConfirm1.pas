unit AccountConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh, Comobj, DateUtils;

type
  TAccountConfirm = class(TForm)
    DBGrid1: TDBGridEh;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnSearch: TButton;
    btnConfirm: TButton;
    btnCancel: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    edtRKNO: TEdit;
    btnReset: TButton;
    DBGrid2: TDBGridEh;
    DelDet: TQuery;
    DelDetRKNO: TStringField;
    DelDetSBBH: TStringField;
    DelDetQty: TFloatField;
    DelDetYWPM: TStringField;
    DelDetZWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetZSDH: TStringField;
    DelDetLSBH: TStringField;
    DelDetQUCBH: TStringField;
    DelDetVNPrice: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetUSPrice: TFloatField;
    DelDetUSACC: TFloatField;
    DelDetCWHL_HG: TCurrencyField;
    DelDetVNACC_HG: TCurrencyField;
    DelDetVNTax_HG: TCurrencyField;
    DelDetVNPrice_HG: TCurrencyField;
    DelDetVNACC_Tax: TCurrencyField;
    DelDetMonthS: TIntegerField;
    DelDetCostID: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    UPDet: TUpdateSQL;
    DS2: TDataSource;
    UpdTSCD: TUpdateSQL;
    TSCDQry: TQuery;
    TSCDQryTSID: TStringField;
    TSCDQryTSBH: TStringField;
    TSCDQrySBBH: TStringField;
    TSCDQryXSBH: TStringField;
    TSCDQryNSX: TStringField;
    TSCDQryInDATE: TDateTimeField;
    TSCDQryDepID: TStringField;
    TSCDQryDepName: TStringField;
    TSCDQryDepID_Memo: TStringField;
    TSCDQryYWPM: TStringField;
    TSCDQryZWPM: TStringField;
    TSCDQryZSDH: TStringField;
    TSCDQryZSJC_YW: TStringField;
    TSCDQryLSBH: TStringField;
    TSCDQryQUCBH: TStringField;
    TSCDQryStatus: TStringField;
    TSCDQryQty: TFloatField;
    TSCDQryRKNO: TStringField;
    TSCDQryCFMID: TStringField;
    TSCDQryCFMID_LL: TStringField;
    TSCDQryCFMID_RK: TStringField;
    TSCDQryLB: TStringField;
    TSCDQryUSERDATE: TDateTimeField;
    TSCDQryUSERID: TStringField;
    TSCDQryYN: TStringField;
    DS3: TDataSource;
    TSCD: TQuery;
    DS1: TDataSource;
    DelMas: TQuery;
    DelMasRKNO: TStringField;
    DelMasDOCNO: TStringField;
    DelMasYN: TStringField;
    DelMasLB: TStringField;
    DelMasDepID: TStringField;
    DelMasDepName: TStringField;
    DelMasCFMDATE: TDateTimeField;
    DelMasCFMID: TStringField;
    DelMasUSERDATE: TDateTimeField;
    DelMasUSERID: TStringField;
    DelMasZSBH: TStringField;
    DelMasZSJC_YW: TStringField;
    DelMasHDNO: TStringField;
    DelMasDOCDate: TDateTimeField;
    DelMasHDDate: TDateTimeField;
    Qtemp: TQuery;
    UpMas: TUpdateSQL;
    DelDetVWPM: TStringField;
    DelMasSOHIEU: TStringField;
    DelMasTOKHAI: TStringField;
    DelMasTKDate: TDateTimeField;
    Panel2: TPanel;
    DBGrid3: TDBGridEh;
    DBGrid4: TDBGridEh;
    DelDetS: TQuery;
    DS4: TDataSource;
    UpDetS: TUpdateSQL;
    DelDetSRKNO: TStringField;
    DelDetSSBBH: TStringField;
    DelDetSSBBH1: TStringField;
    DelDetSQty: TFloatField;
    DelDetSVNPrice: TCurrencyField;
    DelDetSUSPrice: TFloatField;
    DelDetSUSERID: TStringField;
    DelDetSUSERDATE: TDateTimeField;
    DelDetSYN: TStringField;
    DelDetSVWPM: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private
    AppDir:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AccountConfirm: TAccountConfirm;
  Ndate: Tdate;

implementation

{$R *.dfm}

uses main1;

procedure TAccountConfirm.btnCancelClick(Sender: TObject);
begin
  DelDetS.Active:=false;
  DelDet.Active:=false;
  DelMas.Active:=false;
  DelMas.Active:=true;
  DelDet.Active:=true;
  DelDetS.Active:=true;
end;

procedure TAccountConfirm.btnConfirmClick(Sender: TObject);
var i:integer;
begin

  with  DelDet do
  begin
    First;
    while Not Eof do
    begin
      if  ((fieldbyname('MonthS').isnull) or (fieldbyname('CostID').isnull) ) then
      begin
          showmessage('MonthS or CostID  can not be empty.');
          abort;
      end;
      DelDet.Next;
    end;
  end;
  try
     with DelDet do
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

procedure TAccountConfirm.btnResetClick(Sender: TObject);
begin
  try
    with Qtemp do
    begin
      active:=false;
      sql.Clear;
      sql.add('Update TSCD Set CFMID_RK=''NO'' ');
      SQL.Add('where RKNO='''+DelMas.fieldbyname('RKNO').AsString+''' ');
      execsql;
    end;
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

procedure TAccountConfirm.btnSearchClick(Sender: TObject);
begin
  with DelMas do
  begin
    DelDet.Active:=false;
    TSCD.Active:=false;
    DelDetS.Active:=false;
    Active:=false;
    sql.Clear;
    sql.add('select TSCD_KCRK.*,BDepartment.DepName,TSCD_ZSZL.ZSJC_YW,TSCD_KCPK.Declaretion as TOKHAI,TSCD_KCPK.TKDate ');
    sql.add('from TSCD_KCRK ');
    sql.add('left join TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_KCRK.DepID ');
    sql.add('left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_KCRK.ZSBH ');
    sql.Add('left join TSCD_KCPK on TSCD_KCRK.RKNO=TSCD_KCPK.PKNO ');
    sql.add('where TSCD_KCRK.CFMID<>''NO''  ');
    sql.Add('and TSCD_KCRK.YN<>'+''''+'5'+'''');
    sql.add('and convert(smalldatetime,convert(varchar,TSCD_KCRK.USERDATE,111)) between '+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and TSCD_KCRK.RKNO like '''+edtRKNO.Text+'%''');
    sql.add('order by TSCD_KCRK.RKNO  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if DelMas.RecordCount>0 then
  begin
    DelDet.Active:=true;
    TSCDQry.Active:=true;
    DelDetS.Active:=true;
  end;
end;

procedure TAccountConfirm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TAccountConfirm.FormCreate(Sender: TObject);
var i: integer;
begin
  AppDir:=ExtractFilePath(Application.ExeName);
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

end;

procedure TAccountConfirm.FormDestroy(Sender: TObject);
begin
  AccountConfirm:=nil;
end;

end.
