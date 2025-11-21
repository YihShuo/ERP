unit PurSize_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, Grids, DBGrids, QRCtrls,
  QRPDFFilt, StdCtrls, IniFiles;

type
  TPurSize_Print = class(TForm)
    QuickRep1: TQuickRep;
    TempSize: TQuery;
    MasSize: TQuery;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    CGZLS: TQuery;
    DataSource2: TDataSource;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    DataSource1: TDataSource;
    ColumnHeaderBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
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
    R19: TQRDBText;
    R21: TQRDBText;
    R20: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    Q28: TQRLabel;
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
    Q19: TQRLabel;
    Q20: TQRLabel;
    Q21: TQRLabel;
    QRShape1: TQRShape;
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
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRShape24: TQRShape;
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
    QRShape47: TQRShape;
    QRShape49: TQRShape;
    QRDBText7: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    R27: TQRDBText;
    Q27: TQRLabel;
    CGZLSCGNO: TStringField;
    CGZLSQty: TCurrencyField;
    CGZLSCLBH: TStringField;
    CGZLSYWPM: TStringField;
    CGZLSDWBH: TStringField;
    CGZLSArticle: TStringField;
    CGZLSXieMing: TStringField;
    QRShape48: TQRShape;
    QRShape51: TQRShape;
    Q22: TQRLabel;
    R22: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRShape52: TQRShape;
    QRDBText5: TQRDBText;
    QRShape50: TQRShape;
    QRLabel1: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    L1: TQRLabel;
    L2: TQRLabel;
    L3: TQRLabel;
    L4: TQRLabel;
    L5: TQRLabel;
    L6: TQRLabel;
    L7: TQRLabel;
    L8: TQRLabel;
    QRDBText14: TQRDBText;
    R23: TQRDBText;
    QRShape53: TQRShape;
    R24: TQRDBText;
    QRShape54: TQRShape;
    R25: TQRDBText;
    QRShape55: TQRShape;
    R26: TQRDBText;
    QRShape56: TQRShape;
    Q23: TQRLabel;
    QRShape57: TQRShape;
    Q24: TQRLabel;
    QRShape58: TQRShape;
    Q25: TQRLabel;
    QRShape59: TQRShape;
    Q26: TQRLabel;
    QRShape60: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
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
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    SeasonQ: TQuery;
    SeasonQGSBH: TStringField;
    L9: TQRLabel;
    SeasonQBUYNO: TStringField;
    L10: TQRLabel;
    CGZLSZWPM: TStringField;
    QRDBText16: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    QRShape61: TQRShape;
    QRShape63: TQRShape;
    QRShape62: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QTemp: TQuery;
    SumR1: TQRDBText;
    TempSize1: TQuery;
    SumR2: TQRDBText;
    SumR3: TQRDBText;
    SumR4: TQRDBText;
    SumR5: TQRDBText;
    SumR6: TQRDBText;
    SumR7: TQRDBText;
    SumR8: TQRDBText;
    SumR9: TQRDBText;
    SumR10: TQRDBText;
    SumR11: TQRDBText;
    SumR12: TQRDBText;
    SumR13: TQRDBText;
    SumR14: TQRDBText;
    SumR15: TQRDBText;
    SumR16: TQRDBText;
    SumR17: TQRDBText;
    SumR18: TQRDBText;
    SumR19: TQRDBText;
    SumR20: TQRDBText;
    SumR21: TQRDBText;
    SumR22: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel29: TQRLabel;
    SumR23: TQRDBText;
    SumR24: TQRDBText;
    SumR25: TQRDBText;
    SumR26: TQRDBText;
    TotalSum: TQRDBText;
    QRDBText15: TQRDBText;
    L20: TQRLabel;
    Mas: TQuery;
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
    MasZLNO: TMemoField;
    MasZWPM: TStringField;
    NoteInfo: TQRLabel;
    UpdateSQL1: TUpdateSQL;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ComName:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  PurSize_Print: TPurSize_Print;

implementation

uses PurSize1,FunUnit, main1;

{$R *.dfm}

