unit NewRep_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables;

type
  TNewRep_Print = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel1: TQRLabel;
    Query1: TQuery;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    TitleBand1: TQRBand;
    QRShape14: TQRShape;
    QRLabel9: TQRLabel;
    QRShape15: TQRShape;
    QRLabel10: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    Q1: TQRLabel;
    QRShape18: TQRShape;
    Q2: TQRLabel;
    Q3: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
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
    Q19: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText8: TQRDBText;
    A1: TQRLabel;
    A2: TQRLabel;
    A3: TQRLabel;
    A4: TQRLabel;
    A5: TQRLabel;
    A6: TQRLabel;
    A7: TQRLabel;
    A8: TQRLabel;
    A9: TQRLabel;
    A10: TQRLabel;
    A11: TQRLabel;
    A12: TQRLabel;
    A13: TQRLabel;
    A14: TQRLabel;
    A15: TQRLabel;
    A16: TQRLabel;
    A17: TQRLabel;
    A18: TQRLabel;
    A19: TQRLabel;
    Query2: TQuery;
    Query2SCBH: TStringField;
    Query2XXCC: TStringField;
    Query2Qty: TFloatField;
    QRLabel6: TQRLabel;
    QRDBText5: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel2: TQRLabel;
    Query1CLBH: TStringField;
    Query1YWPM: TStringField;
    Query1DWBH: TStringField;
    Query1Qty: TFloatField;
    Query1CLSL: TCurrencyField;
    Query1TotQty: TFloatField;
    QRDBText1: TQRDBText;
    Query1ZLQty: TFloatField;
    Query1Person: TFloatField;
    PageFooterBand1: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure Query1CalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NewRep_Print: TNewRep_Print;

implementation

{$R *.dfm}

procedure TNewRep_Print.FormCreate(Sender: TObject);
var i:integer;
begin
query1.Active:=true;
query2.Active:=true;
i:=query2.RecordCount;
with query2 do
  begin
    first;
    if i>0 then
      begin
        Q1.caption:=fieldbyname('XXCC').value;
        A1.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          Q1.caption:='' ;
          A1.Caption:='';
        end;
    if i>1 then
      begin
        next;
        Q2.caption:=fieldbyname('XXCC').value;
        A2.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q2.caption:='';
          A2.Caption:='';
        end;
    if i>2 then
      begin
        next;
        Q3.caption:=fieldbyname('XXCC').value;
        A3.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q3.caption:='';
          A3.Caption:='';
        end;
    if i>3 then
      begin
        next;
        Q4.caption:=fieldbyname('XXCC').value;
        A4.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q4.caption:='';
          A4.Caption:='';
        end;
    if i>4 then
      begin
        next;
        Q5.caption:=fieldbyname('XXCC').value;
        A5.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q5.caption:='';
          A5.Caption:='';
        end;
    if i>5 then
      begin
        next;
        Q6.caption:=fieldbyname('XXCC').value;
        A6.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q6.caption:='';
          A6.Caption:='';
        end;
    if i>6 then
      begin
        next;
        Q7.caption:=fieldbyname('XXCC').value;
        A7.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q7.caption:='';
          A7.Caption:='';
        end;
    if i>7 then
      begin
        next;
        Q8.caption:=fieldbyname('XXCC').value;
        A8.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q8.caption:='';
          A8.Caption:='';
        end;
    if i>8 then
      begin
        next;
        Q9.caption:=fieldbyname('XXCC').value;
        A9.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q9.caption:='';
          A9.Caption:='';
        end;
    if i>9 then
      begin
        next;
        Q10.caption:=fieldbyname('XXCC').value;
        A10.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q10.caption:='';
          A10.Caption:='';
        end;
    if i>10 then
      begin
        next;
        Q11.caption:=fieldbyname('XXCC').value;
        A11.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q11.caption:='';
          A11.Caption:='';
        end;
    if i>11 then
      begin
        next;
        Q12.caption:=fieldbyname('XXCC').value;
        A12.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q12.caption:='';
          A12.Caption:='';
        end;
    if i>12 then
      begin
        next;
        Q13.caption:=fieldbyname('XXCC').value;
        A13.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q13.caption:='';
          A13.Caption:='';
        end;
    if i>13 then
      begin
        next;
        Q14.caption:=fieldbyname('XXCC').value;
        A14.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q14.caption:='';
          A14.Caption:='';
        end;
    if i>14 then
      begin
        next;
        Q15.caption:=fieldbyname('XXCC').value;
        A15.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q15.caption:='';
          A15.Caption:='';
        end;
    if i>15 then
      begin
        next;
        Q16.caption:=fieldbyname('XXCC').value;
        A16.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q16.caption:='';
          A16.Caption:='';
        end;
    if i>16 then
      begin
        next;
        Q17.caption:=fieldbyname('XXCC').value;
        A17.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q17.caption:='';
          A17.Caption:='';
        end;
    if i>17 then
      begin
        next;
        Q18.caption:=fieldbyname('XXCC').value;
        A18.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q18.caption:='';
          A18.Caption:='';
        end;
    if i>18 then
      begin
        next;
        Q19.caption:=fieldbyname('XXCC').value;
        A19.Caption:=floattostr(fieldbyname('Qty').value);
      end
      else
        begin
          next;
          Q19.caption:='';
          A19.Caption:='';
        end;
  end;

end;

procedure TNewRep_Print.Query1CalcFields(DataSet: TDataSet);
begin
if Query1.FieldByName('ZLQty').Value<>0 then
  begin
    Query1.FieldByName('person').Value:=Query1.FieldByName('TotQty').Value/Query1.FieldByName('ZLQty').Value*100;
  end
  else
    begin
      Query1.FieldByName('person').Value:=0;
    end;
end;

procedure TNewRep_Print.FormDestroy(Sender: TObject);
begin
NewRep_Print:=nil;
end;

procedure TNewRep_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
