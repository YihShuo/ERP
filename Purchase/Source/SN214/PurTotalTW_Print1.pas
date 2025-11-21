unit PurTotalTW_Print1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRPDFFilt, QRCtrls, QuickRpt, ExtCtrls, IniFiles, DB, DBTables;

type
  TPurTotalTW_Print = class(TForm)
    QuickRep1: TQuickRep;
    PageHeaderBand1: TQRBand;
    L1: TQRLabel;
    L2: TQRLabel;
    L3: TQRLabel;
    QRDBText9: TQRDBText;
    L4: TQRLabel;
    L5: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    L7: TQRLabel;
    QRDBText3: TQRDBText;
    L6: TQRLabel;
    QRDBText8: TQRDBText;
    L8: TQRLabel;
    QRDBText12: TQRDBText;
    QRSysData2: TQRSysData;
    QRLabel38: TQRLabel;
    QPage1: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRSysData1: TQRSysData;
    PageFooterBand1: TQRBand;
    QRPDFFilter1: TQRPDFFilter;
    QRDBText13: TQRDBText;
    QRLabel1: TQRLabel;
    QRImage2: TQRImage;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    TmpQuery: TQuery;
    L11: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel2: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ComName:String;
    Title:String;
    FileServerIP:String;
    procedure ReadIni();
  public
    { Public declarations }
  end;

var
  PurTotalTW_Print: TPurTotalTW_Print;

implementation

uses main1;

{$R *.dfm}
procedure TPurTotalTW_Print.ReadIni();
var MyIni :Tinifile;
    AppDir,SuperVisorID:string;
begin
  ComName:='CONG TY TNHH TY XUAN';
  Title:='PHIEU DAT MUA HANG';
  FileServerIP:=main.ServerIP;
  //
  AppDir:=ExtractFilePath(Application.ExeName);
  if FileExists(AppDir+'\ComName.ini')=true then
  begin
    try
      MyIni := Tinifile.Create(AppDir+'\ComName.ini');
      ComName:=MyIni.ReadString('ERP','ComName','');
      FileServerIP:=MyIni.ReadString('ERP','FileServerIP',main.ServerIP);
      Title:=MyIni.ReadString('GSBH_'+main.Edit2.Text,'Purchase_N214_PrintTW','PHIEU DAT MUA HANG');
    finally
      MyIni.Free;
    end;
  end;
  SuperVisorID:='ChemicalManager.bmp';
  with TmpQuery do
  begin
    Active:=false;
    SQL.Clear;
    SQL.Add('select SupervisorID from BUsers where USERID='''+main.Edit1.Text+''' ');
    Active:=true;
    if FieldByName('SupervisorID').AsString<>''  then SuperVisorID:=FieldByName('SupervisorID').AsString+'.bmp';
    Active:=false;
  end;
  //√±¶W¿…
  if(not DirectoryExists(AppDir+'Images\'))  then ForceDirectories(AppDir+'Images\');
  if FileExists(AppDir+'\Images\'+main.Edit1.Text+'.bmp')=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+main.Edit1.Text+'.bmp'),Pchar(AppDir+'Images\'+main.Edit1.Text+'.bmp'),false);
  if FileExists(AppDir+'\Images\'+SuperVisorID)=false then
      CopyFile(Pchar('\\'+FileServerIP+'\liy_erp\Images\'+SuperVisorID),Pchar(AppDir+'Images\'+SuperVisorID),false);

  if FileExists(AppDir+'\Images\'+main.Edit1.Text+'.bmp') then
  begin
    QRImage1.Picture.LoadFromFile(AppDir+'\Images\'+main.Edit1.Text+'.bmp');
  end;
  if FileExists(AppDir+'\Images\'+SuperVisorID) then
  begin
    QRImage2.Picture.LoadFromFile(AppDir+'\Images\'+SuperVisorID);
  end;
end;

procedure TPurTotalTW_Print.FormCreate(Sender: TObject);
begin
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
    L11.Caption:='';
    QRDBText14.Enabled:=false;
  end else
  begin
    ReadIni();
    L1.Caption:=ComName;
    L2.Caption:=Title;
  end;
end;

procedure TPurTotalTW_Print.FormDestroy(Sender: TObject);
begin
  PurTotalTW_Print:=nil;
end;

procedure TPurTotalTW_Print.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

end.
