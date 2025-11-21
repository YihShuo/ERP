unit LYV_Lastborrow_PrintA41;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt,  StdCtrls;

type
  TLYV_Lastborrow_PrintA4 = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    DetailBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape1: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel29: TQRLabel;
    procedure FormDestroy(Sender: TObject);
    procedure QRDBText9Print(sender: TObject; var Value: String);
 //   procedure QRDBText9Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LYV_Lastborrow_PrintA4: TLYV_Lastborrow_PrintA4;

implementation

uses LYV_Lastborrow1;

{$R *.dfm}

procedure TLYV_Lastborrow_PrintA4.FormDestroy(Sender: TObject);
begin
  LYV_Lastborrow_PrintA4:=nil;
end;


procedure TLYV_Lastborrow_PrintA4.QRDBText9Print(sender: TObject;
  var Value: String);
{var
 s:string;
 j,k,h,p:integer;
 i:real;}
 begin
 {p:=1;
 s:=Lastborrow.DelDet.fieldbyname('ZLNO').asstring;
 i:=length(s)/10;
 j:=length(s) div 10;   //50个字符后开始换行
 k:=j;
 if i<>j then
  k:=j+1;
 for h:=1 to k do
  begin
   value:=value+copy(s,p,10)+' ';
   p:=p+10;
  end; }
end;

end.
