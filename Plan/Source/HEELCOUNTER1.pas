unit HEELCOUNTER1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  THEELCOUNTER = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape5: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    LYWSM: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape8: TQRShape;
    LYWPM: TQRLabel;
    TitleBand1: TQRBand;
    QRShape9: TQRShape;
    QRLabel22: TQRLabel;
    Q1: TQRLabel;
    QRShape10: TQRShape;
    Q2: TQRLabel;
    QRShape11: TQRShape;
    Q3: TQRLabel;
    QRShape12: TQRShape;
    Q4: TQRLabel;
    QRShape13: TQRShape;
    Q5: TQRLabel;
    QRShape14: TQRShape;
    Q6: TQRLabel;
    QRShape15: TQRShape;
    Q7: TQRLabel;
    QRShape16: TQRShape;
    Q8: TQRLabel;
    QRShape17: TQRShape;
    Q9: TQRLabel;
    QRShape18: TQRShape;
    Q10: TQRLabel;
    QRShape19: TQRShape;
    Q11: TQRLabel;
    QRShape20: TQRShape;
    Q12: TQRLabel;
    QRShape21: TQRShape;
    Q13: TQRLabel;
    QRShape22: TQRShape;
    Q14: TQRLabel;
    QRShape23: TQRShape;
    Q15: TQRLabel;
    QRShape24: TQRShape;
    Q16: TQRLabel;
    QRShape25: TQRShape;
    Q17: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    Q22: TQRLabel;
    Q21: TQRLabel;
    Q20: TQRLabel;
    Q19: TQRLabel;
    Q18: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    Q23: TQRLabel;
    Q24: TQRLabel;
    QRLabel25: TQRLabel;
    R1: TQRDBText;
    QRShape44: TQRShape;
    R2: TQRDBText;
    R3: TQRDBText;
    QRShape42: TQRShape;
    R4: TQRDBText;
    R5: TQRDBText;
    QRShape40: TQRShape;
    R6: TQRDBText;
    QRShape39: TQRShape;
    R7: TQRDBText;
    R8: TQRDBText;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    R9: TQRDBText;
    QRShape36: TQRShape;
    QRShape33: TQRShape;
    R10: TQRDBText;
    R11: TQRDBText;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    R12: TQRDBText;
    QRShape45: TQRShape;
    R13: TQRDBText;
    QRShape46: TQRShape;
    R14: TQRDBText;
    QRShape47: TQRShape;
    R15: TQRDBText;
    QRShape48: TQRShape;
    R16: TQRDBText;
    QRShape49: TQRShape;
    R17: TQRDBText;
    QRShape50: TQRShape;
    R18: TQRDBText;
    QRShape52: TQRShape;
    R19: TQRDBText;
    QRShape53: TQRShape;
    R20: TQRDBText;
    QRShape54: TQRShape;
    R21: TQRDBText;
    QRShape55: TQRShape;
    R22: TQRDBText;
    QRShape56: TQRShape;
    R23: TQRDBText;
    R24: TQRDBText;
    QRShape57: TQRShape;
    QRDBText1: TQRDBText;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    LQty: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    ISOLAB: TQRLabel;
    QRShape43: TQRShape;
    QRLabel29: TQRLabel;
    QRShape41: TQRShape;
    QRShape51: TQRShape;
    Q25: TQRLabel;
    R25: TQRDBText;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HEELCOUNTER: THEELCOUNTER;

implementation

uses ProdSendR1, main1, ProdSendR_Print1;

{$R *.dfm}

procedure THEELCOUNTER.FormDestroy(Sender: TObject);
begin
ProdSendR_Print:=nil;
end;

procedure THEELCOUNTER.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action:=cafree;
end;

procedure THEELCOUNTER.FormCreate(Sender: TObject);
var Qty:integer;
YWPM,YWSM:string;
var
  i,j,x:integer;
begin

