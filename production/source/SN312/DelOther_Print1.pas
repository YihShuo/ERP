unit DelOther_Print1;

interface       

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DBTables, DB, StdCtrls, QRPDFFilt,IniFiles;

                                          
type
  TDelOther_Print = class(TForm)
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
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QPage1: TQRLabel;
    DelDet: TQuery;
    DelDetLLNO: TStringField;
    DelDetCLBH: TStringField;
    DelDetYWPM: TStringField;
    DelDetDWBH: TStringField;
    DelDetTempQty: TCurrencyField;
    DelDetQty: TCurrencyField;
    DelDetUSPrice: TCurrencyField;
    DelDetCostID: TStringField;
    DelDetSCBH: TStringField;
    DelDetUSERDATE: TDateTimeField;
    DelDetUSERID: TStringField;
    DelDetYN: TStringField;
    DelDetDFL: TStringField;
    DelDetCLSL: TCurrencyField;
    DelDetPerson: TFloatField;
    DelDetYYBH: TStringField;
    DelDetYWSM: TStringField;
    DelDetMEMO: TStringField;
    UPDet: TUpdateSQL;
    DelDetZWSM: TStringField;
    Label1: TLabel;
    QRDBText13: TQRDBText;
    DelDetMEMO1: TMemoField;
    QRPDFFilter1: TQRPDFFilter;
    DelDetVNPrice: TCurrencyField;
    DelDetCWHL: TCurrencyField;
    DelDetVNACC: TCurrencyField;
    procedure FormCreate(Sender: TObject);
    procedure DelDetCalcFields(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
     procedure ReadIni();
  public
    { Public declarations }
    VNPrice_DiplayFormat,CWHL_DiplayFormat:string;
    VNPrice_Decimal,CWHL_Decimal:Byte;
  end;

var
  DelOther_Print: TDelOther_Print;

implementation

{$R *.dfm}

procedure TDelOther_Print.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  //
  VNPrice_DiplayFormat:='#,##0';
  VNPrice_Decimal:=0;
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      VNPrice_DiplayFormat:=MyIni.ReadString('VNPrice','DiplayFormat','#,##0');
      VNPrice_Decimal:=strtoint(MyIni.ReadString('VNPrice','Decimal','0'));
    finally
      MyIni.Free;
    end;
  end;
  TCurrencyField(DelDet.FieldByName('VNPrice')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('VNACC')).DisplayFormat:=VNPrice_DiplayFormat;
  TCurrencyField(DelDet.FieldByName('CWHL')).DisplayFormat:=VNPrice_DiplayFormat;
end;

procedure TDelOther_Print.FormCreate(Sender: TObject);
begin
  with DelDet do
  begin
    active:=true;
    while not eof do
      begin
        edit;
        if fieldbyname('Memo1').isnull then
          begin
            fieldbyname('Memo1').value:='';
          end;
        fieldbyname('Memo1').value:=fieldbyname('YWSM').value+'/'+fieldbyname('ZWSM').value+'//'+fieldbyname('Memo1').value; 
        post;
        next;
      end;
  end;
  ReadIni();
end;

procedure TDelOther_Print.DelDetCalcFields(DataSet: TDataSet);
begin
if deldet.FieldByName('CLSL').value<>0 then
  begin
     deldet.FieldByName('person').value:=deldet.FieldByName('tempqty').value/deldet.FieldByName('CLSL').value*100;
  end
  else
    begin
      deldet.FieldByName('person').value:=0;
    end;
end;

procedure TDelOther_Print.FormDestroy(Sender: TObject);
begin
DelOther_Print:=nil;
end;

procedure TDelOther_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
