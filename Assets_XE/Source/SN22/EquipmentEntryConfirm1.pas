unit EquipmentEntryConfirm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls, ExtCtrls, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh, Vcl.Menus;

type
  TEquipmentEntryConfirm = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    btnSearch: TButton;
    btnConfirm: TButton;
    btnCancel: TButton;
    DTP1: TDateTimePicker;
    DTP2: TDateTimePicker;
    edtRKNO: TEdit;
    Qtemp: TQuery;
    EnMas: TQuery;
    DS1: TDataSource;
    UpMas: TUpdateSQL;
    UPDet: TUpdateSQL;
    EnDet: TQuery;
    DS2: TDataSource;
    TSCD: TQuery;
    EnMasRKNO: TStringField;
    EnMasDOCNO: TStringField;
    EnMasUSERID: TStringField;
    EnMasUSERDATE: TDateTimeField;
    EnMasCFMID: TStringField;
    EnMasCFMDATE: TDateTimeField;
    EnMasYN: TStringField;
    DBGrid2: TDBGridEh;
    Splitter1: TSplitter;
    DBGrid1: TDBGridEh;
    EnMasLB: TStringField;
    EnMasDepID: TStringField;
    EnMasDepName: TStringField;
    EnMasZSBH: TStringField;
    EnMasZSNO: TStringField;
    EnMasZSJC_YW: TStringField;
    EnDetRKNO: TStringField;
    EnDetSBBH: TStringField;
    EnDetUSERID: TStringField;
    EnDetUSERDATE: TDateTimeField;
    EnDetYN: TStringField;
    EnDetYWPM: TStringField;
    EnDetZWPM: TStringField;
    EnDetLSBH: TStringField;
    EnDetQUCBH: TStringField;
    EnDetQty: TFloatField;
    EnDetVNPrice: TCurrencyField;
    EnDetUSPrice: TFloatField;
    EnDetVNACC: TCurrencyField;
    EnDetUSACC: TFloatField;
    Splitter2: TSplitter;
    EnDetS: TQuery;
    EnDetSRKNO: TStringField;
    EnDetSSBBH: TStringField;
    EnDetSSBBH1: TStringField;
    EnDetSQty: TFloatField;
    EnDetSVNPrice: TCurrencyField;
    EnDetSUSPrice: TFloatField;
    EnDetSUSERID: TStringField;
    EnDetSUSERDATE: TDateTimeField;
    EnDetSYN: TStringField;
    EnDetSVWPM: TStringField;
    DS4: TDataSource;
    UpDetS: TUpdateSQL;
    DBGrid4: TDBGridEh;
    PopupMenu: TPopupMenu;
    Modify: TMenuItem;
    Save: TMenuItem;
    Cancel: TMenuItem;
    btnPrint: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure DBGrid2ColExit(Sender: TObject);
    procedure ModifyClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentEntryConfirm: TEquipmentEntryConfirm;
  Ndate: Tdate  ;

implementation

uses main1, EquipmentEntryConfirm_print1, FunUnit;
{$R *.dfm}
procedure TEquipmentEntryConfirm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TEquipmentEntryConfirm.FormDestroy(Sender: TObject);
begin
  EquipmentEntryConfirm:=nil;
end;

procedure TEquipmentEntryConfirm.ModifyClick(Sender: TObject);
begin
  with EnDetS do
  begin
    RequestLive := true;
    CachedUpdates := true;
    Edit;
  end;
  Save.Enabled := true;
  Cancel.Enabled := true;
end;

procedure TEquipmentEntryConfirm.SaveClick(Sender: TObject);
var i: integer;
begin
  try
    EnDetS.First;
    for i := 1 to EnDetS.RecordCount do
    begin
      case EnDetS.UpdateStatus of
        usModified:
        begin
          EnDetS.Edit;
          UpDetS.Apply(ukModify);
        end;
      end;
      EnDetS.Next;
    end;

    EnDetS.Active := false;
    EnDetS.CachedUpdates := false;
    EnDetS.RequestLive := false;
    EnDetS.Active := true;
    Save.Enabled := false;
    Cancel.Enabled := false;
  except
    MessageDlg('Failed to save the data!', mtWarning, [mbyes], 0);
  end;
end;

procedure TEquipmentEntryConfirm.FormCreate(Sender: TObject);
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
end;


procedure TEquipmentEntryConfirm.btnPrintClick(Sender: TObject);
begin
  EquipmentEntryConfirm_print:=TEquipmentEntryConfirm_print.Create(self);
  EquipmentEntryConfirm_print.quickrep1.prepare;
  EquipmentEntryConfirm_print.quickrep1.preview;
  EquipmentEntryConfirm_print.free;
end;

