unit DAOstock_PrintTong1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TDAOstock_PrintTong = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape26: TQRShape;
    QRShape28: TQRShape;
    QRShape33: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape19: TQRShape;
    QRShape16: TQRShape;
    QRShape40: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel35: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape4: TQRShape;
    QRBand2: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel23: TQRLabel;
    L16: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel24: TQRLabel;
    L14: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel36: TQRLabel;
    QRBand3: TQRBand;
    QRShape10: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape21: TQRShape;
    QRShape24: TQRShape;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRShape2: TQRShape;
    QRBand4: TQRBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape25: TQRShape;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape5: TQRShape;
    QRSysData2: TQRSysData;
    QRLabel40: TQRLabel;
    PageN: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CalcVertlineHeight(Sender: TQRCustomBand);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    function CalcTextHeight(AQRDBText: TQRDBText): Integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DAOstock_PrintTong: TDAOstock_PrintTong;

implementation

uses
  main1, DAOSTOCK_new1;

{$R *.dfm}

function TDAOstock_PrintTong.CalcTextHeight(AQRDBText: TQRDBText): Integer;
var
  R: TRect;
  Flags: Integer;
  s: string;
  Canvas: TCanvas;
begin
  Canvas := Self.Canvas;
  Canvas.Font.Name := AQRDBText.Font.Name;
  Canvas.Font.Size := AQRDBText.Font.Size;
  Canvas.Font.Style := AQRDBText.Font.Style;
  Canvas.Font.Color := AQRDBText.Font.Color;

  s := AQRDBText.DataSet.FieldByName(AQRDBText.DataField).AsString;
  R := Rect(0, 0, AQRDBText.Width, 0);
  Flags := DT_CALCRECT or DT_WORDBREAK or DT_LEFT;
  DrawText(Canvas.Handle, PChar(s), Length(s), R, Flags);
  Result := R.Bottom - R.Top;
end;

procedure TDAOstock_PrintTong.CalcVertlineHeight(Sender: TQRCustomBand);
var
  i, height: Integer;
  dbText: TQRDBText;
  line: TQRShape;
  maxHeight: Integer;
  val: string;
begin
  maxHeight := QRDBText6.Height;
  for i := 0 to QRBand3.ControlCount - 1 do
  begin
    if qrBand3.Controls[i] is TQRDBText then
    begin
      dbText := TQRDBText(qrBand3.Controls[i]);
      height := CalcTextHeight(dbText);
//      val := dbText.DataSet.FieldByName(dbText.DataField).AsString;
      if height > maxHeight then
        maxHeight := height;
//     ShowMessage(Format('Tên: %s, DataField: %s, Giá tr?: %s',
//        [dbText.Name,
//         dbText.DataField,
//         dbText.DataSet.FieldByName(dbText.DataField).AsString]));
    end;
  end;

  if maxHeight > QRDBText6.Height then
    maxHeight := maxHeight + 23
  else
    maxHeight := qrBand3.Height;

  for i := 0 to qrBand3.ControlCount - 1 do
  begin
    if qrBand3.Controls[i] is TQRShape then
    begin
      line := TQRShape(qrBand3.Controls[i]);
      line.Height := maxHeight;
      line.VertAdjust := 1;
      line.Top := -1;
    end;
  end;
end;

procedure TDAOstock_PrintTong.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TDAOstock_PrintTong.FormDestroy(Sender: TObject);
begin
  DAOstock_PrintTong := nil;
end;

procedure TDAOstock_PrintTong.QRBand3BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  CalcVertlineHeight(Sender);
end;

end.

