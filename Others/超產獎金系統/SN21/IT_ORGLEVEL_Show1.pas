unit IT_ORGLEVEL_Show1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Data.DB, Data.Win.ADODB, MyADOQuery, EhLibVCL,
  GridsEh, DBAxisGridsEh, DBGridEh;

type
  TIT_ORGLEVEL_Show = class(TForm)
    DBGridEh1: TDBGridEh;
    IT_ORGLEVELQry: TMyADOQuery;
    IT_ORGLEVELQryDV_MA: TWideStringField;
    IT_ORGLEVELQryDV_MA1: TWideStringField;
    IT_ORGLEVELQryDV_TEN: TWideStringField;
    IT_ORGLEVELQryUserID: TStringField;
    IT_ORGLEVELQryUserDate: TDateTimeField;
    IT_ORGLEVELQryYN: TStringField;
    DS1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure InitUpdateSQL();
  public
    { Public declarations }
  end;

var
  IT_ORGLEVEL_Show: TIT_ORGLEVEL_Show;

implementation

   uses DM1, main1, ProdBonus1, FunUnit;
{$R *.dfm}
procedure TIT_ORGLEVEL_Show.InitUpdateSQL();
begin
   with IT_ORGLEVELQry do
   begin
     SQL.Clear;
     SQL.Add('Select IT_ORGLEVEL.*,ST_DONVI.DV_TEN ');
     SQL.Add('from '+DM2.LocalDBName+'.dbo.IT_ORGLEVEL IT_ORGLEVEL');
     SQL.Add('Left join '+DM2.LocalDBName+'.dbo.ST_DONVI ST_DONVI on ST_DONVI.DV_MA=IT_ORGLEVEL.DV_MA1 ');
     SQL.Add('where IT_ORGLEVEL.DV_MA=:DV_MA ');
   end;
end;
procedure TIT_ORGLEVEL_Show.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TIT_ORGLEVEL_Show.FormCreate(Sender: TObject);
begin
  InitUpdateSQL();
  IT_ORGLEVELQry.Active:=true;
end;

procedure TIT_ORGLEVEL_Show.FormDestroy(Sender: TObject);
begin
  IT_ORGLEVEL_Show:=nil;
end;

end.
