unit IT_ORGLEVEL_DONVI1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Data.DB, Data.Win.ADODB, MyADOQuery, MyADOUpdateSQL, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TIT_ORGLEVEL_DONVI = class(TForm)
    Panel5: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Query4: TButton;
    DV_MAEdit: TEdit;
    DV_TenEdit: TEdit;
    DS1: TDataSource;
    ST_DONVIQry: TMyADOQuery;
    ST_DONVIQryDV_MA: TWideStringField;
    ST_DONVIQryDV_TEN: TWideStringField;
    ST_DONVIQryTienSanluongHeso: TFloatField;
    ST_DONVIQryUserID: TStringField;
    ST_DONVIQryUserDate: TDateTimeField;
    ST_DONVIQryYN: TStringField;
    DBGridEh5: TDBGridEh;
    Label1: TLabel;
    SumlineEdit: TEdit;
    ST_DONVIQrysumline: TStringField;
    ProdCK: TCheckBox;
    procedure Query4Click(Sender: TObject);
    procedure DBGridEh5DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IT_ORGLEVEL_DONVI: TIT_ORGLEVEL_DONVI;

implementation
  uses DM1, ST_DONVI1, IT_ORGLEVEL1, FunUnit;
{$R *.dfm}

procedure TIT_ORGLEVEL_DONVI.DBGridEh5DblClick(Sender: TObject);
begin
   IT_ORGLEVEL.IT_ORGLEVELQry.Edit;
   IT_ORGLEVEL.IT_ORGLEVELQry.FieldByName('DV_MA1').Value:=ST_DONVIQry.FieldByName('DV_MA').Value;
   IT_ORGLEVEL.IT_ORGLEVELQry.FieldByName('DV_TEN').Value:=ST_DONVIQry.FieldByName('DV_TEN').Value;
   IT_ORGLEVEL.IT_ORGLEVELQry.Post;
   IT_ORGLEVEL.IT_ORGLEVELQry.Insert;
end;

procedure TIT_ORGLEVEL_DONVI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TIT_ORGLEVEL_DONVI.FormDestroy(Sender: TObject);
begin
  IT_ORGLEVEL_DONVI:=nil;
end;

procedure TIT_ORGLEVEL_DONVI.Query4Click(Sender: TObject);
begin
  with ST_DONVIQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select * from '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI');
    SQL.Add('where ST_DONVI.DV_MA<>'''+ST_DONVI.ST_DONVIQry.FieldByName('DV_MA').AsString+''' ');
    SQL.Add('      and ST_DONVI.DV_MA not in (Select DV_MA1 from '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL where DV_MA='''+ST_DONVI.ST_DONVIQry.FieldByName('DV_MA').AsString+''') ');
    if DV_MAEdit.Text<>'' then
    SQL.Add('  and ST_DONVI.DV_MA like '''+DV_MAEdit.Text+'%'' ');
    if DV_TENEdit.Text<>'' then
    SQL.Add('  and ST_DONVI.DV_TEN like N''%'+DV_TENEdit.Text+'%'' ');
    if SumlineEdit.Text<>'' then
    SQL.Add('  and ST_DONVI.Sumline like '''+SumlineEdit.Text+'%'' ');
    if ProdCK.Checked=true then
    SQL.Add(' and ST_DONVI.DV_MA in (select Distinct ID_HRM from BDepartment where IsNull(ID_HRM,'''')<>'''') ');
    //funcObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
end;

end.
