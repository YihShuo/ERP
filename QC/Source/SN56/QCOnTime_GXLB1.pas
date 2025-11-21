unit QCOnTime_GXLB1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, jpeg, DB, DBTables;

type
  TQCOnTime_GXLB = class(TForm)
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
  QCOnTime_GXLB: TQCOnTime_GXLB;

implementation

uses AndonInputRev1, main1;

{$R *.dfm}

procedure TQCOnTime_GXLB.imgCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TQCOnTime_GXLB.FormActivate(Sender: TObject);
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

procedure TQCOnTime_GXLB.FormCreate(Sender: TObject);
begin
  rbA.OnClick := FormActivate;
  rbC.OnClick := FormActivate;
  rbS.OnClick := FormActivate;
  rbAll.OnClick := FormActivate;
end;

procedure TQCOnTime_GXLB.gdDepRyListDblClick(Sender: TObject);
begin
  if (AndonInputRev.TabletPairs <> 0) then
    AndonInputRev.TabletTimerTimer(Nil);
  AndonInputRev.edtLine.Text:=qry.fieldbyname('DepName').AsString;;
  //Àx¦s¸ê°T
  AndonInputRev.DepID:=qry.fieldbyname('ID').AsString;
  AndonInputRev.DepName:=qry.fieldbyname('DepName').AsString;
  AndonInputRev.DepGXLB:=qry.fieldbyname('GXLB').AsString;
  Close;
end;

procedure TQCOnTime_GXLB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TQCOnTime_GXLB.FormDestroy(Sender: TObject);
begin
  QCOnTime_GXLB := nil;
end;

end.

