unit PurSample_Print_S1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, QRPDFFilt, StdCtrls, IniFiles;

type
  TPurSample_Print_S = class(TForm)
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
    MasCFMDate: TDateTimeField;
    MasUSERDate: TDateTimeField;
    MasUSERID: TStringField;
    MasYN: TStringField;
    MasYWPM: TStringField;
    MasDWBH: TStringField;
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
    L18: TQRLabel;
    L20: TQRLabel;
    L21: TQRLabel;
    L22: TQRLabel;
    L24: TQRLabel;
    L_Season: TQRLabel;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    L17: TQRLabel;
    L12: TQRLabel;
    L11: TQRLabel;
    L16: TQRLabel;
    L15: TQRLabel;
    L14: TQRLabel;
    MasMEMO_1: TStringField;
    QRDBText15: TQRDBText;
    MasREMARK: TStringField;
    QRLabel3: TQRLabel;
    Label_PS: TQRLabel;
    L25: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel9: TQRLabel;
    BWQY: TQuery;
    BWQYywsm: TStringField;
    MasPartAll: TStringField;
    QRDBText11: TQRDBText;
    MasZLNO: TMemoField;
    QRDBText7: TQRDBText;
    MasFDAll: TMemoField;
    L19: TQRLabel;
    QRDBText18: TQRDBText;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure ReadIni();
    Function GetConverse_ColorMemo(var Memo:String;YWPM:String):boolean;
  public
    { Public declarations }
  end;

var
  PurSample_Print_S: TPurSample_Print_S;

implementation

uses PurSample1, main1, FunUnit;

{$R *.dfm}

procedure TPurSample_Print_S.ReadIni();
var MyIni :Tinifile;
    AppDir, ComFullName, Address, TelNumber, FaxNumber:string;
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  ComFullName:='Vinh Long Footwear Co.LTD';
  Address:='Hoa Phu Industrial Zone, Vinh Long Province, Vietnam';
  TelNumber:='TEL:+84-703-962052';
  FaxNumber:='FAX:+84-703-96251';
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
      //
      Address:=MyIni.ReadString('ERP','Address','Hoa Phu Industrial Zone, Vinh Long Province, Vietnam');
      TelNumber:=MyIni.ReadString('ERP','TelNumber','TEL:+84-703-962052');
      FaxNumber:=MyIni.ReadString('ERP','FaxNumber','FAX:+84-703-96251');
      //
    finally
      MyIni.Free;
    end;
  end;
  //
  L1.Caption:=ComFullName;
  L11.Caption:=Address;
  L12.Caption:=TelNumber+' '+FaxNumber;
end;

Function TPurSample_Print_S.GetConverse_ColorMemo(var Memo:String;YWPM:String):boolean;
const Color_Name:array [0..16,0..2] of String=(
                 ('Converse Yellow','0100421','035-66-39'),
                 ('Vintage White','1200317','028-89-01'),
                 ('Converse Green','0906890','069-42-27'),
                 ('Light Field Surplus','0902773','047-53-05'),
                 ('Converse Utility','CONV-0067','049-38-07'),
                 ('Nomad Khaki','0701202','031-57-10'),
                 ('Pale Putty','1102437','014-77-01'),
                 ('Converse Navy','CONV-0033','121-26-10'),
                 ('Obsidian','45B','124-21-06'),
                 ('Converse Blue','0501109','121-27-30'),
                 ('Rapid Teal','4MS','095-51-27'),
                 ('Saddle','0401720','010-43-09'),
                 ('Deep Bordeaux','0306439','003-22-17'),
                 ('Converse Red','CONV-0034','009-39-35'),
                 ('Converse Orange','CONV-0066','020-53-38'),
                 ('Black','117-15-00','Black'),
                 ('White','129-96-00','White')
                );
var   i:integer;
      ColorStr:string;
begin
  for i:=0 to High(Color_Name) do
  begin
   if Pos(Uppercase(Color_Name[i][2]),UpperCase(YWPM))<>0 then
   begin
     ColorStr:='('+Color_Name[i][2]+'='+Color_Name[i][1]+')';
     if Pos(ColorStr,Memo)=0 then
     Memo:=Memo+ColorStr+#13#10;
   end;
  end;
  Result:=true;
end;


procedure TPurSample_Print_S.FormCreate(Sender: TObject);
var i,j:integer;
    PartALl,FD_ALL:string;
    //20151012 Converse 特定顏色指定
    isWhite,isBVWhite,isBlack,isNatural,isCharcoal:boolean;
    Converse_Memo:String;
