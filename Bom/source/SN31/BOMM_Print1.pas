unit BOMM_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, iniFiles;

type
  TBOMM_Print = class(TForm)
    MemoTemp: TQuery;
    MemoSQL: TQuery;
    UpMemo: TUpdateSQL;
    MemoOth: TQuery;
    Titlememo: TQuery;
    QMatList: TQuery;
    QRCompositeReport1: TQRCompositeReport;
    TempSQL: TQuery;
    QuickRep3: TQuickRep;
    DetailBand2: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRDBText41: TQRDBText;
    QRDBText42: TQRDBText;
    QRDBText43: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText45: TQRDBText;
    QRBand1: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRSysData2: TQRSysData;
    PageN2: TQRLabel;
    QRDBText27: TQRDBText;
    QRLabel37: TQRLabel;
    QRDBText32: TQRDBText;
    QRLabel39: TQRLabel;
    QRDBText34: TQRDBText;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText37: TQRDBText;
    QRLabel45: TQRLabel;
    QRDBText38: TQRDBText;
    QDate3: TQRLabel;
    QRImage2: TQRImage;
    QRLabel2: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText28: TQRDBText;
    QRLabel33: TQRLabel;
    QRDBText36: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel32: TQRLabel;
    QRShape27: TQRShape;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRBand4: TQRBand;
    QRBand2: TQRBand;
    QuickRep4: TQuickRep;
    PageHeaderBand2: TQRBand;
    QRLabel19: TQRLabel;
    QRSysData3: TQRSysData;
    PageN3: TQRLabel;
    QRLabel21: TQRLabel;
    QDate4: TQRLabel;
    QRImage3: TQRImage;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    TitlememoARTICLE: TStringField;
    TitlememoXieXing: TStringField;
    TitlememoSheHao: TStringField;
    TitlememoXieXingSheHao: TStringField;
    TitlememoKFJC: TStringField;
    TitlememoYSSM: TStringField;
    TitlememoBZCC: TStringField;
    TitlememoXTMH: TStringField;
    TitlememoDDMH: TStringField;
    TitlememoMDMH: TStringField;
    TitlememoDAOMH: TStringField;
    TitlememoJiJie: TStringField;
    TitlememoIMGName: TStringField;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText14: TQRDBText;
    QMatListXH: TStringField;
    QMatListbwbh: TStringField;
    QMatListclbh: TStringField;
    QMatListusage: TFloatField;
    QMatListBWMCY: TStringField;
    QMatListLYCC: TStringField;
    QMatListCLMCY: TStringField;
    QMatListdwbh: TStringField;
    QMatListLOSS: TFloatField;
    QMatListCQDH: TStringField;
    QMatListJGYWSM: TStringField;
    QMatListzsywjc: TStringField;
    QMatListCCQQ: TStringField;
    QMatListCCQZ: TStringField;
    QRShape3: TQRShape;
    QRLabel15: TQRLabel;
    QRShape2: TQRShape;
    QRDBText15: TQRDBText;
    QRBand3: TQRBand;
    QMemo: TQRDBText;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel22: TQRLabel;
    QRBand5: TQRBand;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure QRCompositeReport1Finished(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TitlememoAfterOpen(DataSet: TDataSet);
    procedure MemoTempAfterOpen(DataSet: TDataSet);
  private
    ComName:String;
    ComFullName:String;
    { Private declarations }
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  BOMM_Print: TBOMM_Print;

implementation

{$R *.dfm}
procedure TBOMM_Print.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComFullName:='VINH LONG FOOTWEAR CO., LTD';

  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComFullName:=MyIni.ReadString('ERP','ComFullName','');
    finally
      MyIni.Free;
    end;
  end;
end;
procedure TBOMM_Print.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure TBOMM_Print.QRCompositeReport1AddReports(Sender: TObject);
begin
  with QRCompositeReport1 do
  begin
    reports.Add(QuickRep3);
    reports.Add(QuickRep4);
  end;
end;

procedure TBOMM_Print.QRCompositeReport1Finished(Sender: TObject);
begin
   BOMM_Print.QRLabel23.Caption:=ComName;
   BOMM_Print.QRLabel3.Caption:=ComName;
end;

procedure TBOMM_Print.FormCreate(Sender: TObject);
begin
  ReadIni();
end;

procedure TBOMM_Print.TitlememoAfterOpen(DataSet: TDataSet);
begin
  //
  QDate3.caption:=formatdatetime('yyyy/MM/dd',date);
  QDate4.caption:=formatdatetime('yyyy/MM/dd',date);
  QMatList.Active:=true; //材料清單
  //
  MemoTemp.active:=true;//備註清單
end;

procedure TBOMM_Print.MemoTempAfterOpen(DataSet: TDataSet);
var a,b,c:string;
    i,j:integer;
begin
  //備註說明
  MemoSQL.requestlive:=true;
  MemoSQL.cachedupdates:=true;
  MemoSQL.active:=true;
  i:=0;
  j:=0;
  //加注鞋型說明檔
  with MemoOth do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select LineNum,Remark from  XXZLS2 ');
    sql.add('where XieXing=:XieXing and SheHao=:SheHao and ZYLB=''E'' ');
    sql.add('order by LineNum');
    active:=true;
    first;
    if Memooth.recordcount>0 then
    begin
        with MemoSQL do
        begin
            insert;
            b:=inttostr(i+1) ;
            if length(b)<2 then
            begin
                b:='0'+b;
            end;
            FieldByName('RecN').asstring:=b;
            FieldByName('YWPM').AsString:='------------------------------------------------------------------------------------------------------------------------------';
            insert;
            b:=inttostr(i+2) ;
            if length(b)<2 then
            begin
                b:='0'+b;
            end;
            FieldByName('RecN').asstring:=b;
            FieldByName('YWPM').AsString:='Article Memo:';
        end;
        for j:=1 to recordcount do
        begin
            b:=inttostr(i+j+1) ;
            if length(b)<2 then
            begin
                b:='0'+b;
            end;
            MemoSQL.Insert;
            MemoSQL.FieldByName('RecN').asstring:=b;
            MemoSQL.FieldByName('YWPM').asstring:=fieldbyname('Remark').asstring;
            Next;
        end;
        i:=i+j+2;
      end;
  end;
  //加注材料說明檔
  with MemoOth do
  begin
    active:=false;
    sql.Clear;
    sql.Add('select CLBZZL.CLDH,CLBZZL.XH,CLBZZL.BZ from CLBZZL  ');
    sql.add('where exists(select  XXZLS.CLBH from XXZLS where  XXZLS.CLBH=CLBZZL.CLDH and XieXing=:XieXing and SheHao=:SheHao ) ');
    sql.add('      and ZYBB=''E'' ');
    sql.add('order by CLBZZL.CLDH,CLBZZL.XH');
    active:=true;
    first;
    if Memooth.recordcount>0 then
      begin
        with MemoSQL do
          begin
            insert;
            b:=inttostr(i+1) ;
            if length(b)<2 then
            begin
                b:='0'+b;
            end;
            FieldByName('RecN').asstring:=b;
            FieldByName('YWPM').AsString:='--------------------------------------------------------------------------------------------------------------------------------';
            insert;
            b:=inttostr(i+2) ;
            if length(b)<2 then
              begin
                b:='0'+b;
              end;
            FieldByName('RecN').asstring:=b;
            FieldByName('YWPM').AsString:='MATERIAL MEMO:';
        end;
        c:='';
        for j:=1 to recordcount do
          begin
            b:=inttostr(i+j+1) ;
            if length(b)<2 then
              begin
                b:='0'+b;
              end;
            if  c= fieldbyname('CLDH').asstring then
              begin
                a:='                    ';
              end
              else
                begin
                  a:=fieldbyname('CLDH').asstring;
                end;
             MemoSQL.Insert;
             MemoSQL.FieldByName('RecN').asstring:=b;
             MemoSQL.FieldByName('YWPM').asstring:=a+'  '+fieldbyname('BZ').asstring;
             next;
             c:=fieldbyname('CLDH').asstring;
          end;
        i:=i+j+2;
      end;
   end;
  //加注子母材料說明
  MemoTemp.first;
  with MemoSQL do
  begin
    insert;
    b:=inttostr(i+1) ;
      if length(b)<2 then
        begin
          b:='0'+b;
        end;
    FieldByName('RecN').asstring:=b;
    FieldByName('YWPM').AsString:='----------------------------------------------------------------------------------------------------------------------------------------';
    insert;
    b:=inttostr(i+2) ;
      if length(b)<2 then
        begin
          b:='0'+b;
        end;
    FieldByName('RecN').asstring:=b;
    FieldByName('YWPM').AsString:='COMPLEX:';
    insert ; 
    b:=inttostr(i+3) ;
        if length(b)<2 then
          begin
            b:='0'+b;
          end;
    FieldByName('RecN').asstring:=b;
    FieldByName('YWPM').AsString:='MOTHER NO    SON NO        USAGE  UNIT      DESCRIPTION';

    insert;
    b:=inttostr(i+4) ;
      if length(b)<2 then
        begin
          b:='0'+b;
        end;
    FieldByName('RecN').asstring:=b;
    FieldByName('YWPM').AsString:='------------------------------------------------------------------------------------------------------------------------------------------';
  end;
  i:=i+4;

  c:='';
  while not MemoTemp.eof do
  begin
    MemoSQL.insert ;
    if  c= MemoTemp.fieldbyname('MJBH').asstring then
      begin
        a:='                    ';
      end
        else
          begin
            a:=MemoTemp.fieldbyname('MJBH').asstring;
          end;
    b:=inttostr(i) ;
    if length(b)<2 then
      begin
        b:='0'+b;
      end;
    MemoSQL.FieldByName('RecN').asstring:=b;
    MemoSQL.FieldByName('YWPM').AsString:=a+'   '+MemoTemp.fieldbyname('CLBH').asstring+'   '
                                          +MemoTemp.fieldbyname('SYL').asstring
                                          +'  '+MemoTemp.fieldbyname('DWBH').asstring+'  '+
                                            MemoTemp.fieldbyname('YWPM').asstring;
    i:=i+1;
    c:= MemoTemp.fieldbyname('MJBH').asstring  ;
    MemoTemp.next;
  end;

end;

end.
