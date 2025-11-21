unit Failed_Cartons_Input_Depname1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls;

type
  TFailed_Cartons_Input_Depname = class(TForm)
    Panel1: TPanel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure gdDepRyListDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Failed_Cartons_Input_Depname: TFailed_Cartons_Input_Depname;

implementation
uses  main1, Failed_Cartons_Input1;

{$R *.dfm}

procedure TFailed_Cartons_Input_Depname.pnlQueryClick(Sender: TObject);
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

procedure TFailed_Cartons_Input_Depname.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TFailed_Cartons_Input_Depname.FormCreate(Sender: TObject);
begin
  pnlQueryClick(self);
end;

procedure TFailed_Cartons_Input_Depname.gdDepRyListDblClick(
  Sender: TObject);
begin
  with Failed_Cartons_Input do               
  begin
    edtLine.Text:=Qry.FieldByName('DepName').AsString;

  end;
  Close;
end;

procedure TFailed_Cartons_Input_Depname.FormDestroy(Sender: TObject);
begin
  Failed_Cartons_Input_Depname:=nil;
end;

end.
