unit packingPrint_P1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls, QRPDFFilt;

type
  TpackingPrint_P = class(TForm)
    PACKINGDET: TQuery;
    DS2: TDataSource;
    QuickRep3: TQuickRep;
    DetailBand1: TQRBand;
    PackingMemo: TQuery;
    QRDBText8: TQRDBText;
    PackingMemoDDBH: TStringField;
    PackingMemozylb: TStringField;
    PackingMemoxh: TStringField;
    PackingMemoSEQ: TStringField;
    PackingMemobz: TStringField;
    PackingMemoUSERID: TStringField;
    PackingMemoUSERDATE: TDateTimeField;
    PackingMemoYN: TStringField;
    QRCompositeReport1: TQRCompositeReport;
    QuickRep1: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel8: TQRLabel;
    Q1: TQRLabel;
    QRShape6: TQRShape;
    Q2: TQRLabel;
    QRShape7: TQRShape;
    Q3: TQRLabel;
    QRShape18: TQRShape;
    Q4: TQRLabel;
    QRShape19: TQRShape;
    Q5: TQRLabel;
    QRShape20: TQRShape;
    Q6: TQRLabel;
    QRShape21: TQRShape;
    Q7: TQRLabel;
    QRShape22: TQRShape;
    Q8: TQRLabel;
    QRShape23: TQRShape;
    Q9: TQRLabel;
    QRShape24: TQRShape;
    Q10: TQRLabel;
    QRShape25: TQRShape;
    Q11: TQRLabel;
    QRShape26: TQRShape;
    Q12: TQRLabel;
    QRShape27: TQRShape;
    Q13: TQRLabel;
    QRShape28: TQRShape;
    Q14: TQRLabel;
    QRShape29: TQRShape;
    Q15: TQRLabel;
    QRShape30: TQRShape;
    Q16: TQRLabel;
    QRShape31: TQRShape;
    Q17: TQRLabel;
    QRShape32: TQRShape;
    Q18: TQRLabel;
    QRShape33: TQRShape;
    Q19: TQRLabel;
    QRShape34: TQRShape;
    Q20: TQRLabel;
    QRShape35: TQRShape;
    Q21: TQRLabel;
    QRShape36: TQRShape;
    Q22: TQRLabel;
    DetailBand2: TQRBand;
    QRDBText6: TQRDBText;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    D1: TQRDBText;
    D2: TQRDBText;
    D3: TQRDBText;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    D4: TQRDBText;
    D5: TQRDBText;
    D6: TQRDBText;
    D7: TQRDBText;
    D8: TQRDBText;
    D9: TQRDBText;
    D10: TQRDBText;
    D11: TQRDBText;
    D12: TQRDBText;
    D13: TQRDBText;
    D14: TQRDBText;
    D15: TQRDBText;
    D16: TQRDBText;
    D17: TQRDBText;
    D18: TQRDBText;
    D19: TQRDBText;
    D20: TQRDBText;
    D21: TQRDBText;
    D22: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel5: TQRLabel;
    QTemp: TQuery;
    QRLabel1: TQRLabel;
    QRShape8: TQRShape;
    QRLabel2: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape11: TQRShape;
    QRShape13: TQRShape;
    QRDBText3: TQRDBText;
    QRSysData1: TQRSysData;
    PAGEN: TQRLabel;
    QRBand1: TQRBand;
    QRLabel37: TQRLabel;
    QRSysData3: TQRSysData;
    PAGEN2: TQRLabel;
    TitleBand1: TQRBand;
    QRLabel3: TQRLabel;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    QRDBText7: TQRDBText;
    QRBand3: TQRBand;
    QRLabel9: TQRLabel;
    QRSysData2: TQRSysData;
    PAGEN3: TQRLabel;
    QRBand4: TQRBand;
    QRLabel12: TQRLabel;
    DDMT: TQuery;
    DDMTDDBH: TStringField;
    DDMTTYP: TStringField;
    DDMTXH: TStringField;
    DDMTSEQ: TStringField;
    DDMTMARK: TStringField;
    DDMTUSERID: TStringField;
    DDMTUSERDATE: TDateTimeField;
    DDMTYN: TStringField;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    XXZLS2: TQuery;
    XXZLS2XieXing: TStringField;
    XXZLS2SheHao: TStringField;
    XXZLS2zylb: TStringField;
    XXZLS2LineNum: TStringField;
    XXZLS2SEQ: TStringField;
    XXZLS2Remark: TStringField;
    XXZLS2NoteRQ: TDateTimeField;
    XXZLS2UserSign: TStringField;
    XXZLS2YN: TStringField;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText17: TQRDBText;
    QRSysData4: TQRSysData;
    QRShape60: TQRShape;
    QRLabel18: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel21: TQRLabel;
    QRShape14: TQRShape;
    QRLabel22: TQRLabel;
    QRDBText21: TQRDBText;
    QRShape17: TQRShape;
    QRDBText22: TQRDBText;
    QRShape58: TQRShape;
    QRShape16: TQRShape;
    QRPDFFilter1: TQRPDFFilter;
    QRShape12: TQRShape;
    QRShape15: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText23: TQRDBText;
    IMGName: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  packingPrint_P: TpackingPrint_P;   
  i,j:integer;

