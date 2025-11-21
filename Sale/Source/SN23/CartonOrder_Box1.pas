unit CartonOrder_Box1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ExtCtrls, GridsEh, DBGridEh;

type
  TCartonOrder_Box = class(TForm)
    gdMain: TDBGridEh;
    pnTop: TPanel;
    bnQuery: TButton;
    lbCLBH: TLabel;
    edCLBH: TEdit;
    qrMain: TQuery;
    dsMain: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bnQueryClick(Sender: TObject);
    procedure DoubleClick(Sender: TObject);
  private

  public
    iModel:integer;
  end;

var
  CartonOrder_Box: TCartonOrder_Box;

implementation

uses CartonOrder1,CarttonModel1;

{$R *.dfm}

procedure TCartonOrder_Box.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if iModel=0 then
    CartonOrder.Enabled:=true
  else
    CarttonModel.Enabled:=true;
  action:=cafree;
end;

procedure TCartonOrder_Box.FormDestroy(Sender: TObject);
begin
  cartonorder_Box:=nil;
end;

procedure TCartonOrder_Box.bnQueryClick(Sender: TObject);
begin
  qrMain.active:=false;
  with qrMain.SQL do
    begin
      clear;
      add('select cldh,zwpm,ywpm,dwzwsm,dwywsm,xxbh,cqdh,userdate ');
      add('from clzl');
      add('where cllb=''H14'' and cldh like ''%'+edCLBH.Text+'%''');
    end;
    qrMain.active:=true;
  gdMain.Columns[0].width:=80;
  gdMain.Columns[1].width:=250;
  gdMain.Columns[2].width:=250;
  gdMain.Columns[3].width:=40;
  gdMain.Columns[4].width:=60;
  gdMain.Columns[5].width:=80;
  gdMain.Columns[6].width:=50;
  gdMain.Columns[7].width:=100;
end;

procedure TCartonOrder_Box.DoubleClick(Sender: TObject);
begin
  if qrMain.RecordCount > 0 then
    if iModel=0 then
      CartonOrder.setBox(qrMain.fieldbyname('cldh').Value);
  close;
end;

end.