procedure TEquipmentEntryConfirm.btnSearchClick(Sender: TObject);
begin
 with EnMas do
  begin
    EnDet.Active:=false;
    TSCD.Active:=false;
    EnDetS.Active:=false;
    Active:=false;
    sql.Clear;
    sql.add('select TSCD_KCRK.*,BDepartment.DepName,TSCD_ZSZL.ZSJC_YW ');
    sql.add('from TSCD_KCRK');
    sql.add('left join  TSCD_BDepartment BDepartment on BDepartment.ID=TSCD_KCRK.DepID ');
    sql.add('left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_KCRK.ZSBH ');
    sql.add('where ISNULL(flowflag,'''')<>''X'' and TSCD_KCRK.CFMID=''NO'' ');
    sql.add('and convert(smalldatetime,convert(varchar,TSCD_KCRK.USERDATE,111)) between'+''''+formatdatetime('yyyy/MM/dd',DTP1.date )+'''');
    sql.add('and '''+formatdatetime('yyyy/MM/dd',DTP2.date )+'''');
    sql.add('and TSCD_KCRK.RKNO like '''+edtRKNO.Text+'%''');
    sql.add('order by TSCD_KCRK.RKNO  ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
  end;
  if EnMas.RecordCount>0 then
  begin
    EnDet.Active:=true;
    EnDetS.Active:=true;
  end;
end;

procedure TEquipmentEntryConfirm.CancelClick(Sender: TObject);
begin
  with EnDetS do
  begin
    Active := false;
    RequestLive := false;
    CachedUpdates := false;
    Active := true;
  end;
  Save.Enabled := false;
  Cancel.Enabled := false;
end;

procedure TEquipmentEntryConfirm.btnConfirmClick(Sender: TObject);
var i:integer;
begin
  //
  with  EnDet do
  begin
    First;
    while Not Eof do
    begin
      if  (fieldbyname('USPrice').isnull and fieldbyname('VNPrice').isnull) then
      begin
        showmessage('Price can not be empty.');
        abort;
      end else
      begin
        //
        if ((not fieldbyname('USPrice').isnull) and (not fieldbyname('VNPrice').isnull)) then
        begin
         showmessage('Can not have two price.');
         abort;
        end;
      end;
      EnDet.Next;
    end;
  end;
  //
  try
    EnDet.First;
    if EnDet.RecordCount >0 then
    begin
      while not EnDet.Eof do
      begin
        with EnDet do
        begin
          Edit;
          if not EnDet.FieldByName('VNPrice').IsNull then
          begin
            EnDet.FieldByName('VNACC').value:=trunc(EnDet.FieldByName('VNPrice').value*EnDet.FieldByName('Qty').value+0.5);
            EnDet.FieldByName('USPrice').value:=null;
            EnDet.FieldByName('USACC').value:=null;
          end;
          if not EnDet.FieldByName('USPrice').IsNull then
          begin
            EnDet.FieldByName('USACC').value:=trunc(EnDet.FieldByName('USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100 ;
            EnDet.FieldByName('VNPrice').value:=null;
            EnDet.FieldByName('VNACC').value:=null;
          end;
          UPdet.apply(ukmodify);
        end;
        EnDet.Next;
      end;
      EnDet.active:=false;
      EnDet.active:=true;
      //
      EnDet.First;
      while not EnDet.Eof do
      begin
        with TSCD do
        begin
          active:=false;
          sql.Clear;
          sql.add('Update TSCD Set ');
          {if EnMas.fieldbyname('LB').AsString='NNNNNNNNNN' then
            sql.add('Status=''N'' ');}
          sql.add('CFMID_RK='''+main.Edit1.Text+''''+',CFMDATE_RK= getdate() ');
          SQL.Add('where RKNO='''+EnDet.fieldbyname('RKNO').AsString+''' and SBBH='''+EnDet.fieldbyname('SBBH').AsString+''' and LB=1 and CFMID=''NO'' ');
          execsql;
        end;
        EnDet.Next;
      end;
      //
      {EquipmentEntryConfirm_print:=TEquipmentEntryConfirm_print.Create(self);
      EquipmentEntryConfirm_print.quickrep1.prepare;
      EquipmentEntryConfirm_print.quickrep1.preview;
      EquipmentEntryConfirm_print.free;  }
      //
      if messagedlg('Confirm or not ?',mtinformation,[mbYes,mbNo],0)=mrYes then
      begin
          with EnMas do
          begin
            edit;
            fieldbyname('CFMID').Value:= main.edit1.text;
            fieldbyname('CFMDATE').Value:=Ndate;
            fieldbyname('YN').Value:='1';
            UPMas.Apply(ukmodify);
            active:=false;
            active:=true;
          end;
          showmessage('Succeed.');
      end;
    end else
      showmessage('Pls insert the Equipment Detail first.');
  except
    showmessage('Have wrong.');
  end;
end;

procedure TEquipmentEntryConfirm.DBGrid2ColExit(Sender: TObject);
begin
  if EnDet.Active then
  begin
    if DBGrid2.Selectedindex=6  then
    begin
      if not EnDet.FieldByName('VNPrice').IsNull then
      begin
         EnDet.Edit;
         EnDet.FieldByName('VNACC').value:=trunc(EnDet.FieldByName('VNPrice').value*EnDet.FieldByName('Qty').value+0.5);
      end else
      begin
         EnDet.Edit;
         EnDet.FieldByName('VNACC').value:=null;
      end;
    end;
    if DBGrid2.Selectedindex=8  then
    begin
      if not EnDet.FieldByName('USPrice').IsNull then
      begin
         EnDet.Edit;
         EnDet.FieldByName('USACC').value:=trunc(EnDet.FieldByName('USPrice').value*EnDet.FieldByName('Qty').value*100+0.5)/100 ;
      end else
      begin
         EnDet.Edit;
         EnDet.FieldByName('USACC').value:=null;
      end;
    end;
  end;

end;

end.
