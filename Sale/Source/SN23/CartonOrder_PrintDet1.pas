unit CartonOrder_PrintDet1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, DB, DBTables, QRPDFFilt,IniFiles;

type
  TCartonOrder_PrintDet = class(TForm)
    QuickRep1: TQuickRep;
    QRCompositeReport1: TQRCompositeReport;
    QuickRep2: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    L1: TQRLabel;
    YWDDMT: TQuery;
    QRDBText2: TQRDBText;
    YWDDMTDDBH: TStringField;
    YWDDMTXH: TStringField;
    YWDDMTMTBH1: TStringField;
    YWDDMTMTLR1: TStringField;
    YWDDMTMTBH2: TStringField;
    YWDDMTMTLR2: TStringField;
    YWDDMTMTBH3: TStringField;
    YWDDMTMTLR3: TStringField;
    YWDDMTMTBH4: TStringField;
    YWDDMTMTLR4: TStringField;
    YWDDMTUSERDATE: TDateTimeField;
    YWDDMTUSERID: TStringField;
    YWDDMTYN: TStringField;
    QRLabel1: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    StrDate: TQRLabel;
    QRLabel5: TQRLabel;
    ColumnHeaderBand2: TQRBand;
    DetailBand2: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRDBText9: TQRDBText;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRShape14: TQRShape;
    QRDBText12: TQRDBText;
    QRShape15: TQRShape;
    QRLabel13: TQRLabel;
    QRShape16: TQRShape;
    QRLabel14: TQRLabel;
    QRShape17: TQRShape;
    QRDBText13: TQRDBText;
    QRShape1: TQRShape;
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
    QRShape36: TQRShape;
    Q22: TQRLabel;
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
    D22: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText15: TQRDBText;
    QRPDFFilter1: TQRPDFFilter;
    QRLabel21: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText17: TQRDBText;
    YWDDBZ: TQuery;
    YWDDBZXH: TStringField;
    YWDDBZMENO: TStringField;
    YWDDBZZWSM: TStringField;
    YWDDBZVNSM: TStringField;
    YWDDBZUSERID: TStringField;
    YWDDBZUSERDate: TDateTimeField;
    YWDDBZYN: TStringField;
    QuickRep3: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel25: TQRLabel;
    DetailBand3: TQRBand;
    QRSysData1: TQRSysData;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRLabel26: TQRLabel;
    QRDBText20: TQRDBText;
    PageFooterBand2: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRBand1: TQRBand;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRDBText21: TQRDBText;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel47: TQRLabel;
    QRDBText23: TQRDBText;
    QRLabel48: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel49: TQRLabel;
    QRDBText25: TQRDBText;
    QRBand3: TQRBand;
    LPC1: TQRLabel;
    LPC2: TQRLabel;
    LPC3: TQRLabel;
    QPC1: TQRImage;
    QPC2: TQRImage;
    QPC3: TQRImage;
    QRLabel16: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRDBText4: TQRDBText;
    TempSize: TQuery;
    YWBZPO: TQuery;
    Qtemp: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRCompositeReport1Finished(Sender: TObject);
  private
    ComName:String;
    SaleN23_ISO:String;
    { Private declarations }
    procedure ReadIni();
    procedure Show_YWBZPO();
  public
    { Public declarations }
  end;

var
  CartonOrder_PrintDet: TCartonOrder_PrintDet;

implementation

uses CartonOrder1, main1,fununit;

{$R *.dfm}

procedure TCartonOrder_PrintDet.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//free;
end;

procedure TCartonOrder_PrintDet.QRCompositeReport1AddReports(Sender: TObject);
begin
with QRCompositeReport1 do
  begin
    reports.Add(QuickRep1);
    reports.Add(QuickRep2);
    reports.Add(QuickRep3);
  end;
end;
//20190105 read ini file
procedure TCartonOrder_PrintDet.ReadIni();
var MyIni :Tinifile;
    AppDir:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  SaleN23_ISO:='ISO編號：T-KH-QP009-09A';
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP',' ComName ','');
      SaleN23_ISO:=MyIni.ReadString('ERP','SaleN23_ISO','');
    finally
      MyIni.Free;
    end;
  end;

