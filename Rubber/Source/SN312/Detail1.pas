unit Detail1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, GridsEh, DBGridEh, QRCtrls, QuickRpt, ExtCtrls,iniFiles;

type
  TDetail = class(TForm)
    Qtemp: TQuery;
    QuickRep1: TQuickRep;
    PageFooterBand1: TQRBand;
    QRLabel69: TQRLabel;
    QRBand2: TQRBand;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel75: TQRLabel;
    PageHeaderBand1: TQRBand;
    L1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape33: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape40: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape3: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel27: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    PageN: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape16: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape22: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRBand1: TQRBand;
    QRShape32: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape39: TQRShape;
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
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
//    procedure PageHeaderBand1AfterPrint(Sender: TQRCustomBand;
    //  BandPrinted: Boolean);
    //procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
     // AFont: TFont; var Background: TColor; State: TGridDrawState);
  //  procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     procedure ReadIni();
  public
    { Public declarations }
  end;

var
  Detail: TDetail;

implementation


uses main1, QRReport1;

{$R *.dfm}

procedure TDetail.ReadIni();
var MyIni :Tinifile;
    AppDir,ComNameCH,ComName:string;
begin
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComNameCH:=MyIni.ReadString('ERP','ComNameCH','億春責任有限公司');
      ComName:=MyIni.ReadString('ERP','ComName','CONG TY TNHH TY XUAN');
    finally
      MyIni.Free;
    end;
  end;
  QRLabel42.Caption:=ComNameCH;
  QRLabel41.Caption:=ComName;
end;

procedure TDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  Detail:=nil;
end;

procedure TDetail.FormDestroy(Sender: TObject);
begin
 // Detail:=nil;
end;

procedure TDetail.FormCreate(Sender: TObject);
var iYear,iMonth,iDay,nYear,nMonth,nDay:word;
    sYear,sMonth,Year1,Month1,Day1:string;
begin
  ReadIni();
  decodedate(QRReport.DTPKK.Date,iYear,iMonth,iDay);
  sYear:=floattostr(iYear);
  sMonth:=floattostr(iMonth);
  if length(sMonth)=1 then
    sMonth:='0'+sMonth;
  L1.Caption:='BANG KIEM KE THANH PHAM THANG '+sMonth+' NAM '+sYear;
  QRLabel19.Caption:=sYear+ '年'+ sMonth +'月成品盤點表';
  QRLabel28.Caption:='Xuong 廠別: '+ QRReport.CKBHEdit.Text;
  QRLabel37.Caption:='Bo phan 部門: B_Sinh Quan';
  QRLabel35.Caption:='So khu 區域號碼 : '+ QRReport.KVBHEdit.Text;
  //
  decodedate(Now,nYear,nMonth,nDay);
  Year1:=floattostr(nYear);
  Month1:=floattostr(nMonth);
  if length(Month1)=1 then
    Month1:='0'+Month1;
  Day1:=floattostr(nDay);
  if length(Day1)=1 then
    Day1:='0'+Day1;
  QRLabel36.Caption:='Ngay日 '+'25'+' thang月 '+Month1+' nam年 '+Year1;
end;


{procedure TDetail.DBGridEh1GetCellParams(Sender: TObject;
  Column: TColumnEh; AFont: TFont; var Background: TColor;
  State: TGridDrawState);
begin
 if Length(Query1.FieldByName('cldh').AsString)=4 then
  begin
    DBGridEh1.canvas.font.color:=clBlue;
  end;
end;

procedure TDetail.FormShow(Sender: TObject);
begin
  main.FormLanguage(Pointer(self),self.Name);
end; }

procedure TDetail.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  with QRReport.Query2 do
  begin
    Close;
    SQL.Clear;
     SQL.Add('SELECT');
     SQL.Add('  STT,');
     SQL.Add('  ''HOKA'' AS Customer,');
     SQL.Add('  YSBH,');
     SQL.Add('  Article,');
     SQL.Add('  ''De Lon 大底'' AS ModelName,');
     SQL.Add('  SUM(Win) AS Qty');
     SQL.Add('FROM TB_DD.dbo.SMDDScanOut');
     SQL.Add('where YSBH like '''+QRReport.Edit1.Text+'%''  ');
     SQL.Add('GROUP BY STT,YSBH, Article');
     SQL.Add('HAVING sum(WIn)-sum(ROut) > 0');
     SQL.Add(' order by STT    ');
    Open;
  end;
end;



end.