implementation

uses PackingPrint1;

{$R *.dfm}

procedure TpackingPrint_P.FormCreate(Sender: TObject);
begin 
if PackingPrint.DDZL.recordcount>0 then
  begin
    with Qtemp do
      begin
        Active:=false;
        sql.Clear;
        sql.add('select distinct DDCC ');
        sql.add('from DDPACKS');
        sql.add('where DDBH='+''''+PackingPrint.DDZL.fieldbyname('YWDD').value+'''');
        sql.add('and Qty<>0');
        sql.add('order by DDCC');
        Active:=true;
        j:=recordcount;
      end;
    with PACKINGDET do
      begin
        active:=false;
        sql.Clear;
        sql.add('select DDBH,XH,C_Qty,NO_S,NO_E,MEMO,(case when NO_S is null then null else sum(Qty) end ) as Sum,');
        sql.add('(case when NO_S is null then sum(Qty) else sum(Qty*C_Qty) end ) as Total');
        while not Qtemp.Eof do
          begin
            sql.add(',max(case when DDCC='+''''+Qtemp.fieldbyname('DDCC').asstring+'''');
            sql.add(' then Qty end ) as '+''''+Qtemp.fieldbyname('DDCC').asstring+'''');
            Qtemp.Next;
          end;
        sql.add('from (select DDBH,XH,NO_S,NO_E,S_Qty,C_Qty,DDCC,Qty,MEMO from DDPACKS ');
        sql.add('      where DDBH='+''''+PackingPrint.DDZL.fieldbyname('YWDD').value+'''');
        sql.add('      union ');
        sql.add('      select DDZLS.DDBH, '+''''+'Order'+''''+' as XH,null as NO_S,null as NO_E,null as S_Qty,');
        sql.add('             DDPACKS.C_Qty,DDZLS.CC as DDCC,DDZLS.Quantity as Qty, null as MEMO ');
        sql.add('      from DDZLS ');
        sql.add('      left join (select DDBH,sum( C_Qty) as C_Qty ');
        sql.add('                 from( select  distinct DDBH,XH,C_Qty from DDPACKS) DDPACKS ');
        sql.add('                 group by DDBH )DDPACKS on DDPACKS.DDBH=DDZLS.DDBH ');
        sql.add('      where DDZLS.Quantity<>0 and  DDZLS.DDBH='+''''+PackingPrint.DDZL.fieldbyname('YWDD').value+'''');
        sql.add('      ) DDPACKS');
        sql.add('group by  DDBH,XH,C_Qty,NO_S,NO_E,MEMO');
        sql.add('order by  DDBH,XH ');
        active:=true;
      end;
  end;

with PACKINGDET do
  begin
    if  Fieldcount>8 then
      begin
        Q1.Caption:=Fields[8].fieldname;
        D1.datafield:=Fields[8].fieldname;
      end;  
    if  Fieldcount>9 then
      begin
        Q2.Caption:=Fields[9].fieldname;
        D2.datafield:=Fields[9].fieldname;
      end;
    if  Fieldcount>10 then
      begin
        Q3.Caption:=Fields[10].fieldname;
        D3.datafield:=Fields[10].fieldname;
      end;
    if  Fieldcount>11 then
      begin
        Q4.Caption:=Fields[11].fieldname;
        D4.datafield:=Fields[11].fieldname;
      end;
    if  Fieldcount>12 then
      begin
        Q5.Caption:=Fields[12].fieldname;
        D5.datafield:=Fields[12].fieldname;
      end;
    if  Fieldcount>13 then
      begin
        Q6.Caption:=Fields[13].fieldname;
        D6.datafield:=Fields[13].fieldname;
      end;
    if  Fieldcount>14 then
      begin
        Q7.Caption:=Fields[14].fieldname;
        D7.datafield:=Fields[14].fieldname;
      end;
    if  Fieldcount>15 then
      begin
        Q8.Caption:=Fields[15].fieldname;
        D8.datafield:=Fields[15].fieldname;
      end;
    if  Fieldcount>16 then
      begin
        Q9.Caption:=Fields[16].fieldname;
        D9.datafield:=Fields[16].fieldname;
      end;
    if  Fieldcount>17 then
      begin
        Q10.Caption:=Fields[17].fieldname;
        D10.datafield:=Fields[17].fieldname;
      end;
    if  Fieldcount>18 then
      begin
        Q11.Caption:=Fields[18].fieldname;
        D11.datafield:=Fields[18].fieldname;
      end;
    if  Fieldcount>19 then
      begin
        Q12.Caption:=Fields[19].fieldname;
        D12.datafield:=Fields[19].fieldname;
      end;
    if  Fieldcount>20 then
      begin
        Q13.Caption:=Fields[20].fieldname;
        D13.datafield:=Fields[20].fieldname;
      end;
    if  Fieldcount>21 then
      begin
        Q14.Caption:=Fields[21].fieldname;
        D14.datafield:=Fields[21].fieldname;
      end;
    if  Fieldcount>22 then
      begin
        Q15.Caption:=Fields[22].fieldname;
        D15.datafield:=Fields[22].fieldname;
      end;
    if  Fieldcount>23 then
      begin
        Q16.Caption:=Fields[23].fieldname;
        D16.datafield:=Fields[23].fieldname;
      end;
    if  Fieldcount>24 then
      begin
        Q17.Caption:=Fields[24].fieldname;
        D17.datafield:=Fields[24].fieldname;
      end;
    if  Fieldcount>25 then
      begin
        Q18.Caption:=Fields[25].fieldname;
        D18.datafield:=Fields[25].fieldname;
      end;
    if  Fieldcount>26 then
      begin
        Q19.Caption:=Fields[26].fieldname;
        D19.datafield:=Fields[26].fieldname;
      end;
    if  Fieldcount>27 then
      begin
        Q20.Caption:=Fields[27].fieldname;
        D20.datafield:=Fields[27].fieldname;
      end;
    if  Fieldcount>28 then
      begin
        Q21.Caption:=Fields[28].fieldname;
        D21.datafield:=Fields[28].fieldname;
      end;
    if  Fieldcount>29 then
      begin
        Q22.Caption:=Fields[29].fieldname;
        D22.datafield:=Fields[29].fieldname;
      end;
    {if  Fieldcount>27 then
      begin
        Q23.Caption:=Fields[27].fieldname;
        D23.datafield:=Fields[27].fieldname;
      end;
    if  Fieldcount>28 then
      begin
        Q24.Caption:=Fields[28].fieldname;
        D24.datafield:=Fields[28].fieldname;
      end;  
    if  Fieldcount>29 then
      begin
        Q25.Caption:=Fields[29].fieldname;
        D25.datafield:=Fields[29].fieldname;
      end;
    if  Fieldcount>30 then
      begin
        Q26.Caption:=Fields[30].fieldname;
        D26.datafield:=Fields[30].fieldname;
      end;}
  end;
PackingMemo.active:=true;
DDMT.Active:=true;
//QS1.Left:=ColumnHeaderBand2.Width-4;
end;

procedure TpackingPrint_P.QRCompositeReport1AddReports(Sender: TObject);
begin

with QRCompositeReport1 do
  begin
    reports.Add(QuickRep1); 
    reports.Add(QuickRep3);
    reports.Add(QuickRep2);
  end;
end;

procedure TpackingPrint_P.FormDestroy(Sender: TObject);
begin
packingPrint_P:=nil;
end;

procedure TpackingPrint_P.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=Cafree;
end;

end.
