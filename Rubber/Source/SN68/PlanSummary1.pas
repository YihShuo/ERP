unit PlanSummary1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, GridsEh, DBGridEh, DB, DBTables, ComCtrls,
  DBGridEhImpExp, ShellAPI;

type
  TPlanSummary = class(TForm)
    DS1: TDataSource;
    Query1: TQuery;
    Qtemp: TQuery;
    DBGridEh1: TDBGridEh;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    RYEdit1: TEdit;
    Label3: TLabel;
    RYEdit2: TEdit;
    GSBHCombo: TComboBox;
    Label4: TLabel;
    Button2: TButton;
    SaveDialog1: TSaveDialog;
    Query1MJBH: TStringField;
    Query1EnglishName: TStringField;
    Query1SIZE: TStringField;
    Query1Order_Qty: TIntegerField;
    Query1OKQTY: TIntegerField;
    Query1OutQty: TIntegerField;
    Edit1: TEdit;
    Label5: TLabel;
    Edit2: TEdit;
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
  PlanSummary: TPlanSummary;

implementation
uses main1, FunUnit, OrderDetail1;
{$R *.dfm}

procedure TPlanSummary.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TPlanSummary.FormDestroy(Sender: TObject);
begin
  PlanSummary := nil;
end;

procedure TPlanSummary.Button1Click(Sender: TObject);
var
  SubSQL1, SubSQL2, XieXing, SheHao, CLDH: string;
  i, j: integer;
  XHList: TStringlist;
begin
  if ((RYEdit1.text = '') or (RYEdit2.text = '')) then
  begin
    Showmessage('Please Keyin BUYNO !');
    exit;
  end;
  with Query1 do
  begin
    Active := false;
    SQl.Clear;

    SQL.Add('select workplan.MJBH,colorclass.EnglishName,workplans.SIZE,sum(workplans.QTY) Order_Qty,sum(workplans.OKQTY) OKQTY,sum(workplans.OutQTY) OutQty from ' + main.LIY_DD + '.dbo.WorkPlans WorkPlans');
    SQL.Add('left join ' + main.LIY_DD + '.dbo.workplan workplan on workplan.workid = workplans.workid');
    SQL.Add('left join ' + main.LIY_DD + '.dbo.workplanss workplanss on workplanss.workid = workplans.workid');
    SQL.Add('left join ' + main.LIY_DD + '.dbo.colorclass	colorclass  on colorclass.ColorNo=workplan.ColorNo');
    SQL.Add('left join ddzl ddzl on ddzl.DDBH = workplanss.DDBH');
    SQL.Add('where workplan.CQDH = ''' + main.Edit2.Text + '''');
    SQL.Add('and workplan.MJBH like ''' + trim(Edit1.Text) + '%''');
    SQL.Add('and workplan.ColorNo like ''' + trim(Edit2.Text) + '%''');
    SQL.Add('and ddzl.BUYNO > ''' + RYEdit1.text + ''' and ddzl.BUYNO < ''' + RYEdit2.text + '''');
    SQL.Add('group by workplans.SIZE,workplan.MJBH,colorclass.EnglishName');
    Active := true;
  end;
end;

procedure TPlanSummary.DBGridEh1DblClick(Sender: TObject);
begin
  //
  if Query1.Active = true then
  begin
    OrderDetail := TOrderDetail.Create(self);
    OrderDetail.ScaninDetailData();
    OrderDetail.ShowModal();
  end;
  //
end;

end.
