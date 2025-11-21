unit NewEquipment_Materal1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Data.DB, Bde.DBTables, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls;

type
  TNewEquipment_Materal = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtSBBH: TEdit;
    btnQuery: TButton;
    edtYWPM: TEdit;
    DBGridEh1: TDBGridEh;
    DS1: TDataSource;
    Query1: TQuery;
    Query1SBBH: TStringField;
    Query1ywpm: TStringField;
    Query1LB: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnQueryClick(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewEquipment_Materal: TNewEquipment_Materal;

implementation


{$R *.dfm}

uses NewEquipment_CLZL1,NewEquipment1;

procedure TNewEquipment_Materal.btnQueryClick(Sender: TObject);
begin
  with query1 do
  begin
    active:=false;
    sql.Clear;
    SQL.Add('select SBBH,ywpm,''1'' as LB  ');
    SQL.Add('from TSCD_SB ');
    SQL.Add('where SBBH like'''+edtSBBH.Text+'%''  ');
    sql.add('      and ywpm like ''%'+edtYWPM.Text+'%''');
    sql.add('order by SBBH');
    active:=true;
  end;
end;

procedure TNewEquipment_Materal.DBGridEh1DblClick(Sender: TObject);
begin
  if query1.recordcount>0 then
  begin
    with NewEquipment.TSCD do
    begin
        edit;
        fieldbyname('SBBH').value:=query1.fieldbyname('SBBH').value;
        fieldbyname('LB').value:=query1.fieldbyname('LB').value;
    end;
    query1.Active:=false;
    close;
  end;

end;

procedure TNewEquipment_Materal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;


procedure TNewEquipment_Materal.FormDestroy(Sender: TObject);
begin
  NewEquipment_Materal:=nil;
end;

end.
