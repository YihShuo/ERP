unit FDStatus_ETD1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, ExtCtrls, GridsEh,
  DBGridEh;

type
  TFDStatus_ETD = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    DS1: TDataSource;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    dbgrdh1: TDBGridEh;
    Query1: TQuery;
    Button1: TButton;
    Label5: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit7: TEdit;
    smlntfldQuery1ver: TSmallintField;
    dtmfldQuery1etd: TDateTimeField;
    strngfldQuery1userid: TStringField;
    dtmfldQuery1userdate: TDateTimeField;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDStatus_ETD: TFDStatus_ETD;

implementation

uses FDStatus1;

{$R *.dfm}

procedure TFDStatus_ETD.FormDestroy(Sender: TObject);
begin
FDStatus_ETD:=nil;
end;

procedure TFDStatus_ETD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure TFDStatus_ETD.Button1Click(Sender: TObject);
begin
with query1 do
  begin
    active:=false;
    sql.clear;
    sql.Add(' select ver,etd,userid,userdate ');
    sql.Add('        from etdtemp');
    sql.add('        where 1=1  ');
    sql.add('              and clbh='''+edit2.Text+'''');
    sql.add('              AND cgno= '''+edit5.Text+'''');
    sql.add('              AND article= '''+edit7.Text+'''');
    active:=true;
  end;
end;

end.
