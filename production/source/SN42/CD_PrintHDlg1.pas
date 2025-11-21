unit CD_PrintHDlg1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TCD_PrintHDlg = class(TForm)
    Panel1: TPanel;
    CB_ORDER: TCheckBox;
    CB_CYCLE: TCheckBox;
    CB_NOC: TCheckBox;
    CB_TP: TCheckBox;
    Option_OK: TButton;
    Option_cancel: TButton;
    Label1: TLabel;
    CB_LAYERS: TCheckBox;
    Edit1: TEdit;
    procedure Option_OKClick(Sender: TObject);
    procedure CB_ORDERMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CB_CYCLEMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Option_cancelClick(Sender: TObject);
    procedure CB_LAYERSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CD_PrintHDlg: TCD_PrintHDlg;

implementation

uses CD_PrintH1, CD_PrintH21, CutDispatch1;

{$R *.dfm}

procedure TCD_PrintHDlg.Option_OKClick(Sender: TObject);
var
  Flag: boolean;
  Layers: integer;
begin
  Layers := 0;
  if (CB_LAYERS.Checked) then
  begin
    if (TryStrToInt(Edit1.Text, Layers) = false) then
    begin
      ShowMessage('Please enter a valid LAYER quantity.');
      Exit;
    end;
  end;

  if (CB_ORDER.Checked) then
    Flag := false
  else if (CB_CYCLE.Checked) then
    Flag := true;

  if (PrintType = 'H') then
  begin
    CD_PrintH:=TCD_PrintH.Create(self);
    CD_PrintH.Init(CutDispatch.QCDDetail.FieldByName('DLNO').AsString, Flag, CB_NOC.Checked, CB_TP.Checked, CutDispatch.QCDMaster.FieldByName('DepID').AsString, Layers);
    self.Close;
    CD_PrintH.QuickRep1.Preview;
    CD_PrintH.Free;
  end
  else if (PrintType = 'H2') then
  begin
    CD_PrintH2:=TCD_PrintH2.Create(self);
    CD_PrintH2.Init(CutDispatch.QCDDetail.FieldByName('DLNO').AsString, Flag, CB_NOC.Checked, CB_TP.Checked, CutDispatch.QCDMaster.FieldByName('DepID').AsString, Layers);
    self.Close;
    CD_PrintH2.QuickRep1.Preview;
    CD_PrintH2.Free;
  end;
end;

procedure TCD_PrintHDlg.CB_ORDERMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CB_CYCLE.Checked := not CB_ORDER.Checked;
end;

procedure TCD_PrintHDlg.CB_CYCLEMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CB_ORDER.Checked := not CB_CYCLE.Checked;
end;
      
procedure TCD_PrintHDlg.CB_LAYERSMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Edit1.Visible := CB_LAYERS.Checked;
  if (Edit1.Visible = false) then
    Edit1.Clear;
end;

procedure TCD_PrintHDlg.Option_cancelClick(Sender: TObject);
begin
  Close;
end;

end.
