unit SimpleSelection1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, GridsEh, DBGridEh, ExtCtrls;

type
  TSimpleSelection = class(TForm)
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
    iMode:integer;
  public
    procedure setMode(i:integer);

  end;

var
  SimpleSelection: TSimpleSelection;

implementation

uses StuffCost1;

{$R *.dfm}

procedure TSimpleSelection.bnQueryClick(Sender: TObject);
begin
  qrMain.Active:=false;
  with qrMain.SQL do
    begin
      clear;
      case iMode of
      0:
        begin
          add('select zsdh as No,zsqm as ''Full Name'',zsjc as ''Chinese Name'',zsywjc as ''English Name'' from zszl');
          add('where zsdh like ''%'+edDH.Text+'%''');
          add('and (zsqm like ''%'+edName.Text+'%''');
          add('or zsjc like ''%'+edName.Text+'%''');
          add('or zsywjc like ''%'+edName.Text+'%'')');
        end;
      1:
        begin
          add('select kfdh as No,kfqm as ''Full Name'',kfjc as ''Short Name'' from kfzl');
          add('where kfdh like ''%'+edDH.Text+'%''');
          add('and (kfqm like ''%'+edName.Text+'%''');
          add('or kfjc like ''%'+edName.Text+'%'')');
        end;
      2:
        begin
          add('select XieXing as No,XieMing from xxzl');
          add('where xiexing like ''%'+edDH.Text+'%''');
          add('and xieming like ''%'+edName.Text+'%''');
          add('group by xiexing,xieming');
        end;
      end;
    end;
  qrMain.Active:=true;
end;

procedure TSimpleSelection.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TSimpleSelection.FormDestroy(Sender: TObject);
begin
  SimpleSelection:=nil;
end;

procedure TSimpleSelection.gdMainDblClick(Sender: TObject);
var
  sResult:string;
begin
  sResult:= qrMain.fieldbyname('No').AsString;
  case iMode of
  0:
    TStuffCost(owner).edSupplier.Text:= sResult;
  2:
    TStuffCost(owner).edXieXing.Text:= sResult;
  end;
  close;
end;
procedure TSimpleSelection.setMode(i:integer);
begin
  iMode:=i;
  case i of
  0:
    caption:='Supplier Selection';
  1:
    caption:='Customer Selection';
  2:
    caption:='XieXing Selection';
  end;
  show;
end;

end.
