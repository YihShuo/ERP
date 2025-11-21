unit EntryEquipment_LBChild1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Bde.DBTables, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEntryEquipment_LBChild = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtSBBH: TEdit;
    edtLSBH: TEdit;
    Button1: TButton;
    DBGridEh1: TDBGridEh;
    TSCD_SB: TQuery;
    DS1: TDataSource;
    Label5: TLabel;
    edtQUCBH: TEdit;
    edtYWPM: TEdit;
    Label4: TLabel;
    edtZWPM: TEdit;
    Label6: TLabel;
    edtZSYWJC: TEdit;
    TSCD_SBSBBH: TStringField;
    TSCD_SBYWPM: TStringField;
    TSCD_SBZWPM: TStringField;
    TSCD_SBVWPM: TStringField;
    TSCD_SBHGPM: TStringField;
    TSCD_SBQUCBH: TStringField;
    TSCD_SBLSBH: TStringField;
    TSCD_SBZSDH: TStringField;
    TSCD_SBDWBH: TStringField;
    TSCD_SBCQDH: TStringField;
    TSCD_SBAuthCompany: TBooleanField;
    TSCD_SBAuthCE: TBooleanField;
    TSCD_SBAuthBrand: TBooleanField;
    TSCD_SBQUSPrice: TFloatField;
    TSCD_SBQVNPrice: TCurrencyField;
    TSCD_SBCLZMLB: TStringField;
    TSCD_SBMemo: TStringField;
    TSCD_SBUSERID: TStringField;
    TSCD_SBUSERDATE: TDateTimeField;
    TSCD_SBYN: TStringField;
    TSCD_SBZSJC_YW: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntryEquipment_LBChild: TEntryEquipment_LBChild;

implementation

uses main1,EntryEquipment1;

{$R *.dfm}

procedure TEntryEquipment_LBChild.Button1Click(Sender: TObject);
begin
  if ((edtSBBH.Text = '') and (edtYWPM.Text='') and (edtZWPM.Text='') and (edtQUCBH.Text='') and (edtLSBH.Text='') and (edtZSYWJC.Text=''))  then
  begin
    ShowMessage('Please enter at least one condition.');
    abort;
  end;

  with TSCD_SB do
  begin
    active:=false;
    SQL.Clear;
    SQL.Add('select TSCD_SB.*,TSCD_ZSZL.ZSJC_YW ');
    SQL.Add('from TSCD_SB ');
    SQL.Add('left join TSCD_ZSZL on TSCD_SB.ZSDH = TSCD_ZSZL.zsdh ');
    SQL.Add('where TSCD_SB.SBBH like '''+edtSBBH.Text+'%'' ');
    if edtYWPM.Text <> '' then
      SQL.Add('and TSCD_SB.YWPM like ''%'+edtYWPM.Text+'%'' ');
    if edtZWPM.Text <> '' then
      SQL.Add('and TSCD_SB.ZWPM like ''%'+edtZWPM.Text+'%'' ');
    if edtQUCBH.Text<>'' then
      SQL.Add('and TSCD_SB.QUCBH like ''%'+edtQUCBH.Text+'%'' ');
    if edtLSBH.Text<>'' then
      SQL.Add('and TSCD_SB.LSBH like ''%'+edtLSBH.Text+'%'' ');
    if edtZSYWJC.Text<>'' then
      SQL.Add('and TSCD_ZSZL.ZSJC_YW like ''%'+edtZSYWJC.Text+'%'' ');
    SQL.add('order by TSCD_SB.SBBH');
    active:=true;
  end;
end;

procedure TEntryEquipment_LBChild.DBGridEh1DblClick(Sender: TObject);
var i:integer;
begin
  if (not TSCD_SB.Active) then
  begin
    abort;
  end;
  if (TSCD_SB.recordcount<1) then
  begin
    abort;
  end;
  if TSCD_SB.recordcount>0 then
  begin
    with EntryEquipment.EnDetS do
    begin
      Edit;
      FieldByName('SBBH1').Value:=TSCD_SB.FieldByName('SBBH').Value;
      FieldByName('VNPrice').Value:=TSCD_SB.FieldByName('QVNPrice').Value;
      FieldByName('USPrice').Value:=TSCD_SB.FieldByName('QUSPrice').Value;
      FieldByName('VWPM').Value:=TSCD_SB.FieldByName('VWPM').Value;
      Insert;
    end;
  end;
end;

procedure TEntryEquipment_LBChild.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TEntryEquipment_LBChild.FormDestroy(Sender: TObject);
begin
  EntryEquipment_LBChild:=nil;
end;

end.
