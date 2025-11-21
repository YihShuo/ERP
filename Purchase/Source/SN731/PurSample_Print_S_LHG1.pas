unit PurSample_Print_S_LHG1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, StdCtrls;

type
  TPurSample_Print_S_LHG = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    Mas: TQuery;
    Det: TQuery;
    DataSource1: TDataSource;
    UpdateSQL1: TUpdateSQL;
    QRDBText2: TQRDBText;
    QPage1: TQRLabel;
    QRLabel38: TQRLabel;
    QRSysData2: TQRSysData;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    MasCGNO: TStringField;
    MasCLBH: TStringField;
    MasXqQty: TCurrencyField;
    MasQty: TCurrencyField;
    MasUSPrice: TCurrencyField;
    MasVNPrice: TCurrencyField;
    MasMemo: TStringField;
    MasBJNO: TStringField;
    MasYQDate: TDateTimeField;
    MasCFMDate: TDateTimeField;
    MasUSERDate: TDateTimeField;
    MasUSERID: TStringField;
    MasYN: TStringField;
    MasYWPM: TStringField;
    MasDWBH: TStringField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    L6: TQRLabel;
    L7: TQRLabel;
    L3: TQRLabel;
    L1: TQRLabel;
    L2: TQRLabel;
    MasZLNO: TMemoField;
    QRShape2: TQRShape;
    L18: TQRLabel;
    L19: TQRLabel;
    L20: TQRLabel;
    L21: TQRLabel;
    L22: TQRLabel;
    L23: TQRLabel;
    L24: TQRLabel;
    L_Season: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    L17: TQRLabel;
    L10: TQRLabel;
    L12: TQRLabel;
    L11: TQRLabel;
    L16: TQRLabel;
    L15: TQRLabel;
    L14: TQRLabel;
    QRLabel1: TQRLabel;
    MasMEMO_1: TStringField;
    QRDBText15: TQRDBText;
    MasREMARK: TStringField;
    QRLabel6: TQRLabel;
    QRLabel3: TQRLabel;
    Label_PS: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PurSample_Print_S_LHG: TPurSample_Print_S_LHG;

implementation

uses PurSample1, main1, PurSample_Print_S1;

{$R *.dfm}

procedure TPurSample_Print_S_LHG.FormCreate(Sender: TObject);
var i:integer;
begin

if main.Edit2.text = 'LYV' then
  L1.Caption:= 'LacTy Co., Ltd';

if main.Edit2.text = 'LHG' then
  L1.Caption:= 'LacTy II Co., Ltd';

Mas.Active:=true;
Det.Active:=true;
Mas.First;
if messagedlg('Just for Print not for Mail?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    L1.Caption:='';
    L2.Caption:='';
    L3.Caption:='';
    L6.Caption:='';
    L7.Caption:='';
    L10.Caption:='';
    L11.Caption:='';
    L12.Caption:='';
    L14.Caption:='';
    L15.Caption:='';
    L16.Caption:='';
    L17.Caption:='';
    L18.Caption:='';
    L19.Caption:='';
    L20.Caption:='';
    L21.Caption:='';
    L22.Caption:='';
    L23.Caption:='';
    L24.Caption:='';
   if  PurSample.CGMas.FieldByName('PURPOSE').Value ='PDT'  then
    begin
      QRLabel1.Caption:='PT' ;
     end
    else
    begin
     QRLabel1.Caption:='LY' ;
    end;
  end
  else
    begin
      PageHeaderBand1.Frame.DrawBottom:= true;
    end;
  if  PurSample.CGMas.FieldByName('PURPOSE').Value ='PDT'  then
    begin
     QRLabel1.Caption:='PT' ;
     end
    else
    begin
     QRLabel1.Caption:='LY' ;
    end;
  if  PurSample.CGMas.FieldByName('MEMO').AsString =''  then
      Label_PS.Caption:='' ;


if messagedlg('show 6 Article only or show All Article ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    while not Mas.Eof do
      begin
        if not Mas.fieldbyname('MEMO').Isnull then
          begin
            Mas.Edit;
            Mas.FieldByName('YWPM').asstring :=Mas.FieldByName('YWPM').value+'  //  '+Mas.fieldbyname('MEMO').value;
          end;
        if Det.recordcount>0 then
          begin
            if Det.recordcount<=6 then
              begin
                Det.First;
                while not Det.Eof do
                  begin
                    if not Mas.FieldByName('ZLNO').isnull then
                      begin
                        Mas.Edit;
                        Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('ZLBH').Value ;
                        IF PurSample.CheckBox1.Checked=true then
                           Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value ;
                        Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                        IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                           Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' '
                        else
                           Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' ';
                      end
                      else
                        begin
                          Mas.Edit;
                          Mas.FieldByName('ZLNO').asstring:=Det.fieldbyname('ZLBH').Value;
                          IF PurSample.CheckBox1.Checked=true then
                             Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value;
                          Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                          IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                             Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                        end;
                    Det.Next;
                  end;
              end
              else
                begin
                  for i:=1 to 4  do
                    begin
                      if not Mas.FieldByName('ZLNO').isnull then
                        begin
                          Mas.Edit;
                          Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('ZLBH').Value;
                          IF PurSample.CheckBox1.Checked=true then
                             Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value;
                          Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                          IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                              Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                        end
                        else
                          begin
                            Mas.Edit;
                            Mas.FieldByName('ZLNO').asstring:=Det.fieldbyname('ZLBH').Value;
                            IF PurSample.CheckBox1.Checked=true then
                               Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value;
                            Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                            IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                                Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                          end;
                      Det.Next;
                    end;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'......';
                  Det.Last;

                  {for i:=1 to 2   do
                    begin
                      Det.Prior;
                    end;
                  while not Det.Eof do
                    begin}
                      Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+Det.fieldbyname('ZLBH').Value+'('+Det.fieldbyname('Qty').asstring;
                      if not Det.fieldbyname('Article').isnull then
                        begin
                          Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+')';
                          IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                             Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                        end;
                     { Det.Next;
                    end; }
                end;
          end;
        Mas.Next;
      end;
  end
  else
    begin
      while not Mas.Eof do
        begin
          if not Mas.fieldbyname('MEMO').Isnull then
            begin
              Mas.Edit;
              Mas.FieldByName('YWPM').asstring :=Mas.FieldByName('YWPM').value+' // '+Mas.fieldbyname('MEMO').value;
            end;
          Det.First;
          while not Det.Eof do
            begin
              if not Mas.FieldByName('ZLNO').isnull then
                begin
                  Mas.Edit;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' '+Det.fieldbyname('ZLBH').Value;
                  IF PurSample.CheckBox1.Checked=true then
                     Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                  IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                     Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                end
                else
                  begin
                    Mas.Edit;
                    Mas.FieldByName('ZLNO').asstring:=Det.fieldbyname('ZLBH').Value;
                    IF PurSample.CheckBox1.Checked=true then
                       Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value;
                    Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                    IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                        Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                  end;
              Det.Next;
            end;
          Mas.Next;
        end;
    end;
//    if messagedlg('Print Note?',mtinformation,[mbYes,mbNo],0)=mrYes then
//    begin
     QRLabel6.Enabled:=true;
//     QRLabel7.Enabled:=true;
//    end;
end;

procedure TPurSample_Print_S_LHG.FormDestroy(Sender: TObject);
begin
PurSample_Print_S:=nil;
end;

end.
