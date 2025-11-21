unit HokaRubberWeightRpt_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBTables, iniFiles;

type
  THokaRubberWeightRpt_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRBand2: TQRBand;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape15: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape20: TQRShape;
    SummaryBand1: TQRBand;
    QRSubDetail: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRShape17: TQRShape;
    QRDB1: TQRDBText;
    QRBand1: TQRBand;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRComName: TQRLabel;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    QRDBText12: TQRDBText;
    DSRpt: TDataSource;
    MasterQry: TQuery;
    DetailQry: TQuery;
    QRShape5: TQRShape;
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
    Q22: TQRLabel;
    Q23: TQRLabel;
    Q24: TQRLabel;
    Q25: TQRLabel;
    Q27: TQRLabel;
    QRDB2: TQRDBText;
    QRDB3: TQRDBText;
    QRDB4: TQRDBText;
    QRDB5: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    MasterQryDMBHSM: TStringField;
    MasterQryBWBHSM: TStringField;
    MasterQryHardness: TStringField;
    MasterQryDMLBDH: TStringField;
    MasterQryBWLBDH: TStringField;
    QRDBText26: TQRDBText;
    QRShape1: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape16: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
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
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QRShape62: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel50: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Readini();
  public
    { Public declarations }
  end;

var
  HokaRubberWeightRpt_Print: THokaRubberWeightRpt_Print;

implementation
  uses main1, HokaRubberWeightRpt1, FunUnit;
{$R *.dfm}

procedure THokaRubberWeightRpt_Print.Readini();
var MyIni :Tinifile;
    AppDir,ComName,ComNameCH,PurchaseN2151_ISO:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  ComNameCH:='億春責任有限公司';
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
    finally
      MyIni.Free;
    end;
  end;
  QRLabel24.Caption:=ComName;
  QRLabel22.Caption:=ComNameCH;
end;

procedure THokaRubberWeightRpt_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=CaFree;
end;

procedure THokaRubberWeightRpt_Print.FormDestroy(Sender: TObject);
begin
  HokaRubberWeightRpt_Print:=nil;
end;

procedure THokaRubberWeightRpt_Print.FormCreate(Sender: TObject);
var i:integer;
begin
  Readini();
  //
  with MasterQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select LBZLS1.YWSM as DMBHSM,LBZLS2.YWSM as BWBHSM,LBZLS2.ZWSM as Hardness,LBZLS1.LBDH as DMLBDH,LBZLS2.LBDH as BWLBDH');
    SQL.Add('from '+main.LIY_DD+'.dbo.HKDM_SMZL HKDM_SMZL');
    SQL.Add('Left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS1 on LBZLS1.LBDH=HKDM_SMZL.DMBH and LBZLS1.Layer=1 and LB=''1'' ');
    SQL.Add('Left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS2 on LBZLS2.LBDH=HKDM_SMZL.BWBH and LBZLS2.Layer=2 ');
    SQL.Add('Left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS3 on LBZLS3.LBDH=HKDM_SMZL.Stage and LBZLS3.Layer=3 ');
    SQL.Add('Where Convert(Smalldatetime,HKDM_SMZL.WorkDate) Between '''+FormatDateTime('YYYY/MM/DD',HokaRubberWeightRpt.DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',HokaRubberWeightRpt.DTP2.Date)+''' ');
    if HokaRubberWeightRpt.DMBH<>'' then
    SQL.Add('   and HKDM_SMZL.DMBH = '''+HokaRubberWeightRpt.DMBH+''' ');
    if HokaRubberWeightRpt.BWBH<>'' then
    SQL.Add('   and HKDM_SMZL.BWBH = '''+HokaRubberWeightRpt.BWBH+''' ');
    if HokaRubberWeightRpt.ClassStr<>'' then
    SQL.Add('   and HKDM_SMZL.Class = '''+HokaRubberWeightRpt.ClassStr+'''  ');
    SQL.Add('Group by LBZLS1.YWSM,LBZLS2.YWSM,LBZLS2.ZWSM,LBZLS1.LBDH,LBZLS2.LBDH');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
  with DetailQry do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('Select DMBHSM, BWBHSM, StageSM ');
    if HokaRubberWeightRpt.CheckBox1.Checked=false then
    begin
      for i:=0 to  High(HKSIZE) do
      begin
      SQL.Add('       ,Sum(Case when SIZE='''+HKSIZE[i]+''' then 1 else 0 end) as '''+HKSIZE[i]+''' ');
      end;
      SQL.Add('	      ,Sum(1)  as Total');
    end else
    begin
      for i:=0 to  High(HKSIZE) do
      begin
      SQL.Add('       ,Case when Sum(Case when SIZE='''+HKSIZE[i]+''' then 1 else 0 end)>0 then Sum(Case when SIZE='''+HKSIZE[i]+''' then [Weight] else 0 end)/Sum(Case when SIZE='''+HKSIZE[i]+''' then 1 else 0 end) else null end as '''+HKSIZE[i]+'''  ');
      end;
    end;
    SQL.Add('from (');
    SQL.Add('Select HKDM_SMZL.*,LBZLS1.YWSM as DMBHSM,LBZLS2.YWSM as BWBHSM,LBZLS3.YWSM as StageSM ');
    SQL.Add('from '+main.LIY_DD+'.dbo.HKDM_SMZL HKDM_SMZL');
    SQL.Add('left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS1 on LBZLS1.LBDH=HKDM_SMZL.DMBH and LBZLS1.Layer=1 and LB=''1'' ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS2 on LBZLS2.LBDH=HKDM_SMZL.BWBH and LBZLS2.Layer=2 ');
    SQL.Add('left join '+main.LIY_DD+'.dbo.HKDM_LBZLS LBZLS3 on LBZLS3.LBDH=HKDM_SMZL.Stage and LBZLS3.Layer=3 ');
    SQL.Add('Where Convert(smalldatetime,HKDM_SMZL.WorkDate) between '''+FormatDateTime('YYYY/MM/DD',HokaRubberWeightRpt.DTP1.Date)+''' and '''+FormatDateTime('YYYY/MM/DD',HokaRubberWeightRpt.DTP2.Date)+'''  ');
    SQL.Add('   and HKDM_SMZL.DMBH=:DMLBDH  and LBZLS2.LBDH=:BWLBDH  ');
    SQL.Add(' ) HKDM_SMZL  ');
    SQL.Add('Group by DMBHSM, BWBHSM, StageSM,Stage ');
    //FuncObj.WriteErrorLog(SQL.Text);
    Active:=true;
  end;
  //
end;

end.
