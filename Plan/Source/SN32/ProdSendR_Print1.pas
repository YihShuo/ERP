unit ProdSendR_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, jpeg, QRXMLSFilt,
  QRExport, QRPDFFilt, StdCtrls, IniFiles;

type
  TProdSendR_Print = class(TForm)
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
    QRDBText6: TQRDBText;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
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
    QRLabel30: TQRLabel;
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
    A20: TQRLabel;
    A21: TQRLabel;
    A22: TQRLabel;
    A23: TQRLabel;
    A24: TQRLabel;
    A25: TQRLabel;
    B5: TQRLabel;
    B6: TQRLabel;
    QRLabel33: TQRLabel;
    B7: TQRLabel;
    B8: TQRLabel;
    B9: TQRLabel;
    B10: TQRLabel;
    B12: TQRLabel;
    B11: TQRLabel;
    B13: TQRLabel;
    B14: TQRLabel;
    B15: TQRLabel;
    B16: TQRLabel;
    B18: TQRLabel;
    B17: TQRLabel;
    B19: TQRLabel;
    B21: TQRLabel;
    B20: TQRLabel;
    B22: TQRLabel;
    B23: TQRLabel;
    B24: TQRLabel;
    B25: TQRLabel;
    QRLabel31: TQRLabel;
    SMDDS: TQuery;
    Q26: TQRLabel;
    A26: TQRLabel;
    B26: TQRLabel;
    R26: TQRDBText;
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    ComName:String;
    ComNameCH:String;
    PlanN38_ISO_Cut:String;
    { Private declarations }
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
    procedure Init(IsPacking:boolean);
  end;

var
  ProdSendR_Print: TProdSendR_Print;

implementation

uses ProdSendR1, main1, FunUnit;

{$R *.dfm}

procedure TProdSendR_Print.ReadIni();
var MyIni :Tinifile;
    AppDir,DBIP,DBUser,DBPass,DBName:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春責任有限公司';
  PlanN38_ISO_Cut:='ISO NO : T-KH-QP023-07A (ERP)';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','');
      PlanN38_ISO_Cut:=MyIni.ReadString('ERP','PlanN38_ISO_Cut','');
    finally
      MyIni.Free;
    end;
  end;
end;

procedure TProdSendR_Print.FormDestroy(Sender: TObject);
begin
  ProdSendR_Print:=nil;
end;

procedure TProdSendR_Print.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  action:=cafree;
end;
//
procedure TProdSendR_Print.Init(IsPacking:boolean);
var Qty:integer;
    YWPM,YWSM:string;
    i,j,XXCC_S,XXCC_E:integer;
    CLBHlist:string;
    IsShowTOE_CAP:boolean;
    CCQZ,CCQQ:String;
    SecialSize:boolean;
    //Object
    QRLabel:TQRLabel;
    QRDBText:TQRDBText;
