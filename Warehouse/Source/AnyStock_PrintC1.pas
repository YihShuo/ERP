unit AnyStock_PrintC1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables, jpeg, QRXMLSFilt,
  QRExport, QRPDFFilt, StdCtrls, IniFiles,fununit;


type
  TAnyStock_PrintC = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand2: TQRBand;
    PageHeaderBand2: TQRBand;
    QRLabel26: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel46: TQRLabel;
    QRBand2: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    QRXMLSFilter1: TQRXMLSFilter;
    SDate: TQRLabel;
    QRLabel3: TQRLabel;
    QRCompositeReport1: TQRCompositeReport;
    QRExcelFilter1: TQRExcelFilter;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText12: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;                   
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PageNo: TQRLabel;
    PageN: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    USname: TQuery;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    USnameuserid: TStringField;
    USnameusername: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QRCompositeReport1AddReports(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    ComName:String;
    ComFullName:String;
    procedure ReadIni();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnyStock_PrintC: TAnyStock_PrintC;

implementation

uses main1;

{$R *.dfm}

procedure TAnyStock_PrintC.ReadIni();
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

procedure TAnyStock_PrintC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TAnyStock_PrintC.FormDestroy(Sender: TObject);
begin
  AnyStock_PrintC:=nil;
end;

procedure TAnyStock_PrintC.QRCompositeReport1AddReports(Sender: TObject);
begin
   AnyStock_PrintC.QRLabel60.Caption:=ComName;
   AnyStock_PrintC.QRLabel46.Caption:=ComFullName;
end;

procedure TAnyStock_PrintC.FormCreate(Sender: TObject);
begin
  ReadIni();
  with USname do
  begin
    Active:=false;
    SQL.Clear;
    sql.add('select userid,username from busers where userid ='+''''+main.Edit1.Text+'''' );
    active:=true;
  end;
end;


end.
