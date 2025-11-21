unit QCOnTime_GXLB_AE1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, jpeg, DB, DBTables;

type
  TQCOnTime_GXLB_AE = class(TForm)
    Panel1: TPanel;
    rbA: TRadioButton;
    rbC: TRadioButton;
    rbS: TRadioButton;
    gdDepRyList: TDBGrid;
    qry: TQuery;
    ds: TDataSource;
    imgClose: TImage;
    rbAll: TRadioButton;
    qryID: TStringField;
    qryDepName: TStringField;
    qryGXLB: TStringField;
    procedure imgCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gdDepRyListDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QCOnTime_GXLB_AE: TQCOnTime_GXLB_AE;

implementation

uses AndonInputRev_AE1, main1, QCOnTime_GXLB1;

{$R *.dfm}

procedure TQCOnTime_GXLB_AE.imgCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TQCOnTime_GXLB_AE.FormActivate(Sender: TObject);
var i:integer;
begin
  with qry do
  begin
    Active := false;
    SQL.Clear;
    SQL.Add('select distinct ID, DepName, GXLB from BDepartment ');
    SQL.Add('Where ProYN=''1'' and GSBH = :GSBH  ');
    SQL.Add('and GXLB = :GXLB order by DepName ;');
    if rbA.Checked then
      ParamByName('GXLB').Value := 'A';
    if rbC.Checked then
      ParamByName('GXLB').Value := 'C';
    if rbS.Checked then
      ParamByName('GXLB').Value := 'S';
    ParamByName('GSBH').Value := main.Edit2.Text;
    Active := true;
  end;
end;

procedure TQCOnTime_GXLB_AE.FormCreate(Sender: TObject);
begin
  rbA.OnClick := FormActivate;
  rbC.OnClick := FormActivate;
  rbS.OnClick := FormActivate;
  rbAll.OnClick := FormActivate;
end;

procedure TQCOnTime_GXLB_AE.gdDepRyListDblClick(Sender: TObject);
begin
  if (AndonInputRev_AE.TabletPairs <> 0) then
    AndonInputRev_AE.TabletTimerTimer(Nil);
  AndonInputRev_AE.edtLine.Text:=qry.fieldbyname('DepName').AsString;;
  //Àx¦s¸ê°T
  AndonInputRev_AE.DepID:=qry.fieldbyname('ID').AsString;
  AndonInputRev_AE.DepName:=qry.fieldbyname('DepName').AsString;
  AndonInputRev_AE.DepGXLB:=qry.fieldbyname('GXLB').AsString;
  Close;
end;

procedure TQCOnTime_GXLB_AE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQCOnTime_GXLB_AE.FormDestroy(Sender: TObject);
begin
  QCOnTime_GXLB := nil;
end;

end.

