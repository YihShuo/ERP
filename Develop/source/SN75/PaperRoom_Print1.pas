unit PaperRoom_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables;

type
  TPapaerRoom_print = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRTestNo: TQRDBText;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRRichText1: TQRRichText;
    QRBand3: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QuickRep2: TQuickRep;
    qrlbl36: TQRLabel;
    QRBand4: TQRBand;
    qrlbl1: TQRLabel;
    QRBand5: TQRBand;
    qrlbl2: TQRLabel;
    QRDBText1: TQRDBText;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    qrlbl14: TQRLabel;
    qrlbl15: TQRLabel;
    qrlbl16: TQRLabel;
    qrlbl17: TQRLabel;
    qrlbl18: TQRLabel;
    qrlbl19: TQRLabel;
    qrlbl20: TQRLabel;
    qrlbl21: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText32: TQRDBText;
    QRDBText33: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRDBText38: TQRDBText;
    QRDBText39: TQRDBText;
    QRRichText4: TQRRichText;
    qrlbl22: TQRLabel;
    QRBand6: TQRBand;
    qrlbl24: TQRLabel;
    qrlbl25: TQRLabel;
    qrlbl26: TQRLabel;
    qrlbl27: TQRLabel;
    qrlbl28: TQRLabel;
    qrlbl29: TQRLabel;
    qrlbl30: TQRLabel;
    qrlbl31: TQRLabel;
    QRDBText40: TQRDBText;
    qrlbl32: TQRLabel;
    QRDBText41: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRLabel24: TQRLabel;
    QRDBText44: TQRDBText;
    QRLabel25: TQRLabel;
    QRDBText45: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText46: TQRDBText;
    procedure FormDestroy(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

    { Private declarations }
  public
    procedure ChangeDataSet;
    { Public declarations }
  end;

var
  PapaerRoom_print: TPapaerRoom_print;

implementation
uses   PaperRoom_shoeTest;


{$R *.dfm}

procedure TPapaerRoom_print.FormDestroy(Sender: TObject);
begin
  PapaerRoom_print:=nil;
end;

procedure TPapaerRoom_print.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // 換行關係用 QRRICHTEXT1
  QRRichText1.Lines.Clear;
//  QRRichText2.Lines.Clear;
  if not PaperRoom.qry_Print.FieldByName('Memo1').IsNull then
    QRRichText1.Lines.Add(PaperRoom.qry_Print.FieldByName('Memo1').Value);
//  if not PaperRoom.qry_Print.FieldByName('Memo2').IsNull then
//    QRRichText2.Lines.Add(PaperRoom.qry_Print.FieldByName('Memo2').Value);
end;

procedure TPapaerRoom_print.FormCreate(Sender: TObject);
begin
//  ChangeDataSet;
end;

procedure TPapaerRoom_print.ChangeDataSet;
var
  i : Integer;
begin

  // have article
  if PaperRoom_shoeTest.Print_no = 1  then
    for i := 0 to self.ComponentCount-1 do
    begin
      if (self.Components[i] Is TQRDBText) then
      begin
        if (Copy(self.Components[i].Name,9,1) = '1') or
           (Copy(self.Components[i].Name,9,1) = '2') or
           (Copy(self.Components[i].Name,9,1) = '3') or
           (Copy(self.Components[i].Name,9,1) = '4') then
        else
          TQRDBText(self.Components[i]).DataSet := PaperRoom.DS1.DataSet;
      end;
      if (self.Components[i] Is TQuickRep) then
        TQuickRep(self.Components[i]).DataSet := PaperRoom.DS1.DataSet;
      if (self.Components[i] Is TQRSubDetail) then
        TQRSubDetail(self.Components[i]).DataSet := PaperRoom.DS1.DataSet;
    end;
  
end;



procedure TPapaerRoom_print.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  // 換行關係用 QRRICHTEXT1
//  QRRichText3.Lines.Clear;
  QRRichText4.Lines.Clear;
  if not PaperRoom.qry_Print.FieldByName('Memo1').IsNull then
    QRRichText4.Lines.Add(PaperRoom.qry_Print.FieldByName('Memo1').Value);
//  if not PaperRoom.qry_Print.FieldByName('Memo2').IsNull then
//    QRRichText3.Lines.Add(PaperRoom.qry_Print.FieldByName('Memo2').Value);
end;

end.