with ProdSendR.Qtemp2 do
begin
  active:=false;
  sql.Clear;
  sql.Add('select xxzls.CCQZ,xxzls.CCQQ,xxzls.CLBH,xxgj.GJLB,XXZLSVNS2.QBT from xxzls');
  sql.add('left join (select xxgjs.XieXing,xxgjs.GJLB from xxgjs');
  sql.add('           where xxgjs.XieXing = '''+ProdSendR.SMDDS.FieldByName('XieXing').value+'''');
  sql.Add('				          and xxgjs.GJLB = ''280''');
  sql.add('                 and xxgjs.XXCC <> xxgjs.GJCC');
  sql.add('		        group by xxgjs.XieXing,xxgjs.GJLB) as xxgj on xxzls.XieXing = xxgj.XieXing');
  sql.add('left join XXZLSVNS2 on xxzls.XieXing = XXZLSVNS2.XieXing and xxzls.SheHao = XXZLSVNS2.SheHao');
  sql.Add('where xxzls.XieXing = '''+ProdSendR.SMDDS.FieldByName('XieXing').value+'''');
  sql.Add('      and xxzls.shehao = '''+ProdSendR.SMDDS.FieldByName('shehao').value+'''');
  sql.Add('      and xxzls.clbh = '''+ProdSendR.BWZL.FieldByName('CLBH').value+'''');
  //prodsendr.memo1.Text:=sql.Text;
  active:=true;
end;

//如果鞋型前包頭有設定進退號, 單頭顯示訊息提醒用戶
if  (ProdSendR.QTemp2.FieldByName('GJLB').Value = '280') and (ProdSendR.Qtemp2.FieldByName('QBT').Value = '2') then
  QRLabel29.Enabled := True;


with ProdSendR.SMDDS do
begin
  if ((ProdSendR.Qtemp2.FieldByName('CCQZ').Value) = '') or     //判斷是否為分段材料
     ((ProdSendR.Qtemp2.FieldByName('CCQZ').Value) = null) then
  begin
    if  (Fieldcount-1)>5 then
      begin
        Q1.caption:=Fields[5].fieldname;
        R1.datafield:=Fields[5].fieldname;
      end;
    if  (Fieldcount-1)>6 then
      begin
        Q2.caption:=Fields[6].fieldname;
        R2.datafield:=Fields[6].fieldname;
      end;
    if  (Fieldcount-1)>7 then
      begin
        Q3.caption:=Fields[7].fieldname;
        R3.datafield:=Fields[7].fieldname;
      end;
    if  (Fieldcount-1)>8 then
      begin
        Q4.caption:=Fields[8].fieldname;
        R4.datafield:=Fields[8].fieldname;
      end;
    if  (Fieldcount-1)>9 then
      begin
        Q5.caption:=Fields[9].fieldname;
        R5.datafield:=Fields[9].fieldname;
      end;
    if  (Fieldcount-1)>10 then
      begin
        Q6.caption:=Fields[10].fieldname;
        R6.datafield:=Fields[10].fieldname;
      end;
    if  (Fieldcount-1)> 11 then
      begin
        Q7.caption:=Fields[11].fieldname;
        R7.datafield:=Fields[11].fieldname;
      end;
    if  (Fieldcount-1)>12 then
      begin
        Q8.caption:=Fields[12].fieldname;
        R8.datafield:=Fields[12].fieldname;
      end;
    if  (Fieldcount-1)>13 then
      begin
        Q9.caption:=Fields[13].fieldname;
        R9.datafield:=Fields[13].fieldname;
      end;
    if  (Fieldcount-1)>14 then
      begin
        Q10.caption:=Fields[14].fieldname;
        R10.datafield:=Fields[14].fieldname;
      end;
    if  (Fieldcount-1)>15 then
      begin
        Q11.caption:=Fields[15].fieldname;
        R11.datafield:=Fields[15].fieldname;
      end;
    if  (Fieldcount-1)>16 then
      begin
        Q12.caption:=Fields[16].fieldname;
        R12.datafield:=Fields[16].fieldname;
      end;
    if  (Fieldcount-1)>17 then
      begin
        Q13.caption:=Fields[17].fieldname;
        R13.datafield:=Fields[17].fieldname;
      end;
    if  (Fieldcount-1)>18 then
      begin
        Q14.caption:=Fields[18].fieldname;
        R14.datafield:=Fields[18].fieldname;
      end;
    if  (Fieldcount-1)>19 then
      begin
        Q15.caption:=Fields[19].fieldname;
        R15.datafield:=Fields[19].fieldname;
      end;
    if  (Fieldcount-1)>20 then
      begin
        Q16.caption:=Fields[20].fieldname;
        R16.datafield:=Fields[20].fieldname;
      end;
    if  (Fieldcount-1)>21 then
      begin
        Q17.caption:=Fields[21].fieldname;
        R17.datafield:=Fields[21].fieldname;
      end;
    if  (Fieldcount-1)>22 then
      begin
        Q18.caption:=Fields[22].fieldname;
        R18.datafield:=Fields[22].fieldname;
      end;
    if  (Fieldcount-1)>23 then
      begin
        Q19.caption:=Fields[23].fieldname;
        R19.datafield:=Fields[23].fieldname;
      end;
    if  (Fieldcount-1)>24 then
      begin
        Q20.caption:=Fields[24].fieldname;
        R20.datafield:=Fields[24].fieldname;
      end;
    if  (Fieldcount-1)>25 then
      begin
        Q21.caption:=Fields[25].fieldname;
        R21.datafield:=Fields[25].fieldname;
      end;
    if  (Fieldcount-1)>26 then
      begin
        Q22.caption:=Fields[26].fieldname;
        R22.datafield:=Fields[26].fieldname;
      end;
    if  (Fieldcount-1)>27 then
      begin
        Q23.caption:=Fields[27].fieldname;
        R23.datafield:=Fields[27].fieldname;
      end;
    if  (Fieldcount-1)>28 then
      begin
        Q24.caption:=Fields[28].fieldname;
        R24.datafield:=Fields[28].fieldname;
      end;
   // add 20150515   
    if  Fieldcount>29 then
      begin
        Q25.caption:=Fields[29].fieldname;
        R25.datafield:=Fields[29].fieldname;
      end;
   { if  Fieldcount>30 then
      begin
        Q26.caption:=Fields[30].fieldname;
        R26.datafield:=Fields[30].fieldname;
      end;  }
  end
  else
  begin
    i:=9;
//      if ProdSendR.Qtemp2.FieldByName('CCQQ').Value > Fields[i].fieldname then
//      begin

//      end
//      else
//      begin
        while ProdSendR.Qtemp2.FieldByName('CCQZ').Value < Fields[i].fieldname do  //抓取尺碼列印起始位置
        begin
          inc(i);
        end;
//      end;

      j:=i;
      x:=FieldCount-2;
      if ProdSendR.Qtemp2.FieldByName('CCQQ').Value <= Fields[x].FieldName then  //判斷是否最小分段碼小於訂單最小碼,避免迴圈空轉
      begin
        j:=x+1;
      end
      else
      begin
        while ProdSendR.Qtemp2.FieldByName('CCQQ').Value <= Fields[j].fieldname do  //抓取尺碼列印結束位置
        begin
          inc(j);
        end;
      end;
//      inc(j);   //列印位移一位

      if  (Fieldcount-1)>5 then
      begin
        Q1.caption:=Fields[5].fieldname;
        R1.datafield:=Fields[5].fieldname;
      end;
      if  (Fieldcount-1)>6 then
      begin
        Q2.caption:=Fields[6].fieldname;
        R2.datafield:=Fields[6].fieldname;
      end;
      if  (Fieldcount-1)>7 then
      begin
        Q3.caption:=Fields[7].fieldname;
        R3.datafield:=Fields[7].fieldname;
      end;
      if  (Fieldcount-1)>8 then
      begin
        Q4.caption:=Fields[8].fieldname;
        R4.datafield:=Fields[8].fieldname;
      end;
      if  j>i then
      begin
        Q5.caption:=Fields[i].fieldname;
        R5.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q6.caption:=Fields[i].fieldname;
        R6.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j> i then
      begin
        Q7.caption:=Fields[i].fieldname;
        R7.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q8.caption:=Fields[i].fieldname;
        R8.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q9.caption:=Fields[i].fieldname;
        R9.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q10.caption:=Fields[i].fieldname;
        R10.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q11.caption:=Fields[i].fieldname;
        R11.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q12.caption:=Fields[i].fieldname;
        R12.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q13.caption:=Fields[i].fieldname;
        R13.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q14.caption:=Fields[i].fieldname;
        R14.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q15.caption:=Fields[i].fieldname;
        R15.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q16.caption:=Fields[i].fieldname;
        R16.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q17.caption:=Fields[i].fieldname;
        R17.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q18.caption:=Fields[i].fieldname;
        R18.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q19.caption:=Fields[i].fieldname;
        R19.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q20.caption:=Fields[i].fieldname;
        R20.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q21.caption:=Fields[i].fieldname;
        R21.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q22.caption:=Fields[i].fieldname;
        R22.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q23.caption:=Fields[i].fieldname;
        R23.datafield:=Fields[i].fieldname;
        inc(i);
      end;
      if  j>i then
      begin
        Q24.caption:=Fields[i].fieldname;
        R24.datafield:=Fields[i].fieldname;
        inc(i);
      end;

      // add 20150515
      if  j>i then
      begin
        Q25.caption:=Fields[i].fieldname;
        R25.datafield:=Fields[i].fieldname;
        inc(i);
      end;

     { if  j>i then
      begin
        Q26.caption:=Fields[i].fieldname;
        R26.datafield:=Fields[i].fieldname;
        inc(i);
      end;   }

//    end;     //end if判斷分段材料是否大於訂單size run
  end;
end;

with ProdSendR.SMDDS do
  begin
    first;
    Qty:=0;
    while not eof do
      begin
        Qty:=Qty+fieldbyname('Qty').Value;
        next;
      end;
    LQty.caption:=inttostr(Qty);
  end;
with ProdSendR.BWZL do
  begin
    YWSM:='';
    YWPM:='';
    first;
    while not eof do
    begin
      YWSM:=YWSM+fieldbyname('BWBH').value+'--'+fieldbyname('YWSM').value+'//' ;
      if fieldbyname('YWPM').value<>'' then
      begin
        if ((ProdSendR.Qtemp2.FieldByName('CCQZ').Value) = '') or     //判斷是否為分段材料
           ((ProdSendR.Qtemp2.FieldByName('CCQZ').Value) = null) then
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+'//';
        end
        else
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+'//('+ProdSendR.Qtemp2.FieldByName('CCQQ').Value+'-'+ProdSendR.Qtemp2.FieldByName('CCQZ').Value+')' ;
        end;
      end;
      next;
    end;
    LYWSM.caption:=YWSM;
    LYWPM.caption:=YWPM;
  end;

end;

end.
