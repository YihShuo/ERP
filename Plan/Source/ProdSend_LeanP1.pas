unit ProdSend_LeanP1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TProdSend_LeanP = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    R1: TQRDBText;
    R2: TQRDBText;
    R3: TQRDBText;
    R4: TQRDBText;
    R5: TQRDBText;
    R6: TQRDBText;
    R7: TQRDBText;
    R8: TQRDBText;
    R9: TQRDBText;
    R10: TQRDBText;
    R11: TQRDBText;
    R12: TQRDBText;
    R13: TQRDBText;
    R14: TQRDBText;
    R15: TQRDBText;
    R16: TQRDBText;
    R17: TQRDBText;
    R18: TQRDBText;
    QRDBText6: TQRDBText;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    ColumnHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    Q1: TQRLabel;
    Q2: TQRLabel;
    Q3: TQRLabel;
    Q4: TQRLabel;
    Q5: TQRLabel;
    Q6: TQRLabel;
    Q7: TQRLabel;
    Q8: TQRLabel;
    Q9: TQRLabel;
    Q10: TQRLabel;
    Q11: TQRLabel;
    Q12: TQRLabel;
    Q13: TQRLabel;
    Q14: TQRLabel;
    Q15: TQRLabel;
    Q16: TQRLabel;
    Q17: TQRLabel;
    Q18: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRSysData1: TQRSysData;
    R19: TQRDBText;
    Q19: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel7: TQRLabel;
    Q20: TQRLabel;
    QRShape1: TQRShape;
    R20: TQRDBText;
    QRShape21: TQRShape;
    QRLabel8: TQRLabel;
    QRDBText4: TQRDBText;
    Q21: TQRLabel;
    QRShape22: TQRShape;
    Q22: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    R21: TQRDBText;
    QRShape25: TQRShape;
    R22: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel9: TQRLabel;
    QRBand1: TQRBand;
    QRLabel12: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProdSend_LeanP: TProdSend_LeanP;

implementation

uses Prodsend1;

{$R *.dfm}

procedure TProdSend_LeanP.FormCreate(Sender: TObject);
begin

with Prodsend.ProdDetail do
  begin
    if  Fieldcount>6 then
      begin
        Q1.caption:=Fields[6].fieldname;
        R1.datafield:=Fields[6].fieldname;
      end;
    if  Fieldcount>7 then
      begin
        Q2.caption:=Fields[7].fieldname;
        R2.datafield:=Fields[7].fieldname;
      end;
    if  Fieldcount>8 then
      begin
        Q3.caption:=Fields[8].fieldname;
        R3.datafield:=Fields[8].fieldname;
      end;
    if  Fieldcount>9 then
      begin
        Q4.caption:=Fields[9].fieldname;
        R4.datafield:=Fields[9].fieldname;
      end;
    if  Fieldcount>10 then
      begin
        Q5.caption:=Fields[10].fieldname;
        R5.datafield:=Fields[10].fieldname;
      end;
    if  Fieldcount> 11 then
      begin
        Q6.caption:=Fields[11].fieldname;
        R6.datafield:=Fields[11].fieldname;
      end;
    if  Fieldcount>12 then
      begin
        Q7.caption:=Fields[12].fieldname;
        R7.datafield:=Fields[12].fieldname;
      end;
    if  Fieldcount>13 then
      begin
        Q8.caption:=Fields[13].fieldname;
        R8.datafield:=Fields[13].fieldname;
      end;
    if  Fieldcount>14 then
      begin
        Q9.caption:=Fields[14].fieldname;
        R9.datafield:=Fields[14].fieldname;
      end;
    if  Fieldcount>15 then
      begin
        Q10.caption:=Fields[15].fieldname;
        R10.datafield:=Fields[15].fieldname;
      end;
    if  Fieldcount>16 then
      begin
        Q11.caption:=Fields[16].fieldname;
        R11.datafield:=Fields[16].fieldname;
      end;
    if  Fieldcount>17 then
      begin
        Q12.caption:=Fields[17].fieldname;
        R12.datafield:=Fields[17].fieldname;
      end;
    if  Fieldcount>18 then
      begin
        Q13.caption:=Fields[18].fieldname;
        R13.datafield:=Fields[18].fieldname;
      end;
    if  Fieldcount>19 then
      begin
        Q14.caption:=Fields[19].fieldname;
        R14.datafield:=Fields[19].fieldname;
      end;
    if  Fieldcount>120 then
      begin
        Q15.caption:=Fields[20].fieldname;
        R15.datafield:=Fields[20].fieldname;
      end;
    if  Fieldcount>21 then
      begin
        Q16.caption:=Fields[21].fieldname;
        R16.datafield:=Fields[21].fieldname;
      end;
    if  Fieldcount>22 then
      begin
        Q17.caption:=Fields[22].fieldname;
        R17.datafield:=Fields[22].fieldname;
      end;
    if  Fieldcount>23 then
      begin
        Q18.caption:=Fields[23].fieldname;
        R18.datafield:=Fields[23].fieldname;
      end;
    if  Fieldcount>24 then
      begin
        Q19.caption:=Fields[24].fieldname;
        R19.datafield:=Fields[24].fieldname;
      end;
    if  Fieldcount>25 then
      begin
        Q20.caption:=Fields[25].fieldname;
        R20.datafield:=Fields[25].fieldname;
      end;
    if  Fieldcount>26 then
      begin
        Q21.caption:=Fields[26].fieldname;
        R21.datafield:=Fields[26].fieldname;
      end;
    if  Fieldcount>27 then
      begin
        Q22.caption:=Fields[27].fieldname;
        R22.datafield:=Fields[27].fieldname;
      end; 
  end;
end;

procedure TProdSend_LeanP.FormDestroy(Sender: TObject);
begin
ProdSend_LeanP:=nil;
end;

procedure TProdSend_LeanP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