end;
//顯示外箱包裝
procedure TCartonOrder_PrintDet.Show_YWBZPO();
begin

       with Qtemp do
       begin
          Active:=false;
          sql.Clear;
          sql.add('select distinct DDCC ');
          sql.add('from YWDDS');
          sql.add('where DDBH='''+cartonorder.YWBZPO.FieldByName('DDBH').AsString+''' ');
          sql.add('and Qty<>0');
          sql.add('order by DDCC');
          Active:=true;
      end;
      with YWBZPO do
      begin
          active:=false;
          sql.Clear;
          sql.add('select POS.DDBH,POS.XH,POS.MEMO,POS.CTS');
          while not Qtemp.Eof do
          begin
              sql.add('    ,max(case when POS.DDCC='''+Qtemp.fieldbyname('DDCC').asstring+'''');
              sql.add('    then POS.Qty end ) as '''+Qtemp.fieldbyname('DDCC').asstring+'''');
              Qtemp.Next;
          end;
          sql.add('    ,YWBZPO.CLBH,YWBZPO.L,YWBZPO.W,YWBZPO.H,CAST(YWBZPO.NW AS DECIMAL(10,2)) as NW, CAST(YWBZPO.GW AS DECIMAL(10,2)) as GW');
          sql.add('    ,case when YWBZPO.CTQ is not null then convert(varchar(5),YWBZPO.CTQ)+''-''+convert(varchar(5),YWBZPO.CTZ) else null end as CN');
          sql.Add('    ,CAST(YWBZPO.CBM AS DECIMAL(10,6)) as CBM,round(YWBZPO.CBM*35.315,2) as CUFT,YWWX2.Capacity - sum(POS.Qty) as Surplus,YWBZPO.CtnBoxCode');
          sql.add('    ,max(YWBZPO.USERDATE) as OrderingDate,max(POS.USERDATE) as PackingDate,clzl.YWPM,YWDD.KHDDBH1 ');
          sql.add('from ( ');
          SQL.Add('      select null as DDBH,null as XH,null as MEMO,YWDDS.DDCC,Sum(YWDDS.Qty) as Qty,Max(DDPACKS.CTS) as CTS,Max(DDPACKS.USERDATE) as UserDate ');
          SQL.Add('      from YWDDS ');
          SQL.Add('      left join YWDD on YWDDS.DDBH=YWDD.DDBH');
          SQL.Add('      left join (');
          SQL.Add('      select YSBH,Sum(CTS) as CTS,max(YWBZPOS.USERDATE) as USERDATE from  (');
          SQL.Add('      select YWDD.YSBH,YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS,Max(YWBZPOS.USERDATE) as USERDATE');
          SQL.Add('      from YWBZPOS');
          SQL.Add('      left join YWDD on YWDD.DDBH=YWBZPOS.DDBH');
          SQL.Add('      where YWBZPOS.DDBH='''+cartonorder.YWBZPO.fieldbyname('DDBH').AsString+''' ');
          SQL.Add('      and YWBZPOS.Qty<>0 Group by YWDD.YSBH,YWBZPOS.DDBH,YWBZPOS.XH,YWBZPOS.CTS ) YWBZPOS Group by YSBH ) DDPACKS  on DDPACKS.YSBH=YWDD.YSBH  ');

          SQL.Add('      where YWDDS.DDBH='''+cartonorder.YWBZPO.FieldByName('DDBH').AsString+'''');
          SQL.Add('      group by YWDDS.DDCC');
          sql.add('      union    ');
          sql.add('      select DDBH,XH,MEMO,DDCC,Qty,CTS,USERDATE ');
          sql.add('      from YWBZPOS where YWBZPOS.DDBH='''+cartonorder.YWBZPO.FieldByName('DDBH').AsString+'''');
          sql.add('     ) POS   ');
          sql.add('left join YWBZPO on YWBZPO.DDBH=POS.DDBH and YWBZPO.XH=POS.XH ') ;
          sql.add('left join YWWX2 on YWBZPO.CLBH=YWWX2.CLBH ');
          sql.add('left join clzl on YWBZPO.CLBH=CLZL.CLDH ');
          sql.add('left join YWDD on YWDD.DDBH=POS.DDBH ');
          sql.add('group by  POS.DDBH,POS.XH,POS.MEMO,POS.CTS,YWBZPO.CTQ,YWBZPO.CTZ,YWBZPO.NW,');
          sql.add('          YWBZPO.GW,YWBZPO.L,YWBZPO.W,YWBZPO.H,YWBZPO.CBM,YWBZPO.CLBH,YWWX2.Capacity,YWBZPO.CtnBoxCode,clzl.YWPM,YWDD.KHDDBH1 ');
          //funcObj.WriteErrorLog(sql.Text);
          active:=true;
      end;
      Qtemp.active:=false;
end;

procedure TCartonOrder_PrintDet.FormCreate(Sender: TObject);
var
  i:integer;
  aQ:array[0..18] of TQRLabel;
  aD:array[0..18] of TQRDBText;
begin
  aQ[0]:=Q1;
  aQ[1]:=Q2;
  aQ[2]:=Q3;
  aQ[3]:=Q4;
  aQ[4]:=Q5;
  aQ[5]:=Q6;
  aQ[6]:=Q7;
  aQ[7]:=Q8;
  aQ[8]:=Q9;
  aQ[9]:=Q10;
  aQ[10]:=Q11;
  aQ[11]:=Q12;
  aQ[12]:=Q13;
  aQ[13]:=Q14;
  aQ[14]:=Q15;
  aQ[15]:=Q16;
  aQ[16]:=Q17;
  aQ[17]:=Q18;
  aQ[18]:=Q19;

  aD[0]:=D1;
  aD[1]:=D2;
  aD[2]:=D3;
  aD[3]:=D4;
  aD[4]:=D5;
  aD[5]:=D6;
  aD[6]:=D7;
  aD[7]:=D8;
  aD[8]:=D9;
  aD[9]:=D10;
  aD[10]:=D11;
  aD[11]:=D12;
  aD[12]:=D13;
  aD[13]:=D14;
  aD[14]:=D15;
  aD[15]:=D16;
  aD[16]:=D17;
  aD[17]:=D18;
  aD[18]:=D19;
  //
  Show_YWBZPO();
  YWDDMT.Active:=true;
  YWDDBZ.Active:=true;
  StrDate.Caption:=formatdatetime('yyyy/MM/dd',date);
  QRshape1.Width:=ColumnHeaderBand2.Width;
  if messagedlg('Print CBM or CUFT?',mtinformation,[mbYes,mbNo],0)=mrYes then
  begin
    Q22.Caption:='CBM';
    D22.datafield:='CBM';
  end else
  begin
    Q22.Caption:='CUFT';
    D22.datafield:='CUFT';
  end;
  Q20.Caption:='C.N';
  D20.DataField:='cn';
  TempSize.Active:=true;
  if TempSize.recordcount>19 then
  begin
    showmessage('Siz too much. Can print not full.');
    with YWBZPO do
    begin
      for i:= 4 to 22 do
      begin
        aQ[i-4].Caption:=Fields[i].fieldname;
        aD[i-4].datafield:=Fields[i].fieldname;
      end;
    end;
  end else
  begin
    with YWBZPO do
    begin
      for i:= 4 to FieldCount-16 do // FieldCount-16 =22 只有19各SIZE可以顯示
      begin
        aQ[i-4].Caption:=Fields[i].fieldname;
        aD[i-4].datafield:=Fields[i].fieldname;
      end;
    end;
  end;
  ReadIni();

end;

procedure TCartonOrder_PrintDet.FormDestroy(Sender: TObject);
begin
  CartonOrder_PrintDet:=nil;
end;

procedure TCartonOrder_PrintDet.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var textvar:textfile;
    sline:string;
begin
   PageHeaderBand1.Frame.DrawBottom:= true;
   CartonOrder_PrintDet.L1.Caption:=ComName;
end;

procedure TCartonOrder_PrintDet.QRCompositeReport1Finished(Sender: TObject);
begin
  CartonOrder_PrintDet.QRLabel50.Caption:=SaleN23_ISO;
  CartonOrder_PrintDet.QRLabel17.Caption:=SaleN23_ISO;
end;

end.
