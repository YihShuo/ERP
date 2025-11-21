unit OrderList1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, DBTables, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TOrderList = class(TForm)
    panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    QOrder: TQuery;
    QOrderddbh: TStringField;
    QOrdercqdh: TStringField;
    QOrderxiexing: TStringField;
    QOrderarticle: TStringField;
    QOrderkhdh: TStringField;
    QOrderkhpo: TStringField;
    QOrderddjq: TStringField;
    QOrderpairs: TFloatField;
    DataSource1: TDataSource;
    QTemp: TQuery;
    DBGridEh1: TDBGridEh;
    QOrderworkID: TStringField;
    CKWork: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridEh1DblClick(Sender: TObject);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
  private
    GSBH:String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OrderList: TOrderList;

implementation

uses ProductionPlan1, main1, FunUnit;

{$R *.dfm}

procedure TOrderList.Button1Click(Sender: TObject);
begin
  if ((edit1.Text='') and (edit2.Text='')) then
  begin
    showmessage('Need Xiexing or OrderNo');
    abort;
  end;
  with QOrder do
  begin
    SQL.Clear;
    SQL.Add('Select * from (');
    SQL.ADD('Select ddbh,cqdh,xiexing,article,khdh,khpo,ddjq,pairs, ');
    SQL.Add('       (select Max(WorkID) as WorkID from '+main.LIY_DD+'.dbo.workplanss workplanss where workplanss.ddbh=DDZL.DDBH ) as workID  ');
    SQL.Add('from '+main.LIY_DD+'.dbo.ddzl ddzl ');
    SQL.ADD('where CQDH='''+GSBH+'''');
    if (edit1.Text<>'') then
      sql.add(' and xiexing like '+''''+edit1.Text+'%'+'''');
    if (edit2.text<>'') then
      sql.add(' and ddbh like '+''''+edit2.Text + '%' + '''');
    SQL.Add(') DDZL ');
    if CKWork.Checked=true then
    SQL.Add('where WorkID is null ');
    //funcObj.WriteErrorLog(sql.Text);
    active:=TRUE;
  end;
end;

procedure TOrderList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;

end;

procedure TOrderList.DBGrid1DblClick(Sender: TObject);
begin
 //更改日期,加總訂單數到WPS更新到WPSS
  
end;

procedure TOrderList.FormCreate(Sender: TObject);
begin
  GSBH:='NULL';
  with QTemp do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select gsdh from Bgszl where gsdh='''+main.Edit2.Text+'''');
    sql.Add('and GXLB =''O''');
    active:=true;
  end;
  if Qtemp.RecordCount>0 then GSBH:=Qtemp.FieldByName('gsdh').AsString;
end;

procedure TOrderList.DBGridEh1DblClick(Sender: TObject);
begin
  if QOrder.FieldByName('WorkID').AsString='' then
  begin
    with ProductionPlan.WorkPlanSs do
    begin
      requestlive:=true;
      cachedupdates:=true;
      Edit;
      Insert;
      FieldByName('ddbh').value:=QORDER.FieldByName('ddbh').value;
      Post;
    end;
  end else
  begin
    Showmessage(QOrder.FieldByName('DDBH').AsString+' already workID:'+QOrder.FieldByName('WorkID').AsString);
  end;
end;

procedure TOrderList.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
  if QOrder.FieldByName('WorkID').AsString<>'' then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end;
end;

procedure TOrderList.FormDestroy(Sender: TObject);
begin
  ORDERLIST:=nil;
end;

end.
