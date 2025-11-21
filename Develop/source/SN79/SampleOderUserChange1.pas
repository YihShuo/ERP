unit SampleOderUserChange1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GridsEh, DBGridEh, StdCtrls, Buttons, ComCtrls, ExtCtrls, DB,funUnit,
  DBTables;

type
  TSampleOderUserChange = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    YPMas: TTabSheet;
    YPDet: TTabSheet;
    YPDH: TLabel;
    bbInsert: TBitBtn;
    bbDelete: TBitBtn;
    bbModify: TBitBtn;
    bbSave: TBitBtn;
    bbCancel: TBitBtn;
    bbQuery: TBitBtn;
    DBG_YPMas: TDBGridEh;
    edtYPDH: TEdit;
    DS_YPMas: TDataSource;
    Qry_YPMas: TQuery;
    DBG_YPDet: TDBGridEh;
    Qry_YPDet: TQuery;
    DS_YPDet: TDataSource;
    Qry_YPDetYPDH: TStringField;
    Qry_YPDetXH: TStringField;
    Qry_YPDetBWBH: TStringField;
    Qry_YPDetBWLB: TStringField;
    Qry_YPDetCLBH: TStringField;
    Qry_YPDetCSBH: TStringField;
    Qry_YPDetLOSS: TFloatField;
    Qry_YPDetCLSL: TFloatField;
    Qry_YPDetCLDJ: TFloatField;
    Qry_YPDetCurrency: TStringField;
    Qry_YPDetRate: TFloatField;
    Qry_YPDetRemark: TStringField;
    Qry_YPDetJGZWSM: TStringField;
    Qry_YPDetJGYWSM: TStringField;
    Qry_YPDetUserID: TStringField;
    Qry_YPDetUserDate: TDateTimeField;
    Qry_YPDetXH1: TIntegerField;
    edtNewUserID: TEdit;
    lbNewUserID: TLabel;
    edtUserID: TEdit;
    QTemp: TQuery;
    Qry_YPMasYPDH: TStringField;
    Qry_YPMasXieXing: TStringField;
    Qry_YPMasSheHao: TStringField;
    Qry_YPMasARTICLE: TStringField;
    Qry_YPMasKFJD: TStringField;
    Qry_YPMasYPCC: TStringField;
    Qry_YPMasRate: TFloatField;
    Qry_YPMasCurrency: TStringField;
    Qry_YPMasKFRQ: TStringField;
    Qry_YPMasSDRQ: TStringField;
    Qry_YPMasJHRQ: TStringField;
    Qry_YPMasQuantity: TFloatField;
    Qry_YPMasPFC: TStringField;
    Qry_YPMasCFM: TStringField;
    Qry_YPMasFINDATE: TStringField;
    Qry_YPMasGSDH: TStringField;
    Qry_YPMasUSERID: TStringField;
    Qry_YPMasUSERDATE: TStringField;
    Qry_YPMasCGBH: TStringField;
    Qry_YPMasKFLX: TStringField;
    Qry_YPMasYPCCO: TStringField;
    Qry_YPMasYPCCL: TStringField;
    Qry_YPMasCGBH1: TStringField;
    Qry_YPMasMH: TStringField;
    Qry_YPMasLH: TStringField;
    Qry_YPMasBH: TStringField;
    Qry_YPMasFD_CHECK: TBooleanField;
    Qry_YPMasSubtype: TStringField;
    Qry_YPMasPUR_RECIEVE: TBooleanField;
    Qry_YPMasRE_CHECK: TBooleanField;
    Qry_YPMasTotalQuantity: TFloatField;
    Qry_YPMasFD: TStringField;
    Qry_YPMasProductionLocation: TStringField;
    Qry_YPMasUSERID_1: TStringField;
    Qry_YPMasUSERNAME: TStringField;
    Qry_YPMasPWD: TStringField;
    Qry_YPMasEMAIL: TStringField;
    Qry_YPMasLASTDATETIME: TDateTimeField;
    Qry_YPMasYN: TStringField;
    Qry_YPMaspasswordchend: TDateTimeField;
    Qry_YPMasfromIP: TStringField;
    Qry_YPMasdepid: TStringField;
    Qry_YPMasEngname: TStringField;
    Qry_YPMasReport: TStringField;
    UpdateYPMas: TUpdateSQL;
    UpdateYPDet: TUpdateSQL;
    lbUserID: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bbQueryClick(Sender: TObject);
    procedure bbModifyClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure DBG_YPMasCellClick(Column: TColumnEh);
    procedure bbSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    Temp: string;
    { Public declarations }
  end;

