unit Failed_Cartons_Input_ID1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls;

type
  TFailed_Cartons_Input_ID = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtID: TEdit;
    pnlQuery: TPanel;
    qry: TQuery;
    ds: TDataSource;
    gdDepRyList: TDBGrid;
    GroupBox1: TGroupBox;
    RB1: TRadioButton;
    RB2: TRadioButton;
    qryID: TStringField;
    qrySCBH: TStringField;
    qryPrdQty: TSmallintField;
    qryInsQty: TSmallintField;
    qryDefQty: TSmallintField;
    qryResult: TStringField;
    qryDepName: TStringField;
    Label2: TLabel;
    Edit1: TEdit;
    procedure pnlQueryClick(Sender: TObject);
    procedure gdDepRyListDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    HIorDI:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Failed_Cartons_Input_ID: TFailed_Cartons_Input_ID;

implementation
uses  main1, Failed_Cartons_Input1,Failed_Cartons_Input_Depname1;
{$R *.dfm}

procedure TFailed_Cartons_Input_ID.pnlQueryClick(Sender: TObject);
begin
  if RB1.Checked then
  begin
    HIorDI:='HI';
  end else
  begin
    HIorDI:='DI';
  end;
  with qry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select WOPR_MA.ID, WOPR_MA.SCBH,WOPR_MA.PrdQty,WOPR_MA.InsQty,WOPR_MA.DefQty,WOPR_MA.Result,BDepartment.DepName');
    SQL.Add('From WOPR_MA');
    SQL.Add('left join BDepartment on BDepartment.ID=WOPR_MA.DepNo');
    SQL.Add('where WOPR_MA.GSBH = '''+ main.Edit2.text +''' and WOPR_MA.GXLB='''+HIorDI+'''  ');
    SQL.Add('and BDepartment.DepName = '''+Failed_Cartons_Input.edtLine.Text+''' ');
    if edtID.Text <> '' then
      SQL.Add('  and WOPR_MA.ID like '''+edtID.Text+'%'' ');
    if Edit1.Text <> '' then
      SQL.Add('  and WOPR_MA.SCBH like '''+Edit1.Text+'%'' ');

    SQL.Add('  and WOPR_MA.PrdQty<>0 ');
    SQL.Add('  and WOPR_MA.Result=''F''');
    SQL.Add('order by WOPR_MA.ID,WOPR_MA.SCDate');
    //funcObj.WriteErrorLog(sql.Text);
    Active:=true;
  end;
end;

procedure TFailed_Cartons_Input_ID.gdDepRyListDblClick(Sender: TObject);
begin
  with Failed_Cartons_Input do
  begin
    Failed_Cartons_Input.ID.Text:=Qry.FieldByName('ID').AsString;
  end;
  Close;
  Failed_Cartons_Input.Button1.Click;
end;

procedure TFailed_Cartons_Input_ID.FormDestroy(Sender: TObject);
begin
  Failed_Cartons_Input_ID:=nil;
end;

end.
