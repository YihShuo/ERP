unit PD_PrintHDlg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TPD_PrintHDlg = class(TForm)
    Panel1: TPanel;
    CB_ORDER: TCheckBox;
    CB_CYCLE: TCheckBox;
    CB_TP: TCheckBox;
    Option_OK: TButton;
    Option_cancel: TButton;
    Label1: TLabel;
    procedure Option_OKClick(Sender: TObject);
    procedure CB_ORDERMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CB_CYCLEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Option_cancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PD_PrintHDlg: TPD_PrintHDlg;

implementation

uses PD_PrintH1, CutProcessDispatch1;

{$R *.dfm}

procedure TPD_PrintHDlg.Option_OKClick(Sender: TObject);
var
  Flag: boolean;
begin
  if (CB_ORDER.Checked) then
    Flag := false
  else if (CB_CYCLE.Checked) then
    Flag := true;

  PD_PrintH := TPD_PrintH.Create(self);
  PD_PrintH.Init(CutProcessDispatch.CPDDetail.FieldByName('DLNO').AsString, Flag, CB_TP.Checked, CutProcessDispatch.CPDMaster.FieldByName('DepID').AsString);
  Self.Close;
  PD_PrintH.QuickRep1.Preview;
  PD_PrintH.Free;
end;

procedure TPD_PrintHDlg.CB_ORDERMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CB_CYCLE.Checked := not CB_ORDER.Checked;
end;

procedure TPD_PrintHDlg.CB_CYCLEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CB_ORDER.Checked := not CB_CYCLE.Checked;
end;
      
procedure TPD_PrintHDlg.Option_cancelClick(Sender: TObject);
begin
  Close;
end;

end.