begin
  ProdSendR_Print.QRLabel4.Caption:=ComName;
  ProdSendR_Print.QRLabel5.Caption:=ComNameCH;
  ProdSendR_Print.ISOLAB.Caption:=PlanN38_ISO_Cut;
  CLBHlist:='';
  //指定Size範圍
  SecialSize:=false;
  CCQQ:='ZZZZZ';
  CCQZ:='';
  with ProdSendR.BWZL do
  begin
    First;
    while not eof do
    begin
      CLBHlist:=CLBHlist+''''+FieldByName('CLBH').AsString+''',';
      if FieldByName('YN').AsString='1' then
      begin
        if FieldByName('CCQQ').Asstring<CCQQ then CCQQ:=FieldByName('CCQQ').Asstring;
        if FieldByName('CCQZ').Asstring>CCQZ then CCQZ:=FieldByName('CCQZ').Asstring;
        if FieldByName('CCQZ').Asstring='' then  CCQZ:='';
        SecialSize:=true;
      end;
      Next;
    end;
  end;
  if CLBHlist<>'' then CLBHlist:='('+Copy(CLBHlist,1,length(CLBHlist)-1)+')';
  //
  with ProdSendR.Qtemp do
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
    sql.Add('order by xxzls.CCQZ,xxzls.CCQQ ');
    active:=true;
    //
    while not eof do
    begin
      if (ProdSendR.Qtemp.FieldByName('GJLB').Value = '280') and (ProdSendR.Qtemp.FieldByName('QBT').Value = '2') then
        IsShowTOE_CAP:=true;
      if SecialSize=false then  //已經指定Size範圍
      begin
        if ProdSendR.Qtemp.FieldByName('CCQQ').Asstring<CCQQ then CCQQ:=ProdSendR.Qtemp.FieldByName('CCQQ').Asstring;
        if ProdSendR.Qtemp.FieldByName('CCQZ').Asstring>CCQZ then CCQZ:=ProdSendR.Qtemp.FieldByName('CCQZ').Asstring;
        if ProdSendR.Qtemp.FieldByName('CCQZ').Asstring='' then  CCQZ:='';
      end;
      Next;
    end;
    active:=false;
  end;
  //如果鞋型前包頭有設定進退號, 單頭顯示訊息提醒用戶
  if  IsShowTOE_CAP=true then
  QRLabel29.Enabled := True;
  QRLabel31.Caption:=Copy(ProdSendR.CCCombo.Text,5,length(ProdSendR.CCCombo.Text));//工具尺寸
  //如果分片包裝就用SMDDS ProdSendR_Print.Query顯示
  if IsPacking=true then
  begin
    QuickRep1.DataSet:=ProdSendR_Print.SMDDS;
    QRDBText1.DataSet:=ProdSendR_Print.SMDDS;
    for i:=2 to 26 do
    begin
      QRDBText:=TQRDBText(self.FindComponent('R'+inttostr(i)));
      if QRDBText<>nil then
      begin
        QRDBText.DataSet:=ProdSendR_Print.SMDDS;
        if i>=6 then
        begin
          QRDBText.Font.Size:=8;
          QRDBText.AutoSize:=true;
        end;
      end;
    end;
  end;
  //
  with ProdSendR.SMDDS do
  begin
    //判斷不是分段材料
    if (CCQZ = '') or (CCQQ = '') then
    begin
      //抬頭材料名稱
      for i:=1 to 5 do
      begin
        if  (Fieldcount-5-1)>=i then //前面5各欄位 後面1個欄位不使用
        begin
          QRLabel:=TQRLabel(self.FindComponent('Q'+inttostr(i)));
          QRDBText:=TQRDBText(self.FindComponent('R'+inttostr(i)));
          if QRLabel<>nil then  QRLabel.caption:=Fields[i+4].fieldname;
          if QRDBText<>nil then  QRDBText.datafield:=Fields[i+4].fieldname;
        end;
      end;
      for i:=6 to 26 do
      begin
        if  (Fieldcount-5-1)>=i then //前面5各欄位 後面1個欄位不使用
        begin
          QRLabel:=TQRLabel(self.FindComponent('Q'+inttostr(i)));
          QRDBText:=TQRDBText(self.FindComponent('R'+inttostr(i)));
          if QRLabel<>nil then  QRLabel.caption:=Fields[i+4].fieldname;
          if QRDBText<>nil then  QRDBText.datafield:=Fields[i+4].fieldname;
          //總數量
          QRLabel:=TQRLabel(self.FindComponent('B'+inttostr(i)));
          if QRLabel<>nil then  QRLabel.caption:=floattostr(strtoint(ProdSendR.DBGridEh3.getfootervalue(0,ProdSendR.DBGridEh3.columns[i+4])) );
          //
        end;
      end;
    end else
    begin
      //分段材料 i起始 j結束
      XXCC_S:=10; //SIZE起始
      //Size遞減排序
      if ProdSendR.ChkSize.Checked=false then
      begin
        while CCQZ < Fields[XXCC_S].fieldname do  //抓取尺碼列印起始位置
        begin
          inc(XXCC_S);
        end;
        //
        XXCC_E:=FieldCount-2;
        while CCQQ > Fields[XXCC_E].fieldname do  //抓取尺碼列印起始位置
        begin
          XXCC_E:=XXCC_E-1;
        end;
      end else
      begin
        //20151119 遞升排序
        while CCQQ > Fields[XXCC_S].fieldname do  //抓取尺碼列印起始位置
        begin
          inc(XXCC_S);
        end;
        //
        XXCC_E:=FieldCount-2;
        while CCQZ < Fields[XXCC_E].fieldname do  //抓取尺碼列印起始位置
        begin
          XXCC_E:=XXCC_E-1;
        end;
      end;
      //抬頭材料名稱
      for i:=1 to 5 do
      begin
        if  (Fieldcount-5-1)>=i then //前面5各欄位 後面1個欄位不使用
        begin
          QRLabel:=TQRLabel(self.FindComponent('Q'+inttostr(i)));
          QRDBText:=TQRDBText(self.FindComponent('R'+inttostr(i)));
          if QRLabel<>nil then  QRLabel.caption:=Fields[i+4].fieldname;
          if QRDBText<>nil then  QRDBText.datafield:=Fields[i+4].fieldname;
        end;
      end;
      i:=6; //顯示起始欄位
      j:=XXCC_S;  //filedname 起始欄位
      while XXCC_E>=j do
      begin
        QRLabel:=TQRLabel(self.FindComponent('Q'+inttostr(i)));
        QRDBText:=TQRDBText(self.FindComponent('R'+inttostr(i)));
        if QRLabel<>nil then  QRLabel.caption:=Fields[j].fieldname;
        if QRDBText<>nil then  QRDBText.datafield:=Fields[j].fieldname;
        //總數量
        QRLabel:=TQRLabel(self.FindComponent('B'+inttostr(i)));
        if QRLabel<>nil then  QRLabel.caption:=floattostr(strtoint(ProdSendR.DBGridEh3.getfootervalue(0,ProdSendR.DBGridEh3.columns[j])) );
        //
        Inc(j);
        inc(i);
      end;
    end;
  end;

  //顯示前包頭、邊條額外資訊
  if (ProdSendR.SizeFoxTypeEdit.Text <> '') then
  begin
    with ProdSendR.SizefoxQry do
    begin
      //不分尺碼
      if (CCQZ = '') or (CCQQ = '') then
      begin
        for i:=5 to 26 do
        begin
          if  (Fieldcount-4)>=(i-4) then //前面4各欄位不使用
          begin
            QRLabel:=TQRLabel(self.FindComponent('A'+inttostr(i+1)));
            if ((QRLabel<>nil) and (Fields[i-1].AsString<>''))  then  QRLabel.caption:=Fields[i-1].AsString;
          end;
        end;
      end else
      begin
        //分尺碼
        i:=6; //顯示起始欄位
        j:=XXCC_S;  //filedname 起始欄位
        while XXCC_E>=j do
        begin
          QRLabel:=TQRLabel(self.FindComponent('A'+inttostr(i)));
          if ((QRLabel<>nil) and (Fields[j-6].AsString<>'')) then  QRLabel.caption:=Fields[j-6].AsString;
          Inc(j);
          inc(i);
        end;
      end;
    end;
  end;

  // end //
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
      YWSM:=YWSM+fieldbyname('BWBH').value+'--'+fieldbyname('YWSM').value+' // ';
      if fieldbyname('YWPM').value<>'' then
      begin
        if ((FieldByName('CCQZ').Value = '') or (FieldByName('CCQZ').Value = null)) and ((FieldByName('BZ').Value = '') or (FieldByName('BZ').Value = null)) then    //判斷是否為分段材料
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+'-('+FormatFloat('##,#0.0',fieldbyname('clsl').Value)+') // ';
        end else
        if ((FieldByName('CCQZ').Value <> '') or (FieldByName('CCQZ').Value <> null)) and ((FieldByName('BZ').Value = '') or (FieldByName('BZ').Value = null)) then
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+' =>('+FieldByName('CCQQ').Value+'-'+FieldByName('CCQZ').Value+')-('+FormatFloat('##,#0.0',fieldbyname('clsl').Value)+') // ' ;
        end else
        if ((FieldByName('CCQZ').Value = '') or (FieldByName('CCQZ').Value = null)) and ((FieldByName('BZ').Value <> '') or (FieldByName('BZ').Value <> null)) then
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+'(//'+fieldbyname('BZ').value+')-('+FormatFloat('##,#0.0',fieldbyname('clsl').Value)+') // ' ;
        end else
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+' =>('+FieldByName('CCQQ').Value+'-'+FieldByName('CCQZ').Value+')'+'(//'+fieldbyname('BZ').value+')-('+FormatFloat('##,#0.0',fieldbyname('clsl').Value)+') // ' ;
        end;
      end;
      next;
    end;
    if YWPM<>'' then YWPM:=Copy(YWPM,1,length(YWPM)-3);
    if YWSM<>'' then YWSM:=Copy(YWSM,1,length(YWSM)-3);
    LYWSM.caption:=YWSM;
    LYWPM.caption:=YWPM;
  end;
