unit SMDDDispatch_print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TSMDDDispatch_print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel20: TQRLabel;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel14: TQRLabel;
    QRBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QLabel101: TQRLabel;
    QRShape1: TQRShape;
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
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QLabel102: TQRLabel;
    QLabel103: TQRLabel;
    QLabel104: TQRLabel;
    QLabel105: TQRLabel;
    QLabel106: TQRLabel;
    QLabel107: TQRLabel;
    QLabel108: TQRLabel;
    QLabel109: TQRLabel;
    QLabel110: TQRLabel;
    QLabel111: TQRLabel;
    QLabel112: TQRLabel;
    QLabel113: TQRLabel;
    QLabel114: TQRLabel;
    QLabel115: TQRLabel;
    QLabel116: TQRLabel;
    QLabel117: TQRLabel;
    QLabel118: TQRLabel;
    QLabel119: TQRLabel;
    QLabel120: TQRLabel;
    QLabel121: TQRLabel;
    QLabel201: TQRLabel;
    QLabel202: TQRLabel;
    QLabel203: TQRLabel;
    QLabel204: TQRLabel;
    QLabel205: TQRLabel;
    QLabel206: TQRLabel;
    QLabel207: TQRLabel;
    QLabel208: TQRLabel;
    QLabel209: TQRLabel;
    QLabel210: TQRLabel;
    QLabel211: TQRLabel;
    QLabel212: TQRLabel;
    QLabel213: TQRLabel;
    QLabel214: TQRLabel;
    QLabel215: TQRLabel;
    QLabel216: TQRLabel;
    QLabel217: TQRLabel;
    QLabel218: TQRLabel;
    QLabel219: TQRLabel;
    QLabel220: TQRLabel;
    QLabel221: TQRLabel;
    QLabel301: TQRLabel;
    QLabel302: TQRLabel;
    QLabel303: TQRLabel;
    QLabel304: TQRLabel;
    QLabel305: TQRLabel;
    QLabel306: TQRLabel;
    QLabel307: TQRLabel;
    QLabel308: TQRLabel;
    QLabel309: TQRLabel;
    QLabel310: TQRLabel;
    QLabel311: TQRLabel;
    QLabel312: TQRLabel;
    QLabel313: TQRLabel;
    QLabel314: TQRLabel;
    QLabel315: TQRLabel;
    QLabel316: TQRLabel;
    QLabel317: TQRLabel;
    QLabel318: TQRLabel;
    QLabel319: TQRLabel;
    QLabel320: TQRLabel;
    QLabel321: TQRLabel;
    QLabel401: TQRLabel;
    QLabel402: TQRLabel;
    QLabel403: TQRLabel;
    QLabel404: TQRLabel;
    QLabel405: TQRLabel;
    QLabel406: TQRLabel;
    QLabel407: TQRLabel;
    QLabel408: TQRLabel;
    QLabel409: TQRLabel;
    QLabel410: TQRLabel;
    QLabel411: TQRLabel;
    QLabel412: TQRLabel;
    QLabel413: TQRLabel;
    QLabel414: TQRLabel;
    QLabel415: TQRLabel;
    QLabel416: TQRLabel;
    QLabel417: TQRLabel;
    QLabel418: TQRLabel;
    QLabel419: TQRLabel;
    QLabel420: TQRLabel;
    QLabel421: TQRLabel;
    QRShape25: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QLabel501: TQRLabel;
    QLabel502: TQRLabel;
    QLabel503: TQRLabel;
    QLabel504: TQRLabel;
    QLabel505: TQRLabel;
    QLabel506: TQRLabel;
    QLabel507: TQRLabel;
    QLabel508: TQRLabel;
    QLabel509: TQRLabel;
    QLabel510: TQRLabel;
    QLabel511: TQRLabel;
    QLabel512: TQRLabel;
    QLabel513: TQRLabel;
    QLabel514: TQRLabel;
    QLabel515: TQRLabel;
    QLabel516: TQRLabel;
    QLabel517: TQRLabel;
    QLabel518: TQRLabel;
    QLabel519: TQRLabel;
    QLabel521: TQRLabel;
    QLabel520: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape26: TQRShape;
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
    DBT01: TQRDBText;
    DBT02: TQRDBText;
    DBT03: TQRDBText;
    DBT04: TQRDBText;
    DBT05: TQRDBText;
    DBT06: TQRDBText;
    DBT07: TQRDBText;
    DBT08: TQRDBText;
    DBT09: TQRDBText;
    DBT10: TQRDBText;
    DBT11: TQRDBText;
    DBT12: TQRDBText;
    DBT13: TQRDBText;
    DBT14: TQRDBText;
    DBT15: TQRDBText;
    DBT16: TQRDBText;
    DBT17: TQRDBText;
    DBT18: TQRDBText;
    DBT19: TQRDBText;
    DBT20: TQRDBText;
    DBT21: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ShowOrderSize();
  public
    { Public declarations }
  end;

var
  SMDDDispatch_print: TSMDDDispatch_print;

implementation
  uses SMDDDispatch1;
{$R *.dfm}

procedure TSMDDDispatch_print.ShowOrderSize();
var i,j:integer;
    QRLabel:TQRLabel;
    DBText:TQRDBText;
begin
  //
  
  //清空
  for i:=1 to 5 do
  begin
    for j:=1 to 21 do
    begin
      QRLabel:=TQRLabel(self.FindComponent('QLabel'+inttostr(i)+Format('%.2d',[j])));
      if QRLabel<>nil then  QRLabel.caption:='';
    end;
  end;
  //Size Run
  SMDDDispatch.DDZLSQry.First;
  for i:=1 to SMDDDispatch.DDZLSQry.RecordCount do
  begin
    for j:=2 to SMDDDispatch.DDZLSQry.Fields.Count-1  do
    begin
      QRLabel:=TQRLabel(self.FindComponent('QLabel'+inttostr(i)+Format('%.2d',[j-1])));
      if QRLabel<>nil then  QRLabel.caption:=SMDDDispatch.DDZLSQry.Fields[j].Value;
    end;
    SMDDDispatch.DDZLSQry.Next;
  end;
  //明細抬頭
  for i:=3 to SMDDDispatch.SMDDSQry.Fields.Count-1 do
  begin
    QRLabel:=TQRLabel(self.FindComponent('QLabel5'+Format('%.2d',[i-2])));
    if QRLabel<>nil then  QRLabel.caption:=SMDDDispatch.SMDDSQry.Fields[i].FieldName;
  end;
  //明細輪次
  for i:=1 to 21 do
  begin
    DBText:=TQRDBText(self.FindComponent('DBT'+Format('%.2d',[i])));
    if DBText<>nil then
    begin
     if (i+2)<=SMDDDispatch.SMDDSQry.Fields.Count-1 then
     begin
       DBText.DataField:=SMDDDispatch.SMDDSQry.Fields[i+2].FieldName;
      end else
      begin
       DBText.DataField:='';
      end;
    end;
  end;
end;
procedure TSMDDDispatch_print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TSMDDDispatch_print.FormDestroy(Sender: TObject);
begin
  SMDDDispatch_print:=nil;
end;

procedure TSMDDDispatch_print.FormCreate(Sender: TObject);
begin
  ShowOrderSize();
end;

end.
