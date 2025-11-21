unit MA_Inspection_Dep1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, jpeg, ExtCtrls;

type
  TMA_Inspection_Dep = class(TForm)
    Panel1: TPanel;
    imgClose: TImage;
    qry: TQuery;
    qryID: TStringField;
    qryDepName: TStringField;
    qryGXLB: TStringField;
    ds: TDataSource;
    gdDepRyList: TDBGrid;
    Label1: TLabel;
    edtLine: TEdit;
    pnlQuery: TPanel;
    procedure pnlQueryClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure gdDepRyListDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MouseWheel(Sender: TObject; Shift: TShiftState;
              WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TMyGrid = Class(TDBGrid)
    Public
    property OnMouseWheel; // 開放事件
  End;

var
  MA_Inspection_Dep: TMA_Inspection_Dep;

implementation
  uses  main1, MA_Inspection1;
{$R *.dfm}

procedure TMA_Inspection_Dep.MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  If Sender Is TDBGrid Then Begin // 先判斷Sender是否為TDBGrid
    If WheelDelta > 0 Then TDBGrid(Sender).Datasource.DataSet.Prior;
    If wheelDelta < 0 Then TDBGrid(Sender).DataSource.DataSet.Next;
    Handled := True;
  End;
end;

procedure TMA_Inspection_Dep.pnlQueryClick(Sender: TObject);
begin
  with Qry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select ID, DepName, GXLB from BDepartment ');
    SQL.Add('Where ProYN=''1'' and GSBH ='''+main.Edit2.Text+'''  ');
    if edtLine.Text<>'' then
    SQL.Add(' and DepName like ''%'+edtLine.Text+'%'' ');
    SQL.Add(' and GXLB =''A'' ');
    SQL.Add('order by DepName ');
    Active := true;
  end;
end;

procedure TMA_Inspection_Dep.imgCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TMA_Inspection_Dep.gdDepRyListDblClick(Sender: TObject);
begin
  with MA_Inspection do
  begin
    DepID_G:=Qry.FieldByName('ID').AsString;
    edtLine.Text:=Qry.FieldByName('DepName').AsString;
  end;
  Close;
end;

procedure TMA_Inspection_Dep.FormCreate(Sender: TObject);
begin
  pnlQueryClick(self);
  TMyGrid(gdDepRyList).OnMouseWheel := MouseWheel ;
end;

end.
