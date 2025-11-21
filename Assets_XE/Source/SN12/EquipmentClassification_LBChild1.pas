unit EquipmentClassification_LBChild1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, DBTables, GridsEh, DBGridEh,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL,
  DBAxisGridsEh;

type
  TEquipmentClassification_LBChild = class(TForm)
    Panel1: TPanel;
    DBGridEh1: TDBGridEh;
    TSCD_SB: TQuery;
    TSCD_SBSBBH: TStringField;
    TSCD_SBLSBH: TStringField;
    TSCD_SBYWPM: TStringField;
    TSCD_SBZWPM: TStringField;
    TSCD_SBVWPM: TStringField;
    TSCD_SBHGPM: TStringField;
    TSCD_SBQUCBH: TStringField;
    TSCD_SBDWBH: TStringField;
    TSCD_SBZSDH: TStringField;
    TSCD_SBCQDH: TStringField;
    TSCD_SBQUSPrice: TFloatField;
    TSCD_SBQVNPrice: TCurrencyField;
    TSCD_SBAuthCE: TBooleanField;
    TSCD_SBAuthCompany: TBooleanField;
    TSCD_SBAuthBrand: TBooleanField;
    TSCD_SBCLZMLB: TStringField;
    TSCD_SBMemo: TStringField;
    TSCD_SBUSERID: TStringField;
    TSCD_SBUSERDATE: TDateTimeField;
    TSCD_SBYN: TStringField;
    TSCD_SBzsjc_yw: TStringField;
    DS1: TDataSource;
    Label1: TLabel;
    Edit1: TEdit;
    ZWPMEdit: TEdit;
    Label2: TLabel;
    YWPMEdit: TEdit;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EquipmentClassification_LBChild: TEquipmentClassification_LBChild;

implementation
   uses EquipmentClassification_Clzhzl1, FunUnit;
{$R *.dfm}

procedure TEquipmentClassification_LBChild.Button1Click(Sender: TObject);
begin
  //
  with TSCD_SB do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select  TSCD_SB.*,TSCD_ZSZL.zsjc_yw from TSCD_SB  ');
    SQL.Add('Left join TSCD_ZSZL on TSCD_ZSZL.zsdh=TSCD_SB.zsdh  ');
    SQL.Add('where TSCD_SB.SBBH like '''+Edit1.Text+'%'+''' ');
    if ZWPMEdit.Text <> '' then
      SQL.Add('   and TSCD_SB.ZWPM like ''%'+ZWPMEdit.Text+'%'' ');
    if YWPMEdit.Text <> '' then
      SQL.Add('   and TSCD_SB.YWPM like ''%'+YWPMEdit.Text+'%'' ');
    SQL.add('order by TSCD_SB.SBBH');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
  //
end;

procedure TEquipmentClassification_LBChild.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipmentClassification_LBChild.FormDestroy(Sender: TObject);
begin
  EquipmentClassification_LBChild:=nil;
end;

procedure TEquipmentClassification_LBChild.DBGridEh1DblClick(
  Sender: TObject);
begin
  EquipmentClassification_Clzhzl.CLZHZLVNQry.Edit;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('SBBH1').value:=TSCD_SB.FieldByName('SBBH').Value;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('LSBH').value:=TSCD_SB.FieldByName('LSBH').Value;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('YWPM').value:=TSCD_SB.FieldByName('YWPM').Value;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('ZWPM').value:=TSCD_SB.FieldByName('ZWPM').Value;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('VWPM').value:=TSCD_SB.FieldByName('VWPM').Value;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('DWBH').value:=TSCD_SB.FieldByName('DWBH').Value;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('QUCBH').value:=TSCD_SB.FieldByName('QUCBH').Value;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('ZSDH').value:=TSCD_SB.FieldByName('ZSDH').Value;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('zsjc_yw').value:=TSCD_SB.FieldByName('zsjc_yw').Value;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.FieldByName('Qty').value:=1;
  EquipmentClassification_Clzhzl.CLZHZLVNQry.Post;
  Close;
end;

end.