end;
//
procedure TProdSendR_Print.FormCreate(Sender: TObject);
{
var Qty:integer;
    YWPM,YWSM:string;
    i,j,XXCC_S,XXCC_E:integer;
    CLBHlist:string;
    IsShowTOE_CAP:boolean;
    CCQZ,CCQQ:String;
    SecialSize:boolean;
    //Object
    QRLabel:TQRLabel;
    QRDBText:TQRDBText;
    SMDDSQry:TQuery;
    }
begin
  ReadIni();
  //Init();
  {
  CLBHlist:='';
  //指定Size範圍
  SecialSize:=false;
  CCQQ:='ZZZZZ';
  CCQZ:='';
  with ProdSendR.BWZL do
  begin
    First;
    while not eof do
    begin
      CLBHlist:=CLBHlist+''''+FieldByName('CLBH').AsString+''',';
      if FieldByName('YN').AsString='1' then
      begin
        if FieldByName('CCQQ').Asstring<CCQQ then CCQQ:=FieldByName('CCQQ').Asstring;
        if FieldByName('CCQZ').Asstring>CCQZ then CCQZ:=FieldByName('CCQZ').Asstring;
        if FieldByName('CCQZ').Asstring='' then  CCQZ:='';
        SecialSize:=true;
      end;
      Next;
    end;
  end;
  if CLBHlist<>'' then CLBHlist:='('+Copy(CLBHlist,1,length(CLBHlist)-1)+')';
  //
  with ProdSendR.Qtemp do
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
    sql.Add('order by xxzls.CCQZ,xxzls.CCQQ ');
    active:=true;
    //
    while not eof do
    begin
      if (ProdSendR.Qtemp.FieldByName('GJLB').Value = '280') and (ProdSendR.Qtemp.FieldByName('QBT').Value = '2') then
        IsShowTOE_CAP:=true;
      if SecialSize=false then  //已經指定Size範圍
      begin
        if ProdSendR.Qtemp.FieldByName('CCQQ').Asstring<CCQQ then CCQQ:=ProdSendR.Qtemp.FieldByName('CCQQ').Asstring;
        if ProdSendR.Qtemp.FieldByName('CCQZ').Asstring>CCQZ then CCQZ:=ProdSendR.Qtemp.FieldByName('CCQZ').Asstring;
        if ProdSendR.Qtemp.FieldByName('CCQZ').Asstring='' then  CCQZ:='';
      end;
      Next;
    end;
    active:=false;
  end;
  //如果鞋型前包頭有設定進退號, 單頭顯示訊息提醒用戶
  if  IsShowTOE_CAP=true then
  QRLabel29.Enabled := True;
  QRLabel31.Caption:=Copy(ProdSendR.CCCombo.Text,5,length(ProdSendR.CCCombo.Text));//工具尺寸
  //
  if ProdSendR_Print.SMDDS.Active=true then
    SMDDSQry:=ProdSendR_Print.SMDDS
  else
    SMDDSQry:=ProdSendR.SMDDS;
  with SMDDSQry do
  begin
    //判斷不是分段材料
    if (CCQZ = '') or (CCQQ = '') then
    begin
      //抬頭材料名稱
      for i:=1 to 5 do
      begin
        if  (Fieldcount-5-1)>=i then //前面5各欄位 後面1個欄位不使用
        begin
          QRLabel:=TQRLabel(self.FindComponent('Q'+inttostr(i)));
          QRDBText:=TQRDBText(self.FindComponent('R'+inttostr(i)));
          if QRLabel<>nil then  QRLabel.caption:=Fields[i+4].fieldname;
          if QRDBText<>nil then  QRDBText.datafield:=Fields[i+4].fieldname;
        end;
      end;
      for i:=6 to 25 do
      begin
        if  (Fieldcount-5-1)>=i then //前面5各欄位 後面1個欄位不使用
        begin
          QRLabel:=TQRLabel(self.FindComponent('Q'+inttostr(i)));
          QRDBText:=TQRDBText(self.FindComponent('R'+inttostr(i)));
          if QRLabel<>nil then  QRLabel.caption:=Fields[i+4].fieldname;
          if QRDBText<>nil then  QRDBText.datafield:=Fields[i+4].fieldname;
          //總數量
          QRLabel:=TQRLabel(self.FindComponent('B'+inttostr(i)));
          if QRLabel<>nil then  QRLabel.caption:=floattostr(strtoint(ProdSendR.DBGridEh3.getfootervalue(0,ProdSendR.DBGridEh3.columns[i+4]))/ProdSendR.PairsSpinEdit.Value );
          //
        end;
      end;
    end else
    begin
      //分段材料 i起始 j結束
      XXCC_S:=10; //SIZE起始
      //Size遞減排序
      if ProdSendR.ChkSize.Checked=false then
      begin
        while CCQZ < Fields[XXCC_S].fieldname do  //抓取尺碼列印起始位置
        begin
          inc(XXCC_S);
        end;
        //
        XXCC_E:=FieldCount-2;
        while CCQQ > Fields[XXCC_E].fieldname do  //抓取尺碼列印起始位置
        begin
          XXCC_E:=XXCC_E-1;
        end;
      end else
      begin
        //20151119 遞升排序
        while CCQQ > Fields[XXCC_S].fieldname do  //抓取尺碼列印起始位置
        begin
          inc(XXCC_S);
        end;
        //
        XXCC_E:=FieldCount-2;
        while CCQZ < Fields[XXCC_E].fieldname do  //抓取尺碼列印起始位置
        begin
          XXCC_E:=XXCC_E-1;
        end;
      end;
      //抬頭材料名稱
      for i:=1 to 5 do
      begin
        if  (Fieldcount-5-1)>=i then //前面5各欄位 後面1個欄位不使用
        begin
          QRLabel:=TQRLabel(self.FindComponent('Q'+inttostr(i)));
          QRDBText:=TQRDBText(self.FindComponent('R'+inttostr(i)));
          if QRLabel<>nil then  QRLabel.caption:=Fields[i+4].fieldname;
          if QRDBText<>nil then  QRDBText.datafield:=Fields[i+4].fieldname;
        end;
      end;
      i:=6; //顯示起始欄位
      j:=XXCC_S;  //filedname 起始欄位
      while XXCC_E>=j do
      begin
        QRLabel:=TQRLabel(self.FindComponent('Q'+inttostr(i)));
        QRDBText:=TQRDBText(self.FindComponent('R'+inttostr(i)));
        if QRLabel<>nil then  QRLabel.caption:=Fields[j].fieldname;
        if QRDBText<>nil then  QRDBText.datafield:=Fields[j].fieldname;
        //總數量
        QRLabel:=TQRLabel(self.FindComponent('B'+inttostr(i)));
        if QRLabel<>nil then  QRLabel.caption:=floattostr(strtoint(ProdSendR.DBGridEh3.getfootervalue(0,ProdSendR.DBGridEh3.columns[j]))/ProdSendR.PairsSpinEdit.Value );
        //
        Inc(j);
        inc(i);
      end;
    end;
  end;

  //顯示前包頭、邊條額外資訊
  if (ProdSendR.SizeFoxTypeEdit.Text <> '') then
  begin
    with ProdSendR.SizefoxQry do
    begin
      //不分尺碼
      if (CCQZ = '') or (CCQQ = '') then
      begin
        for i:=5 to 25 do
        begin
          if  (Fieldcount-4)>=(i-4) then //前面4各欄位不使用
          begin
            QRLabel:=TQRLabel(self.FindComponent('A'+inttostr(i+1)));
            if ((QRLabel<>nil) and (Fields[i-1].AsString<>''))  then  QRLabel.caption:=Fields[i-1].AsString+'m';
          end;
        end;
      end else
      begin
        //分尺碼
        i:=6; //顯示起始欄位
        j:=XXCC_S;  //filedname 起始欄位
        while XXCC_E>=j do
        begin
          QRLabel:=TQRLabel(self.FindComponent('A'+inttostr(i)));
          if ((QRLabel<>nil) and (Fields[j-6].AsString<>'')) then  QRLabel.caption:=Fields[j-6].AsString+'m';
          Inc(j);
          inc(i);
        end;
      end;
    end;
  end;

  // end //
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
      YWSM:=YWSM+fieldbyname('BWBH').value+'--'+fieldbyname('YWSM').value+' // ';
      if fieldbyname('YWPM').value<>'' then
      begin
        if ((FieldByName('CCQZ').Value) = '') or     //判斷是否為分段材料
           ((FieldByName('CCQZ').Value) = null) then
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+' // ';
        end else
        begin
          YWPM:=YWPM+fieldbyname('CLBH').value+'--'+fieldbyname('YWPM').value+' =>('+FieldByName('CCQQ').Value+'-'+FieldByName('CCQZ').Value+') // ' ;
        end;
      end;
      next;
    end;
    if YWPM<>'' then YWPM:=Copy(YWPM,1,length(YWPM)-3);
    if YWSM<>'' then YWSM:=Copy(YWSM,1,length(YWSM)-3);
    LYWSM.caption:=YWSM;
    LYWPM.caption:=YWPM;
  end;
  }
end;
end.
