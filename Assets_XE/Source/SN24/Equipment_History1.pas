unit Equipment_History1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Bde.DBTables, EhLibVCL, GridsEh,
  DBAxisGridsEh, DBGridEh;

type
  TEquipment_History = class(TForm)
    DBGridEh1: TDBGridEh;
    TSCDQry: TQuery;
    DS1: TDataSource;
    TSCDQryTSID: TStringField;
    TSCDQryTSBH: TStringField;
    TSCDQryDepID: TStringField;
    TSCDQryDepName: TStringField;
    TSCDQryDepID_Memo: TStringField;
    TSCDQryJDTS: TStringField;
    TSCDQryJDTSDep: TStringField;
    TSCDQryJDBDATE: TStringField;
    TSCDQryJDEDATE: TStringField;
    TSCDQryJRTS: TStringField;
    TSCDQryJRTSDep: TStringField;
    TSCDQryJRBDATE: TStringField;
    TSCDQryJREDATE: TStringField;
    TSCDQrySTATUS: TStringField;
    TSCDQryLLNO: TStringField;
    TSCDQryCFMDATE_LL: TDateTimeField;
    TSCDQryCFMID_LL: TStringField;
    TSCDQryYWSM: TStringField;
    TSCDQryZWSM: TStringField;
    TSCDQryQty: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Equipment_History: TEquipment_History;

implementation
  uses EquipmentList1;
{$R *.dfm}

procedure TEquipment_History.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TEquipment_History.FormCreate(Sender: TObject);
begin
  TSCDQry.Active:=true;
end;

procedure TEquipment_History.FormDestroy(Sender: TObject);
begin
  Equipment_History:=nil;
end;

end.
