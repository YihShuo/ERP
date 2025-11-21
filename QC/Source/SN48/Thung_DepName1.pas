unit Thung_DepName1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, DBTables, jpeg, ExtCtrls;

type
  TThung_DepName = class(TForm)
    Panel1: TPanel;
    imgClose: TImage;
    Label1: TLabel;
    edtLine: TEdit;
    pnlQuery: TPanel;
    gdDepRyList: TDBGrid;
    qry: TQuery;
    qryID: TStringField;
    qryDepName: TStringField;
    qryGXLB: TStringField;
    ds: TDataSource;
    procedure pnlQueryClick(Sender: TObject);
    procedure imgCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gdDepRyListDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Thung_DepName: TThung_DepName;

implementation
 uses main1, MA_Box1, FunUnit;

{$R *.dfm}

procedure TThung_DepName.pnlQueryClick(Sender: TObject);
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

procedure TThung_DepName.imgCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TThung_DepName.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=Cafree;
end;

procedure TThung_DepName.gdDepRyListDblClick(Sender: TObject);
begin
  with MA_Box do
  begin
    //DepID_G:=Qry.FieldByName('ID').AsString;
    //DepNo.Text:=Qry.FieldByName('DepName').AsString;
    //Edit4.Text:=Qry.FieldByName('DepName').AsString;
  end;
  Close;
end;

end.