begin
  ReadIni();
  Mas.Active:=true;
  Det.Active:=true;
  //20151012 增加顏色判斷
  while not Mas.Eof   do
  begin
   //Converse判斷材料有沒有WHITE字
   GetConverse_ColorMemo(Converse_Memo,Mas.FieldByName('YWPM').asstring);
   Mas.Next;
  end;
  //Converse 顏色備忘
  if ((main.Edit2.text='VA12') or (main.Edit2.text='CDC')) then
    if Converse_Memo<>'' then
     L20.Caption:='MatName'+trim(Converse_Memo); //有白色材料則欄位加上註解
  //
  Mas.First;
  if messagedlg('Just for Print not for Mail?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    L1.Caption:='';
    L2.Caption:='';
    L3.Caption:='';
    L6.Caption:='';
    L7.Caption:='';
    L11.Caption:='';
    L12.Caption:='';
    L14.Caption:='';
    L15.Caption:='';
    L16.Caption:='';
    L17.Caption:='';
    L18.Caption:='';
    L19.Caption:='';
    QRDBText9.Enabled:=false;
    PageHeaderBand1.Frame.DrawBottom:= true;
  end else
  begin
      PageHeaderBand1.Frame.DrawBottom:= true;
  end;
  if  PurSample.CGMas.FieldByName('MEMO').AsString =''  then
      Label_PS.Caption:='' ;
  //20150312使用部位
  BWQY.Active:=true;
  Det.First;
  if messagedlg('show 6 Article only or show All Article ?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
      while not Mas.Eof do
      begin
        //材料名稱+Memo
        if not Mas.fieldbyname('MEMO').Isnull then
        begin
            Mas.Edit;
            Mas.FieldByName('YWPM').asstring :=Mas.FieldByName('YWPM').value+'  //  '+Mas.fieldbyname('MEMO').value;
        end;
        if Det.recordcount>0 then
        begin
            //部位資訊
            BWQY.First;
            PartALl:='';
            for i:=0 to BWQY.RecordCount-1 do
            begin
              PartALl:=PartALl+BWQY.FieldByName('ywsm').AsString+',';
              BWQY.Next;
            end;
            if length(PartALl)>0 then PartALl:=Copy(PartALl,1,length(PartALl)-1);
            Mas.Edit;
            Mas.FieldByName('PartAll').asstring:=PartALl;
            //
            FD_ALL:='';
            if Det.recordcount<=6 then
            begin
                Det.First;
                while not Det.Eof do
                begin
                  //
                  FD_ALL:=FD_ALL+' '+Det.fieldbyname('FD').AsString;
                  if not Mas.FieldByName('ZLNO').isnull then
                  begin
                        Mas.Edit;
                        Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('Article').Value;
                        IF PurSample.CheckBox1.Checked=true then
                           Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value ;
                        Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                        IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                           Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' '
                        else
                           Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' ';
                  end else
                  begin
                          Mas.Edit;
                          Mas.FieldByName('ZLNO').asstring:=Det.fieldbyname('Article').Value;
                          IF PurSample.CheckBox1.Checked=true then
                             Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value;
                          Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                          IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                             Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                  end;
                  Det.Next;
                end;
            end else
            begin
                  for i:=1 to 4  do
                  begin
                      FD_ALL:=FD_ALL+' '+Det.fieldbyname('FD').AsString;
                      if not Mas.FieldByName('ZLNO').isnull then
                      begin
                          Mas.Edit;
                          Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('Article').Value;
                          IF PurSample.CheckBox1.Checked=true then
                             Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value;
                          Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                          IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                              Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                      end else
                      begin
                            Mas.Edit;
                            Mas.FieldByName('ZLNO').asstring:=Det.fieldbyname('Article').Value;
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
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+Det.fieldbyname('Article').Value+'('+Det.fieldbyname('Qty').asstring;
                  if not Det.fieldbyname('Article').isnull then
                  begin
                      Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+')';
                      IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                         Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                  end;

            end;
            //FDAll
            Mas.Edit;
            Mas.FieldByName('FDAll').asstring:=FD_ALL;
        end;
        Mas.Next;
      end;
  end else
  begin
      while not Mas.Eof do
      begin
          if not Mas.fieldbyname('MEMO').Isnull then
          begin
              Mas.Edit;
              Mas.FieldByName('YWPM').asstring :=Mas.FieldByName('YWPM').value+' // '+Mas.fieldbyname('MEMO').value;
          end;
          //部位資訊
          BWQY.First;
          PartALl:='';
          for i:=0 to BWQY.RecordCount-1 do
          begin
            PartALl:=PartALl+BWQY.FieldByName('ywsm').AsString+',';
            BWQY.Next;
          end;
          if length(PartALl)>0 then PartALl:=Copy(PartALl,1,length(PartALl)-1);
          Mas.Edit;
          Mas.FieldByName('PartAll').asstring:=PartALl;
          //制令明細
          FD_ALL:='';
          Det.First;
          while not Det.Eof do
          begin
              //20150622
              FD_ALL:=FD_ALL+' '+Det.fieldbyname('FD').AsString;
              if not Mas.FieldByName('ZLNO').isnull then
                begin
                  Mas.Edit;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+' '+Det.fieldbyname('Article').Value;
                  IF PurSample.CheckBox1.Checked=true then
                     Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value;
                  Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                  IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                     Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                end
                else
                  begin
                    Mas.Edit;
                    Mas.FieldByName('ZLNO').asstring:=Det.fieldbyname('Article').Value;
                    IF PurSample.CheckBox1.Checked=true then
                       Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'/'+Det.fieldbyname('XIEMING').Value;
                    Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'('+floattostr(Det.fieldbyname('Qty').Value)+')';
                    IF (Det.FieldByName('XXCC').asstring<>'N') AND (Det.FieldByName('XXCC').asstring<>'ZZZZZZ') AND (Det.FieldByName('XXCC').asstring<>'') THEN
                        Mas.FieldByName('ZLNO').asstring:=Mas.FieldByName('ZLNO').asstring+'Siz'+Det.fieldbyname('XXCC').Value+' ';
                  end;
              Det.Next;
          end;
          //FDAll
          Mas.Edit;
          Mas.FieldByName('FDAll').asstring:=FD_ALL;
          Mas.Next;
      end;
  end;


end;

procedure TPurSample_Print_S.FormDestroy(Sender: TObject);
begin
  PurSample_Print_S:=nil;
end;

end.
