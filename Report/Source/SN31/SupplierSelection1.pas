unit SupplierSelection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TSupplierSelection = class(TForm)
    pnTop: TPanel;
    gdMain: TDBGridEh;
    bnQuery: TButton;
    edDH: TEdit;
    lbDH: TLabel;
    qrMain: TQuery;
    dsMain: TDataSource;
    lbName: TLabel;
    edName: TEdit;
    procedure bnQueryClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure gdMainDblClick(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  SupplierSelection: TSupplierSelection;

implementation

uses StuffCost1;

{$R *.dfm}

procedure TSupplierSelection.bnQueryClick(Sender: TObject);
begin
  qrMain.Active:=false;
  with qrMain.SQL do
    begin
      clear;
      add('select zsdh as ''編號'',zsqm as ''全名'',zsjc as ''中文簡稱'',zsywjc as ''英文'' from zszl');
      add('where zsdh like ''%'+edDH.Text+'%''');
      add('and (zsqm like ''%'+edName.Text+'%''');
      add('or zsjc like ''%'+edName.Text+'%''');
      add('or zsywjc like ''%'+edName.Text+'%'')');
    end;
  qrMain.Active:=true;
end;

procedure TSupplierSelection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSupplierSelection.FormDestroy(Sender: TObject);
begin
  SupplierSelection:=nil;
end;

procedure TSupplierSelection.gdMainDblClick(Sender: TObject);
begin
  TStuffCost(owner).setSupplier(qrMain.fieldbyname('編號').AsString);
  close;
end;

end.