procedure TPurSize_Print.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TPurSize_Print.FormCreate(Sender: TObject);
var IsMark_Black: boolean;
begin
  Mas.Active:=true;
  SeasonQ.Active:=true;
  IsMark_Black:=false;
  Mas.First;
  while not Mas.Eof   do
  begin
    if pos('BLACK',UpperCase(Mas.FieldByName('YWPM').asstring))<>0 then
      IsMark_Black:=true;
    Mas.Next;
  end;
  if (main.edit2.Text = 'VA12') and (IsMark_Black=true) then
    NoteInfo.Caption:=NoteInfo.Caption+'/Black = 117-15-00';
  if NoteInfo.Caption<>'' then NoteInfo.Enabled:=true;
  if messagedlg('Just for Print not for Mail?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    L1.Caption:='';
    L2.Caption:='';
    L3.Caption:='';
    L4.Caption:='';
    L5.Caption:='';
    L6.Caption:='';
    L7.Caption:='';
    L8.Caption:='';
  end else
  begin
    ReadIni();
    L1.Caption:=ComName;
  end;
  CGZLS.Active:=true;
  TempSize.Active:=true;
  if TempSize.recordcount>24 then
  begin
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
    showmessage('Siz too much. can not print.');
  end;
  with MasSize do
  begin
    active:=false;
    sql.Clear;
    sql.add('if   object_id('+''''+'tempdb..#CGQty'+''''+')   is  not null  ');
    sql.add('begin  drop table #CGQty end');
    sql.add('if   object_id('+''''+'tempdb..#TotQty'+''''+')   is  not null  ');
    sql.add('begin  drop table #TotQty end');

    sql.add('select CLBH,ZLBH,max(YQDate) as YQDate,convert(decimal(18,1),sum(Qty)) as TotQty ');
    sql.add('into #TotQty from CGZLSS where CGNO=:CGNO');
    sql.add('group by CLBH,ZLBH');

    sql.add('select CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC,DDZL.Shipdate,');
    sql.add('convert(decimal(18,1),CGZLSS.Qty) as Qty ');
    sql.add(',DDZL.Article,XXZL.XieMing,XXZL.YSSM,lbzls.ywsm');
    sql.add('into #CGQty');
    sql.add(' from CGZLSS ');
    sql.add('left join DDZL on DDZL.DDBH=CGZLSS.ZLBH') ;
    sql.add('left join XXZL on DDZL.XieXing=XXZL.XieXing and DDZL.SheHao=XXZL.SheHao ');
    sql.Add('left join lbzls on lbzls.lbdh=XXZL.xiegn and lbzls.lb=''03''');
    sql.add('where CGZLSS.CGNO='+''''+PurSize.CGMas.fieldbyname('CGNO').Value+'''');
    sql.add('order by CGZLSS.CLBH,CGZLSS.ZLBH,CGZLSS.XXCC');

    sql.add('select #CGQty.CLBH,#CGQty.ZLBH,substring(convert(nvarchar,#TotQty.YQDate,111),6,10) as YQDate,');
    sql.add('#TotQty.TotQty,substring(convert(nvarchar,#CGQty.ShipDate,111),6,10) as ShipDate,#CGQty.Article,#CGQty.XieMing,#CGQty.YSSM,#CGQty.ywsm');
    while not TempSize.Eof do
    begin
      sql.add(',max(case when #CGQty.XXCC='+''''+tempSize.fieldbyname('XXCC').asstring+'''');
      sql.add(' then #CGQty.Qty  end ) as '+''''+tempSize.fieldbyname('XXCC').asstring+'''');
      TempSize.Next;
    end;
    sql.add('from #CGQty') ;
    sql.add('left join  #TotQty on #CGQty.CLBH=#TotQty.CLBH and #CGQty.ZLBH=#TotQty.ZLBH ');
    sql.add('where #CGQty.CLBH=:CLBH ');
    sql.add('group by #CGQty.CLBH,#CGQty.ZLBH,#TotQty.YQDate,#TotQty.TotQty,#CGQty.ShipDate,#CGQty.Article,#CGQty.XieMing,#CGQty.YSSM,#CGQty.ywsm');
    sql.add('order by #CGQty.CLBH,#CGQty.ZLBH');
    //funcObj.WriteErrorLog(sql.Text);
    active:=true;
    //fields.fields[2].displayformat:='mm/dd'
  end;


  with MasSize do
  begin
    if  Fieldcount>9 then
      begin
        Q1.caption:=Fields[9].fieldname;
        R1.datafield:=Fields[9].fieldname;
      end;
    if  Fieldcount>10 then
      begin
        Q2.caption:=Fields[10].fieldname;
        R2.datafield:=Fields[10].fieldname;
      end;
    if  Fieldcount>11 then
      begin
        Q3.caption:=Fields[11].fieldname;
        R3.datafield:=Fields[11].fieldname;
      end;
    if  Fieldcount>12 then
      begin
        Q4.caption:=Fields[12].fieldname;
        R4.datafield:=Fields[12].fieldname;
      end;
    if  Fieldcount>13 then
      begin
        Q5.caption:=Fields[13].fieldname;
        R5.datafield:=Fields[13].fieldname;
      end;
    if  Fieldcount>14 then
      begin
        Q6.caption:=Fields[14].fieldname;
        R6.datafield:=Fields[14].fieldname;
      end;
    if  Fieldcount>15 then
      begin
        Q7.caption:=Fields[15].fieldname;
        R7.datafield:=Fields[15].fieldname;
      end;
    if  Fieldcount>16 then
      begin
        Q8.caption:=Fields[16].fieldname;
        R8.datafield:=Fields[16].fieldname;
      end;
    if  Fieldcount>17 then
      begin
        Q9.caption:=Fields[17].fieldname;
        R9.datafield:=Fields[17].fieldname;
      end;
    if  Fieldcount>18 then
      begin
        Q10.caption:=Fields[18].fieldname;
        R10.datafield:=Fields[18].fieldname;
      end;
    if  Fieldcount>19 then
      begin
        Q11.caption:=Fields[19].fieldname;
        R11.datafield:=Fields[19].fieldname;
      end;
    if  Fieldcount>20 then
      begin
        Q12.caption:=Fields[20].fieldname;
        R12.datafield:=Fields[20].fieldname;
      end;
    if  Fieldcount>21 then
      begin
        Q13.caption:=Fields[21].fieldname;
        R13.datafield:=Fields[21].fieldname;
      end;
    if  Fieldcount>22 then
      begin
        Q14.caption:=Fields[22].fieldname;
        R14.datafield:=Fields[22].fieldname;
      end;
    if  Fieldcount>23 then
      begin
        Q15.caption:=Fields[23].fieldname;
        R15.datafield:=Fields[23].fieldname;
      end;
    if  Fieldcount>24 then
      begin
        Q16.caption:=Fields[24].fieldname;
        R16.datafield:=Fields[24].fieldname;
      end;
    if  Fieldcount>25 then
      begin
        Q17.caption:=Fields[25].fieldname;
        R17.datafield:=Fields[25].fieldname;
      end;
    if  Fieldcount>26 then
      begin
        Q18.caption:=Fields[26].fieldname;
        R18.datafield:=Fields[26].fieldname;
      end;
    if  Fieldcount>27 then
      begin
        Q19.caption:=Fields[27].fieldname;
        R19.datafield:=Fields[27].fieldname;
      end;
    if  Fieldcount>28 then
      begin
        Q20.caption:=Fields[28].fieldname;
        R20.datafield:=Fields[28].fieldname;
      end;
    if  Fieldcount>29 then
      begin
        Q21.caption:=Fields[29].fieldname;
        R21.datafield:=Fields[29].fieldname;
      end;
    if  Fieldcount>30 then
      begin
        Q22.caption:=Fields[30].fieldname;
        R22.datafield:=Fields[30].fieldname;
      end;
    if  Fieldcount>31 then
      begin
        Q23.caption:=Fields[31].fieldname;
        R23.datafield:=Fields[31].fieldname;
      end;
    if  Fieldcount>32 then
      begin
        Q24.caption:=Fields[32].fieldname;
        R24.datafield:=Fields[32].fieldname;
      end;
    if  Fieldcount>33 then
      begin
        Q25.caption:=Fields[33].fieldname;
        R25.datafield:=Fields[33].fieldname;
      end;
    if  Fieldcount>34 then
      begin
        Q26.caption:=Fields[34].fieldname;
        R26.datafield:=Fields[34].fieldname;
      end;
  end;
  //
  TempSize1.Active:=true;
   with QTemp do
   begin
     active:=false;
    sql.Clear;
    sql.add('if   object_id('+''''+'tempdb..#TotQty1'+''''+')   is  not null  ');
    sql.add('begin  drop table #TotQty1 end');

    sql.add('select * into #TotQty1  from ( ');
    sql.add('select CLBH,XXCC, convert(decimal(18,1),sum(Qty)) as TotQty1 ');
    sql.add('from CGZLSS where CGNO=:CGNO');
    sql.add('group by CLBH,XXCC');
    sql.add('Union all ');
    sql.add('select CLBH,''TotalSum'' as XXCC, convert(decimal(18,1),sum(Qty)) as TotQty1 ');
    sql.add('from CGZLSS where CGNO=:CGNO');
    sql.add('group by CLBH');
    sql.add(')  CGZLSS ');

    sql.add('select  #TotQty1.CLBH');
    sql.add(',max(case when #TotQty1.XXCC=''TotalSum'' ');
    sql.add(' then #TotQty1.TotQty1  end ) as ''TotalSum'' ');
    while not TempSize1.Eof do
      begin
        sql.add(',max(case when #TotQty1.XXCC='+''''+tempSize1.fieldbyname('XXCC').asstring+'''');
        sql.add(' then #TotQty1.TotQty1  end ) as '+''''+tempSize1.fieldbyname('XXCC').asstring+'''');
        TempSize1.Next;
      end;
    sql.add('from #TotQty1') ;
    sql.add('where #TotQty1.CLBH=:CLBH ');
    sql.add('group by #TotQty1.CLBH');
    sql.add('order by #TotQty1.CLBH');
    active:=true;
   end;

   with QTemp do
   begin
      if  Fieldcount>2 then
      begin
         SumR1.DataField:=Fields[2].fieldname;
      end;
      if  Fieldcount>3 then
      begin
         SumR2.DataField:=Fields[3].fieldname;
      end;
      if  Fieldcount>4 then
      begin
         SumR3.DataField:=Fields[4].fieldname;
      end;
      if  Fieldcount>5 then
      begin
         SumR4.DataField:=Fields[5].fieldname;
      end;
      if  Fieldcount>6 then
      begin
         SumR5.DataField:=Fields[6].fieldname;
      end;
      if  Fieldcount>7 then
      begin
         SumR6.DataField:=Fields[7].fieldname;
      end;
      if  Fieldcount>8 then
      begin
         SumR7.DataField:=Fields[8].fieldname;
      end;
      if  Fieldcount>9 then
      begin
         SumR8.DataField:=Fields[9].fieldname;
      end;
      if  Fieldcount>10 then
      begin
         SumR9.DataField:=Fields[10].fieldname;
      end;
      if  Fieldcount>11 then
      begin
         SumR10.DataField:=Fields[11].fieldname;
      end;
      if  Fieldcount>12 then
      begin
         SumR11.DataField:=Fields[12].fieldname;
      end;
      if  Fieldcount>13 then
      begin
         SumR12.DataField:=Fields[13].fieldname;
      end;
      if  Fieldcount>14 then
      begin
         SumR13.DataField:=Fields[14].fieldname;
      end;
      if  Fieldcount>15 then
      begin
         SumR14.DataField:=Fields[15].fieldname;
      end;
      if  Fieldcount>16 then
      begin
         SumR15.DataField:=Fields[16].fieldname;
      end;
      if  Fieldcount>17 then
      begin
         SumR16.DataField:=Fields[17].fieldname;
      end;
      if  Fieldcount>18 then
      begin
         SumR17.DataField:=Fields[18].fieldname;
      end;
      if  Fieldcount>19 then
      begin
         SumR18.DataField:=Fields[19].fieldname;
      end;
      if  Fieldcount>20 then
      begin
         SumR19.DataField:=Fields[20].fieldname;
      end;
      if  Fieldcount>21 then
      begin
         SumR20.DataField:=Fields[21].fieldname;
      end;
      if  Fieldcount>22 then
      begin
         SumR21.DataField:=Fields[22].fieldname;
      end;
      if  Fieldcount>23 then
      begin
         SumR22.DataField:=Fields[23].fieldname;
      end;
      if  Fieldcount>24 then
      begin
         SumR23.DataField:=Fields[24].fieldname;
      end;
      if  Fieldcount>25 then
      begin
         SumR24.DataField:=Fields[25].fieldname;
      end;
      if  Fieldcount>26 then
      begin
         SumR25.DataField:=Fields[26].fieldname;
      end;
      if  Fieldcount>27 then
      begin
         SumR26.DataField:=Fields[27].fieldname;
      end;
   end;
  //
end;

procedure TPurSize_Print.FormDestroy(Sender: TObject);
begin
PurSize_Print:=nil;
end;

procedure TPurSize_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

end.