var
  SampleOderUserChange: TSampleOderUserChange;

implementation

{$R *.dfm}

procedure TSampleOderUserChange.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=caFree;
end;

procedure TSampleOderUserChange.FormDestroy(Sender: TObject);
begin
  SampleOderUserChange:=nil;
end;

procedure TSampleOderUserChange.bbQueryClick(Sender: TObject);
begin
  if edtYPDH.Text = '' then
     showmessage('Sample NO not be empty.')
  else
  begin
    with Qry_YPMas do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select * from YPZL');
      sql.Add('left join Busers on YPZL.USERID = Busers.USERID');
      sql.Add('where YPDH like ''%'+edtYPDH.Text+'%''');
      active:=true;
    end;
    //
    with Qry_YPDet do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select * from YPZLS where YPDH =:YPDH');
      active:=true;
    end;
    bbModify.Enabled:=true;
    Temp:= edtYPDH.Text;
  end;
end;

procedure TSampleOderUserChange.bbModifyClick(Sender: TObject);
begin
  edtYPDH.Enabled:=false;
  lbUserID.Visible:=true;
  edtUserID.Visible:=true;
  lbNewUserID.Visible:=true;
  edtNewUserID.Visible:=true;
  bbCancel.Enabled:=true;
  bbSave.Enabled:=true;
  edtYPDH.text :=  Qry_YPMas.fieldbyname('YPDH').value;
  edtUserID.text := Qry_YPMas.fieldbyname('UserID').value;
end;

procedure TSampleOderUserChange.bbCancelClick(Sender: TObject);
begin
  edtNewUserID.Clear;
  lbNewUserID.Visible:=false;
  edtNewUserID.Visible:=false;
  bbCancel.Enabled:=false;
  lbUserID.Visible:=false;
  edtUserID.Visible:=false;
  bbSave.Enabled := false;
  edtYPDH.Enabled := true;
end;

procedure TSampleOderUserChange.DBG_YPMasCellClick(Column: TColumnEh);
begin
  edtUserID.text := Qry_YPMas.fieldbyname('UserID').value;
  edtYPDH.text :=  Qry_YPMas.fieldbyname('YPDH').value;
end;

procedure TSampleOderUserChange.bbSaveClick(Sender: TObject);
begin
  if edtNewUserID.Text <> '' then
  begin
    with QTemp do
    begin
      active:=false;
      sql.Clear;
      sql.Add('Select * from Busers where UserID ='+''''+edtNewUserID.Text+'''');
      active:=true;
    end;
    if QTemp.RecordCount = 0 then
      showmessage('UserID does not exist.')
    else
    begin
      with QTemp do
      begin
        SQL.Add('Update YPZL Set UserID ='+''''+edtNewUserID.Text+'''');
        SQL.Add('where YPDH='''+edtYPDH.Text+''' and UserID='''+edtUserID.Text+''' ');

        SQL.Add('Update YPZLS Set UserID ='+''''+edtNewUserID.Text+'''');
        SQL.Add('where YPDH='''+edtYPDH.Text+''' and UserID='''+edtUserID.Text+''' ');
        ExecSQL;
      end;
      edtYPDH.Text :=Temp;
      bbQuery.Click;
    end;
  end;
  edtNewUserID.Clear;
  bbSave.Enabled:=false;
  edtYPDH.Enabled:=true;
  lbUserID.Visible:=false;
  edtUserID.Visible:=false;
  lbNewUserID.Visible:=false;
  edtNewUserID.Visible:=false;
  bbCancel.Enabled:=false;
end;

end.
